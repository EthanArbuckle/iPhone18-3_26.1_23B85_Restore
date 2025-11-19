void sub_22CFA98A8()
{
  os_unfair_lock_assert_owner(*(*(v0 + 24) + 16));
  if (*(v0 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22D0169FC();
    swift_unknownObjectRelease();
    v1 = *(v0 + 16);
    *(v0 + 16) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_22CFA9930()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_22CFA9994()
{
  result = qword_27D9F2FB8;
  if (!qword_27D9F2FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9F2FB8);
  }

  return result;
}

uint64_t sub_22CFA99EC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22CFA9A48(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

uint64_t sub_22CFA9AC0(void *a1)
{
  v28 = a1;
  v27 = sub_22D01697C();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27, v4);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_22D01653C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  *&v1[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_listener] = 0;
  v12 = OBJC_IVAR____TtC11SessionCore18AlertServiceServer_lock;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v13 + 16) = v14;
  *v14 = 0;
  *&v1[v12] = v13;
  *&v1[OBJC_IVAR____TtC11SessionCore18AlertServiceServer__lock_clients] = MEMORY[0x277D84FA0];
  v25 = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CF34C48(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v2 + 104))(v26, *MEMORY[0x277D85268], v27);
  v15 = v28;
  *&v1[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_queue] = sub_22D0169BC();
  v16 = type metadata accessor for AlertServiceServer();
  v32.receiver = v1;
  v32.super_class = v16;
  v17 = objc_msgSendSuper2(&v32, sel_init);
  v30 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22CFAAF44;
  *(v18 + 24) = &v29;
  aBlock[4] = sub_22CEE5B1C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_76_1;
  v19 = _Block_copy(aBlock);
  v20 = objc_opt_self();
  v21 = v17;

  v22 = [v20 listenerWithConfigurator_];

  _Block_release(v19);

  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v24 = *&v21[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_listener];
    *&v21[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_listener] = v22;

    return v21;
  }

  return result;
}

id sub_22CFA9EF4(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D0150FC();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D0150EC();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CFAA020(void *a1, void *a2, uint64_t a3)
{
  sub_22D0150EC();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CFA9A48;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_54;
  v8 = _Block_copy(&v22);
  v9 = &unk_28403D9E0;

  v10 = objc_opt_self();
  v11 = [v10 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v7 setClient_];
  v12 = [v10 protocolForProtocol_];
  [v7 setServer_];

  v13 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  v26 = sub_22CFAAEFC;
  v27 = v15;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_63;
  v16 = _Block_copy(&v22);
  v17 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v26 = sub_22CFAAF20;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_70;
  v20 = _Block_copy(&v22);
  v21 = v17;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

void sub_22CFAA3CC(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v6 = sub_22D01637C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22D01635C();
  v12 = sub_22D01636C();
  v13 = sub_22D0168EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22CEE1000, v12, v13, a4, v14, 2u);
    MEMORY[0x2318C6860](v14, -1, -1);
  }

  (*(v7 + 8))(v11, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *(*(Strong + OBJC_IVAR____TtC11SessionCore18AlertServiceServer_lock) + 16);
    v17 = Strong;
    os_unfair_lock_lock(v16);
    swift_beginAccess();
    v18 = sub_22CF60BBC(a3);
    swift_endAccess();

    os_unfair_lock_unlock(v16);
  }
}

uint64_t sub_22CFAA6F4(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC11SessionCore18AlertServiceServer_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_22CFAA744(void (*a1)(void *))
{
  v2 = sub_22D014C3C();
  sub_22CF34C48(&qword_2814439B0, MEMORY[0x277CB95E0]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277CB95D0], v2);
  a1(v3);
}

id sub_22CFAA870(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22CFAA9A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B10, &unk_22D01B930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22CFAAA18(void *a1)
{
  v2 = v1;
  v4 = sub_22D01637C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  MEMORY[0x28223BE20](v8, v9);
  v11 = aBlock - v10;
  v12 = [a1 remoteProcess];
  sub_22CEE4E5C();

  v13 = [a1 remoteProcess];
  v14 = sub_22D01666C();
  v15 = [v13 hasEntitlement_];

  if (v15)
  {
    v16 = _s11SessionCore6ClientCMa_0();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v17[OBJC_IVAR____TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client_connection] = a1;
    v34.receiver = v17;
    v34.super_class = v16;
    v18 = a1;
    v19 = objc_msgSendSuper2(&v34, sel_init);
    v20 = &v2[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_delegate];
    swift_unknownObjectWeakLoadStrong();
    *&v19[OBJC_IVAR____TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client_delegate + 8] = *(v20 + 1);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v21 = *(*&v2[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_lock] + 16);
    os_unfair_lock_lock(v21);
    swift_beginAccess();
    v22 = v19;
    sub_22CF76684(&v33, v22);
    swift_endAccess();

    os_unfair_lock_unlock(v21);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v2;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_22CFAAEF4;
    *(v24 + 24) = v23;
    aBlock[4] = sub_22CEE5B1C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    aBlock[3] = &block_descriptor_51;
    v25 = _Block_copy(aBlock);
    v26 = v22;
    v27 = v2;

    [v18 configureConnection_];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v18 activate];
    }
  }

  else
  {
    sub_22D01635C();
    v29 = sub_22D01636C();
    v30 = sub_22D0168EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22CEE1000, v29, v30, "Process is not entitled to listen to the alert service", v31, 2u);
      MEMORY[0x2318C6860](v31, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    [a1 invalidate];
  }
}

uint64_t sub_22CFAAF68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3118, &qword_22D01ADA8);
    v2 = sub_22D016D3C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22CEEE3E8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_22CF1D288(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22CF1D288(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22CF1D288(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22D016BDC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22CF1D288(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_22CFAB230(uint64_t a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x277D6B198];
    v29 = sub_22D01667C();
    sub_22D016BFC();
    if (*(a1 + 16) && (v3 = sub_22CFB6140(v32), (v4 & 1) != 0))
    {
      sub_22CEEE3E8(*(a1 + 56) + 32 * v3, v33);
      sub_22CFAC094(v32);
      sub_22CFAC048();
      if (swift_dynamicCast())
      {
        v5 = v29;
        if ([v29 BOOLValue])
        {
          if (qword_27D9F1E50 != -1)
          {
            swift_once();
          }

          v6 = sub_22D01637C();
          __swift_project_value_buffer(v6, qword_27D9F40D0);
          v7 = sub_22D01636C();
          v8 = sub_22D0168CC();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_36;
          }

          v9 = swift_slowAlloc();
          *v9 = 0;
          v10 = "Captured bug report successfully";
        }

        else
        {
          v17 = *MEMORY[0x277D6B180];
          v30 = sub_22D01667C();
          v31 = v18;
          sub_22D016BFC();
          if (*(a1 + 16) && (v19 = sub_22CFB6140(v32), (v20 & 1) != 0))
          {
            sub_22CEEE3E8(*(a1 + 56) + 32 * v19, v33);
            sub_22CFAC094(v32);
            if (swift_dynamicCast())
            {
              if (qword_27D9F1E50 != -1)
              {
                swift_once();
              }

              v21 = sub_22D01637C();
              __swift_project_value_buffer(v21, qword_27D9F40D0);

              v7 = sub_22D01636C();
              v22 = sub_22D0168CC();

              if (!os_log_type_enabled(v7, v22))
              {

                goto LABEL_36;
              }

              v23 = swift_slowAlloc();
              v24 = swift_slowAlloc();
              v32[0] = v24;
              *v23 = 136315138;
              v25 = sub_22CEEE31C(v30, v31, v32);

              *(v23 + 4) = v25;
              _os_log_impl(&dword_22CEE1000, v7, v22, "Failed to capture bug for reason: %s", v23, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v24);
              MEMORY[0x2318C6860](v24, -1, -1);
              v26 = v23;
LABEL_35:
              MEMORY[0x2318C6860](v26, -1, -1);
LABEL_36:

LABEL_37:
              return;
            }
          }

          else
          {
            sub_22CFAC094(v32);
          }

          if (qword_27D9F1E50 != -1)
          {
            swift_once();
          }

          v27 = sub_22D01637C();
          __swift_project_value_buffer(v27, qword_27D9F40D0);
          v7 = sub_22D01636C();
          v8 = sub_22D0168CC();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_36;
          }

          v9 = swift_slowAlloc();
          *v9 = 0;
          v10 = "Failed to capture bug for unknown reason";
        }

        _os_log_impl(&dword_22CEE1000, v7, v8, v10, v9, 2u);
        v26 = v9;
        goto LABEL_35;
      }
    }

    else
    {
      sub_22CFAC094(v32);
    }

    if (qword_27D9F1E50 != -1)
    {
      swift_once();
    }

    v11 = sub_22D01637C();
    __swift_project_value_buffer(v11, qword_27D9F40D0);
    v5 = sub_22D01636C();
    v12 = sub_22D0168EC();
    if (os_log_type_enabled(v5, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22CEE1000, v5, v12, "Received malformed response", v13, 2u);
      MEMORY[0x2318C6860](v13, -1, -1);
    }

    goto LABEL_37;
  }

  if (qword_27D9F1E50 != -1)
  {
    swift_once();
  }

  v14 = sub_22D01637C();
  __swift_project_value_buffer(v14, qword_27D9F40D0);
  oslog = sub_22D01636C();
  v15 = sub_22D0168EC();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22CEE1000, oslog, v15, "Failed to receive response", v16, 2u);
    MEMORY[0x2318C6860](v16, -1, -1);
  }
}

uint64_t sub_22CFAB798(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_22D0165EC();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_22CFAB85C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_22D0165EC();
  if (*(v2 + 16))
  {
    sub_22CEEC698(0xD000000000000010, 0x800000022D0209D0);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_22CFAB920(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v66 = a6;
  v15 = sub_22D01430C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_22CFAB85C() & 1) == 0)
  {
    v64 = a5;
    v62 = a7;
    v63 = a8;
    v21 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    v67 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
    v22 = sub_22D01666C();
    v60 = a1;
    v59 = a2;
    v23 = sub_22D01666C();
    v58 = a3;
    v61 = a4;
    v24 = sub_22D01666C();
    v65 = v21;
    v25 = [v21 processName];
    if (!v25)
    {
      sub_22D01667C();
      v25 = sub_22D01666C();
    }

    v26 = [v67 signatureWithDomain:v22 type:v23 subType:v24 detectedProcess:v25 triggerThresholdValues:0];

    v27 = v66;
    if (v26)
    {
      v57 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22D01A630;
      v29 = *MEMORY[0x277D6B148];
      *(inited + 32) = sub_22D01667C();
      *(inited + 40) = v30;
      sub_22D0142FC();
      sub_22D0142BC();
      v32 = v31;
      (*(v16 + 8))(v20, v15);
      v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      *(inited + 72) = sub_22CFAC048();
      *(inited + 48) = v33;
      v34 = *MEMORY[0x277D6B110];
      *(inited + 80) = sub_22D01667C();
      *(inited + 88) = v35;
      v36 = MEMORY[0x277D837D0];
      *(inited + 120) = MEMORY[0x277D837D0];
      *(inited + 96) = v64;
      *(inited + 104) = v27;
      v37 = *MEMORY[0x277D6B128];
      *(inited + 128) = sub_22D01667C();
      *(inited + 136) = v38;
      *(inited + 168) = v36;
      v39 = v62;
      v40 = v63;
      *(inited + 144) = v62;
      *(inited + 152) = v40;

      v56 = sub_22CF11C44(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
      swift_arrayDestroy();
      if (qword_27D9F1E50 != -1)
      {
        swift_once();
      }

      v41 = sub_22D01637C();
      __swift_project_value_buffer(v41, qword_27D9F40D0);

      v42 = v59;

      v43 = v61;

      v44 = sub_22D01636C();
      v45 = sub_22D01690C();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v60;
      if (v46)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock[0] = v49;
        *v48 = 136315906;
        *(v48 + 4) = sub_22CEEE31C(v47, v42, aBlock);
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_22CEEE31C(v58, v43, aBlock);
        *(v48 + 22) = 2080;
        *(v48 + 24) = sub_22CEEE31C(v64, v27, aBlock);
        *(v48 + 32) = 2080;
        *(v48 + 34) = sub_22CEEE31C(v39, v40, aBlock);
        _os_log_impl(&dword_22CEE1000, v44, v45, "Capturing bug report with type %s; subtype: %s; name: %s; value: %s", v48, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v49, -1, -1);
        MEMORY[0x2318C6860](v48, -1, -1);
      }

      aBlock[0] = 0;
      v51 = v57;
      sub_22D0165DC();
      if (aBlock[0])
      {

        v52 = sub_22D0165CC();

        sub_22CFAAF68(v56);

        v53 = sub_22D0165CC();

        aBlock[4] = sub_22CFAB230;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22CFAB798;
        aBlock[3] = &block_descriptor_16;
        v54 = _Block_copy(aBlock);
        [v67 snapshotWithSignature:v52 duration:v53 event:0 payload:v54 reply:120.0];

        _Block_release(v54);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v50 = v67;
    }
  }
}

unint64_t sub_22CFAC048()
{
  result = qword_27D9F3FC0;
  if (!qword_27D9F3FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9F3FC0);
  }

  return result;
}

uint64_t sub_22CFAC0E8(void (*a1)(void, void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CFAC148(a1);
  }

  return result;
}

