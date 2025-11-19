uint64_t sub_223708AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v27 - v15;
  v17 = *MEMORY[0x277D5CDE8];
  v18 = sub_223729DE8();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  sub_223729488();

  sub_223729478();
  v20 = sub_223727408();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v11, a4, v20);
  (*(v21 + 56))(v11, 0, 1, v20);
  sub_2237294A8();
  v22 = *(a5 + 112);
  v23 = *(a5 + 120);

  sub_223729498();
  v24 = a5 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v25 = *(v24 + 2);
  return sub_223729468();
}

uint64_t sub_223708D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v27 - v15;
  v17 = *MEMORY[0x277D5CDE8];
  v18 = sub_223729DE8();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  sub_223728E98();

  sub_223728E88();
  v20 = sub_223727408();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v11, a4, v20);
  (*(v21 + 56))(v11, 0, 1, v20);
  sub_223728EB8();
  v22 = *(a5 + 112);
  v23 = *(a5 + 120);

  sub_223728EA8();
  v24 = a5 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v25 = *(v24 + 2);
  return sub_223728E78();
}

void sub_223708F50(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22370B69C(a1);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B680);

    v8 = sub_22372AC88();
    v9 = sub_22372B268();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_223623274(v5, v6, &v31);
      _os_log_impl(&dword_223620000, v8, v9, "Language detected = %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x223DE8A80](v11, -1, -1);
      MEMORY[0x223DE8A80](v10, -1, -1);
    }

    if (v5 == sub_22372A558() && v6 == v12)
    {
    }

    else
    {
      v17 = sub_22372B6E8();

      if ((v17 & 1) == 0)
      {

        return;
      }
    }

    v18 = sub_22372AC88();
    v19 = sub_22372B268();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_223620000, v18, v19, "Non english language detected", v20, 2u);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    MEMORY[0x28223BE20](v21, v22);
    v23 = objc_allocWithZone(sub_223729898());
    v24 = sub_223729838();

    if (v24)
    {
      v25 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 32);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
      if (sub_223729D88())
      {
        if (qword_281328E80 != -1)
        {
          swift_once();
        }

        v26 = sub_22372A648();
        __swift_project_value_buffer(v26, qword_28132B6C8);
        v27 = swift_allocObject();
        *(v27 + 16) = v2;
        *(v27 + 24) = v24;

        v28 = v24;
        sub_22372A628();

        return;
      }

      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      swift_allocError();
      *v30 = v24;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_223657180();
      swift_allocError();
      *v29 = xmmword_22372CE90;
      *(v29 + 16) = 4;
    }

    swift_willThrow();
    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v13 = sub_22372AC98();
  __swift_project_value_buffer(v13, qword_28132B680);
  v14 = sub_22372AC88();
  v15 = sub_22372B268();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_223620000, v14, v15, "No language detected", v16, 2u);
    MEMORY[0x223DE8A80](v16, -1, -1);
  }
}

uint64_t sub_223709420(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v24 - v11;
  v13 = *MEMORY[0x277D5CDE8];
  v14 = sub_223729DE8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_223729868();
  v16 = *(a2 + 16);
  v17 = *(a2 + 17);

  sub_223729858();
  v18 = *(a2 + 14);
  v19 = *(a2 + 15);

  sub_223729878();
  v20 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v21 = sub_223727408();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v7, &a2[v20], v21);
  (*(v22 + 56))(v7, 0, 1, v21);
  sub_223729888();

  return sub_223729848();
}

uint64_t sub_223709658(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2237322A0;
  v6 = v5 + v4;
  v7 = (v6 + *(v2 + 48));
  sub_22372A568();
  *v7 = 0xD000000000000017;
  v7[1] = 0x8000000223734650;
  v8 = (v6 + v3 + *(v2 + 48));
  sub_22372A5A8();
  *v8 = 0xD00000000000001ELL;
  v8[1] = 0x8000000223736D30;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_22372A608();
  v10 = __swift_project_value_buffer(v9, qword_28132BA28);
  (*(*(v9 - 8) + 16))(v6 + 2 * v3, v10, v9);
  v11 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v12 = 0xEB0000000064657ALL;
  v13 = 0x696C616974696E69;
  v14 = 0x8000000223734360;
  v15 = 0xD00000000000001FLL;
  v16 = 0xEC00000064657A69;
  v17 = 0x6C616E6946707274;
  if (v11 != 3)
  {
    v17 = 0xD000000000000010;
    v16 = 0x8000000223734390;
  }

  if (v11 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v13 = 0x6E69766965636572;
    v12 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  v20 = (v6 + 2 * v3 + *(v2 + 48));
  MEMORY[0x223DE7AD0](v18, v19);

  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v6 + 3 * v3 + *(v2 + 48));
  sub_22372A578();
  v22 = a1[17];
  *v21 = a1[16];
  v21[1] = v22;
  v23 = (v6 + 4 * v3 + *(v2 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0]);
  *v23 = sub_22372B6B8();
  v23[1] = v24;
  v25 = (v6 + 5 * v3 + *(v2 + 48));
  sub_22372A5E8();
  v26 = a1[15];
  *v25 = a1[14];
  v25[1] = v26;
  v27 = (v6 + 6 * v3 + *(v2 + 48));

  sub_22372A598();
  *v27 = sub_223729828();
  v27[1] = v28;
  return v5;
}

uint64_t sub_2237099E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F55E0(a1);
}

uint64_t sub_223709A78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F5A7C(a1);
}

uint64_t sub_223709B0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_223624EA4;

  return sub_2236F5F18(a1);
}

uint64_t sub_223709BA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF124(a1);
}

uint64_t sub_223709C34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF2C4(a1);
}

uint64_t sub_223709CC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF2C4(a1);
}

uint64_t sub_223709D5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F63B4(a1);
}

uint64_t sub_223709DF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F7910(a1);
}

uint64_t sub_223709E84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F7C08(a1);
}

uint64_t sub_223709F18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F9CBC(a1);
}

uint64_t sub_223709FAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FAEAC(a1);
}

uint64_t sub_22370A040(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FB560(a1);
}

uint64_t sub_22370A0D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FBC80(a1);
}

uint64_t sub_22370A168(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F8A3C(a1);
}

uint64_t sub_22370A1FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FE5D0(a1);
}

uint64_t sub_22370A290(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FEA20(a1);
}

uint64_t sub_22370A324(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF2E4(a1);
}

uint64_t sub_22370A3B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF484(a1);
}

uint64_t sub_22370A44C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF484(a1);
}

uint64_t sub_22370A4E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF4A4(a1);
}

uint64_t sub_22370A574(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FFEE4(a1);
}

uint64_t sub_22370A608(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F9644(a1);
}

uint64_t sub_22370A69C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F7F00(a1);
}

uint64_t sub_22370A730(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF484(a1);
}

void sub_22370A7F8()
{
  v0 = sub_223727408();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for RootRequestController.RequestContext(319);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_22370B01C(319, &qword_28132B530, MEMORY[0x277D5CF58]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for RootRequestController.RequestControllerState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RootRequestController.RequestControllerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_22370AB2C()
{
  sub_22370AD64();
  if (v0 <= 0x3F)
  {
    sub_22370AE40(319, &qword_281328DE0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22370ADEC(319, &qword_281329538, &unk_27D08F8E0, &qword_223732CE8);
      if (v2 <= 0x3F)
      {
        sub_22370ADEC(319, qword_281329E18, &unk_27D08F8F0, &unk_223732CF0);
        if (v3 <= 0x3F)
        {
          sub_22370AE40(319, &qword_281328DF0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22370B01C(319, &qword_28132B510, MEMORY[0x277D5D0A8]);
            if (v5 <= 0x3F)
            {
              sub_22370AE40(319, &qword_281328CD8, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_22370B01C(319, &qword_28132B550, MEMORY[0x277D5CEA0]);
                if (v7 <= 0x3F)
                {
                  sub_22370B01C(319, &unk_28132B4F8, MEMORY[0x277D5D118]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_22370AD64()
{
  if (!qword_281328E18)
  {
    type metadata accessor for RootRequestController.TRPCache(255);
    v0 = sub_22372AF78();
    if (!v1)
    {
      atomic_store(v0, &qword_281328E18);
    }
  }
}

void sub_22370ADEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_22372B3A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22370AE40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22370AEB8()
{
  sub_22370ADEC(319, &qword_281329538, &unk_27D08F8E0, &qword_223732CE8);
  if (v0 <= 0x3F)
  {
    sub_22370B01C(319, &qword_28132B5C0, MEMORY[0x277D5CB10]);
    if (v1 <= 0x3F)
    {
      sub_22370B01C(319, &qword_28132B5A8, MEMORY[0x277D5CB30]);
      if (v2 <= 0x3F)
      {
        sub_22370B01C(319, &qword_28132B590, MEMORY[0x277D5CBA8]);
        if (v3 <= 0x3F)
        {
          sub_22370AE40(319, &qword_281328DF0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22370B01C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22370B074()
{
  result = qword_27D08F910;
  if (!qword_27D08F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F910);
  }

  return result;
}

uint64_t sub_22370B0C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2237322A0;
  v11 = v10 + v9;
  v12 = (v10 + v9 + *(v7 + 48));
  sub_22372A568();
  *v12 = 0xD000000000000017;
  v12[1] = 0x8000000223734650;
  v13 = (v11 + v8 + *(v7 + 48));
  sub_22372A5A8();
  *v13 = 0xD00000000000001BLL;
  v13[1] = 0x8000000223736DB0;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v14 = sub_22372A608();
  v15 = __swift_project_value_buffer(v14, qword_28132BA28);
  (*(*(v14 - 8) + 16))(v11 + 2 * v8, v15, v14);
  v16 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v17 = 0xEB0000000064657ALL;
  v18 = 0x696C616974696E69;
  v19 = 0x8000000223734360;
  v20 = 0xD00000000000001FLL;
  v21 = 0xEC00000064657A69;
  v22 = 0x6C616E6946707274;
  if (v16 != 3)
  {
    v22 = 0xD000000000000010;
    v21 = 0x8000000223734390;
  }

  if (v16 != 2)
  {
    v20 = v22;
    v19 = v21;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v18 = 0x6E69766965636572;
    v17 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v24 = v17;
  }

  else
  {
    v24 = v19;
  }

  v25 = (v11 + 2 * v8 + *(v7 + 48));
  MEMORY[0x223DE7AD0](v23, v24);

  *v25 = 0;
  v25[1] = 0xE000000000000000;
  sub_22372A5C8();
  if (a3)
  {
    v26 = a2;
  }

  else
  {
    v26 = 0;
  }

  if (a3)
  {
    v27 = a3;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = (v11 + 3 * v8 + *(v7 + 48));

  MEMORY[0x223DE7AD0](v26, v27);

  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (v11 + 4 * v8 + *(v7 + 48));
  sub_22372A578();
  v30 = *(a1 + 136);
  *v29 = *(a1 + 128);
  v29[1] = v30;
  v31 = (v11 + 5 * v8 + *(v7 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0]);
  *v31 = sub_22372B6B8();
  v31[1] = v32;
  v33 = (v11 + 6 * v8 + *(v7 + 48));
  sub_22372A5E8();
  *v33 = a4;
  v33[1] = a5;

  return v10;
}

void *sub_22370B490(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22370B520(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        goto LABEL_25;
      }
    }

    else if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_25;
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (a6 == 2)
    {
      sub_223630584(0, &qword_281328D10, 0x277D82BB8);
      return sub_22372B368() & 1;
    }

    return 0;
  }

  if (a3 != 3)
  {
    if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 4 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 4 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 4 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 3)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

LABEL_25:

  return sub_22372B6E8();
}

uint64_t sub_22370B69C(uint64_t a1)
{
  v2 = sub_223727728();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F920, qword_223730410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v47 - v19;
  sub_2236F5150(a1);
  if (!v22 || (v23 = v21, , !v23))
  {
    if (qword_281328E58 == -1)
    {
LABEL_9:
      v31 = sub_22372AC98();
      __swift_project_value_buffer(v31, qword_28132B680);
      v32 = sub_22372AC88();
      v33 = sub_22372B268();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_223620000, v32, v33, "tcuMappedNLResponse is empty", v34, 2u);
        MEMORY[0x223DE8A80](v34, -1, -1);
      }

      return 0;
    }

LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  sub_22372A208();
  v24 = sub_223727758();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v20, 1, v24) != 1)
  {
    v35 = sub_223727738();
    (*(v25 + 8))(v20, v24);
    v36 = *(v35 + 16);
    if (!v36)
    {

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v41 = sub_22372AC98();
      __swift_project_value_buffer(v41, qword_28132B680);
      v27 = sub_22372AC88();
      v28 = sub_22372B268();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_20;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "No predicted language found in LVC output";
      goto LABEL_19;
    }

    v48 = v15;
    v49 = v23;
    v37 = *(v3 + 16);
    v50 = v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v51 = v37;
    (v37)(v12);
    v52 = v36;
    if (v36 == 1)
    {
LABEL_14:

      v38 = v48;
      (*(v3 + 32))(v48, v12, v2);
      v39 = sub_223727708();

      (*(v3 + 8))(v38, v2);
      return v39;
    }

    v42 = 1;
    while (v42 < *(v35 + 16))
    {
      v51(v8, v50 + *(v3 + 72) * v42, v2);
      sub_223727718();
      v44 = v43;
      sub_223727718();
      v45 = *(v3 + 8);
      if (v44 >= v46)
      {
        v45(v8, v2);
      }

      else
      {
        v45(v12, v2);
        (*(v3 + 32))(v12, v8, v2);
      }

      if (v52 == ++v42)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_223626478(v20, &qword_27D08F920, qword_223730410);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v26 = sub_22372AC98();
  __swift_project_value_buffer(v26, qword_28132B680);
  v27 = sub_22372AC88();
  v28 = sub_22372B268();
  if (!os_log_type_enabled(v27, v28))
  {
    goto LABEL_20;
  }

  v29 = swift_slowAlloc();
  *v29 = 0;
  v30 = "Empty LVC prediction";
LABEL_19:
  _os_log_impl(&dword_223620000, v27, v28, v30, v29, 2u);
  MEMORY[0x223DE8A80](v29, -1, -1);
LABEL_20:

  return 0;
}

uint64_t sub_22370BC34()
{
  v0 = sub_22372B5F8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22370BC80(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_223709420(a1, *(v1 + 16));
}

uint64_t sub_22370BCAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootRequestController.TRPCache(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22370BDE0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_22370BE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootRequestController.TRPCache(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22370BE84()
{
  result = qword_27D08F958;
  if (!qword_27D08F958)
  {
    sub_223630584(255, &qword_27D08F950, 0x277CCACA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F958);
  }

  return result;
}

uint64_t objectdestroy_94Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22370BFA4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_223703898(a1, *(v1 + 16));
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22370C058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootRequestController.TRPCache(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges04RootA16ControllerErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_22370C0E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22370C130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22370C174(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22370C1B0()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v41 = v0;
    v3 = [v2 views];
    if (v3)
    {
      v4 = v3;
      sub_223630584(0, &qword_281328D00, 0x277D47140);
      v5 = sub_22372B128();

      if (!(v5 >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_4:
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_5;
        }

LABEL_21:

        return 0;
      }
    }

    v6 = sub_22372B558();
    if (v6)
    {
LABEL_5:
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223DE7ED0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 listenAfterSpeaking];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 BOOLValue];

          if (v13)
          {
LABEL_22:

            return 1;
          }
        }

        else
        {
        }

        ++v7;
        if (v10 == v6)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    goto LABEL_21;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v0;
    v17 = [v15 listenAfterSpeaking];
    if (v17)
    {
LABEL_18:
      v18 = v17;
      v19 = [v17 BOOLValue];

      return v19;
    }

LABEL_25:

    return 0;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v16 = v0;
    v17 = [v22 listenAfterSpeaking];
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v23 = result;
    v39 = v0;
    v24 = [v23 callbacks];
    if (v24)
    {
      v25 = v24;
      sub_223630584(0, &qword_27D08F9B8, 0x277D476F0);
      v26 = sub_22372B128();
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    v40 = v26;
    if (!(v26 >> 62))
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
LABEL_68:

        return 0;
      }

LABEL_34:
      v28 = 0;
      while (1)
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x223DE7ED0](v28, v40);
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v28 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v29 = *(v40 + 32 + 8 * v28);
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_65;
          }
        }

        v41 = v29;
        v31 = [v29 commands];
        if (v31)
        {
          v32 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F280, &qword_22372FD98);
          v33 = sub_22372B128();
        }

        else
        {
          v33 = MEMORY[0x277D84F90];
        }

        if (v33 >> 62)
        {
          v34 = sub_22372B558();
          if (v34)
          {
LABEL_44:
            v35 = 0;
            do
            {
              if ((v33 & 0xC000000000000001) != 0)
              {
                MEMORY[0x223DE7ED0](v35, v33);
                v37 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_63;
                }
              }

              else
              {
                if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_64;
                }

                v36 = *(v33 + 8 * v35 + 32);
                swift_unknownObjectRetain();
                v37 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_63;
                }
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v38 = sub_22370C1B0();
                swift_unknownObjectRelease();
                if (v38)
                {

                  goto LABEL_22;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              ++v35;
            }

            while (v37 != v34);
          }
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_44;
          }
        }

        if (v28 == v27)
        {
          goto LABEL_68;
        }
      }
    }

LABEL_67:
    v27 = sub_22372B558();
    if (!v27)
    {
      goto LABEL_68;
    }

    goto LABEL_34;
  }

  return result;
}

uint64_t sub_22370C6B8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = [v2 dialogPhase];
    if (v4)
    {
      v5 = v4;
      v6 = sub_22372AFE8();
      v8 = v7;

      v9 = *MEMORY[0x277D48BF0];
      v10 = sub_22372AFE8();
      if (v8)
      {
        if (v6 == v10 && v8 == v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = sub_22372B6E8();
        }

        return v13 & 1;
      }
    }

    else
    {
      v19 = *MEMORY[0x277D48BF0];
      sub_22372AFE8();
    }

LABEL_51:
    v13 = 0;
    return v13 & 1;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_51;
  }

  v15 = v14;
  v33 = v0;
  v16 = [v15 callbacks];
  if (v16)
  {
    v17 = v16;
    sub_223630584(0, &qword_27D08F9B8, 0x277D476F0);
    v18 = sub_22372B128();
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  if (v18 >> 62)
  {
    goto LABEL_49;
  }

  v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
LABEL_50:

    goto LABEL_51;
  }

LABEL_19:
  v21 = 0;
  while ((v18 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x223DE7ED0](v21, v18);
    v23 = __OFADD__(v21++, 1);
    if (v23)
    {
      goto LABEL_44;
    }

LABEL_24:
    v34 = v22;
    v24 = [v22 commands];
    if (v24)
    {
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F280, &qword_22372FD98);
      v26 = sub_22372B128();

      if (!(v26 >> 62))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_26:
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }
    }

    v27 = sub_22372B558();
    if (v27)
    {
LABEL_27:
      v28 = 0;
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DE7ED0](v28, v26);
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v29 = *(v26 + 8 * v28 + 32);
          swift_unknownObjectRetain();
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            v20 = sub_22372B558();
            if (!v20)
            {
              goto LABEL_50;
            }

            goto LABEL_19;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v31 = sub_22370C6B8();
          swift_unknownObjectRelease();
          if (v31)
          {
            goto LABEL_45;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v28;
      }

      while (v30 != v27);
    }

LABEL_20:

    if (v21 == v20)
    {
      goto LABEL_50;
    }
  }

  if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

  v22 = *(v18 + 32 + 8 * v21);
  v23 = __OFADD__(v21++, 1);
  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_44:
  __break(1u);
LABEL_45:

  v13 = 1;
  return v13 & 1;
}

uint64_t RemoteIntelligenceSessionMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  v40 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v39 - v7;
  v9 = sub_223727408();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v39 - v17;
  v19 = type metadata accessor for RemoteIntelligenceSessionMessage.Builder(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 56))(v24, 1, 1, v9);
  v25 = *(v20 + 28);
  v24[v25] = 2;
  a1(v24);
  sub_22364FCB0(v24, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_223660FAC(v8);
    if (qword_27D08E2D0 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_27D097088);
    v27 = sub_22372AC88();
    v28 = sub_22372B278();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41[0] = v30;
      *v29 = 136446210;
      v41[1] = v40;
      swift_getMetatypeMetadata();
      v31 = sub_22372B038();
      v33 = sub_223623274(v31, v32, v41);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_223620000, v27, v28, "Could not build %{public}s: Builder has missing required fields", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x223DE8A80](v30, -1, -1);
      MEMORY[0x223DE8A80](v29, -1, -1);
    }

    sub_22370D814(v24);
    type metadata accessor for RemoteIntelligenceSessionMessage(0);
    v34 = *(*v2 + 48);
    v35 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v37 = *(v10 + 32);
    v37(v18, v8, v9);
    *(v1 + qword_28132B768) = v24[v25];
    (*(v10 + 16))(v1 + qword_28132B758, v18, v9);
    sub_2237273F8();
    v37(v1 + qword_28132B760, v15, v9);
    v38 = sub_223727518();
    (*(v10 + 8))(v18, v9);
    sub_22370D814(v24);
    return v38;
  }
}

uint64_t RemoteIntelligenceSessionMessage.init(from:)(uint64_t *a1)
{
  v3 = sub_223727408();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F9C0, &qword_223733048);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v31 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_22370DED8();
  sub_22372B7D8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v30 = v37;
    type metadata accessor for RemoteIntelligenceSessionMessage(0);
    v22 = *(*v30 + 48);
    v23 = *(*v30 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v33;
    v32 = v13;
    v36[0] = 0;
    sub_2236C6ED8(&qword_27D08ED50);
    v21 = v34;
    sub_22372B648();
    v25 = v12;
    v31 = *(v20 + 32);
    v31(v37 + qword_28132B758, v11, v21);
    v36[0] = 1;
    sub_22372B648();
    v26 = v37;
    v31(v37 + qword_28132B760, v8, v21);
    v36[0] = 2;
    v27 = sub_22372B638() & 1;
    v28 = v32;
    *(v26 + qword_28132B768) = v27;
    v29 = v35;
    sub_223623934(v35, v36);
    v30 = sub_223727508();
    (*(v28 + 8))(v17, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return v30;
}

uint64_t sub_22370D2DC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F9D0, &unk_223733050);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22370DED8();
  sub_22372B7E8();
  v17 = 0;
  sub_223727408();
  sub_2236C6ED8(&unk_28132B610);
  sub_22372B6A8();
  if (!v2)
  {
    v16 = 1;
    sub_22372B6A8();
    v15 = *(v1 + qword_28132B768);
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F3E0, &unk_223730480);
    sub_22370DF2C();
    sub_22372B6A8();
    sub_223727528();
    v12 = sub_223727538();
    v12(a1);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t RemoteIntelligenceSessionMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  return v0;
}

uint64_t sub_22370D634()
{
  BYTE8(v6) = 0;
  sub_22372B458();
  MEMORY[0x223DE7AD0](0x6567617373656D3CLL, 0xEE00203A65707954);
  v1 = sub_2237274F8();
  MEMORY[0x223DE7AD0](v1);

  MEMORY[0x223DE7AD0](0x67617373656D202CLL, 0xED0000203A644965);
  sub_223727408();
  sub_2236C6ED8(&qword_28132B600);
  v2 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v2);

  MEMORY[0x223DE7AD0](0x6F6973736573202CLL, 0xED0000203A64496ELL);
  v3 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v3);

  MEMORY[0x223DE7AD0](0xD000000000000018, 0x8000000223737EC0);
  *&v6 = *(v0 + qword_28132B768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F3E0, &unk_223730480);
  v4 = sub_22372B038();
  MEMORY[0x223DE7AD0](v4);

  MEMORY[0x223DE7AD0](62, 0xE100000000000000);
  return *(&v6 + 1);
}

