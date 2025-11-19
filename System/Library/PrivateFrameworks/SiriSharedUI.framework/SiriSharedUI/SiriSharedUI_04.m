void SFCardSection.imageUrl()(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_21E4DB588();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v1 previewButtonItems];
  if (v5)
  {
    v6 = v5;
    sub_21E43F008(0, &qword_27CEC5E88);
    v7 = sub_21E4DD088();

    if (!(v7 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_30:

      v28 = v40;
      v29 = *(v41 + 56);
      v30 = v39;

      v29(v30, 1, 1, v28);
      return;
    }
  }

  v8 = sub_21E4DD488();
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_4:
  v9 = 0;
  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  v11 = &unk_278355000;
  v38 = v7 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x223D5B080](v9, v7);
    }

    else
    {
      if (v9 >= *(v10 + 16))
      {
        goto LABEL_35;
      }

      v15 = *(v7 + 8 * v9 + 32);
    }

    v13 = v15;
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = [v17 v11[341]];
      if (v18)
      {
        v14 = v18;
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          v20 = [v19 copyableItem];
          if (v20)
          {
            v21 = v20;
            objc_opt_self();
            v22 = swift_dynamicCastObjCClass();
            if (v22)
            {
              v23 = [v22 image];
              if (v23)
              {
                v24 = v23;
                objc_opt_self();
                v25 = swift_dynamicCastObjCClass();
                if (v25)
                {
                  v26 = [v25 urlValue];
                  if (v26)
                  {
                    v31 = v26;

                    v32 = v37;
                    sub_21E4DB568();

                    v33 = v39;
                    v34 = v32;
                    v35 = v40;
                    (*(v41 + 32))(v39, v34, v40);
                    (*(v41 + 56))(v33, 0, 1, v35);
                    return;
                  }

                  v27 = v24;
                  v24 = v13;
                  v10 = v38;
                }

                else
                {
                  v27 = v21;
                  v21 = v14;
                  v14 = v13;
                }

                v12 = v21;
                v21 = v24;
              }

              else
              {
                v12 = v21;
                v21 = v13;
              }
            }

            else
            {
              v12 = v13;
            }

            v13 = v14;
            v14 = v21;
          }

          v11 = &unk_278355000;
        }

        v13 = v14;
      }
    }

    ++v9;
    if (v16 == v8)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_21E47AEC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E47AF4C(uint64_t a1)
{
  v2 = sub_21E47B0D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E47AF88(uint64_t a1)
{
  v2 = sub_21E47B0D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisualIntelligenceHostToClient.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5EA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_21E47B0D8();
  sub_21E4DD618();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21E47B0D8()
{
  result = qword_27CEC5EA8;
  if (!qword_27CEC5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5EA8);
  }

  return result;
}

uint64_t sub_21E47B154(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5EA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_21E47B0D8();
  sub_21E4DD618();
  return (*(v3 + 8))(v5, v2);
}

id VisualIntelligenceActionHostToClient.__allocating_init(info:responder:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

uint64_t sub_21E47B2CC(void *a1)
{
  v3 = [v1 info];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 flagForSetting_];

    v6 = v5 != 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [v1 info];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 flagForSetting_];

    v10 = v9 != 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = [v1 info];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 flagForSetting_];

    v14 = v13 != 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = [a1 delegate];
  if (!v15 || (v26[0] = v15, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5EB8), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5EC0), (swift_dynamicCast() & 1) == 0))
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    return sub_21E47C314(&v23);
  }

  if (!*(&v24 + 1))
  {
    return sub_21E47C314(&v23);
  }

  sub_21E424A24(&v23, v26);
  if (v6)
  {
    if (v10)
    {
      if (!v14)
      {
        v16 = v27;
        v17 = v28;
        __swift_project_boxed_opaque_existential_0Tm(v26, v27);
        (*(v17 + 32))(v16, v17);
      }
    }

    else
    {
      v21 = v27;
      v22 = v28;
      __swift_project_boxed_opaque_existential_0Tm(v26, v27);
      (*(v22 + 16))(v21, v22);
    }
  }

  else
  {
    v19 = v27;
    v20 = v28;
    __swift_project_boxed_opaque_existential_0Tm(v26, v27);
    (*(v20 + 24))(v19, v20);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v26);
}

id VisualIntelligenceActionHostToClient.init(info:responder:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VisualIntelligenceActionHostToClient();
  v5 = objc_msgSendSuper2(&v7, sel_initWithInfo_responder_, a1, a2);

  return v5;
}

id VisualIntelligenceActionHostToClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualIntelligenceActionHostToClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualIntelligenceActionHostToClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VisualIntelligenceActionHostToClient.__allocating_init(xpcDictionary:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithXPCDictionary_];
  swift_unknownObjectRelease();
  return v2;
}

id VisualIntelligenceActionHostToClient.init(xpcDictionary:)(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VisualIntelligenceActionHostToClient();
  v3 = objc_msgSendSuper2(&v5, sel_initWithXPCDictionary_, a1);
  swift_unknownObjectRelease();
  if (v3)
  {
  }

  return v3;
}

id VisualIntelligenceActionHostToClient.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VisualIntelligenceActionHostToClient.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VisualIntelligenceActionHostToClient();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id VisualIntelligenceActionHostToClient.__allocating_init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_21E4263C4;
    v13[3] = &block_descriptor_7;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithInfo:a1 timeout:a2 forResponseOnQueue:v10 withHandler:a5];
  _Block_release(v10);

  return v11;
}

id VisualIntelligenceActionHostToClient.init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_21E4263C4;
    v14[3] = &block_descriptor_3_0;
    v10 = _Block_copy(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for VisualIntelligenceActionHostToClient();
  v15.receiver = v5;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, a1, a2, v10, a5);
  sub_21E3F1EB0(a3);

  _Block_release(v10);
  return v12;
}

id VisualIntelligenceActionHostToClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualIntelligenceActionHostToClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s12SiriSharedUI36VisualIntelligenceActionHostToClientC22siriWillPresentResultsACvgZ_0()
{
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v0 = sub_21E4DBCC8();
  __swift_project_value_buffer(v0, qword_280C14558);
  v1 = sub_21E4DD1F8();
  v15 = 0xD000000000000016;
  v16 = 0x800000021E4EF000;
  v2 = sub_21E45C20C(0x100000000);
  if (v3)
  {
    v13 = 32;
    v14 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("siriWillPresentResults" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v13 = 32;
    v14 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000036, 0x800000021E4EF020);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v5 = v15;
  v4 = v16;
  v6 = sub_21E4DBCB8();
  if (os_log_type_enabled(v6, v1))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_21E426648(v5, v4, &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_21E3EB000, v6, v1, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x223D5BF10](v8, -1, -1);
    MEMORY[0x223D5BF10](v7, -1, -1);
  }

  else
  {
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  [v10 setFlag:1 forSetting:1];
  v11 = [objc_allocWithZone(type metadata accessor for VisualIntelligenceActionHostToClient()) initWithInfo:v10 responder:0];

  return v11;
}

id _s12SiriSharedUI36VisualIntelligenceActionHostToClientC21siriDidDismissResultsACvgZ_0()
{
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v0 = sub_21E4DBCC8();
  __swift_project_value_buffer(v0, qword_280C14558);
  v1 = sub_21E4DD1F8();
  v15 = 0xD000000000000015;
  v16 = 0x800000021E4EEFA0;
  v2 = sub_21E45C20C(0x100000000);
  if (v3)
  {
    v13 = 32;
    v14 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("siriDidDismissResults" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v13 = 32;
    v14 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000038, 0x800000021E4EEFC0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v5 = v15;
  v4 = v16;
  v6 = sub_21E4DBCB8();
  if (os_log_type_enabled(v6, v1))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_21E426648(v5, v4, &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_21E3EB000, v6, v1, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x223D5BF10](v8, -1, -1);
    MEMORY[0x223D5BF10](v7, -1, -1);
  }

  else
  {
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  [v10 setFlag:1 forSetting:2];
  v11 = [objc_allocWithZone(type metadata accessor for VisualIntelligenceActionHostToClient()) initWithInfo:v10 responder:0];

  return v11;
}

id _s12SiriSharedUI36VisualIntelligenceActionHostToClientC22siriWillProcessRequestACvgZ_0()
{
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v0 = sub_21E4DBCC8();
  __swift_project_value_buffer(v0, qword_280C14558);
  v1 = sub_21E4DD1F8();
  v15 = 0xD000000000000016;
  v16 = 0x800000021E4EEF40;
  v2 = sub_21E45C20C(0x100000000);
  if (v3)
  {
    v13 = 32;
    v14 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("siriWillProcessRequest" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v13 = 32;
    v14 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000003ELL, 0x800000021E4EEF60);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v5 = v15;
  v4 = v16;
  v6 = sub_21E4DBCB8();
  if (os_log_type_enabled(v6, v1))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_21E426648(v5, v4, &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_21E3EB000, v6, v1, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x223D5BF10](v8, -1, -1);
    MEMORY[0x223D5BF10](v7, -1, -1);
  }

  else
  {
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  [v10 setFlag:1 forSetting:3];
  v11 = [objc_allocWithZone(type metadata accessor for VisualIntelligenceActionHostToClient()) initWithInfo:v10 responder:0];

  return v11;
}

uint64_t sub_21E47C314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21E47C42C()
{
  result = qword_27CEC5ED0;
  if (!qword_27CEC5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5ED0);
  }

  return result;
}

unint64_t sub_21E47C484()
{
  result = qword_27CEC5ED8;
  if (!qword_27CEC5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5ED8);
  }

  return result;
}

id SiriSharedUIGenerativeAssistantOnboardingManager.init(delegate:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];

  return v2;
}

char *SiriSharedUIGenerativeAssistantOnboardingManager.init(delegate:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___SiriSharedUIGenerativeAssistantOnboardingManager_navigationController;
  sub_21E4DBC78();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakAssign();
  v15.receiver = v1;
  v15.super_class = SiriSharedUIGenerativeAssistantOnboardingManager;
  v4 = objc_msgSendSuper2(&v15, sel_init);
  v14[4] = type metadata accessor for SiriSharedUIGenerativeAssistantOnboardingManager();
  v14[5] = sub_21E47C7CC();
  v14[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CEC5EF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_21E4DBC88();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = v4;
  v10 = sub_21E4DBC68();
  v11 = *&v9[OBJC_IVAR___SiriSharedUIGenerativeAssistantOnboardingManager_navigationController];
  *&v9[OBJC_IVAR___SiriSharedUIGenerativeAssistantOnboardingManager_navigationController] = v10;
  v12 = v10;

  [v12 setModalPresentationStyle_];
  return v9;
}

unint64_t type metadata accessor for SiriSharedUIGenerativeAssistantOnboardingManager()
{
  result = qword_280C140E0;
  if (!qword_280C140E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C140E0);
  }

  return result;
}

unint64_t sub_21E47C7CC()
{
  result = qword_280C140E8;
  if (!qword_280C140E8)
  {
    type metadata accessor for SiriSharedUIGenerativeAssistantOnboardingManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C140E8);
  }

  return result;
}

uint64_t SiriSharedUIGenerativeAssistantOnboardingManager.presentOnboardingFlow(forCommand:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CEC5EF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = [a1 source];
  sub_21E4DCF78();

  sub_21E47CB0C(&v15 - v5);

  sub_21E4DBC78();
  v17 = type metadata accessor for SiriSharedUIGenerativeAssistantOnboardingManager();
  v18 = sub_21E47C7CC();
  v16 = v1;
  MEMORY[0x28223BE20](v18);
  sub_21E47CDD8(&v15 - v5, &v15 - v5);
  v7 = v1;
  [a1 explicitRequest];
  v8 = sub_21E4DBC68();
  [v7 setNavigationController_];

  v9 = [v7 delegate];
  if (v9)
  {
    v10 = v9;
    [v9 willPresentOnboardingFlow];
  }

  v11 = [v7 delegate];
  if (v11)
  {
    v12 = v11;
    v13 = [v7 navigationController];
    [v12 presentViewController:v13 animated:1 completion:0];
  }

  return sub_21E424BC0(&v15 - v5, qword_27CEC5EF0);
}

uint64_t sub_21E47CB0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E4DCFB8();
  v4 = v2;
  if (v3 == 0x6171616964656DLL && v2 == 0xE700000000000000 || (sub_21E4DD518() & 1) != 0)
  {

    v5 = MEMORY[0x277D0D7E0];
LABEL_5:
    v6 = *v5;
    v7 = sub_21E4DBC88();
    v15 = *(v7 - 8);
    (*(v15 + 104))(a1, v6, v7);
    v8 = *(v15 + 56);
    v9 = a1;
    v10 = 0;
    v11 = v7;
    goto LABEL_6;
  }

  if (v3 == 0xD000000000000011 && 0x800000021E4EF2A0 == v4 || (sub_21E4DD518() & 1) != 0)
  {

    v5 = MEMORY[0x277D0D7C0];
    goto LABEL_5;
  }

  if (v3 == 0x7665736F706D6F63 && v4 == 0xEE00697269736169 || (sub_21E4DD518() & 1) != 0)
  {

    v5 = MEMORY[0x277D0D7B0];
    goto LABEL_5;
  }

  if (v3 == 0x73676E6974746573 && v4 == 0xE800000000000000 || (sub_21E4DD518() & 1) != 0)
  {

    v5 = MEMORY[0x277D0D7E8];
    goto LABEL_5;
  }

  if (v3 == 0x6973736174786574 && v4 == 0xED0000746E617473)
  {

LABEL_25:
    v5 = MEMORY[0x277D0D7A8];
    goto LABEL_5;
  }

  v13 = sub_21E4DD518();

  if (v13)
  {
    goto LABEL_25;
  }

  v14 = sub_21E4DBC88();
  v8 = *(*(v14 - 8) + 56);
  v11 = v14;
  v9 = a1;
  v10 = 1;
LABEL_6:

  return v8(v9, v10, 1, v11);
}

uint64_t sub_21E47CDD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CEC5EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SiriSharedUIGenerativeAssistantOnboardingManager.modelName()()
{
  sub_21E4DBC28();
  sub_21E4DBC18();
  sub_21E4DBC08();

  if (v3)
  {
    __swift_project_boxed_opaque_existential_0Tm(v2, v3);
    v0 = sub_21E4DBC48();
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    sub_21E424BC0(v2, &qword_27CEC5370);
    return 0x6C616E7265747845;
  }

  return v0;
}

id SiriSharedUIGenerativeAssistantOnboardingManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void SiriSharedUIGenerativeAssistantOnboardingManager.dismissed(with:request:)(uint64_t a1)
{
  v3 = [v1 delegate];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  v5 = sub_21E4DBC98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (MEMORY[0x277D0D818] && v9 == *MEMORY[0x277D0D818])
  {
    v10 = 0;
  }

  else if (MEMORY[0x277D0D828] && v9 == *MEMORY[0x277D0D828])
  {
    v10 = 1;
  }

  else if (MEMORY[0x277D0D7F8] && v9 == *MEMORY[0x277D0D7F8])
  {
    v10 = 2;
  }

  else if (MEMORY[0x277D0D800] && v9 == *MEMORY[0x277D0D800])
  {
    v10 = 3;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v10 = 4;
  }

  v11 = [v1 delegate];
  if (v11)
  {
    v12 = v11;
    [v11 completedOnboardingFlowWithEnablementResult_];
  }
}

unint64_t _sSo48SiriSharedUIGenerativeAssistantOnboardingManagerC0aB2UIE10symbolNameSSyFZ_0()
{
  sub_21E4DBC28();
  sub_21E4DBC18();
  sub_21E4DBC08();

  if (v5)
  {
    __swift_project_boxed_opaque_existential_0Tm(v4, v5);
    v0 = sub_21E4DBC38();
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    if (v2)
    {
      return v0;
    }
  }

  else
  {
    sub_21E424BC0(v4, &qword_27CEC5370);
  }

  return 0xD000000000000012;
}

uint64_t SiriSharedUISuggestionsSecureController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_21E47DAF8(a1);
  (*(*(*(v2 + class metadata base offset for SiriSharedUISuggestionsSecureController) - 8) + 8))(a1);
  return v5;
}

void sub_21E47D504()
{
  v1 = MEMORY[0x277D85000];
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SiriSharedUISuggestionsSecureController();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 invalidateIntrinsicContentSize];

    v4 = (v0 + *((*v1 & *v0) + class metadata base offset for SiriSharedUISuggestionsSecureController + 16));
    v5 = *v4;
    if (*v4)
    {
      v6 = v4[1];
      v7 = sub_21E43EB5C(*v4);
      v5(v7);
      sub_21E43EB60(v5, v6);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21E47D62C(void *a1)
{
  v1 = a1;
  sub_21E47D504();
}

uint64_t SiriSharedUISuggestionsSecureController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_21E47DAF8(a1);
  (*(*(*(v3 + class metadata base offset for SiriSharedUISuggestionsSecureController) - 8) + 8))(a1);
  return v4;
}

void *SiriSharedUISuggestionsSecureController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for SiriSharedUISuggestionsSecureController);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - v6;
  v9 = (v2 + *(v8 + 16));
  *v9 = 0;
  v9[1] = 0;
  (*(v5 + 16))(v7);
  v10 = sub_21E4DC2B8();
  v11 = *(v5 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

id SiriSharedUISuggestionsSecureController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriSharedUISuggestionsSecureController.init(coder:)(void *a1)
{
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for SiriSharedUISuggestionsSecureController + 16));
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SiriSharedUISuggestionsSecureController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id SiriSharedUISuggestionsSecureController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUISuggestionsSecureController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E47DAF8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v8 - v2;
  v5 = (v1 + *(v4 + 16));
  *v5 = 0;
  v5[1] = 0;
  (*(v6 + 16))(v3);
  return sub_21E4DC2C8();
}

uint64_t SiriSharedUITamaleView.sceneIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___SiriSharedUITamaleView_sceneIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SiriSharedUITamaleView.sceneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SiriSharedUITamaleView_sceneIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_21E47DE9C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sceneIdentifier];
  v4 = sub_21E4DCF78();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t SiriSharedUITamaleView.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___SiriSharedUITamaleView_bundleIdentifier);

  return v1;
}

uint64_t SiriSharedUITamaleView.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id SiriSharedUITamaleView.init(delegate:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

char *SiriSharedUITamaleView.init(delegate:)()
{
  swift_unknownObjectWeakInit();
  v1 = sub_21E47F340();
  v2 = [objc_allocWithZone(MEMORY[0x277D761E8]) initWithProcessIdentity_];

  v3 = [objc_allocWithZone(MEMORY[0x277D761E0]) initWithAdvancedConfiguration_];
  v4 = OBJC_IVAR___SiriSharedUITamaleView_hostingController;
  *&v0[OBJC_IVAR___SiriSharedUITamaleView_hostingController] = v3;
  result = [v2 sceneIdentifier];
  if (result)
  {
    v6 = result;
    v7 = sub_21E4DCF78();
    v9 = v8;

    v10 = &v0[OBJC_IVAR___SiriSharedUITamaleView_sceneIdentifier];
    *v10 = v7;
    v10[1] = v9;
    v11 = &v0[OBJC_IVAR___SiriSharedUITamaleView_bundleIdentifier];
    *v11 = 0xD000000000000022;
    *(v11 + 1) = 0x800000021E4EF2F0;
    v12 = [objc_allocWithZone(MEMORY[0x277D761F0]) init];
    [*&v0[v4] setActivationController_];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v20.receiver = v0;
    v20.super_class = SiriSharedUITamaleView;
    v13 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 blackColor];
    [v15 setBackgroundColor_];

    v17 = OBJC_IVAR___SiriSharedUITamaleView_hostingController;
    v18 = *&v15[OBJC_IVAR___SiriSharedUITamaleView_hostingController];
    [v18 setDelegate_];

    v19 = [*&v15[v17] sceneView];
    [v19 setAutoresizingMask_];
    [v15 addSubview_];

    swift_unknownObjectRelease();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SiriSharedUITamaleView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void SiriSharedUITamaleView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  sub_21E4DD468();
  __break(1u);
}

id SiriSharedUITamaleView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

Swift::Void __swiftcall SiriSharedUITamaleView.siriWillPresentResult()()
{
  v1 = v0;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v2 = sub_21E4DBCC8();
  __swift_project_value_buffer(v2, qword_280C14558);
  v3 = sub_21E4DD1F8();
  v16 = 0xD000000000000017;
  v17 = 0x800000021E4EF390;
  v4 = sub_21E45C20C(0x100000000);
  if (v5)
  {
    v14 = 32;
    v15 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v4);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("siriWillPresentResult()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v14 = 32;
    v15 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000002ELL, 0x800000021E4EF3B0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v7 = v16;
  v6 = v17;
  v8 = sub_21E4DBCB8();
  if (os_log_type_enabled(v8, v3))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_21E426648(v7, v6, &v14);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_21E3EB000, v8, v3, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x223D5BF10](v10, -1, -1);
    MEMORY[0x223D5BF10](v9, -1, -1);
  }

  else
  {
  }

  v12 = [v1 hostingController];
  v13 = _s12SiriSharedUI36VisualIntelligenceActionHostToClientC22siriWillPresentResultsACvgZ_0();
  [v12 sendAction_];
}

Swift::Void __swiftcall SiriSharedUITamaleView.siriWillProcessRequest()()
{
  v1 = v0;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v2 = sub_21E4DBCC8();
  __swift_project_value_buffer(v2, qword_280C14558);
  v3 = sub_21E4DD1F8();
  v16 = 0xD000000000000018;
  v17 = 0x800000021E4EF3E0;
  v4 = sub_21E45C20C(0x100000000);
  if (v5)
  {
    v14 = 32;
    v15 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v4);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("siriWillProcessRequest()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v14 = 32;
    v15 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000002FLL, 0x800000021E4EF400);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v7 = v16;
  v6 = v17;
  v8 = sub_21E4DBCB8();
  if (os_log_type_enabled(v8, v3))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_21E426648(v7, v6, &v14);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_21E3EB000, v8, v3, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x223D5BF10](v10, -1, -1);
    MEMORY[0x223D5BF10](v9, -1, -1);
  }

  else
  {
  }

  v12 = [v1 hostingController];
  v13 = _s12SiriSharedUI36VisualIntelligenceActionHostToClientC22siriWillProcessRequestACvgZ_0();
  [v12 sendAction_];
}