void sub_22CFAC148(void (*a1)(void, void))
{
  v493 = a1;
  v479 = sub_22D0164CC();
  v478 = *(v479 - 8);
  v2 = *(v478 + 64);
  MEMORY[0x28223BE20](v479, v3);
  v476 = v400 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v477 = sub_22D01653C();
  v475 = *(v477 - 8);
  v5 = *(v475 + 64);
  MEMORY[0x28223BE20](v477, v6);
  v474 = v400 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v470 = sub_22D0164BC();
  v469 = *(v470 - 8);
  v8 = *(v469 + 64);
  MEMORY[0x28223BE20](v470, v9);
  v468 = (v400 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v489 = sub_22D01656C();
  v473 = *(v489 - 8);
  v11 = *(v473 + 64);
  v13 = MEMORY[0x28223BE20](v489, v12);
  v466 = v400 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v472 = v400 - v16;
  v463 = type metadata accessor for ActivityParticipantEvent(0);
  v464 = *(v463 - 8);
  v17 = *(v464 + 64);
  v19 = MEMORY[0x28223BE20](v463, v18);
  v467 = v400 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v465 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v471 = (v400 - v22);
  v461 = sub_22D015DDC();
  v460 = *(v461 - 8);
  v23 = *(v460 + 64);
  MEMORY[0x28223BE20](v461, v24);
  v462 = v400 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2300, &qword_22D01A830);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v404 = v400 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v403 = v400 - v32;
  v33 = type metadata accessor for ActivityState(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35);
  v409 = v400 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v418 = sub_22D014EFC();
  v407 = *(v418 - 8);
  v37 = *(v407 + 64);
  MEMORY[0x28223BE20](v418, v38);
  v408 = v400 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v440 = sub_22D0149AC();
  v425 = *(v440 - 8);
  v40 = *(v425 + 64);
  MEMORY[0x28223BE20](v440, v41);
  v410 = v400 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v427 = sub_22D01502C();
  v426 = *(v427 - 8);
  v43 = *(v426 + 64);
  v45 = MEMORY[0x28223BE20](v427, v44);
  v412 = v400 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v47);
  v438 = v400 - v48;
  v49 = sub_22D01430C();
  v50 = *(*(v49 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v49 - 8, v51);
  v400[1] = v400 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v417 = v400 - v55;
  v424 = sub_22D014E2C();
  v413 = *(v424 - 8);
  v56 = *(v413 + 64);
  v58 = MEMORY[0x28223BE20](v424, v57);
  v406 = v400 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v60);
  v439 = v400 - v61;
  v437 = sub_22D01488C();
  v436 = *(v437 - 8);
  v62 = *(v436 + 64);
  v64 = MEMORY[0x28223BE20](v437, v63);
  v416 = v400 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v66);
  v431 = v400 - v67;
  v435 = sub_22D0149CC();
  v434 = *(v435 - 8);
  v68 = *(v434 + 64);
  v70 = MEMORY[0x28223BE20](v435, v69);
  v415 = v400 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70, v72);
  v430 = v400 - v73;
  v433 = sub_22D01461C();
  v432 = *(v433 - 8);
  v74 = *(v432 + 64);
  v76 = MEMORY[0x28223BE20](v433, v75);
  v400[0] = v400 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x28223BE20](v76, v78);
  v414 = v400 - v80;
  MEMORY[0x28223BE20](v79, v81);
  v444 = v400 - v82;
  v443 = sub_22D01459C();
  v446 = *(v443 - 8);
  v83 = *(v446 + 64);
  MEMORY[0x28223BE20](v443, v84);
  v445 = v400 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = sub_22D0145EC();
  *&v447 = *(v442 - 8);
  v86 = *(v447 + 64);
  MEMORY[0x28223BE20](v442, v87);
  v448 = v400 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v90 = *(*(v89 - 8) + 64);
  v92 = MEMORY[0x28223BE20](v89 - 8, v91);
  v402 = v400 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x28223BE20](v92, v94);
  v405 = v400 - v96;
  MEMORY[0x28223BE20](v95, v97);
  v450 = (v400 - v98);
  v455 = sub_22D015D7C();
  v454 = *(v455 - 8);
  v99 = *(v454 + 64);
  MEMORY[0x28223BE20](v455, v100);
  v457 = v400 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22D01486C();
  v487 = *(v102 - 8);
  v488 = v102;
  v103 = *(v487 + 64);
  MEMORY[0x28223BE20](v102, v104);
  v486 = v400 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v483 = sub_22D015E0C();
  v485 = *(v483 - 8);
  v106 = *(v485 + 64);
  v108 = MEMORY[0x28223BE20](v483, v107);
  v441 = v400 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = MEMORY[0x28223BE20](v108, v110);
  v411 = v400 - v112;
  v114 = MEMORY[0x28223BE20](v111, v113);
  v456 = v400 - v115;
  MEMORY[0x28223BE20](v114, v116);
  v452 = (v400 - v117);
  v484 = sub_22D0146BC();
  v458 = *(v484 - 8);
  v118 = *(v458 + 64);
  v120 = MEMORY[0x28223BE20](v484, v119);
  v453 = v400 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v120, v122);
  v451 = v400 - v123;
  v124 = sub_22D015D8C();
  v125 = *(v124 - 8);
  v126 = *(v125 + 64);
  MEMORY[0x28223BE20](v124, v127);
  v129 = v400 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_22D01483C();
  v491 = *(v130 - 8);
  v492 = v130;
  v131 = *(v491 + 64);
  v133 = MEMORY[0x28223BE20](v130, v132);
  v428 = v400 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x28223BE20](v133, v135);
  v429 = v400 - v137;
  v139 = MEMORY[0x28223BE20](v136, v138);
  v449 = v400 - v140;
  MEMORY[0x28223BE20](v139, v141);
  v496 = (v400 - v142);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v144 = *(*(v143 - 8) + 64);
  v146 = MEMORY[0x28223BE20](v143 - 8, v145);
  v401 = v400 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = MEMORY[0x28223BE20](v146, v148);
  v151 = v400 - v150;
  v153 = MEMORY[0x28223BE20](v149, v152);
  v155 = v400 - v154;
  MEMORY[0x28223BE20](v153, v156);
  v495 = (v400 - v157);
  v459 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  v158 = *(*(v459 - 8) + 64);
  MEMORY[0x28223BE20](v459, v159);
  v494 = v400 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_22D01659C();
  v162 = *(v161 - 8);
  v163 = v162[8];
  MEMORY[0x28223BE20](v161, v164);
  v166 = (v400 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = v1;
  v168 = *(v1 + 4);
  *v166 = v168;
  v169 = v162[13];
  v421 = *MEMORY[0x277D85200];
  v422 = v162 + 13;
  v420 = v169;
  v169(v166);
  v482 = v168;
  v170 = sub_22D0165BC();
  v172 = v162[1];
  v171 = v162 + 1;
  v423 = v161;
  v419 = v172;
  v172(v166, v161);
  if ((v170 & 1) == 0)
  {
    __break(1u);
LABEL_86:

    v296 = v491;
    v382 = v403;
    (*(v491 + 32))(v403, v170, v161);
    v380 = 0;
    v381 = v161;
    goto LABEL_87;
  }

  v173 = *(*(v167 + 5) + 16);
  os_unfair_lock_lock(v173);
  Strong = swift_unknownObjectWeakLoadStrong();
  v481 = v167;
  v480 = *(v167 + 3);
  os_unfair_lock_unlock(v173);
  v490 = Strong;
  if (Strong)
  {
    v175 = v493;
    sub_22D015DFC();
    v176 = (*(v125 + 88))(v129, v124);
    if (v176 == *MEMORY[0x277D4D5B0])
    {
      (*(v125 + 96))(v129, v124);
      v178 = v486;
      v177 = v487;
      v179 = v488;
      (*(v487 + 32))(v486, v129, v488);
      (*(v177 + 16))(v494, v178, v179);
      swift_storeEnumTagMultiPayload();
      sub_22D015DCC();
      sub_22D015D9C();
      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v180 = sub_22D01637C();
      __swift_project_value_buffer(v180, qword_281444498);
      v181 = v485;
      v182 = v456;
      v183 = v483;
      (*(v485 + 16))(v456, v175, v483);
      v184 = sub_22D01636C();
      v185 = sub_22D01690C();
      v186 = os_log_type_enabled(v184, v185);
      v187 = v490;
      v155 = v481;
      v171 = v480;
      if (v186)
      {
        v188 = v480;
        v189 = v481;
        v190 = v183;
        v191 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        aBlock = v192;
        *v191 = 136446210;
        v193 = sub_22D015DAC();
        v194 = v182;
        v196 = v195;
        v197 = v190;
        v155 = v189;
        v171 = v188;
        v187 = v490;
        (*(v181 + 8))(v194, v197);
        v198 = sub_22CEEE31C(v193, v196, &aBlock);

        *(v191 + 4) = v198;
        _os_log_impl(&dword_22CEE1000, v184, v185, "Stopping activity for push event %{public}s", v191, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v192);
        MEMORY[0x2318C6860](v192, -1, -1);
        MEMORY[0x2318C6860](v191, -1, -1);
      }

      else
      {

        (*(v181 + 8))(v182, v183);
      }

      (*(v487 + 8))(v486, v488);
      v210 = 1;
      goto LABEL_21;
    }

    if (v176 == *MEMORY[0x277D4D5B8])
    {
      (*(v125 + 96))(v129, v124);
      v203 = v454;
      v204 = v455;
      (*(v454 + 32))(v457, v129, v455);
      sub_22D015DCC();
      v124 = v458;
      v205 = v484;
      if ((*(v458 + 48))(v151, 1, v484) == 1)
      {
        sub_22CEEC3D8(v151, &qword_27D9F22F8, &unk_22D018940);
        if (qword_28143FB58 != -1)
        {
          swift_once();
        }

        v206 = sub_22D01637C();
        __swift_project_value_buffer(v206, qword_281444498);
        v207 = sub_22D01636C();
        v208 = sub_22D0168EC();
        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          *v209 = 0;
          _os_log_impl(&dword_22CEE1000, v207, v208, "Received start without a payload", v209, 2u);
          MEMORY[0x2318C6860](v209, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

LABEL_76:
        (*(v203 + 8))(v457, v204);
        return;
      }

      (*(v124 + 32))(v453, v151, v205);
      v243 = v450;
      sub_22D01462C();
      v244 = sub_22D0150CC();
      v245 = *(v244 - 8);
      v246 = v245[6](v243, 1, v244);
      sub_22CEEC3D8(v243, &qword_27D9F2308, &unk_22D018950);
      if (v246 == 1)
      {
        if (qword_28143FB58 != -1)
        {
          swift_once();
        }

        v247 = sub_22D01637C();
        __swift_project_value_buffer(v247, qword_281444498);
        v248 = sub_22D01636C();
        v249 = sub_22D0168EC();
        v250 = os_log_type_enabled(v248, v249);
        v251 = v484;
        if (v250)
        {
          v252 = swift_slowAlloc();
          *v252 = 0;
          _os_log_impl(&dword_22CEE1000, v248, v249, "Received start without an alert configuration", v252, 2u);
          MEMORY[0x2318C6860](v252, -1, -1);
        }

        swift_unknownObjectRelease();

        (*(v124 + 8))(v453, v251);
        goto LABEL_76;
      }

      v267 = v449;
      sub_22D015D9C();
      v268 = v491;
      if ((*(v491 + 88))(v267, v492) == *MEMORY[0x277CB9320])
      {
        v452 = v245;
        v456 = v244;
        (*(v268 + 96))(v267, v492);
        v269 = v447;
        v270 = v448;
        v271 = v442;
        (*(v447 + 32))(v448, v267, v442);
        v272 = sub_22D0145BC();
        v487 = v273;
        v488 = v272;
        v274 = v445;
        sub_22D0145DC();
        v275 = v446;
        v276 = v443;
        v277 = (*(v446 + 88))(v274, v443);
        if (v277 == *MEMORY[0x277CB9218])
        {
          (*(v269 + 8))(v270, v271);
          (*(v275 + 96))(v274, v276);
          v278 = *v274;
          v124 = v274[1];
          v279 = v274[3];
        }

        else
        {
          if (v277 != *MEMORY[0x277CB9210])
          {
            v155 = v455;
            v301 = v447;
            v296 = v454;
            v297 = v487;
            if (v277 != *MEMORY[0x277CB9220])
            {

              if (qword_28143FB58 == -1)
              {
LABEL_65:
                v332 = sub_22D01637C();
                __swift_project_value_buffer(v332, qword_281444498);
                v333 = v485;
                v334 = v411;
                v335 = v483;
                (*(v485 + 16))(v411, v175, v483);
                v336 = sub_22D01636C();
                v337 = sub_22D0168EC();
                if (os_log_type_enabled(v336, v337))
                {
                  v338 = swift_slowAlloc();
                  v496 = swift_slowAlloc();
                  aBlock = v496;
                  *v338 = 136380675;
                  v495 = v336;
                  sub_22D015D9C();
                  v339 = sub_22D01669C();
                  v340 = v301;
                  v342 = v341;
                  (*(v333 + 8))(v334, v335);
                  v343 = sub_22CEEE31C(v339, v342, &aBlock);

                  *(v338 + 4) = v343;
                  v344 = v495;
                  _os_log_impl(&dword_22CEE1000, v495, v337, "Received start with an unsupported push type: %{private}s", v338, 0xCu);
                  v345 = v496;
                  __swift_destroy_boxed_opaque_existential_1Tm(v496);
                  MEMORY[0x2318C6860](v345, -1, -1);
                  MEMORY[0x2318C6860](v338, -1, -1);
                  swift_unknownObjectRelease();

                  v340[1](v448, v442);
                  (*(v458 + 8))(v453, v484);
                }

                else
                {
                  swift_unknownObjectRelease();

                  (*(v333 + 8))(v334, v335);
                  v301[1](v448, v442);
                  (*(v124 + 8))(v453, v484);
                }

                (*(v296 + 8))(v457, v155);
                (*(v446 + 8))(v445, v443);
                return;
              }

LABEL_98:
              swift_once();
              goto LABEL_65;
            }

            (*(v447 + 8))(v448, v271);
            v278 = 0;
            v124 = 0;
LABEL_55:
            v298 = sub_22D015D6C();
            v501 = MEMORY[0x277D837D0];
            v502 = &off_28402B948;
            v299 = v488;
            aBlock = v488;
            v499 = v297;

            v300 = sub_22CFB0A4C(v298, v278, v124, v299, v297);
            v301 = v444;
            v446 = 0;
            v486 = v300;

            __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
            v483 = sub_22D015DAC();
            v485 = v302;
            sub_22D01467C();
            v303 = v482;
            *v166 = v482;
            v304 = v423;
            v420(v166, v421, v423);
            v305 = v303;
            v306 = sub_22D0165BC();
            v419(v166, v304);
            if ((v306 & 1) == 0)
            {
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v307 = v301;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3130, &qword_22D01AEC0);
            v308 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3138, &qword_22D01AEC8) - 8);
            v309 = *(*v308 + 72);
            v310 = (*(*v308 + 80) + 32) & ~*(*v308 + 80);
            v311 = swift_allocObject();
            v447 = xmmword_22D0187A0;
            *(v311 + 16) = xmmword_22D0187A0;
            v312 = v311 + v310 + v308[14];
            LODWORD(v450) = *MEMORY[0x277CB94E0];
            v313 = *(v425 + 104);
            v451 = (v425 + 104);
            v449 = v313;
            (v313)(v311 + v310);
            *v312 = v488;
            *(v312 + 8) = v297;
            *(v312 + 16) = 0;

            v314 = sub_22CFF78C0(v311);
            swift_setDeallocating();
            sub_22CEEC3D8(v311 + v310, &qword_27D9F3138, &qword_22D01AEC8);
            swift_deallocClassInstance();
            sub_22D01499C();
            v315 = v430;
            sub_22D0149BC();
            sub_22D015D4C();
            v316 = v431;
            sub_22D01487C();
            (*(v436 + 16))(v416, v316, v437);
            v448 = sub_22D015D5C();
            (*(v432 + 16))(v414, v307, v433);

            sub_22CFF78C0(MEMORY[0x277D84F90]);
            (*(v434 + 16))(v415, v315, v435);
            sub_22D015D6C();
            sub_22D0142DC();
            v399 = 0u;
            v317 = v439;
            v448 = v314;
            sub_22D014D5C();

            v318 = v438;
            sub_22D014F8C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3140, &qword_22D01AED0);
            v319 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3148, &qword_22D01AED8) - 8);
            v320 = *(*v319 + 72);
            v321 = (*(*v319 + 80) + 32) & ~*(*v319 + 80);
            v322 = swift_allocObject();
            *(v322 + 16) = v447;
            v323 = v322 + v321;
            v324 = v319[14];
            (v449)(v323, v450, v440);
            v325 = v426;
            v326 = v318;
            v327 = v427;
            (*(v426 + 16))(v323 + v324, v326, v427);
            swift_storeEnumTagMultiPayload();
            v328 = sub_22CFF7ABC(v322);
            swift_setDeallocating();
            sub_22CEEC3D8(v323, &qword_27D9F3148, &qword_22D01AED8);
            swift_deallocClassInstance();
            v155 = v481;
            v329 = *(v481 + 29);
            v330 = *(v481 + 30);
            __swift_project_boxed_opaque_existential_1(v481 + 26, v329);
            v331 = (*(v330 + 8))(v317, 0, v328, v483, v485, v329, v330);
            if (v331)
            {
              v124 = v331;

              swift_willThrow();

              (*(v325 + 8))(v438, v327);
              (*(v413 + 8))(v439, v424);
LABEL_71:
              (*(v436 + 8))(v431, v437);
              (*(v434 + 8))(v430, v435);
              (*(v432 + 8))(v444, v433);
              v203 = v454;
              v204 = v455;
              v365 = v484;
              if (qword_28143FB58 != -1)
              {
                swift_once();
              }

              v366 = sub_22D01637C();
              __swift_project_value_buffer(v366, qword_281444498);
              v367 = v124;
              v368 = sub_22D01636C();
              v369 = sub_22D0168EC();

              if (os_log_type_enabled(v368, v369))
              {
                v370 = swift_slowAlloc();
                v371 = swift_slowAlloc();
                *v370 = 138543362;
                v372 = v124;
                v373 = _swift_stdlib_bridgeErrorToNSError();
                *(v370 + 4) = v373;
                *v371 = v373;
                _os_log_impl(&dword_22CEE1000, v368, v369, "Could not create a new activity from push notification: %{public}@", v370, 0xCu);
                sub_22CEEC3D8(v371, &qword_27D9F2380, &unk_22D019C50);
                MEMORY[0x2318C6860](v371, -1, -1);
                v374 = v370;
                v365 = v484;
                MEMORY[0x2318C6860](v374, -1, -1);
              }

              swift_unknownObjectRelease();

              (*(v458 + 8))(v453, v365);
              goto LABEL_76;
            }

            v346 = __swift_project_boxed_opaque_existential_1(v155 + 21, *(v155 + 24));
            v347 = v410;
            (v449)(v410, v450, v440);
            if (*(v328 + 16))
            {
              v348 = sub_22CEFF728(v347);
              v350 = v349;

              v351 = v424;
              v317 = v439;
              v329 = v412;
              if (v350)
              {
                v352 = v408;
                sub_22CEFEA30(*(v328 + 56) + *(v407 + 72) * v348, v408, MEMORY[0x277CB9790]);
                (*(v425 + 8))(v347, v440);
                v353 = *v346;
                v354 = v406;
                sub_22CF079BC(v317, v352, v406);
                sub_22CEFD6F4(v352, MEMORY[0x277CB9790]);
                v355 = v413;
                v356 = *(v413 + 8);
                v451 = (v413 + 8);
                v450 = v356;
                v356(v317, v351);
                (*(v355 + 32))(v317, v354, v351);
                ObjectType = swift_getObjectType();

                sub_22D014F8C();
                v358 = sub_22CFF7ABC(MEMORY[0x277D84F90]);
                v359 = v405;
                v452[7](v405, 1, 1, v456);
                BYTE8(v399) = 1;
                v360 = v409;
                v361 = v317;
                v362 = v446;
                (*(v480 + 16))(v361, v329, v483, v485, v486, v328, v358, v359, DWORD2(v399), v155, &off_28402B9A0, ObjectType, v480);
                v124 = v362;
                if (v362)
                {

                  sub_22CEEC3D8(v359, &qword_27D9F2308, &unk_22D018950);
                  v363 = *(v426 + 8);
                  v364 = v427;
                  v363(v412, v427);
                  v363(v438, v364);
                  v450(v439, v424);
                  goto LABEL_71;
                }

                sub_22CEEC3D8(v359, &qword_27D9F2308, &unk_22D018950);
                v375 = *(v426 + 8);
                v376 = v427;
                v375(v412, v427);
                sub_22CEFD6F4(v360, type metadata accessor for ActivityState);
                v375(v438, v376);
                v450(v439, v424);
                (*(v436 + 8))(v431, v437);
                (*(v434 + 8))(v430, v435);
                (*(v432 + 8))(v444, v433);
                v377 = v486;
                v378 = *(v486 + 2);
                v296 = v491;
                v171 = v480;
                if (v378)
                {
                  v379 = 0;
                  v175 = (v491 + 16);
                  v301 = (v491 + 8);
                  while (v379 < *(v377 + 2))
                  {
                    v170 = v428;
                    v161 = v492;
                    (*(v296 + 16))(v428, &v377[((*(v296 + 80) + 32) & ~*(v296 + 80)) + *(v296 + 72) * v379], v492);
                    if (sub_22D0147BC())
                    {
                      goto LABEL_86;
                    }

                    ++v379;
                    (*v301)(v170, v161);
                    v296 = v491;
                    v377 = v486;
                    if (v378 == v379)
                    {
                      goto LABEL_84;
                    }
                  }

                  __break(1u);
                  goto LABEL_97;
                }

LABEL_84:

                v380 = 1;
                v381 = v492;
                v382 = v403;
LABEL_87:
                (*(v296 + 56))(v382, v380, 1, v381);
                v383 = v404;
                sub_22CEEB6DC(v382, v404, &qword_27D9F2300, &qword_22D01A830);
                if ((*(v296 + 48))(v383, 1, v381) == 1)
                {
                  sub_22CEEC3D8(v383, &qword_27D9F2300, &qword_22D01A830);
                  sub_22D015D9C();
                  sub_22CEEC3D8(v382, &qword_27D9F2300, &qword_22D01A830);
                }

                else
                {
                  sub_22CEEC3D8(v382, &qword_27D9F2300, &qword_22D01A830);
                  (*(v296 + 32))(v496, v383, v381);
                }

                sub_22D0142DC();
                sub_22D01467C();
                sub_22D01462C();
                v384 = v401;
                v317 = v124;
                sub_22D0146AC();
                v187 = v490;
                if (!v124)
                {
                  v397 = v458;
                  v398 = v484;
                  (*(v458 + 8))(v453, v484);
                  (*(v454 + 8))(v457, v455);
                  (*(v397 + 56))(v384, 0, 1, v398);
                  sub_22CFB2094(v384, v495);
                  swift_storeEnumTagMultiPayload();
                  v210 = 250;
LABEL_21:
                  v211 = v461;
                  v212 = v460;
                  goto LABEL_22;
                }

                v329 = v458;
                if (qword_28143FB58 == -1)
                {
                  goto LABEL_92;
                }

                goto LABEL_101;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
LABEL_101:
            swift_once();
LABEL_92:
            v385 = sub_22D01637C();
            __swift_project_value_buffer(v385, qword_281444498);
            v386 = v317;
            v387 = sub_22D01636C();
            v388 = sub_22D0168EC();

            v389 = os_log_type_enabled(v387, v388);
            v390 = v454;
            v391 = v455;
            if (v389)
            {
              v392 = swift_slowAlloc();
              v393 = swift_slowAlloc();
              *v392 = 138543362;
              v394 = v317;
              v395 = _swift_stdlib_bridgeErrorToNSError();
              *(v392 + 4) = v395;
              *v393 = v395;
              _os_log_impl(&dword_22CEE1000, v387, v388, "Could not create an update payload from push notification: %{public}@", v392, 0xCu);
              sub_22CEEC3D8(v393, &qword_27D9F2380, &unk_22D019C50);
              v396 = v393;
              v329 = v458;
              MEMORY[0x2318C6860](v396, -1, -1);
              MEMORY[0x2318C6860](v392, -1, -1);
            }

            swift_unknownObjectRelease();

            (*(v329 + 8))(v453, v484);
            (*(v390 + 8))(v457, v391);
            (*(v491 + 8))(v496, v492);
            return;
          }

          (*(v447 + 8))(v448, v271);
          v295 = v445;
          (*(v446 + 96))(v445, v276);
          v278 = *v295;
          v124 = v295[1];
        }

        v155 = v455;
        v296 = v454;
        v297 = v487;
        goto LABEL_55;
      }

      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v280 = sub_22D01637C();
      __swift_project_value_buffer(v280, qword_281444498);
      v281 = v485;
      v282 = v441;
      v283 = v483;
      (*(v485 + 16))(v441, v175, v483);
      v284 = sub_22D01636C();
      v285 = sub_22D0168EC();
      v286 = os_log_type_enabled(v284, v285);
      v287 = v455;
      if (v286)
      {
        v288 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        v289 = aBlock;
        *v288 = 136380675;
        v290 = v282;
        sub_22D015D9C();
        v291 = sub_22D01669C();
        v293 = v292;
        (*(v281 + 8))(v290, v283);
        v294 = sub_22CEEE31C(v291, v293, &aBlock);

        *(v288 + 4) = v294;
        _os_log_impl(&dword_22CEE1000, v284, v285, "Received start with an unsupported content source: %{private}s", v288, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v289);
        MEMORY[0x2318C6860](v289, -1, -1);
        MEMORY[0x2318C6860](v288, -1, -1);
        swift_unknownObjectRelease();

        (*(v458 + 8))(v453, v484);
        (*(v203 + 8))(v457, v455);
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v281 + 8))(v282, v283);
        (*(v124 + 8))(v453, v484);
        (*(v203 + 8))(v457, v287);
      }

      (*(v491 + 8))(v449, v492);
    }

    else
    {
      if (v176 != *MEMORY[0x277D4D5C0])
      {
LABEL_102:
        sub_22D016CFC();
        __break(1u);
        return;
      }

      sub_22D015DCC();
      v234 = v458;
      v235 = v484;
      v236 = (*(v458 + 48))(v155, 1, v484);
      v187 = v490;
      v237 = v485;
      v238 = v452;
      if (v236 != 1)
      {
        v253 = v451;
        (*(v234 + 32))(v451, v155, v235);
        swift_storeEnumTagMultiPayload();
        v254 = v495;
        (*(v234 + 16))(v495, v253, v235);
        (*(v234 + 56))(v254, 0, 1, v235);
        sub_22D015D9C();
        if (qword_28143FB58 != -1)
        {
          swift_once();
        }

        v255 = sub_22D01637C();
        __swift_project_value_buffer(v255, qword_281444498);
        v256 = v483;
        (*(v237 + 16))(v238, v175, v483);
        v257 = sub_22D01636C();
        v258 = sub_22D01690C();
        if (os_log_type_enabled(v257, v258))
        {
          v259 = swift_slowAlloc();
          v260 = v234;
          v261 = swift_slowAlloc();
          aBlock = v261;
          *v259 = 136446210;
          v262 = sub_22D015DAC();
          v263 = v238;
          v265 = v264;
          (*(v237 + 8))(v263, v256);
          v266 = sub_22CEEE31C(v262, v265, &aBlock);

          *(v259 + 4) = v266;
          _os_log_impl(&dword_22CEE1000, v257, v258, "Updating activity for push event %{public}s", v259, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v261);
          MEMORY[0x2318C6860](v261, -1, -1);
          MEMORY[0x2318C6860](v259, -1, -1);

          (*(v260 + 8))(v451, v484);
        }

        else
        {

          (*(v237 + 8))(v238, v256);
          (*(v234 + 8))(v451, v235);
        }

        v210 = 1;
        v211 = v461;
        v212 = v460;
        v171 = v480;
        v155 = v481;
LABEL_22:
        v213 = v462;
        sub_22D015DEC();
        v214 = (*(v212 + 88))(v213, v211);
        if (v214 == *MEMORY[0x277D4D5C8] || v214 == *MEMORY[0x277D4D5D0])
        {
          v215 = v214 != *MEMORY[0x277D4D5C8];
          v216 = sub_22D015DAC();
          v218 = v217;
          v219 = v463;
          v220 = v471;
          sub_22CEFEA30(v494, v471 + *(v463 + 24), type metadata accessor for ActivityParticipantEvent.EventType);
          (*(v491 + 16))(v220 + v219[7], v496, v492);
          sub_22CEEB6DC(v495, v220 + v219[9], &qword_27D9F22F8, &unk_22D018940);
          *v220 = v216;
          v220[1] = v218;
          v220[2] = 0;
          v220[3] = 0;
          v221 = (v220 + v219[8]);
          *v221 = v155;
          v221[1] = &off_28402B9A0;
          *(v220 + v219[10]) = v215;

          v222 = v466;
          sub_22D01654C();
          v223 = v468;
          *v468 = v210;
          v224 = v469;
          v225 = v470;
          (*(v469 + 104))(v223, *MEMORY[0x277D85178], v470);
          v226 = v472;
          sub_22D01655C();
          (*(v224 + 8))(v223, v225);
          v493 = *(v473 + 8);
          v493(v222, v489);
          v227 = v467;
          sub_22CEFEA30(v220, v467, type metadata accessor for ActivityParticipantEvent);
          v228 = (*(v464 + 80) + 32) & ~*(v464 + 80);
          v229 = swift_allocObject();
          *(v229 + 16) = v187;
          *(v229 + 24) = v171;
          sub_22CFB2104(v227, v229 + v228);
          v502 = sub_22CFA5C9C;
          v503 = v229;
          aBlock = MEMORY[0x277D85DD0];
          v499 = 1107296256;
          v500 = sub_22CEF8B58;
          v501 = &block_descriptor_17;
          v230 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();
          v231 = v474;
          sub_22D0164EC();
          v497 = MEMORY[0x277D84F90];
          sub_22CFB2168(&qword_28143FA60, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
          sub_22CF0EDA8();
          v232 = v476;
          v233 = v479;
          sub_22D016ADC();
          MEMORY[0x2318C5A90](v226, v231, v232, v230);
          _Block_release(v230);
          swift_unknownObjectRelease();
          (*(v478 + 8))(v232, v233);
          (*(v475 + 8))(v231, v477);
          v493(v226, v489);
          sub_22CEFD6F4(v220, type metadata accessor for ActivityParticipantEvent);
          (*(v491 + 8))(v496, v492);
          sub_22CEEC3D8(v495, &qword_27D9F22F8, &unk_22D018940);
          sub_22CEFD6F4(v494, type metadata accessor for ActivityParticipantEvent.EventType);

          return;
        }

        goto LABEL_102;
      }

      sub_22CEEC3D8(v155, &qword_27D9F22F8, &unk_22D018940);
      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v239 = sub_22D01637C();
      __swift_project_value_buffer(v239, qword_281444498);
      v240 = sub_22D01636C();
      v241 = sub_22D0168EC();
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        *v242 = 0;
        _os_log_impl(&dword_22CEE1000, v240, v241, "Received update without a payload", v242, 2u);
        MEMORY[0x2318C6860](v242, -1, -1);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v199 = sub_22D01637C();
    __swift_project_value_buffer(v199, qword_281444498);
    v200 = sub_22D01636C();
    v201 = sub_22D0168EC();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&dword_22CEE1000, v200, v201, "PushParticipant has no ActivityManager", v202, 2u);
      MEMORY[0x2318C6860](v202, -1, -1);
    }
  }
}