uint64_t sub_22370D814(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntelligenceSessionMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22370D890()
{
  v1 = 0x496567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_22370D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22370E28C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22370D924(uint64_t a1)
{
  v2 = sub_22370DED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22370D960(uint64_t a1)
{
  v2 = sub_22370DED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIntelligenceSessionMessage.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_28132B758;
  v4 = sub_223727408();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteIntelligenceSessionMessage.__allocating_init(build:)(void (*a1)(char *))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return RemoteIntelligenceSessionMessage.init(build:)(a1);
}

uint64_t RemoteIntelligenceSessionMessage.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return RemoteIntelligenceSessionMessage.init(from:)(a1);
}

uint64_t RemoteIntelligenceSessionMessage.Builder.optedInToDataSharing.setter(char a1)
{
  result = type metadata accessor for RemoteIntelligenceSessionMessage.Builder(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_22370DB7C()
{
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + qword_28132B760;

  return v5(v3, v2);
}

uint64_t RemoteIntelligenceSessionMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22370DD04(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22370DD78(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_223623274(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_22370DDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA08, &unk_223733200);
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

_BYTE **sub_22370DEC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_22370DED8()
{
  result = qword_27D08F9C8;
  if (!qword_27D08F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F9C8);
  }

  return result;
}

unint64_t sub_22370DF2C()
{
  result = qword_27D08F9D8;
  if (!qword_27D08F9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08F3E0, &unk_223730480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F9D8);
  }

  return result;
}

uint64_t sub_22370DFA8()
{
  result = sub_223727408();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22370E0F0()
{
  sub_22369BEEC();
  if (v0 <= 0x3F)
  {
    sub_223671CDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_22370E188()
{
  result = qword_27D08F9F0;
  if (!qword_27D08F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F9F0);
  }

  return result;
}

unint64_t sub_22370E1E0()
{
  result = qword_27D08F9F8;
  if (!qword_27D08F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F9F8);
  }

  return result;
}

unint64_t sub_22370E238()
{
  result = qword_27D08FA00;
  if (!qword_27D08FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FA00);
  }

  return result;
}

uint64_t sub_22370E28C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000064 || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223737F40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22372B6E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22370E3E0@<X0>(uint64_t a1@<X8>)
{
  result = [v1 dialogs];
  v4 = result;
  if (!result)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_54:
    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 16) = v4;
    *(a1 + 24) = v17;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    return result;
  }

  v50 = a1;
  sub_223630584(0, &qword_27D08FA10, 0x277D47288);
  v5 = sub_22372B128();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = sub_22372B558();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_4:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DE7ED0](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v12 = [v10 content];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    v13 = v12;
    sub_22370E8FC(&v54);
    v51 = v54;
    v45 = v57;
    v46 = v56;
    v48 = v55;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_223711248(0, v8[2] + 1, 1, v8);
    }

    v15 = v8[2];
    v14 = v8[3];
    if (v15 >= v14 >> 1)
    {
      v8 = sub_223711248((v14 > 1), v15 + 1, 1, v8);
    }

    v8[2] = v15 + 1;
    v16 = &v8[8 * v15];
    v16[2] = v51;
    v16[3] = v48;
    v16[4] = v46;
    v16[5] = v45;
  }

  while (v7 != v6);
LABEL_25:

  v20 = v8[2];

  if (v20)
  {
    v21 = 0;
    v22 = v8 + 4;
    v23 = MEMORY[0x277D84F90];
    do
    {
      v24 = &v22[8 * v21];
      v25 = v21;
      while (1)
      {
        if (v25 >= v8[2])
        {
          __break(1u);
          goto LABEL_56;
        }

        v27 = v24[2];
        v26 = v24[3];
        v28 = v24[1];
        v54 = *v24;
        v55 = v28;
        v56 = v27;
        v57 = v26;
        v29 = v54;
        v21 = v25 + 1;
        sub_22370EB50(&v54, v53);

        if (*(&v29 + 1))
        {
          break;
        }

        v24 += 4;
        ++v25;
        if (v20 == v21)
        {
          goto LABEL_39;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223637D3C(0, *(v23 + 16) + 1, 1, v23);
        v23 = result;
      }

      v22 = v8 + 4;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_223637D3C((v30 > 1), v31 + 1, 1, v23);
        v23 = result;
      }

      *(v23 + 16) = v31 + 1;
      *(v23 + 16 * v31 + 32) = v29;
    }

    while (v20 - 1 != v25);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

LABEL_39:

  *&v54 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  sub_2236348F8();
  v49 = sub_22372AFA8();
  v47 = v32;

  v33 = v8[2];
  if (!v33)
  {
    v52 = MEMORY[0x277D84F90];
LABEL_53:

    *&v54 = v52;
    v4 = sub_22372AFA8();
    v17 = v44;

    a1 = v50;
    v18 = v49;
    v19 = v47;
    goto LABEL_54;
  }

  v34 = 0;
  v35 = v8 + 4;
  v52 = MEMORY[0x277D84F90];
LABEL_41:
  v36 = &v35[8 * v34];
  v37 = v34;
  while (v37 < v8[2])
  {
    v39 = v36[2];
    v38 = v36[3];
    v40 = v36[1];
    v54 = *v36;
    v55 = v40;
    v56 = v39;
    v57 = v38;
    v34 = v37 + 1;
    v41 = v40;
    sub_22370EB50(&v54, v53);

    if (*(&v41 + 1))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223637D3C(0, *(v52 + 16) + 1, 1, v52);
        v52 = result;
      }

      v43 = *(v52 + 16);
      v42 = *(v52 + 24);
      if (v43 >= v42 >> 1)
      {
        result = sub_223637D3C((v42 > 1), v43 + 1, 1, v52);
        v52 = result;
      }

      *(v52 + 16) = v43 + 1;
      *(v52 + 16 * v43 + 32) = v41;
      v35 = v8 + 4;
      if (v33 - 1 != v37)
      {
        goto LABEL_41;
      }

      goto LABEL_53;
    }

    v36 += 4;
    ++v37;
    if (v33 == v34)
    {
      goto LABEL_53;
    }
  }

LABEL_56:
  __break(1u);
  return result;
}

double sub_22370E8FC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_223727198();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_22372AFE8();
    v14 = v13;

    v29 = v12;
    v30 = v14;
    sub_223727188();
    sub_223637E48();
    v15 = sub_22372B3B8();
    v17 = v16;
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [v2 speakableTextOverride];
  if (v18)
  {
    v19 = v18;
    v20 = sub_22372AFE8();
    v22 = v21;

    v29 = v20;
    v30 = v22;
    sub_223727188();
    sub_223637E48();
    v23 = sub_22372B3B8();
    v25 = v24;
    (*(v5 + 8))(v9, v4);

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (v17)
    {
LABEL_6:
      v26 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v26 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (!v26)
      {

        v15 = 0;
        v17 = 0;
      }

      if (!v25)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  v15 = 0;
  if (!v25)
  {
LABEL_18:

    v23 = v15;
    v25 = v17;
    goto LABEL_19;
  }

LABEL_14:
  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    goto LABEL_18;
  }

LABEL_19:
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v23;
  *(a1 + 24) = v25;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_22370EB50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7F8, &qword_2237325E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22370EC38(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_22370ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(0xD000000000000041, 0x8000000223737FD0, v17);
    _os_log_impl(&dword_223620000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (a3)
  {
    v14 = sub_22372AFD8();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22372AF48();
  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22370EC38;
  v17[3] = &block_descriptor_7;
  v16 = _Block_copy(v17);

  AFSiriActivationSiriPrompt();
  _Block_release(v16);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22370EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(0xD00000000000004ALL, 0x8000000223738020, v17);
    _os_log_impl(&dword_223620000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (a3)
  {
    v14 = sub_22372AFD8();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22372AF48();
  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22370EC38;
  v17[3] = &block_descriptor_16_0;
  v16 = _Block_copy(v17);

  AFSiriActivationContinuousConversationHearst();
  _Block_release(v16);
}

void sub_22370F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(0xD00000000000004ALL, 0x8000000223738070, v17);
    _os_log_impl(&dword_223620000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (a3)
  {
    v14 = sub_22372AFD8();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22372AF48();
  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22370EC38;
  v17[3] = &block_descriptor_19;
  v16 = _Block_copy(v17);

  AFSiriActivationContinuousConversationJarvis();
  _Block_release(v16);
}

void sub_22370F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);
  v7 = sub_22372AC88();
  v8 = sub_22372B268();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_223623274(0xD00000000000004ELL, 0x80000002237380C0, v13);
    _os_log_impl(&dword_223620000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v11 = sub_22372AF48();
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22370EC38;
  v13[3] = &block_descriptor_22_0;
  v12 = _Block_copy(v13);

  AFSiriActivationTriggerless();
  _Block_release(v12);
}

void sub_22370F568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(0xD00000000000004DLL, 0x8000000223738110, v17);
    _os_log_impl(&dword_223620000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (a3)
  {
    v14 = sub_22372AFD8();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22372AF48();
  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22370EC38;
  v17[3] = &block_descriptor_25;
  v16 = _Block_copy(v17);

  AFSiriActivationContinuousConversationHoneycomb();
  _Block_release(v16);
}

void sub_22370F7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(0xD000000000000044, 0x8000000223738160, v17);
    _os_log_impl(&dword_223620000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (a3)
  {
    v14 = sub_22372AFD8();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22372AF48();
  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22370EC38;
  v17[3] = &block_descriptor_28;
  v16 = _Block_copy(v17);

  AFSiriActivationContinuousConversation();
  _Block_release(v16);
}

uint64_t sub_22370FA34(char *a1)
{
  v3 = sub_2237113AC(a1);
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + 16);
    v6 = sub_22372AB08();
    if (v7)
    {
      sub_223711748();
      v8 = swift_allocError();
      *v9 = 1;
      sub_22371179C(v6);

      return v8;
    }

    else
    {
      v16 = sub_2237117A8(a1, v6);
      if (v17)
      {
        v18 = v16;
        sub_22371179C(v6);

        return v18;
      }

      else
      {
        sub_223711748();
        v19 = swift_allocError();
        *v20 = 2;
        sub_22371179C(v6);

        return v19;
      }
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v11 = sub_22372AC98();
    __swift_project_value_buffer(v11, qword_28132B680);
    v12 = sub_22372AC88();
    v13 = sub_22372B278();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_223620000, v12, v13, "Error generating TTRequest from TTProxyInput", v14, 2u);
      MEMORY[0x223DE8A80](v14, -1, -1);
    }

    sub_223711748();
    result = swift_allocError();
    *v15 = 3;
  }

  return result;
}

void sub_22370FC3C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v203 = a2;
  v207 = a4;
  v6 = sub_22372AA98();
  v201 = *(v6 - 8);
  v7 = *(v201 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v194 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v183 = &v174 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v190 = &v174 - v16;
  v193 = sub_22372A098();
  v202 = *(v193 - 8);
  v17 = *(v202 + 64);
  v19 = MEMORY[0x28223BE20](v193, v18);
  v182 = &v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v191 = &v174 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v174 - v26;
  v198 = type metadata accessor for RequestState();
  v28 = *(v198 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v198, v30);
  v32 = &v174 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_2237287C8();
  v200 = *(v210 - 8);
  v33 = *(v200 + 64);
  v35 = MEMORY[0x28223BE20](v210, v34);
  v199 = &v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v209 = &v174 - v38;
  v39 = sub_22372A3C8();
  v208 = *(v39 - 8);
  v40 = v208[8];
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v174 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8, v46);
  v48 = &v174 - v47;
  v49 = sub_22372A548();
  v204 = *(v49 - 8);
  v205 = v49;
  v50 = *(v204 + 64);
  MEMORY[0x28223BE20](v49, v51);
  v197 = &v174 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = [a1 tcuId];
  if (v53)
  {
    v189 = v6;
    v54 = v53;
    v206 = sub_22372AFE8();
    v211 = v55;

    v192 = a1;
    v56 = [a1 speechPackage];
    if (v56)
    {
      v57 = v56;
      v58 = [v56 recognition];

      if (v58)
      {
        v59 = [v58 oneBestTranscript];

        v181 = v32;
        v187 = v28;
        if (v59)
        {
          v196 = sub_22372AFE8();
          v61 = v60;
        }

        else
        {
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v70 = sub_22372AC98();
          __swift_project_value_buffer(v70, qword_28132B680);
          v71 = sub_22372AC88();
          v72 = sub_22372B288();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = a3;
            v74 = v27;
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_223620000, v71, v72, "Empty utterance from speech package", v75, 2u);
            v76 = v75;
            v27 = v74;
            a3 = v73;
            MEMORY[0x223DE8A80](v76, -1, -1);
          }

          v196 = 0;
          v61 = 0xE000000000000000;
        }

        v77 = v205;
        v78 = *(a3 + 56);
        if (*(v78 + 16) && (v79 = sub_2236261A0(v206, v211), (v80 & 1) != 0) && (v81 = *(*(v78 + 56) + 8 * v79)) != 0)
        {
          v82 = v81;
          v186 = sub_22372A1E8();
        }

        else
        {
          v186 = MEMORY[0x277D84F90];
        }

        v185 = type metadata accessor for TTProxyInput();
        sub_223634890(a3 + *(v185 + 40), v48, &unk_27D08E990, &qword_22372FCF0);
        v83 = v204;
        v84 = (*(v204 + 48))(v48, 1, v77);
        v195 = v61;
        v188 = a3;
        if (v84 == 1)
        {
          sub_223626478(v48, &unk_27D08E990, &qword_22372FCF0);
          v85 = MEMORY[0x277D84F90];
          v184 = MEMORY[0x277D84F90];
          v208 = MEMORY[0x277D84F90];
          v86 = v200;
          v87 = v211;
          goto LABEL_52;
        }

        (*(v83 + 32))(v197, v48, v77);
        v88 = v203[3];
        v89 = v203[4];
        v90 = __swift_project_boxed_opaque_existential_1(v203, v88);
        v91 = *MEMORY[0x277D5D1A0];
        v92 = v208;
        v177 = v208[13];
        v177(v43, v91, v39);
        v178 = v90;
        v180 = v88;
        v179 = v89;
        sub_22372A4F8();
        v93 = v92[1];
        v208 = v92 + 1;
        v93(v43, v39);
        if (v214)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA38, &unk_223733390);
          if (swift_dynamicCast())
          {
            v94 = v212;
            goto LABEL_30;
          }
        }

        else
        {
          sub_223626478(&v213, &unk_27D08F750, &qword_22372C960);
        }

        v94 = MEMORY[0x277D84F90];
LABEL_30:
        v95 = qword_281328E58;

        if (v95 != -1)
        {
          swift_once();
        }

        v96 = sub_22372AC98();
        v97 = __swift_project_value_buffer(v96, qword_28132B680);

        v176 = v97;
        v98 = sub_22372AC88();
        v99 = sub_22372B268();

        v100 = os_log_type_enabled(v98, v99);
        v175 = v27;
        v203 = v94;
        if (v100)
        {
          v101 = swift_slowAlloc();
          v102 = v93;
          v103 = swift_slowAlloc();
          v213 = v103;
          *v101 = 136315138;
          v104 = sub_2237275E8();
          v105 = MEMORY[0x223DE7B80](v94, v104);
          v107 = v106;

          v108 = sub_223623274(v105, v107, &v213);

          *(v101 + 4) = v108;
          _os_log_impl(&dword_223620000, v98, v99, "From SessionState activeTasks: %s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v103);
          v109 = v103;
          v93 = v102;
          MEMORY[0x223DE8A80](v109, -1, -1);
          MEMORY[0x223DE8A80](v101, -1, -1);
        }

        else
        {
        }

        v177(v43, *MEMORY[0x277D5D1B0], v39);
        v110 = v197;
        sub_22372A4F8();
        v93(v43, v39);
        if (v214)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA38, &unk_223733390);
          if (swift_dynamicCast())
          {
            v111 = v212;
LABEL_40:

            v112 = sub_22372AC88();
            v113 = sub_22372B268();
            v114 = os_log_type_enabled(v112, v113);
            v184 = v111;
            if (v114)
            {
              v115 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v213 = v116;
              *v115 = 136315138;
              v117 = sub_2237275E8();
              v118 = MEMORY[0x223DE7B80](v111, v117);
              v174 = v43;
              v119 = v110;
              v120 = v93;
              v122 = v121;

              v123 = sub_223623274(v118, v122, &v213);
              v93 = v120;
              v110 = v119;
              v43 = v174;

              *(v115 + 4) = v123;
              _os_log_impl(&dword_223620000, v112, v113, "From SessionState executedTasks: %s", v115, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v116);
              MEMORY[0x223DE8A80](v116, -1, -1);
              MEMORY[0x223DE8A80](v115, -1, -1);
            }

            else
            {
            }

            v177(v43, *MEMORY[0x277D5D1D0], v39);
            sub_22372A4F8();
            v93(v43, v39);
            if (v214)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA30, &qword_223733388);
              v124 = swift_dynamicCast();
              v87 = v211;
              v61 = v195;
              if (v124)
              {
                v125 = v212;
              }

              else
              {
                v125 = MEMORY[0x277D84F90];
              }
            }

            else
            {
              sub_223626478(&v213, &unk_27D08F750, &qword_22372C960);
              v125 = MEMORY[0x277D84F90];
              v87 = v211;
              v61 = v195;
            }

            v126 = sub_22372AC88();
            v127 = sub_22372B268();
            v128 = os_log_type_enabled(v126, v127);
            v208 = v125;
            if (v128)
            {
              v129 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              v213 = v130;
              *v129 = 136315138;
              v131 = sub_2237276F8();
              v132 = MEMORY[0x223DE7B80](v125, v131);
              v134 = v133;

              v135 = sub_223623274(v132, v134, &v213);

              *(v129 + 4) = v135;
              _os_log_impl(&dword_223620000, v126, v127, "From SessionState systemDialogActs: %s", v129, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v130);
              MEMORY[0x223DE8A80](v130, -1, -1);
              MEMORY[0x223DE8A80](v129, -1, -1);
            }

            else
            {
            }

            (*(v204 + 8))(v110, v205);
            a3 = v188;
            v86 = v200;
            v27 = v175;
            v85 = v203;
LABEL_52:
            if (qword_281328E58 != -1)
            {
              swift_once();
            }

            v136 = sub_22372AC98();
            __swift_project_value_buffer(v136, qword_28132B680);

            v137 = sub_22372AC88();
            v138 = sub_22372B268();

            v139 = os_log_type_enabled(v137, v138);
            v203 = v85;
            if (v139)
            {
              v140 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v213 = v141;
              *v140 = 136315394;
              *(v140 + 4) = sub_223623274(v206, v87, &v213);
              *(v140 + 12) = 2080;
              *(v140 + 14) = sub_223623274(v196, v61, &v213);
              _os_log_impl(&dword_223620000, v137, v138, "creating candidate for TTManager with tcuId - %s, utterance - %s", v140, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223DE8A80](v141, -1, -1);
              MEMORY[0x223DE8A80](v140, -1, -1);
            }

            v142 = v198;
            v143 = v185;
            v144 = *(v86 + 16);
            v144(v209, a3 + *(v185 + 44), v210);
            sub_223634890(a3 + *(v143 + 48), v27, &qword_27D08F930, &qword_223733380);
            v145 = (*(v187 + 48))(v27, 1, v142);
            v146 = v192;
            v147 = v202;
            if (v145 == 1)
            {
              sub_223626478(v27, &qword_27D08F930, &qword_223733380);
              goto LABEL_60;
            }

            v148 = v181;
            sub_2237126F8(v27, v181);
            v149 = v190;
            sub_223634890(v148 + *(v142 + 20), v190, &unk_27D08E9C0, &qword_223731E30);
            v150 = v193;
            if ((*(v147 + 48))(v149, 1, v193) == 1)
            {
              sub_22371275C(v148);
              sub_223626478(v149, &unk_27D08E9C0, &qword_223731E30);
              a3 = v188;
LABEL_60:
              v151 = [v146 speechEvent];
              if (v151 > 16)
              {
                if (v151 == 17)
                {
                  v152 = v207;
                  v153 = MEMORY[0x277D61948];
                  goto LABEL_74;
                }

                if (v151 == 30)
                {
                  v152 = v207;
                  v153 = MEMORY[0x277D61938];
                  goto LABEL_74;
                }
              }

              else
              {
                if (v151 == 1)
                {
                  v152 = v207;
                  v153 = MEMORY[0x277D61928];
                  goto LABEL_74;
                }

                if (v151 == 8)
                {
                  v152 = v207;
                  v153 = MEMORY[0x277D61930];
LABEL_74:
                  (*(v201 + 104))(v194, *v153, v189);
                  v163 = [v146 siriIntendedInfo];
                  v164 = *(a3 + 48);
                  v166 = v209;
                  v165 = v210;
                  v144(v199, v209, v210);
                  sub_22372AA78();
                  (*(v86 + 8))(v166, v165);
                  v167 = sub_22372AA88();
                  (*(*(v167 - 8) + 56))(v152, 0, 1, v167);
                  return;
                }
              }

              v152 = v207;
              v153 = MEMORY[0x277D61940];
              goto LABEL_74;
            }

            v154 = v191;
            (*(v147 + 32))(v191, v149, v150);
            v155 = *v148;
            (*(v147 + 16))(v182, v154, v150);
            v156 = sub_22372AAE8();
            v157 = *(v156 + 48);
            v158 = *(v156 + 52);
            swift_allocObject();
            sub_22372AAD8();
            v159 = v192;
            v160 = [v192 speechEvent];
            if (v160 > 16)
            {
              v161 = v188;
              if (v160 == 17)
              {
                v162 = MEMORY[0x277D61948];
                goto LABEL_81;
              }

              if (v160 == 30)
              {
                v162 = MEMORY[0x277D61938];
                goto LABEL_81;
              }
            }

            else
            {
              v161 = v188;
              if (v160 == 1)
              {
                v162 = MEMORY[0x277D61928];
                goto LABEL_81;
              }

              if (v160 == 8)
              {
                v162 = MEMORY[0x277D61930];
LABEL_81:
                (*(v201 + 104))(v183, *v162, v189);
                v168 = [v159 siriIntendedInfo];
                v169 = *(v161 + 48);
                v171 = v209;
                v170 = v210;
                v144(v199, v209, v210);
                v172 = v207;
                sub_22372AA78();
                (*(v202 + 8))(v191, v193);
                (*(v86 + 8))(v171, v170);
                sub_22371275C(v181);
                v173 = sub_22372AA88();
                (*(*(v173 - 8) + 56))(v172, 0, 1, v173);
                return;
              }
            }

            v162 = MEMORY[0x277D61940];
            goto LABEL_81;
          }
        }

        else
        {
          sub_223626478(&v213, &unk_27D08F750, &qword_22372C960);
        }

        v111 = MEMORY[0x277D84F90];
        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v62 = sub_22372AC98();
    __swift_project_value_buffer(v62, qword_28132B680);
    v63 = sub_22372AC88();
    v64 = sub_22372B278();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_223620000, v63, v64, "unable to read tcuId from trpCandidateMessage - tcuPackage", v65, 2u);
      MEMORY[0x223DE8A80](v65, -1, -1);
    }

    v66 = sub_22372AA88();
    v67 = *(*(v66 - 8) + 56);
    v68 = v66;
    v69 = v207;

    v67(v69, 1, 1, v68);
  }
}