Swift::Void __swiftcall SiriSharedUITamaleView.siriDidDismissResults()()
{
  v1 = v0;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v2 = sub_21E4DBCC8();
  __swift_project_value_buffer(v2, qword_280C14558);
  v3 = sub_21E4DD1F8();
  v16 = 0xD000000000000017;
  v17 = 0x800000021E4EF430;
  v4 = sub_21E45C20C(0x100000000);
  if (v5)
  {
    v14 = 32;
    v15 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v4);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("siriDidDismissResults()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v14 = 32;
    v15 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000002ELL, 0x800000021E4EF450);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v7 = v16;
  v6 = v17;
  v8 = sub_21E4DBCB8();
  if (os_log_type_enabled(v8, v3))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_21E426648(v7, v6, &v14);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_21E3EB000, v8, v3, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x223D5BF10](v10, -1, -1);
    MEMORY[0x223D5BF10](v9, -1, -1);
  }

  else
  {
  }

  v12 = [v1 hostingController];
  v13 = _s12SiriSharedUI36VisualIntelligenceActionHostToClientC21siriDidDismissResultsACvgZ_0();
  [v12 sendAction_];
}

Swift::Void __swiftcall SiriSharedUITamaleView.clientIsReady()()
{
  v1 = v0;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v2 = sub_21E4DBCC8();
  __swift_project_value_buffer(v2, qword_280C14558);
  v3 = sub_21E4DD1F8();
  v14 = 0x7349746E65696C63;
  v15 = 0xEF29287964616552;
  v4 = sub_21E45C20C(0x100000000);
  if (v5)
  {
    MEMORY[0x223D5ACB0](v4);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v13[0] = 32;
  v13[1] = 0xE100000000000000;
  MEMORY[0x223D5ACB0](0x6920746E65696C63, 0xEF79646165722073);
  MEMORY[0x223D5ACB0](32, 0xE100000000000000);

  v7 = v14;
  v6 = v15;
  v8 = sub_21E4DBCB8();
  if (os_log_type_enabled(v8, v3))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136315138;
    v11 = sub_21E426648(v7, v6, v13);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_21E3EB000, v8, v3, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x223D5BF10](v10, -1, -1);
    MEMORY[0x223D5BF10](v9, -1, -1);
  }

  else
  {
  }

  v12 = [v1 delegate];
  if (v12)
  {
    [v12 tamaleViewDidLoad];

    swift_unknownObjectRelease();
  }
}

id sub_21E47F340()
{
  v0 = sub_21E4DCF68();
  v1 = [objc_opt_self() applicationProxyForIdentifier_];

  if (v1)
  {
    v2 = [v1 appState];

    if (v2)
    {
      [v2 isInstalled];
    }
  }

  v3 = sub_21E4DCF68();

  v4 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];

  return v4;
}

unint64_t type metadata accessor for SiriSharedUITamaleView()
{
  result = qword_27CEC5FA8;
  if (!qword_27CEC5FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC5FA8);
  }

  return result;
}

id SiriSharedUIDropletView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSharedUIDropletView.init()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SiriSharedUIDropletView();
  v1 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = [v1 layer];
  type metadata accessor for SiriSharedUIDropletLayer();
  swift_dynamicCastClassUnconditional();
  sub_21E4AB7CC();

  return v1;
}

uint64_t sub_21E47F6FC()
{
  v1 = [v0 layer];
  type metadata accessor for SiriSharedUIDropletLayer();

  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_21E47F760(uint64_t a1, double a2, double a3)
{
  v6 = [v3 subviews];
  sub_21E47FA60();
  v7 = sub_21E4DD088();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E4DD488())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223D5B080](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (([v10 isHidden] & 1) != 0 || (objc_msgSend(v11, sel_isUserInteractionEnabled) & 1) == 0)
      {
      }

      else
      {
        [v17 convertPoint:v11 toCoordinateSpace:{a2, a3}];
        v13 = [v11 pointInside:a1 withEvent:?];

        if (v13)
        {
          v14 = 1;
          goto LABEL_19;
        }
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v14 = 0;
LABEL_19:

  return v14;
}

id SiriSharedUIDropletView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SiriSharedUIDropletView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIDropletView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21E47FA60()
{
  result = qword_280C140A0;
  if (!qword_280C140A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C140A0);
  }

  return result;
}

id SiriSharedUIStringDifferenceUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSharedUIStringDifferenceUtility.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIStringDifferenceUtility();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SiriSharedUIStringDifferenceUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIStringDifferenceUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12SiriSharedUI0aB25UIStringDifferenceUtilityC09findFirstE012originalText011alternativeJ0So8_NSRangeVSS_SStFZ_0()
{
  v0 = sub_21E4DCFB8();
  v2 = v1;
  v3 = sub_21E4DCFB8();
  sub_21E454F90(v0, v2, v3, v4);

  v5 = sub_21E4DCFB8();
  v7 = v6;
  v8 = sub_21E4DCFB8();
  v10 = sub_21E453144(v5, v7, v8, v9, 0);
  v12 = v11;

  v14 = 0;
  v15 = 0;
  v16 = *(v10 + 2);
LABEL_2:
  while (2)
  {
    if (v15 == v16)
    {
LABEL_29:

      return 0;
    }

    v17 = 16 * v15;
    v18 = v15;
    v19 = v14;
    while (1)
    {
      if (v18 >= v16)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_35;
      }

      v20 = *(v12 + 16);
      if (v18 == v20)
      {
        goto LABEL_29;
      }

      if (v18 >= v20)
      {
        goto LABEL_36;
      }

      v21 = *(v12 + v17 + 32);
      v22 = *(v12 + v17 + 40);
      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23)
      {
        goto LABEL_4;
      }

      v25 = *&v10[v17 + 32];
      v24 = *&v10[v17 + 40];
      if (v25 != v21 || v24 != v22)
      {
        result = sub_21E4DD518();
        if ((result & 1) == 0)
        {
          break;
        }
      }

      if (v14)
      {
        v19 = 1;
        if ((v24 & 0x2000000000000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_21:
        v14 = 1;
        if ((v24 & 0xF00000000000000) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_22;
      }

      v19 = 0;
LABEL_4:
      ++v18;
      v17 += 16;
      if (v15 == v16)
      {
        goto LABEL_29;
      }
    }

    if ((v24 & 0x2000000000000000) != 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v14 = 1;
    if ((v25 & 0xFFFFFFFFFFFFLL) == 0)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v26 = 0;
  v27 = *(v10 + 2);
  v28 = v10 + 40;
  if (v27 >= v18)
  {
    v27 = v18;
  }

  v29 = v27 + 1;
  while (--v29)
  {
    v30 = v28 + 16;

    v31 = sub_21E4DCFE8();

    v28 = v30;
    v32 = __OFADD__(v26, v31);
    v26 += v31;
    if (v32)
    {
      __break(1u);
      goto LABEL_29;
    }
  }

  result = swift_unknownObjectRelease();
  v33 = v26 + v18;
  if (__OFADD__(v26, v18))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v19 & 1) == 0 || (v32 = __OFSUB__(v33, 1), --v33, !v32))
  {
    v34 = v33;
    sub_21E4DCFE8();

    return v34;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21E47FF1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v69 = sub_21E4DC028();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6078);
  MEMORY[0x28223BE20](v5);
  v7 = &v64 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6080);
  v68 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v65 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6088);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v66 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6090);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v70 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  MEMORY[0x28223BE20](v16);
  v67 = &v64 - v19;
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = *(a1 + 80);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  v74 = a1;
  sub_21E480F7C(a1, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6098);
  sub_21E480FB4();
  sub_21E4DCA48();
  v23 = sub_21E4DC598();
  sub_21E4DBE28();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC60B8) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_21E4DCB08();
  v35 = v34;
  v36 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC60C0) + 36)];
  *v36 = v33;
  v36[1] = v35;
  v37 = &v7[*(v5 + 36)];
  v38 = *(sub_21E4DC038() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_21E4DC248();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #25.0 }

  *v37 = _Q0;
  *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC51C8) + 36)] = 256;
  sub_21E4DC018();
  sub_21E48106C();
  sub_21E4813D0(&qword_27CEC6100, MEMORY[0x277CDDB18]);
  v46 = v65;
  v47 = v69;
  sub_21E4DC768();
  (*(v71 + 8))(v4, v47);
  sub_21E481294(v7);
  v76 = *(a1 + 72);
  v77[0] = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
  sub_21E4DCA08();
  if (v75)
  {
    v48 = 1.2;
  }

  else
  {
    v48 = 1.0;
  }

  sub_21E4DCBA8();
  v50 = v49;
  v52 = v51;
  v53 = v66;
  (*(v68 + 32))(v66, v46, v72);
  v54 = v53 + *(v10 + 44);
  *v54 = v48;
  *(v54 + 8) = v48;
  *(v54 + 16) = v50;
  *(v54 + 24) = v52;
  v55 = sub_21E4DCB28();
  v76 = v77[0];
  sub_21E4DCA08();
  v56 = v75;
  sub_21E42D214(v53, v18, &qword_27CEC6088);
  v57 = &v18[*(v13 + 44)];
  *v57 = v55;
  v57[8] = v56;
  v58 = v67;
  sub_21E42D214(v18, v67, &qword_27CEC6090);
  v59 = v70;
  sub_21E3F0530(v58, v70);
  v60 = v73;
  *v73 = 0;
  *(v60 + 8) = 1;
  v61 = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6108);
  sub_21E3F0530(v59, v61 + *(v62 + 48));
  sub_21E3F05A0(v58);
  return sub_21E3F05A0(v59);
}

uint64_t sub_21E480594(uint64_t a1)
{
  v2 = sub_21E4DCBF8();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E4DCC18();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E4DCC38();
  v23 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v27[0] = *(a1 + 72);
  LOBYTE(aBlock[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
  sub_21E4DCA18();
  sub_21E42E2C0();
  v21 = sub_21E4DD278();
  sub_21E4DCC28();
  sub_21E4DCC88();
  v22 = *(v9 + 8);
  v22(v12, v8);
  v15 = swift_allocObject();
  v16 = *(a1 + 48);
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = v16;
  *(v15 + 80) = *(a1 + 64);
  *(v15 + 96) = *(a1 + 80);
  v17 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v17;
  aBlock[4] = sub_21E4813B0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E46C644;
  aBlock[3] = &block_descriptor_8;
  v18 = _Block_copy(aBlock);
  sub_21E480F7C(a1, v27);

  sub_21E4DCC08();
  *&v27[0] = MEMORY[0x277D84F90];
  sub_21E4813D0(&qword_280C14250, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42D5A8(&qword_280C141F0, &unk_27CEC6660);
  sub_21E4DD358();
  v19 = v21;
  MEMORY[0x223D5AF00](v14, v7, v4, v18);
  _Block_release(v18);

  (*(v26 + 8))(v4, v2);
  (*(v24 + 8))(v7, v25);
  return (v22)(v14, v23);
}

uint64_t sub_21E4809C8()
{
  LOBYTE(v1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
  sub_21E4DCA18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6110);
  sub_21E4DCA08();
  sub_21E4587DC(v1, v2);
}

uint64_t sub_21E480A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *(a1 + 16);
  *&v29 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6110);
  sub_21E4DCA08();
  v28 = v27;
  sub_21E42C090();
  v3 = sub_21E4DC688();
  v5 = v4;
  v7 = v6;
  v8 = sub_21E4DC658();
  v10 = v9;
  v12 = v11;
  sub_21E42C0F4(v3, v5, v7 & 1);

  sub_21E4DC5F8();
  v13 = sub_21E4DC668();
  v15 = v14;
  v17 = v16;

  sub_21E42C0F4(v8, v10, v12 & 1);

  if (qword_27CEC4710 != -1)
  {
    swift_once();
  }

  v18 = qword_27CEC8878;

  sub_21E4DCBB8();
  sub_21E4DCBC8();
  MEMORY[0x223D5A790](v18);
  sub_21E4DBF88();
  v19 = sub_21E4DC648();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_21E42C0F4(v13, v15, v17 & 1);

  result = sub_21E4812FC(&v28);
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_21E480C9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_21E4DC218();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6070);
  return sub_21E47FF1C(v7, (a1 + *(v5 + 44)));
}

__n128 sub_21E480D24@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriSharedUISuggestionsDataModel();
  sub_21E4813D0(&qword_27CEC5C38, type metadata accessor for SiriSharedUISuggestionsDataModel);
  v2 = sub_21E4DBF98();
  v4 = v3;
  sub_21E4DC9F8();
  sub_21E4DC9F8();
  sub_21E4DC9F8();
  sub_21E4DC9F8();
  *a1 = v2;
  *(a1 + 8) = v4;
  result = v6;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 56) = v6.n128_u8[0];
  *(a1 + 64) = v6.n128_u64[1];
  *(a1 + 72) = v6.n128_u8[0];
  *(a1 + 80) = v6.n128_u64[1];
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21E480EA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_21E480EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E480FB4()
{
  result = qword_27CEC60A0;
  if (!qword_27CEC60A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6098);
    sub_21E42D5A8(&qword_27CEC60A8, &qword_27CEC60B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC60A0);
  }

  return result;
}

unint64_t sub_21E48106C()
{
  result = qword_27CEC60C8;
  if (!qword_27CEC60C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6078);
    sub_21E481124();
    sub_21E42D5A8(&unk_280C144F0, &qword_27CEC51C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC60C8);
  }

  return result;
}

unint64_t sub_21E481124()
{
  result = qword_27CEC60D0;
  if (!qword_27CEC60D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC60C0);
    sub_21E4811DC();
    sub_21E42D5A8(&qword_27CEC60F0, &qword_27CEC60F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC60D0);
  }

  return result;
}

unint64_t sub_21E4811DC()
{
  result = qword_27CEC60D8;
  if (!qword_27CEC60D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC60B8);
    sub_21E42D5A8(&qword_27CEC60E0, &qword_27CEC60E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC60D8);
  }

  return result;
}

uint64_t sub_21E481294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E4813D0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21E481444(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_contentScrollView;
  *&v4[v9] = [objc_allocWithZone(SiriSharedUIStandardScrollView) init];
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_contentPadding] = 0x401C000000000000;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialPillSize] = 0x4049000000000000;
  v10 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedItemScale] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_unfocusedItemScale] = 0x3FECCCCCCCCCCCCDLL;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_touchDownItemScale] = 0x3FEE666666666666;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_continuerAppearanceAnimationDuration] = 0x3FD0000000000000;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_continuerTouchAnimationDuration] = 0x3FB999999999999ALL;
  v11 = &v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialContentOffset];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_itemWidths;
  *&v4[v12] = sub_21E43D120(v10);
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer] = 0;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_scrollCancelThreshold] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_shouldUpdate] = 0;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_scrollViewDidScrollFlickerPreventionThreshold] = 10;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SiriSharedUIScrollablePageantView();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_21E4815F4(void *a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_contentScrollView;
  *&v1[v3] = [objc_allocWithZone(SiriSharedUIStandardScrollView) init];
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_contentPadding] = 0x401C000000000000;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialPillSize] = 0x4049000000000000;
  v4 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedItemScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_unfocusedItemScale] = 0x3FECCCCCCCCCCCCDLL;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_touchDownItemScale] = 0x3FEE666666666666;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_continuerAppearanceAnimationDuration] = 0x3FD0000000000000;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_continuerTouchAnimationDuration] = 0x3FB999999999999ALL;
  v5 = &v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialContentOffset];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_itemWidths;
  *&v1[v6] = sub_21E43D120(v4);
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer] = 0;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_scrollCancelThreshold] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_shouldUpdate] = 0;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_scrollViewDidScrollFlickerPreventionThreshold] = 10;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SiriSharedUIScrollablePageantView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_21E48179C(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers] = a1;

  v4 = *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_contentScrollView];

  [v4 setDelegate_];
  [v1 bounds];
  [v4 setFrame_];
  [v4 setDecelerationRate_];
  [v4 setShowsHorizontalScrollIndicator_];
  v5 = [v4 layer];
  [v5 setMasksToBounds_];

  [v4 setAutoresizingMask_];
  [v2 addSubview_];
  if (v3 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E4DD488())
  {
    v7 = 0;
    v37 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_itemWidths;
    v34 = i;
    v35 = v3 & 0xC000000000000001;
    v32 = v3 & 0xFFFFFFFFFFFFFF8;
    v33 = v3;
    while (1)
    {
      if (v35)
      {
        v14 = MEMORY[0x223D5B080](v7, v3);
      }

      else
      {
        if (v7 >= *(v32 + 16))
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 8 * v7 + 32);
      }

      v15 = v14;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v3 = *&v14[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
      v16 = v15;
      [v3 frame];
      Width = CGRectGetWidth(v39);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *&v2[v37];
      *&v2[v37] = 0x8000000000000000;
      v20 = sub_21E4B16A0(v16);
      v22 = v19[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_21;
      }

      v26 = v21;
      if (v19[3] >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v20;
          sub_21E4D0974();
          v20 = v30;
        }
      }

      else
      {
        sub_21E475974(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_21E4B16A0(v16);
        if ((v26 & 1) != (v27 & 1))
        {
          sub_21E43F008(0, &qword_280C140A0);
          result = sub_21E4DD548();
          __break(1u);
          return result;
        }
      }

      v36 = v7 + 1;
      if (v26)
      {
        *(v19[7] + 8 * v20) = Width;
      }

      else
      {
        v19[(v20 >> 6) + 8] |= 1 << v20;
        *(v19[6] + 8 * v20) = v16;
        *(v19[7] + 8 * v20) = Width;
        v28 = v19[2];
        v24 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v24)
        {
          goto LABEL_22;
        }

        v19[2] = v29;
      }

      *&v2[v37] = v19;
      swift_endAccess();
      [v2 frame];
      [v16 setFrame_];
      [v4 addContentView_];
      v8 = objc_allocWithZone(MEMORY[0x277D75708]);
      v9 = v2;
      v10 = [v8 initWithTarget:v9 action:sel_handleLongPress_];
      [v10 setMinimumPressDuration_];
      v11 = v10;
      [v11 setCancelsTouchesInView_];
      [v11 setDelegate_];

      [v16 addGestureRecognizer_];
      v12 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v9 action:sel_handleTap_];

      v13 = v12;
      [v13 setDelegate_];
      [v13 setCancelsTouchesInView_];

      [v16 addGestureRecognizer_];
      ++v7;
      v3 = v33;
      if (v36 == v34)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:
  [v4 frame];
  return [v4 setContentSize_];
}

void sub_21E481C8C(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v23 = v1;
    type metadata accessor for SiriSharedUIDropletContainerView();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      if (qword_280C14550 != -1)
      {
        swift_once();
      }

      v4 = sub_21E4DBCC8();
      __swift_project_value_buffer(v4, qword_280C14558);
      v5 = sub_21E4DD208();
      strcpy(v26, "handleTap(_:)");
      HIWORD(v26[1]) = -4864;
      v6 = sub_21E45C20C(0x200000000);
      if (v7)
      {
        v24 = 32;
        v25 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v6);

        MEMORY[0x223D5ACB0](32, 0xE100000000000000);
      }

      if (("DropletContainerView" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v24 = 32;
        v25 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](0xD000000000000016, 0x800000021E4EFAD0);
        MEMORY[0x223D5ACB0](32, 0xE100000000000000);
      }

      v9 = v26[0];
      v8 = v26[1];
      v10 = sub_21E4DBCB8();
      if (os_log_type_enabled(v10, v5))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 136315138;
        v13 = sub_21E426648(v9, v8, &v24);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_21E3EB000, v10, v5, "%s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x223D5BF10](v12, -1, -1);
        MEMORY[0x223D5BF10](v11, -1, -1);
      }

      else
      {
      }

      if (sub_21E48441C(v3))
      {
        sub_21E4848A0(0);
      }

      else
      {
        sub_21E48423C(v3);
      }

      goto LABEL_25;
    }
  }

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v14 = sub_21E4DBCC8();
  __swift_project_value_buffer(v14, qword_280C14558);
  v15 = sub_21E4DD208();
  strcpy(v26, "handleTap(_:)");
  HIWORD(v26[1]) = -4864;
  v16 = sub_21E45C20C(0x200000000);
  if (v17)
  {
    v24 = 32;
    v25 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v16);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("not a DropletContainerView" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v24 = 32;
    v25 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000034, 0x800000021E4EFA90);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v19 = v26[0];
  v18 = v26[1];
  v23 = sub_21E4DBCB8();
  if (os_log_type_enabled(v23, v15))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136315138;
    v22 = sub_21E426648(v19, v18, &v24);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_21E3EB000, v23, v15, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x223D5BF10](v21, -1, -1);
    MEMORY[0x223D5BF10](v20, -1, -1);
  }

  else
  {
  }

LABEL_25:
}

void sub_21E482148(void *a1)
{
  v3 = [a1 view];
  if (!v3)
  {
    goto LABEL_8;
  }

  v30 = v3;
  type metadata accessor for SiriSharedUIDropletContainerView();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_8:
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v13 = sub_21E4DBCC8();
    __swift_project_value_buffer(v13, qword_280C14558);
    v14 = sub_21E4DD208();
    v34.a = -2.31584178e77;
    *&v34.b = 0x800000021E4EFA30;
    v15 = sub_21E45C20C(0x200000000);
    if (v16)
    {
      v32 = 32;
      v33 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v15);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("handleLongPress(_:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v32 = 32;
      v33 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000003ALL, 0x800000021E4EFA50);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v18 = *&v34.a;
    v17 = *&v34.b;
    v19 = sub_21E4DBCB8();
    if (os_log_type_enabled(v19, v14))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      v22 = sub_21E426648(v18, v17, &v32);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_21E3EB000, v19, v14, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x223D5BF10](v21, -1, -1);
      MEMORY[0x223D5BF10](v20, -1, -1);
    }

    else
    {
    }

    return;
  }

  v5 = v4;
  v6 = sub_21E48441C(v4);
  v7 = [a1 state];
  if ((v7 - 3) >= 2)
  {
    if (v7 == 1)
    {
      [*&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_contentScrollView] contentOffset];
      v23 = &v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialContentOffset];
      *v23 = v24;
      *(v23 + 1) = v25;
      v23[16] = 0;
      if (v6)
      {
        v26 = objc_opt_self();
        v27 = swift_allocObject();
        *(v27 + 16) = v5;
        *(v27 + 24) = v1;
        *&v34.tx = sub_21E4853EC;
        *&v34.ty = v27;
        *&v34.a = MEMORY[0x277D85DD0];
        *&v34.b = 1107296256;
        *&v34.c = sub_21E46C644;
        *&v34.d = &block_descriptor_41;
        v11 = _Block_copy(&v34);
        v28 = v30;
        v29 = v1;

        [v26 animateWithDuration:0 delay:v11 options:0 animations:0.1 completion:0.0];

        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = &v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialContentOffset];
    *v8 = 0;
    *(v8 + 1) = 0;
    v8[16] = 1;
    if (v6 & 1) != 0 || ([v5 transform], CGAffineTransformMakeScale(&v34, 0.95, 0.95), (sub_21E4DD238()))
    {
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      aBlock[4] = sub_21E4853AC;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21E46C644;
      aBlock[3] = &block_descriptor_35;
      v11 = _Block_copy(aBlock);
      v12 = v30;

      [v9 animateWithDuration:0 delay:v11 options:0 animations:0.1 completion:0.0];

LABEL_21:
      _Block_release(v11);
      return;
    }
  }
}