uint64_t sub_22CFAF9DC()
{
  sub_22CF460CC(v0 + 16);

  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
  v2 = *(v0 + 248);

  return v0;
}

uint64_t sub_22CFAFA3C()
{
  sub_22CFAF9DC();

  return swift_deallocClassInstance();
}

uint64_t sub_22CFAFA70(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 40) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_22CFAFAD8()
{
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3120, &unk_22D01AEB0);
  v1 = *(*(v148 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v148, v2);
  v147 = v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v146 = (v139 - v7);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v145 = v139 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v144 = v139 - v12;
  v158 = sub_22D015FDC();
  v160 = *(v158 - 8);
  v13 = *(v160 + 64);
  MEMORY[0x28223BE20](v158, v14);
  v157 = v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_22D015E7C();
  v159 = *(v156 - 8);
  v16 = *(v159 + 64);
  MEMORY[0x28223BE20](v156, v17);
  v155 = v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22D015C8C();
  v19 = *(v154 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v154, v21);
  v153 = v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D018A00;
  *(inited + 32) = 0x7069726373627573;
  v139[1] = inited + 32;
  v142 = inited;
  *(inited + 40) = 0xED0000736E6F6974;
  v24 = v0[9];
  v25 = v0[10];
  v143 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 6, v24);
  v26 = sub_22D015F2C();
  v27 = *(v26 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v161 = MEMORY[0x277D84F90];
    sub_22CF440C8(0, v27, 0);
    v29 = v161;
    v31 = *(v19 + 16);
    v30 = v19 + 16;
    v151 = v31;
    v32 = (*(v30 + 64) + 32) & ~*(v30 + 64);
    v141 = v26;
    v33 = v26 + v32;
    v150 = *(v30 + 56);
    v149 = (v30 - 8);
    v152 = v30;
    do
    {
      v34 = v153;
      v35 = v154;
      v151(v153, v33, v154);
      v36 = sub_22D015C3C();
      v38 = v37;
      v39 = sub_22D015BAC();
      v41 = v40;
      (*v149)(v34, v35);
      v161 = v29;
      v43 = *(v29 + 16);
      v42 = *(v29 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_22CF440C8((v42 > 1), v43 + 1, 1);
        v29 = v161;
      }

      *(v29 + 16) = v43 + 1;
      v44 = (v29 + 32 * v43);
      v44[4] = v36;
      v44[5] = v38;
      v44[6] = v39;
      v44[7] = v41;
      v33 += v150;
      --v27;
    }

    while (v27);

    v28 = MEMORY[0x277D84F90];
    if (*(v29 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
      v45 = sub_22D016D3C();
      goto LABEL_10;
    }
  }

  v45 = MEMORY[0x277D84F98];
LABEL_10:
  v161 = v45;

  v47 = 0;
  sub_22CF43CD4(v46, 1, &v161);

  v48 = v161;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
  v50 = v142;
  v142[6] = v48;
  v141 = v49;
  v50[9] = v49;
  v50[10] = 0x656B6F5468737570;
  v50[11] = 0xEA0000000000736ELL;
  v51 = v143[10];
  __swift_project_boxed_opaque_existential_1(v143 + 6, v143[9]);
  v52 = sub_22D015EEC();
  v53 = *(v52 + 16);
  if (v53)
  {
    v151 = 0;
    v161 = v28;
    sub_22CF440C8(0, v53, 0);
    v54 = v161;
    v154 = *(v159 + 16);
    v55 = (*(v159 + 80) + 32) & ~*(v159 + 80);
    v150 = v52;
    v56 = v52 + v55;
    v153 = *(v159 + 72);
    v159 += 16;
    v152 = v159 - 8;
    do
    {
      v57 = v155;
      v58 = v156;
      (v154)(v155, v56, v156);
      v59 = sub_22D015E4C();
      v61 = v60;
      v62 = sub_22D015E1C();
      v64 = v63;
      (*v152)(v57, v58);
      v161 = v54;
      v66 = *(v54 + 16);
      v65 = *(v54 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_22CF440C8((v65 > 1), v66 + 1, 1);
        v54 = v161;
      }

      *(v54 + 16) = v66 + 1;
      v67 = (v54 + 32 * v66);
      v67[4] = v59;
      v67[5] = v61;
      v67[6] = v62;
      v67[7] = v64;
      v56 += v153;
      --v53;
    }

    while (v53);

    v28 = MEMORY[0x277D84F90];
    v47 = v151;
    if (*(v54 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
      v68 = sub_22D016D3C();
      goto LABEL_19;
    }
  }

  v68 = MEMORY[0x277D84F98];
LABEL_19:
  v161 = v68;

  sub_22CF43CD4(v69, 1, &v161);
  if (v47)
  {
    goto LABEL_61;
  }

  v70 = v142;
  v142[12] = v161;
  *(v70 + 15) = v141;
  strcpy(v70 + 128, "publicTokens");
  v70[141] = 0;
  *(v70 + 71) = -5120;
  v71 = v143[10];
  __swift_project_boxed_opaque_existential_1(v143 + 6, v143[9]);
  v72 = sub_22D015F1C();
  v73 = *(v72 + 16);
  if (v73)
  {
    v154 = 0;
    v161 = v28;
    sub_22CF440C8(0, v73, 0);
    v74 = v161;
    v159 = *(v160 + 16);
    v75 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v153 = v72;
    v76 = v72 + v75;
    v156 = *(v160 + 72);
    v160 += 16;
    v155 = v160 - 8;
    do
    {
      v77 = v157;
      v78 = v158;
      (v159)(v157, v76, v158);
      v79 = sub_22D015FBC();
      v81 = v80;
      v82 = sub_22D015F9C();
      v84 = v83;
      (*v155)(v77, v78);
      v161 = v74;
      v86 = *(v74 + 16);
      v85 = *(v74 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_22CF440C8((v85 > 1), v86 + 1, 1);
        v74 = v161;
      }

      *(v74 + 16) = v86 + 1;
      v87 = (v74 + 32 * v86);
      v87[4] = v79;
      v87[5] = v81;
      v87[6] = v82;
      v87[7] = v84;
      v76 += v156;
      --v73;
    }

    while (v73);

    v28 = MEMORY[0x277D84F90];
    v47 = v154;
    if (*(v74 + 16))
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
      v88 = sub_22D016D3C();
      goto LABEL_29;
    }
  }

  v88 = MEMORY[0x277D84F98];
LABEL_29:
  v161 = v88;

  sub_22CF43CD4(v89, 1, &v161);
  v140 = v47;
  if (v47)
  {
    goto LABEL_61;
  }

  v90 = v142;
  v142[18] = v161;
  v90[21] = v141;
  v90[22] = 0x73746567647562;
  v90[23] = 0xE700000000000000;
  v91 = v143[15];
  __swift_project_boxed_opaque_existential_1(v143 + 11, v143[14]);
  v92 = sub_22D01602C();
  v93 = *(v92 + 16);
  if (v93)
  {
    v161 = v28;
    sub_22CF440C8(0, v93, 0);
    v94 = v161;
    v95 = (v92 + 64);
    v96 = -1 << *(v92 + 32);
    v97 = sub_22D016AEC();
    v98 = 0;
    v99 = *(v92 + 36);
    v143 = (v92 + 72);
    v149 = v93;
    v151 = (v92 + 64);
    v150 = v99;
    v152 = v92;
    v100 = v145;
    do
    {
      if (v97 < 0 || v97 >= 1 << *(v92 + 32))
      {
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
        goto LABEL_61;
      }

      if ((*(v95 + (v97 >> 6)) & (1 << v97)) == 0)
      {
        goto LABEL_56;
      }

      if (v99 != *(v92 + 36))
      {
        goto LABEL_57;
      }

      v154 = 1 << v97;
      v155 = v97 >> 6;
      v153 = v98;
      v160 = v94;
      v102 = v148;
      v103 = *(v148 + 48);
      v104 = *(v92 + 56);
      v105 = (*(v92 + 48) + 16 * v97);
      v107 = *v105;
      v106 = v105[1];
      v108 = sub_22D0162BC();
      v109 = *(v108 - 8);
      v110 = v104 + *(v109 + 72) * v97;
      v111 = v144;
      (*(v109 + 16))(&v144[v103], v110, v108);
      *v100 = v107;
      *(v100 + 1) = v106;
      (*(v109 + 32))(&v100[*(v102 + 48)], &v111[v103], v108);
      v112 = v146;
      sub_22CEEB6DC(v100, v146, &qword_27D9F3120, &unk_22D01AEB0);
      v113 = v112[1];
      v159 = *v112;
      v158 = v113;
      v156 = *(v102 + 48);
      v114 = v147;
      sub_22CEEB6DC(v100, v147, &qword_27D9F3120, &unk_22D01AEB0);
      v115 = *(v114 + 8);

      v116 = *(v102 + 48);
      v157 = sub_22D01623C();
      v118 = v117;
      sub_22CEEC3D8(v100, &qword_27D9F3120, &unk_22D01AEB0);
      v119 = *(v109 + 8);
      v120 = v114 + v116;
      v94 = v160;
      v119(v120, v108);
      v119(v112 + v156, v108);
      v161 = v94;
      v122 = *(v94 + 16);
      v121 = *(v94 + 24);
      if (v122 >= v121 >> 1)
      {
        sub_22CF440C8((v121 > 1), v122 + 1, 1);
        v94 = v161;
      }

      *(v94 + 16) = v122 + 1;
      v123 = (v94 + 32 * v122);
      v124 = v158;
      v123[4] = v159;
      v123[5] = v124;
      v123[6] = v157;
      v123[7] = v118;
      v92 = v152;
      v101 = 1 << *(v152 + 32);
      if (v97 >= v101)
      {
        goto LABEL_58;
      }

      v95 = v151;
      v125 = *(v151 + v155);
      if ((v125 & v154) == 0)
      {
        goto LABEL_59;
      }

      LODWORD(v99) = v150;
      if (v150 != *(v152 + 36))
      {
        goto LABEL_60;
      }

      v126 = v125 & (-2 << (v97 & 0x3F));
      if (v126)
      {
        v101 = __clz(__rbit64(v126)) | v97 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v127 = v155 << 6;
        v128 = v155 + 1;
        v129 = &v143[v155];
        while (v128 < (v101 + 63) >> 6)
        {
          v131 = *v129++;
          v130 = v131;
          v127 += 64;
          ++v128;
          if (v131)
          {
            sub_22CF44CF8(v97, v150, 0);
            v101 = __clz(__rbit64(v130)) + v127;
            goto LABEL_33;
          }
        }

        sub_22CF44CF8(v97, v150, 0);
      }

LABEL_33:
      v98 = (v153 + 1);
      v97 = v101;
    }

    while ((v153 + 1) != v149);

    if (!*(v94 + 16))
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_50:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
    v132 = sub_22D016D3C();
    goto LABEL_53;
  }

LABEL_52:
  v132 = MEMORY[0x277D84F98];
LABEL_53:
  v161 = v132;

  v134 = v140;
  sub_22CF43CD4(v133, 1, &v161);
  if (!v134)
  {

    v135 = v161;
    v136 = v142;
    v142[27] = v141;
    *(v136 + 192) = v135;
    v137 = sub_22CF11C44(v136);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
    swift_arrayDestroy();
    return v137;
  }

LABEL_61:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_22CFB0A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v184 = a4;
  v167 = a3;
  v151 = a2;
  v193 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2300, &qword_22D01A830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v145 = &v135 - v10;
  v162 = sub_22D01502C();
  v150 = *(v162 - 8);
  v11 = *(v150 + 64);
  MEMORY[0x28223BE20](v162, v12);
  v177 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_22D01459C();
  v146 = *(v165 - 8);
  v14 = *(v146 + 64);
  MEMORY[0x28223BE20](v165, v15);
  v164 = (&v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_22D0145CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v166 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v182 = &v135 - v24;
  v25 = sub_22D01481C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v168 = (&v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29, v31);
  v189 = &v135 - v32;
  v33 = a5;
  v34 = sub_22D01483C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x28223BE20](v34, v37);
  v142 = (&v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v38, v40);
  v144 = &v135 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v170 = &v135 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v136 = &v135 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v137 = &v135 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v55 = &v135 - v54;
  v56 = *(a1 + 16);
  v57 = MEMORY[0x277D84F90];
  v169 = v53;
  v183 = v35;
  v187 = v33;
  if (!v56)
  {
LABEL_32:
    v93 = v146;
    if (v57[2])
    {
      v94 = v57[2];
      if (!v94)
      {
LABEL_51:
        (*(v35 + 56))(v145, 1, 1, v34);

        v116 = v144;
        sub_22D014F8C();
        v117 = *(v35 + 104);
        v117(v116, *MEMORY[0x277CB9348], v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_22CEFCE2C(0, v57[2] + 1, 1, v57);
        }

        v119 = v57[2];
        v118 = v57[3];
        if (v119 >= v118 >> 1)
        {
          v57 = sub_22CEFCE2C(v118 > 1, v119 + 1, 1, v57);
        }

        v57[2] = v119 + 1;
        v120 = v35 + 32;
        v17 = *(v35 + 32);
        v35 = *(v35 + 80);
        v93 = *(v120 + 40);
        v34 = v169;
        (v17)(v57 + ((v35 + 32) & ~v35) + v93 * v119, v144, v169);
LABEL_57:
        v114 = v142;
        v117(v142, *MEMORY[0x277CB9328], v34);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_58;
        }

        goto LABEL_70;
      }
    }

    else
    {

      v95 = v137;
      sub_22D014F8C();
      v17 = v35 + 104;
      v96 = *(v35 + 104);
      (v96)(v95, *MEMORY[0x277CB9348], v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_22CEFCE2C(0, v57[2] + 1, 1, v57);
      }

      v97 = v57;
      v98 = v57[2];
      v99 = v97;
      v100 = v97[3];
      v189 = v96;
      if (v98 >= v100 >> 1)
      {
        v99 = sub_22CEFCE2C(v100 > 1, v98 + 1, 1, v99);
      }

      v101 = v99;
      v99[2] = v98 + 1;
      v102 = v35 + 32;
      v103 = *(v35 + 32);
      v104 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v105 = *(v102 + 40);
      v106 = v169;
      v103(v99 + v104 + v105 * v98, v137, v169);
      v107 = v167;
      if (v167)
      {
        v108 = v93;
        v93 = v164;
        *v164 = v151;
        v93[1] = v107;
        (v108[13])(v93, *MEMORY[0x277CB9210], v165);

        v109 = v136;
        sub_22D0145AC();
        (v189)(v109, *MEMORY[0x277CB9320], v106);
        v17 = v101[2];
        v110 = v101[3];
        v57 = v101;
        if (v17 >= v110 >> 1)
        {
          v57 = sub_22CEFCE2C(v110 > 1, v17 + 1, 1, v101);
        }

        v57[2] = v17 + 1;
        v34 = v169;
        v103(v57 + v104 + v17 * v105, v136, v169);
      }

      else
      {
        v57 = v101;
        v34 = v106;
      }

      v35 = v183;
      v94 = v57[2];
      if (!v94)
      {
        goto LABEL_51;
      }
    }

    v113 = 0;
    v114 = (v35 + 8);
    while (v113 < v57[2])
    {
      v115 = v35;
      v35 = *(v35 + 80);
      v93 = *(v115 + 72);
      v17 = v170;
      (*(v115 + 16))(v170, v57 + ((v35 + 32) & ~v35) + v93 * v113, v34);
      if (sub_22D0147DC())
      {
        v121 = v183;
        v122 = v145;
        v123 = v17;
        v17 = *(v183 + 32);
        (v17)(v145, v123, v34);
        (*(v121 + 56))(v122, 0, 1, v34);
        v117 = *(v121 + 104);
        goto LABEL_57;
      }

      ++v113;
      (*v114)(v17, v34);
      v35 = v183;
      if (v94 == v113)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_70:
    v57 = sub_22CEFCE2C(0, v57[2] + 1, 1, v57);
LABEL_58:
    v125 = v57[2];
    v124 = v57[3];
    if (v125 >= v124 >> 1)
    {
      v57 = sub_22CEFCE2C(v124 > 1, v125 + 1, 1, v57);
    }

    sub_22CEEC3D8(v145, &qword_27D9F2300, &qword_22D01A830);
    v57[2] = v125 + 1;
    (v17)(v57 + ((v35 + 32) & ~v35) + v93 * v125, v114, v169);
    goto LABEL_68;
  }

  v190 = MEMORY[0x277D84F90];
  v163 = v17;
  v188 = v56;
  sub_22CF440E8(0, v56, 0);
  v17 = v163;
  v34 = v169;
  v57 = v190;
  v59 = *(v26 + 16);
  v58 = v26 + 16;
  v60 = a1 + ((*(v58 + 64) + 32) & ~*(v58 + 64));
  v179 = (v58 + 72);
  v180 = v59;
  v178 = *MEMORY[0x277CB9330];
  v160 = *MEMORY[0x277CB9338];
  v176 = (v58 + 80);
  v138 = "Unknown priority";
  v181 = (v58 - 8);
  v153 = (v150 + 32);
  v152 = *MEMORY[0x277CB9348];
  v173 = (v35 + 104);
  v159 = (v18 + 32);
  v158 = (v18 + 16);
  v157 = (v18 + 88);
  v156 = *MEMORY[0x277CB9228];
  v149 = *MEMORY[0x277CB9230];
  v141 = *MEMORY[0x277CB9238];
  v155 = (v146 + 104);
  v161 = (v18 + 8);
  v148 = (v18 + 96);
  v172 = v35 + 32;
  v140 = *MEMORY[0x277CB9220];
  v154 = *MEMORY[0x277CB9320];
  v139 = *MEMORY[0x277CB9210];
  v147 = *MEMORY[0x277CB9218];
  v171 = *(v58 + 56);
  v185 = v25;
  v61 = v168;
  v174 = v58;
  v175 = v55;
  while (1)
  {
    v62 = v17;
    v63 = v189;
    v186 = v60;
    v64 = v180;
    (v180)(v189);
    v64(v61, v63, v25);
    v65 = (*v179)(v61, v25);
    if (v65 != v178)
    {
      break;
    }

    (*v176)(v61, v25);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3158, &unk_22D01AEE0);
    sub_22CEFE9B4(*(v61 + *(v66 + 48)), *(v61 + *(v66 + 48) + 8));
    v17 = v62;
    (*v159)(v182, v61, v62);
    v67 = v166;
    (*v158)();
    v68 = (*v157)(v67, v62);
    v69 = v167;
    if (v68 == v156)
    {
      (*v148)(v67, v62);
      v70 = v67[1];
      if (!v69)
      {

LABEL_62:
        type metadata accessor for PermissionsError();
        sub_22CFB2168(&qword_27D9F3150, type metadata accessor for PermissionsError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*v161)(v182, v62);
        (*v181)(v189, v25);
        goto LABEL_67;
      }

      v71 = *v67;
      v72 = v164;
      *v164 = v151;
      v72[1] = v69;
      v72[2] = v71;
      v72[3] = v70;
      (*v155)(v72, v147, v165);

      v73 = v175;
      sub_22D0145AC();
      (*v161)(v182, v62);
      (*v181)(v189, v25);
      v74 = v154;
      v61 = v168;
      v75 = v73;
    }

    else
    {
      if (v68 == v149)
      {
        if (!v167)
        {
          goto LABEL_62;
        }

        v80 = v164;
        *v164 = v151;
        v80[1] = v69;
        (*v155)(v80, v139, v165);
      }

      else
      {
        if (v68 != v141)
        {
          type metadata accessor for PermissionsError();
          v126 = v25;
          sub_22CFB2168(&qword_27D9F3150, type metadata accessor for PermissionsError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v127 = *v161;
          (*v161)(v182, v62);
          (*v181)(v189, v126);
          v127(v166, v62);
          goto LABEL_67;
        }

        (*v155)(v164, v140, v165);
      }

      v75 = v175;
      sub_22D0145AC();
      (*v161)(v182, v62);
      (*v181)(v189, v25);
      v74 = v154;
      v61 = v168;
    }

LABEL_29:
    (*v173)(v75, v74, v34);
    v190 = v57;
    v92 = v57[2];
    v91 = v57[3];
    if (v92 >= v91 >> 1)
    {
      sub_22CF440E8(v91 > 1, v92 + 1, 1);
      v17 = v163;
      v34 = v169;
      v57 = v190;
    }

    v57[2] = v92 + 1;
    (*(v35 + 32))(v57 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v92, v75, v34);
    v25 = v185;
    v60 = v186 + v171;
    if (!--v188)
    {
      goto LABEL_32;
    }
  }

  if (v65 != v160)
  {
    type metadata accessor for PermissionsError();
    v111 = v25;
    sub_22CFB2168(&qword_27D9F3150, type metadata accessor for PermissionsError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v112 = *v181;
    (*v181)(v189, v111);
    v112(v61, v111);
    goto LABEL_67;
  }

  (*v176)(v61, v25);
  v76 = v61[1];
  if (v76 < 2)
  {
    type metadata accessor for PermissionsError();
    sub_22CFB2168(&qword_27D9F3150, type metadata accessor for PermissionsError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_66;
  }

  v77 = *v61;
  v78 = v61[1];

  sub_22D014F8C();
  if (v77 == v184 && v76 == v187)
  {
    sub_22CEFE9B4(v184, v187);
    v79 = v185;
LABEL_17:
    v75 = v175;
LABEL_28:
    (*v181)(v189, v79);
    (*v153)(v75, v177, v162);
    v74 = v152;
    v34 = v169;
    v17 = v163;
    goto LABEL_29;
  }

  if (sub_22D016DFC())
  {
    sub_22CEFE9B4(v77, v76);
    v79 = v185;
    goto LABEL_17;
  }

  v143 = v57;
  v81 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v82 = sub_22D01666C();
  *&v192[0] = 0;
  v83 = [v81 initWithBundleIdentifier:v82 allowPlaceholder:0 error:v192];

  v75 = v175;
  if (v83)
  {
    v84 = *&v192[0];
    v85 = [v83 entitlements];
    v86 = sub_22D01666C();
    sub_22CFB21B0();
    v87 = [v85 objectForKey:v86 ofClass:swift_getObjCClassFromMetadata()];

    if (v87)
    {
      sub_22D016ACC();
      swift_unknownObjectRelease();

      sub_22CF1D288(&v191, v192);
    }

    else
    {

      memset(v192, 0, sizeof(v192));
    }

    v35 = v183;
    v88 = v185;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B10, &unk_22D01B930);
    v89 = swift_dynamicCast();
    v57 = v143;
    v90 = v150;
    if (!v89 || v191 != 1)
    {
      goto LABEL_65;
    }

    sub_22CEFE9B4(v77, v76);
    v79 = v88;
    goto LABEL_28;
  }

  v128 = *&v192[0];
  v129 = sub_22D01416C();

  swift_willThrow();
  v57 = v143;
  v90 = v150;
LABEL_65:
  type metadata accessor for PermissionsError();
  sub_22CFB2168(&qword_27D9F3150, type metadata accessor for PermissionsError);
  swift_allocError();
  v130 = v177;
  v131 = v162;
  (*(v90 + 16))(v132, v177, v162);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_22CEFE9B4(v77, v76);
  (*(v90 + 8))(v130, v131);
LABEL_66:
  (*v181)(v189, v185);
LABEL_67:

LABEL_68:
  v133 = *MEMORY[0x277D85DE8];
  return v57;
}

uint64_t sub_22CFB2094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFB2104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityParticipantEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFB2168(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22CFB21B0()
{
  result = qword_28143D8F0;
  if (!qword_28143D8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143D8F0);
  }

  return result;
}

void sub_22CFB21FC()
{
  v0 = sub_22D0143DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_22D0143CC();
  v7 = sub_22D0143BC();
  (*(v1 + 8))(v5, v0);
  [v6 setTimeZone_];

  qword_28143ECD0 = v6;
}

uint64_t sub_22CFB2308(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(*(Strong + 24) + 16);

    os_unfair_lock_lock(v8);
    [*(v7 + 16) invalidate];
    v9 = *(v7 + 16);
    *(v7 + 16) = 0;

    os_unfair_lock_unlock(v8);

    v10 = *(v7 + 40);
    if (v10)
    {
      v11 = *(v7 + 48);

      v10(a4);
      sub_22CF80A18(v10);
    }

    a1(1);
  }

  else
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v13 = sub_22D01637C();
    __swift_project_value_buffer(v13, qword_2814443F0);
    v14 = sub_22D01636C();
    v15 = sub_22D0168FC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22CEE1000, v14, v15, "Wake scheduler unexpectedly deallocated", v16, 2u);
      MEMORY[0x2318C6860](v16, -1, -1);
    }

    return (a1)(1);
  }
}