void *sub_223711248(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F800, &qword_2237325F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7F8, &qword_2237325E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22371137C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2237113AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA20, &unk_223733360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = sub_22372AA88();
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  result = MEMORY[0x28223BE20](v10, v11);
  v31 = &v28 - v15;
  v16 = a1[5];
  v35 = *(v16 + 16);
  if (v35)
  {
    v17 = 0;
    v18 = v16 + 32;
    v33 = (v13 + 48);
    v34 = v14;
    v32 = (v13 + 32);
    v19 = MEMORY[0x277D84F90];
    v29 = v13;
    v30 = a1;
    v28 = v16;
    while (v17 < *(v16 + 16))
    {
      sub_223634890(v18, &v36, &qword_27D08F7B0, &qword_22372DD30);
      sub_22370FC3C(v36, v37, a1, v6);
      sub_223626478(&v36, &qword_27D08F7B0, &qword_22372DD30);
      if ((*v33)(v6, 1, v7) == 1)
      {
        result = sub_223626478(v6, &qword_27D08FA20, &unk_223733360);
      }

      else
      {
        v20 = v31;
        v21 = *v32;
        (*v32)(v31, v6, v7);
        v21(v34, v20, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2236385B0(0, v19[2] + 1, 1, v19, &qword_27D08FA28, &unk_223733370, MEMORY[0x277D61920]);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_2236385B0(v22 > 1, v23 + 1, 1, v19, &qword_27D08FA28, &unk_223733370, MEMORY[0x277D61920]);
        }

        v19[2] = v23 + 1;
        result = (v21)(v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23, v34, v7);
        a1 = v30;
        v16 = v28;
      }

      ++v17;
      v18 += 48;
      if (v35 == v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v24 = a1[3];
    v25 = a1[4];
    v26 = *a1;
    v27 = a1[1];
    objc_allocWithZone(sub_22372AAB8());

    return sub_22372AAA8();
  }

  return result;
}

unint64_t sub_223711748()
{
  result = qword_27D08FA18;
  if (!qword_27D08FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FA18);
  }

  return result;
}

uint64_t sub_2237117A8(char *a1, NSObject *a2)
{
  v4 = sub_22372AAF8();
  v126 = *(v4 - 8);
  v5 = *(v126 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v131 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v130 = &v119 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v138 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v137 = &v119 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v142 = &v119 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v141 = &v119 - v22;
  v23 = sub_22372AB48();
  v143 = *(v23 - 8);
  v24 = *(v143 + 64);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v129 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v119 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  v122 = &v119 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v136 = &v119 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v124 = &v119 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v123 = &v119 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v140 = &v119 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v125 = &v119 - v48;
  if (qword_281328E58 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v49 = sub_22372AC98();
    v50 = __swift_project_value_buffer(v49, qword_28132B680);
    v51 = a2;
    v127 = v50;
    v52 = sub_22372AC88();
    v53 = sub_22372B268();
    v54 = os_log_type_enabled(v52, v53);
    v128 = v51;
    v121 = a1;
    v120 = v31;
    if (v54)
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      v56 = *(sub_22372AAC8() + 16);

      *(v55 + 4) = v56;

      _os_log_impl(&dword_223620000, v52, v53, "received response from ttManager with num TTResults - %ld", v55, 0xCu);
      v51 = v128;
      MEMORY[0x223DE8A80](v55, -1, -1);
    }

    else
    {

      v52 = v51;
    }

    a2 = v51;
    v57 = sub_22372AAC8();
    v58 = *(v57 + 16);
    v139 = v23;
    v132 = v58;
    if (v58)
    {
      break;
    }

LABEL_12:

    a2 = v128;
    v31 = sub_22372AAC8();
    v135 = *(v31 + 16);
    if (v135)
    {
      a1 = 0;
      v142 = (v143 + 16);
      LODWORD(v140) = *MEMORY[0x277D61950];
      v63 = (v126 + 104);
      v64 = (v126 + 8);
      v141 = (v143 + 8);
      while (a1 < *(v31 + 16))
      {
        v65 = *(v143 + 16);
        v65(v136, v31 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * a1, v23);
        sub_22372AB28();
        (*v63)(v138, v140, v4);
        sub_2237126A0();
        sub_22372B0F8();
        sub_22372B0F8();
        a2 = v145;
        if (v146 == v144 && v147 == v145)
        {
          v97 = *v64;
          (*v64)(v138, v4);
          v97(v137, v4);

LABEL_37:

          v98 = v124;
          v99 = v139;
          (*(v143 + 32))(v124, v136, v139);
          v100 = v122;
          v65(v122, v98, v99);
          v101 = sub_22372AC88();
          v102 = sub_22372B268();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v146 = v104;
            *v103 = 136315138;
            v105 = sub_22372AB38();
            v106 = v100;
            v108 = v107;
            v109 = *v141;
            (*v141)(v106, v99);
            v110 = sub_223623274(v105, v108, &v146);

            *(v103 + 4) = v110;
            _os_log_impl(&dword_223620000, v101, v102, "TTProxy result with TCUId %s and  mitigation decision - maybeMitigated", v103, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v104);
            MEMORY[0x223DE8A80](v104, -1, -1);
            MEMORY[0x223DE8A80](v103, -1, -1);
          }

          else
          {

            v109 = *v141;
            (*v141)(v100, v99);
          }

          v111 = v124;
          v80 = sub_22372AB38();
          v109(v111, v99);
          return v80;
        }

        v66 = sub_22372B6E8();
        v67 = *v64;
        (*v64)(v138, v4);
        v67(v137, v4);

        if (v66)
        {
          goto LABEL_37;
        }

        ++a1;
        v23 = v139;
        (*v141)(v136, v139);
        if (v135 == a1)
        {
          goto LABEL_19;
        }
      }

LABEL_50:
      __break(1u);
    }

    else
    {
LABEL_19:

      v68 = sub_22372AC88();
      v69 = sub_22372B268();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_223620000, v68, v69, "TTProxy result with mitigation decision - mitigated", v70, 2u);
        v71 = v70;
        v23 = v139;
        MEMORY[0x223DE8A80](v71, -1, -1);
      }

      a2 = v128;
      v72 = sub_22372AAC8();
      v140 = *(v72 + 16);
      if (!v140)
      {
LABEL_28:

        v77 = sub_22372AC88();
        v78 = sub_22372B278();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_223620000, v77, v78, "None of the TCUs are either selected/maybeMitigated/Mitigated - this should not be possible", v79, 2u);
          MEMORY[0x223DE8A80](v79, -1, -1);
        }

        return 0;
      }

      a1 = 0;
      v142 = (v143 + 16);
      LODWORD(v141) = *MEMORY[0x277D61960];
      v73 = (v126 + 104);
      v74 = (v126 + 8);
      v75 = (v143 + 8);
      while (a1 < *(v72 + 16))
      {
        (*(v143 + 16))(v129, v72 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * a1, v23);
        sub_22372AB28();
        (*v73)(v131, v141, v4);
        sub_2237126A0();
        sub_22372B0F8();
        sub_22372B0F8();
        a2 = v145;
        if (v146 == v144 && v147 == v145)
        {
          v112 = *v74;
          (*v74)(v131, v4);
          v112(v130, v4);

LABEL_42:

          v113 = v120;
          v114 = v139;
          (*(v143 + 32))(v120, v129, v139);
          if ((v121[16] & 1) != 0 || v121[17] == 1)
          {
            v115 = sub_22372AC88();
            v116 = sub_22372B288();
            if (os_log_type_enabled(v115, v116))
            {
              v117 = swift_slowAlloc();
              *v117 = 0;
              _os_log_impl(&dword_223620000, v115, v116, "setting mitigation decision to force mitigated because it's a FF or Announce followup", v117, 2u);
              MEMORY[0x223DE8A80](v117, -1, -1);
            }

            v80 = sub_22372AB38();
            (*v75)(v113, v114);
          }

          else
          {
            v80 = sub_22372AB38();
            (*v75)(v113, v114);
          }

          return v80;
        }

        v31 = sub_22372B6E8();
        v76 = *v74;
        (*v74)(v131, v4);
        v76(v130, v4);

        if (v31)
        {
          goto LABEL_42;
        }

        ++a1;
        v23 = v139;
        (*v75)(v129, v139);
        if (v140 == a1)
        {
          goto LABEL_28;
        }
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  a1 = 0;
  v135 = (v143 + 16);
  v133 = *MEMORY[0x277D61958];
  v31 = v126 + 104;
  v59 = (v126 + 8);
  v134 = (v143 + 8);
  while (1)
  {
    if (a1 >= *(v57 + 16))
    {
      __break(1u);
      goto LABEL_50;
    }

    v60 = *(v143 + 16);
    v60(v140, v57 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * a1, v23);
    sub_22372AB28();
    (*v31)(v142, v133, v4);
    sub_2237126A0();
    sub_22372B0F8();
    sub_22372B0F8();
    a2 = v145;
    if (v146 == v144 && v147 == v145)
    {
      break;
    }

    v61 = sub_22372B6E8();
    v62 = *v59;
    (*v59)(v142, v4);
    v62(v141, v4);

    if (v61)
    {
      goto LABEL_32;
    }

    ++a1;
    v23 = v139;
    (*v134)(v140, v139);
    if (v132 == a1)
    {
      goto LABEL_12;
    }
  }

  v81 = *v59;
  (*v59)(v142, v4);
  v81(v141, v4);

LABEL_32:

  v82 = v125;
  v83 = v139;
  (*(v143 + 32))(v125, v140, v139);
  v84 = v123;
  v60(v123, v82, v83);
  v85 = sub_22372AC88();
  v86 = sub_22372B268();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v146 = v88;
    *v87 = 136315138;
    v89 = sub_22372AB38();
    v90 = v84;
    v92 = v91;
    v93 = *v134;
    (*v134)(v90, v83);
    v94 = sub_223623274(v89, v92, &v146);

    *(v87 + 4) = v94;
    _os_log_impl(&dword_223620000, v85, v86, "TTProxy result with TCUId %s and  mitigation decision - selected", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    MEMORY[0x223DE8A80](v88, -1, -1);
    MEMORY[0x223DE8A80](v87, -1, -1);
  }

  else
  {

    v93 = *v134;
    (*v134)(v84, v83);
  }

  v95 = v83;
  v96 = v125;
  v80 = sub_22372AB38();
  v93(v96, v95);
  return v80;
}

unint64_t sub_2237126A0()
{
  result = qword_28132B4D8;
  if (!qword_28132B4D8)
  {
    sub_22372AAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B4D8);
  }

  return result;
}

uint64_t sub_2237126F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22371275C(uint64_t a1)
{
  v2 = type metadata accessor for RequestState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2237127CC()
{
  result = qword_27D08FA78;
  if (!qword_27D08FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FA78);
  }

  return result;
}

uint64_t type metadata accessor for TTProxyInput()
{
  result = qword_28132A0E0;
  if (!qword_28132A0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_223712894()
{
  sub_2237129AC();
  if (v0 <= 0x3F)
  {
    sub_223712A20(319, &qword_28132B4E0, MEMORY[0x277D5D298]);
    if (v1 <= 0x3F)
    {
      sub_2237287C8();
      if (v2 <= 0x3F)
      {
        sub_223712A20(319, qword_28132A360, type metadata accessor for RequestState);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2237129AC()
{
  if (!qword_281328E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08FA80, &qword_2237334C8);
    v0 = sub_22372AF78();
    if (!v1)
    {
      atomic_store(v0, &qword_281328E20);
    }
  }
}

void sub_223712A20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_223712A74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_223712ABC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_223712B20()
{
  result = qword_27D08FA88;
  if (!qword_27D08FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FA88);
  }

  return result;
}

uint64_t StartedRemoteIntelligenceSessionMessage.remoteSessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27D097250;
  v4 = sub_223727408();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_223712C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x655365746F6D6572 && a2 == 0xEF64496E6F697373)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22372B6E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_223712CA0(uint64_t a1)
{
  v2 = sub_223713B24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223712CDC(uint64_t a1)
{
  v2 = sub_223713B24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartedRemoteIntelligenceSessionMessage.__allocating_init(build:)(void (*a1)(char *))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return StartedRemoteIntelligenceSessionMessage.init(build:)(a1);
}

uint64_t StartedRemoteIntelligenceSessionMessage.init(build:)(void (*a1)(char *))
{
  v36 = *v1;
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v36 - v5;
  v7 = sub_223727408();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 + 56);
  v19(v18, 1, 1, v7);
  v19(&v18[*(v14 + 28)], 1, 1, v7);
  v20 = *(v14 + 32);
  v19(&v18[v20], 1, 1, v7);
  v37(v18);
  sub_22364FCB0(&v18[v20], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v21 = v1;
    sub_223660FAC(v6);
    if (qword_27D08E2D0 != -1)
    {
      swift_once();
    }

    v22 = sub_22372AC98();
    __swift_project_value_buffer(v22, qword_27D097088);
    v23 = sub_22372AC88();
    v24 = sub_22372B278();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38[0] = v26;
      *v25 = 136446210;
      v38[1] = v36;
      swift_getMetatypeMetadata();
      v27 = sub_22372B038();
      v29 = sub_223623274(v27, v28, v38);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_223620000, v23, v24, "Could not build %{public}s: Builder has missing required fields", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x223DE8A80](v26, -1, -1);
      MEMORY[0x223DE8A80](v25, -1, -1);
    }

    sub_2237131DC(v18);
    type metadata accessor for StartedRemoteIntelligenceSessionMessage(0);
    v30 = *(*v21 + 48);
    v31 = *(*v21 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v33 = (*(v8 + 16))(v1 + qword_27D097250, v12, v7);
    MEMORY[0x28223BE20](v33, v34);
    *(&v36 - 2) = v18;
    v35 = RemoteIntelligenceSessionMessage.init(build:)(sub_2236B795C);
    (*(v8 + 8))(v12, v7);
    sub_2237131DC(v18);
    return v35;
  }
}

uint64_t sub_2237131DC(uint64_t a1)
{
  v2 = type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StartedRemoteIntelligenceSessionMessage.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return StartedRemoteIntelligenceSessionMessage.init(from:)(a1);
}

uint64_t StartedRemoteIntelligenceSessionMessage.init(from:)(uint64_t *a1)
{
  v3 = sub_223727408();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA90, &qword_223733598);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21, v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223713B24();
  sub_22372B7D8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for StartedRemoteIntelligenceSessionMessage(0);
    v16 = *(*v23 + 48);
    v17 = *(*v23 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v8;
    sub_2236C6ED8(&qword_27D08ED50);
    v15 = v21;
    sub_22372B648();
    (*(v20 + 32))(v23 + qword_27D097250, v7, v3);
    sub_223623934(a1, v22);
    v8 = RemoteIntelligenceSessionMessage.init(from:)(v22);
    (*(v14 + 8))(v12, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v8;
}

uint64_t sub_22371355C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FAA0, &qword_2237335A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223713B24();
  sub_22372B7E8();
  sub_223727408();
  sub_2236C6ED8(&unk_28132B610);
  sub_22372B6A8();
  if (!v1)
  {
    sub_22370D2DC(a1);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t StartedRemoteIntelligenceSessionMessage.Builder.messageId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0) + 20);

  return sub_22364FCB0(v3, a1);
}

uint64_t StartedRemoteIntelligenceSessionMessage.Builder.messageId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0) + 20);

  return sub_2236511D0(a1, v3);
}

uint64_t StartedRemoteIntelligenceSessionMessage.Builder.remoteSessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0) + 24);

  return sub_22364FCB0(v3, a1);
}

uint64_t StartedRemoteIntelligenceSessionMessage.Builder.remoteSessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0) + 24);

  return sub_2236511D0(a1, v3);
}

uint64_t sub_223713908()
{
  v1 = qword_27D097250;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t StartedRemoteIntelligenceSessionMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v3(v0 + qword_27D097250, v2);
  return v0;
}

uint64_t StartedRemoteIntelligenceSessionMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v3(v0 + qword_27D097250, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_223713B24()
{
  result = qword_27D08FA98;
  if (!qword_27D08FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FA98);
  }

  return result;
}

uint64_t sub_223713B78()
{
  result = sub_223727408();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_223713C74()
{
  sub_22369BEEC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_223713CFC()
{
  result = qword_27D08FAC8;
  if (!qword_27D08FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FAC8);
  }

  return result;
}

unint64_t sub_223713D54()
{
  result = qword_27D08FAD0;
  if (!qword_27D08FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FAD0);
  }

  return result;
}

unint64_t sub_223713DAC()
{
  result = qword_27D08FAD8;
  if (!qword_27D08FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FAD8);
  }

  return result;
}

void sub_223713E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2237272E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_223713EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22368DDC0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2236261A0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_22365F464();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_22365E944(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_223713FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_2237287C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_223626478(a1, &unk_27D08F900, &qword_223733FF0);
    sub_223718D04(a2, a3, MEMORY[0x277D5CBA8], sub_22365EAF4, sub_22365F5D8, v11);

    return sub_223626478(v11, &unk_27D08F900, &qword_223733FF0);
  }

  else
  {
    (*(v13 + 32))(v17, a1, v12);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_22368DDE8(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_2237141EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_223729D78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_223626478(a1, &qword_27D08F770, &qword_223731DE0);
    sub_223718D04(a2, a3, MEMORY[0x277D5CDA0], sub_22365EB0C, sub_22365F600, v11);

    return sub_223626478(v11, &qword_27D08F770, &qword_223731DE0);
  }

  else
  {
    (*(v13 + 32))(v17, a1, v12);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_22368DFA0(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_223714400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for RootRequestController.TRPCache(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_223626478(a1, &qword_27D08F928, &unk_223732ED0);
    sub_223718EDC(a2, a3, type metadata accessor for RootRequestController.TRPCache, type metadata accessor for RootRequestController.TRPCache, sub_22365EB24, sub_22365FD20, v11);

    return sub_223626478(v11, &qword_27D08F928, &unk_223732ED0);
  }

  else
  {
    sub_223641828(a1, v16, type metadata accessor for RootRequestController.TRPCache);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_22368E4A8(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_223714614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB58, &qword_2237337B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v27 - v15;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_223626478(a1, &qword_27D08FB58, &qword_2237337B8);
    v17 = *v3;
    v18 = sub_2236AF76C(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22365FF78();
        v23 = v28;
      }

      (*(v12 + 32))(v10, *(v23 + 56) + *(v12 + 72) * v20, v11);
      sub_22365EB3C(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_223626478(v10, &qword_27D08FB58, &qword_2237337B8);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_22368E674(v16, a2, v25);
    *v3 = v28;
  }

  return result;
}

uint64_t sub_223714894()
{
  v0 = sub_22372AC98();
  __swift_allocate_value_buffer(v0, qword_27D097278);
  v1 = __swift_project_value_buffer(v0, qword_27D097278);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28132B668);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_22371495C()
{
  if (qword_27D08E2F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27D097268;

  return v1;
}

uint64_t sub_2237149B8()
{
  if (qword_27D08E300 != -1)
  {
    swift_once();
  }
}

uint64_t sub_223714A14@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D08E308 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  v3 = __swift_project_value_buffer(v2, qword_27D097278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_223714ABC()
{
  v1 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000013;
  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_223714B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2237198A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223714B58(uint64_t a1)
{
  v2 = sub_223715328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223714B94(uint64_t a1)
{
  v2 = sub_223715328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223714BD0(uint64_t a1)
{
  v2 = sub_22371537C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223714C0C(uint64_t a1)
{
  v2 = sub_22371537C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223714C48(uint64_t a1)
{
  v2 = sub_223715424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223714C84(uint64_t a1)
{
  v2 = sub_223715424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223714CC0(uint64_t a1)
{
  v2 = sub_223715478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223714CFC(uint64_t a1)
{
  v2 = sub_223715478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223714D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002237354D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22372B6E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_223714DE8(uint64_t a1)
{
  v2 = sub_2237153D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223714E24(uint64_t a1)
{
  v2 = sub_2237153D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IFSessionServiceClient.RelayError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FAE0, &qword_223733760);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v39 = &v34 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FAE8, &qword_223733768);
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v40, v8);
  v37 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FAF0, &qword_223733770);
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FAF8, &qword_223733778);
  v34 = *(v15 - 8);
  v16 = *(v34 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB00, &qword_223733780);
  v43 = *(v20 - 8);
  v44 = v20;
  v21 = *(v43 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v34 - v23;
  v25 = *v1;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223715328();
  sub_22372B7E8();
  switch(v25)
  {
    case 2:
      v45 = 0;
      sub_223715478();
      v30 = v44;
      sub_22372B678();
      (*(v34 + 8))(v19, v15);
      return (*(v43 + 8))(v24, v30);
    case 3:
      v46 = 1;
      sub_223715424();
      v30 = v44;
      sub_22372B678();
      (*(v35 + 8))(v14, v36);
      return (*(v43 + 8))(v24, v30);
    case 4:
      v48 = 3;
      sub_22371537C();
      v27 = v39;
      v28 = v44;
      sub_22372B678();
      (*(v41 + 8))(v27, v42);
      return (*(v43 + 8))(v24, v28);
    default:
      v47 = 2;
      sub_2237153D0();
      v31 = v37;
      v32 = v44;
      sub_22372B678();
      v33 = v40;
      sub_22372B698();
      (*(v38 + 8))(v31, v33);
      return (*(v43 + 8))(v24, v32);
  }
}

unint64_t sub_223715328()
{
  result = qword_27D08FB08;
  if (!qword_27D08FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FB08);
  }

  return result;
}

unint64_t sub_22371537C()
{
  result = qword_27D08FB10;
  if (!qword_27D08FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FB10);
  }

  return result;
}

unint64_t sub_2237153D0()
{
  result = qword_27D08FB18;
  if (!qword_27D08FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FB18);
  }

  return result;
}

unint64_t sub_223715424()
{
  result = qword_27D08FB20;
  if (!qword_27D08FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FB20);
  }

  return result;
}

unint64_t sub_223715478()
{
  result = qword_27D08FB28;
  if (!qword_27D08FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FB28);
  }

  return result;
}

uint64_t IFSessionServiceClient.RelayError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB30, &qword_223733788);
  v60 = *(v55 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v55, v4);
  v59 = &v50 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB38, &qword_223733790);
  v57 = *(v54 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v54, v7);
  v58 = &v50 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB40, &qword_223733798);
  v52 = *(v56 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v56, v10);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB48, &qword_2237337A0);
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB50, &unk_2237337A8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v50 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_223715328();
  v26 = v62;
  sub_22372B7D8();
  if (!v26)
  {
    v27 = v17;
    v50 = v13;
    v51 = 0;
    v29 = v58;
    v28 = v59;
    v62 = v19;
    v31 = v60;
    v30 = v61;
    v32 = sub_22372B668();
    v33 = (2 * *(v32 + 16)) | 1;
    v64 = v32;
    v65 = v32 + 32;
    v66 = 0;
    v67 = v33;
    v34 = sub_22368BD38();
    if (v34 == 4 || v66 != v67 >> 1)
    {
      v36 = sub_22372B4B8();
      swift_allocError();
      v38 = v37;
      v39 = v23;
      v40 = v18;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F000, &qword_2237307D0) + 48);
      *v38 = &type metadata for IFSessionServiceClient.RelayError;
      sub_22372B618();
      sub_22372B4A8();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
      (*(v62 + 8))(v39, v40);
      goto LABEL_9;
    }

    if (v34 <= 1u)
    {
      if (v34)
      {
        v68 = 1;
        sub_223715424();
        v47 = v51;
        sub_22372B608();
        if (!v47)
        {
          (*(v52 + 8))(v12, v56);
          (*(v62 + 8))(v23, v18);
          swift_unknownObjectRelease();
          *v30 = 3;
          return __swift_destroy_boxed_opaque_existential_1Tm(v63);
        }
      }

      else
      {
        v68 = 0;
        sub_223715478();
        v35 = v51;
        sub_22372B608();
        if (!v35)
        {
          (*(v53 + 8))(v27, v50);
          (*(v62 + 8))(v23, v18);
          swift_unknownObjectRelease();
          *v30 = 2;
          return __swift_destroy_boxed_opaque_existential_1Tm(v63);
        }
      }

      (*(v62 + 8))(v23, v18);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    v43 = v30;
    v44 = v62;
    if (v34 == 2)
    {
      v68 = 2;
      sub_2237153D0();
      v45 = v51;
      sub_22372B608();
      if (!v45)
      {
        v46 = v54;
        v49 = sub_22372B638();
        (*(v57 + 8))(v29, v46);
        (*(v44 + 8))(v23, v18);
        swift_unknownObjectRelease();
        *v43 = v49 & 1;
        return __swift_destroy_boxed_opaque_existential_1Tm(v63);
      }

      (*(v44 + 8))(v23, v18);
      goto LABEL_9;
    }

    v68 = 3;
    sub_22371537C();
    v48 = v51;
    sub_22372B608();
    if (v48)
    {
      (*(v44 + 8))(v23, v18);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v31 + 8))(v28, v55);
      (*(v44 + 8))(v23, v18);
      swift_unknownObjectRelease();
      *v43 = 4;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v63);
}

void *IFSessionServiceClient.deinit()
{
  sub_223661014();
  v1 = swift_allocError();
  *v2 = 0;
  *(v2 + 8) = 1;
  sub_223715CAC(v1);

  v3 = v0[2];

  v4 = v0[3];

  v5 = v0[5];

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  }

  return v0;
}

uint64_t sub_223715CAC(void *a1)
{
  v3 = sub_22372AC98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E308 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27D097278);
  v10 = (*(v4 + 16))(v8, v9, v3);
  v11 = *(v1 + 24);
  MEMORY[0x28223BE20](v10, v12);
  v23[-2] = sub_22371A4B4;
  v23[-1] = v1;
  os_unfair_lock_lock(v11 + 4);
  sub_22371A4C0(v23);
  os_unfair_lock_unlock(v11 + 4);
  if (v23[0])
  {
    sub_223716304(a1);
    v15 = MEMORY[0x28223BE20](v13, v14);
    v23[-2] = v1;
    LOBYTE(v23[-1]) = 0;
    MEMORY[0x28223BE20](v15, v16);
    v23[-2] = sub_22371A504;
    v23[-1] = v17;
    os_unfair_lock_lock(v11 + 4);
    sub_22371A550();
    os_unfair_lock_unlock(v11 + 4);
    return (*(v4 + 8))(v8, v3);
  }

  else
  {
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000014, 0x8000000223738410, v23);
      _os_log_impl(&dword_223620000, v19, v20, "%s: Cleaning up is not possible on invalid client", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t IFSessionServiceClient.__deallocating_deinit()
{
  sub_223661014();
  v1 = swift_allocError();
  *v2 = 0;
  *(v2 + 8) = 1;
  sub_223715CAC(v1);

  v3 = v0[2];

  v4 = v0[3];

  v5 = v0[5];

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  }

  return swift_deallocClassInstance();
}