void sub_21E4826FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers;
  v3 = *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers];
  if (v3 >> 62)
  {
    if (!sub_21E4DD488())
    {
      return;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v4 = *&v1[v2];
  if (v4 >> 62)
  {
    v5 = sub_21E4DD488();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_5:
      if (v5 < 1)
      {
        __break(1u);
        return;
      }

      v6 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_itemWidths;

      swift_beginAccess();
      v7 = 0;
      v8 = 0.0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223D5B080](v7, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = *&v1[v6];
        if (*(v11 + 16))
        {

          v12 = sub_21E4B16A0(v10);
          if (v13)
          {
            v14 = *(*(v11 + 56) + 8 * v12);

            v8 = v8 + v14 + 7.0;
          }

          else
          {
          }
        }

        else
        {
        }

        ++v7;
      }

      while (v5 != v7);

      goto LABEL_21;
    }
  }

  v8 = 0.0;
LABEL_21:
  v15 = [objc_opt_self() whiteColor];
  sub_21E485094(v1, v15);

  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  *(v16 + 24) = v1;
  v17 = objc_opt_self();
  v18 = v1;
  v19 = [v17 behaviorWithDampingRatio:0.65 response:0.7];
  v20 = objc_opt_self();
  aBlock[4] = sub_21E485388;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E46C644;
  aBlock[3] = &block_descriptor_9;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  [v20 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v21);
}

void sub_21E4829F8(char *a1, CGFloat a2)
{
  [a1 frame];
  v4 = &unk_27CEC6000;
  if (CGRectGetWidth(v27) > a2)
  {
    v5 = *&a1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_contentScrollView];
    [a1 frame];
    v6 = (CGRectGetWidth(v28) - a2) * 0.5;
    [a1 frame];
    [v5 setContentInset_];
  }

  v7 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers;
  v8 = *&a1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers];
  if (v8 >> 62)
  {
LABEL_26:
    v24 = sub_21E4DD488();
    if (v24 < 0)
    {
      __break(1u);
    }

    v9 = v24;
    if (v24)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_5:
      v10 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_itemWidths;
      v11 = *(v4 + 320);
      swift_beginAccess();
      v4 = 0;
      v12 = 5.0;
      while (1)
      {
        v13 = *&a1[v7];
        if ((v13 & 0xC000000000000001) != 0)
        {

          v14 = MEMORY[0x223D5B080](v4, v13);
        }

        else
        {
          if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v14 = *(v13 + 8 * v4 + 32);
        }

        if (v4)
        {
          v15 = 0.9;
        }

        else
        {
          v15 = 1.0;
        }

        v16 = *&a1[v10];
        if (*(v16 + 16))
        {
          v17 = v14;

          v18 = sub_21E4B16A0(v17);
          if (v19)
          {
            v20 = *(*(v16 + 56) + 8 * v18);

            if (v4)
            {
              [*&a1[v11] frame];
              v21 = CGRectGetHeight(v30) * 0.1 * 0.5;
            }

            else
            {
              v21 = 0.0;
            }

            [*&a1[v11] frame];
            [v17 setFrame_];
            v12 = v12 + v15 * v20 + 7.0;
            if (v4)
            {
              CGAffineTransformMakeScale(&v26, 0.9, 0.9);
              [v17 setTransform_];
              [v17 setAlpha_];
            }

            else
            {
              v22 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldExecuteContinuerAction;
              swift_beginAccess();
              *(v17 + v22) = 1;
              CGAffineTransformMakeScale(&v26, 1.0, 1.0);
              [v17 setTransform_];
              [v17 setAlpha_];
            }
          }

          else
          {
          }
        }

        ++v4;

        if (v9 == v4)
        {
          v23 = v12 + 7.0;
          v4 = 0x27CEC6000;
          goto LABEL_30;
        }
      }
    }
  }

  v23 = 12.0;
LABEL_30:
  v25 = *&a1[*(v4 + 320)];
  [v25 frame];
  [v25 setContentSize_];
  sub_21E4834EC();
}

void sub_21E482D80()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer);
  if (v1)
  {
    v2 = v1;
    sub_21E48423C(v2);
  }
}

void sub_21E482E4C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer);
    if (v3)
    {
      v4 = v3;
      sub_21E48423C(v4);
    }
  }
}

id sub_21E482F20(void *a1)
{
  result = [a1 contentOffset];
  v3 = v1 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialContentOffset;
  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = 0;
  return result;
}

void sub_21E482FBC(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    log = a1;
    sub_21E483324(v3);
  }

  else
  {
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v4 = sub_21E4DBCC8();
    __swift_project_value_buffer(v4, qword_280C14558);
    v5 = sub_21E4DD218();
    v16 = 0xD000000000000017;
    v17 = 0x800000021E4EF6D0;
    v6 = sub_21E45C20C(0x200000000);
    if (v7)
    {
      v14 = 32;
      v15 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v6);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("scrollViewDidScroll(_:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v14 = 32;
      v15 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000003ELL, 0x800000021E4EF6F0);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v9 = v16;
    v8 = v17;
    log = sub_21E4DBCB8();
    if (os_log_type_enabled(log, v5))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      v12 = sub_21E426648(v9, v8, &v14);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_21E3EB000, log, v5, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x223D5BF10](v11, -1, -1);
      MEMORY[0x223D5BF10](v10, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21E483324(void *a1)
{
  [a1 contentSize];
  [a1 bounds];
  [a1 contentOffset];
  if (v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialContentOffset + 16])
  {
    v3 = 0;
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_initialContentOffset];
    [a1 contentOffset];
    v3 = *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_scrollCancelThreshold] < vabdd_f64(v5, v4);
  }

  sub_21E4848A0(v3);
  v6 = *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_scrollViewDidScrollFlickerPreventionThreshold];
  if (v6)
  {
    v7 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_shouldUpdate;
    v8 = *&v1[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_shouldUpdate];
    if (v8 == 0x8000000000000000 && v6 == -1)
    {
      goto LABEL_15;
    }

    if (!(v8 % v6))
    {
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      v16[4] = sub_21E4853F4;
      v16[5] = v11;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 1107296256;
      v16[2] = sub_21E46C644;
      v16[3] = &block_descriptor_47_0;
      v12 = _Block_copy(v16);
      v13 = v1;

      [v10 animateWithDuration:v12 animations:0.25];
      _Block_release(v12);
      v8 = *&v1[v7];
    }

    v14 = __OFADD__(v8, 1);
    v15 = v8 + 1;
    if (!v14)
    {
      *&v1[v7] = v15;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_21E4834EC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  v3 = sub_21E4DD488();
  if (v3)
  {
LABEL_3:
    if (v3 < 1)
    {
      __break(1u);
      return;
    }

    v4 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_itemWidths;
    v5 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_contentScrollView);

    v49 = v4;
    swift_beginAccess();
    v6 = 0;
    v48 = 5.0;
    v46 = 0.1;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D5B080](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      [v5 contentOffset];
      v10 = v9;
      [v5 bounds];
      v11 = v10 + CGRectGetWidth(v51);
      v12 = v8;
      [v12 bounds];
      [v12 convertRect:v5 toCoordinateSpace:?];
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
      MinX = CGRectGetMinX(v52);
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      MaxX = CGRectGetMaxX(v53);
      if (v10 > MinX)
      {
        v19 = v10;
      }

      else
      {
        v19 = MinX;
      }

      if (MaxX >= v11)
      {
        MaxX = v11;
      }

      v20 = MaxX - v19;
      if (v20 < 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v20;
      }

      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      v22 = v21 / CGRectGetWidth(v54);
      sub_21E483A84(v12);
      if (v22 < 0.9)
      {
        CGAffineTransformMakeScale(&v50, 0.9, 0.9);
        [v12 setTransform_];
        [v12 setAlpha_];
        v24 = *&v12[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        v23 = 0.9;
        if (!v28)
        {
          goto LABEL_25;
        }

        v26 = v28;
        v27 = 7;
        v23 = 0.9;
      }

      else
      {
        v23 = 1.0;
        CGAffineTransformMakeScale(&v50, 1.0, 1.0);
        [v12 setTransform_];
        [v12 setAlpha_];
        v24 = *&v12[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (!v25)
        {
          goto LABEL_25;
        }

        v26 = v25;
        v27 = 9;
      }

      v29 = objc_opt_self();
      v30 = v24;
      v31 = [v29 effectWithStyle_];
      [v26 setEffect_];

LABEL_25:
      v32 = *(v1 + v49);
      if (*(v32 + 16))
      {

        v33 = sub_21E4B16A0(v12);
        if (v34)
        {
          v47 = v23;
          v35 = *(*(v32 + 56) + 8 * v33);

          [v12 frame];
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v44 = 0.0;
          if (v22 < 0.9)
          {
            [v5 frame];
            v44 = CGRectGetHeight(v55) * v46 * 0.5;
          }

          v56.origin.x = v37;
          v56.origin.y = v39;
          v56.size.width = v41;
          v56.size.height = v43;
          v45 = CGRectGetWidth(v56);
          v57.origin.x = v37;
          v57.origin.y = v39;
          v57.size.width = v41;
          v57.size.height = v43;
          [v12 setFrame_];

          v48 = v48 + v47 * v35 + 7.0;
          goto LABEL_7;
        }
      }

LABEL_7:
      if (v3 == ++v6)
      {

        return;
      }
    }
  }
}

BOOL sub_21E483974(void *a1, double a2)
{
  if (a2 <= 0.0)
  {
    return 1;
  }

  [a1 contentOffset];
  v6 = v5;
  [a1 bounds];
  v7 = v6 + CGRectGetWidth(v18);
  [v2 bounds];
  [v2 convertRect:a1 toCoordinateSpace:?];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  MinX = CGRectGetMinX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxX = CGRectGetMaxX(v20);
  if (v6 > MinX)
  {
    v14 = v6;
  }

  else
  {
    v14 = MinX;
  }

  if (MaxX >= v7)
  {
    MaxX = v7;
  }

  v15 = MaxX - v14;
  if (v15 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v15;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  return v16 / CGRectGetWidth(v21) >= a2;
}

void sub_21E483A84(char *a1)
{
  v2 = v1;
  if (sub_21E483974(*(v1 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_contentScrollView), 0.9))
  {
    sub_21E4DD3A8();

    sub_21E4DB698();
    sub_21E485050(&qword_27CEC6680);
    v4 = sub_21E4DD4E8();
    MEMORY[0x223D5ACB0](v4);

    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v5 = sub_21E4DBCC8();
    __swift_project_value_buffer(v5, qword_280C14558);
    v6 = sub_21E4DD208();
    v45 = 0xD00000000000001FLL;
    v46 = 0x800000021E4EF940;
    v7 = sub_21E45C20C(0x200000000);
    if (v8)
    {
      v43 = 32;
      v44 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v7);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v9 = (0x800000021E4EFA10 >> 56) & 0xF;
    if ((0x800000021E4EFA10 & 0x2000000000000000) == 0)
    {
      v9 = 30;
    }

    if (v9)
    {
      v43 = 32;
      v44 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000001ELL, 0x800000021E4EFA10);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v11 = v45;
    v10 = v46;
    v12 = sub_21E4DBCB8();
    if (os_log_type_enabled(v12, v6))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v43 = v14;
      *v13 = 136315138;
      v15 = sub_21E426648(v11, v10, &v43);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_21E3EB000, v12, v6, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x223D5BF10](v14, -1, -1);
      MEMORY[0x223D5BF10](v13, -1, -1);
    }

    else
    {
    }

    v28 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer);
    *(v2 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer) = a1;
    v29 = a1;

    v30 = *&v29[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    if (v30)
    {
      type metadata accessor for SiriSharedUIAssistantSuggestionView();
      if (swift_dynamicCastClass())
      {
        v42 = v30;
        sub_21E488E08(1);

        return;
      }
    }

    goto LABEL_34;
  }

  sub_21E4DD3A8();

  sub_21E4DB698();
  sub_21E485050(&qword_27CEC6680);
  v16 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v16);

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v17 = sub_21E4DBCC8();
  __swift_project_value_buffer(v17, qword_280C14558);
  v18 = sub_21E4DD208();
  v45 = 0xD00000000000001FLL;
  v46 = 0x800000021E4EF940;
  v19 = sub_21E45C20C(0x200000000);
  if (v20)
  {
    v43 = 32;
    v44 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v19);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v21 = (0x800000021E4EF960 >> 56) & 0xF;
  if ((0x800000021E4EF960 & 0x2000000000000000) == 0)
  {
    v21 = 34;
  }

  if (v21)
  {
    v43 = 32;
    v44 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000022, 0x800000021E4EF960);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v23 = v45;
  v22 = v46;
  v24 = sub_21E4DBCB8();
  if (os_log_type_enabled(v24, v18))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v25 = 136315138;
    v27 = sub_21E426648(v23, v22, &v43);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_21E3EB000, v24, v18, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x223D5BF10](v26, -1, -1);
    MEMORY[0x223D5BF10](v25, -1, -1);
  }

  else
  {
  }

  v31 = *&a1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  if (!v31 || (type metadata accessor for SiriSharedUIAssistantSuggestionView(), !swift_dynamicCastClass()))
  {
LABEL_34:
    v33 = sub_21E4DD218();
    v45 = 0xD000000000000018;
    v46 = 0x800000021E4EB4D0;
    v34 = sub_21E45C20C(0x200000000);
    if (v35)
    {
      v43 = 32;
      v44 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v34);

      MEMORY[0x223D5ACB0](v43, v44);
    }

    if (("rom suggestion id=" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v43 = 32;
      v44 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000007FLL, 0x800000021E4EF990);
      MEMORY[0x223D5ACB0](v43, v44);
    }

    v37 = v45;
    v36 = v46;
    v38 = sub_21E4DBCB8();
    if (os_log_type_enabled(v38, v33))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v39 = 136315138;
      v41 = sub_21E426648(v37, v36, &v43);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_21E3EB000, v38, v33, "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x223D5BF10](v40, -1, -1);
      MEMORY[0x223D5BF10](v39, -1, -1);
    }

    else
    {
    }

    return;
  }

  v32 = v31;

  sub_21E42253C(0);
}

void sub_21E48423C(void *a1)
{
  v3 = [a1 superview];
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_contentScrollView);
    [a1 frame];
    [v5 convertRect:v4 fromCoordinateSpace:?];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    MidX = CGRectGetMidX(v25);
    [v5 bounds];
    v11 = MidX - CGRectGetWidth(v26) * 0.5;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MidY = CGRectGetMidY(v27);
    [v5 bounds];
    v13 = MidY - CGRectGetHeight(v28) * 0.5;
    [v5 contentSize];
    v15 = v14;
    [v5 bounds];
    v16 = v15 - CGRectGetWidth(v29);
    if (v16 >= v11)
    {
      v16 = v11;
    }

    if (v16 < 0.0)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v16;
    }

    [v5 contentSize];
    v19 = v18;
    [v5 bounds];
    v20 = v19 - CGRectGetHeight(v30);
    if (v20 >= v13)
    {
      v20 = v13;
    }

    if (v20 < 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v20;
    }

    [v5 setContentOffset:1 animated:{v17, v21}];

    v23 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer);
    *(v1 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer) = a1;
    v22 = a1;
  }
}

uint64_t sub_21E48441C(uint64_t a1)
{
  v2 = sub_21E4DB698();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6270);
  MEMORY[0x28223BE20](v30);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = v3[2];
  v15(&v28 - v13, a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_id, v2);
  v16 = v3;
  v17 = v3[7];
  v18 = 1;
  v17(v14, 0, 1, v2);
  v19 = *(v31 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer);
  if (v19)
  {
    v15(v12, v19 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_id, v2);
    v18 = 0;
  }

  v17(v12, v18, 1, v2);
  v20 = *(v30 + 48);
  sub_21E45BA04(v14, v6);
  sub_21E45BA04(v12, &v6[v20]);
  v21 = v3;
  v22 = v3[6];
  if (v22(v6, 1, v2) != 1)
  {
    v24 = v29;
    sub_21E45BA04(v6, v29);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (v16[4])(v28, &v6[v20], v2);
      sub_21E485050(&unk_280C15B40);
      v23 = sub_21E4DCEE8();
      v26 = v21[1];
      v26(v25, v2);
      sub_21E424BC0(v12, &qword_27CEC5278);
      sub_21E424BC0(v14, &qword_27CEC5278);
      v26(v24, v2);
      sub_21E424BC0(v6, &qword_27CEC5278);
      return v23 & 1;
    }

    sub_21E424BC0(v12, &qword_27CEC5278);
    sub_21E424BC0(v14, &qword_27CEC5278);
    (v16[1])(v24, v2);
    goto LABEL_8;
  }

  sub_21E424BC0(v12, &qword_27CEC5278);
  sub_21E424BC0(v14, &qword_27CEC5278);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_21E424BC0(v6, &unk_27CEC6270);
    v23 = 0;
    return v23 & 1;
  }

  sub_21E424BC0(v6, &qword_27CEC5278);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_21E4848A0(int a1)
{
  v3 = sub_21E4DB698();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6270);
  MEMORY[0x28223BE20](v51);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v54 = &v38 - v13;
  result = MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v52 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers);
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return result;
    }

    goto LABEL_3;
  }

  v37 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers);
  result = sub_21E4DD488();
  v17 = v37;
  v18 = result;
  if (result)
  {
LABEL_3:
    if (v18 < 1)
    {
      __break(1u);
      return result;
    }

    v47 = v17 & 0xC000000000000001;
    v48 = OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_focusedContinuer;
    v46 = (v4 + 16);
    v53 = (v4 + 56);
    v44 = v11;
    v45 = (v4 + 48);
    v38 = (v4 + 32);
    v42 = (v4 + 8);
    v40 = a1 ^ 1;
    v19 = v17;

    v20 = v19;
    v21 = 0;
    v49 = v18;
    v50 = v19;
    v43 = v16;
    while (1)
    {
      v24 = v47 ? MEMORY[0x223D5B080](v21, v20) : *(v20 + 8 * v21 + 32);
      v25 = v24;
      v26 = *v46;
      (*v46)(v16, &v24[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_id], v3);
      v27 = *v53;
      v28 = 1;
      (*v53)(v16, 0, 1, v3);
      v29 = *(v52 + v48);
      if (v29)
      {
        v26(v54, v29 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_id, v3);
        v28 = 0;
      }

      v30 = v54;
      v27(v54, v28, 1, v3);
      v31 = *(v51 + 48);
      sub_21E45BA04(v16, v7);
      sub_21E45BA04(v30, &v7[v31]);
      v32 = *v45;
      if ((*v45)(v7, 1, v3) == 1)
      {
        break;
      }

      v33 = v54;
      v34 = v44;
      sub_21E45BA04(v7, v44);
      if (v32(&v7[v31], 1, v3) == 1)
      {
        sub_21E424BC0(v33, &qword_27CEC5278);
        v16 = v43;
        sub_21E424BC0(v43, &qword_27CEC5278);
        (*v42)(v34, v3);
LABEL_6:
        sub_21E424BC0(v7, &unk_27CEC6270);
        goto LABEL_7;
      }

      v35 = v39;
      (*v38)(v39, &v7[v31], v3);
      sub_21E485050(&unk_280C15B40);
      v41 = sub_21E4DCEE8();
      v36 = *v42;
      (*v42)(v35, v3);
      sub_21E424BC0(v33, &qword_27CEC5278);
      v16 = v43;
      sub_21E424BC0(v43, &qword_27CEC5278);
      v36(v34, v3);
      sub_21E424BC0(v7, &qword_27CEC5278);
      if (v41)
      {
        goto LABEL_19;
      }

LABEL_7:
      v22 = 0;
LABEL_8:
      ++v21;
      v23 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldExecuteContinuerAction;
      swift_beginAccess();
      v25[v23] = v22 & 1;

      v20 = v50;
      if (v49 == v21)
      {
      }
    }

    sub_21E424BC0(v54, &qword_27CEC5278);
    sub_21E424BC0(v16, &qword_27CEC5278);
    if (v32(&v7[v31], 1, v3) == 1)
    {
      sub_21E424BC0(v7, &qword_27CEC5278);
LABEL_19:
      v22 = v40;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  return result;
}

id SiriSharedUIScrollablePageantView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIScrollablePageantView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E485050(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21E4DB698();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21E485094(void *a1, void *a2)
{
  v18 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  [a1 bounds];
  v21 = CGRectInset(v20, 0.0, 0.0);
  [v18 setFrame_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E4E6FB0;
  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  v7 = [v6 CGColor];

  type metadata accessor for CGColor(0);
  v9 = v8;
  *(v4 + 56) = v8;
  *(v4 + 32) = v7;
  v10 = [a2 CGColor];
  *(v4 + 88) = v9;
  *(v4 + 64) = v10;
  v11 = [a2 CGColor];
  *(v4 + 120) = v9;
  *(v4 + 96) = v11;
  v12 = [v5 clearColor];
  v13 = [v12 CGColor];

  *(v4 + 152) = v9;
  *(v4 + 128) = v13;
  v14 = sub_21E4DD078();

  [v18 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21E4E8900;
  sub_21E43F008(0, &qword_280C14070);
  *(v15 + 32) = sub_21E4DD2C8();
  *(v15 + 40) = sub_21E4DD2C8();
  *(v15 + 48) = sub_21E4DD2C8();
  *(v15 + 56) = sub_21E4DD2C8();
  v16 = sub_21E4DD078();

  [v18 setLocations_];

  [v18 setStartPoint_];
  [v18 setEndPoint_];
  v17 = [a1 layer];
  [v17 setMask_];
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_21E4853AC()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

uint64_t sub_21E485430@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_21E485510@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_21E4855B8()
{
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB708();
}

uint64_t sub_21E485688@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E48C4F4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E485774(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_21E48C4EC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21E3F1E78(v1);
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB708();
  sub_21E3F1EB0(v4);
}

uint64_t sub_21E4858D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_21E4859A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  *a2 = *(v3 + 57);
  return result;
}

uint64_t sub_21E485A70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  *a2 = *(v3 + 58);
  return result;
}

uint64_t sub_21E485B64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21E424848(a1, &v6 - v3, &qword_27CEC4A40);
  return sub_21E42151C(v4);
}

uint64_t sub_21E485C34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  v8 = *a2;
  swift_beginAccess();
  return sub_21E424848(v7 + v8, a4, a3);
}

uint64_t sub_21E485D18(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_21E424848(a1, &v9[-v5], &qword_27CEC4A38);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB708();

  return sub_21E424BC0(v6, &qword_27CEC4A38);
}

void sub_21E485EB8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(v9, v8, a4);
}