uint64_t sub_22CFB24C4(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_22CFB2B20, v5);
}

uint64_t sub_22CFB2558()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  sub_22CF80A18(*(v0 + 40));

  return swift_deallocClassInstance();
}

void *sub_22CFB25CC()
{
  v1 = sub_22D01697C();
  v17 = *(v1 - 8);
  v18 = v1;
  v2 = *(v17 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_22D01653C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v0[2] = 0;
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  v0[3] = v12;
  v16 = sub_22CEEC38C();
  sub_22D0164EC();
  v19 = MEMORY[0x277D84F90];
  sub_22CEF8844(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v17 + 104))(v5, *MEMORY[0x277D85260], v18);
  v14 = sub_22D0169BC();
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v14;
  return v0;
}

uint64_t sub_22CFB2854(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_22CF80A18(v3);
}

uint64_t sub_22CFB2868(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_22CFB28B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_22CFB28EC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22CEEE31C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_22CFB2948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3160, &unk_22D01AF50);
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

void sub_22CFB2A64(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_22CFB2A9C(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_22D01430C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_22CFB2308(a1, a2, v6, v7);
}

uint64_t sub_22CFB2B34()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22CFB2B90()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_22CFB2BD4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v17 - v6;
  v8 = sub_22D01534C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  (*(v14 + 16))(v12, a1);
  sub_22CFA84A0(a1, v7);
  v15 = type metadata accessor for Assertion();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  swift_beginAccess();
  sub_22CFB2F78(v7, v12);
  return swift_endAccess();
}