uint64_t IFSessionServiceClient.__allocating_init()()
{
  type metadata accessor for IFSessionServiceClient.ReverseServer();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = sub_223727148();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v1 + 24) = sub_223727138();
  v5 = swift_allocObject();

  sub_223716124();
  if (!v0)
  {
    swift_weakAssign();
  }

  return v5;
}

uint64_t sub_223716124()
{
  v2 = sub_223727178();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_223727168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA50, &qword_22372D710);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v0 + 24) = v5;
  *(v0 + 32) = 1;
  *(v0 + 40) = sub_223690C80(MEMORY[0x277D84F90]);
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  sub_22371A46C(&qword_27D08FBF0, v6, type metadata accessor for IFSessionServiceClient);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBF8, qword_223733FF8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  v10 = sub_22372ABD8();
  if (v1)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    v14 = v7;
    v15 = sub_223660728(&qword_27D08FC00, &qword_27D08FBF8, qword_223733FF8);
    swift_unknownObjectRelease();
    *&v13 = v11;
    swift_beginAccess();
    if (*(v0 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
    }

    sub_2236241E8(&v13, v0 + 48);
    swift_endAccess();
  }

  return v0;
}

void sub_223716304(void *a1)
{
  v50 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v53, v4);
  v52 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE0, &qword_223733FD8);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v43 - v12;
  v14 = *(v1 + 24);
  v55 = sub_22371A520;
  v56 = v1;
  os_unfair_lock_lock(v14 + 4);
  sub_223661538(&v57);
  v15 = v14 + 4;
  v16 = v13;
  os_unfair_lock_unlock(v15);
  v17 = 0;
  v18 = v57[8];
  v44 = (v57 + 8);
  v47 = v2;
  v48 = v57;
  v19 = 1 << *(v57 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v45 = v2 + 16;
  v46 = v16;
  v54 = (v2 + 32);
  v49 = (v2 + 8);
  if ((v20 & v18) != 0)
  {
    while (1)
    {
      v23 = v17;
LABEL_12:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v23 << 6);
      v28 = v47;
      v29 = *(v48[6] + 8 * v27);
      v30 = v52;
      v31 = v53;
      (*(v47 + 16))(v52, v48[7] + *(v47 + 72) * v27, v53);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
      v33 = *(v32 + 48);
      v34 = v51;
      *v51 = v29;
      (*(v28 + 32))(&v34[v33], v30, v31);
      (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
      v25 = v23;
      v35 = v34;
      v16 = v46;
LABEL_13:
      sub_22371A3A0(v35, v16);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
      if ((*(*(v36 - 8) + 48))(v16, 1, v36) == 1)
      {
        break;
      }

      v37 = v53;
      v38 = v16 + *(v36 + 48);
      v39 = v52;
      (*v54)(v52, v38, v53);
      v57 = v50;
      v40 = v50;
      sub_22372B228();
      (*v49)(v39, v37);
      v17 = v25;
      if (!v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v22 <= v17 + 1)
    {
      v24 = v17 + 1;
    }

    else
    {
      v24 = v22;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
        v42 = v51;
        (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
        v35 = v42;
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *&v44[8 * v23];
      ++v17;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall IFSessionServiceClient.xpcBidirectionalConnectionWasInvalidated()()
{
  sub_223661014();
  v0 = swift_allocError();
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_223715CAC(v0);
}

void sub_223716778()
{
  sub_223661014();
  v0 = swift_allocError();
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_223715CAC(v0);
}

void sub_2237167D8(uint64_t a1)
{
  v63 = a1;
  v62 = sub_223727E38();
  v3 = *(v62 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v62, v5);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A0, &qword_223733FD0);
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v60, v9);
  v59 = &v50 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v11 = *(v66 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v66, v13);
  v65 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE0, &qword_223733FD8);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v64 = &v50 - v22;
  v23 = *(v1 + 24);
  v68 = sub_22371A520;
  v69 = v1;
  os_unfair_lock_lock(v23 + 4);
  sub_223661538(&v70);
  v50 = v2;
  v24 = v23 + 4;
  if (v2)
  {
LABEL_20:
    os_unfair_lock_unlock(v24);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v24);
  v25 = 0;
  v26 = *(v70 + 64);
  v51 = v70 + 64;
  v54 = v11;
  v55 = v70;
  v27 = 1 << *(v70 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v52 = v11 + 16;
  v53 = v20;
  v67 = (v11 + 32);
  v57 = (v7 + 8);
  v58 = (v3 + 16);
  v56 = (v11 + 8);
  v31 = v66;
  if ((v28 & v26) == 0)
  {
LABEL_6:
    if (v30 <= v25 + 1)
    {
      v33 = v25 + 1;
    }

    else
    {
      v33 = v30;
    }

    v34 = v33 - 1;
    while (1)
    {
      v32 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v32 >= v30)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
        (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
        v29 = 0;
        goto LABEL_14;
      }

      v29 = *(v51 + 8 * v32);
      ++v25;
      if (v29)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  while (1)
  {
    v32 = v25;
LABEL_13:
    v35 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v36 = v35 | (v32 << 6);
    v37 = v54;
    v38 = *(*(v55 + 48) + 8 * v36);
    v39 = v65;
    (*(v54 + 16))(v65, *(v55 + 56) + *(v54 + 72) * v36, v31);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
    v41 = *(v40 + 48);
    v42 = v53;
    *v53 = v38;
    v43 = *(v37 + 32);
    v20 = v42;
    v43(&v42[v41], v39, v31);
    (*(*(v40 - 8) + 56))(v20, 0, 1, v40);
    v34 = v32;
LABEL_14:
    v44 = v64;
    sub_22371A3A0(v20, v64);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      break;
    }

    v46 = v66;
    v47 = v65;
    (*v67)(v65, v44 + *(v45 + 48), v66);
    (*v58)(v61, v63, v62);
    v48 = v59;
    sub_22372B218();
    (*v57)(v48, v60);
    v24 = (*v56)(v47, v46);
    v25 = v34;
    if (!v29)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_223716E18(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v14 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  if (swift_dynamicCast())
  {
    sub_223661014();
    result = swift_allocError();
    *v6 = v12;
    *(v6 + 8) = v13;
    return result;
  }

  v7 = a1;
  if (swift_dynamicCast())
  {
    sub_22366121C();
    result = swift_allocError();
    *v8 = v14;
  }

  else
  {
LABEL_6:
    sub_223661014();
    v9 = swift_allocError();
    *v10 = a2;
    *(v10 + 8) = 0;
    v11 = a2;
    return v9;
  }

  return result;
}

uint64_t sub_223716FD8()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t IFSessionServiceClient.send(message:)()
{
  v2 = v0;
  v3 = sub_22372AC98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E308 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27D097278);
  (*(v4 + 16))(v8, v9, v3);
  v10 = *(v0 + 16);
  sub_223727D38();
  sub_22371A46C(&qword_27D08ED60, 255, MEMORY[0x277D1CE68]);
  v11 = sub_223727158();
  if (v1)
  {
    v19 = v1;
    v20 = sub_22372AC88();
    v21 = sub_22372B278();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v3;
      v24 = v23;
      *&v32 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v25 = sub_22372B738();
      v27 = sub_223623274(v25, v26, &v32);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_223620000, v20, v21, "Sending message to IFSessionService failed with error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v28 = v24;
      v3 = v30;
      MEMORY[0x223DE8A80](v28, -1, -1);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }

    swift_willThrow();
    return (*(v4 + 8))(v8, v3);
  }

  else
  {
    v13 = v11;
    v14 = v12;
    result = swift_beginAccess();
    if (*(v2 + 72))
    {
      result = sub_223623934(v2 + 48, &v32);
    }

    else
    {
      v16 = *(v2 + 64);
      v32 = *(v2 + 48);
      v33 = v16;
      v34 = *(v2 + 80);
    }

    v30 = v3;
    if (*(&v33 + 1))
    {
      v17 = __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      v29[1] = v29;
      MEMORY[0x28223BE20](v17, v18);
      v29[-2] = v13;
      v29[-1] = v14;
      sub_223685980();
      sub_22372ABB8();
      sub_223661270(v13, v14);

      (*(v4 + 8))(v8, v30);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v32);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2237173E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_223727348();
  v9[4] = sub_22371A464;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22365AC5C;
  v9[3] = &block_descriptor_49_0;
  v8 = _Block_copy(v9);

  [a1 sendWithMessageData:v7 with:v8];
  _Block_release(v8);
}

uint64_t IFSessionServiceClient.currentSessionID(forUserID:)()
{
  result = swift_beginAccess();
  if (*(v0 + 72))
  {
    result = sub_223623934(v0 + 48, &v6);
    v2 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
LABEL_3:
      v3 = __swift_project_boxed_opaque_existential_1(&v6, v2);
      MEMORY[0x28223BE20](v3, v4);
      sub_223727408();
      sub_22372ABB8();
      return __swift_destroy_boxed_opaque_existential_1Tm(&v6);
    }
  }

  else
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = v5;
    v8 = *(v0 + 80);
    v2 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void sub_223717610(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2237273C8();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2237176E8;
  v8[3] = &block_descriptor_8;
  v7 = _Block_copy(v8);

  [a1 currentSessionIDForUserID:v6 reply:v7];
  _Block_release(v7);
}

uint64_t sub_2237176E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v17 - v9;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a2)
  {
    sub_2237273E8();
    v13 = sub_223727408();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_223727408();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = a3;
  v12(v10, a3);

  return sub_223626478(v10, &unk_27D08E530, &unk_22372CB10);
}

void IFSessionServiceClient.subscribe(filtering:)(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v3 = *v2;
  v66 = a1;
  v67 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB58, &qword_2237337B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v64 = &v62 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F880, &qword_223732900);
  v75 = *(v81 - 8);
  v8 = *(v75 + 64);
  v10 = MEMORY[0x28223BE20](v81, v9);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v74 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB60, &qword_223734280);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v62 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v62 = *(v63 - 8);
  v20 = *(v62 + 64);
  MEMORY[0x28223BE20](v63, v21);
  v73 = &v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F288, qword_22372FDB0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v62 - v31;
  sub_223727E38();
  (*(v15 + 104))(v19, *MEMORY[0x277D858A0], v14);
  sub_22372B1F8();
  v33 = v14;
  v34 = v64;
  (*(v15 + 8))(v19, v33);
  v69 = v32;
  v70 = v24;
  (*(v24 + 16))(v29, v32, v23);
  v35 = swift_allocObject();
  v36 = v71;
  *(v35 + 16) = v66;
  *(v35 + 24) = v36;
  sub_223660728(&qword_27D08F888, &qword_27D08F288, qword_22372FDB0);

  v37 = v74;
  v71 = v23;
  sub_22372B5E8();
  v38 = v75;
  v39 = v65;
  v40 = v37;
  v41 = v63;
  v42 = v62;
  v43 = v81;
  (*(v75 + 16))(v65, v40, v81);
  v79 = v67;
  v80 = sub_22371A46C(&qword_27D08FB68, v44, type metadata accessor for IFSessionServiceClient);
  v45 = v68;
  *&v78 = v68;
  v46 = type metadata accessor for IFMessagesStream();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v49 = swift_allocObject();
  sub_2236241E8(&v78, v49 + 16);
  (*(v38 + 32))(v49 + OBJC_IVAR____TtC24RequestDispatcherBridges16IFMessagesStream_backingStream, v39, v43);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = v49;

  v52 = v73;
  sub_22372B208();
  v53 = v45;
  (*(v42 + 16))(v34, v52, v41);
  (*(v42 + 56))(v34, 0, 1, v41);
  v54 = *(v45 + 24);
  v76 = sub_223718C28;
  v77 = v53;
  os_unfair_lock_lock(v54 + 4);
  v55 = v72;
  sub_223660E58(&v78);
  if (v55)
  {
    os_unfair_lock_unlock(v54 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v54 + 4);
    v56 = sub_223714614(v34, v49);
    v57 = v78;
    v59 = MEMORY[0x28223BE20](v56, v58);
    *(&v62 - 2) = v53;
    *(&v62 - 1) = v57;
    MEMORY[0x28223BE20](v59, v60);
    *(&v62 - 2) = sub_223719060;
    *(&v62 - 1) = v61;
    os_unfair_lock_lock(v54 + 4);
    sub_223631098();
    os_unfair_lock_unlock(v54 + 4);

    (*(v75 + 8))(v74, v81);
    (*(v42 + 8))(v73, v41);
    (*(v70 + 8))(v69, v71);
  }
}

uint64_t sub_223717F3C(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v5 = sub_223727408();
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v7 = *(v6 + 64) + 15;
  v2[5] = swift_task_alloc();
  v8 = sub_223727E38();
  v2[6] = v8;
  v9 = *(v8 - 8);
  v2[7] = v9;
  v10 = *(v9 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v14 = (a2 + *a2);
  v11 = a2[1];
  v12 = swift_task_alloc();
  v2[13] = v12;
  *v12 = v2;
  v12[1] = sub_223718128;

  return v14(a1);
}

uint64_t sub_223718128(char a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_223718228, 0, 0);
}

uint64_t sub_223718228()
{
  v65 = v0;
  if (*(v0 + 112) == 1)
  {
    if (qword_27D08E308 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 16);
    v8 = sub_22372AC98();
    __swift_project_value_buffer(v8, qword_27D097278);
    v9 = *(v6 + 16);
    v9(v2, v7, v5);
    v9(v1, v7, v5);
    v9(v3, v7, v5);
    v9(v4, v7, v5);
    v10 = sub_22372AC88();
    v11 = sub_22372B268();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);
    v63 = *(v0 + 80);
    if (v12)
    {
      v57 = *(v0 + 64);
      v53 = *(v0 + 48);
      v54 = *(v0 + 88);
      log = v10;
      v16 = *(v0 + 40);
      v61 = *(v0 + 32);
      v62 = *(v0 + 56);
      v17 = *(v0 + 24);
      v56 = *(v0 + 72);
      v18 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v64 = v59;
      *v18 = 136315907;
      v58 = v11;
      sub_223727E28();
      sub_22371A46C(&qword_28132B600, 255, MEMORY[0x277CC95F0]);
      v19 = sub_22372B6B8();
      v55 = v9;
      v21 = v20;
      v22 = v14;
      v52 = *(v61 + 8);
      v52(v16, v17);
      v23 = *(v62 + 8);
      v23(v22, v53);
      v24 = sub_223623274(v19, v21, &v64);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      sub_223727E08();
      v25 = sub_22372B6B8();
      v27 = v26;
      v52(v16, v17);
      v23(v54, v53);
      v28 = sub_223623274(v25, v27, &v64);

      *(v18 + 14) = v28;
      *(v18 + 22) = 2080;
      v29 = sub_223727DF8();
      v31 = v30;
      v23(v63, v53);
      v32 = sub_223623274(v29, v31, &v64);

      *(v18 + 24) = v32;
      *(v18 + 32) = 2081;
      v55(v57, v56, v53);
      v33 = sub_22372B038();
      v35 = v34;
      v23(v56, v53);
      v36 = sub_223623274(v33, v35, &v64);

      *(v18 + 34) = v36;
      _os_log_impl(&dword_223620000, log, v58, "IFSessionServiceClient inserting an IF message into Feature Store with sessionId: %s, eventId: %s and clientRequestId: %s with message: %{private}s", v18, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v59, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);
    }

    else
    {
      v38 = *(v0 + 48);
      v37 = *(v0 + 56);

      v39 = *(v37 + 8);
      v39(v15, v38);
      v39(v63, v38);
      v39(v13, v38);
      v39(v14, v38);
    }

    v40 = *(v0 + 48);
    v41 = *(v0 + 16);
    sub_2237275D8();
    sub_223727DE8();
    v42 = MEMORY[0x277D1CEE8];
    sub_22371A46C(&qword_27D08E900, 255, MEMORY[0x277D1CEE8]);
    sub_22371A46C(&qword_28132B5E0, 255, v42);
    sub_2237275C8();
  }

  v44 = *(v0 + 88);
  v43 = *(v0 + 96);
  v46 = *(v0 + 72);
  v45 = *(v0 + 80);
  v47 = *(v0 + 64);
  v48 = *(v0 + 40);

  v49 = *(v0 + 8);
  v50 = *(v0 + 112);

  return v49(v50);
}

uint64_t sub_2237187D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB58, &qword_2237337B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v22[-v7];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
    v12 = (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v13 = *(v10 + 24);
    MEMORY[0x28223BE20](v12, v14);
    *&v22[-16] = sub_22371A520;
    *&v22[-8] = v10;
    os_unfair_lock_lock(v13 + 4);
    sub_223661538(&v23);
    os_unfair_lock_unlock(v13 + 4);
    v15 = sub_223714614(v8, a3);
    v16 = v23;
    v17 = *(v10 + 24);
    v19 = MEMORY[0x28223BE20](v15, v18);
    *&v22[-16] = v10;
    *&v22[-8] = v16;
    MEMORY[0x28223BE20](v19, v20);
    *&v22[-16] = sub_22371A538;
    *&v22[-8] = v21;
    os_unfair_lock_lock(v17 + 4);
    sub_22371A550();
    os_unfair_lock_unlock(v17 + 4);
  }

  return result;
}

void sub_2237189F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  IFSessionServiceClient.subscribe(filtering:)(a1, a2);
  if (!v4)
  {
    *a3 = v7;
  }
}

uint64_t sub_223718A24()
{
  v1 = *v0;
  result = swift_beginAccess();
  if (*(v1 + 72))
  {
    result = sub_223623934(v1 + 48, &v7);
    v3 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
LABEL_3:
      v4 = __swift_project_boxed_opaque_existential_1(&v7, v3);
      MEMORY[0x28223BE20](v4, v5);
      sub_223727408();
      sub_22372ABB8();
      return __swift_destroy_boxed_opaque_existential_1Tm(&v7);
    }
  }

  else
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 48);
    v8 = v6;
    v9 = *(v1 + 80);
    v3 = *(&v6 + 1);
    if (*(&v6 + 1))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void sub_223718B44(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_2237173E8(a1, a2, a3);
}

uint64_t sub_223718B54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22366D5E8;

  return sub_223717F3C(a1, v5);
}

uint64_t sub_223718C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_2236261A0(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v17 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22365F2C4();
    v10 = v17;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 24 * v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  sub_22365E788(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_223718D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_2236261A0(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = a3(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    a4(v15, v18);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a3(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_223718EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(unint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_2236261A0(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    sub_223641828(v22 + *(v30 + 72) * v17, a7, a4);
    a5(v17, v20);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges22IFSessionServiceClientC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_223719158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2237191A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2237191E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for IFSessionServiceClient.RelayError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IFSessionServiceClient.RelayError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_223719364(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_223719380(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_22371940C()
{
  result = qword_27D08FB78;
  if (!qword_27D08FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FB78);
  }

  return result;
}

unint64_t sub_223719464()
{
  result = qword_27D08FB80;
  if (!qword_27D08FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FB80);
  }

  return result;
}

unint64_t sub_2237194BC()
{
  result = qword_27D08FB88;
  if (!qword_27D08FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FB88);
  }

  return result;
}

unint64_t sub_223719510(uint64_t a1)
{
  result = sub_22365B914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22371953C()
{
  result = qword_27D08FB90;
  if (!qword_27D08FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FB90);
  }

  return result;
}

unint64_t sub_223719594()
{
  result = qword_27D08FB98;
  if (!qword_27D08FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FB98);
  }

  return result;
}

unint64_t sub_2237195EC()
{
  result = qword_27D08FBA0;
  if (!qword_27D08FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FBA0);
  }

  return result;
}

unint64_t sub_223719644()
{
  result = qword_27D08FBA8;
  if (!qword_27D08FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FBA8);
  }

  return result;
}

unint64_t sub_22371969C()
{
  result = qword_27D08FBB0;
  if (!qword_27D08FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FBB0);
  }

  return result;
}

unint64_t sub_2237196F4()
{
  result = qword_27D08FBB8;
  if (!qword_27D08FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FBB8);
  }

  return result;
}

unint64_t sub_22371974C()
{
  result = qword_27D08FBC0;
  if (!qword_27D08FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FBC0);
  }

  return result;
}

unint64_t sub_2237197A4()
{
  result = qword_27D08FBC8;
  if (!qword_27D08FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FBC8);
  }

  return result;
}

unint64_t sub_2237197FC()
{
  result = qword_27D08FBD0;
  if (!qword_27D08FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FBD0);
  }

  return result;
}

unint64_t sub_223719854()
{
  result = qword_27D08FBD8;
  if (!qword_27D08FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08FBD8);
  }

  return result;
}

uint64_t sub_2237198A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002237364E0 == a2;
  if (v3 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000223736500 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223738380 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002237354B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22372B6E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_223719A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v5 = sub_223727E38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22372AC98();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E308 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_27D097278);
  v18 = *(v12 + 16);
  v30 = v11;
  v18(v16, v17, v11);
  if (swift_weakLoadStrong())
  {
    v19 = *(a3 + 24);
    sub_22371A46C(&qword_27D08E900, 255, MEMORY[0x277D1CEE8]);
    sub_223727128();
    sub_2237167D8(v10);
    sub_223685980();
    v28 = sub_22372B348();
    (*(v29 + 16))(v29, v28, 0);

    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v20 = sub_22372AC88();
    v21 = sub_22372B278();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_223623274(0xD000000000000018, 0x80000002237383D0, &v31);
      _os_log_impl(&dword_223620000, v20, v21, "%s: Received SessionServerMessage while SessionServiceClient is dead", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x223DE8A80](v23, -1, -1);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }

    sub_223661014();
    v24 = swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 2;
    v26 = sub_2237272E8();
    (*(v29 + 16))(v29, 0, v26);
  }

  return (*(v12 + 8))(v16, v30);
}

uint64_t sub_223719F54(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22372AC98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E308 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27D097278);
  (*(v6 + 16))(v10, v11, v5);
  if (swift_weakLoadStrong())
  {
    v12 = sub_2237272E8();
    v13 = sub_22372B338();

    if (!v13)
    {
      v14 = a1;
      v13 = a1;
    }

    v15 = sub_223716E18(v13, a1);
    v16 = v15;
    v17 = sub_22372AC88();
    v18 = sub_22372B278();

    if (os_log_type_enabled(v17, v18))
    {
      v34 = a3;
      v35 = v5;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_223623274(0xD000000000000020, 0x80000002237383A0, &v36);
      *(v19 + 12) = 2112;
      if (v15)
      {
        v22 = v15;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        v24 = v23;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      *(v19 + 14) = v23;
      *v20 = v24;
      _os_log_impl(&dword_223620000, v17, v18, "%s: Wrapped Error %@", v19, 0x16u);
      sub_223626478(v20, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x223DE8A80](v21, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);

      a3 = v34;
      v5 = v35;
    }

    else
    {
    }

    sub_223715CAC(v15);
    sub_223685980();
    v31 = sub_22372B348();
    (*(a3 + 16))(a3, v31, 0);
  }

  else
  {
    v25 = sub_22372AC88();
    v26 = sub_22372B278();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_223623274(0xD000000000000020, 0x80000002237383A0, &v36);
      _os_log_impl(&dword_223620000, v25, v26, "%s: Received severConnection while SessionServiceClient is dead", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x223DE8A80](v28, -1, -1);
      MEMORY[0x223DE8A80](v27, -1, -1);
    }

    sub_223661014();
    v15 = swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 2;
    v30 = sub_2237272E8();
    (*(a3 + 16))(a3, 0, v30);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_22371A3A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE0, &qword_223733FD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22371A410()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22371A46C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_22371A4C0@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_22371A5E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - v4;
  v6 = *v0;
  v7 = 0x8000000223738490;
  v8 = 0xD00000000000001DLL;
  if (*v0 == 2)
  {
    v8 = 0x69737365636F7250;
    v7 = 0xEF6574617453676ELL;
  }

  if (v6 == 1)
  {
    v9 = 0x7461745374696E69;
  }

  else
  {
    v9 = v8;
  }

  if (v6 == 1)
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v10 = v7;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_22372B458();

  v14 = 0xD000000000000011;
  v15 = 0x80000002237384B0;
  MEMORY[0x223DE7AD0](v9, v10);

  MEMORY[0x223DE7AD0](0xD000000000000012, 0x80000002237384D0);
  v11 = type metadata accessor for RequestState();
  sub_223634890(v0 + *(v11 + 20), v5, &unk_27D08E9C0, &qword_223731E30);
  v12 = sub_22372B038();
  MEMORY[0x223DE7AD0](v12);

  return v14;
}