uint64_t sub_21E48602C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E48C59C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E4860CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E48C608;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

id sub_21E486208(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E485EB8;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21E4863DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E48C4A8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E48647C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E48C4A0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

void sub_21E4865D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21E48672C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandlerWithData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E48C604;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E4867CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E48C580;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandlerWithData);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

id sub_21E486908(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E4865D8;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21E4869FC(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_21E486B44(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_21E486BA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandlerWithData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E48C498;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E486C48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E48C490;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandlerWithData);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

char *SiriSharedUIAssistantSuggestionView.__allocating_init(suggestion:frame:suggestionsTotalCount:pressDownHandler:pressUpHandler:pressDownHandlerWithData:pressUpHandlerWithData:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v66 = a7;
  v67 = a8;
  v68 = a6;
  v57 = a2;
  v69 = a1;
  v63 = a15;
  v64 = type metadata accessor for SiriSharedUISuggestionsHostingView(0) - 8;
  v24 = MEMORY[0x28223BE20](v64);
  v65 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v61 = &v57 - v26;
  v27 = objc_allocWithZone(v15);
  v28 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
  type metadata accessor for SiriSharedUISuggestionsViewModel(0);
  swift_allocObject();
  *&v27[v28] = sub_21E4241E4();
  *&v27[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView] = 0;
  *&v27[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsMaxWidth] = 0x4074000000000000;
  v27[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_isDismissed] = 0;
  v29 = &v27[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandler];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v27[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler];
  *v30 = 0;
  v30[1] = 0;
  *&v27[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion] = a1;
  swift_beginAccess();
  *v29 = a3;
  v29[1] = a4;
  v31 = a4;
  swift_beginAccess();
  v32 = v68;
  *v30 = a5;
  v30[1] = v32;
  v33 = &v27[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandlerWithData];
  v34 = v66;
  v35 = v67;
  *v33 = v66;
  v33[1] = v35;
  v36 = &v27[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandlerWithData];
  *v36 = a13;
  v36[1] = a14;
  *&v27[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index] = v63;
  v37 = v31;
  v38 = v61;

  sub_21E3F1E78(v34);
  v58 = a13;
  sub_21E3F1E78(a13);
  v60 = a5;
  sub_21E3F1E78(a5);
  v63 = a3;
  v59 = v37;
  sub_21E3F1E78(a3);
  v74.receiver = v27;
  v74.super_class = v62;
  v39 = objc_msgSendSuper2(&v74, sel_initWithFrame_, a9, a10, a11, a12);
  v40 = *&v39[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  KeyPath = swift_getKeyPath();
  v44 = v64;
  *(v38 + *(v64 + 40)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E00);
  swift_storeEnumTagMultiPayload();
  v45 = swift_getKeyPath();
  *v38 = v40;
  v38[1] = sub_21E487848;
  v38[2] = v41;
  v38[3] = sub_21E4878EC;
  v38[4] = v42;
  v38[5] = CGPointMake;
  v38[6] = 0;
  v46 = v38 + *(v44 + 44);
  *v46 = v45;
  v46[8] = 0;
  v47 = v38 + *(v44 + 48);
  v70 = 0;
  v48 = v39;

  sub_21E4DC9F8();
  MEMORY[0x223D5BFD0](v73);

  v49 = v72;
  *v47 = v71;
  *(v47 + 1) = v49;
  sub_21E48B3D4(v38, v65);
  v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC62D8));
  v51 = sub_21E4DBFB8();
  v52 = *&v48[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView];
  *&v48[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView] = v51;
  v53 = v51;

  v54 = v48;
  [v54 addSubview_];

  v55 = [v54 layer];
  [v55 setCornerRadius_];

  result = *MEMORY[0x277D76620];
  if (*MEMORY[0x277D76620])
  {
    if (UIInterfaceOrientationIsLandscape([result activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad() && v57 > 2)
    {
      *&v54[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsMaxWidth] = 0x406B800000000000;
    }

    sub_21E48798C(v69);

    sub_21E3F1EB0(v58);
    sub_21E3F1EB0(v66);
    sub_21E3F1EB0(v60);
    sub_21E3F1EB0(v63);

    sub_21E48B448(v38);
    return v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *SiriSharedUIAssistantSuggestionView.init(suggestion:frame:suggestionsTotalCount:pressDownHandler:pressUpHandler:pressDownHandlerWithData:pressUpHandlerWithData:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v64 = a7;
  v65 = a6;
  v66 = a3;
  v67 = a4;
  v56 = a2;
  v63 = a14;
  v60 = a15;
  v61 = type metadata accessor for SiriSharedUISuggestionsHostingView(0) - 8;
  v25 = MEMORY[0x28223BE20](v61);
  v62 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = (&v55 - v27);
  v29 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
  type metadata accessor for SiriSharedUISuggestionsViewModel(0);
  swift_allocObject();
  *&v15[v29] = sub_21E4241E4();
  *&v15[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView] = 0;
  *&v15[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsMaxWidth] = 0x4074000000000000;
  v15[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_isDismissed] = 0;
  v30 = &v15[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandler];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v16[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler];
  *v31 = 0;
  v31[1] = 0;
  *&v16[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion] = a1;
  swift_beginAccess();
  *v30 = a3;
  v30[1] = v67;
  swift_beginAccess();
  *v31 = a5;
  v31[1] = v65;
  v32 = &v16[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandlerWithData];
  v33 = v63;
  v34 = v64;
  *v32 = v64;
  *(v32 + 1) = a8;
  v35 = &v16[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandlerWithData];
  *v35 = a13;
  v35[1] = v33;
  *&v16[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index] = v60;
  v60 = a1;

  v58 = a8;
  sub_21E3F1E78(v34);
  v57 = a13;
  sub_21E3F1E78(a13);
  v59 = a5;
  sub_21E3F1E78(a5);
  sub_21E3F1E78(v66);
  v36 = type metadata accessor for SiriSharedUIAssistantSuggestionView();
  v72.receiver = v16;
  v72.super_class = v36;
  v37 = objc_msgSendSuper2(&v72, sel_initWithFrame_, a9, a10, a11, a12);
  v38 = *&v37[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  KeyPath = swift_getKeyPath();
  v42 = v61;
  *(v28 + *(v61 + 40)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E00);
  swift_storeEnumTagMultiPayload();
  v43 = swift_getKeyPath();
  *v28 = v38;
  v28[1] = sub_21E48C5A0;
  v28[2] = v39;
  v28[3] = sub_21E48C5A4;
  v28[4] = v40;
  v28[5] = CGPointMake;
  v28[6] = 0;
  v44 = v28 + *(v42 + 44);
  *v44 = v43;
  v44[8] = 0;
  v45 = v28 + *(v42 + 48);
  v68 = 0;
  v46 = v37;

  sub_21E4DC9F8();
  MEMORY[0x223D5BFD0](v71);

  v47 = v70;
  *v45 = v69;
  *(v45 + 1) = v47;
  sub_21E48B3D4(v28, v62);
  v48 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC62D8));
  v49 = sub_21E4DBFB8();
  v50 = *&v46[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView];
  *&v46[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView] = v49;
  v51 = v49;

  v52 = v46;
  [v52 addSubview_];

  v53 = [v52 layer];
  [v53 setCornerRadius_];

  result = *MEMORY[0x277D76620];
  if (*MEMORY[0x277D76620])
  {
    if (UIInterfaceOrientationIsLandscape([result activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad() && v56 >= 3)
    {
      *&v52[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsMaxWidth] = 0x406B800000000000;
    }

    sub_21E48798C(v60);

    sub_21E3F1EB0(v57);
    sub_21E3F1EB0(v64);
    sub_21E3F1EB0(v59);
    sub_21E3F1EB0(v66);

    sub_21E48B448(v28);
    return v52;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21E487890(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

id SiriSharedUIAssistantSuggestionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_21E48798C(uint64_t a1)
{
  v99 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5270);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = v89 - v4;
  v5 = sub_21E4DBAD8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A38);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A40);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v91 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v90 = v89 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v92 = v89 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v105 = v89 - v19;
  MEMORY[0x28223BE20](v18);
  v98 = v89 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5268);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v89 - v22;
  v104 = sub_21E4DBBB8();
  v102 = *(v104 - 8);
  v24 = MEMORY[0x28223BE20](v104);
  v94 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v103 = v89 - v26;
  *(v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion) = a1;

  v27 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);

  sub_21E420B28(v28, v29);

  v100 = v27;
  v101 = v1;
  v30 = *(v1 + v27);
  v31 = a1;
  v32 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type);
  v33 = *(v30 + 32);
  v96 = v8;
  v93 = v5;
  if (v32 == v33)
  {
    v34 = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v34 = v6;
    v89[1] = v89;
    MEMORY[0x28223BE20](KeyPath);
    v89[-2] = v30;
    LOBYTE(v89[-1]) = v32;
    v107 = v30;
    sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

    v31 = a1;
    sub_21E4DB708();
  }

  sub_21E424848(v31 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData, v23, &qword_27CEC5268);
  v36 = sub_21E4DB978();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v23, 1, v36);
  v39 = v102;
  v40 = v103;
  if (v38 == 1)
  {
    v41 = v102;
    sub_21E424BC0(v23, &qword_27CEC5268);
    v42 = v95;
    sub_21E424848(v31 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData, v95, &qword_27CEC5270);
    v43 = v34;
    v44 = v93;
    if ((*(v34 + 48))(v42, 1, v93) == 1)
    {
      sub_21E424BC0(v42, &qword_27CEC5270);
      v45 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v46 = sub_21E4DCF68();
      v47 = [v45 initWithSuiteName_];

      if (v47 && (v48 = sub_21E4DCF68(), v49 = [v47 BOOLForKey_], v47, v48, v49))
      {
        v50 = *(v101 + v100);
        v51 = *(v31 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier + 8);
        v52 = v90;
        *v90 = *(v31 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier);
        *(v52 + 1) = v51;
        v53 = v104;
        (*(v41 + 104))(v52, *MEMORY[0x277D61238], v104);
        (*(v41 + 56))(v52, 0, 1, v53);
        v54 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__image;
        swift_beginAccess();
        v55 = v105;
        sub_21E424848(v50 + v54, v105, &qword_27CEC4A40);

        LOBYTE(v51) = sub_21E48B4C8(v55, v52);
        sub_21E424BC0(v55, &qword_27CEC4A40);
        if (v51)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v50 = *(v101 + v100);
        v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A48) + 48);
        v52 = v91;
        *v91 = 1769105779;
        *(v52 + 1) = 0xE400000000000000;
        v76 = sub_21E4DBBA8();
        (*(*(v76 - 8) + 56))(&v52[v75], 1, 1, v76);
        v77 = v104;
        (*(v41 + 104))(v52, *MEMORY[0x277D61230], v104);
        (*(v41 + 56))(v52, 0, 1, v77);
        v54 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__image;
        swift_beginAccess();
        v78 = v105;
        sub_21E424848(v50 + v54, v105, &qword_27CEC4A40);

        v79 = sub_21E48B4C8(v78, v52);
        sub_21E424BC0(v78, &qword_27CEC4A40);
        if (v79)
        {
LABEL_16:
          v80 = swift_getKeyPath();
          MEMORY[0x28223BE20](v80);
          v89[-2] = v50;
          v89[-1] = v52;
          v106 = v50;
          sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
          sub_21E4DB708();

          goto LABEL_17;
        }
      }

      v84 = v105;
      sub_21E424848(v52, v105, &qword_27CEC4A40);
      v85 = type metadata accessor for RealizedImage(0);
      v86 = v97;
      (*(*(v85 - 8) + 56))(v97, 1, 1, v85);
      v87 = swift_getKeyPath();
      MEMORY[0x28223BE20](v87);
      v89[-2] = v50;
      v89[-1] = v86;
      v106 = v50;
      sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
      sub_21E4DB708();

      sub_21E424BC0(v86, &qword_27CEC4A38);
      swift_beginAccess();
      sub_21E48BC8C(v84, v50 + v54);
      swift_endAccess();

      return sub_21E424BC0(v52, &qword_27CEC4A40);
    }

    v64 = v96;
    (*(v34 + 32))(v96, v42, v44);
    v65 = *(v101 + v100);

    v66 = v92;
    sub_21E48AAB0(v64, v92);
    (*(v41 + 56))(v66, 0, 1, v104);
    v67 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__image;
    swift_beginAccess();
    v68 = v105;
    sub_21E424848(v65 + v67, v105, &qword_27CEC4A40);
    v69 = sub_21E48B4C8(v68, v66);
    sub_21E424BC0(v68, &qword_27CEC4A40);
    if (v69)
    {
      v70 = swift_getKeyPath();
      MEMORY[0x28223BE20](v70);
      v89[-2] = v65;
      v89[-1] = v66;
      v106 = v65;
      sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
      sub_21E4DB708();

      (*(v43 + 8))(v96, v44);

      v52 = v66;
    }

    else
    {
      sub_21E424848(v66, v105, &qword_27CEC4A40);
      v81 = type metadata accessor for RealizedImage(0);
      v82 = v97;
      (*(*(v81 - 8) + 56))(v97, 1, 1, v81);
      v83 = swift_getKeyPath();
      MEMORY[0x28223BE20](v83);
      v89[-2] = v65;
      v89[-1] = v82;
      v106 = v65;
      sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
      sub_21E4DB708();

      sub_21E424BC0(v82, &qword_27CEC4A38);
      swift_beginAccess();
      sub_21E48BC8C(v105, v65 + v67);
      swift_endAccess();

      (*(v43 + 8))(v96, v44);
      v52 = v92;
    }
  }

  else
  {
    v56 = v94;
    sub_21E4DB968();
    (*(v37 + 8))(v23, v36);
    v57 = v104;
    (*(v39 + 32))(v40, v56, v104);
    v58 = *(v101 + v100);
    v59 = v40;
    v52 = v98;
    (*(v39 + 16))(v98, v59, v57);
    (*(v39 + 56))(v52, 0, 1, v57);
    v60 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__image;
    swift_beginAccess();
    v61 = v105;
    sub_21E424848(v58 + v60, v105, &qword_27CEC4A40);

    v62 = sub_21E48B4C8(v61, v52);
    sub_21E424BC0(v61, &qword_27CEC4A40);
    if (v62)
    {
      v63 = swift_getKeyPath();
      MEMORY[0x28223BE20](v63);
      v89[-2] = v58;
      v89[-1] = v52;
      v106 = v58;
      sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
      sub_21E4DB708();

      (*(v39 + 8))(v59, v104);
LABEL_17:

      return sub_21E424BC0(v52, &qword_27CEC4A40);
    }

    v71 = v105;
    sub_21E424848(v52, v105, &qword_27CEC4A40);
    v72 = type metadata accessor for RealizedImage(0);
    v73 = v97;
    (*(*(v72 - 8) + 56))(v97, 1, 1, v72);
    v74 = swift_getKeyPath();
    MEMORY[0x28223BE20](v74);
    v89[-2] = v58;
    v89[-1] = v73;
    v106 = v58;
    sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
    sub_21E4DB708();

    sub_21E424BC0(v73, &qword_27CEC4A38);
    swift_beginAccess();
    sub_21E48BC8C(v71, v58 + v60);
    swift_endAccess();

    (*(v39 + 8))(v103, v104);
    v52 = v98;
  }

  return sub_21E424BC0(v52, &qword_27CEC4A40);
}

uint64_t sub_21E488D38(void (*a1)(uint64_t))
{

  a1(v2);
}

void sub_21E488DA0(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = a1;

  a3(v4);
}

uint64_t sub_21E488E08(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;

  sub_21E42253C(a1);

  if (a1)
  {
    v6 = *(v1 + v4);
    swift_getKeyPath();
    sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

    sub_21E4DB718();

    v7 = *(v6 + 57);

    if ((v7 & 1) == 0)
    {

      sub_21E421E18();

      v8 = sub_21E4221B8();

      if (v8)
      {
        v9 = (*(v2 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion) + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback);
        result = swift_beginAccess();
        v10 = *v9;
        if (*v9)
        {

          v10(v11);
          result = sub_21E3F1EB0(v10);
        }

        v12 = *(v2 + v4);
        if (*(v12 + 58) == 1)
        {
          *(v12 + 58) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);

          sub_21E4DB708();
        }
      }
    }
  }

  return result;
}

void sub_21E48909C()
{
  v1 = *(v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
  if (*(v1 + 58) == 1)
  {
    *(v1 + 58) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

    sub_21E4DB708();
  }
}

uint64_t sub_21E4891CC()
{
  v1 = *(v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

  sub_21E4DB718();

  v2 = *(v1 + 56);

  return v2;
}

uint64_t sub_21E48928C()
{
  v1 = *(v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

  sub_21E4DB718();

  v2 = *(v1 + 57);

  return v2;
}

uint64_t sub_21E48934C()
{
  v1 = *(v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

  sub_21E4DB718();

  v2 = *(v1 + 58);

  return v2;
}

uint64_t sub_21E48940C()
{
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

  sub_21E4DB708();
}

uint64_t sub_21E489504()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandlerWithData);
  swift_beginAccess();
  v3 = *v2;
  if (*v2)
  {

    sub_21E48B7E8();
    v4 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion;

    v5 = sub_21E46386C();

    v6 = *(*(v1 + v4) + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType);
    v7 = sub_21E4DCF68();

    v8 = sub_21E4DCF68();

    if (v5)
    {
      v9 = sub_21E4DCE88();
    }

    else
    {
      v9 = 0;
    }

    v14 = [objc_allocWithZone(SiriSharedUISuggestionExecutionWrapper) initWithInvocationText:v7 displayText:v8 encodedToolInvocationData:v9 suggestionRequestType:v6];

    v3(v14, *(v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index));
    sub_21E3F1EB0(v3);
  }

  else
  {
    v10 = (v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler);
    swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {
      sub_21E3F1E78(v11);

      v12 = sub_21E4DCF68();

      sub_21E48B7E8();

      v13 = sub_21E4DCF68();

      v11(v12, v13, *(v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index));

      sub_21E3F1EB0(v11);
    }
  }

  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD000000000000036, 0x800000021E4EFAF0);
  v28[0] = *(v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index);
  v15 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v15);

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v16 = sub_21E4DBCC8();
  __swift_project_value_buffer(v16, qword_280C14558);
  v17 = sub_21E4DD208();
  v18 = sub_21E45C20C(0);
  if (v19)
  {
    v28[0] = 32;
    v28[1] = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v18);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v20 = sub_21E4DBCB8();
  if (os_log_type_enabled(v20, v17))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v21 = 136315138;
    v23 = sub_21E426648(0x2928706174, 0xE500000000000000, v28);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_21E3EB000, v20, v17, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x223D5BF10](v22, -1, -1);
    MEMORY[0x223D5BF10](v21, -1, -1);
  }

  else
  {
  }

  v24 = (*(v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion) + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback);
  swift_beginAccess();
  v25 = *v24;

  v25(v26);
}

uint64_t sub_21E489A18()
{
  sub_21E4DCB38();
  sub_21E4DBF78();
}

uint64_t sub_21E489A9C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

  sub_21E4DB718();

  swift_getKeyPath();
  sub_21E4DB738();

  *(v3 + 33) = a2;
  swift_getKeyPath();
  sub_21E4DB728();
}

void sub_21E489BE8(void *a1)
{
  v1 = a1;
  sub_21E4DCB38();
  sub_21E4DBF78();
}

uint64_t sub_21E489C5C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion);
  v3 = *(a1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion);
  if (*(v2 + 32) == *(v3 + 32) && *(v2 + 40) == *(v3 + 40))
  {
    return 1;
  }

  else
  {
    return sub_21E4DD518();
  }
}

BOOL sub_21E489C94()
{
  v1 = *(v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

  sub_21E4DB718();

  v2 = *(v1 + 33);

  return v2 == 1;
}

uint64_t sub_21E489E34()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandlerWithData);
  swift_beginAccess();
  v3 = *v2;
  if (*v2)
  {

    sub_21E48B7E8();
    v4 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion;

    v5 = sub_21E46386C();

    v6 = *(*(v1 + v4) + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType);
    v7 = sub_21E4DCF68();

    v8 = sub_21E4DCF68();

    if (v5)
    {
      v9 = sub_21E4DCE88();
    }

    else
    {
      v9 = 0;
    }

    v13 = [objc_allocWithZone(SiriSharedUISuggestionExecutionWrapper) initWithInvocationText:v7 displayText:v8 encodedToolInvocationData:v9 suggestionRequestType:v6];

    v3(v13, *(v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index));
  }

  else
  {
    v10 = (v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandler);
    result = swift_beginAccess();
    v3 = *v10;
    if (!*v10)
    {
      return result;
    }

    sub_21E3F1E78(v3);

    v12 = sub_21E4DCF68();

    sub_21E48B7E8();

    v13 = sub_21E4DCF68();

    (v3)(v12, v13, *(v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index));
  }

  return sub_21E3F1EB0(v3);
}