uint64_t sub_22CFB2D5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v17 - v6;
  v8 = sub_22D01534C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  (*(v14 + 16))(v12, a1);
  v15 = type metadata accessor for Assertion();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  swift_beginAccess();
  sub_22CFB2F78(v7, v12);
  return swift_endAccess();
}

uint64_t sub_22CFB2ED8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x277D84F98];
}

uint64_t sub_22CFB2F78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Assertion();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F26A0, &qword_22D019700);
    sub_22CFBC690(a2, v9);
    v16 = sub_22D01534C();
    (*(*(v16 - 8) + 8))(a2, v16);
    return sub_22CEEC3D8(v9, &qword_27D9F26A0, &qword_22D019700);
  }

  else
  {
    sub_22CEF0B08(a1, v14, type metadata accessor for Assertion);
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    sub_22CFBE53C(v14, a2, isUniquelyReferenced_nonNull_native);
    v20 = sub_22D01534C();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v2 = v22;
  }

  return result;
}

uint64_t sub_22CFB31AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0x100000000) != 0)
  {
    v11 = *v3;
    v12 = sub_22CEEC698(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22CFB7154();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_22CFBD50C(v12, v16);
      *v4 = v16;
    }
  }

  else
  {
    v6 = a1;
    v7 = *v3;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_22CFBEBF8(v6, a2, a3, v9);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_22CFB32AC(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24))
  {
    sub_22CEF44D4(a1, &v24);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    v6 = *(&v25 + 1);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    v8 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v7, v7);
    v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    sub_22CFC060C(*v10, a2, isUniquelyReferenced_nonNull_native, &v23);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v24);
    *v2 = v23;
  }

  else
  {
    sub_22CEEC3D8(a1, &qword_27D9F29F8, &qword_22D019688);
    v13 = v2;
    v14 = *v2;
    v15 = sub_22CEE637C(a2);
    if (v16)
    {
      v17 = v15;
      v18 = v13;
      v19 = *v13;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v13;
      v23 = *v13;
      if (!v20)
      {
        sub_22CFB7740();
        v18 = v13;
        v21 = v23;
      }

      sub_22CEF44D4((*(v21 + 56) + 40 * v17), &v24);
      sub_22CFBD830(v17, v21);
      *v18 = v21;
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
    }

    return sub_22CEEC3D8(&v24, &qword_27D9F29F8, &qword_22D019688);
  }

  return result;
}

uint64_t sub_22CFB3488(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v6;
    sub_22CFBFD78(a1 & 1, a2, a3 & 1, a4, a5, isUniquelyReferenced_nonNull_native);
    v14 = sub_22D01436C();
    result = (*(*(v14 - 8) + 8))(a5, v14);
    *v6 = v32;
  }

  else
  {
    v16 = *v5;
    v17 = sub_22CEF5CD8(a5);
    if (v18)
    {
      v19 = v17;
      v20 = *v6;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v6;
      v33 = *v6;
      if (!v21)
      {
        sub_22CFB7F00();
        v22 = v33;
      }

      v23 = *(v22 + 48);
      v24 = sub_22D01436C();
      v25 = *(v24 - 8);
      v26 = *(v25 + 8);
      v26(v23 + *(v25 + 72) * v19, v24);
      v27 = *(v22 + 56) + 32 * v19;
      v28 = *(v27 + 8);
      v29 = *(v27 + 24);

      sub_22CFBDCF4(v19, v22);
      result = (v26)(a5, v24);
      *v6 = v22;
    }

    else
    {
      v30 = sub_22D01436C();
      v31 = *(*(v30 - 8) + 8);

      return v31(a5, v30);
    }
  }

  return result;
}

unint64_t sub_22CFB36AC(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    result = sub_22CEE6210(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v19;
  }

  else
  {
    v13 = *v4;
    result = sub_22CEE637C(a2);
    if (v14)
    {
      v15 = result;
      v16 = *v7;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v7;
      v20 = *v7;
      if (!v17)
      {
        sub_22CFB86CC(a3, a4);
        v18 = v20;
      }

      result = sub_22CFBE1C4(v15, v18);
      *v7 = v18;
    }
  }

  return result;
}