uint64_t sub_22371A7D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a4;
  v92 = a1;
  v6 = type metadata accessor for RequestState();
  v87 = *(v6 - 1);
  v7 = v87[8];
  v9 = MEMORY[0x28223BE20](v6, v8);
  v88 = (v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v11);
  v85 = v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC08, &unk_223734108);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v75 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v83 = v75 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = v75 - v29;
  if (qword_281328E58 != -1)
  {
LABEL_30:
    swift_once();
  }

  v31 = sub_22372AC98();
  __swift_project_value_buffer(v31, qword_28132B680);

  v32 = sub_22372AC88();
  v33 = sub_22372B268();

  v34 = os_log_type_enabled(v32, v33);
  v90 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v89 = a3;
    v36 = v35;
    v37 = swift_slowAlloc();
    v91[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_223623274(0xD000000000000024, 0x80000002237384F0, v91);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_223623274(v92, a2, v91);
    _os_log_impl(&dword_223620000, v32, v33, "%s for requestId: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v37, -1, -1);
    v38 = v36;
    a3 = v89;
    MEMORY[0x223DE8A80](v38, -1, -1);
  }

  v39 = v87[7];
  v80 = v6;
  v81 = v30;
  v78 = v39;
  v79 = v87 + 7;
  v39(v30, 1, 1, v6);
  v40 = sub_22372A098();
  v41 = *(v40 - 8);
  v76 = *(v41 + 56);
  v77 = v40;
  v75[1] = v41 + 56;
  v76(v83, 1, 1);
  swift_beginAccess();
  v42 = a3[2];
  v45 = *(v42 + 64);
  v44 = v42 + 64;
  v43 = v45;
  v46 = 1 << *(a3[2] + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v30 = v47 & v43;
  v48 = (v46 + 63) >> 6;
  v86 = a3[2];

  a3 = 0;
  v6 = &qword_27D08FC10;
  v89 = a2;
  v84 = v18;
  while (1)
  {
    if (!v30)
    {
      if (v48 <= a3 + 1)
      {
        v50 = a3 + 1;
      }

      else
      {
        v50 = v48;
      }

      v51 = v50 - 1;
      while (1)
      {
        v49 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v49 >= v48)
        {
          v21 = qword_223734118;
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC10, qword_223734118);
          (*(*(v70 - 8) + 56))(v18, 1, 1, v70);
          v30 = 0;
          a3 = v51;
          goto LABEL_20;
        }

        v30 = *(v44 + 8 * v49);
        a3 = (a3 + 1);
        if (v30)
        {
          a3 = v49;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v49 = a3;
LABEL_19:
    v52 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v53 = v52 | (v49 << 6);
    v54 = v85;
    v55 = (*(v86 + 48) + 16 * v53);
    v57 = *v55;
    v56 = v55[1];
    sub_22371C754(*(v86 + 56) + v87[9] * v53, v85);
    v21 = qword_223734118;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC10, qword_223734118);
    v59 = *(v58 + 48);
    v60 = v84;
    *v84 = v57;
    *(v60 + 1) = v56;
    v61 = v54;
    v18 = v60;
    sub_2237126F8(v61, &v60[v59]);
    (*(*(v58 - 8) + 56))(v18, 0, 1, v58);

LABEL_20:
    v62 = v90;
    sub_22371C7B8(v18, v90, &qword_27D08FC08, &unk_223734108);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC10, qword_223734118);
    if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
    {
      break;
    }

    v64 = v62;
    v65 = *v62;
    v66 = v64[1];
    v67 = v64 + *(v63 + 48);
    a2 = v88;
    sub_2237126F8(v67, v88);
    if (v65 == v92 && v66 == v89)
    {
    }

    else
    {
      v68 = sub_22372B6E8();

      if ((v68 & 1) == 0)
      {
        v69 = *a2;
        if (*a2 != 1)
        {

          v72 = v83;
          sub_223626478(v83, &unk_27D08E9C0, &qword_223731E30);
          v73 = v80;
          sub_22371C7B8(a2 + *(v80 + 5), v72, &unk_27D08E9C0, &qword_223731E30);
          v74 = v81;
          sub_223626478(v81, &qword_27D08F930, &qword_223733380);
          (v76)(v74 + *(v73 + 5), 1, 1, v77);
          *v74 = v69;
          v78(v74, 0, 1, v73);
          sub_223630DB8(v72, v74 + *(v73 + 5));
          goto LABEL_28;
        }
      }
    }

    sub_22371275C(a2);
    v6 = &qword_27D08FC10;
  }

  sub_223626478(v83, &unk_27D08E9C0, &qword_223731E30);

  v74 = v81;
LABEL_28:
  sub_223634890(v74, v82, &qword_27D08F930, &qword_223733380);
  return sub_223626478(v74, &qword_27D08F930, &qword_223733380);
}

void sub_22371AF60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v107 = a4;
  v104 = a3;
  v101 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v99 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v97 = v91 - v11;
  v12 = type metadata accessor for RequestState();
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = *(v102 + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v98 = v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v92 = v91 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v95 = v91 - v21;
  v22 = sub_22372A098();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v28 = sub_22372AC98();
  v29 = __swift_project_value_buffer(v28, qword_28132B680);
  v30 = *(v23 + 16);
  v96 = a1;
  v91[1] = v23 + 16;
  v91[0] = v30;
  v30(v27, a1, v22);

  v31 = sub_22372AC88();
  v32 = sub_22372B268();

  v33 = os_log_type_enabled(v31, v32);
  v100 = v29;
  v94 = v22;
  v93 = v23;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v106[0] = v35;
    *v34 = 136315650;
    *(v34 + 4) = sub_223623274(0xD00000000000002CLL, 0x8000000223738520, v106);
    *(v34 + 12) = 2080;
    sub_22371C820();
    v36 = sub_22372AF88();
    v38 = v37;
    (*(v23 + 8))(v27, v22);
    v39 = sub_223623274(v36, v38, v106);

    *(v34 + 14) = v39;
    *(v34 + 22) = 2080;
    *(v34 + 24) = sub_223623274(v101, v104, v106);
    _os_log_impl(&dword_223620000, v31, v32, "%s executionSource: %s for requestId: %s ", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v35, -1, -1);
    MEMORY[0x223DE8A80](v34, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v27, v22);
  }

  v40 = sub_22372AC88();
  v41 = sub_22372B268();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v106[0] = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_223623274(0xD00000000000002CLL, 0x8000000223738520, v106);
    *(v42 + 12) = 2080;
    v44 = v107;
    swift_beginAccess();
    v45 = *(v44 + 16);

    v46 = sub_22372AF68();
    v48 = v47;

    v49 = sub_223623274(v46, v48, v106);

    *(v42 + 14) = v49;
    _os_log_impl(&dword_223620000, v40, v41, "%s Pre ExecutionSourceUpdate processing: %s ", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v43, -1, -1);
    MEMORY[0x223DE8A80](v42, -1, -1);
  }

  v50 = v101;
  v51 = v99;
  v52 = v107;
  swift_beginAccess();
  v53 = *(v52 + 16);
  if (*(v53 + 16))
  {
    v54 = *(v52 + 16);

    v55 = sub_2236261A0(v50, v104);
    if (v56)
    {
      v57 = v102;
      v58 = v92;
      sub_22371C754(*(v53 + 56) + *(v102 + 72) * v55, v92);

      v59 = v95;
      sub_2237126F8(v58, v95);
      v60 = v103;
      v61 = *(v103 + 20);
      sub_223626478(v59 + v61, &unk_27D08E9C0, &qword_223731E30);
      v62 = v94;
      (v91[0])(v59 + v61, v96, v94);
      (*(v93 + 56))(v59 + v61, 0, 1, v62);
      v63 = v97;
      sub_22371C754(v59, v97);
      (*(v57 + 56))(v63, 0, 1, v60);
      swift_beginAccess();
      v64 = v104;

      sub_2236415AC(v63, v50, v64);
      swift_endAccess();
      sub_22371275C(v59);
    }

    else
    {
    }
  }

  v65 = *(v107 + 16);
  if (*(v65 + 16))
  {
    v66 = *(v107 + 16);

    v67 = sub_2236261A0(v50, v104);
    if (v68)
    {
      sub_22371C754(*(v65 + 56) + *(v102 + 72) * v67, v51);
      v69 = 0;
    }

    else
    {
      v69 = 1;
    }
  }

  else
  {
    v69 = 1;
  }

  v70 = v102;
  v71 = v69;
  v72 = v103;
  (*(v102 + 56))(v51, v71, 1, v103);
  if ((*(v70 + 48))(v51, 1, v72))
  {
    sub_223626478(v51, &qword_27D08F930, &qword_223733380);
    v73 = 0xE300000000000000;
    v74 = 7104878;
  }

  else
  {
    v75 = v98;
    sub_22371C754(v51, v98);
    sub_223626478(v51, &qword_27D08F930, &qword_223733380);
    v74 = sub_22371A5E0();
    v73 = v76;
    sub_22371275C(v75);
  }

  v77 = sub_22372AC88();
  v78 = sub_22372B268();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v105[0] = v80;
    *v79 = 136315650;
    *(v79 + 4) = sub_223623274(0xD00000000000002CLL, 0x8000000223738520, v105);
    *(v79 + 12) = 2080;
    *(v79 + 14) = sub_223623274(v50, v104, v105);
    *(v79 + 22) = 2080;
    v81 = sub_223623274(v74, v73, v105);

    *(v79 + 24) = v81;
    _os_log_impl(&dword_223620000, v77, v78, "%s requestId:%s Processed ExecutionSource: %s ", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v80, -1, -1);
    MEMORY[0x223DE8A80](v79, -1, -1);
  }

  else
  {
  }

  v82 = sub_22372AC88();
  v83 = sub_22372B268();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v105[0] = v85;
    *v84 = 136315394;
    *(v84 + 4) = sub_223623274(0xD00000000000002CLL, 0x8000000223738520, v105);
    *(v84 + 12) = 2080;
    v86 = *(v107 + 16);

    v87 = sub_22372AF68();
    v89 = v88;

    v90 = sub_223623274(v87, v89, v105);

    *(v84 + 14) = v90;
    _os_log_impl(&dword_223620000, v82, v83, "%s Post ExecutionSourceUpdate processing: %s ", v84, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v85, -1, -1);
    MEMORY[0x223DE8A80](v84, -1, -1);
  }
}

void (*sub_22371BA00(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_22371C03C(v6, a2, a3);
  return sub_22371BA88;
}

void sub_22371BA88(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_22371BAD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v31 - v10;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v12 = sub_22372AC98();
  v13 = __swift_project_value_buffer(v12, qword_28132B680);

  v34[4] = v13;
  v14 = sub_22372AC88();
  v15 = sub_22372B268();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = a3;
    v19 = a1;
    v20 = v18;
    v34[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_223623274(0xD000000000000011, 0x8000000223738590, v34);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_223623274(v19, a2, v34);
    _os_log_impl(&dword_223620000, v14, v15, "%s removeRequest for requestId: %s", v17, 0x16u);
    swift_arrayDestroy();
    v21 = v20;
    a1 = v19;
    a3 = v32;
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  swift_beginAccess();
  sub_223718E98(a1, a2, v11);
  sub_223626478(v11, &qword_27D08F930, &qword_223733380);
  swift_endAccess();

  v22 = sub_22372AC88();
  v23 = sub_22372B268();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_223623274(0xD000000000000011, 0x8000000223738590, v34);
    *(v24 + 12) = 2080;
    v26 = *(a3 + 16);
    type metadata accessor for RequestState();

    v27 = sub_22372AF68();
    v29 = v28;

    v30 = sub_223623274(v27, v29, v34);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_223620000, v22, v23, "%s Post removeRequest processing: %s ", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v25, -1, -1);
    MEMORY[0x223DE8A80](v24, -1, -1);
  }
}

void sub_22371BE7C()
{
  sub_22371BEF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22371BEF8()
{
  if (!qword_28132B518)
  {
    sub_22372A098();
    v0 = sub_22372B3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_28132B518);
    }
  }
}

uint64_t sub_22371BF50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22371BFB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_22371C008(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void (*sub_22371C03C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_22371C618(v8);
  v8[9] = sub_22371C148(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_22371C0E8;
}

void sub_22371C0E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22371C148(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for RequestState();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_2236261A0(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_2237126F8(*(*v5 + 56) + *(v14 + 72) * v22, v19);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_22371C410;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_2236601E8();
      goto LABEL_16;
    }

    sub_22368D704(v25, a4 & 1);
    v29 = *v5;
    v30 = sub_2236261A0(a2, a3);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      v11[11] = v30;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_22372B708();
  __break(1u);
  return result;
}

void sub_22371C410(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_223634890(v5, v6, &qword_27D08F930, &qword_223733380);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_2237126F8(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_2237126F8(v13, v14);
        sub_22368EAEC(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_223634890(v5, v17, &qword_27D08F930, &qword_223733380);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_2237126F8(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_2237126F8(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_223626478(v9, &qword_27D08F930, &qword_223733380);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_22371C878(*(v20 + 48) + 16 * v19);
    sub_223637910(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_223626478(v23, &qword_27D08F930, &qword_223733380);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_22371C618(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22371C640;
}

uint64_t sub_22371C64C(void *a1, char *a2)
{
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      return 1;
    }
  }

  else if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if ((a2 - 1) >= 2)
  {
    if (a1)
    {
      if (a2)
      {
        sub_22371C708();
        sub_2236377FC(a2);
        sub_2236377FC(a1);
        v5 = sub_22372B368();
        sub_223637810(a1);
        sub_223637810(a2);
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_22371C708()
{
  result = qword_281328D88;
  if (!qword_281328D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281328D88);
  }

  return result;
}

uint64_t sub_22371C754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22371C7B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_22371C820()
{
  result = qword_28132B528;
  if (!qword_28132B528)
  {
    sub_22372A098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B528);
  }

  return result;
}

uint64_t sub_22371C8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[30] = v5;
  v6[31] = a5;
  v6[28] = a1;
  v6[29] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC38, &qword_223734258) - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v8 = sub_223727558();
  v6[33] = v8;
  v9 = *(v8 - 8);
  v6[34] = v9;
  v10 = *(v9 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC40, &unk_223734260);
  v6[37] = v11;
  v12 = *(v11 - 8);
  v6[38] = v12;
  v13 = *(v12 + 64) + 15;
  v6[39] = swift_task_alloc();
  v14 = sub_223727448();
  v6[40] = v14;
  v15 = *(v14 - 8);
  v6[41] = v15;
  v16 = *(v15 + 64) + 15;
  v6[42] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE40, &qword_22372EB28) - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE50, &qword_22372EB60) - 8) + 64) + 15;
  v6[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22371CB1C, v5, 0);
}

uint64_t sub_22371CB1C()
{
  v58 = v0;
  v1 = *(v0 + 344);
  sub_223720D18(*(v0 + 232), v1);
  v2 = sub_223727DD8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 344);
    v5 = &qword_27D08EE40;
    v6 = &qword_22372EB28;
LABEL_5:
    sub_223626478(v4, v5, v6);
    v13 = *(v0 + 248);
    *v13 = 0xD00000000000001ALL;
    *(v13 + 8) = 0x8000000223738720;
    *(v13 + 16) = 4;
    *(v0 + 16) = 0xD00000000000001ALL;
    *(v0 + 24) = 0x8000000223738720;
    *(v0 + 32) = 4;
    sub_22366FD7C();
    swift_willThrowTypedImpl();
LABEL_6:
    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    v16 = *(v0 + 336);
    v17 = *(v0 + 312);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    v20 = *(v0 + 256);

    v21 = *(v0 + 8);

    return v21();
  }

  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  sub_223727D98();
  (*(v3 + 8))(v7, v2);
  v9 = sub_223727B98();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = *(v0 + 352);
  if (v11 == 1)
  {
    v5 = &qword_27D08EE50;
    v6 = &qword_22372EB60;
    v4 = *(v0 + 352);
    goto LABEL_5;
  }

  v24 = *(v0 + 328);
  v23 = *(v0 + 336);
  v25 = *(v0 + 320);
  v26 = *(v0 + 240);
  sub_223727B88();
  (*(v10 + 8))(v12, v9);
  v27 = sub_223727428();
  v29 = v28;
  (*(v24 + 8))(v23, v25);
  if (*(v26 + 112))
  {
    v30 = *(v26 + 112);
  }

  else
  {
    v31 = [objc_allocWithZone(sub_2237275D8()) init];
    v32 = type metadata accessor for RemoteIFSession(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    v35 = swift_allocObject();
    v30 = sub_223720D88(v31, v35);
  }

  *(v0 + 360) = v30;
  v36 = swift_task_alloc();
  v36[2] = v30;
  v36[3] = v27;
  v36[4] = v29;
  started = type metadata accessor for StartRemoteIntelligenceSessionMessage(0);
  v38 = *(started + 48);
  v39 = *(started + 52);
  swift_allocObject();

  v40 = StartRemoteIntelligenceSessionMessage.init(build:)(sub_2237211AC);
  *(v0 + 368) = v40;

  if (!v40)
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v52 = sub_22372AC98();
    __swift_project_value_buffer(v52, qword_28132B668);
    v53 = sub_22372AC88();
    v54 = sub_22372B278();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_223620000, v53, v54, "Failed to create StartRemoteIntelligenceSessionMessage", v55, 2u);
      MEMORY[0x223DE8A80](v55, -1, -1);
    }

    v56 = *(v0 + 248);

    *v56 = 0xD000000000000036;
    *(v56 + 8) = 0x8000000223738740;
    *(v56 + 16) = 4;
    *(v0 + 40) = 0xD000000000000036;
    *(v0 + 48) = 0x8000000223738740;
    *(v0 + 56) = 4;
    sub_22366FD7C();
    swift_willThrowTypedImpl();

    goto LABEL_6;
  }

  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v41 = sub_22372AC98();
  *(v0 + 376) = __swift_project_value_buffer(v41, qword_28132B668);

  v42 = sub_22372AC88();
  v43 = sub_22372B268();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v57 = v45;
    *v44 = 136315138;
    *(v0 + 216) = v40;

    v46 = sub_22372B038();
    v48 = sub_223623274(v46, v47, &v57);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_223620000, v42, v43, "Sending %s message", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x223DE8A80](v45, -1, -1);
    MEMORY[0x223DE8A80](v44, -1, -1);
  }

  v49 = *(v0 + 240);
  v50 = *(v26 + 112);
  *(v26 + 112) = v30;

  *(v0 + 384) = *(v49 + 176);
  *(v0 + 392) = sub_2237211B8(&qword_27D08FC48, 255, type metadata accessor for RemoteIFSession);

  swift_unknownObjectRetain();
  v51 = swift_task_alloc();
  *(v0 + 400) = v51;
  *v51 = v0;
  v51[1] = sub_22371D180;

  return sub_223661A28();
}

uint64_t sub_22371D180()
{
  v3 = *v1;
  v2 = v3;
  v4 = *(*v1 + 400);
  v5 = *v1;
  v3[51] = v0;

  v6 = v3[48];
  if (v0)
  {
    v7 = v3[45];
    v8 = v3[30];
    v9 = v2[48];
    swift_unknownObjectRelease();

    v10 = sub_22371D72C;
    v6 = v8;
  }

  else
  {
    v10 = sub_22371D2D0;
  }

  return MEMORY[0x2822009F8](v10, v6, 0);
}

uint64_t sub_22371D2D0()
{
  v1 = v0[48];
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  ObjectType = swift_getObjectType();
  v5 = *(MEMORY[0x277D5DF60] + 4);
  v6 = swift_task_alloc();
  v0[52] = v6;
  *v6 = v0;
  v6[1] = sub_22371D390;
  v7 = v0[49];
  v8 = v0[45];

  return MEMORY[0x2821C02F0](v8, v7, ObjectType, v2);
}

uint64_t sub_22371D390()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22371D4A0, v2, 0);
}

uint64_t sub_22371D4A0()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[30];
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22371D518, v3, 0);
}

uint64_t sub_22371D518()
{
  v1 = v0[46];
  v2 = v0[30];
  v0[53] = v2[22];
  v3 = v2[15];
  v4 = v2[16];
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_22371D5E4;

  return sub_223662668(v1, v3, v4);
}

uint64_t sub_22371D5E4()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 440) = v0;

  swift_unknownObjectRelease();
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_22371DAB4;
  }

  else
  {
    v7 = sub_22371D8C0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22371D72C()
{
  v1 = *(v0 + 376);
  v2 = sub_22372AC88();
  v3 = sub_22372B278();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_223620000, v2, v3, "Failed to set a delegate on RemoteIFClientTransport. We will not be able to receive messages", v4, 2u);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v5 = *(v0 + 408);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 248);

  *v8 = 0xD000000000000055;
  *(v8 + 8) = 0x8000000223738780;
  *(v8 + 16) = 4;
  *(v0 + 64) = 0xD000000000000055;
  *(v0 + 72) = 0x8000000223738780;
  *(v0 + 80) = 4;
  sub_22366FD7C();
  swift_willThrowTypedImpl();

  v10 = *(v0 + 344);
  v9 = *(v0 + 352);
  v11 = *(v0 + 336);
  v12 = *(v0 + 312);
  v14 = *(v0 + 280);
  v13 = *(v0 + 288);
  v15 = *(v0 + 256);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22371D8C0()
{
  if (*(v0[30] + 200) == 1)
  {
    v1 = v0[45];
    v2 = v0[39];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8D8, &qword_22372CB30);
    sub_22372B238();
    v3 = *(MEMORY[0x277D858C0] + 4);
    v4 = swift_task_alloc();
    v0[56] = v4;
    *v4 = v0;
    v4[1] = sub_22371DF34;
    v5 = v0[39];
    v6 = v0[37];

    return MEMORY[0x2822005B0](v0 + 33, v6);
  }

  else
  {
    v7 = v0[46];

    v8 = v0[44];
    v9 = v0[45];
    v11 = v0[42];
    v10 = v0[43];
    v12 = v0[39];
    v14 = v0[35];
    v13 = v0[36];
    v20 = v0[32];
    v15 = v0[28];
    v16 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
    v17 = sub_223727408();
    (*(*(v17 - 8) + 16))(v15, v9 + v16, v17);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_22371DAB4()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 376);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 440);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_223620000, v4, v5, "Failed to send StartRemoteIntelligenceSessionMessage with error %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v11 = *(v0 + 440);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  v14 = *(v0 + 256);

  *(v0 + 200) = v11;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if ((v16 & 1) == 0)
  {
    v31 = *(v0 + 256);
    v17(v31, 1, 1, *(v0 + 264));
    sub_223626478(v31, &qword_27D08FC38, &qword_223734258);
LABEL_7:
    v32 = *(v0 + 440);
    v34 = *(v0 + 360);
    v33 = *(v0 + 368);
    v35 = *(v0 + 248);
    *v35 = 0xD000000000000021;
    *(v35 + 8) = 0x80000002237387E0;
    *(v35 + 16) = 3;
    *(v0 + 88) = 0xD000000000000021;
    *(v0 + 96) = 0x80000002237387E0;
    *(v0 + 104) = 3;
    sub_22366FD7C();
    swift_willThrowTypedImpl();

    goto LABEL_8;
  }

  v18 = *(v0 + 280);
  v19 = *(v0 + 288);
  v20 = *(v0 + 264);
  v21 = *(v0 + 272);
  v22 = *(v0 + 256);
  v17(v22, 0, 1, v20);
  (*(v21 + 32))(v19, v22, v20);
  (*(v21 + 16))(v18, v19, v20);
  v23 = (*(v21 + 88))(v18, v20);
  if (v23 == *MEMORY[0x277D5DF58])
  {
    v24 = *(v0 + 440);
    v26 = *(v0 + 360);
    v25 = *(v0 + 368);
    v27 = *(v0 + 288);
    v28 = *(v0 + 264);
    v29 = *(v0 + 248);
    v30 = *(*(v0 + 272) + 8);
    v30(*(v0 + 280), v28);
    *v29 = 0xD000000000000021;
    *(v29 + 8) = 0x8000000223738850;
    *(v29 + 16) = 0;
    *(v0 + 136) = 0xD000000000000021;
    *(v0 + 144) = 0x8000000223738850;
    *(v0 + 152) = 0;
    sub_22366FD7C();
    swift_willThrowTypedImpl();

    v30(v27, v28);
    goto LABEL_8;
  }

  if (v23 != *MEMORY[0x277D5DF50])
  {
    v52 = *(v0 + 280);
    v53 = *(v0 + 264);
    v54 = *(*(v0 + 272) + 8);
    v54(*(v0 + 288), v53);
    v54(v52, v53);
    goto LABEL_7;
  }

  v45 = *(v0 + 440);
  v47 = *(v0 + 360);
  v46 = *(v0 + 368);
  v48 = *(v0 + 288);
  v49 = *(v0 + 264);
  v50 = *(v0 + 272);
  v51 = *(v0 + 248);
  *v51 = 0xD000000000000034;
  *(v51 + 8) = 0x8000000223738810;
  *(v51 + 16) = 1;
  *(v0 + 112) = 0xD000000000000034;
  *(v0 + 120) = 0x8000000223738810;
  *(v0 + 128) = 1;
  sub_22366FD7C();
  swift_willThrowTypedImpl();

  (*(v50 + 8))(v48, v49);