uint64_t sub_21E48A09C(uint64_t a1)
{
  v2 = v1;
  sub_21E48A7CC(a1);
  sub_21E4DD3A8();

  v47 = 0xD00000000000002DLL;
  v48 = 0x800000021E4EFB30;
  v3 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index;
  v45 = *(v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index);
  v4 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v4);

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v5 = sub_21E4DBCC8();
  __swift_project_value_buffer(v5, qword_280C14558);
  v6 = sub_21E4DD208();
  v47 = 0x4170557373657270;
  v48 = 0xEF29286E6F697463;
  v7 = sub_21E45C20C(0);
  if (v8)
  {
    v45 = 32;
    v46 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v7);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = (0x800000021E4EFB30 >> 56) & 0xF;
  if ((0x800000021E4EFB30 & 0x2000000000000000) == 0)
  {
    v9 = 45;
  }

  if (v9)
  {
    v45 = 32;
    v46 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000002DLL, 0x800000021E4EFB30);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v11 = v47;
  v10 = v48;
  v12 = sub_21E4DBCB8();
  if (os_log_type_enabled(v12, v6))
  {
    v13 = swift_slowAlloc();
    v14 = v3;
    v15 = swift_slowAlloc();
    v45 = v15;
    *v13 = 136315138;
    v16 = sub_21E426648(v11, v10, &v45);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_21E3EB000, v12, v6, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v17 = v15;
    v3 = v14;
    MEMORY[0x223D5BF10](v17, -1, -1);
    MEMORY[0x223D5BF10](v13, -1, -1);
  }

  else
  {
  }

  v18 = (v2 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandlerWithData);
  swift_beginAccess();
  v19 = *v18;
  if (*v18)
  {
    v43 = v3;

    sub_21E48B7E8();
    v20 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion;

    v21 = sub_21E46386C();

    v22 = *(*(v2 + v20) + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType);
    v23 = sub_21E4DCF68();

    v24 = sub_21E4DCF68();

    if (v21)
    {
      v25 = sub_21E4DCE88();
    }

    else
    {
      v25 = 0;
    }

    v30 = [objc_allocWithZone(SiriSharedUISuggestionExecutionWrapper) initWithInvocationText:v23 displayText:v24 encodedToolInvocationData:v25 suggestionRequestType:v22];

    v3 = v43;
    v19(v30, *(v2 + v43));

    sub_21E3F1EB0(v19);
  }

  else
  {
    v26 = (v2 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler);
    swift_beginAccess();
    v27 = *v26;
    if (*v26)
    {
      sub_21E3F1E78(v27);

      v28 = sub_21E4DCF68();

      sub_21E48B7E8();

      v29 = sub_21E4DCF68();

      v27(v28, v29, *(v2 + v3));

      sub_21E3F1EB0(v27);
    }
  }

  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD000000000000036, 0x800000021E4EFAF0);
  v44[0] = *(v2 + v3);
  v31 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v31);

  v32 = sub_21E4DD208();
  v33 = sub_21E45C20C(0);
  if (v34)
  {
    v44[0] = 32;
    v44[1] = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v33);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v35 = sub_21E4DBCB8();
  if (os_log_type_enabled(v35, v32))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44[0] = v37;
    *v36 = 136315138;
    v38 = sub_21E426648(0x4170557373657270, 0xEF29286E6F697463, v44);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_21E3EB000, v35, v32, "%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x223D5BF10](v37, -1, -1);
    MEMORY[0x223D5BF10](v36, -1, -1);
  }

  else
  {
  }

  v39 = (*(v2 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion) + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback);
  swift_beginAccess();
  v40 = *v39;

  v40(v41);
}

uint64_t sub_21E48A7CC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
  if (*(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

    sub_21E4DB708();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected) = 0;
  }

  v4 = MEMORY[0x223D5A7F0](a1, 0.5, 1.0, 0.0);
  MEMORY[0x28223BE20](v4);
  sub_21E4DBF78();
}

uint64_t sub_21E48A96C(uint64_t result)
{
  v1 = *(result + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
  if (*(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected) == 1)
  {
    *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

    sub_21E4DB708();
  }

  return result;
}

uint64_t sub_21E48AAB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = sub_21E4DBBE8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = sub_21E4DBB28();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v37 = a1;
  sub_21E4DBAA8();
  sub_21E4DBB18();
  v34 = *(v15 + 8);
  v34(v20, v14);
  sub_21E4DBBD8();
  v21 = *(v9 + 8);
  v36 = v8;
  v33 = v21;
  v21(v13, v8);
  v22 = sub_21E4DBBB8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v7, 1, v22) != 1)
  {
    return (*(v23 + 32))(v39, v7, v22);
  }

  v32 = v7;
  sub_21E4DBAA8();
  v25 = v35;
  sub_21E4DBB18();
  v34(v18, v14);
  v26 = v38;
  sub_21E4DBBC8();
  v33(v25, v36);
  if (v24(v26, 1, v22) == 1)
  {
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A48) + 48);
    v28 = v39;
    *v39 = 1769105779;
    *(v28 + 1) = 0xE400000000000000;
    v29 = sub_21E4DBBA8();
    (*(*(v29 - 8) + 56))(&v28[v27], 1, 1, v29);
    (*(v23 + 104))(v28, *MEMORY[0x277D61230], v22);
    if (v24(v26, 1, v22) != 1)
    {
      sub_21E424BC0(v26, &qword_27CEC4A40);
    }
  }

  else
  {
    (*(v23 + 32))(v39, v26, v22);
  }

  v31 = v32;
  result = (v24)(v32, 1, v22);
  if (result != 1)
  {
    return sub_21E424BC0(v31, &qword_27CEC4A40);
  }

  return result;
}

void sub_21E48AF4C()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SiriSharedUIAssistantSuggestionView();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel];
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

  sub_21E4DB718();

  v3 = *(v2 + 33);

  if (v3 == 1)
  {
    v4 = *&v1[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView];
    if (v4)
    {
      v5 = v4;
      [v1 bounds];
      v7 = v6;
      [v1 bounds];
      v9 = v8 + -1.0;
      [v1 bounds];
      [v5 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

id SiriSharedUIAssistantSuggestionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SiriSharedUIAssistantSuggestionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIAssistantSuggestionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E48B2B8(uint64_t a1)
{
  v2 = sub_21E4DBE78();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21E4DC0C8();
}

uint64_t sub_21E48B380@<X0>(void *a1@<X8>)
{
  result = sub_21E4DC0D8();
  *a1 = v3;
  return result;
}

uint64_t sub_21E48B3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSharedUISuggestionsHostingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E48B448(uint64_t a1)
{
  v2 = type metadata accessor for SiriSharedUISuggestionsHostingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E48B4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E4DBBB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC62E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_21E424848(a1, &v21 - v13, &qword_27CEC4A40);
  sub_21E424848(a2, &v14[v15], &qword_27CEC4A40);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_21E424848(v14, v10, &qword_27CEC4A40);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_21E48C4FC(&qword_27CEC4E10, MEMORY[0x277D61240]);
      v18 = sub_21E4DCEE8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21E424BC0(v14, &qword_27CEC4A40);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21E424BC0(v14, &qword_27CEC62E0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21E424BC0(v14, &qword_27CEC4A40);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21E48B7E8()
{
  v1 = v0;
  v2 = sub_21E4DB698();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion;
  v7 = *(v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion);
  result = *(v7 + 32);
  v9 = *(v7 + 40);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_21E4DD3A8();
    MEMORY[0x223D5ACB0](0xD000000000000044, 0x800000021E4EFD10);
    v11 = *(v0 + v6);
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);

    MEMORY[0x223D5ACB0](v12, v13);

    MEMORY[0x223D5ACB0](0xD000000000000012, 0x800000021E4EFD60);
    (*(v3 + 16))(v5, *(v0 + v6) + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId, v2);
    sub_21E48C4FC(&qword_27CEC6680, MEMORY[0x277CC95F0]);
    v14 = sub_21E4DD4E8();
    MEMORY[0x223D5ACB0](v14);

    (*(v3 + 8))(v5, v2);
    v16 = v30;
    v15 = v31;
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v17 = sub_21E4DBCC8();
    __swift_project_value_buffer(v17, qword_280C14558);
    v18 = sub_21E4DD218();
    v30 = 0xD000000000000010;
    v31 = 0x800000021E4EFCF0;
    v19 = sub_21E45C20C(0);
    if (v20)
    {
      v28 = 32;
      v29 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v19);

      MEMORY[0x223D5ACB0](v28, v29);
    }

    v21 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v21 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v28 = 32;
      v29 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v16, v15);
      MEMORY[0x223D5ACB0](v28, v29);
    }

    v23 = v30;
    v22 = v31;
    v24 = sub_21E4DBCB8();
    if (os_log_type_enabled(v24, v18))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v25 = 136315138;
      v27 = sub_21E426648(v23, v22, &v28);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_21E3EB000, v24, v18, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x223D5BF10](v26, -1, -1);
      MEMORY[0x223D5BF10](v25, -1, -1);
    }

    else
    {
    }

    return *(*(v1 + v6) + 16);
  }

  return result;
}

void _s12SiriSharedUI0aB25UIAssistantSuggestionViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
  type metadata accessor for SiriSharedUISuggestionsViewModel(0);
  swift_allocObject();
  *(v0 + v1) = sub_21E4241E4();
  *(v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView) = 0;
  *(v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsMaxWidth) = 0x4074000000000000;
  *(v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_isDismissed) = 0;
  v2 = (v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_21E4DD468();
  __break(1u);
}

uint64_t sub_21E48BC8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E48C4FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E48C6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t *))
{
  v6 = a2;
  v7 = a1;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

uint64_t sub_21E48C768(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v5 = a1;
  return a3(&v5, &v4);
}

uint64_t sub_21E48C7A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressDownHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E49AEA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E48C844(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E49AEA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressDownHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E48C9AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressUpHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E49AEA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E48CA4C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E49AEA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressUpHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E48CBB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressDownHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E49AEA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E48CC54(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E49AEA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressDownHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E48CDBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressUpHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E49ABC8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E48CE5C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E49ABC4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressUpHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E48CFC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressDownHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E49AEB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E48D064(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E49AEC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressDownHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E48D1CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressUpHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E49AEB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E48D26C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E49AEC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressUpHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E48D3D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressDownHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E49AEB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E48D474(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E49AEC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressDownHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E48D5DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressUpHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E49AB58;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E48D67C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E49AB54;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressUpHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E48D7E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_contextMenuHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E49AB28;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E48D884(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E43EA84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_contextMenuHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E48D96C(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_21E48D9F4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

char *SiriSharedUIAssistantSuggestionsViewProvider.__allocating_init(pressDownHandler:pressUpHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_21E498710(a1, a2, a3, a4);
  sub_21E3F1EB0(a3);
  sub_21E3F1EB0(a1);
  return v10;
}

char *SiriSharedUIAssistantSuggestionsViewProvider.init(pressDownHandler:pressUpHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21E498710(a1, a2, a3, a4);
  sub_21E3F1EB0(a3);
  sub_21E3F1EB0(a1);
  return v6;
}

uint64_t sub_21E48DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a10)(uint64_t, uint64_t))
{
  v19 = objc_allocWithZone(v10);
  v20 = a9(a1, a2, a3, a4, a5, a6, a7, a8);
  a10(a7, a8);
  a10(a5, a6);
  a10(a3, a4);
  a10(a1, a2);
  return v20;
}

uint64_t sub_21E48E0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), void (*a10)(uint64_t, uint64_t))
{
  v18 = a9();
  a10(a7, a8);
  a10(a5, a6);
  a10(a3, a4);
  a10(a1, a2);
  return v18;
}

uint64_t sub_21E48E360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 120) = v13;
  *(v8 + 128) = v14;
  *(v8 + 104) = a6;
  *(v8 + 112) = a8;
  *(v8 + 209) = a7;
  *(v8 + 208) = a5;
  *(v8 + 96) = a4;
  v9 = sub_21E4DCBF8();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  v10 = sub_21E4DCC18();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E48E494, 0, 0);
}

uint64_t sub_21E48E494()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_21E48E540;
  v2 = *(v0 + 209);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 208);

  return sub_21E431D90(v5, v3, v2, v4);
}

uint64_t sub_21E48E540(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_21E48E8E8;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_21E48E668;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21E48E668()
{
  v1 = v0[25];
  v11 = v0[22];
  v2 = v0[19];
  v14 = v0[21];
  v15 = v0[20];
  v3 = v0[17];
  v13 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  sub_21E43F008(0, &qword_280C14150);
  v12 = sub_21E4DD278();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v4;
  v7[5] = v5;
  v0[6] = sub_21E49AE88;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21E46C644;
  v0[5] = &block_descriptor_272;
  v8 = _Block_copy(v0 + 2);

  sub_21E4DCC08();
  v0[11] = MEMORY[0x277D84F90];
  sub_21E49AC78(&qword_280C14250, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42E3E8();
  sub_21E4DD358();
  MEMORY[0x223D5AF30](0, v11, v2, v8);
  _Block_release(v8);

  (*(v13 + 8))(v2, v3);
  (*(v14 + 8))(v11, v15);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21E48E8E8()
{
  v18 = v0;
  v1 = *(v0 + 192);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_21E4DD3A8();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x223D5ACB0](0xD00000000000004DLL, 0x800000021E4ED1B0);
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
  sub_21E4DD458();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD218();
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2, v3);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = sub_21E4DBCB8();
  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_21E426648(0xD00000000000007FLL, 0x800000021E4F0860, &v16);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_21E3EB000, v9, v5, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x223D5BF10](v11, -1, -1);
    MEMORY[0x223D5BF10](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 192);
  (*(v0 + 120))(MEMORY[0x277D84F90]);

  v14 = *(v0 + 8);

  return v14();
}

int64_t sub_21E48EBE4(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_21E493B3C(a2);
    v11 = v10;
    v13 = v12;
    v14 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList;
    swift_beginAccess();
    *&v8[v14] = v9;

    v15 = v11 >> 62;
    if (v11 >> 62)
    {
      sub_21E43F008(0, &qword_280C140A0);

      v16 = sub_21E4DD478();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_21E4DD528();
      sub_21E43F008(0, &qword_280C140A0);
      v16 = v11;
    }

    *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews] = v16;

    v17 = v9 >> 62;
    if (v9 >> 62)
    {
      v18 = sub_21E4DD488();
      if (sub_21E4DD488() < 0)
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v18 >= 3)
      {
        v30 = 3;
      }

      else
      {
        v30 = v18;
      }

      if (v18 >= 0)
      {
        v18 = v30;
      }

      else
      {
        v18 = 3;
      }

      result = sub_21E4DD488();
      if (result >= v18)
      {
LABEL_9:
        if ((v9 & 0xC000000000000001) != 0 && v18)
        {
          type metadata accessor for SiriSharedUISuggestion();

          sub_21E4DD3C8();
          if (v18 != 1)
          {
            sub_21E4DD3C8();
            if (v18 != 2)
            {
              sub_21E4DD3C8();
            }
          }

          if (!v17)
          {
            goto LABEL_15;
          }
        }

        else
        {

          if (!v17)
          {
LABEL_15:
            v17 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
            v32 = v13;
            if (!v15)
            {
              v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v19 >= 3)
              {
                v13 = 3;
              }

              else
              {
                v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              goto LABEL_33;
            }

            if (v11 < 0)
            {
              v18 = v11;
            }

            else
            {
              v18 = v11 & 0xFFFFFFFFFFFFFF8;
            }

            v20 = sub_21E4DD488();
            if ((sub_21E4DD488() & 0x8000000000000000) == 0)
            {
              if (v20 >= 3)
              {
                v21 = 3;
              }

              else
              {
                v21 = v20;
              }

              if (v20 >= 0)
              {
                v13 = v21;
              }

              else
              {
                v13 = 3;
              }

              v19 = sub_21E4DD488();
LABEL_33:
              if (v19 >= v13)
              {
                if ((v11 & 0xC000000000000001) != 0 && v13)
                {
                  type metadata accessor for SiriSharedUIAssistantSuggestionView();

                  sub_21E4DD3C8();
                  if (v13 != 1)
                  {
                    sub_21E4DD3C8();
                    if (v13 != 2)
                    {
                      sub_21E4DD3C8();
                    }
                  }
                }

                else
                {
                }

                if (v15)
                {
                  v17 = sub_21E4DD498();
                  v18 = v22;
                  a4 = v23;
                  v13 = v24;

                  if (v13)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {
                  a4 = 0;
                  v17 = v11 & 0xFFFFFFFFFFFFFF8;
                  v18 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
                  v13 = (2 * v13) | 1;
                  if (v13)
                  {
LABEL_45:
                    v31 = a3;
                    sub_21E4DD538();
                    swift_unknownObjectRetain_n();
                    v28 = swift_dynamicCastClass();
                    if (!v28)
                    {
                      swift_unknownObjectRelease();
                      v28 = MEMORY[0x277D84F90];
                    }

                    v29 = *(v28 + 16);

                    if (!__OFSUB__(v13 >> 1, a4))
                    {
                      if (v29 == (v13 >> 1) - a4)
                      {
                        v26 = swift_dynamicCastClass();
                        swift_unknownObjectRelease_n();
                        a3 = v31;
                        v27 = v32;
                        if (v26)
                        {
LABEL_52:
                          *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback] = v26;

                          a3(v27);

                          return swift_unknownObjectRelease();
                        }

                        v26 = MEMORY[0x277D84F90];
LABEL_51:
                        swift_unknownObjectRelease();
                        goto LABEL_52;
                      }

                      goto LABEL_60;
                    }

LABEL_59:
                    __break(1u);
LABEL_60:
                    swift_unknownObjectRelease_n();
                    a3 = v31;
                  }
                }

                sub_21E45B900(v17, v18, a4, v13);
                v26 = v25;
                v27 = v32;
                goto LABEL_51;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }
        }

        v17 = sub_21E4DD498();

        goto LABEL_18;
      }
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= 3)
      {
        v18 = 3;
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result >= v18)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21E48F084(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21E4559A8(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6730);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6308);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21E4559A8((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21E48F1B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21E43F008(0, &qword_280C140A0);

    v1 = sub_21E4DD478();
  }

  else
  {
    v1 = a1;

    sub_21E4DD528();
    sub_21E43F008(0, &qword_280C140A0);
  }

  return v1;
}

uint64_t sub_21E48F3FC(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v31 = a5;
  v30 = a4;
  v32 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v13 = sub_21E4DBCC8();
  __swift_project_value_buffer(v13, qword_280C14558);
  v14 = sub_21E4DD1F8();
  v35 = 0xD000000000000079;
  v36 = 0x800000021E4EFDF0;
  v15 = sub_21E45C20C(0);
  if (v16)
  {
    v33 = 32;
    v34 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v15);

    MEMORY[0x223D5ACB0](v33, v34);
  }

  if (("TB,N,VshouldShow" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v33 = 32;
    v34 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000002BLL, 0x800000021E4ED580);
    MEMORY[0x223D5ACB0](v33, v34);
  }

  v18 = v35;
  v17 = v36;
  v19 = sub_21E4DBCB8();
  if (os_log_type_enabled(v19, v14))
  {
    v20 = v14;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v12;
    v23 = v22;
    v33 = v22;
    *v21 = 136315138;
    v24 = sub_21E426648(v18, v17, &v33);

    *(v21 + 4) = v24;
    _os_log_impl(&dword_21E3EB000, v19, v20, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    v12 = v29;
    MEMORY[0x223D5BF10](v23, -1, -1);
    MEMORY[0x223D5BF10](v21, -1, -1);
  }

  else
  {
  }

  v25 = sub_21E4DD158();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v7;
  *(v26 + 40) = v32 & 1;
  *(v26 + 48) = a3;
  *(v26 + 56) = v30 & 1;
  *(v26 + 64) = v31;
  *(v26 + 72) = a6;
  v27 = v7;

  sub_21E46011C(0, 0, v12, &unk_21E4E8BA0, v26);
}

uint64_t sub_21E48F740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = a8;
  *(v8 + 120) = v13;
  *(v8 + 209) = a7;
  *(v8 + 208) = a5;
  *(v8 + 96) = a4;
  *(v8 + 104) = a6;
  v9 = sub_21E4DCBF8();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = sub_21E4DCC18();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E48F8A8, 0, 0);
}

uint64_t sub_21E48F8A8()
{
  v1 = *(v0 + 176);
  sub_21E4DB688();
  v2 = sub_21E4DB698();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_21E48F9A4;
  v4 = *(v0 + 176);
  v5 = *(v0 + 209);
  v6 = *(v0 + 104);
  v7 = *(v0 + 208);

  return sub_21E431D90(v7, v6, v5, v4);
}