BOOL sub_22CFB378C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_22D01559C() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_22CEF57B4(&qword_28143DAF0, MEMORY[0x277D4D520]);
  }

  while ((sub_22D01665C() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_22CFB3898()
{
  v1 = sub_22D0155CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_22D016C6C();

  strcpy(v12, "identifier: ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  v11[1] = *v0;
  v7 = sub_22D016DEC();
  MEMORY[0x2318C5860](v7);

  MEMORY[0x2318C5860](0x736575716572203BLL, 0xEB00000000203A74);
  v8 = type metadata accessor for TaskScheduler.Task();
  (*(v2 + 16))(v6, &v0[*(v8 + 20)], v1);
  v9 = sub_22D01669C();
  MEMORY[0x2318C5860](v9);

  return v12[0];
}

void sub_22CFB3A24()
{
  v0 = sub_22D0143DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_22D0143CC();
  v7 = sub_22D0143BC();
  (*(v1 + 8))(v5, v0);
  [v6 setTimeZone_];

  qword_28143F558 = v6;
}

void sub_22CFB3B30()
{
  v51 = type metadata accessor for TaskScheduler.Task();
  v49 = *(v51 - 8);
  v1 = *(v49 + 64);
  MEMORY[0x28223BE20](v51, v2);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3270, &unk_22D01B210);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v42 - v11;
  v13 = sub_22D01430C();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0142DC();
  v18 = *(*(v0 + 16) + 16);

  os_unfair_lock_lock(v18);
  v46 = v0;
  v43 = v17;
  sub_22CFB4FF8(v0, v17, &v52);
  os_unfair_lock_unlock(v18);

  v19 = 0;
  v21 = (v52 + 64);
  v20 = *(v52 + 64);
  v50 = v52;
  v22 = 1 << *(v52 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v47 = v12;
  if ((v23 & v20) != 0)
  {
    while (1)
    {
      v26 = v19;
LABEL_12:
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = v29 | (v26 << 6);
      v31 = *(*(v50 + 48) + 8 * v30);
      v32 = v48;
      sub_22CF28C98(*(v50 + 56) + *(v49 + 72) * v30, v48, type metadata accessor for TaskScheduler.Task);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
      v34 = *(v33 + 48);
      *v9 = v31;
      sub_22CEF0B08(v32, v9 + v34, type metadata accessor for TaskScheduler.Task);
      (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
      v28 = v26;
      v12 = v47;
LABEL_13:
      sub_22CFC0FAC(v9, v12);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
      if ((*(*(v35 - 8) + 48))(v12, 1, v35) == 1)
      {
        break;
      }

      v36 = &v12[*(v35 + 48)];
      v37 = v36 + *(v51 + 24);
      v38 = *v37;
      v39 = *(v37 + 8);

      v40 = sub_22CFB6010(v36);
      v38(v40);

      v19 = v28;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    sub_22CEF0D1C();
    (*(v44 + 8))(v43, v45);
  }

  else
  {
LABEL_5:
    if (v25 <= &v19->_os_unfair_lock_opaque + 1)
    {
      v27 = &v19->_os_unfair_lock_opaque + 1;
    }

    else
    {
      v27 = v25;
    }

    v28 = (v27 - 1);
    while (1)
    {
      v26 = (&v19->_os_unfair_lock_opaque + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v26 >= v25)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
        (*(*(v41 - 8) + 56))(v9, 1, 1, v41);
        v24 = 0;
        goto LABEL_13;
      }

      v24 = v21[v26];
      v19 = (v19 + 1);
      if (v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);

    os_unfair_lock_unlock(v26);
    __break(1u);
  }
}

void sub_22CFB3FA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a6;
  v60 = a7;
  v57 = a4;
  v58 = a5;
  v8 = sub_22D0164CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01653C();
  v62 = *(v14 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v61 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01430C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v53 = v13;
    v56 = v8;
    sub_22D01566C();
    v52 = sub_22D01563C();
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v26 = sub_22D01637C();
    __swift_project_value_buffer(v26, qword_2814443F0);
    (*(v19 + 16))(v23, a1, v18);
    v27 = sub_22D01636C();
    v28 = sub_22D01690C();
    v29 = os_log_type_enabled(v27, v28);
    v54 = v14;
    v55 = v9;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v30 = 136446210;
      if (qword_28143F550 != -1)
      {
        swift_once();
      }

      v31 = qword_28143F558;
      v32 = sub_22D01426C();
      v33 = [v31 stringFromDate_];

      v34 = sub_22D01667C();
      v36 = v35;

      (*(v19 + 8))(v23, v18);
      v37 = sub_22CEEE31C(v34, v36, aBlock);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_22CEE1000, v27, v28, v57, v30, 0xCu);
      v38 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x2318C6860](v38, -1, -1);
      MEMORY[0x2318C6860](v30, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v23, v18);
    }

    sub_22CFB3B30();
    v43 = *(v25 + 88);
    v44 = swift_allocObject();
    v45 = v52;
    *(v44 + 16) = v25;
    *(v44 + 24) = v45;
    aBlock[4] = v59;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEF8B58;
    aBlock[3] = v60;
    v46 = _Block_copy(aBlock);

    v47 = v61;
    sub_22D0164EC();
    v63 = MEMORY[0x277D84F90];
    sub_22CEF57B4(&qword_28143FA60, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
    sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
    v48 = v53;
    v49 = v56;
    sub_22D016ADC();
    MEMORY[0x2318C5B10](0, v47, v48, v46);
    _Block_release(v46);

    (*(v55 + 8))(v48, v49);
    (*(v62 + 8))(v47, v54);
  }

  else
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v39 = sub_22D01637C();
    __swift_project_value_buffer(v39, qword_2814443F0);
    v40 = sub_22D01636C();
    v41 = sub_22D0168FC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22CEE1000, v40, v41, "Task scheduler unexpectedly deallocated", v42, 2u);
      MEMORY[0x2318C6860](v42, -1, -1);
    }
  }
}

void sub_22CFB4610(uint64_t a1)
{
  v2 = sub_22D0164CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01653C();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01430C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v46 = v7;
    v49 = v2;
    sub_22D01566C();
    v45 = sub_22D01563C();
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v20 = sub_22D01637C();
    __swift_project_value_buffer(v20, qword_2814443F0);
    (*(v13 + 16))(v17, a1, v12);
    v21 = sub_22D01636C();
    v22 = sub_22D01690C();
    v23 = os_log_type_enabled(v21, v22);
    v47 = v8;
    v48 = v3;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v24 = 136446210;
      if (qword_28143F550 != -1)
      {
        swift_once();
      }

      v25 = qword_28143F558;
      v26 = sub_22D01426C();
      v27 = [v25 stringFromDate_];

      v28 = sub_22D01667C();
      v30 = v29;

      (*(v13 + 8))(v17, v12);
      v31 = sub_22CEEE31C(v28, v30, aBlock);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_22CEE1000, v21, v22, "Nonwake event fired for date: %{public}s", v24, 0xCu);
      v32 = v44;
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x2318C6860](v32, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v17, v12);
    }

    sub_22CFB3B30();
    v37 = *(v19 + 88);
    v38 = swift_allocObject();
    v39 = v45;
    *(v38 + 16) = v19;
    *(v38 + 24) = v39;
    aBlock[4] = sub_22CFC109C;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEF8B58;
    aBlock[3] = &block_descriptor_37_0;
    v40 = _Block_copy(aBlock);

    v41 = v50;
    sub_22D0164EC();
    v52 = MEMORY[0x277D84F90];
    sub_22CEF57B4(&qword_28143FA60, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
    sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
    v42 = v46;
    v43 = v49;
    sub_22D016ADC();
    MEMORY[0x2318C5B10](0, v41, v42, v40);
    _Block_release(v40);

    (*(v48 + 8))(v42, v43);
    (*(v51 + 8))(v41, v47);
  }

  else
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v33 = sub_22D01637C();
    __swift_project_value_buffer(v33, qword_2814443F0);
    v34 = sub_22D01636C();
    v35 = sub_22D0168FC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22CEE1000, v34, v35, "Task scheduler unexpectedly deallocated", v36, 2u);
      MEMORY[0x2318C6860](v36, -1, -1);
    }
  }
}

uint64_t sub_22CFB4C8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  v4 = *(v0 + 56);
  swift_unknownObjectRelease();
  v5 = *(v0 + 72);
  swift_unknownObjectRelease();

  v6 = *(v0 + 96);

  return v0;
}

uint64_t sub_22CFB4CDC()
{
  sub_22CFB4C8C();

  return swift_deallocClassInstance();
}

unint64_t sub_22CFB4D34()
{
  result = sub_22D0155CC();
  if (v1 <= 0x3F)
  {
    result = sub_22CF8A37C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22CFB4DC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3170, &qword_22D01B0D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v26 - v13;
  os_unfair_lock_assert_owner(*(*(a1 + 16) + 16));
  v15 = *(a1 + 32);
  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 32) = v16;
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    v19 = type metadata accessor for TaskScheduler.Task();
    v26 = v14;
    v20 = a3;
    v21 = v19[5];
    v22 = sub_22D0155CC();
    (*(*(v22 - 8) + 16))(a5 + v21, a2, v22);
    *a5 = v16;
    v23 = (a5 + v19[6]);
    *v23 = v20;
    v23[1] = a4;
    v24 = (a5 + v19[7]);
    *v24 = sub_22CEF0608;
    v24[1] = v18;
    v25 = v26;
    sub_22CF28C98(a5, v26, type metadata accessor for TaskScheduler.Task);
    (*(*(v19 - 1) + 56))(v25, 0, 1, v19);
    swift_beginAccess();

    sub_22CEF0738(v25, v16);
    swift_endAccess();
  }
}

uint64_t sub_22CFB4FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v88 = a3;
  v99 = a2;
  v98 = sub_22D01430C();
  v4 = *(v98 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v98, v6);
  v97 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for TaskScheduler.Task();
  v103 = *(v96 - 8);
  v8 = *(v103 + 64);
  v10 = MEMORY[0x28223BE20](v96, v9);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v89 = &v86 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v86 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v92 = &v86 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3270, &unk_22D01B210);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v100 = (&v86 - v29);
  swift_beginAccess();
  v87 = a1;
  v30 = *(a1 + 24);
  v31 = *(v30 + 64);
  v91 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v35 = (v32 + 63) >> 6;
  v95 = (v4 + 8);
  v93 = v30;

  v36 = 0;
  v37 = MEMORY[0x277D84F98];
  v90 = MEMORY[0x277D84F98];
  v102 = v27;
  v94 = v35;
  if (!v34)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v101 = v37;
      v38 = v19;
      v39 = v12;
      v40 = v36;
LABEL_15:
      v42 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v43 = v42 | (v40 << 6);
      v44 = v92;
      v45 = *(*(v93 + 48) + 8 * v43);
      sub_22CF28C98(*(v93 + 56) + *(v103 + 72) * v43, v92, type metadata accessor for TaskScheduler.Task);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
      v47 = *(v46 + 48);
      v48 = v102;
      *v102 = v45;
      v27 = v48;
      sub_22CEF0B08(v44, &v48[v47], type metadata accessor for TaskScheduler.Task);
      (*(*(v46 - 8) + 56))(v27, 0, 1, v46);
      v104 = v40;
      v12 = v39;
      v19 = v38;
      v37 = v101;
LABEL_16:
      v49 = v100;
      sub_22CFC0FAC(v27, v100);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
      if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
      {

        v84 = *(v87 + 24);
        *(v87 + 24) = v37;

        *v88 = v90;
        return result;
      }

      v51 = *v49;
      sub_22CEF0B08(v49 + *(v50 + 48), v19, type metadata accessor for TaskScheduler.Task);
      v52 = v97;
      v53 = &v19[*(v96 + 20)];
      sub_22D01557C();
      sub_22CEF57B4(&qword_281443A30, MEMORY[0x277CC9578]);
      v54 = v98;
      LOBYTE(v53) = sub_22D01663C();
      (*v95)(v52, v54);
      if (v53)
      {
        break;
      }

      sub_22CF28C98(v19, v89, type metadata accessor for TaskScheduler.Task);
      v71 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v71;
      v74 = sub_22CEF098C(v51);
      v75 = v71[2];
      v76 = (v73 & 1) == 0;
      v77 = v75 + v76;
      if (__OFADD__(v75, v76))
      {
        goto LABEL_46;
      }

      v78 = v73;
      if (v71[3] >= v77)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22CFB81B0();
        }

        v27 = v102;
      }

      else
      {
        sub_22CFBBA98(v77, isUniquelyReferenced_nonNull_native);
        v79 = sub_22CEF098C(v51);
        if ((v78 & 1) != (v80 & 1))
        {
          goto LABEL_48;
        }

        v74 = v79;
        v27 = v102;
      }

      v81 = v105;
      v90 = v105;
      if (v78)
      {
        sub_22CF2D7F0(v89, v105[7] + *(v103 + 72) * v74, type metadata accessor for TaskScheduler.Task);
        sub_22CFB6010(v19);
      }

      else
      {
        v105[(v74 >> 6) + 8] |= 1 << v74;
        *(v81[6] + 8 * v74) = v51;
        sub_22CEF0B08(v89, v81[7] + *(v103 + 72) * v74, type metadata accessor for TaskScheduler.Task);
        sub_22CFB6010(v19);
        v82 = v90[2];
        v68 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v68)
        {
          goto LABEL_47;
        }

        v90[2] = v83;
      }

      v35 = v94;
      v36 = v104;
      if (!v34)
      {
        goto LABEL_8;
      }
    }

    v55 = v19;
    v56 = v19;
    v57 = v12;
    sub_22CF28C98(v56, v12, type metadata accessor for TaskScheduler.Task);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v37;
    v60 = sub_22CEF098C(v51);
    v61 = v37[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_44;
    }

    v64 = v59;
    if (v37[3] >= v63)
    {
      if ((v58 & 1) == 0)
      {
        sub_22CFB81B0();
      }

      v12 = v57;
    }

    else
    {
      sub_22CFBBA98(v63, v58);
      v65 = sub_22CEF098C(v51);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_48;
      }

      v60 = v65;
      v12 = v57;
    }

    v37 = v105;
    v19 = v55;
    if (v64)
    {
      sub_22CF2D7F0(v12, v105[7] + *(v103 + 72) * v60, type metadata accessor for TaskScheduler.Task);
      sub_22CFB6010(v55);
    }

    else
    {
      v105[(v60 >> 6) + 8] |= 1 << v60;
      *(v37[6] + 8 * v60) = v51;
      sub_22CEF0B08(v12, v37[7] + *(v103 + 72) * v60, type metadata accessor for TaskScheduler.Task);
      sub_22CFB6010(v55);
      v67 = v37[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_45;
      }

      v37[2] = v69;
    }

    v36 = v104;
    v27 = v102;
    v35 = v94;
  }

  while (v34);