LABEL_8:
  v37 = *(v0 + 344);
  v36 = *(v0 + 352);
  v38 = *(v0 + 336);
  v39 = *(v0 + 312);
  v41 = *(v0 + 280);
  v40 = *(v0 + 288);
  v42 = *(v0 + 256);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_22371DF34()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_22371E1A8;
  }

  else
  {
    v6 = sub_22371E060;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22371E060()
{
  v1 = v0[46];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];

  (*(v3 + 8))(v2, v4);
  v5 = v0[44];
  v6 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[39];
  v11 = v0[35];
  v10 = v0[36];
  v17 = v0[32];
  v12 = v0[28];
  v13 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
  v14 = sub_223727408();
  (*(*(v14 - 8) + 16))(v12, v6 + v13, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_22371E1A8()
{
  v1 = *(v0 + 456);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 248);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  sub_22372B458();
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  MEMORY[0x223DE7AD0](0xD00000000000002ALL, 0x8000000223738880);
  *(v0 + 208) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  sub_22372B528();
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = 3;
  *(v0 + 160) = v5;
  *(v0 + 168) = v6;
  *(v0 + 176) = 3;
  sub_22366FD7C();
  swift_willThrowTypedImpl();

  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  v9 = *(v0 + 336);
  v10 = *(v0 + 312);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v13 = *(v0 + 256);

  v14 = *(v0 + 8);

  return v14();
}

double sub_22371E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_223626478(a1, &unk_27D08E530, &unk_22372CB10);
  v8 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
  v9 = sub_223727408();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a1, a2 + v8, v9);
  (*(v10 + 56))(a1, 0, 1, v9);
  started = type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0);
  v12 = (a1 + *(started + 24));
  v13 = v12[1];

  *v12 = a3;
  v12[1] = a4;
  v14 = a1 + *(started + 28);
  v15 = *(v14 + 8);

  *&result = 0x302E302E31;
  *v14 = xmmword_223730530;
  return result;
}

uint64_t sub_22371E478(uint64_t a1, uint64_t a2)
{
  v3[14] = v2;
  v3[15] = a2;
  v3[13] = a1;
  v4 = *(*(type metadata accessor for RemoteIFSession.State(0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22371E50C, v2, 0);
}

uint64_t sub_22371E50C()
{
  v38 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + 112);
  *(v0 + 136) = v2;
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *(v0 + 104);

  if ((sub_2237273D8() & 1) == 0)
  {

LABEL_14:
    v26 = *(v0 + 120);
    v27 = *(v0 + 104);
    sub_22372B458();

    v37[0] = 0xD00000000000001CLL;
    v37[1] = 0x80000002237386C0;
    sub_223727408();
    sub_2237211B8(&qword_28132B600, 255, MEMORY[0x277CC95F0]);
    v28 = sub_22372B6B8();
    MEMORY[0x223DE7AD0](v28);

    *v26 = 0xD00000000000001CLL;
    *(v26 + 8) = 0x80000002237386C0;
    *(v26 + 16) = 6;
    *(v0 + 40) = 0xD00000000000001CLL;
    *(v0 + 48) = 0x80000002237386C0;
    *(v0 + 56) = 6;
    sub_22366FD7C();
    swift_willThrowTypedImpl();
    goto LABEL_15;
  }

  v4 = type metadata accessor for EndRemoteIntelligenceSessionMessage();
  *(v0 + 144) = v4;
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = RemoteIntelligenceSessionMessage.init(build:)(sub_223720D10);
  *(v0 + 152) = v7;
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + 112);
    if (v9)
    {
      v10 = *(v0 + 128);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E860, &qword_22372CAA0);
      (*(*(v11 - 8) + 56))(v10, 3, 3, v11);
      v12 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_state;
      swift_beginAccess();

      sub_22364FD20(v10, v9 + v12);
      swift_endAccess();
    }

    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v13 = sub_22372AC98();
    *(v0 + 160) = __swift_project_value_buffer(v13, qword_28132B668);

    v14 = sub_22372AC88();
    v15 = sub_22372B268();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37[0] = v17;
      *v16 = 136315138;
      *(v0 + 96) = v8;

      v18 = sub_22372B038();
      v20 = sub_223623274(v18, v19, v37);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_223620000, v14, v15, "Sending %s message", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x223DE8A80](v17, -1, -1);
      MEMORY[0x223DE8A80](v16, -1, -1);
    }

    v21 = *(v0 + 112);
    *(v0 + 168) = v21[22];
    v22 = v21[15];
    v23 = v21[16];
    swift_unknownObjectRetain();
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v24[1] = sub_22371EA68;

    return sub_223662668(v8, v22, v23);
  }

  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v32 = sub_22372AC98();
  __swift_project_value_buffer(v32, qword_28132B668);
  v33 = sub_22372AC88();
  v34 = sub_22372B278();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_223620000, v33, v34, "Failed to create EndRemoteIntelligenceSessionMessage", v35, 2u);
    MEMORY[0x223DE8A80](v35, -1, -1);
  }

  v36 = *(v0 + 120);

  *v36 = 0xD000000000000034;
  *(v36 + 8) = 0x80000002237386E0;
  *(v36 + 16) = 6;
  *(v0 + 64) = 0xD000000000000034;
  *(v0 + 72) = 0x80000002237386E0;
  *(v0 + 80) = 6;
  sub_22366FD7C();
  swift_willThrowTypedImpl();

LABEL_15:
  v29 = *(v0 + 128);
  v30 = *(v1 + 112);
  *(v1 + 112) = 0;

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_22371EA68()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 184) = v0;

  swift_unknownObjectRelease();
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_22371ED20;
  }

  else
  {
    v7 = sub_22371EBB0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22371EBB0()
{
  v10 = v0;
  v1 = v0[20];
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0x6973736553646E65, 0xEF293A6469286E6FLL, &v9);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClient Cleanup session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_22371EFA0;
  v7 = v0[14];

  return sub_223720064();
}

uint64_t sub_22371ED20()
{
  v23 = v0;
  v1 = v0[19];
  v2 = v0[20];

  v3 = sub_22372AC88();
  v4 = sub_22372B268();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v7 = v0[18];
    v6 = v0[19];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v0[11] = v6;

    v10 = sub_22372B038();
    v12 = sub_223623274(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_223620000, v3, v4, "Failed to send %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
    v13 = v5;
  }

  else
  {
    v13 = v0[23];
  }

  v14 = v0[20];
  v15 = sub_22372AC88();
  v16 = sub_22372B268();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_223623274(0x6973736553646E65, 0xEF293A6469286E6FLL, &v22);
    _os_log_impl(&dword_223620000, v15, v16, "%s: RemoteIFClient Cleanup session", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x223DE8A80](v18, -1, -1);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_22371EFA0;
  v20 = v0[14];

  return sub_223720064();
}

uint64_t sub_22371EFA0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_22371F158;
  }

  else
  {
    v6 = sub_22371F0CC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22371F0CC()
{
  v1 = v0[19];
  v2 = v0[17];

  v3 = v0[16];
  v4 = v0[14];
  v5 = *(v4 + 112);
  *(v4 + 112) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_22371F158()
{
  v16 = v0;
  v1 = v0[20];
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[25];
  v6 = v0[19];
  v7 = v0[17];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_223623274(0x6973736553646E65, 0xEF293A6469286E6FLL, &v15);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClient Cleanup session failed", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v10 = v0[16];
  v11 = v0[14];
  v12 = *(v11 + 112);
  *(v11 + 112) = 0;

  v13 = v0[1];

  return v13();
}

uint64_t sub_22371F2DC(uint64_t a1, uint64_t a2)
{
  sub_223626478(a1, &unk_27D08E530, &unk_22372CB10);
  v4 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
  v5 = sub_223727408();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a1, a2 + v4, v5);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_22371F3B4(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v4 = sub_223727408();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = sub_223727D38();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22371F4D4, v2, 0);
}

uint64_t sub_22371F4D4()
{
  v50 = v0;
  v1 = *(*(v0 + 128) + 112);
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = qword_281328E50;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 168);
    v6 = *(v0 + 120);
    v7 = sub_22372AC98();
    *(v0 + 200) = __swift_project_value_buffer(v7, qword_28132B668);
    (*(v3 + 16))(v4, v6, v5);
    v8 = sub_22372AC88();
    v9 = sub_22372B268();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(v0 + 168);
    if (v10)
    {
      v48 = v1;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v49 = v15;
      *v14 = 136315138;
      v16 = sub_2236BC91C();
      v18 = v17;
      (*(v11 + 8))(v12, v13);
      v19 = sub_223623274(v16, v18, &v49);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_223620000, v8, v9, "Utterance: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223DE8A80](v15, -1, -1);
      v20 = v14;
      v1 = v48;
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
    }

    v25 = *(v0 + 120);
    v26 = swift_task_alloc();
    *(v26 + 16) = v1;
    *(v26 + 24) = v25;
    v27 = type metadata accessor for RemoteIntelligenceSessionClientMessage(0);
    *(v0 + 208) = v27;
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = RemoteIntelligenceSessionClientMessage.init(build:)(sub_223720D08, v26);
    *(v0 + 216) = v30;

    if (v30)
    {

      v31 = sub_22372AC88();
      v32 = sub_22372B268();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v49 = v34;
        *v33 = 136315138;
        *(v0 + 112) = v30;

        v35 = sub_22372B038();
        v37 = sub_223623274(v35, v36, &v49);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_223620000, v31, v32, "Sending %s message", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x223DE8A80](v34, -1, -1);
        MEMORY[0x223DE8A80](v33, -1, -1);
      }

      v38 = *(v0 + 128);
      *(v0 + 224) = v38[22];
      v39 = v38[15];
      v40 = v38[16];
      swift_unknownObjectRetain();
      v41 = swift_task_alloc();
      *(v0 + 232) = v41;
      *v41 = v0;
      v41[1] = sub_22371F9E4;

      return sub_223662668(v30, v39, v40);
    }

    v43 = sub_22372AC88();
    v44 = sub_22372B278();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_223620000, v43, v44, "Failed to create RemoteIntelligenceSessionClientMessage", v45, 2u);
      MEMORY[0x223DE8A80](v45, -1, -1);
    }

    v46 = *(v0 + 184);
    v47 = *(v0 + 160);

    v24 = *(v0 + 8);
  }

  else
  {
    v21 = *(v0 + 136);
    *v21 = 0xD00000000000002ELL;
    *(v21 + 8) = 0x8000000223738690;
    *(v21 + 16) = 7;
    *(v0 + 40) = 0xD00000000000002ELL;
    *(v0 + 48) = 0x8000000223738690;
    *(v0 + 56) = 7;
    sub_22366FD7C();
    swift_willThrowTypedImpl();
    v22 = *(v0 + 184);
    v23 = *(v0 + 160);

    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t sub_22371F9E4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 240) = v0;

  swift_unknownObjectRelease();
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_22371FCF4;
  }

  else
  {
    v7 = sub_22371FB2C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22371FB2C()
{
  v1 = v0[27];
  v18 = v0[26];
  v19 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v5[20];
  v7 = v5[21];
  __swift_project_boxed_opaque_existential_1(v5 + 17, v6);
  (*(v3 + 16))(v2, v1 + qword_28132B758, v4);
  v17 = sub_2237273B8();
  v9 = v8;
  (*(v3 + 8))(v2, v4);
  v0[13] = v1;
  v10 = *(v7 + 8);
  v11 = sub_2237211B8(&qword_27D08FC28, 255, type metadata accessor for RemoteIntelligenceSessionClientMessage);
  v12 = sub_2237211B8(&qword_27D08FC30, 255, type metadata accessor for RemoteIntelligenceSessionClientMessage);
  v10(v17, v9, v0 + 13, v18, v11, v12, v6, v7);

  v13 = v0[23];
  v14 = v0[20];

  v15 = v0[1];

  return v15();
}

uint64_t sub_22371FCF4()
{
  v26 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);

  v3 = sub_22372AC88();
  v4 = sub_22372B268();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v0 + 96) = v5;

    v9 = sub_22372B038();
    v11 = sub_223623274(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_223620000, v3, v4, "Failed to send %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v12 = *(v0 + 240);
  v13 = *(v0 + 216);
  v14 = *(v0 + 192);
  v15 = *(v0 + 136);
  swift_getErrorValue();
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  v18 = *(v0 + 32);
  v19 = sub_22372B738();
  *v15 = v19;
  *(v15 + 8) = v20;
  *(v15 + 16) = 4;
  *(v0 + 64) = v19;
  *(v0 + 72) = v20;
  *(v0 + 80) = 4;
  sub_22366FD7C();
  swift_willThrowTypedImpl();

  v21 = *(v0 + 184);
  v22 = *(v0 + 160);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22371FEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_223626478(a1, &unk_27D08E530, &unk_22372CB10);
  v6 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
  v7 = sub_223727408();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a1, a2 + v6, v7);
  (*(v8 + 56))(a1, 0, 1, v7);
  v9 = *(type metadata accessor for RemoteIntelligenceSessionClientMessage.Builder(0) + 24);
  sub_223626478(a1 + v9, &qword_27D08ED38, &qword_22372E568);
  v10 = sub_223727D38();
  v13 = *(v10 - 8);
  (*(v13 + 16))(a1 + v9, a3, v10);
  v11 = *(v13 + 56);

  return v11(a1 + v9, 0, 1, v10);
}

uint64_t sub_223720084()
{
  v9 = v0;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  v0[3] = __swift_project_value_buffer(v1, qword_28132B668);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000010, 0x8000000223734B30, &v8);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClient Cleanup session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v0[4] = *(v0[2] + 176);
  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_223720248;

  return sub_223662ED8();
}

uint64_t sub_223720248()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[6] = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = v4[2];

    return MEMORY[0x2822009F8](sub_2237203A4, v5, 0);
  }

  else
  {
    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_2237203A4()
{
  v11 = v0;
  v1 = v0[3];
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_223623274(0xD000000000000010, 0x8000000223734B30, &v10);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClient Cleanup session failed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_2237204E4()
{
  v1 = v0[14];

  v2 = v0[16];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v3 = v0[22];
  swift_unknownObjectRelease();
  v4 = v0[24];

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2237205AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for RemoteIFClient();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v14 + 184) = a2;
  *(v14 + 192) = 0;
  *(v14 + 200) = 1;
  *(v14 + 176) = a1;
  *(v14 + 120) = a3;
  *(v14 + 128) = a4;
  *(v14 + 112) = a5;
  result = sub_2236241E8(a6, v14 + 136);
  *a7 = v14;
  return result;
}

uint64_t sub_22372063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 40) = v11;
  *v11 = v5;
  v11[1] = sub_223721200;

  return sub_22371C8E0(a1, v9, v10, a4, v5 + 16);
}

uint64_t sub_2237206EC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_223720788;

  return sub_22371E478(a1, v2 + 16);
}

uint64_t sub_223720788()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    sub_22366FD7C();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;
    v9 = *(v4 + 8);

    return v9();
  }

  else
  {
    v11 = *(v4 + 8);

    return v11();
  }
}

uint64_t sub_2237208EC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_223721200;

  return sub_22371F3B4(a1, v2 + 16);
}

uint64_t sub_223720988(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2237209A8, v3, 0);
}

uint64_t sub_2237209A8()
{
  v1 = *(v0[3] + 112);
  if (v1)
  {
    v2 = v0[2];
    v3 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
    v4 = sub_223727408();
    (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  }

  else
  {
    sub_22366FD7C();
    swift_allocError();
    *v6 = 0xD000000000000014;
    *(v6 + 8) = 0x8000000223738670;
    *(v6 + 16) = 7;
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_223720ABC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_223720ADC, v3, 0);
}

uint64_t sub_223720ADC()
{
  v1 = *(v0[3] + 112);
  if (v1)
  {
    sub_223720CA4(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_eventSubscription, v0[2]);
  }

  else
  {
    sub_22366FD7C();
    swift_allocError();
    *v3 = 0xD000000000000013;
    *(v3 + 8) = 0x8000000223738650;
    *(v3 + 16) = 7;
    swift_willThrow();
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_223720BBC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_223624EA4;

  return sub_223720064();
}

uint64_t sub_223720C4C(uint64_t a1, uint64_t a2)
{
  result = sub_2237211B8(&qword_27D08FC20, a2, type metadata accessor for RemoteIFClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_223720CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteEventSubscription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223720D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE40, &qword_22372EB28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223720D88(uint64_t a1, uint64_t a2)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC50, &unk_223734270);
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34, v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8C0, &qword_22372CB28);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v32 = &v30 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8D8, &qword_22372CB30);
  v31 = *(v33 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v33, v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB60, &qword_223734280);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v30 - v21;
  v38 = sub_2237275D8();
  v39 = &off_2836C4328;
  *&v37 = a1;
  sub_2237273F8();
  sub_223727E38();
  v23 = *MEMORY[0x277D858A0];
  (*(v18 + 104))(v22, v23, v17);
  v24 = *(type metadata accessor for RemoteEventSubscription() + 20);
  sub_22372B1F8();
  (*(v18 + 8))(v22, v17);
  v25 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_state;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E860, &qword_22372CAA0);
  (*(*(v26 - 8) + 56))(a2 + v25, 1, 3, v26);
  v27 = v34;
  (*(v4 + 104))(v8, v23, v34);
  v28 = v32;
  sub_22372B1F8();
  (*(v4 + 8))(v8, v27);
  (*(v31 + 32))(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_sessionStartedStream, v16, v33);
  (*(v35 + 32))(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_sessionStartedStreamContinuation, v28, v36);
  sub_2236241E8(&v37, a2 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore);
  return a2;
}

uint64_t sub_2237211B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223721204@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v76 = a2;
  v78 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v75 - v15;
  v77 = sub_22372A548();
  v17 = *(v77 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v77, v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v75 = &v75 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v75 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v75 - v31;
  v33 = [a1 userClassified];
  if (!v33)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v48 = sub_22372AC98();
    __swift_project_value_buffer(v48, qword_27D097070);
    v49 = sub_22372AC88();
    v50 = sub_22372B278();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v77;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_223620000, v49, v50, "MUX: Unable to retrieve most confident user from voice id score card. Defaulting to unknown user.", v53, 2u);
      MEMORY[0x223DE8A80](v53, -1, -1);
    }

    v54 = sub_22372A418();
    sub_223634890(v76, v13, &unk_27D08E990, &qword_22372FCF0);
    if ((*(v17 + 48))(v13, 1, v52) == 1)
    {
      sub_223626478(v13, &unk_27D08E990, &qword_22372FCF0);
      v55 = sub_22372AC88();
      v56 = sub_22372B278();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_223620000, v55, v56, "MUX: unknownUserId was not found, defaulting to nil.", v57, 2u);
        MEMORY[0x223DE8A80](v57, -1, -1);
      }

      goto LABEL_20;
    }

    v69 = *(v17 + 32);
    v69(v22, v13, v52);
    v70 = v78;
    v71 = v78;
    v72 = v22;
    v73 = v52;
LABEL_23:
    v69(v71, v72, v73);
    v45 = type metadata accessor for MUXUserAttributes();
    *&v70[v45[5]] = 0;
    *&v70[v45[6]] = 0;
    *&v70[v45[8]] = v54;
    v70[v45[7]] = 1;
    v70[v45[9]] = 0;
    v70[v45[10]] = 0;
    v46 = *(*(v45 - 1) + 56);
    v47 = v70;
    return v46(v47, 0, 1, v45);
  }

  v34 = v33;
  sub_22372AFE8();

  sub_22372A508();
  v35 = [a1 userIdentityClassification];
  v36 = sub_223725830(v32, a1);
  if ((v36 & 0x100000000) != 0)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v58 = sub_22372AC98();
    __swift_project_value_buffer(v58, qword_27D097070);
    v59 = sub_22372AC88();
    v60 = sub_22372B278();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v77;
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_223620000, v59, v60, "MUX: Unable to retrieve most confident user's voice id score from voice id score card. Defaulting to unknown user.", v63, 2u);
      MEMORY[0x223DE8A80](v63, -1, -1);
    }

    v54 = sub_22372A418();
    sub_223634890(v76, v16, &unk_27D08E990, &qword_22372FCF0);
    if ((*(v17 + 48))(v16, 1, v62) == 1)
    {
      sub_223626478(v16, &unk_27D08E990, &qword_22372FCF0);
      v64 = sub_22372AC88();
      v65 = sub_22372B278();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_223620000, v64, v65, "MUX: unknownUserId was not found, defaulting to nil.", v66, 2u);
        MEMORY[0x223DE8A80](v66, -1, -1);
      }

      (*(v17 + 8))(v32, v62);
LABEL_20:
      v67 = type metadata accessor for MUXUserAttributes();
      return (*(*(v67 - 8) + 56))(v78, 1, 1, v67);
    }

    (*(v17 + 8))(v32, v62);
    v69 = *(v17 + 32);
    v74 = v75;
    v69(v75, v16, v62);
    v70 = v78;
    v71 = v78;
    v72 = v74;
    v73 = v62;
    goto LABEL_23;
  }

  v37 = v36;
  sub_2237245A0(v32, a4, v29);
  v38 = sub_223725DAC(v29, a3, a4);
  v76 = v35;
  v39 = v38;
  v40 = sub_2237263E8(v29, a3, a4);
  v41 = v77;
  v42 = v78;
  (*(v17 + 16))(v78, v29, v77);
  sub_22372A418();
  v43 = sub_22372B308();
  v44 = *(v17 + 8);
  v44(v29, v41);
  v44(v32, v41);
  v45 = type metadata accessor for MUXUserAttributes();
  *&v42[v45[5]] = v76;
  *&v42[v45[6]] = v37;
  *&v42[v45[8]] = v43;
  v42[v45[7]] = 0;
  v42[v45[9]] = v39 & 1;
  v42[v45[10]] = v40 & 1;
  v46 = *(*(v45 - 1) + 56);
  v47 = v42;
  return v46(v47, 0, 1, v45);
}