uint64_t sub_21E48F9A4(uint64_t a1)
{
  v4 = *v2;
  v4[24] = v1;

  v5 = v4[22];
  if (v1)
  {
    sub_21E424BC0(v5, &qword_27CEC5278);
    v6 = sub_21E48FD94;
  }

  else
  {
    v4[25] = a1;
    sub_21E424BC0(v5, &qword_27CEC5278);
    v6 = sub_21E48FB0C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21E48FB0C()
{
  v1 = v0[25];
  v11 = v0[21];
  v2 = v0[18];
  v14 = v0[20];
  v15 = v0[19];
  v3 = v0[16];
  v13 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  sub_21E43F008(0, &qword_280C14150);
  v12 = sub_21E4DD278();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v4;
  v7[5] = v5;
  v0[6] = sub_21E49ACCC;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21E46C644;
  v0[5] = &block_descriptor_255;
  v8 = _Block_copy(v0 + 2);

  sub_21E4DCC08();
  v0[11] = MEMORY[0x277D84F90];
  sub_21E49AC78(&qword_280C14250, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42E3E8();
  sub_21E4DD358();
  MEMORY[0x223D5AF30](0, v11, v2, v8);
  _Block_release(v8);

  (*(v13 + 8))(v2, v3);
  (*(v14 + 8))(v11, v15);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21E48FD94()
{
  v18 = v0;
  v1 = *(v0 + 192);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_21E4DD3A8();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x223D5ACB0](0xD00000000000004DLL, 0x800000021E4ED1B0);
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
  sub_21E4DD458();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD218();
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2, v3);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = sub_21E4DBCB8();
  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_21E426648(0xD000000000000079, 0x800000021E4EFDF0, &v16);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_21E3EB000, v9, v5, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x223D5BF10](v11, -1, -1);
    MEMORY[0x223D5BF10](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 192);
  (*(v0 + 112))(MEMORY[0x277D84F90]);

  v14 = *(v0 + 8);

  return v14();
}

int64_t sub_21E490098(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v126 = type metadata accessor for SiriSharedUISuggestionsHostingView(0);
  v7 = MEMORY[0x28223BE20](v126);
  v125 = v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v132 = (v111 - v9);
  v139 = sub_21E4DB428();
  v10 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v12 = v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v111[1] = a4;
  v14 = result;
  v15 = MEMORY[0x277D84F90];
  v113 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews;
  *(result + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews) = MEMORY[0x277D84F90];

  v16 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList;
  v138 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList;
  swift_beginAccess();
  v116 = v14;
  *(v14 + v16) = v15;

  v17 = a2;
  v112 = a3;
  if (a2 >> 62)
  {
    v43 = sub_21E4DD488();
    v17 = a2;
    v18 = v43;
    if (!v43)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_31;
    }
  }

  if (v18 < 1)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = 0;
    a3 = v10 + 1;
    do
    {
      v20 = v17;
      v21 = MEMORY[0x223D5B080](v19);
      v22 = *(v21 + 24);
      v146 = *(v21 + 16);
      v147 = v22;

      sub_21E4DB418();
      sub_21E42C090();
      v23 = sub_21E4DD328();
      v25 = v24;
      (*a3)(v12, v139);

      if (v23)
      {
        v26 = 0;
      }

      else
      {
        v26 = v25 == 0xE000000000000000;
      }

      if (v26)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = sub_21E4DD518();

        if ((v27 & 1) == 0)
        {
          v28 = v116;
          v29 = v138;
          swift_beginAccess();
          v30 = swift_unknownObjectRetain();
          MEMORY[0x223D5AD10](v30);
          if (*((*(v29 + v28) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v29 + v28) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v137 = *((*(v29 + v28) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21E4DD0A8();
          }

          sub_21E4DD0D8();
          swift_endAccess();
        }

        swift_unknownObjectRelease();
      }

      ++v19;
      v17 = v20;
    }

    while (v18 != v19);
  }

  else
  {
    v31 = v17 + 32;
    a3 = v10 + 1;
    v32 = MEMORY[0x277D837D0];
    do
    {
      v33 = *(*v31 + 24);
      v146 = *(*v31 + 16);
      v147 = v33;

      sub_21E4DB418();
      sub_21E42C090();
      v34 = sub_21E4DD328();
      v36 = v35;
      (*a3)(v12, v139);

      if (v34)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36 == 0xE000000000000000;
      }

      if (v37)
      {
      }

      else
      {
        v38 = sub_21E4DD518();

        if (v38)
        {
        }

        else
        {
          v39 = v32;
          v40 = v116;
          v41 = v138;
          swift_beginAccess();

          MEMORY[0x223D5AD10](v42);
          if (*((*(v41 + v40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v41 + v40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v137 = *((*(v41 + v40) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21E4DD0A8();
          }

          sub_21E4DD0D8();
          swift_endAccess();

          v32 = v39;
        }
      }

      v31 += 8;
      --v18;
    }

    while (v18);
  }

LABEL_31:
  v44 = *(v138 + v116);
  v18 = v44 >> 62;
  if (v44 >> 62)
  {
LABEL_90:
    v10 = sub_21E4DD488();
    if ((sub_21E4DD488() & 0x8000000000000000) == 0)
    {
      goto LABEL_110;
    }

    __break(1u);
    goto LABEL_92;
  }

  result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v45 = 3;
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v45)
  {
LABEL_117:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v44 & 0xC000000000000001) != 0 && v45)
    {
      type metadata accessor for SiriSharedUISuggestion();
      swift_bridgeObjectRetain_n();
      sub_21E4DD3C8();
      a3 = MEMORY[0x277D84F90];
      if (v45 != 1)
      {
        sub_21E4DD3C8();
        if (v45 != 2)
        {
          sub_21E4DD3C8();
        }
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      a3 = MEMORY[0x277D84F90];
    }

    if (v18)
    {
      v114 = sub_21E4DD498();
      v18 = v47;
      v46 = v48;
      v50 = v49;

      v45 = v50 >> 1;
    }

    else
    {
      v46 = 0;
      v114 = v44 & 0xFFFFFFFFFFFFFF8;
      v18 = (v44 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v145 = a3;
    v115 = v45 - v46;
    if (__OFSUB__(v45, v46))
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v51 = &v116[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressDownHandler];
    a3 = &v116[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressUpHandler];
    v52 = &v116[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressDownHandler];
    v53 = &v116[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressUpHandler];
    v54 = &v116[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_contextMenuHandler];
    swift_unknownObjectRetain();
    v124 = v51;
    swift_beginAccess();
    v123 = a3;
    swift_beginAccess();
    v122 = v52;
    swift_beginAccess();
    v121 = v53;
    swift_beginAccess();
    v120 = v54;
    swift_beginAccess();
    if (v45 == v46)
    {
      break;
    }

    v55 = 0;
    v44 = 0;
    v117 = v45 - v46;
    if (v45 <= v46)
    {
      v56 = v46;
    }

    else
    {
      v56 = v45;
    }

    v119 = v56 - v46;
    v118 = v18 + 8 * v46;
    v57 = *MEMORY[0x277CBF3A0];
    v58 = *(MEMORY[0x277CBF3A0] + 8);
    v59 = *(MEMORY[0x277CBF3A0] + 16);
    v60 = *(MEMORY[0x277CBF3A0] + 24);
    while (1)
    {
      if (v119 == v55)
      {
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (__OFADD__(v55, 1))
      {
        goto LABEL_89;
      }

      v127 = v44;
      v61 = *(v118 + 8 * v55);
      v62 = *v124;
      v63 = v124[1];
      v64 = v123[1];
      v129 = *v123;
      v65 = v122[1];
      v136 = *v122;
      v137 = v64;
      v138 = v65;
      v139 = v61;
      v66 = *v121;
      v133 = v121[1];
      v134 = v66;
      v131 = type metadata accessor for SiriSharedUIAssistantSuggestionView();
      v67 = objc_allocWithZone(v131);
      v130 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
      type metadata accessor for SiriSharedUISuggestionsViewModel(0);
      v128 = swift_allocObject();
      swift_retain_n();
      v68 = v62;
      v135 = v63;
      sub_21E3F1E78(v62);
      v69 = v129;
      sub_21E3F1E78(v129);
      v70 = v136;
      sub_21E3F1E78(v136);
      sub_21E3F1E78(v66);
      *&v67[v130] = sub_21E4241E4();
      *&v67[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView] = 0;
      *&v67[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsMaxWidth] = 0x4074000000000000;
      v67[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_isDismissed] = 0;
      v71 = &v67[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandler];
      *v71 = 0;
      v71[1] = 0;
      v72 = &v67[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler];
      *v72 = 0;
      v72[1] = 0;
      *&v67[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion] = v139;
      swift_beginAccess();
      *v71 = v68;
      v71[1] = v63;
      swift_beginAccess();
      v74 = v137;
      v73 = v138;
      *v72 = v69;
      v72[1] = v74;
      v75 = &v67[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandlerWithData];
      *v75 = v70;
      v75[1] = v73;
      v76 = &v67[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandlerWithData];
      v78 = v133;
      v77 = v134;
      *v76 = v134;
      v76[1] = v78;
      v130 = v55;
      *&v67[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index] = v55;

      v128 = v68;
      sub_21E3F1E78(v68);
      sub_21E3F1E78(v69);
      sub_21E3F1E78(v70);
      sub_21E3F1E78(v77);
      v144.receiver = v67;
      v144.super_class = v131;
      v44 = objc_msgSendSuper2(&v144, sel_initWithFrame_, v57, v58, v59, v60);
      v131 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
      v79 = *(v44 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
      v80 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v81 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      KeyPath = swift_getKeyPath();
      v83 = v126;
      v84 = v132;
      *(v132 + *(v126 + 32)) = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E00);
      swift_storeEnumTagMultiPayload();
      v85 = swift_getKeyPath();
      *v84 = v79;
      v84[1] = sub_21E49AEAC;
      v84[2] = v80;
      v84[3] = sub_21E49AEB0;
      v84[4] = v81;
      v84[5] = CGPointMake;
      v84[6] = 0;
      v86 = v84 + *(v83 + 36);
      *v86 = v85;
      v86[8] = 0;
      v87 = v84 + *(v83 + 40);
      v140 = 0;
      v88 = v44;

      sub_21E4DC9F8();
      MEMORY[0x223D5BFD0](&v143);

      v89 = v142;
      *v87 = v141;
      *(v87 + 1) = v89;
      sub_21E48B3D4(v84, v125);
      v90 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC62D8));
      v91 = sub_21E4DBFB8();
      v92 = *&v88[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView];
      *&v88[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView] = v91;

      v18 = v88;
      [v18 addSubview_];
      v10 = [v18 layer];

      [v10 setCornerRadius_];
      if (!*MEMORY[0x277D76620])
      {
        break;
      }

      if (UIInterfaceOrientationIsLandscape([*MEMORY[0x277D76620] activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad() && v115 > 2)
      {
        *(v18 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsMaxWidth) = 0x406B800000000000;
      }

      sub_21E48798C(v139);

      sub_21E3F1EB0(v134);
      sub_21E3F1EB0(v136);
      sub_21E3F1EB0(v69);
      sub_21E3F1EB0(v128);

      sub_21E48B448(v132);
      v93 = *v120;
      v94 = v120[1];
      v95 = *(v131 + v44);
      a3 = swift_getKeyPath();
      v138 = v111;
      MEMORY[0x28223BE20](a3);
      v111[-4] = v95;
      v111[-3] = v93;
      v111[-2] = v94;
      v141 = v95;
      sub_21E3F1E78(v93);
      sub_21E49AC78(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

      v44 = v127;
      sub_21E4DB708();
      sub_21E3F1EB0(v93);

      v18 = v18;
      MEMORY[0x223D5AD10]();
      if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21E4DD0A8();
      }

      sub_21E4DD0D8();

      v55 = v130 + 1;
      if (v117 == v130 + 1)
      {
        v44 = v145;
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    if (v10 >= 3)
    {
      v110 = 3;
    }

    else
    {
      v110 = v10;
    }

    if (v10 >= 0)
    {
      v45 = v110;
    }

    else
    {
      v45 = 3;
    }

    result = sub_21E4DD488();
    if (result < v45)
    {
      goto LABEL_117;
    }
  }

  v44 = MEMORY[0x277D84F90];
LABEL_63:
  swift_unknownObjectRelease();
  v18 = v44 >> 62;
  if (!(v44 >> 62))
  {
    v10 = (v44 & 0xFFFFFFFFFFFFFF8);

    sub_21E4DD528();
    sub_21E43F008(0, &qword_280C140A0);
    *&v116[v113] = v44;

    v96 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v96 >= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v96 >= v12)
    {
      goto LABEL_68;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

LABEL_93:
  if ((v44 & 0x8000000000000000) != 0)
  {
    v10 = v44;
  }

  else
  {
    v10 = (v44 & 0xFFFFFFFFFFFFFF8);
  }

  sub_21E43F008(0, &qword_280C140A0);

  v107 = sub_21E4DD478();

  *&v116[v113] = v107;

  v108 = sub_21E4DD488();
  if (sub_21E4DD488() < 0)
  {
    goto LABEL_109;
  }

  if (v108 >= 3)
  {
    v109 = 3;
  }

  else
  {
    v109 = v108;
  }

  if (v108 >= 0)
  {
    v12 = v109;
  }

  else
  {
    v12 = 3;
  }

  if (sub_21E4DD488() < v12)
  {
    goto LABEL_104;
  }

LABEL_68:
  if ((v44 & 0xC000000000000001) != 0 && v12)
  {
    type metadata accessor for SiriSharedUIAssistantSuggestionView();

    sub_21E4DD3C8();
    if (v12 != 1)
    {
      sub_21E4DD3C8();
      if (v12 != 2)
      {
        sub_21E4DD3C8();
      }
    }
  }

  else
  {
  }

  if (v18)
  {
    v10 = sub_21E4DD498();
    a3 = v97;
    v18 = v98;
    v12 = v99;

    if ((v12 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v10 = (v44 & 0xFFFFFFFFFFFFFF8);
    a3 = ((v44 & 0xFFFFFFFFFFFFFF8) + 32);
    v12 = (2 * v12) | 1;
    if ((v12 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  sub_21E4DD538();
  swift_unknownObjectRetain_n();
  v104 = swift_dynamicCastClass();
  if (!v104)
  {
    swift_unknownObjectRelease();
    v104 = MEMORY[0x277D84F90];
  }

  v105 = *(v104 + 16);

  if (!__OFSUB__(v12 >> 1, v18))
  {
    if (v105 != (v12 >> 1) - v18)
    {
      goto LABEL_107;
    }

    v101 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v102 = v112;
    v103 = v116;
    if (!v101)
    {
      v101 = MEMORY[0x277D84F90];
      goto LABEL_85;
    }

    goto LABEL_86;
  }

LABEL_106:
  __break(1u);
LABEL_107:
  swift_unknownObjectRelease_n();
LABEL_78:
  sub_21E45B900(v10, a3, v18, v12);
  v101 = v100;
  v102 = v112;
  v103 = v116;
LABEL_85:
  swift_unknownObjectRelease();
LABEL_86:
  *&v103[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback] = v101;

  (v102)(v106);

  return swift_unknownObjectRelease();
}

void sub_21E491324(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_21E43F008(0, a3);
  v4 = sub_21E4DD078();
  (*(a2 + 16))(a2, v4);
}

uint64_t sub_21E491398(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v51 = a5;
  v52 = a7;
  v50 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - v14;
  if (v7[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_shouldSuppressSuggestions] == 1)
  {
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v16 = sub_21E4DBCC8();
    __swift_project_value_buffer(v16, qword_280C14558);
    v17 = sub_21E4DD1F8();
    v55 = 0xD000000000000054;
    v56 = 0x800000021E4EFE70;
    v18 = sub_21E45C20C(0);
    if (v19)
    {
      v53 = 32;
      v54 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v18);

      MEMORY[0x223D5ACB0](v53, v54);
    }

    if (("on continuer suggestions" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v53 = 32;
      v54 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000051, 0x800000021E4EFF10);
      MEMORY[0x223D5ACB0](v53, v54);
    }

    v21 = v55;
    v20 = v56;
    v22 = sub_21E4DBCB8();
    if (os_log_type_enabled(v22, v17))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53 = v24;
      *v23 = 136315138;
      v25 = sub_21E426648(v21, v20, &v53);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_21E3EB000, v22, v17, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x223D5BF10](v24, -1, -1);
      MEMORY[0x223D5BF10](v23, -1, -1);
    }

    else
    {
    }

    return a6(MEMORY[0x277D84F90]);
  }

  else
  {
    v48 = a4;
    v49 = a6;
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v26 = sub_21E4DBCC8();
    __swift_project_value_buffer(v26, qword_280C14558);
    v27 = sub_21E4DD1F8();
    v55 = 0xD000000000000054;
    v56 = 0x800000021E4EFE70;
    v28 = sub_21E45C20C(0);
    if (v29)
    {
      v53 = 32;
      v54 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v28);

      MEMORY[0x223D5ACB0](v53, v54);
    }

    if (("nSource:completion:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v53 = 32;
      v54 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000038, 0x800000021E4EFED0);
      MEMORY[0x223D5ACB0](v53, v54);
    }

    v31 = v55;
    v30 = v56;
    v32 = sub_21E4DBCB8();
    if (os_log_type_enabled(v32, v27))
    {
      v33 = v27;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = a2;
      v36 = v35;
      v53 = v35;
      *v34 = 136315138;
      v37 = sub_21E426648(v31, v30, &v53);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_21E3EB000, v32, v33, "%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      a2 = v47;
      MEMORY[0x223D5BF10](v36, -1, -1);
      MEMORY[0x223D5BF10](v34, -1, -1);
    }

    else
    {
    }

    v39 = MEMORY[0x277D84F90];
    *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews] = MEMORY[0x277D84F90];

    *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList] = v39;

    v40 = sub_21E4DD158();
    (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    v42 = v50;
    *(v41 + 32) = v8;
    *(v41 + 40) = v42;
    *(v41 + 48) = a2;
    *(v41 + 56) = a3;
    *(v41 + 64) = v48 & 1;
    v43 = v52;
    v44 = v49;
    *(v41 + 72) = v51;
    *(v41 + 80) = v44;
    *(v41 + 88) = v43;
    v45 = v8;

    v46 = a3;

    sub_21E46011C(0, 0, v15, &unk_21E4E8BB0, v41);
  }
}

uint64_t sub_21E4918F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 144) = v14;
  *(v8 + 128) = v13;
  *(v8 + 224) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  v9 = sub_21E4DCBF8();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  v10 = sub_21E4DCC18();
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E491A2C, 0, 0);
}

uint64_t sub_21E491A2C()
{
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_21E491AD8;
  v2 = *(v0 + 224);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);

  return sub_21E435BB4(v6, v5, v3, v2, v4);
}

uint64_t sub_21E491AD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_21E491E80;
  }

  else
  {
    *(v4 + 216) = a1;
    v5 = sub_21E491C00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21E491C00()
{
  v1 = v0[27];
  v11 = v0[24];
  v2 = v0[21];
  v14 = v0[23];
  v15 = v0[22];
  v3 = v0[19];
  v13 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  sub_21E43F008(0, &qword_280C14150);
  v12 = sub_21E4DD278();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v4;
  v7[5] = v5;
  v0[6] = sub_21E49ACC0;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21E46C644;
  v0[5] = &block_descriptor_247;
  v8 = _Block_copy(v0 + 2);

  sub_21E4DCC08();
  v0[11] = MEMORY[0x277D84F90];
  sub_21E49AC78(&qword_280C14250, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42E3E8();
  sub_21E4DD358();
  MEMORY[0x223D5AF30](0, v11, v2, v8);
  _Block_release(v8);

  (*(v13 + 8))(v2, v3);
  (*(v14 + 8))(v11, v15);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21E491E80()
{
  v18 = v0;
  v1 = *(v0 + 208);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_21E4DD3A8();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x223D5ACB0](0xD00000000000004FLL, 0x800000021E4ED110);
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
  sub_21E4DD458();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD218();
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2, v3);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = sub_21E4DBCB8();
  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_21E426648(0xD000000000000054, 0x800000021E4EFE70, &v16);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_21E3EB000, v9, v5, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x223D5BF10](v11, -1, -1);
    MEMORY[0x223D5BF10](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 208);
  (*(v0 + 136))(MEMORY[0x277D84F90]);

  v14 = *(v0 + 8);

  return v14();
}

int64_t sub_21E49217C(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_21E493B3C(a2);
    v11 = v10;
    v13 = v12;
    *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList] = v9;

    v14 = v11 >> 62;
    if (v11 >> 62)
    {
      sub_21E43F008(0, &qword_280C140A0);

      v15 = sub_21E4DD478();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_21E4DD528();
      sub_21E43F008(0, &qword_280C140A0);
      v15 = v11;
    }

    *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews] = v15;

    v16 = v9 >> 62;
    if (v9 >> 62)
    {
      v17 = sub_21E4DD488();
      if (sub_21E4DD488() < 0)
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v17 >= 3)
      {
        v29 = 3;
      }

      else
      {
        v29 = v17;
      }

      if (v17 >= 0)
      {
        v17 = v29;
      }

      else
      {
        v17 = 3;
      }

      result = sub_21E4DD488();
      if (result >= v17)
      {
LABEL_9:
        if ((v9 & 0xC000000000000001) != 0 && v17)
        {
          type metadata accessor for SiriSharedUISuggestion();

          sub_21E4DD3C8();
          if (v17 != 1)
          {
            sub_21E4DD3C8();
            if (v17 != 2)
            {
              sub_21E4DD3C8();
            }
          }

          if (!v16)
          {
            goto LABEL_15;
          }
        }

        else
        {

          if (!v16)
          {
LABEL_15:
            v16 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
            v31 = v13;
            if (!v14)
            {
              v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v18 >= 3)
              {
                v13 = 3;
              }

              else
              {
                v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              goto LABEL_33;
            }

            if (v11 < 0)
            {
              v17 = v11;
            }

            else
            {
              v17 = v11 & 0xFFFFFFFFFFFFFF8;
            }

            v19 = sub_21E4DD488();
            if ((sub_21E4DD488() & 0x8000000000000000) == 0)
            {
              if (v19 >= 3)
              {
                v20 = 3;
              }

              else
              {
                v20 = v19;
              }

              if (v19 >= 0)
              {
                v13 = v20;
              }

              else
              {
                v13 = 3;
              }

              v18 = sub_21E4DD488();
LABEL_33:
              if (v18 >= v13)
              {
                if ((v11 & 0xC000000000000001) != 0 && v13)
                {
                  type metadata accessor for SiriSharedUIAssistantSuggestionView();

                  sub_21E4DD3C8();
                  if (v13 != 1)
                  {
                    sub_21E4DD3C8();
                    if (v13 != 2)
                    {
                      sub_21E4DD3C8();
                    }
                  }
                }

                else
                {
                }

                if (v14)
                {
                  v16 = sub_21E4DD498();
                  v17 = v21;
                  a4 = v22;
                  v13 = v23;

                  if (v13)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {
                  a4 = 0;
                  v16 = v11 & 0xFFFFFFFFFFFFFF8;
                  v17 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
                  v13 = (2 * v13) | 1;
                  if (v13)
                  {
LABEL_45:
                    v30 = a3;
                    sub_21E4DD538();
                    swift_unknownObjectRetain_n();
                    v27 = swift_dynamicCastClass();
                    if (!v27)
                    {
                      swift_unknownObjectRelease();
                      v27 = MEMORY[0x277D84F90];
                    }

                    v28 = *(v27 + 16);

                    if (!__OFSUB__(v13 >> 1, a4))
                    {
                      if (v28 == (v13 >> 1) - a4)
                      {
                        v25 = swift_dynamicCastClass();
                        swift_unknownObjectRelease_n();
                        a3 = v30;
                        v26 = v31;
                        if (v25)
                        {
LABEL_52:
                          *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback] = v25;

                          a3(v26);

                          return swift_unknownObjectRelease();
                        }

                        v25 = MEMORY[0x277D84F90];
LABEL_51:
                        swift_unknownObjectRelease();
                        goto LABEL_52;
                      }

                      goto LABEL_60;
                    }

LABEL_59:
                    __break(1u);
LABEL_60:
                    swift_unknownObjectRelease_n();
                    a3 = v30;
                  }
                }

                sub_21E45B900(v16, v17, a4, v13);
                v25 = v24;
                v26 = v31;
                goto LABEL_51;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }
        }

        v16 = sub_21E4DD498();

        goto LABEL_18;
      }
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= 3)
      {
        v17 = 3;
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result >= v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_21E4926CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v53 = a4;
  v54 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v47[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v47[-v17];
  if (*(v6 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_shouldSuppressSuggestions) == 1)
  {
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v19 = sub_21E4DBCC8();
    __swift_project_value_buffer(v19, qword_280C14558);
    v20 = sub_21E4DD1F8();
    v57 = 0xD00000000000003FLL;
    v58 = 0x800000021E4EFF70;
    v21 = sub_21E45C20C(0);
    if (v22)
    {
      v55 = 32;
      v56 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v21);

      MEMORY[0x223D5ACB0](v55, v56);
    }

    if (("ching autocomplete suggestions" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v55 = 32;
      v56 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000054, 0x800000021E4EFFE0);
      MEMORY[0x223D5ACB0](v55, v56);
    }

    v24 = v57;
    v23 = v58;
    v25 = sub_21E4DBCB8();
    if (os_log_type_enabled(v25, v20))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55 = v27;
      *v26 = 136315138;
      v28 = sub_21E426648(v24, v23, &v55);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_21E3EB000, v25, v20, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x223D5BF10](v27, -1, -1);
      MEMORY[0x223D5BF10](v26, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v48 = a3;
    v49 = a5;
    v51 = a6;
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v29 = sub_21E4DBCC8();
    __swift_project_value_buffer(v29, qword_280C14558);
    v30 = sub_21E4DD1F8();
    v57 = 0xD00000000000003FLL;
    v58 = 0x800000021E4EFF70;
    v31 = sub_21E45C20C(0);
    if (v32)
    {
      v55 = 32;
      v56 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v31);

      MEMORY[0x223D5ACB0](v55, v56);
    }

    if (("eviceLocked:turnId:completion:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v55 = 32;
      v56 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000002ELL, 0x800000021E4EFFB0);
      MEMORY[0x223D5ACB0](v55, v56);
    }

    v50 = a2;
    v33 = v57;
    v34 = v58;
    v35 = sub_21E4DBCB8();
    if (os_log_type_enabled(v35, v30))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 136315138;
      v38 = sub_21E426648(v33, v34, &v55);

      *(v36 + 4) = v38;
      _os_log_impl(&dword_21E3EB000, v35, v30, "%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x223D5BF10](v37, -1, -1);
      MEMORY[0x223D5BF10](v36, -1, -1);
    }

    else
    {
    }

    v39 = v48;
    v40 = sub_21E4DD158();
    (*(*(v40 - 8) + 56))(v18, 1, 1, v40);
    sub_21E424848(v53, v15, &qword_27CEC5278);
    v41 = (*(v52 + 80) + 57) & ~*(v52 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    v43 = v54;
    *(v42 + 32) = v7;
    *(v42 + 40) = v43;
    *(v42 + 48) = v50;
    *(v42 + 56) = v39 & 1;
    sub_21E49970C(v15, v42 + v41);
    v44 = (v42 + ((v13 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
    v45 = v51;
    *v44 = v49;
    v44[1] = v45;
    v46 = v7;

    sub_21E46011C(0, 0, v18, &unk_21E4E8BC8, v42);
  }
}

uint64_t sub_21E492CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 128) = v13;
  *(v8 + 136) = v14;
  *(v8 + 216) = a7;
  *(v8 + 112) = a6;
  *(v8 + 120) = a8;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  v9 = sub_21E4DCBF8();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  v10 = sub_21E4DCC18();
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E492DD0, 0, 0);
}

uint64_t sub_21E492DD0()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_21E492E7C;
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 216);
  v5 = *(v0 + 104);

  return sub_21E438CC8(v5, v2, v4, v3);
}

uint64_t sub_21E492E7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_21E493224;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_21E492FA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21E492FA4()
{
  v1 = v0[26];
  v11 = v0[23];
  v2 = v0[20];
  v14 = v0[22];
  v15 = v0[21];
  v3 = v0[18];
  v13 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  sub_21E43F008(0, &qword_280C14150);
  v12 = sub_21E4DD278();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v4;
  v7[5] = v5;
  v0[6] = sub_21E49AC54;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21E46C644;
  v0[5] = &block_descriptor_11;
  v8 = _Block_copy(v0 + 2);

  sub_21E4DCC08();
  v0[11] = MEMORY[0x277D84F90];
  sub_21E49AC78(&qword_280C14250, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42E3E8();
  sub_21E4DD358();
  MEMORY[0x223D5AF30](0, v11, v2, v8);
  _Block_release(v8);

  (*(v13 + 8))(v2, v3);
  (*(v14 + 8))(v11, v15);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21E493224()
{
  v18 = v0;
  v1 = *(v0 + 200);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_21E4DD3A8();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x223D5ACB0](0xD000000000000052, 0x800000021E4F0800);
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
  sub_21E4DD458();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD218();
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2, v3);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = sub_21E4DBCB8();
  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_21E426648(0xD00000000000003FLL, 0x800000021E4EFF70, &v16);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_21E3EB000, v9, v5, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x223D5BF10](v11, -1, -1);
    MEMORY[0x223D5BF10](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 200);
  (*(v0 + 128))(MEMORY[0x277D84F90]);

  v14 = *(v0 + 8);

  return v14();
}

int64_t sub_21E493518(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_21E493B3C(a2);
    v11 = v10;
    v13 = v12;
    v14 = v10 >> 62;
    if (v10 >> 62)
    {
      sub_21E43F008(0, &qword_280C140A0);

      v15 = sub_21E4DD478();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_21E4DD528();
      sub_21E43F008(0, &qword_280C140A0);
      v15 = v11;
    }

    *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews] = v15;

    v16 = v9 >> 62;
    if (v9 >> 62)
    {
      v17 = sub_21E4DD488();
      if (sub_21E4DD488() < 0)
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v17 >= 3)
      {
        v29 = 3;
      }

      else
      {
        v29 = v17;
      }

      if (v17 >= 0)
      {
        v17 = v29;
      }

      else
      {
        v17 = 3;
      }

      result = sub_21E4DD488();
      if (result >= v17)
      {
LABEL_9:
        if ((v9 & 0xC000000000000001) != 0 && v17)
        {
          type metadata accessor for SiriSharedUISuggestion();

          sub_21E4DD3C8();
          if (v17 != 1)
          {
            sub_21E4DD3C8();
            if (v17 != 2)
            {
              sub_21E4DD3C8();
            }
          }

          if (!v16)
          {
            goto LABEL_15;
          }
        }

        else
        {

          if (!v16)
          {
LABEL_15:
            v16 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
            v31 = v13;
            if (!v14)
            {
              v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v18 >= 3)
              {
                v13 = 3;
              }

              else
              {
                v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              goto LABEL_33;
            }

            if (v11 < 0)
            {
              v17 = v11;
            }

            else
            {
              v17 = v11 & 0xFFFFFFFFFFFFFF8;
            }

            v19 = sub_21E4DD488();
            if ((sub_21E4DD488() & 0x8000000000000000) == 0)
            {
              if (v19 >= 3)
              {
                v20 = 3;
              }

              else
              {
                v20 = v19;
              }

              if (v19 >= 0)
              {
                v13 = v20;
              }

              else
              {
                v13 = 3;
              }

              v18 = sub_21E4DD488();
LABEL_33:
              if (v18 >= v13)
              {
                if ((v11 & 0xC000000000000001) != 0 && v13)
                {
                  type metadata accessor for SiriSharedUIAssistantSuggestionView();

                  sub_21E4DD3C8();
                  if (v13 != 1)
                  {
                    sub_21E4DD3C8();
                    if (v13 != 2)
                    {
                      sub_21E4DD3C8();
                    }
                  }
                }

                else
                {
                }

                if (v14)
                {
                  v16 = sub_21E4DD498();
                  v17 = v21;
                  a4 = v22;
                  v13 = v23;

                  if (v13)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {
                  a4 = 0;
                  v16 = v11 & 0xFFFFFFFFFFFFFF8;
                  v17 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
                  v13 = (2 * v13) | 1;
                  if (v13)
                  {
LABEL_45:
                    v30 = a3;
                    sub_21E4DD538();
                    swift_unknownObjectRetain_n();
                    v27 = swift_dynamicCastClass();
                    if (!v27)
                    {
                      swift_unknownObjectRelease();
                      v27 = MEMORY[0x277D84F90];
                    }

                    v28 = *(v27 + 16);

                    if (!__OFSUB__(v13 >> 1, a4))
                    {
                      if (v28 == (v13 >> 1) - a4)
                      {
                        v25 = swift_dynamicCastClass();
                        swift_unknownObjectRelease_n();
                        a3 = v30;
                        v26 = v31;
                        if (v25)
                        {
LABEL_52:
                          *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback] = v25;

                          a3(v26);

                          return swift_unknownObjectRelease();
                        }

                        v25 = MEMORY[0x277D84F90];
LABEL_51:
                        swift_unknownObjectRelease();
                        goto LABEL_52;
                      }

                      goto LABEL_60;
                    }

LABEL_59:
                    __break(1u);
LABEL_60:
                    swift_unknownObjectRelease_n();
                    a3 = v30;
                  }
                }

                sub_21E45B900(v16, v17, a4, v13);
                v25 = v24;
                v26 = v31;
                goto LABEL_51;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }
        }

        v16 = sub_21E4DD498();

        goto LABEL_18;
      }
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= 3)
      {
        v17 = 3;
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result >= v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21E493B3C(unint64_t a1)
{
  v107 = type metadata accessor for SiriSharedUISuggestionsHostingView(0);
  v3 = MEMORY[0x28223BE20](v107);
  v106 = v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v115 = (v98 - v5);
  v6 = sub_21E4DB428();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v120 = v1;
    if (v10)
    {
      if (v10 < 1)
      {
        goto LABEL_76;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = 0;
        v12 = (v7 + 8);
        v100 = MEMORY[0x277D84F90];
        do
        {
          v13 = MEMORY[0x223D5B080](v11, a1);
          v14 = *(v13 + 24);
          v127 = *(v13 + 16);
          v128 = v14;

          sub_21E4DB418();
          sub_21E42C090();
          v15 = sub_21E4DD328();
          v17 = v16;
          (*v12)(v9, v6);

          if (v15)
          {
            v18 = 0;
          }

          else
          {
            v18 = v17 == 0xE000000000000000;
          }

          if (v18)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            v19 = sub_21E4DD518();

            if (v19)
            {
              swift_unknownObjectRelease();
            }

            else
            {
              v20 = swift_unknownObjectRetain();
              MEMORY[0x223D5AD10](v20);
              if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21E4DD0A8();
              }

              sub_21E4DD0D8();
              swift_unknownObjectRelease();
              v100 = v130;
            }
          }

          ++v11;
        }

        while (v10 != v11);
      }

      else
      {
        v88 = a1 + 32;
        v89 = (v7 + 8);
        v100 = MEMORY[0x277D84F90];
        do
        {
          v90 = *(*v88 + 24);
          v127 = *(*v88 + 16);
          v128 = v90;

          sub_21E4DB418();
          sub_21E42C090();
          v91 = sub_21E4DD328();
          v93 = v92;
          (*v89)(v9, v6);

          if (v91)
          {
            v94 = 0;
          }

          else
          {
            v94 = v93 == 0xE000000000000000;
          }

          if (v94)
          {
          }

          else
          {
            v95 = sub_21E4DD518();

            if (v95)
            {
            }

            else
            {

              MEMORY[0x223D5AD10](v96);
              if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21E4DD0A8();
              }

              sub_21E4DD0D8();

              v100 = v130;
            }
          }

          v88 += 8;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v100 = MEMORY[0x277D84F90];
    }

    v9 = v100;
    v7 = v100 >> 62;
    if (!(v100 >> 62))
    {
      result = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= 3)
      {
        v1 = 3;
      }

      else
      {
        v1 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result >= v1)
      {
        goto LABEL_24;
      }

LABEL_86:
      __break(1u);
      return result;
    }

    v1 = sub_21E4DD488();
    if (sub_21E4DD488() < 0)
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    while (1)
    {
      if (v1 >= 3)
      {
        v97 = 3;
      }

      else
      {
        v97 = v1;
      }

      if (v1 >= 0)
      {
        v1 = v97;
      }

      else
      {
        v1 = 3;
      }

      result = sub_21E4DD488();
      if (result < v1)
      {
        goto LABEL_86;
      }

LABEL_24:
      if ((v9 & 0xC000000000000001) != 0 && v1)
      {
        type metadata accessor for SiriSharedUISuggestion();

        sub_21E4DD3C8();
        v22 = MEMORY[0x277D84F90];
        if (v1 != 1)
        {
          sub_21E4DD3C8();
          if (v1 != 2)
          {
            sub_21E4DD3C8();
          }
        }

        if (!v7)
        {
LABEL_30:
          v23 = 0;
          v24 = v9 & 0xFFFFFFFFFFFFFF8;
          v25 = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
          goto LABEL_33;
        }
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
        if (!v7)
        {
          goto LABEL_30;
        }
      }

      v24 = sub_21E4DD498();
      v1 = v26 >> 1;
LABEL_33:
      v129 = v22;
      v99 = v1 - v23;
      if (__OFSUB__(v1, v23))
      {
        goto LABEL_75;
      }

      v98[1] = v24;
      v118 = v23;
      v111 = v25;
      if (v1 == v23)
      {
        goto LABEL_38;
      }

      if (v1 > v23)
      {
        break;
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
    }

    if (*(*(v25 + v23) + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type) == 2)
    {
      v27 = v120;
      v28 = (v120 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressDownHandler);
      swift_beginAccess();
      v29 = v28[1];
      v116 = *v28;
      v117 = v29;
      v30 = (v27 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressUpHandler);
      swift_beginAccess();
      v32 = *v30;
      v31 = v30[1];
      v33 = (v27 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressDownHandler);
      swift_beginAccess();
      v34 = *v33;
      v35 = v33[1];
      v36 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressUpHandler;
    }

    else
    {
LABEL_38:
      v27 = v120;
      v37 = (v120 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressDownHandler);
      swift_beginAccess();
      v38 = v37[1];
      v116 = *v37;
      v117 = v38;
      v39 = (v27 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressUpHandler);
      swift_beginAccess();
      v32 = *v39;
      v31 = v39[1];
      v40 = (v27 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressDownHandler);
      swift_beginAccess();
      v34 = *v40;
      v35 = v40[1];
      v36 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressUpHandler;
    }

    v41 = (v27 + v36);
    swift_beginAccess();
    v43 = *v41;
    v42 = v41[1];
    v126 = v22;
    v44 = (v27 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_contextMenuHandler);
    sub_21E3F1E78(v116);
    sub_21E3F1E78(v32);
    sub_21E3F1E78(v34);
    sub_21E3F1E78(v43);
    swift_unknownObjectRetain();
    v105 = v44;
    swift_beginAccess();
    v6 = v34;
    a1 = v22;
    if (v1 != v118)
    {
      v45 = v31;
      v46 = v32;
      v104 = v42;
      v120 = v6;
      v47 = 0;
      v7 = 0;
      v101 = v1 - v118;
      if (v1 <= v118)
      {
        v48 = v118;
      }

      else
      {
        v48 = v1;
      }

      v103 = v48 - v118;
      v102 = v111 + 8 * v118;
      v49 = *MEMORY[0x277CBF3A0];
      v50 = *(MEMORY[0x277CBF3A0] + 8);
      v51 = *(MEMORY[0x277CBF3A0] + 16);
      v52 = *(MEMORY[0x277CBF3A0] + 24);
      v53 = v43;
      v9 = v117;
      v114 = v46;
      v113 = v45;
      v119 = v35;
      v112 = v53;
      while (v103 != v47)
      {
        if (__OFADD__(v47, 1))
        {
          goto LABEL_71;
        }

        v108 = v7;
        v54 = *&v102[8 * v47];
        v118 = v47;
        v111 = type metadata accessor for SiriSharedUIAssistantSuggestionView();
        v55 = objc_allocWithZone(v111);
        v110 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
        type metadata accessor for SiriSharedUISuggestionsViewModel(0);
        v109 = swift_allocObject();

        v56 = v116;
        sub_21E3F1E78(v116);
        sub_21E3F1E78(v46);
        v57 = v9;
        sub_21E3F1E78(v120);
        v7 = v104;
        sub_21E3F1E78(v53);
        v58 = v54;

        *(v110 + v55) = sub_21E4241E4();
        *&v55[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView] = 0;
        *&v55[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsMaxWidth] = 0x4074000000000000;
        v55[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_isDismissed] = 0;
        v59 = &v55[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandler];
        *v59 = 0;
        v59[1] = 0;
        v60 = &v55[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler];
        *v60 = 0;
        v60[1] = 0;
        *&v55[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion] = v58;
        swift_beginAccess();
        *v59 = v56;
        v59[1] = v57;
        swift_beginAccess();
        *v60 = v46;
        v60[1] = v45;
        v61 = &v55[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandlerWithData];
        v62 = v120;
        v63 = v119;
        *v61 = v120;
        v61[1] = v63;
        v64 = &v55[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandlerWithData];
        *v64 = v53;
        v64[1] = v7;
        *&v55[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index] = v118;
        sub_21E3F1E78(v56);
        sub_21E3F1E78(v46);
        sub_21E3F1E78(v62);
        sub_21E3F1E78(v53);
        v125.receiver = v55;
        v125.super_class = v111;
        v111 = v58;

        v65 = objc_msgSendSuper2(&v125, sel_initWithFrame_, v49, v50, v51, v52);
        v66 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
        v67 = *&v65[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel];
        v68 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v69 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        KeyPath = swift_getKeyPath();
        v71 = v107;
        v72 = v115;
        *(v115 + *(v107 + 32)) = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E00);
        swift_storeEnumTagMultiPayload();
        v73 = swift_getKeyPath();
        *v72 = v67;
        v72[1] = sub_21E49AC44;
        v72[2] = v68;
        v72[3] = sub_21E49AC4C;
        v72[4] = v69;
        v72[5] = CGPointMake;
        v72[6] = 0;
        v74 = v72 + *(v71 + 36);
        *v74 = v73;
        v74[8] = 0;
        v75 = v72 + *(v71 + 40);
        v121 = 0;
        v9 = v65;

        sub_21E4DC9F8();
        MEMORY[0x223D5BFD0](v124);

        v76 = v123;
        *v75 = v122;
        *(v75 + 1) = v76;
        sub_21E48B3D4(v72, v106);
        v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC62D8));
        v77 = sub_21E4DBFB8();
        v78 = *(v9 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView);
        *(v9 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView) = v77;

        v79 = v9;
        [v79 addSubview_];
        v80 = [v79 layer];
        [v80 setCornerRadius_];

        if (!*MEMORY[0x277D76620])
        {
          goto LABEL_78;
        }

        if (UIInterfaceOrientationIsLandscape([*MEMORY[0x277D76620] activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad() && v99 >= 3)
        {
          *&v79[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsMaxWidth] = 0x406B800000000000;
        }

        sub_21E48798C(v111);

        sub_21E3F1EB0(v112);
        sub_21E3F1EB0(v120);
        sub_21E3F1EB0(v114);
        sub_21E3F1EB0(v116);

        sub_21E48B448(v115);
        v81 = *v105;
        v82 = v105[1];
        v83 = *&v65[v66];
        v84 = swift_getKeyPath();
        v110 = v98;
        MEMORY[0x28223BE20](v84);
        v98[-4] = v83;
        v98[-3] = v81;
        v98[-2] = v82;
        v122 = v83;
        sub_21E3F1E78(v81);
        sub_21E49AC78(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

        v7 = v108;
        sub_21E4DB708();
        sub_21E3F1EB0(v81);

        v85 = v79;
        MEMORY[0x223D5AD10]();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21E4DD0A8();
        }

        sub_21E4DD0D8();
        a1 = v129;
        v86 = objc_allocWithZone(SiriSharedUISuggestionViewWrapper);
        v87 = sub_21E4DCF68();
        v6 = [v86 initWithSuggestionText:v87 view:v85];

        v1 = &v126;
        MEMORY[0x223D5AD10]();
        if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21E4DD0A8();
        }

        sub_21E4DD0D8();

        v47 = v118 + 1;
        v9 = v117;
        v46 = v114;
        v45 = v113;
        v53 = v112;
        if (v101 == v118 + 1)
        {
          v6 = v120;
          v43 = v112;
          v32 = v114;
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v10 = sub_21E4DD488();
      continue;
    }

    break;
  }

LABEL_57:
  swift_unknownObjectRelease();
  sub_21E3F1EB0(v43);
  sub_21E3F1EB0(v6);
  sub_21E3F1EB0(v32);
  sub_21E3F1EB0(v116);
  swift_unknownObjectRelease();
  return v100;
}

uint64_t sub_21E494B88()
{
  v1 = v0;
  swift_beginAccess();

  sub_21E493B3C(v2);
  v4 = v3;
  v6 = v5;

  if (v4 >> 62)
  {
    sub_21E43F008(0, &qword_280C140A0);

    v7 = sub_21E4DD478();
  }

  else
  {

    sub_21E4DD528();
    sub_21E43F008(0, &qword_280C140A0);
    v7 = v4;
  }

  *(v1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews) = v7;

  return v6;
}

uint64_t sub_21E494DB8()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews) = MEMORY[0x277D84F90];

  v2 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList;
  swift_beginAccess();
  *(v0 + v2) = v1;
}