LABEL_8:
  if (v35 <= v36 + 1)
  {
    v41 = v36 + 1;
  }

  else
  {
    v41 = v35;
  }

  while (1)
  {
    v40 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v40 >= v35)
    {
      v104 = v41 - 1;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
      (*(*(v70 - 8) + 56))(v27, 1, 1, v70);
      v34 = 0;
      goto LABEL_16;
    }

    v34 = *(v91 + 8 * v40);
    ++v36;
    if (v34)
    {
      v101 = v37;
      v38 = v19;
      v39 = v12;
      goto LABEL_15;
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
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

uint64_t sub_22CFB5884@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v71 = sub_22D0155CC();
  v6 = *(v71 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v71, v8);
  v70 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
  v10 = *(*(v69 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v69, v11);
  v68 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v67 = (&v57 - v16);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v66 = (&v57 - v19);
  MEMORY[0x28223BE20](v18, v20);
  v65 = &v57 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0189F0;
  *(inited + 32) = 0x736B736174;
  v61 = inited + 32;
  v60 = inited;
  *(inited + 40) = 0xE500000000000000;
  swift_beginAccess();
  v23 = *(a1 + 24);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v57 = v2;
    v58 = a1;
    v59 = a2;
    v79 = MEMORY[0x277D84F90];

    sub_22CF440C8(0, v24, 0);
    v25 = v79;
    v26 = -1 << *(v23 + 32);
    v27 = sub_22D016AEC();
    v63 = (v6 + 16);
    v28 = v23;
    v64 = v23;
    v62 = v23 + 64;
    while (1)
    {
      v72 = v24;
      v29 = *(v28 + 36);
      v30 = v69;
      v31 = *(v69 + 48);
      v32 = v65;
      v73 = v29;
      v33 = sub_22CFA377C(&v65[v31], v27, v29, 0, v28);
      v34 = v66;
      *v66 = v33;
      sub_22CEF0B08(&v32[v31], v34 + *(v30 + 48), type metadata accessor for TaskScheduler.Task);
      v35 = v67;
      sub_22CEEB6DC(v34, v67, &qword_27D9F3168, &unk_22D01B0C8);
      v36 = *v35;
      v74 = *(v30 + 48);
      v78[2] = v36;
      sub_22CFC05B8();
      v76 = sub_22D016ABC();
      v75 = v37;
      v38 = v68;
      sub_22CEEB6DC(v34, v68, &qword_27D9F3168, &unk_22D01B0C8);
      v39 = (v38 + *(v30 + 48));
      v78[0] = 0;
      v78[1] = 0xE000000000000000;
      sub_22D016C6C();

      strcpy(v78, "identifier: ");
      BYTE5(v78[1]) = 0;
      HIWORD(v78[1]) = -5120;
      v77 = *v39;
      v40 = sub_22D016DEC();
      MEMORY[0x2318C5860](v40);

      MEMORY[0x2318C5860](0x736575716572203BLL, 0xEB00000000203A74);
      v41 = type metadata accessor for TaskScheduler.Task();
      (*v63)(v70, &v39[*(v41 + 20)], v71);
      v42 = sub_22D01669C();
      MEMORY[0x2318C5860](v42);

      v43 = v78[0];
      v44 = v78[1];
      sub_22CEEC3D8(v34, &qword_27D9F3168, &unk_22D01B0C8);
      sub_22CFB6010(v39);
      sub_22CFB6010(v35 + v74);
      v79 = v25;
      v46 = *(v25 + 16);
      v45 = *(v25 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_22CF440C8((v45 > 1), v46 + 1, 1);
        v25 = v79;
      }

      *(v25 + 16) = v46 + 1;
      v47 = (v25 + 32 * v46);
      v48 = v75;
      v47[4] = v76;
      v47[5] = v48;
      v47[6] = v43;
      v47[7] = v44;
      v28 = v64;
      if (v27 < 0 || v27 >= -(-1 << *(v64 + 32)))
      {
        break;
      }

      if (((*(v62 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v73 != *(v64 + 36))
      {
        goto LABEL_18;
      }

      v27 = sub_22D016B0C();
      v24 = v72 - 1;
      if (v72 == 1)
      {

        a2 = v59;
        a1 = v58;
        v3 = v57;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_11:
    if (*(v25 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
      v49 = sub_22D016D3C();
    }

    else
    {
      v49 = MEMORY[0x277D84F98];
    }

    v78[0] = v49;

    sub_22CF43CD4(v50, 1, v78);
    if (!v3)
    {

      v51 = v78[0];
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
      v53 = v60;
      *(v60 + 48) = v51;
      *(v53 + 72) = v52;
      strcpy((v53 + 80), "hasKeepAlive");
      *(v53 + 93) = 0;
      *(v53 + 94) = -5120;
      v54 = *(a1 + 96) != 0;
      *(v53 + 120) = MEMORY[0x277D839B0];
      *(v53 + 96) = v54;
      v55 = sub_22CF11C44(v53);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
      result = swift_arrayDestroy();
      *a2 = v55;
      return result;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_22CFB5F8C()
{
  v1 = *v0;
  v2 = *(*(*v0 + 16) + 16);

  os_unfair_lock_lock(v2);
  sub_22CFB5884(v1, &v4);
  os_unfair_lock_unlock(v2);

  return v4;
}

uint64_t sub_22CFB6010(uint64_t a1)
{
  v2 = type metadata accessor for TaskScheduler.Task();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22CFB606C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D01534C();
  v5 = MEMORY[0x277D4D450];
  sub_22CEF57B4(qword_28143FBB0, MEMORY[0x277D4D450]);
  v6 = sub_22D01661C();
  return sub_22CEF5DAC(a1, v6, MEMORY[0x277D4D450], &qword_28143FBA8, v5, MEMORY[0x277D4D460]);
}

unint64_t sub_22CFB6140(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22D016BDC();

  return sub_22CFB6258(a1, v5);
}

unint64_t sub_22CFB6184(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D0157AC();
  v5 = MEMORY[0x277D4D708];
  sub_22CEF57B4(&qword_27D9F3230, MEMORY[0x277D4D708]);
  v6 = sub_22D01661C();
  return sub_22CEF5DAC(a1, v6, MEMORY[0x277D4D708], &qword_27D9F3240, v5, MEMORY[0x277D4D718]);
}

unint64_t sub_22CFB6258(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22CFC088C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2318C5D50](v9, a1);
      sub_22CFAC094(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_22CFB635C()
{
  v1 = v0;
  v2 = type metadata accessor for Assertion();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22D01534C();
  v44 = *(v40 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v40, v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A08, &unk_22D0196A0);
  v9 = *v0;
  v10 = sub_22D016D1C();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v43 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v36 = v44 + 32;
    v37 = v44 + 16;
    v38 = v9;
    v21 = v44;
    v22 = v11;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = *(v21 + 72) * v26;
        v29 = v39;
        v28 = v40;
        (*(v21 + 16))(v39, *(v9 + 48) + v27, v40);
        v30 = *(v9 + 56);
        v31 = v41;
        v32 = *(v42 + 72) * v26;
        sub_22CF28C98(v30 + v32, v41, type metadata accessor for Assertion);
        (*(v21 + 32))(*(v22 + 48) + v27, v29, v28);
        v33 = v31;
        v9 = v38;
        result = sub_22CEF0B08(v33, *(v22 + 56) + v32, type metadata accessor for Assertion);
        v19 = v45;
      }

      while (v45);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v34;
        v11 = v43;
        goto LABEL_18;
      }

      v25 = *(v35 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v45 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

void *sub_22CFB6680()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A38, &unk_22D0196F0);
  v2 = *v0;
  v3 = sub_22D016D1C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_22CFB67E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
  v2 = *v0;
  v3 = sub_22D016D1C();
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

char *sub_22CFB6960()
{
  v1 = v0;
  v2 = sub_22D014EFC();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22D0149AC();
  v45 = *(v41 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v41, v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3258, &unk_22D01B1F0);
  v9 = *v0;
  v10 = sub_22D016D1C();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v44 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v37 = v45 + 32;
    v38 = v45 + 16;
    v39 = v9;
    v21 = v45;
    v22 = v11;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = *(v21 + 72) * v26;
        v29 = v40;
        v28 = v41;
        (*(v21 + 16))(v40, *(v9 + 48) + v27, v41);
        v30 = *(v9 + 56);
        v31 = v42;
        v32 = *(v43 + 72) * v26;
        v33 = MEMORY[0x277CB9790];
        sub_22CF28C98(v30 + v32, v42, MEMORY[0x277CB9790]);
        (*(v21 + 32))(*(v22 + 48) + v27, v29, v28);
        v34 = v31;
        v9 = v39;
        result = sub_22CEF0B08(v34, *(v22 + 56) + v32, v33);
        v19 = v46;
      }

      while (v46);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v35;
        v11 = v44;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v46 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

void *sub_22CFB6C84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2620, &qword_22D01B1E0);
  v2 = *v0;
  v3 = sub_22D016D1C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

char *sub_22CFB6E00()
{
  v1 = v0;
  v45 = sub_22D01430C();
  v48 = *(v45 - 8);
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v45, v3);
  v44 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22D0157AC();
  v47 = *(v43 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v43, v6);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3228, &qword_22D01B1C8);
  v8 = *v0;
  v9 = sub_22D016D1C();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v46 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = v47 + 16;
    v40 = v19;
    v37 = v47 + 32;
    v38 = v48 + 16;
    v36 = v48 + 32;
    v41 = v8;
    v21 = v42;
    v20 = v43;
    if (v18)
    {
      do
      {
        v22 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
LABEL_14:
        v25 = v22 | (v14 << 6);
        v26 = v47;
        v27 = *(v47 + 72) * v25;
        (*(v47 + 16))(v21, *(v8 + 48) + v27, v20);
        v28 = v48;
        v29 = *(v48 + 72) * v25;
        v30 = v44;
        v31 = v45;
        (*(v48 + 16))(v44, *(v8 + 56) + v29, v45);
        v32 = v46;
        (*(v26 + 32))(*(v46 + 48) + v27, v21, v20);
        v33 = *(v32 + 56);
        v8 = v41;
        result = (*(v28 + 32))(v33 + v29, v30, v31);
        v19 = v40;
        v18 = v49;
      }

      while (v49);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v34;
        v10 = v46;
        goto LABEL_18;
      }

      v24 = *(v35 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_22CFB7154()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3188, &qword_22D01B0F8);
  v2 = *v0;
  v3 = sub_22D016D1C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_22CFB72D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
  v2 = *v0;
  v3 = sub_22D016D1C();
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
        v22 = 32 * v17;
        sub_22CEEE3E8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22CF1D288(v25, (*(v4 + 56) + v22));
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

void *sub_22CFB7474()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3218, &qword_22D01B1B8);
  v2 = *v0;
  v3 = sub_22D016D1C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22CFB75D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3260, &qword_22D01B200);
  v2 = *v0;
  v3 = sub_22D016D1C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_22CFB7740()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31E0, &qword_22D01B180);
  v2 = *v0;
  v3 = sub_22D016D1C();
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
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v20 = 40 * v17;
        sub_22CEE3A84(*(v2 + 56) + 40 * v17, v21);
        *(*(v4 + 48) + v18) = v19;
        result = sub_22CEF44D4(v21, *(v4 + 56) + v20);
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

char *sub_22CFB78C4()
{
  v1 = v0;
  v37 = sub_22D01534C();
  v41 = *(v37 - 8);
  v2 = v41[8];
  v4 = MEMORY[0x28223BE20](v37, v3);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v38 = &v33 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31D8, &unk_22D01B170);
  v8 = *v0;
  v9 = sub_22D016D1C();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v40 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v35 = v41 + 4;
    v36 = v41 + 2;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v42 = (v18 - 1) & v18;
LABEL_14:
        v23 = v41;
        v24 = v41[9] * (v20 | (v14 << 6));
        v25 = v41[2];
        v27 = v37;
        v26 = v38;
        v25(v38, *(v8 + 48) + v24, v37);
        v28 = v39;
        v25(v39, *(v8 + 56) + v24, v27);
        v29 = v8;
        v30 = v40;
        v31 = v23[4];
        v31(*(v40 + 48) + v24, v26, v27);
        v32 = *(v30 + 56);
        v8 = v29;
        result = (v31)(v32 + v24, v28, v27);
        v18 = v42;
      }

      while (v42);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v33;
        v10 = v40;
        goto LABEL_18;
      }

      v22 = *(v34 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v42 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

char *sub_22CFB7BDC()
{
  v1 = v0;
  v2 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22D01436C();
  v44 = *(v40 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v40, v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3200, &unk_22D01B1A0);
  v9 = *v0;
  v10 = sub_22D016D1C();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v43 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v36 = v44 + 32;
    v37 = v44 + 16;
    v38 = v9;
    v21 = v44;
    v22 = v11;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = *(v21 + 72) * v26;
        v29 = v39;
        v28 = v40;
        (*(v21 + 16))(v39, *(v9 + 48) + v27, v40);
        v30 = *(v9 + 56);
        v31 = v41;
        v32 = *(v42 + 72) * v26;
        sub_22CF28C98(v30 + v32, v41, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
        (*(v21 + 32))(*(v22 + 48) + v27, v29, v28);
        v33 = v31;
        v9 = v38;
        result = sub_22CEF0B08(v33, *(v22 + 56) + v32, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
        v19 = v45;
      }

      while (v45);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v34;
        v11 = v43;
        goto LABEL_18;
      }

      v25 = *(v35 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v45 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

char *sub_22CFB7F00()
{
  v1 = v0;
  v2 = sub_22D01436C();
  v3 = *(v2 - 8);
  v43 = v2;
  v44 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A50, &qword_22D019718);
  v7 = *v0;
  v8 = sub_22D016D1C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v37 = v1;
    v38 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v45 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = v44 + 32;
    v40 = v44 + 16;
    v41 = v7;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v48 = (v17 - 1) & v17;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = v43;
        v24 = v44;
        v25 = *(v44 + 72) * v22;
        v26 = v42;
        (*(v44 + 16))(v42, *(v7 + 48) + v25, v43);
        v27 = *(v7 + 56);
        v28 = 32 * v22;
        v29 = (v27 + 32 * v22);
        v30 = *v29;
        v31 = *(v29 + 1);
        v46 = v29[16];
        v47 = v30;
        v32 = *(v29 + 3);
        v33 = v45;
        (*(v24 + 32))(*(v45 + 48) + v25, v26, v23);
        v34 = *(v33 + 56) + v28;
        v7 = v41;
        v35 = v46;
        *v34 = v47;
        *(v34 + 8) = v31;
        *(v34 + 16) = v35;
        *(v34 + 24) = v32;

        v17 = v48;
      }

      while (v48);
    }

    v20 = v13;
    v9 = v45;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v37;
        goto LABEL_18;
      }

      v21 = *(v38 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_22CFB81B0()
{
  v1 = v0;
  v2 = type metadata accessor for TaskScheduler.Task();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3180, &unk_22D01B0E8);
  v6 = *v0;
  v7 = sub_22D016D1C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v27 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v30 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = *(*(v6 + 48) + 8 * v22);
        v24 = v28;
        v25 = *(v29 + 72) * v22;
        sub_22CF28C98(*(v6 + 56) + v25, v28, type metadata accessor for TaskScheduler.Task);
        v26 = v30;
        *(*(v30 + 48) + 8 * v22) = v23;
        result = sub_22CEF0B08(v24, *(v26 + 56) + v25, type metadata accessor for TaskScheduler.Task);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v27;
        v8 = v30;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_22CFB83E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31F8, &qword_22D01B198);
  v2 = *v0;
  v3 = sub_22D016D1C();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_22CEEC970(v22, *(&v22 + 1));
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

void *sub_22CFB856C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D016D1C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_22CFB86CC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D016D1C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22CFB8840(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v45 = a1(0);
  v47 = *(v45 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v45, v8);
  v44 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v3;
  v11 = sub_22D016D1C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v40 = v6;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v46 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = v47 + 32;
    v42 = v47 + 16;
    v43 = v10;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v47;
        v33 = *(v47 + 72) * v26;
        v34 = v44;
        v35 = v45;
        (*(v47 + 16))(v44, v28 + v33, v45);
        v36 = v46;
        v37 = (*(v46 + 48) + v27);
        *v37 = v30;
        v37[1] = v31;
        v38 = *(v36 + 56) + v33;
        v10 = v43;
        (*(v32 + 32))(v38, v34, v35);

        v21 = v48;
      }

      while (v48);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v40;
        v12 = v46;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v12;
  }

  return result;
}