uint64_t sub_223721974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v219 = a5;
  v220 = a3;
  v223 = a4;
  v224 = a6;
  v218 = a2;
  v7 = type metadata accessor for MUXUserAttributes();
  v225 = *(v7 - 8);
  v226 = v7;
  v8 = *(v225 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v209 = &v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v208 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v208 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v217 = &v208 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v212 = &v208 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v213 = &v208 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v208 - v31;
  v33 = sub_22372A548();
  v34 = *(v33 - 8);
  v35 = *(v34 + 8);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = &v208 - v42;
  v45 = MEMORY[0x28223BE20](v41, v44);
  v216 = &v208 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v210 = &v208 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v211 = &v208 - v52;
  v54 = MEMORY[0x28223BE20](v51, v53);
  v215 = (&v208 - v55);
  v57 = MEMORY[0x28223BE20](v54, v56);
  v208 = &v208 - v58;
  MEMORY[0x28223BE20](v57, v59);
  v61 = &v208 - v60;
  v62 = a1;
  v64 = v63;
  sub_223634890(v62, v32, &unk_27D08E990, &qword_22372FCF0);
  v222 = *(v34 + 6);
  v65 = (v222)(v32, 1, v64);
  v221 = v34;
  if (v65 == 1)
  {
    sub_223626478(v32, &unk_27D08E990, &qword_22372FCF0);
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v66 = sub_22372AC98();
    __swift_project_value_buffer(v66, qword_27D097070);
    v67 = sub_22372AC88();
    v68 = sub_22372B278();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_223620000, v67, v68, "MUX: User Selected in Previous Request is not supplied. Defaulting to unknown user.", v69, 2u);
      MEMORY[0x223DE8A80](v69, -1, -1);
    }

    v70 = sub_22372A418();
    sub_223634890(v223, v16, &unk_27D08E990, &qword_22372FCF0);
    if ((v222)(v16, 1, v64) == 1)
    {
      sub_223626478(v16, &unk_27D08E990, &qword_22372FCF0);
      v71 = sub_22372AC88();
      v72 = sub_22372B278();
      v73 = os_log_type_enabled(v71, v72);
      v74 = v224;
      if (v73)
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_223620000, v71, v72, "MUX: unknownUserId was not found, defaulting to nil.", v75, 2u);
        MEMORY[0x223DE8A80](v75, -1, -1);
      }

      v76 = v226;
      v77 = *(v225 + 56);
      v78 = v74;
      v79 = 1;
    }

    else
    {
      v114 = *(v221 + 4);
      v114(v39, v16, v64);
      v115 = v224;
      v114(v224, v39, v64);
      v116 = v225;
      v76 = v226;
      *&v115[v226[5]] = 0;
      *&v115[v76[6]] = 0;
      *&v115[v76[8]] = v70;
      v115[v76[7]] = 1;
      v115[v76[9]] = 0;
      v115[v76[10]] = 0;
      v77 = *(v116 + 56);
      v78 = v115;
      v79 = 0;
    }

    return v77(v78, v79, 1, v76);
  }

  v80 = *(v34 + 4);
  v80(v61, v32, v64);
  v214 = v61;
  v81 = v220;
  if (!v220)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v132 = sub_22372AC98();
    __swift_project_value_buffer(v132, qword_27D097070);
    v133 = sub_22372AC88();
    v134 = sub_22372B278();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = v80;
      v136 = v64;
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&dword_223620000, v133, v134, "MUX: RequestId was not supplied for current request. Defaulting to unknown user.", v137, 2u);
      v138 = v137;
      v64 = v136;
      v80 = v135;
      MEMORY[0x223DE8A80](v138, -1, -1);
    }

    v139 = sub_22372A418();
    sub_223634890(v223, v20, &unk_27D08E990, &qword_22372FCF0);
    if ((v222)(v20, 1, v64) == 1)
    {
      v140 = v64;
      sub_223626478(v20, &unk_27D08E990, &qword_22372FCF0);
      v141 = sub_22372AC88();
      v142 = sub_22372B278();
      v143 = os_log_type_enabled(v141, v142);
      v144 = v224;
      if (v143)
      {
        v145 = swift_slowAlloc();
        *v145 = 0;
        _os_log_impl(&dword_223620000, v141, v142, "MUX: unknownUserId was not found, defaulting to nil.", v145, 2u);
        MEMORY[0x223DE8A80](v145, -1, -1);
      }

      v146 = 1;
      v147 = v226;
      v148 = v140;
    }

    else
    {
      v80(v43, v20, v64);
      v148 = v64;
      v144 = v224;
      v80(v224, v43, v148);
      v146 = 0;
      v147 = v226;
      *&v144[v226[5]] = 0;
      *&v144[v147[6]] = 0;
      *&v144[v147[8]] = v139;
      v144[v147[7]] = 1;
      v144[v147[9]] = 0;
      v144[v147[10]] = 0;
    }

    (*(v225 + 56))(v144, v146, 1, v147);
    return (*(v221 + 1))(v214, v148);
  }

  v82 = v219;
  if (!*(v219 + 16) || (v83 = sub_2236261A0(v218, v220), (v84 & 1) == 0))
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v118 = sub_22372AC98();
    __swift_project_value_buffer(v118, qword_27D097070);

    v119 = sub_22372AC88();
    v120 = sub_22372B278();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v228[0] = v122;
      *v121 = 136315138;
      *(v121 + 4) = sub_223623274(v218, v81, v228);
      _os_log_impl(&dword_223620000, v119, v120, "MUX: Unable to find requestId: %s in SessionContext. Defaulting to unknown user.", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      MEMORY[0x223DE8A80](v122, -1, -1);
      MEMORY[0x223DE8A80](v121, -1, -1);
    }

    v123 = v217;
    v124 = sub_22372A418();
    sub_223634890(v223, v123, &unk_27D08E990, &qword_22372FCF0);
    if ((v222)(v123, 1, v64) == 1)
    {
      sub_223626478(v123, &unk_27D08E990, &qword_22372FCF0);
      v125 = sub_22372AC88();
      v126 = sub_22372B278();
      v127 = os_log_type_enabled(v125, v126);
      v128 = v224;
      if (v127)
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&dword_223620000, v125, v126, "MUX: unknownUserId was not found, defaulting to nil.", v129, 2u);
        MEMORY[0x223DE8A80](v129, -1, -1);
      }

      goto LABEL_31;
    }

    v149 = v216;
    v80(v216, v123, v64);
    v128 = v224;
    v150 = v224;
    v151 = v149;
LABEL_41:
    v80(v150, v151, v64);
    v130 = 0;
    v131 = v226;
    *&v128[v226[5]] = 0;
    *&v128[v131[6]] = 0;
    *&v128[v131[8]] = v124;
    v128[v131[7]] = 1;
    v128[v131[9]] = 0;
    v128[v131[10]] = 0;
    goto LABEL_42;
  }

  v85 = *(*(v82 + 56) + 8 * v83);
  v86 = v85[5];
  v220 = v85;
  if (!v86)
  {
    v152 = qword_27D08E2C8;

    if (v152 != -1)
    {
      swift_once();
    }

    v153 = sub_22372AC98();
    v154 = __swift_project_value_buffer(v153, qword_27D097070);

    v155 = sub_22372AC88();
    v156 = sub_22372B278();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v217 = v154;
      v159 = v158;
      v228[0] = v158;
      *v157 = 136315138;
      v218 = v80;
      v219 = v64;
      v160 = v85[2];
      v161 = v85[3];

      v162 = sub_223623274(v160, v161, v228);
      v80 = v218;

      *(v157 + 4) = v162;
      v64 = v219;
      _os_log_impl(&dword_223620000, v155, v156, "MUX: Unable to find selected RC ID in RequestContext id : %s. Defaulting to unknown user.", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v159);
      MEMORY[0x223DE8A80](v159, -1, -1);
      MEMORY[0x223DE8A80](v157, -1, -1);
    }

    v163 = v212;
    v124 = sub_22372A418();
    sub_223634890(v223, v163, &unk_27D08E990, &qword_22372FCF0);
    if ((v222)(v163, 1, v64) == 1)
    {
      sub_223626478(v163, &unk_27D08E990, &qword_22372FCF0);
      v164 = sub_22372AC88();
      v165 = sub_22372B278();
      v166 = os_log_type_enabled(v164, v165);
      v128 = v224;
      if (v166)
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&dword_223620000, v164, v165, "MUX: unknownUserId was not found, defaulting to nil.", v167, 2u);
        MEMORY[0x223DE8A80](v167, -1, -1);
      }

LABEL_31:
      v130 = 1;
      v131 = v226;
LABEL_42:
      (*(v225 + 56))(v128, v130, 1, v131);
      return (*(v221 + 1))(v214, v64);
    }

    v200 = v210;
    v80(v210, v163, v64);
    v128 = v224;
    v150 = v224;
    v151 = v200;
    goto LABEL_41;
  }

  v219 = v85[4];
  swift_beginAccess();
  v87 = v85[7];
  v88 = *(v87 + 16);

  v89 = v215;
  if (v88)
  {

    v90 = sub_2236261A0(v219, v86);
    if (v91)
    {
      v92 = *(*(v87 + 56) + 8 * v90);

      MEMORY[0x28223BE20](v93, v94);
      *(&v208 - 2) = v214;
      v95 = sub_223685A30(sub_2236853B0, (&v208 - 4), v92);
      v89 = v215;

      if (v95)
      {

        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v96 = sub_22372AC98();
        __swift_project_value_buffer(v96, qword_27D097070);

        v97 = sub_22372AC88();
        v98 = sub_22372B268();

        v99 = os_log_type_enabled(v97, v98);
        v100 = v209;
        if (v99)
        {
          v101 = swift_slowAlloc();
          v222 = v101;
          v223 = swift_slowAlloc();
          v227[0] = v223;
          *v101 = 136315138;
          v102 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
          swift_beginAccess();
          sub_22368509C(v95 + v102, v100);
          v103 = v208;
          v80(v208, v100, v64);
          sub_22372708C(&qword_28132B4E8, MEMORY[0x277D5D298]);
          v104 = v98;
          v105 = sub_22372B6B8();
          v106 = v80;
          v108 = v107;
          v221 = *(v221 + 1);
          v221(v103, v64);
          v109 = sub_223623274(v105, v108, v227);
          v80 = v106;
          v100 = v209;

          v110 = v222;
          *(v222 + 1) = v109;
          v111 = v104;
          v112 = v110;
          _os_log_impl(&dword_223620000, v97, v111, "MUX: selectUserFromPreviousRequest returns with userId %s", v110, 0xCu);
          v113 = v223;
          __swift_destroy_boxed_opaque_existential_1Tm(v223);
          MEMORY[0x223DE8A80](v113, -1, -1);
          MEMORY[0x223DE8A80](v112, -1, -1);

          v221(v214, v64);
        }

        else
        {

          (*(v221 + 1))(v214, v64);
        }

        v201 = v224;
        v202 = v95 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        sub_22368509C(v202, v100);
        v80(v201, v100, v64);
        v203 = v226;
        v204 = *(v202 + v226[5]);
        v205 = *(v202 + v226[6]);
        v206 = *(v202 + v226[8]);
        v207 = *(v202 + v226[9]);
        LOBYTE(v202) = *(v202 + v226[10]);

        *&v201[v203[5]] = v204;
        *&v201[v203[6]] = v205;
        *&v201[v203[8]] = v206;
        v201[v203[7]] = 1;
        v201[v203[9]] = v207;
        v201[v203[10]] = v202;
        return (*(v225 + 56))(v201, 0, 1, v203);
      }
    }

    else
    {
    }
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v168 = sub_22372AC98();
  v169 = __swift_project_value_buffer(v168, qword_27D097070);
  v170 = v221;
  (*(v221 + 2))(v89, v214, v64);

  v217 = v169;
  v171 = sub_22372AC88();
  v172 = sub_22372B278();

  LODWORD(v216) = v172;
  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v218 = v80;
    v175 = v174;
    v227[0] = v174;
    *v173 = 136315650;
    sub_22372708C(&qword_28132B4E8, MEMORY[0x277D5D298]);
    v215 = v171;
    v176 = sub_22372B6B8();
    v178 = v177;
    v179 = v89;
    v180 = *(v221 + 1);
    v180(v179, v64);
    v181 = sub_223623274(v176, v178, v227);

    *(v173 + 4) = v181;
    *(v173 + 12) = 2080;
    v182 = sub_223623274(v219, v86, v227);

    *(v173 + 14) = v182;
    *(v173 + 22) = 2080;
    v183 = v85[2];
    v184 = v85[3];

    v185 = sub_223623274(v183, v184, v227);

    *(v173 + 24) = v185;
    v186 = v215;
    _os_log_impl(&dword_223620000, v215, v216, "MUX: Unable to find selected RC Context given for userId %s and topLevelCandidateId: %s) cached for requestId: %s. Defaulting to unknown user.", v173, 0x20u);
    swift_arrayDestroy();
    v187 = v175;
    v80 = v218;
    MEMORY[0x223DE8A80](v187, -1, -1);
    v188 = v173;
    v189 = v180;
    MEMORY[0x223DE8A80](v188, -1, -1);
  }

  else
  {

    v189 = *(v170 + 1);
    v189(v89, v64);
  }

  v190 = sub_22372A418();
  v191 = v213;
  sub_223634890(v223, v213, &unk_27D08E990, &qword_22372FCF0);
  if ((v222)(v191, 1, v64) == 1)
  {
    sub_223626478(v191, &unk_27D08E990, &qword_22372FCF0);
    v192 = sub_22372AC88();
    v193 = sub_22372B278();
    v194 = os_log_type_enabled(v192, v193);
    v195 = v224;
    if (v194)
    {
      v196 = swift_slowAlloc();
      *v196 = 0;
      _os_log_impl(&dword_223620000, v192, v193, "MUX: unknownUserId was not found, defaulting to nil.", v196, 2u);
      MEMORY[0x223DE8A80](v196, -1, -1);
    }

    v197 = 1;
    v198 = v226;
  }

  else
  {

    v199 = v211;
    v80(v211, v191, v64);
    v195 = v224;
    v80(v224, v199, v64);
    v197 = 0;
    v198 = v226;
    *&v195[v226[5]] = 0;
    *&v195[v198[6]] = 0;
    *&v195[v198[8]] = v190;
    v195[v198[7]] = 1;
    v195[v198[9]] = 0;
    v195[v198[10]] = 0;
  }

  (*(v225 + 56))(v195, v197, 1, v198);
  return (v189)(v214, v64);
}

id sub_223722F40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v108 = a6;
  v109 = a7;
  v115 = a5;
  v118 = a8;
  v12 = type metadata accessor for MUXUserAttributes();
  v116 = *(v12 - 8);
  v117 = v12;
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v110 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v112 = v105 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = v105 - v26;
  v28 = sub_22372A548();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v32, v35);
  v111 = v105 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v40 = v105 - v39;
  sub_223723A3C(a3, v27);
  v113 = v29[6];
  v114 = v29 + 6;
  if (v113(v27, 1, v28) == 1)
  {
    v112 = v28;
    sub_223626478(v27, &unk_27D08E990, &qword_22372FCF0);
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v41 = sub_22372AC98();
    __swift_project_value_buffer(v41, qword_27D097070);

    v42 = sub_22372AC88();
    v43 = sub_22372B288();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v119 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_223623274(a1, a2, &v119);
      _os_log_impl(&dword_223620000, v42, v43, "MUX: Stated user: %s not found in home. Defaulting to unknown user.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x223DE8A80](v45, -1, -1);
      MEMORY[0x223DE8A80](v44, -1, -1);
    }

    v46 = sub_22372A418();
    sub_223634890(v115, v21, &unk_27D08E990, &qword_22372FCF0);
    v47 = v112;
    v48 = v113(v21, 1, v112);
    v49 = v117;
    if (v48 == 1)
    {
      sub_223626478(v21, &unk_27D08E990, &qword_22372FCF0);
      v50 = sub_22372AC88();
      v51 = sub_22372B278();
      v52 = os_log_type_enabled(v50, v51);
      v53 = v118;
      if (v52)
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_223620000, v50, v51, "MUX: unknownUserId was not found, defaulting to nil.", v54, 2u);
        MEMORY[0x223DE8A80](v54, -1, -1);
      }

      v55 = 1;
      return (*(v116 + 56))(v53, v55, 1, v49);
    }

    v70 = v29[4];
    v70(v34, v21, v47);
    v53 = v118;
    v70(v118, v34, v47);
    v55 = 0;
    *(v53 + v49[5]) = 0;
    *(v53 + v49[6]) = 0;
    *(v53 + v49[8]) = v46;
    *(v53 + v49[7]) = 1;
    goto LABEL_38;
  }

  v106 = v29;
  v107 = v40;
  v105[0] = v29[4];
  v105[1] = v29 + 4;
  (v105[0])(v40, v27, v28);
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v56 = sub_22372AC98();
  __swift_project_value_buffer(v56, qword_27D097070);

  v57 = sub_22372AC88();
  v58 = sub_22372B288();

  v59 = a4;
  if (os_log_type_enabled(v57, v58))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v119 = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_223623274(a1, a2, &v119);
    _os_log_impl(&dword_223620000, v57, v58, "MUX: Given stated user: %s found in home.", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x223DE8A80](v61, -1, -1);
    MEMORY[0x223DE8A80](v60, -1, -1);
  }

  v62 = v107;
  v63 = [v59 userClassified];
  if (!v63)
  {
    sub_22372A518();
    goto LABEL_21;
  }

  v64 = v63;
  v65 = sub_22372AFE8();
  v67 = v66;

  v68 = sub_22372A518();
  if (!v67)
  {
LABEL_21:

    v71 = 0;
    v72 = 0;
    goto LABEL_26;
  }

  if (v65 == v68 && v67 == v69)
  {
  }

  else
  {
    v73 = sub_22372B6E8();

    v71 = 0;
    v72 = 0;
    if ((v73 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v74 = sub_22372AC88();
  v75 = sub_22372B268();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_223620000, v74, v75, "#user-selection: stated user is the classified user", v76, 2u);
    MEMORY[0x223DE8A80](v76, -1, -1);
  }

  v78 = v108;
  v77 = v109;
  v72 = sub_223725DAC(v62, v108, v109);
  v71 = sub_2237263E8(v62, v78, v77);
LABEL_26:
  result = [v59 spIdKnownUserScores];
  if (result)
  {
    v80 = result;
    sub_223685980();
    v81 = sub_22372AF58();

    v82 = sub_22372A518();
    if (*(v81 + 16))
    {
      v84 = sub_2236261A0(v82, v83);
      v86 = v85;

      if (v86)
      {
        v87 = *(*(v81 + 56) + 8 * v84);

        v88 = v106;
        v89 = v110;
        (v106[2])(v110, v62, v28);
        v90 = [v87 intValue];
        sub_22372A418();
        v91 = sub_22372B308();

        (v88[1])(v62, v28);
        v49 = v117;
        v53 = v118;
        *(v89 + v117[5]) = 3;
        *(v89 + v49[6]) = v90;
        *(v89 + v49[8]) = v91;
        *(v89 + v49[7]) = 1;
        *(v89 + v49[9]) = v72 & 1;
        *(v89 + v49[10]) = v71 & 1;
        sub_2236852F0(v89, v53);
        v55 = 0;
        return (*(v116 + 56))(v53, v55, 1, v49);
      }
    }

    else
    {
    }

    v92 = sub_22372AC88();
    v93 = sub_22372B278();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_223620000, v92, v93, "MUX: Unable to find stated user details from latest VoiceIdScoreCard. Defaulting to unknown user.", v94, 2u);
      MEMORY[0x223DE8A80](v94, -1, -1);
    }

    v95 = sub_22372A418();
    v96 = v112;
    sub_223634890(v115, v112, &unk_27D08E990, &qword_22372FCF0);
    v97 = v28;
    if (v113(v96, 1, v28) == 1)
    {
      sub_223626478(v96, &unk_27D08E990, &qword_22372FCF0);
      v98 = sub_22372AC88();
      v99 = sub_22372B278();
      v100 = os_log_type_enabled(v98, v99);
      v53 = v118;
      v101 = v106;
      if (v100)
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_223620000, v98, v99, "MUX: unknownUserId was not found, defaulting to nil.", v102, 2u);
        MEMORY[0x223DE8A80](v102, -1, -1);
      }

      (v101[1])(v62, v97);
      v55 = 1;
      v49 = v117;
      return (*(v116 + 56))(v53, v55, 1, v49);
    }

    (v106[1])(v62, v28);
    v103 = v111;
    v104 = v105[0];
    (v105[0])(v111, v96, v97);
    v53 = v118;
    v104(v118, v103, v97);
    v55 = 0;
    v49 = v117;
    *(v53 + v117[5]) = 0;
    *(v53 + v49[6]) = 0;
    *(v53 + v49[8]) = v95;
    *(v53 + v49[7]) = 1;
LABEL_38:
    *(v53 + v49[9]) = 0;
    *(v53 + v49[10]) = 0;
    return (*(v116 + 56))(v53, v55, 1, v49);
  }

  __break(1u);
  return result;
}

uint64_t sub_223723A3C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = sub_22372A548();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v131 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v115 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v125 = &v115 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC70, &qword_2237342A0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v130 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v127 = &v115 - v21;
  v22 = sub_223727198();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_22372B048();
  v145 = v28;
  sub_223727188();
  v137 = sub_223637E48();
  v136 = sub_22372B3B8();
  v139 = v22;
  v140 = v29;
  v30 = *(v23 + 8);
  v138 = v23 + 8;
  v135 = v30;
  v30(v27, v22);

  v31 = *(a1 + 64);
  v120 = a1 + 64;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v119 = (v32 + 63) >> 6;
  v132 = (v4 + 16);
  v134 = (v4 + 32);
  v128 = v4;
  v124 = (v4 + 8);
  v129 = a1;

  v36 = 0;
  *&v37 = 136315138;
  v117 = v37;
  v121 = v3;
  v123 = v12;
  v126 = v27;
  while (1)
  {
LABEL_5:
    if (v34)
    {
      v39 = v3;
      v40 = v12;
      v41 = v36;
LABEL_15:
      v46 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v47 = v46 | (v41 << 6);
      v48 = v129;
      v49 = v128;
      v50 = v125;
      (*(v128 + 16))(v125, *(v129 + 48) + *(v128 + 72) * v47, v39);
      v51 = *(*(v48 + 56) + 8 * v47);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC78, &qword_2237342A8);
      v53 = *(v52 + 48);
      v54 = *(v49 + 32);
      v45 = v130;
      v55 = v50;
      v56 = v39;
      v54(v130, v55, v39);
      *&v45[v53] = v51;
      (*(*(v52 - 8) + 56))(v45, 0, 1, v52);
      v57 = v51;
      v44 = v131;
      v12 = v40;
    }

    else
    {
      v42 = v119 <= (v36 + 1) ? (v36 + 1) : v119;
      v43 = v42 - 1;
      v44 = v131;
      v45 = v130;
      while (1)
      {
        v41 = (v36 + 1);
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          return result;
        }

        if (v41 >= v119)
        {
          break;
        }

        v34 = *(v120 + 8 * v41);
        ++v36;
        if (v34)
        {
          v39 = v3;
          v40 = v12;
          goto LABEL_15;
        }
      }

      v56 = v3;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC78, &qword_2237342A8);
      (*(*(v86 - 8) + 56))(v45, 1, 1, v86);
      v34 = 0;
      v41 = v43;
    }

    v58 = v45;
    v59 = v127;
    sub_22372701C(v58, v127);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC78, &qword_2237342A8);
    v61 = (*(*(v60 - 8) + 48))(v59, 1, v60);
    v62 = v126;
    if (v61 == 1)
    {

      v114 = 1;
      v113 = v116;
      return (*(v128 + 56))(v113, v114, 1, v56);
    }

    v63 = *(v59 + *(v60 + 48));
    v64 = *v134;
    v3 = v56;
    (*v134)(v12, v59, v56);
    v65 = [v63 homeMemberSettings];
    v133 = v63;
    if (v65)
    {
      break;
    }

LABEL_22:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v74 = sub_22372AC98();
    __swift_project_value_buffer(v74, qword_27D097070);
    (*v132)(v44, v12, v3);
    v75 = sub_22372AC88();
    v76 = v12;
    v77 = sub_22372B288();
    if (os_log_type_enabled(v75, v77))
    {
      v78 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v144 = v118;
      *v78 = v117;
      sub_22372708C(&qword_28132B4E8, MEMORY[0x277D5D298]);
      v79 = sub_22372B6B8();
      v80 = v44;
      v82 = v81;
      v122 = v41;
      v83 = *v124;
      (*v124)(v80, v3);
      v84 = sub_223623274(v79, v82, &v144);

      *(v78 + 4) = v84;
      _os_log_impl(&dword_223620000, v75, v77, "MUX: User with id %s does not have an associated homeMemberSettings/mecard.", v78, 0xCu);
      v85 = v118;
      __swift_destroy_boxed_opaque_existential_1Tm(v118);
      MEMORY[0x223DE8A80](v85, -1, -1);
      MEMORY[0x223DE8A80](v78, -1, -1);

      v12 = v123;
      result = (v83)(v123, v3);
      v36 = v122;
    }

    else
    {

      v38 = *v124;
      (*v124)(v44, v3);
      result = (v38)(v76, v3);
      v36 = v41;
      v12 = v76;
    }
  }

  v66 = v65;
  v122 = v64;
  v67 = [v65 meCard];
  if (!v67)
  {

    goto LABEL_22;
  }

  v68 = v67;
  v69 = [v67 firstName];
  if (v69)
  {
    v70 = v69;
    v71 = sub_22372AFE8();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  v142 = v71;
  v143[0] = v73;
  v87 = [v68 lastName];
  if (v87)
  {
    v88 = v87;
    v89 = sub_22372AFE8();
    v91 = v90;
  }

  else
  {
    v89 = 0;
    v91 = 0;
  }

  v143[1] = v89;
  v143[2] = v91;
  v92 = [v68 fullName];
  if (v92)
  {
    v93 = v92;
    v94 = sub_22372AFE8();
    v96 = v95;
  }

  else
  {
    v94 = 0;
    v96 = 0;
  }

  v143[3] = v94;
  v143[4] = v96;
  v97 = [v68 nickName];
  v98 = v41;
  if (v97)
  {
    v99 = v97;
    v100 = sub_22372AFE8();
    v102 = v101;
  }

  else
  {
    v100 = 0;
    v102 = 0;
  }

  v103 = 0;
  v143[5] = v100;
  v143[6] = v102;
  while (1)
  {
    v104 = &v141[v103 * 8];
    if (!v143[v103])
    {
      goto LABEL_38;
    }

    v105 = *(v104 + 4);
    v106 = *(v104 + 5);
    v144 = sub_22372B048();
    v145 = v107;

    sub_223727188();
    v108 = sub_22372B3B8();
    v110 = v109;
    v135(v62, v139);

    if (v108 == v136 && v110 == v140)
    {
      break;
    }

    v112 = sub_22372B6E8();

    if (v112)
    {

      goto LABEL_48;
    }

LABEL_38:
    v103 += 2;
    if (v103 == 8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
      swift_arrayDestroy();
      v12 = v123;
      v3 = v121;
      result = (*v124)(v123, v121);
      v36 = v98;
      goto LABEL_5;
    }
  }

LABEL_48:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
  swift_arrayDestroy();
  v113 = v116;
  v56 = v121;
  (v122)(v116, v123, v121);
  v114 = 0;
  return (*(v128 + 56))(v113, v114, 1, v56);
}