uint64_t sub_21E494EAC()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews) = MEMORY[0x277D84F90];

  *(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList) = v1;
}

void sub_21E494F78()
{
  v197 = sub_21E4DBB28();
  v1 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v196 = &v187 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v187 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v187 - v7;
  v9 = sub_21E4DBAD8();
  v198 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v194 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v195 = &v187 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v201 = &v187 - v15;
  v16 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback);
  if (!v16)
  {
    v33 = 0x800000021E4F0040;
    if (qword_280C14550 == -1)
    {
LABEL_20:
      v34 = sub_21E4DBCC8();
      __swift_project_value_buffer(v34, qword_280C14558);
      v35 = sub_21E4DD1F8();
      v213 = 0xD000000000000021;
      v214 = v33;
      v36 = sub_21E45C20C(0);
      if (v37)
      {
        v209 = 32;
        v210 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v36);

        MEMORY[0x223D5ACB0](v209, v210);
      }

      if (("hownForCallback()" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v209 = 32;
        v210 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](0xD00000000000003ELL, 0x800000021E4F0070);
        MEMORY[0x223D5ACB0](v209, v210);
      }

      v39 = v213;
      v38 = v214;
      v40 = sub_21E4DBCB8();
      if (os_log_type_enabled(v40, v35))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v209 = v42;
        *v41 = 136315138;
        v43 = &v209;
LABEL_26:
        v44 = sub_21E426648(v39, v38, v43);

        *(v41 + 4) = v44;
        _os_log_impl(&dword_21E3EB000, v40, v35, "%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x223D5BF10](v42, -1, -1);
        MEMORY[0x223D5BF10](v41, -1, -1);
      }

      else
      {
LABEL_160:
      }

      return;
    }