uint64_t sub_22CFB8B04(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Assertion();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01534C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A08, &unk_22D0196A0);
  v50 = a2;
  result = sub_22D016D2C();
  v18 = result;
  if (*(v15 + 16))
  {
    v45 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v11 + 16);
    v47 = v11;
    v51 = (v11 + 32);
    v25 = result + 64;
    v48 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v52 = *(v11 + 72);
      v32 = v31 + v52 * v30;
      if (v50)
      {
        (*v51)(v53, v32, v10);
        v33 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_22CEF0B08(v33 + v34 * v30, v54, type metadata accessor for Assertion);
      }

      else
      {
        (*v46)(v53, v32, v10);
        v35 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_22CF28C98(v35 + v34 * v30, v54, type metadata accessor for Assertion);
      }

      v36 = *(v18 + 40);
      sub_22CEF57B4(qword_28143FBB0, MEMORY[0x277D4D450]);
      result = sub_22D01661C();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v51)((*(v18 + 48) + v52 * v26), v53, v10);
      result = sub_22CEF0B08(v54, *(v18 + 56) + v34 * v26, type metadata accessor for Assertion);
      ++*(v18 + 16);
      v11 = v47;
      v15 = v48;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v15 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

uint64_t sub_22CFB8FA4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22D01534C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31A8, &unk_22D01B118);
  v49 = a2;
  result = sub_22D016D2C();
  v15 = result;
  if (*(v12 + 16))
  {
    v54 = v11;
    v45 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v7 + 16);
    v47 = v12;
    v48 = v7;
    v50 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v29 = v26 | (v16 << 6);
      v30 = *(v12 + 48);
      v53 = *(v48 + 72);
      v31 = v30 + v53 * v29;
      if (v49)
      {
        (*v50)(v54, v31, v6);
        v32 = (*(v12 + 56) + 16 * v29);
        v33 = *v32;
        v51 = v32[1];
        v52 = v33;
      }

      else
      {
        (*v46)(v54, v31, v6);
        v34 = (*(v12 + 56) + 16 * v29);
        v35 = *v34;
        v51 = v34[1];
        v52 = v35;
      }

      v36 = *(v15 + 40);
      sub_22CEF57B4(qword_28143FBB0, MEMORY[0x277D4D450]);
      result = sub_22D01661C();
      v37 = -1 << *(v15 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v22 + 8 * v39);
          if (v43 != -1)
          {
            v23 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v50)(*(v15 + 48) + v53 * v23, v54, v6);
      v24 = (*(v15 + 56) + 16 * v23);
      v25 = v51;
      *v24 = v52;
      v24[1] = v25;
      ++*(v15 + 16);
      v12 = v47;
    }

    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v17[v16];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v20 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v12 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v17, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v44;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_22CFB938C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A38, &unk_22D0196F0);
  v38 = a2;
  result = sub_22D016D2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22CFB962C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
  v40 = a2;
  result = sub_22D016D2C();
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
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
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

uint64_t sub_22CFB98EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2620, &qword_22D01B1E0);
  v38 = a2;
  result = sub_22D016D2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22CFB9BA0(uint64_t a1, int a2)
{
  v3 = v2;
  v59 = sub_22D01430C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v59, v8);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D0157AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v60 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3228, &qword_22D01B1C8);
  v54 = a2;
  result = sub_22D016D2C();
  v18 = result;
  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = v11;
    v21 = (v15 + 64);
    v22 = 1 << *(v15 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v15 + 64);
    v25 = (v22 + 63) >> 6;
    v50 = (v20 + 16);
    v51 = v20;
    v48 = v3;
    v49 = v6 + 16;
    v52 = v15;
    v53 = v6;
    v55 = (v6 + 32);
    v56 = (v20 + 32);
    v26 = result + 64;
    v27 = v20;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v32 = v29 | (v19 << 6);
      v33 = *(v15 + 48);
      v57 = *(v27 + 72);
      v34 = v33 + v57 * v32;
      if (v54)
      {
        (*v56)(v60, v34, v10);
        v35 = *(v15 + 56);
        v36 = *(v53 + 72);
        (*(v53 + 32))(v58, v35 + v36 * v32, v59);
      }

      else
      {
        (*v50)(v60, v34, v10);
        v37 = *(v15 + 56);
        v36 = *(v53 + 72);
        (*(v53 + 16))(v58, v37 + v36 * v32, v59);
      }

      v38 = *(v18 + 40);
      sub_22CEF57B4(&qword_27D9F3230, MEMORY[0x277D4D708]);
      result = sub_22D01661C();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v26 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v26 + 8 * v41);
          if (v45 != -1)
          {
            v28 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v40) & ~*(v26 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v56)((*(v18 + 48) + v57 * v28), v60, v10);
      result = (*v55)(*(v18 + 56) + v36 * v28, v58, v59);
      ++*(v18 + 16);
      v27 = v51;
      v15 = v52;
    }

    v30 = v19;
    while (1)
    {
      v19 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v25)
      {
        break;
      }

      v31 = v21[v19];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v3 = v48;
    if (v46 >= 64)
    {
      bzero(v21, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

uint64_t sub_22CFBA048(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3188, &qword_22D01B0F8);
  v38 = a2;
  result = sub_22D016D2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22CFBA2E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
  v36 = a2;
  result = sub_22D016D2C();
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_22CF1D288(v25, v37);
      }

      else
      {
        sub_22CEEE3E8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
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
      result = sub_22CF1D288(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_22CFBA5A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3218, &qword_22D01B1B8);
  result = sub_22D016D2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_22D016E9C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
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

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22CFBA810(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3260, &qword_22D01B200);
  v38 = a2;
  result = sub_22D016D2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22CFBAAB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31E0, &qword_22D01B180);
  result = sub_22D016D2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_22CEF44D4(v22, v32);
      }

      else
      {
        sub_22CEE3A84(v22, v32);
      }

      result = MEMORY[0x2318C5FF0](*(v8 + 40), v21, 4);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      result = sub_22CEF44D4(v32, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22CFBAD3C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22D01534C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v50 = &v45 - v13;
  v14 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v15 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31D8, &unk_22D01B170);
  v51 = a2;
  result = sub_22D016D2C();
  v56 = result;
  if (*(v14 + 16))
  {
    v46 = v3;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v47 = (v7 + 16);
    v48 = v14;
    v49 = v7;
    v52 = (v7 + 32);
    v23 = v56 + 64;
    while (v21)
    {
      v28 = __clz(__rbit64(v21));
      v54 = (v21 - 1) & v21;
LABEL_17:
      v31 = *(v14 + 48);
      v53 = *(v49 + 72);
      v32 = v53 * (v28 | (v17 << 6));
      if (v51)
      {
        v33 = *v52;
        v34 = v50;
        (*v52)(v50, v31 + v32, v6);
      }

      else
      {
        v33 = *v47;
        v34 = v50;
        (*v47)(v50, v31 + v32, v6);
      }

      v33(v55, *(v14 + 56) + v32, v6);
      v35 = v56;
      v36 = *(v56 + 40);
      sub_22CEF57B4(qword_28143FBB0, MEMORY[0x277D4D450]);
      result = sub_22D01661C();
      v37 = -1 << *(v35 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v23 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v23 + 8 * v39);
          if (v43 != -1)
          {
            v24 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v38) & ~*(v23 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = v56;
      v26 = v53 * v24;
      v27 = *v52;
      (*v52)((*(v56 + 48) + v53 * v24), v34, v6);
      result = (v27)(*(v25 + 56) + v26, v55, v6);
      ++*(v25 + 16);
      v14 = v48;
      v21 = v54;
    }

    v29 = v17;
    while (1)
    {
      v17 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v30 = v18[v17];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v54 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v14 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v18, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v44;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v3 = v56;
  return result;
}

uint64_t sub_22CFBB1D8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01436C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3200, &unk_22D01B1A0);
  v50 = a2;
  result = sub_22D016D2C();
  v18 = result;
  if (*(v15 + 16))
  {
    v45 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v11 + 16);
    v47 = v11;
    v51 = (v11 + 32);
    v25 = result + 64;
    v48 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v52 = *(v11 + 72);
      v32 = v31 + v52 * v30;
      if (v50)
      {
        (*v51)(v53, v32, v10);
        v33 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_22CEF0B08(v33 + v34 * v30, v54, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
      }

      else
      {
        (*v46)(v53, v32, v10);
        v35 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_22CF28C98(v35 + v34 * v30, v54, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
      }

      v36 = *(v18 + 40);
      sub_22CEF57B4(&qword_28143F710, MEMORY[0x277CC95F0]);
      result = sub_22D01661C();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v51)((*(v18 + 48) + v52 * v26), v53, v10);
      result = sub_22CEF0B08(v54, *(v18 + 56) + v34 * v26, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
      ++*(v18 + 16);
      v11 = v47;
      v15 = v48;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v15 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

uint64_t sub_22CFBB678(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22D01436C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v12 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A50, &qword_22D019718);
  v52 = a2;
  result = sub_22D016D2C();
  v14 = result;
  if (*(v11 + 16))
  {
    v59 = v6;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v48 = v2;
    v49 = (v7 + 16);
    v50 = v11;
    v51 = v7;
    v54 = (v7 + 32);
    v21 = result + 64;
    v22 = v53;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v27 = (v19 - 1) & v19;
LABEL_17:
      v30 = v26 | (v15 << 6);
      v31 = *(v11 + 48) + *(v51 + 72) * v30;
      v57 = *(v51 + 72);
      v58 = v27;
      if (v52)
      {
        (*v54)(v22, v31, v59);
        v32 = (*(v11 + 56) + 32 * v30);
        v33 = *v32;
        v34 = *(v32 + 1);
        v55 = v32[16];
        v56 = v33;
        v35 = *(v32 + 3);
      }

      else
      {
        (*v49)(v22, v31, v59);
        v36 = (*(v11 + 56) + 32 * v30);
        v37 = *v36;
        v34 = *(v36 + 1);
        v55 = v36[16];
        v56 = v37;
        v35 = *(v36 + 3);
      }

      v38 = *(v14 + 40);
      sub_22CEF57B4(&qword_28143F710, MEMORY[0x277CC95F0]);
      result = sub_22D01661C();
      v39 = -1 << *(v14 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v21 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v22 = v53;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v21 + 8 * v41);
          if (v45 != -1)
          {
            v23 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v40) & ~*(v21 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v22 = v53;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v54)(*(v14 + 48) + v57 * v23, v22, v59);
      v24 = *(v14 + 56) + 32 * v23;
      v25 = v55;
      *v24 = v56;
      *(v24 + 8) = v34;
      *(v24 + 16) = v25;
      *(v24 + 24) = v35;
      ++*(v14 + 16);
      v11 = v50;
      v19 = v58;
    }

    v28 = v15;
    while (1)
    {
      v15 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v29 = v16[v15];
      ++v28;
      if (v29)
      {
        v26 = __clz(__rbit64(v29));
        v27 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v11 + 32);
    v3 = v48;
    if (v46 >= 64)
    {
      bzero(v16, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v46;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22CFBBA98(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for TaskScheduler.Task();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3180, &unk_22D01B0E8);
  v42 = a2;
  result = sub_22D016D2C();
  v14 = result;
  if (*(v11 + 16))
  {
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v11 + 48) + 8 * v26);
      v28 = *(v41 + 72);
      v29 = *(v11 + 56) + v28 * v26;
      if (v42)
      {
        sub_22CEF0B08(v29, v10, type metadata accessor for TaskScheduler.Task);
      }

      else
      {
        sub_22CF28C98(v29, v10, type metadata accessor for TaskScheduler.Task);
      }

      v30 = *(v14 + 40);
      result = sub_22D016E9C();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v27;
      result = sub_22CEF0B08(v10, *(v14 + 56) + v28 * v22, type metadata accessor for TaskScheduler.Task);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v11 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22CFBBDE0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_22D016D2C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_22CFBC080(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_22D016D2C();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 4 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v24;
      }

      result = MEMORY[0x2318C5FF0](*(v10 + 40), v23, 4);
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 4 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_22CFBC30C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v55 = a3(0);
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v55, v13);
  v54 = &v47 - v14;
  v15 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v16 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = a2;
  result = sub_22D016D2C();
  v18 = result;
  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v48 = v8;
    v49 = (v11 + 16);
    v50 = v15;
    v51 = v11;
    v53 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v51 + 72);
      v37 = v32 + v36 * v31;
      if (v52)
      {
        (*v53)(v54, v37, v55);
      }

      else
      {
        (*v49)(v54, v37, v55);
      }

      v38 = *(v18 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = (*v53)(*(v18 + 56) + v36 * v26, v54, v55);
      ++*(v18 + 16);
      v15 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v8 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v8 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v8 = v18;
  return result;
}

uint64_t sub_22CFBC690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22CFB606C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CFB635C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_22D01534C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Assertion();
    v22 = *(v15 - 8);
    sub_22CEF0B08(v14 + *(v22 + 72) * v8, a2, type metadata accessor for Assertion);
    sub_22CFBCCD0(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Assertion();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22CFBC82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22CEFF728(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CFB6960();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_22D0149AC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_22D014EFC();
    v22 = *(v15 - 8);
    sub_22CEF0B08(v14 + *(v22 + 72) * v8, a2, MEMORY[0x277CB9790]);
    sub_22CFBD014(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_22D014EFC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22CFBC9C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_22CEF098C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22CFB7474();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_22CFBD6C0(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_22CFBCA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22CEEC698(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CF28A08(type metadata accessor for XPCInputBudgetManager.Budget, &qword_27D9F2A20, &qword_22D0196C0, type metadata accessor for XPCInputBudgetManager.Budget);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for XPCInputBudgetManager.Budget();
    v22 = *(v15 - 8);
    sub_22CEF0B08(v14 + *(v22 + 72) * v9, a3, type metadata accessor for XPCInputBudgetManager.Budget);
    sub_22CF28D18(v9, v12, type metadata accessor for XPCInputBudgetManager.Budget);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for XPCInputBudgetManager.Budget();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_22CFBCC08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22CEEC698(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CFB83E8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    *a3 = *(*(v12 + 56) + 16 * v9);
    sub_22CFBE014(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_22D01AFB0;
  }

  return result;
}

unint64_t sub_22CFBCCD0(int64_t a1, uint64_t a2)
{
  v4 = sub_22D01534C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_22D016AFC();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v4);
      v24 = *(a2 + 40);
      sub_22CEF57B4(qword_28143FBB0, MEMORY[0x277D4D450]);
      v25 = sub_22D01661C();
      result = (*v40)(v10, v4);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(type metadata accessor for Assertion() - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22CFBD014(int64_t a1, uint64_t a2)
{
  v4 = sub_22D0149AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_22D016AFC();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v4);
      v24 = *(a2 + 40);
      sub_22CEF57B4(&qword_28143F6B0, MEMORY[0x277CB9500]);
      v25 = sub_22D01661C();
      result = (*v40)(v10, v4);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(sub_22D014EFC() - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CFBD358(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22D016EAC();

      sub_22D0166DC();
      v13 = sub_22D016ECC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + v3);
        v20 = (v18 + v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CFBD50C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22D016EAC();

      sub_22D0166DC();
      v13 = sub_22D016ECC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 4 * v3);
        v20 = (v18 + 4 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CFBD6C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22D016E9C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}