void sub_2237245A0(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_22372AC98();
    __swift_project_value_buffer(v10, qword_27D097070);
    v11 = sub_22372AC88();
    v12 = sub_22372B268();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_223620000, v11, v12, "MUX: #user-selection: skipping override. Reason: useridentificationMessage is nil.", v13, 2u);
      MEMORY[0x223DE8A80](v13, -1, -1);
    }

    goto LABEL_26;
  }

  v21 = a2;
  if (sub_223728C18())
  {
    if (sub_223728C18() == 2)
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v5 = sub_22372AC98();
      __swift_project_value_buffer(v5, qword_27D097070);
      v6 = sub_22372AC88();
      v7 = sub_22372B268();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_25;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "MUX: #user-selection: Skipping further override behavior. Reason: Platform doesn't support unsureN override.";
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v18 = sub_22372AC98();
      __swift_project_value_buffer(v18, qword_27D097070);
      v6 = sub_22372AC88();
      v7 = sub_22372B268();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_25;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "MUX: #user-selection: selected user won't be overridden. Reason: userClassification > unsureN.";
    }

    _os_log_impl(&dword_223620000, v6, v7, v9, v8, 2u);
    MEMORY[0x223DE8A80](v8, -1, -1);
LABEL_25:

LABEL_26:
    v19 = sub_22372A548();
    v20 = *(*(v19 - 8) + 16);

    v20(a3, a1, v19);
    return;
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v14 = sub_22372AC98();
  __swift_project_value_buffer(v14, qword_27D097070);
  v15 = sub_22372AC88();
  v16 = sub_22372B268();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_223620000, v15, v16, "MUX: #user-selection: Overriding to unknown/guest user. Reason: userClassification is unspecified", v17, 2u);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  sub_22372A238();
  sub_22372A508();
}

uint64_t sub_223724934(void *a1, uint64_t a2)
{
  v120 = a2;
  v125 = sub_223729EE8();
  v123 = *(v125 - 8);
  v3 = *(v123 + 64);
  MEMORY[0x28223BE20](v125, v4);
  v111 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC80, &qword_2237342B0);
  v6 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119, v7);
  v124 = &v109 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v122 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v121 = &v109 - v15;
  v16 = sub_2237276C8();
  v117 = *(v16 - 8);
  v118 = v16;
  v17 = *(v117 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v113 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2237276F8();
  v128 = *(v20 - 8);
  v129 = v20;
  v21 = *(v128 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v114 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC88, &qword_2237342B8);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v115 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v130 = &v109 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC90, &unk_2237342C0);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31 - 8, v33);
  v116 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v132 = &v109 - v37;
  v38 = sub_22372A548();
  v133 = *(v38 - 8);
  v39 = *(v133 + 64);
  MEMORY[0x28223BE20](v38, v40);
  v131 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22372A3C8();
  v43 = *(v42 - 8);
  v44 = v43[8];
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v109 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v49 = *(*(v48 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v48 - 8, v50);
  v53 = &v109 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v54);
  v56 = &v109 - v55;
  v58 = a1[3];
  v57 = a1[4];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v58);
  v59 = *MEMORY[0x277D5D1C0];
  v126 = v43[13];
  v126(v47, v59, v42);
  sub_22372A478();
  v60 = v43[1];
  v60(v47, v42);
  if (v135)
  {
    v61 = swift_dynamicCast();
    v62 = v133;
    (*(v133 + 56))(v56, v61 ^ 1u, 1, v38);
  }

  else
  {
    sub_223626478(v134, &unk_27D08F750, &qword_22372C960);
    v62 = v133;
    (*(v133 + 56))(v56, 1, 1, v38);
  }

  sub_223634890(v56, v53, &unk_27D08E990, &qword_22372FCF0);
  if ((*(v62 + 48))(v53, 1, v38) != 1)
  {
    v112 = v56;
    (*(v62 + 32))(v131, v53, v38);
    v70 = v127[4];
    __swift_project_boxed_opaque_existential_1(v127, v127[3]);
    v126(v47, *MEMORY[0x277D5D1D0], v42);
    sub_22372A4C8();
    v60(v47, v42);
    if (v135)
    {
      v71 = v132;
      v72 = v129;
      v73 = swift_dynamicCast();
      (*(v128 + 56))(v71, v73 ^ 1u, 1, v72);
    }

    else
    {
      sub_223626478(v134, &unk_27D08F750, &qword_22372C960);
      (*(v128 + 56))(v132, 1, 1, v129);
    }

    v110 = v38;
    v74 = v127[4];
    __swift_project_boxed_opaque_existential_1(v127, v127[3]);
    v126(v47, *MEMORY[0x277D5D1C8], v42);
    sub_22372A4C8();
    v60(v47, v42);
    if (v135)
    {
      v75 = v130;
      v76 = v118;
      v77 = swift_dynamicCast();
      v78 = v117;
      (*(v117 + 56))(v75, v77 ^ 1u, 1, v76);
    }

    else
    {
      sub_223626478(v134, &unk_27D08F750, &qword_22372C960);
      v78 = v117;
      v76 = v118;
      v75 = v130;
      (*(v117 + 56))(v130, 1, 1, v118);
    }

    v80 = v124;
    v79 = v125;
    v81 = v123;
    v82 = v121;
    v83 = v129;
    v84 = v116;
    sub_223634890(v132, v116, &qword_27D08FC90, &unk_2237342C0);
    v85 = v128;
    if ((*(v128 + 48))(v84, 1, v83) == 1)
    {
      sub_223626478(v84, &qword_27D08FC90, &unk_2237342C0);
      v86 = v110;
    }

    else
    {
      v89 = v114;
      (*(v85 + 32))(v114, v84, v83);
      if (sub_2237276E8())
      {
        (*(v85 + 8))(v89, v83);
        v88 = 1;
        v86 = v110;
        goto LABEL_27;
      }

      v91 = sub_2237276D8();
      v92 = v83;
      v93 = v91;
      (*(v85 + 8))(v89, v92);
      v75 = v130;
      v86 = v110;
      if (v93)
      {
        v88 = 1;
        goto LABEL_27;
      }
    }

    v87 = v115;
    sub_223634890(v75, v115, &qword_27D08FC88, &qword_2237342B8);
    if ((*(v78 + 48))(v87, 1, v76) == 1)
    {
      sub_223626478(v87, &qword_27D08FC88, &qword_2237342B8);
      v88 = 0;
    }

    else
    {
      v90 = v113;
      (*(v78 + 32))(v113, v87, v76);
      if (sub_2237276A8())
      {
        (*(v78 + 8))(v90, v76);
        v88 = 1;
      }

      else
      {
        v88 = sub_2237276B8();
        (*(v78 + 8))(v90, v76);
      }
    }

LABEL_27:
    (*(v81 + 104))(v82, *MEMORY[0x277D5CE98], v79);
    (*(v81 + 56))(v82, 0, 1, v79);
    v94 = *(v119 + 48);
    sub_223634890(v120, v80, &unk_27D08F6F0, &qword_223732CD0);
    sub_223634890(v82, v80 + v94, &unk_27D08F6F0, &qword_223732CD0);
    v95 = *(v81 + 48);
    v96 = v95(v80, 1, v79);
    v97 = v122;
    if (v96 == 1)
    {
      sub_223626478(v82, &unk_27D08F6F0, &qword_223732CD0);
      v98 = v95(v80 + v94, 1, v79);
      v56 = v112;
      v99 = v133;
      if (v98 == 1)
      {
        sub_223626478(v80, &unk_27D08F6F0, &qword_223732CD0);
        v69 = 1;
        if (v88)
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }
    }

    else
    {
      sub_223634890(v80, v122, &unk_27D08F6F0, &qword_223732CD0);
      if (v95(v80 + v94, 1, v79) != 1)
      {
        v100 = v111;
        (*(v81 + 32))(v111, v80 + v94, v79);
        sub_22372708C(&qword_27D08FC98, MEMORY[0x277D5CEA0]);
        v69 = sub_22372AFC8();
        v101 = *(v81 + 8);
        v101(v100, v79);
        sub_223626478(v82, &unk_27D08F6F0, &qword_223732CD0);
        v101(v97, v79);
        sub_223626478(v80, &unk_27D08F6F0, &qword_223732CD0);
        v56 = v112;
        v99 = v133;
        if (((v88 ^ v69) & 1) == 0)
        {
LABEL_41:
          (*(v99 + 8))(v131, v86);
          sub_223626478(v130, &qword_27D08FC88, &qword_2237342B8);
          sub_223626478(v132, &qword_27D08FC90, &unk_2237342C0);
          goto LABEL_42;
        }

LABEL_36:
        v102 = v86;
        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v103 = sub_22372AC98();
        __swift_project_value_buffer(v103, qword_27D097070);
        v104 = sub_22372AC88();
        v105 = sub_22372B278();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 67109376;
          *(v106 + 4) = v69 & 1;
          *(v106 + 8) = 1024;
          *(v106 + 10) = v88 & 1;
          _os_log_impl(&dword_223620000, v104, v105, "MUX: Showing strange state where serverGenerated: %{BOOL}d and wasUserPromptedAsPerNLContext: %{BOOL}d", v106, 0xEu);
          v107 = v106;
          v56 = v112;
          MEMORY[0x223DE8A80](v107, -1, -1);
        }

        v86 = v102;
        v99 = v133;
        goto LABEL_41;
      }

      sub_223626478(v82, &unk_27D08F6F0, &qword_223732CD0);
      (*(v81 + 8))(v97, v79);
      v56 = v112;
      v99 = v133;
    }

    sub_223626478(v80, &qword_27D08FC80, &qword_2237342B0);
    v69 = 0;
    if ((v88 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  sub_223626478(v53, &unk_27D08E990, &qword_22372FCF0);
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v63 = sub_22372AC98();
  __swift_project_value_buffer(v63, qword_27D097070);
  v64 = sub_22372AC88();
  v65 = sub_22372B268();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = v56;
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_223620000, v64, v65, "MUX: userIdSelectedInPreviousRequest is not available, indicating that Siri is probably not prompting.", v67, 2u);
    v68 = v67;
    v56 = v66;
    MEMORY[0x223DE8A80](v68, -1, -1);
  }

  v69 = 0;
LABEL_42:
  sub_223626478(v56, &unk_27D08E990, &qword_22372FCF0);
  return v69 & 1;
}

id sub_223725830(uint64_t a1, void *a2)
{
  v4 = sub_22372A548();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v47 - v12;
  result = [a2 spIdKnownUserScores];
  if (result)
  {
    v15 = result;
    sub_223685980();
    v16 = sub_22372AF58();

    v17 = sub_22372A518();
    if (*(v16 + 16))
    {
      v19 = sub_2236261A0(v17, v18);
      v21 = v20;

      if (v21)
      {
        v22 = *(*(v16 + 56) + 8 * v19);

        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v23 = sub_22372AC98();
        __swift_project_value_buffer(v23, qword_27D097070);
        (*(v5 + 16))(v13, a1, v4);
        v24 = v22;
        v25 = sub_22372AC88();
        v26 = sub_22372B268();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v48 = v47;
          *v27 = 138412546;
          *(v27 + 4) = v24;
          *v28 = v24;
          *(v27 + 12) = 2080;
          sub_22372708C(&qword_28132B4E8, MEMORY[0x277D5D298]);
          v29 = v24;
          v30 = sub_22372B6B8();
          v32 = v31;
          (*(v5 + 8))(v13, v4);
          v33 = sub_223623274(v30, v32, &v48);

          *(v27 + 14) = v33;
          _os_log_impl(&dword_223620000, v25, v26, "MUX: Found score: %@ for userId: %s", v27, 0x16u);
          sub_223626478(v28, &unk_27D08F250, &unk_22372D1D0);
          MEMORY[0x223DE8A80](v28, -1, -1);
          v34 = v47;
          __swift_destroy_boxed_opaque_existential_1Tm(v47);
          MEMORY[0x223DE8A80](v34, -1, -1);
          MEMORY[0x223DE8A80](v27, -1, -1);
        }

        else
        {

          (*(v5 + 8))(v13, v4);
        }

        v46 = [v24 intValue];

        v45 = 0;
        v44 = v46;
LABEL_17:
        LOBYTE(v48) = v45;
        return (v44 | (v45 << 32));
      }
    }

    else
    {
    }

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v35 = sub_22372AC98();
    __swift_project_value_buffer(v35, qword_27D097070);
    (*(v5 + 16))(v10, a1, v4);
    v36 = sub_22372AC88();
    v37 = sub_22372B288();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v38 = 136315138;
      sub_22372708C(&qword_28132B4E8, MEMORY[0x277D5D298]);
      v40 = sub_22372B6B8();
      v42 = v41;
      (*(v5 + 8))(v10, v4);
      v43 = sub_223623274(v40, v42, &v48);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_223620000, v36, v37, "MUX: Did not find voiceId score for userId: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x223DE8A80](v39, -1, -1);
      MEMORY[0x223DE8A80](v38, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    v44 = 0;
    v45 = 1;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_223725DAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22372A548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC60, &qword_223734298);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v46 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v46 - v27;
  if (!a3)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v34 = sub_22372AC98();
    __swift_project_value_buffer(v34, qword_28132B680);
    v33 = sub_22372AC88();
    v35 = sub_22372B268();
    if (os_log_type_enabled(v33, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_223620000, v33, v35, "MUX: #user-selection: userIdentificationMessage or voiceIdScoreCard is nil", v36, 2u);
      MEMORY[0x223DE8A80](v36, -1, -1);
    }

    goto LABEL_20;
  }

  (*(v7 + 16))(&v46 - v27, a1, v6);
  (*(v7 + 56))(v28, 0, 1, v6);
  v29 = a3;
  v48 = a2;
  v49 = v29;
  sub_22372A268();
  v30 = *(v11 + 48);
  sub_223634890(v28, v15, &unk_27D08E990, &qword_22372FCF0);
  sub_223634890(v25, &v15[v30], &unk_27D08E990, &qword_22372FCF0);
  v31 = *(v7 + 48);
  if (v31(v15, 1, v6) == 1)
  {
    sub_223626478(v25, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v28, &unk_27D08E990, &qword_22372FCF0);
    if (v31(&v15[v30], 1, v6) == 1)
    {
      sub_223626478(v15, &unk_27D08E990, &qword_22372FCF0);
      sub_22372A248();
      v32 = 1;
      v33 = v49;
      goto LABEL_21;
    }
  }

  else
  {
    sub_223634890(v15, v21, &unk_27D08E990, &qword_22372FCF0);
    if (v31(&v15[v30], 1, v6) != 1)
    {
      v37 = &v15[v30];
      v38 = v47;
      (*(v7 + 32))(v47, v37, v6);
      sub_22372708C(qword_27D08EC10, MEMORY[0x277D5D298]);
      v32 = sub_22372AFC8();
      v39 = *(v7 + 8);
      v39(v38, v6);
      sub_223626478(v25, &unk_27D08E990, &qword_22372FCF0);
      sub_223626478(v28, &unk_27D08E990, &qword_22372FCF0);
      v39(v21, v6);
      sub_223626478(v15, &unk_27D08E990, &qword_22372FCF0);
      v33 = v49;
      if ((sub_22372A248() & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_223626478(v25, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v28, &unk_27D08E990, &qword_22372FCF0);
    (*(v7 + 8))(v21, v6);
  }

  sub_223626478(v15, &qword_27D08FC60, &qword_223734298);
  v32 = 0;
  v33 = v49;
  if (sub_22372A248())
  {
LABEL_14:
    if (v32)
    {
      goto LABEL_21;
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v40 = sub_22372AC98();
    __swift_project_value_buffer(v40, qword_28132B680);
    v41 = sub_22372AC88();
    v42 = sub_22372B268();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_223620000, v41, v42, "MUX: #user-selection: session is active for another user", v43, 2u);
      MEMORY[0x223DE8A80](v43, -1, -1);
    }

LABEL_20:
    v32 = 0;
    return v32 & 1;
  }

LABEL_21:
  if (sub_223728C18() == 1 || sub_223728C18() == 3)
  {
  }

  else
  {
    v45 = sub_223728C18();

    if (v45 != 4)
    {
      return v32 & 1;
    }
  }

  v32 = 1;
  return v32 & 1;
}

uint64_t sub_2237263E8(uint64_t a1, uint64_t a2, void *a3)
{
  v103 = a1;
  v102 = sub_22372A458();
  v100 = *(v102 - 8);
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v102, v6);
  v92 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC58, &qword_223734290);
  v8 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95, v9);
  v101 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEA0, &qword_22372EC30);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v93 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v91 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v99 = &v91 - v21;
  v22 = sub_22372A548();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v94 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC60, &qword_223734298);
  v28 = *(*(v27 - 1) + 64);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v91 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v33 = *(*(v32 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v32 - 8, v34);
  v97 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v105 = &v91 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v91 - v41;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v43 = sub_22372AC98();
  v104 = __swift_project_value_buffer(v43, qword_28132B680);
  v44 = sub_22372AC88();
  v45 = sub_22372B268();
  v46 = os_log_type_enabled(v44, v45);
  v98 = v19;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v96 = v27;
    v48 = a3;
    v49 = v23;
    v50 = a2;
    v51 = v47;
    v52 = swift_slowAlloc();
    v106 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_223623274(0xD000000000000063, 0x80000002237388B0, &v106);
    _os_log_impl(&dword_223620000, v44, v45, "MUX: #user-session: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x223DE8A80](v52, -1, -1);
    v53 = v51;
    a2 = v50;
    v23 = v49;
    a3 = v48;
    v27 = v96;
    MEMORY[0x223DE8A80](v53, -1, -1);
  }

  v54 = v105;
  if (!a3)
  {
    v64 = sub_22372AC88();
    v65 = sub_22372B268();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_223620000, v64, v65, "MUX: #user-selection: userIdentificationMessage or voiceIdScoreCard is nil", v66, 2u);
      MEMORY[0x223DE8A80](v66, -1, -1);
    }

    return 0;
  }

  (*(v23 + 16))(v42, v103, v22);
  (*(v23 + 56))(v42, 0, 1, v22);
  v96 = a3;
  v103 = a2;
  sub_22372A268();
  v55 = v27[12];
  sub_223634890(v42, v31, &unk_27D08E990, &qword_22372FCF0);
  sub_223634890(v54, &v31[v55], &unk_27D08E990, &qword_22372FCF0);
  v56 = *(v23 + 48);
  if (v56(v31, 1, v22) == 1)
  {
    sub_223626478(v54, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v42, &unk_27D08E990, &qword_22372FCF0);
    if (v56(&v31[v55], 1, v22) == 1)
    {
      sub_223626478(v31, &unk_27D08E990, &qword_22372FCF0);
      sub_22372A248();
      v58 = v101;
      v57 = v102;
      v60 = v99;
      v59 = v100;
      v61 = v98;
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v67 = v97;
  sub_223634890(v31, v97, &unk_27D08E990, &qword_22372FCF0);
  if (v56(&v31[v55], 1, v22) == 1)
  {
    sub_223626478(v105, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v42, &unk_27D08E990, &qword_22372FCF0);
    (*(v23 + 8))(v67, v22);
LABEL_17:
    sub_223626478(v31, &qword_27D08FC60, &qword_223734298);
    if ((sub_22372A248() & 1) == 0)
    {
LABEL_33:
      v86 = v96;
      if (sub_223728C38())
      {
        if (sub_223728C18() == 3)
        {

          return 1;
        }

        else
        {
          v90 = sub_223728C18();

          return v90 == 4;
        }
      }

      v87 = sub_22372AC88();
      v88 = sub_22372B268();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_223620000, v87, v88, "MUX: #user-selection: classifiedUserMeetsRecencyThreshold false", v89, 2u);
        MEMORY[0x223DE8A80](v89, -1, -1);
      }

      return 0;
    }

LABEL_18:
    v68 = sub_22372AC88();
    v69 = sub_22372B268();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_223620000, v68, v69, "MUX: #user-selection: session is active for another user", v70, 2u);
      MEMORY[0x223DE8A80](v70, -1, -1);
    }

    return 0;
  }

  v71 = v94;
  (*(v23 + 32))(v94, &v31[v55], v22);
  sub_22372708C(qword_27D08EC10, MEMORY[0x277D5D298]);
  v72 = sub_22372AFC8();
  v73 = *(v23 + 8);
  v73(v71, v22);
  sub_223626478(v105, &unk_27D08E990, &qword_22372FCF0);
  sub_223626478(v42, &unk_27D08E990, &qword_22372FCF0);
  v73(v67, v22);
  sub_223626478(v31, &unk_27D08E990, &qword_22372FCF0);
  if (sub_22372A248())
  {
    v58 = v101;
    v57 = v102;
    v60 = v99;
    v59 = v100;
    v61 = v98;
    if ((v72 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v58 = v101;
    v57 = v102;
    v60 = v99;
    v59 = v100;
    v61 = v98;
    if ((v72 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_9:
  sub_22372A258();
  (*(v59 + 104))(v61, *MEMORY[0x277D5D238], v57);
  (*(v59 + 56))(v61, 0, 1, v57);
  v62 = *(v95 + 48);
  sub_223634890(v60, v58, &qword_27D08EEA0, &qword_22372EC30);
  sub_223634890(v61, v58 + v62, &qword_27D08EEA0, &qword_22372EC30);
  v63 = *(v59 + 48);
  if (v63(v58, 1, v57) != 1)
  {
    v74 = v93;
    sub_223634890(v58, v93, &qword_27D08EEA0, &qword_22372EC30);
    if (v63(v58 + v62, 1, v57) != 1)
    {
      v75 = v58 + v62;
      v76 = v92;
      (*(v59 + 32))(v92, v75, v57);
      sub_22372708C(&qword_27D08FC68, MEMORY[0x277D5D240]);
      v77 = v74;
      v78 = sub_22372AFC8();
      v79 = *(v59 + 8);
      v79(v76, v57);
      sub_223626478(v61, &qword_27D08EEA0, &qword_22372EC30);
      sub_223626478(v60, &qword_27D08EEA0, &qword_22372EC30);
      v79(v77, v57);
      sub_223626478(v58, &qword_27D08EEA0, &qword_22372EC30);
      if (v78)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    sub_223626478(v61, &qword_27D08EEA0, &qword_22372EC30);
    sub_223626478(v60, &qword_27D08EEA0, &qword_22372EC30);
    (*(v59 + 8))(v74, v57);
    goto LABEL_26;
  }

  sub_223626478(v61, &qword_27D08EEA0, &qword_22372EC30);
  sub_223626478(v60, &qword_27D08EEA0, &qword_22372EC30);
  if (v63(v58 + v62, 1, v57) != 1)
  {
LABEL_26:
    sub_223626478(v58, &qword_27D08FC58, &qword_223734290);
    goto LABEL_33;
  }

  sub_223626478(v58, &qword_27D08EEA0, &qword_22372EC30);
LABEL_30:
  v80 = sub_22372AC88();
  v81 = sub_22372B268();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_223620000, v80, v81, "MUX: #user-selection: classified user has active high confidence user session.", v82, 2u);
    MEMORY[0x223DE8A80](v82, -1, -1);
  }

  v83 = v96;
  v84 = sub_223728C18();

  return v84 != 0;
}

uint64_t sub_22372701C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC70, &qword_2237342A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22372708C(unint64_t *a1, void (*a2)(uint64_t))
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