LABEL_191:
    swift_once();
    goto LABEL_20;
  }

  v190 = v1;
  v206 = v14;
  v188 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsProvider);
  v17 = (v188 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_suggestionsExposureCallback);
  swift_beginAccess();
  v18 = *v17;
  v19 = v16 >> 62;
  v193 = v6;
  v203 = v16;
  v192 = v18;
  if (!v18)
  {
    v60 = qword_280C14550;

    if (v60 != -1)
    {
      swift_once();
    }

    v61 = sub_21E4DBCC8();
    __swift_project_value_buffer(v61, qword_280C14558);
    v62 = sub_21E4DD1F8();
    v209 = 0xD000000000000021;
    v210 = 0x800000021E4F0040;
    v63 = sub_21E45C20C(0);
    if (v64)
    {
      v211 = 32;
      v212 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v63);

      MEMORY[0x223D5ACB0](v211, v212);
    }

    if (("ailed, suggestions data is nil" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v211 = 32;
      v212 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000003FLL, 0x800000021E4F00B0);
      MEMORY[0x223D5ACB0](v211, v212);
    }

    v66 = v209;
    v65 = v210;
    v33 = sub_21E4DBCB8();
    if (os_log_type_enabled(v33, v62))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v211 = v68;
      *v67 = 136315138;
      v69 = sub_21E426648(v66, v65, &v211);

      *(v67 + 4) = v69;
      _os_log_impl(&dword_21E3EB000, v33, v62, "%s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x223D5BF10](v68, -1, -1);
      MEMORY[0x223D5BF10](v67, -1, -1);
    }

    else
    {
    }

    v76 = v16 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
      goto LABEL_98;
    }

    goto LABEL_150;
  }

  v191 = v17[1];
  v209 = MEMORY[0x277D84F90];
  v20 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v19)
  {
    goto LABEL_75;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21E4DD488())
  {
    v189 = v19;

    sub_21E3F1E78(v192);
    v19 = MEMORY[0x277D84F90];
    if (i)
    {
      v19 = 0;
      v204 = i;
      v205 = v16 & 0xC000000000000001;
      v22 = &unk_280C15000;
      v200 = v8;
      while (1)
      {
        if (v205)
        {
          v24 = MEMORY[0x223D5B080](v19, v16);
        }

        else
        {
          if (v19 >= *(v20 + 16))
          {
            goto LABEL_70;
          }

          v24 = v16[v19 + 4];
        }

        v25 = v24;
        v26 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v27 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
        v28 = *(v24 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
        swift_getKeyPath();
        v29 = v22;
        v211 = v28;
        sub_21E49AC78(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);

        sub_21E4DB718();

        v30 = *(v28 + 57);

        if (v30 == 1)
        {
          v31 = *(v25 + v27);
          swift_getKeyPath();
          v211 = v31;

          sub_21E4DB718();

          v32 = *(v31 + 58);

          if (v32)
          {
          }

          else
          {
            sub_21E4DD408();
            sub_21E4DD438();
            sub_21E4DD448();
            sub_21E4DD418();
          }

          v16 = v203;
          v23 = v204;
          v22 = &unk_280C15000;
        }

        else
        {

          v16 = v203;
          v23 = v204;
          v22 = v29;
        }

        ++v19;
        v8 = v200;
        if (v26 == v23)
        {
          v19 = v209;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_28:
    if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
    {
      v45 = *(v19 + 16);
      if (!v45)
      {
        break;
      }

      goto LABEL_31;
    }

    v45 = sub_21E4DD488();
    if (!v45)
    {
      break;
    }

LABEL_31:
    v46 = 0;
    v205 = v19 & 0xC000000000000001;
    v47 = (v198 + 48);
    v199 = (v198 + 32);
    v204 = MEMORY[0x277D84F90];
    v48 = &qword_27CEC5270;
    v16 = &unk_21E4E7D10;
    v202 = v45;
    while (1)
    {
      if (v205)
      {
        v50 = MEMORY[0x223D5B080](v46, v19);
      }

      else
      {
        if (v46 >= *(v19 + 16))
        {
          goto LABEL_72;
        }

        v50 = *(v19 + 8 * v46 + 32);
      }

      v51 = v50;
      v20 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v52 = *&v50[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion];

      sub_21E424848(v52 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData, v8, v48);

      v53 = v48;
      v54 = v206;
      if ((*v47)(v8, 1, v206) == 1)
      {
        sub_21E424BC0(v8, v53);
        v48 = v53;
      }

      else
      {
        v55 = v53;
        v56 = *v199;
        (*v199)(v201, v8, v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v204 = sub_21E443AFC(0, *(v204 + 16) + 1, 1, v204);
        }

        v58 = *(v204 + 16);
        v57 = *(v204 + 24);
        if (v58 >= v57 >> 1)
        {
          v204 = sub_21E443AFC(v57 > 1, v58 + 1, 1, v204);
        }

        v59 = v204;
        *(v204 + 16) = v58 + 1;
        v56(&v59[((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v58], v201, v206);
        v48 = v55;
      }

      ++v46;
      v49 = v202;
      if (v20 == v202)
      {
        if (!*(v204 + 16))
        {
          v16 = v203;
          goto LABEL_140;
        }

        v192();
        v20 = 0;
        v8 = 0;
        while (1)
        {
          if (v205)
          {
            v71 = MEMORY[0x223D5B080](v20, v19);
          }

          else
          {
            if (v20 >= *(v19 + 16))
            {
              goto LABEL_74;
            }

            v71 = *(v19 + 8 * v20 + 32);
          }

          v72 = v71;
          v73 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
            goto LABEL_73;
          }

          v74 = *&v71[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel];
          if (*(v74 + 58) == 1)
          {

            *(v74 + 58) = 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            v201 = &v187;
            MEMORY[0x28223BE20](KeyPath);
            v16 = (&v187 - 4);
            *(&v187 - 2) = v74;
            *(&v187 - 8) = 1;
            v209 = v74;
            sub_21E49AC78(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
            v200 = v8;

            v8 = v200;
            sub_21E4DB708();

            v49 = v202;
          }

          ++v20;
          if (v73 == v49)
          {
            v75 = v204;
            goto LABEL_79;
          }
        }
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_140:

    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v148 = sub_21E4DBCC8();
    __swift_project_value_buffer(v148, qword_280C14558);
    v149 = sub_21E4DD1F8();
    v209 = 0xD000000000000021;
    v210 = 0x800000021E4F0040;
    v150 = sub_21E45C20C(0);
    v151 = v189;
    if (v152)
    {
      v211 = 32;
      v212 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v150);

      MEMORY[0x223D5ACB0](v211, v212);
    }

    if (("alled for suggestions: " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v211 = 32;
      v212 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000040, 0x800000021E4F0200);
      MEMORY[0x223D5ACB0](v211, v212);
    }

    v154 = v209;
    v153 = v210;
    v33 = sub_21E4DBCB8();
    if (os_log_type_enabled(v33, v149))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v211 = v156;
      *v155 = 136315138;
      v157 = sub_21E426648(v154, v153, &v211);

      *(v155 + 4) = v157;
      _os_log_impl(&dword_21E3EB000, v33, v149, "%s", v155, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v156);
      MEMORY[0x223D5BF10](v156, -1, -1);
      MEMORY[0x223D5BF10](v155, -1, -1);
    }

    else
    {
    }

    sub_21E3F1EB0(v192);
    v76 = v16 & 0xFFFFFFFFFFFFFF8;
    if (!v151)
    {
      goto LABEL_98;
    }

    goto LABEL_150;
  }

  v75 = MEMORY[0x277D84F90];
  (v192)(MEMORY[0x277D84F90]);
LABEL_79:

  v209 = 0;
  v210 = 0xE000000000000000;
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD000000000000037, 0x800000021E4F01C0);
  v77 = v75[2];
  if (v77)
  {
    v211 = MEMORY[0x277D84F90];
    sub_21E455A48(0, v77, 0);
    v78 = v75;
    v79 = v211;
    v202 = *(v198 + 16);
    v80 = *(v198 + 80);
    v204 = v78;
    v81 = v78 + ((v80 + 32) & ~v80);
    v201 = *(v198 + 72);
    v200 = (v190 + 8);
    v205 = v198 + 16;
    v82 = (v198 + 8);
    v83 = v195;
    do
    {
      v84 = v206;
      v202(v83, v81, v206);
      v85 = v196;
      sub_21E4DBAA8();
      v86 = sub_21E4DBB08();
      v88 = v87;
      (*v200)(v85, v197);
      (*v82)(v83, v84);
      v211 = v79;
      v90 = *(v79 + 16);
      v89 = *(v79 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_21E455A48((v89 > 1), v90 + 1, 1);
        v79 = v211;
      }

      *(v79 + 16) = v90 + 1;
      v91 = v79 + 16 * v90;
      *(v91 + 32) = v86;
      *(v91 + 40) = v88;
      v81 = &v201[v81];
      --v77;
    }

    while (v77);
  }

  else
  {

    v79 = MEMORY[0x277D84F90];
  }

  v92 = MEMORY[0x223D5AD60](v79, MEMORY[0x277D837D0]);
  v94 = v93;

  MEMORY[0x223D5ACB0](v92, v94);

  v96 = v209;
  v95 = v210;
  v97 = v189;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v98 = sub_21E4DBCC8();
  __swift_project_value_buffer(v98, qword_280C14558);
  v99 = sub_21E4DD1F8();
  v209 = 0xD000000000000021;
  v210 = 0x800000021E4F0040;
  v100 = sub_21E45C20C(0);
  if (v101)
  {
    v211 = 32;
    v212 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v100);

    MEMORY[0x223D5ACB0](v211, v212);
  }

  v102 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v102 = v96 & 0xFFFFFFFFFFFFLL;
  }

  if (v102)
  {
    v211 = 32;
    v212 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v96, v95);
    MEMORY[0x223D5ACB0](v211, v212);
  }

  v104 = v209;
  v103 = v210;
  v33 = sub_21E4DBCB8();
  if (os_log_type_enabled(v33, v99))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v211 = v106;
    *v105 = 136315138;
    v107 = sub_21E426648(v104, v103, &v211);

    *(v105 + 4) = v107;
    _os_log_impl(&dword_21E3EB000, v33, v99, "%s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    MEMORY[0x223D5BF10](v106, -1, -1);
    MEMORY[0x223D5BF10](v105, -1, -1);
  }

  else
  {
  }

  sub_21E3F1EB0(v192);

  v16 = v203;
  v76 = v203 & 0xFFFFFFFFFFFFFF8;
  if (v97)
  {
LABEL_150:
    v108 = sub_21E4DD488();
    if (!v108)
    {
      goto LABEL_103;
    }

LABEL_99:
    v205 = v16 & 0xC000000000000001;
    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_189;
    }

    if (*(v76 + 16))
    {
      for (j = v16[4]; ; j = MEMORY[0x223D5B080](0, v16))
      {
        v110 = j;
        v111 = &OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
        v112 = *(j + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);

        swift_getKeyPath();
        v209 = v112;
        sub_21E49AC78(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
        sub_21E4DB718();

        LODWORD(v110) = *(v112 + 32);

        if (v110 != 2)
        {
          break;
        }

        v113 = v188 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_continuerSuggestionsRenderedCallback;
        swift_beginAccess();
        v202 = *v113;
        if (!v202)
        {

          if (qword_280C14550 != -1)
          {
            swift_once();
          }

          v158 = sub_21E4DBCC8();
          __swift_project_value_buffer(v158, qword_280C14558);
          v35 = sub_21E4DD1F8();
          v211 = 0xD000000000000021;
          v212 = 0x800000021E4F0040;
          v159 = sub_21E45C20C(0);
          if (v160)
          {
            v207 = 32;
            v208 = 0xE100000000000000;
            MEMORY[0x223D5ACB0](v159);

            MEMORY[0x223D5ACB0](v207, v208);
          }

          if (("ailed, callback function is nil" & 0x2F00000000000000) != 0x2000000000000000)
          {
            v207 = 32;
            v208 = 0xE100000000000000;
            MEMORY[0x223D5ACB0](0xD00000000000003FLL, 0x800000021E4F00F0);
            MEMORY[0x223D5ACB0](v207, v208);
          }

          v39 = v211;
          v38 = v212;
          v40 = sub_21E4DBCB8();
          if (os_log_type_enabled(v40, v35))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v207 = v42;
            *v41 = 136315138;
            v43 = &v207;
            goto LABEL_26;
          }

          goto LABEL_160;
        }

        v114 = *(v113 + 8);
        v211 = MEMORY[0x277D84F90];
        v201 = v114;

        v115 = 0;
        do
        {
          if (v205)
          {
            v116 = MEMORY[0x223D5B080](v115, v16);
          }

          else
          {
            if (v115 >= *(v76 + 16))
            {
              goto LABEL_186;
            }

            v116 = v16[v115 + 4];
          }

          v117 = v116;
          v118 = v115 + 1;
          if (__OFADD__(v115, 1))
          {
            __break(1u);
LABEL_186:
            __break(1u);
            goto LABEL_187;
          }

          v119 = v111;
          v120 = *(v116 + *v111);
          swift_getKeyPath();
          v207 = v120;

          sub_21E4DB718();

          v121 = *(v120 + 56);

          if (v121)
          {
            sub_21E4DD408();
            sub_21E4DD438();
            sub_21E4DD448();
            sub_21E4DD418();
          }

          else
          {
          }

          v16 = v203;
          ++v115;
          v111 = v119;
        }

        while (v118 != v108);

        v205 = v211;
        if (v211 < 0 || (v205 & 0x4000000000000000) != 0)
        {
          v122 = sub_21E4DD488();
        }

        else
        {
          v122 = *(v205 + 16);
        }

        v108 = v206;
        v123 = MEMORY[0x277D84F90];
        if (!v122)
        {
LABEL_133:

          if (v123[2])
          {
            (v202)(v123);
            v211 = 0;
            v212 = 0xE000000000000000;
            sub_21E4DD3A8();
            MEMORY[0x223D5ACB0](0xD000000000000037, 0x800000021E4F0130);
            v133 = v123[2];
            if (v133)
            {
              v207 = MEMORY[0x277D84F90];
              sub_21E455A48(0, v133, 0);
              v134 = v207;
              v135 = *(v198 + 16);
              v136 = *(v198 + 80);
              v200 = v123;
              v137 = v123 + ((v136 + 32) & ~v136);
              v204 = *(v198 + 72);
              v205 = v135;
              v203 = (v190 + 8);
              v198 += 16;
              v138 = (v198 - 8);
              do
              {
                v139 = v195;
                (v205)(v195, v137, v108);
                v140 = v108;
                v141 = v196;
                sub_21E4DBAA8();
                v142 = sub_21E4DBB08();
                v144 = v143;
                (*v203)(v141, v197);
                (*v138)(v139, v140);
                v207 = v134;
                v146 = *(v134 + 16);
                v145 = *(v134 + 24);
                if (v146 >= v145 >> 1)
                {
                  sub_21E455A48((v145 > 1), v146 + 1, 1);
                  v134 = v207;
                }

                *(v134 + 16) = v146 + 1;
                v147 = v134 + 16 * v146;
                *(v147 + 32) = v142;
                *(v147 + 40) = v144;
                v137 += v204;
                --v133;
                v108 = v206;
              }

              while (v133);
            }

            else
            {

              v134 = MEMORY[0x277D84F90];
            }

            v171 = MEMORY[0x223D5AD60](v134, MEMORY[0x277D837D0]);
            v173 = v172;

            MEMORY[0x223D5ACB0](v171, v173);

            v175 = v211;
            v174 = v212;
            if (qword_280C14550 != -1)
            {
              swift_once();
            }

            v176 = sub_21E4DBCC8();
            __swift_project_value_buffer(v176, qword_280C14558);
            v177 = sub_21E4DD1F8();
            v211 = 0xD000000000000021;
            v212 = 0x800000021E4F0040;
            v178 = sub_21E45C20C(0);
            if (v179)
            {
              v207 = 32;
              v208 = 0xE100000000000000;
              MEMORY[0x223D5ACB0](v178);

              MEMORY[0x223D5ACB0](v207, v208);
            }

            v180 = HIBYTE(v174) & 0xF;
            if ((v174 & 0x2000000000000000) == 0)
            {
              v180 = v175 & 0xFFFFFFFFFFFFLL;
            }

            if (v180)
            {
              v207 = 32;
              v208 = 0xE100000000000000;
              MEMORY[0x223D5ACB0](v175, v174);
              MEMORY[0x223D5ACB0](v207, v208);
            }

            v182 = v211;
            v181 = v212;
            v183 = sub_21E4DBCB8();
            if (os_log_type_enabled(v183, v177))
            {
              v184 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              v207 = v185;
              *v184 = 136315138;
              v186 = sub_21E426648(v182, v181, &v207);

              *(v184 + 4) = v186;
              _os_log_impl(&dword_21E3EB000, v183, v177, "%s", v184, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v185);
              MEMORY[0x223D5BF10](v185, -1, -1);
              MEMORY[0x223D5BF10](v184, -1, -1);
            }

            else
            {
            }

            sub_21E3F1EB0(v202);
          }

          else
          {

            if (qword_280C14550 != -1)
            {
              swift_once();
            }

            v161 = sub_21E4DBCC8();
            __swift_project_value_buffer(v161, qword_280C14558);
            v162 = sub_21E4DD1F8();
            v211 = 0xD000000000000021;
            v212 = 0x800000021E4F0040;
            v163 = sub_21E45C20C(0);
            if (v164)
            {
              v207 = 32;
              v208 = 0xE100000000000000;
              MEMORY[0x223D5ACB0](v163);

              MEMORY[0x223D5ACB0](v207, v208);
            }

            if (("alled for suggestions: " & 0x2F00000000000000) != 0x2000000000000000)
            {
              v207 = 32;
              v208 = 0xE100000000000000;
              MEMORY[0x223D5ACB0](0xD000000000000040, 0x800000021E4F0170);
              MEMORY[0x223D5ACB0](v207, v208);
            }

            v166 = v211;
            v165 = v212;
            v167 = sub_21E4DBCB8();
            if (os_log_type_enabled(v167, v162))
            {
              v168 = swift_slowAlloc();
              v169 = swift_slowAlloc();
              v207 = v169;
              *v168 = 136315138;
              v170 = sub_21E426648(v166, v165, &v207);

              *(v168 + 4) = v170;
              _os_log_impl(&dword_21E3EB000, v167, v162, "%s", v168, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v169);
              MEMORY[0x223D5BF10](v169, -1, -1);
              MEMORY[0x223D5BF10](v168, -1, -1);
            }

            else
            {
            }

            sub_21E3F1EB0(v202);
          }

          return;
        }

        v124 = 0;
        v16 = (v198 + 48);
        v203 = (v198 + 32);
        v204 = v205 & 0xC000000000000001;
        while (1)
        {
          if (v204)
          {
            v125 = MEMORY[0x223D5B080](v124, v205);
          }

          else
          {
            if (v124 >= *(v205 + 16))
            {
              goto LABEL_188;
            }

            v125 = *(v205 + 8 * v124 + 32);
          }

          v126 = v125;
          v76 = v124 + 1;
          if (__OFADD__(v124, 1))
          {
            break;
          }

          v127 = *&v125[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion];

          v128 = v193;
          sub_21E424848(v127 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData, v193, &qword_27CEC5270);

          if ((*v16)(v128, 1, v108) == 1)
          {
            sub_21E424BC0(v128, &qword_27CEC5270);
          }

          else
          {
            v129 = *v203;
            (*v203)(v194, v128, v108);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v123 = sub_21E443AFC(0, v123[2] + 1, 1, v123);
            }

            v131 = v123[2];
            v130 = v123[3];
            v132 = v123;
            if (v131 >= v130 >> 1)
            {
              v132 = sub_21E443AFC(v130 > 1, v131 + 1, 1, v123);
            }

            v123 = v132;
            *(v132 + 16) = v131 + 1;
            v129(v132 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v131, v194, v108);
          }

          ++v124;
          if (v76 == v122)
          {
            goto LABEL_133;
          }
        }

LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        ;
      }

      goto LABEL_103;
    }

    __break(1u);
    goto LABEL_191;
  }

LABEL_98:
  v108 = *(v76 + 16);
  if (v108)
  {
    goto LABEL_99;
  }

LABEL_103:
}