void static _RTCReportingS.newHierarchyTokenFromParentToken(_:)()
{
  OUTLINED_FUNCTION_65();
  v1 = v0;
  v2 = sub_223C48188();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BF8, &qword_223C4ADA0);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D837D0];
    *(v17 + 16) = xmmword_223C4AD60;
    *(v17 + 56) = v18;
    *(v17 + 32) = 0x6E656B6F74;
    *(v17 + 40) = 0xE500000000000000;
    sub_223C48178();
    v19 = sub_223C48148();
    v21 = v20;
    (*(v5 + 8))(v10, v2);
    *(v17 + 64) = v19;
    *(v17 + 72) = v21;
    *(v17 + 88) = v18;
    *(v17 + 96) = 0x6C6576656CLL;
    *(v17 + 104) = 0xE500000000000000;
    *(v17 + 152) = MEMORY[0x277D83B88];
    *(v17 + 120) = v18;
    *(v17 + 128) = 1;
    sub_223C2811C(0, &qword_280AEC0B8, 0x277CBEAC0);
    OUTLINED_FUNCTION_54();
    sub_223C48478();
    goto LABEL_13;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
LABEL_13:
    OUTLINED_FUNCTION_63();
    return;
  }

  v12 = v11;
  *&v27[0] = 0x6E656B6F74;
  *(&v27[0] + 1) = 0xE500000000000000;
  v13 = v1;
  v14 = [v12 __swift_objectForKeyedSubscript_];
  OUTLINED_FUNCTION_54();
  swift_unknownObjectRelease();
  sub_223C48568();
  swift_unknownObjectRelease();
  sub_223C2A050(v27, v28);
  *&v25 = 0x6C6576656CLL;
  *(&v25 + 1) = 0xE500000000000000;
  v15 = MEMORY[0x277D837D0];
  v16 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_223C48568();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(v28);

    sub_223C2CF0C(v27, &qword_27D0B99E8, &qword_223C4A8A0);
    goto LABEL_13;
  }

  v22 = MEMORY[0x277D83B88];
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);

    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BF8, &qword_223C4ADA0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_223C4AD60;
  *(v23 + 56) = v15;
  *(v23 + 32) = 0x6E656B6F74;
  *(v23 + 40) = 0xE500000000000000;
  sub_223C2C0BC(v28, v23 + 64);
  *(v23 + 120) = v15;
  *(v23 + 96) = 0x6C6576656CLL;
  *(v23 + 104) = 0xE500000000000000;
  if (!__OFADD__(v24, 1))
  {
    *(v23 + 152) = v22;
    *(v23 + 128) = v24 + 1;
    sub_223C2811C(0, &qword_280AEC0B8, 0x277CBEAC0);
    OUTLINED_FUNCTION_54();
    sub_223C48478();

    __swift_destroy_boxed_opaque_existential_0(v28);
    goto LABEL_13;
  }

  __break(1u);
}

void _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:)()
{
  OUTLINED_FUNCTION_65();
  v2 = v1;
  v3 = sub_223C48238();

  v4 = sub_223C48238();

  if (v2)
  {
    v5 = sub_223C48398();
  }

  else
  {
    v5 = 0;
  }

  [v0 initWithSessionInfo:v3 userInfo:v4 frameworksToCheck:v5 aggregationBlock:0];

  OUTLINED_FUNCTION_63();
}

uint64_t sub_223C27D10()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:aggregationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();

  v6 = &v4[OBJC_IVAR____RTCReportingS_messageLoggingBlock];
  *v6 = 0;
  v6[1] = 0;
  v29 = OBJC_IVAR____RTCReportingS_messageSentDelegate;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____RTCReportingS_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9B48, &qword_223C4AD40);
  v8 = swift_allocObject();
  *&v5[v7] = v8;
  v28 = OBJC_IVAR____RTCReportingS_session;
  *&v5[OBJC_IVAR____RTCReportingS_session] = 0;
  v5[OBJC_IVAR____RTCReportingS_configured] = 0;
  *(v8 + 16) = 0;
  v9 = OBJC_IVAR____RTCReportingS_connectionManager;
  if (qword_280AEC1C0 != -1)
  {
    swift_once();
  }

  *&v5[v9] = qword_280AEC3A0;
  v10 = &v5[OBJC_IVAR____RTCReportingS_generatedSessionID];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____RTCReportingS_deprecatedPeriodic;
  *&v5[OBJC_IVAR____RTCReportingS_deprecatedPeriodic] = 0;
  v12 = OBJC_IVAR____RTCReportingS_legacyAVCSupport;
  *&v5[OBJC_IVAR____RTCReportingS_legacyAVCSupport] = 0;
  v26 = v9;
  v27 = OBJC_IVAR____RTCReportingS_earlyCachedEvents;
  *&v5[OBJC_IVAR____RTCReportingS_earlyCachedEvents] = 0;
  v5[OBJC_IVAR____RTCReportingS_completelyDisabled] = 0;
  v13 = OBJC_IVAR____RTCReportingS_extraFields;
  *&v5[OBJC_IVAR____RTCReportingS_extraFields] = 0;
  v5[OBJC_IVAR____RTCReportingS_terminated] = 0;
  *&v5[OBJC_IVAR____RTCReportingS_sentEventCount] = 0;
  v14 = OBJC_IVAR____RTCReportingS_activeTasks;
  sub_223C48188();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BC8, &qword_223C4AD78);
  sub_223C3F658();
  *&v5[v14] = sub_223C48298();
  if (sub_223C28174())
  {
    *&v5[OBJC_IVAR____RTCReportingS_sessionInfo] = a1;
    v15 = MEMORY[0x277D84F98];
    if (a2)
    {
      v15 = a2;
    }

    *&v5[OBJC_IVAR____RTCReportingS_userInfo] = v15;
    v34.receiver = v5;
    v34.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v34, sel_init, v26);
    sub_223C28024(a4);
  }

  else
  {
    sub_223C28024(a4);

    v17 = v6[1];
    sub_223C28024(*v6);
    sub_223C35CC0(&v5[v29]);
    v18 = *&v5[v7];

    v19 = *&v5[v28];

    v20 = *&v5[v26];

    v21 = v10[1];

    v22 = *&v5[v27];

    v23 = *&v5[v13];

    v24 = *&v5[v14];

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v16;
}

uint64_t sub_223C28024(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_56(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return MEMORY[0x2821FEBE8](v0, 2);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_beginAccess();
}

uint64_t sub_223C2811C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_223C28174()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_223C3E0C8();
    *(v0 + 40) = v2 & 1;
  }

  return v2 & 1;
}

void _RTCReportingS.startConfiguration(completionHandler:)()
{
  OUTLINED_FUNCTION_65();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____RTCReportingS_userInfo;
  OUTLINED_FUNCTION_48_0();
  v8 = swift_beginAccess();
  if (*(*(v1 + v7) + 16))
  {
    if (qword_280AEC178 != -1)
    {
      v8 = swift_once();
    }

    v9 = qword_280AEC180;
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_37_0();
    *(v10 - 16) = v1;
    *(v10 - 8) = ObjectType;
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_7_1();
    v13 = OUTLINED_FUNCTION_29_1(v12);
    os_unfair_lock_lock(v13);
    sub_223C28584(v14, &v32);
    os_unfair_lock_unlock(v9 + 4);
    if ((v32 & 1) == 0)
    {
      v16 = *(v1 + OBJC_IVAR____RTCReportingS_lock);
      MEMORY[0x28223BE20](v15);
      OUTLINED_FUNCTION_38_0();
      *(v17 - 32) = v1;
      *(v17 - 24) = v5;
      *(v17 - 16) = v3;
      *(v17 - 8) = ObjectType;
      MEMORY[0x28223BE20](v18);
      OUTLINED_FUNCTION_7_1();
      v20 = OUTLINED_FUNCTION_29_1(v19);
      os_unfair_lock_lock(v20);
      sub_223C2BF98();
      os_unfair_lock_unlock(v16 + 4);
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_280AEC160 != -1)
    {
      swift_once();
    }

    if (byte_280AEC398 == 1)
    {
      if (qword_280AEC1C8 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v21 = sub_223C481B8();
      __swift_project_value_buffer(v21, qword_280AEC1D0);
      v22 = sub_223C48198();
      sub_223C484A8();
      v23 = OUTLINED_FUNCTION_46_0();
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_45_0();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_47_0();
        _os_log_impl(v25, v26, v27, v28, v29, 2u);
        v30 = OUTLINED_FUNCTION_8_1();
        MEMORY[0x223DF6270](v30);
      }
    }
  }

  if (v5)
  {

    v5(0);
    v31 = OUTLINED_FUNCTION_31_0();
    sub_223C28024(v31);
  }

LABEL_16:
  OUTLINED_FUNCTION_63();
}

uint64_t sub_223C28518(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&var1);
  if (!v2)
  {
    v3 = var1;
  }

  return v3 & 1;
}

uint64_t sub_223C28554@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223C28518(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

void sub_223C285BC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v7 = qword_280AEC118 + 1;
  if (__OFADD__(qword_280AEC118, 1))
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v3 = v2;
  ++qword_280AEC118;
  v5 = 0x280AEB000uLL;
  if (qword_280AEBD80 >= v7)
  {
    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v16 = sub_223C481B8();
    __swift_project_value_buffer(v16, qword_280AEC1D0);
    v17 = sub_223C48198();
    v18 = sub_223C48498();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349312;
      *(v19 + 4) = qword_280AEC118;
      *(v19 + 12) = 2050;
      *(v19 + 14) = qword_280AEBD80;
      _os_log_impl(&dword_223C26000, v17, v18, "active session count now %{public}ld/%{public}ld", v19, 0x16u);
      MEMORY[0x223DF6270](v19, -1, -1);
    }

    v15 = 0;
    goto LABEL_13;
  }

  v4 = a1;
  if (qword_280AEC1C8 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v8 = sub_223C481B8();
  __swift_project_value_buffer(v8, qword_280AEC1D0);
  v9 = sub_223C48198();
  v10 = sub_223C484A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = *(v5 + 3456);
    _os_log_impl(&dword_223C26000, v9, v10, "RTCReporting session limit (%{public}ld) exceeded", v11, 0xCu);
    MEMORY[0x223DF6270](v11, -1, -1);
  }

  v12 = *(v4 + OBJC_IVAR____RTCReportingS_lock);
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  os_unfair_lock_lock(v12 + 4);
  sub_223C2BF1C();
  if (!v3)
  {
    os_unfair_lock_unlock(v12 + 4);
    v15 = 1;
LABEL_13:
    *a2 = v15;
    return;
  }

  os_unfair_lock_unlock(v12 + 4);
  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return MEMORY[0x2821FE1E8](a1, 256, v1);
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t result)
{
  *(result + 8) = sub_223C4349C;
  v2 = *(v1 + 24);
  return result;
}

void sub_223C288F4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a4;
  v105 = a3;
  v108 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = &v88 - v7;
  v8 = OBJC_IVAR____RTCReportingS_userInfo;
  swift_beginAccess();
  sub_223C2C00C(*&a1[v8], __src);
  swift_endAccess();
  v113 = __src[0];
  v114 = __src[1];
  if (*(&__src[1] + 1))
  {
    sub_223C2A050(&v113, v112);
    v9 = swift_dynamicCast();
    v10 = v110;
    if (v9)
    {
      v11 = v111;
    }

    else
    {
      v11 = 0;
    }

    if (!v9)
    {
      v10 = 0;
    }

    v103 = v10;
  }

  else
  {
    v11 = 0;
    v103 = 0;
  }

  swift_beginAccess();
  sub_223C2C00C(*&a1[v8], __src);
  swift_endAccess();
  v113 = __src[0];
  v114 = __src[1];
  v12 = *(&__src[1] + 1);
  if (*(&__src[1] + 1))
  {
    sub_223C2A050(&v113, v112);
    v13 = swift_dynamicCast();
    v14 = v110;
    v12 = v111;
    if (!v13)
    {
      v12 = 0;
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  if (!v12)
  {
    v14 = 0;
  }

  v102 = v14;
  if (!v12)
  {
    v12 = 0xE000000000000000;
  }

  v107 = v12;
  v15 = *&a1[OBJC_IVAR____RTCReportingS_sessionInfo];
  sub_223C2C00C(v15, __src);
  v113 = __src[0];
  v114 = __src[1];
  if (!*(&__src[1] + 1))
  {
    if (v11)
    {
      goto LABEL_28;
    }

LABEL_34:

    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v30 = sub_223C481B8();
    __swift_project_value_buffer(v30, qword_280AEC1D0);
    v31 = sub_223C48198();
    v32 = sub_223C484B8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_223C26000, v31, v32, "invalid or missing clientName", v33, 2u);
      MEMORY[0x223DF6270](v33, -1, -1);
    }

    v34 = v108;
    if (!v108)
    {
      return;
    }

    v35 = sub_223C48418();
    v27 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v35);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v34;
    v28[5] = v105;

    v29 = &unk_223C4AFE8;
LABEL_79:
    sub_223C3F818(0, 0, v27, v29, v28);

    return;
  }

  sub_223C2A050(&v113, v112);
  v16 = swift_dynamicCast();
  if (v16)
  {
    v17 = v110;
  }

  else
  {
    v17 = 0;
  }

  if (!v11)
  {
    goto LABEL_34;
  }

  if ((v16 & 1) == 0)
  {
LABEL_28:

    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v21 = sub_223C481B8();
    __swift_project_value_buffer(v21, qword_280AEC1D0);
    v22 = sub_223C48198();
    v23 = sub_223C484B8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_223C26000, v22, v23, "invalid or missing clientType", v24, 2u);
      MEMORY[0x223DF6270](v24, -1, -1);
    }

    v25 = v108;
    if (!v108)
    {
      return;
    }

    v26 = sub_223C48418();
    v27 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v25;
    v28[5] = v105;

    v29 = &unk_223C4AFF8;
    goto LABEL_79;
  }

  if (a1[OBJC_IVAR____RTCReportingS_configured] != 1)
  {
    v94 = v17;
    a1[OBJC_IVAR____RTCReportingS_configured] = 1;
    sub_223C2C00C(v15, __src);
    v113 = __src[0];
    v114 = __src[1];
    if (*(&__src[1] + 1))
    {
      sub_223C2A050(&v113, v112);
      if (swift_dynamicCast())
      {
        v36 = v110;
      }

      else
      {
        v36 = 0;
        LOWORD(v110) = 0;
      }
    }

    else
    {
      v36 = 0;
    }

    sub_223C2C00C(v15, __src);
    v113 = __src[0];
    v114 = __src[1];
    if (*(&__src[1] + 1))
    {
      sub_223C2A050(&v113, v112);
      if (swift_dynamicCast())
      {
        v41 = v110;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    v125 = 1;
    sub_223C2C00C(v15, __src);
    sub_223C4582C(__src, &v113, &qword_27D0B99E8, &qword_223C4A8A0);
    v101 = v41;
    if (*(&v114 + 1))
    {
      sub_223C2A050(&v113, v112);
      sub_223C2C0BC(v112, &v110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BF0, &qword_223C4AD98);
      if (swift_dynamicCast())
      {
        v42 = v109;
      }

      else
      {
        v42 = sub_223C48298();
      }

      v43 = sub_223C2DAB4(v42);
      v44 = v57;
      v45 = v58;
      __swift_destroy_boxed_opaque_existential_0(v112);
      sub_223C2CF0C(__src, &qword_27D0B99E8, &qword_223C4A8A0);
      if (!v45)
      {
        v43 = 0;
        v44 = 0;
      }
    }

    else
    {
      sub_223C2CF0C(__src, &qword_27D0B99E8, &qword_223C4A8A0);
      v43 = 0;
      v44 = 0;
      v45 = 0;
    }

    sub_223C2C00C(v15, __src);
    v113 = __src[0];
    v114 = __src[1];
    if (*(&__src[1] + 1) && (sub_223C2A050(&v113, v112), (swift_dynamicCast() & 1) != 0))
    {
      v90 = v111;
      if (v111)
      {
        v100 = v110;
LABEL_90:
        sub_223C2C00C(v15, __src);
        v113 = __src[0];
        v114 = __src[1];
        if (*(&__src[1] + 1) && (sub_223C2A050(&v113, v112), (swift_dynamicCast() & 1) != 0))
        {
          *(&v99 + 1) = v111;
          if (v111)
          {
            *&v99 = v110;
LABEL_96:
            sub_223C2C00C(v15, __src);
            v113 = __src[0];
            v114 = __src[1];
            if (*(&__src[1] + 1) && (sub_223C2A050(&v113, v112), (swift_dynamicCast() & 1) != 0))
            {
              *(&v98 + 1) = v111;
              if (v111)
              {
                *&v98 = v110;
                goto LABEL_102;
              }
            }

            else
            {
              *(&v98 + 1) = 0;
            }

            *&v98 = 0;
LABEL_102:
            sub_223C2C00C(v15, __src);
            if (*(&__src[1] + 1))
            {
              sub_223C2A050(__src, &v113);
              LOBYTE(v97) = swift_dynamicCast() & LOBYTE(v112[0]);
              v97 = v97;
            }

            else
            {
              v97 = 0;
            }

            sub_223C2C00C(v15, __src);
            if (*(&__src[1] + 1) && (sub_223C2A050(__src, &v113), (swift_dynamicCast() & 1) != 0))
            {
              v96 = *&v112[0];
              v125 = 0;
            }

            else
            {
              v96 = 0;
            }

            v91 = v45;
            v92 = v44;
            v93 = v43;
            v59 = getprogname();
            v95 = v36;
            if (!v59)
            {
              v66 = 0;
              v67 = v101;
              goto LABEL_135;
            }

            v61 = sub_223C48378();
            v62 = v60;
            v63 = v61 == 0x64786F62646E6173 && v60 == 0xE800000000000000;
            v64 = v63;
            if (v63 || (sub_223C48678() & 1) != 0 || (v61 == 0x6C6F6F74637472 ? (v65 = v62 == 0xE700000000000000) : (v65 = 0), v65 || (v66 = 0, (sub_223C48678() & 1) != 0)))
            {
              sub_223C2C00C(v15, __src);
              if (!*(&__src[1] + 1))
              {
                v66 = 0;
                if (v64)
                {
                  goto LABEL_126;
                }

LABEL_129:
                v68 = sub_223C48678();

                LOWORD(v36) = v95;
                v67 = v101;
                if (v68)
                {
                  goto LABEL_130;
                }

LABEL_135:
                v73 = *&a1[v8];

                sub_223C2D120(v74);

                LOWORD(__src[0]) = v36;
                DWORD1(__src[0]) = v67;
                v75 = v92;
                v76 = v93;
                *(&__src[0] + 1) = v93;
                *&__src[1] = v92;
                v77 = v91;
                *(&__src[1] + 1) = v91;
                *&__src[2] = v100;
                v78 = v66;
                v89 = v66;
                v79 = v90;
                *(&__src[2] + 1) = v90;
                __src[3] = v99;
                __src[4] = v98;
                LOBYTE(__src[5]) = v97;
                BYTE1(__src[5]) = v78;
                *(&__src[5] + 2) = v112[0];
                WORD3(__src[5]) = WORD2(v112[0]);
                *(&__src[5] + 1) = v96;
                LOBYTE(__src[6]) = v125;
                sub_223C2DA7C(__src, &v113);
                v80 = v106;
                sub_223C483F8();
                v81 = sub_223C48418();
                __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
                v82 = swift_allocObject();
                v82[2] = 0;
                v82[3] = 0;
                v83 = v102;
                v84 = v103;
                v82[4] = v94;
                v82[5] = v84;
                v82[6] = v11;
                v82[7] = v83;
                v82[8] = v107;
                memcpy(v82 + 9, __src, 0x61uLL);
                v85 = v108;
                v82[22] = a1;
                v82[23] = v85;
                v86 = v104;
                v82[24] = v105;
                v82[25] = v86;
                sub_223C29A24(v85);
                v87 = a1;
                sub_223C3FE74(0, 0, v80, &unk_223C4B008, v82);

                sub_223C2CF0C(v80, &unk_27D0B9A30, &unk_223C4AB88);
                LOWORD(v113) = v95;
                DWORD1(v113) = v101;
                *(&v113 + 1) = v76;
                *&v114 = v75;
                *(&v114 + 1) = v77;
                v115 = v100;
                v116 = v79;
                v117 = v99;
                v118 = v98;
                v119 = v97;
                v120 = v89;
                v121 = v112[0];
                v122 = WORD2(v112[0]);
                v123 = v96;
                v124 = v125;
                sub_223C2DEFC(&v113);
                return;
              }

              sub_223C2A050(__src, &v113);
              v66 = (swift_dynamicCast() & LOBYTE(v112[0]));
            }

            if (v64)
            {
LABEL_126:

              LOWORD(v36) = v95;
              v67 = v101;
LABEL_130:
              if (qword_280AEC1C8 != -1)
              {
                swift_once();
              }

              v69 = sub_223C481B8();
              __swift_project_value_buffer(v69, qword_280AEC1D0);
              v70 = sub_223C48198();
              v71 = sub_223C484C8();
              if (os_log_type_enabled(v70, v71))
              {
                v72 = swift_slowAlloc();
                *v72 = 0;
                _os_log_impl(&dword_223C26000, v70, v71, "overriding eager=YES for sandboxd", v72, 2u);
                MEMORY[0x223DF6270](v72, -1, -1);
              }

              v66 = 1;
              goto LABEL_135;
            }

            goto LABEL_129;
          }
        }

        else
        {
          *(&v99 + 1) = 0;
        }

        *&v99 = 0;
        goto LABEL_96;
      }
    }

    else
    {
      v90 = 0;
    }

    v100 = 0;
    goto LABEL_90;
  }

  swift_beginAccess();
  sub_223C2C00C(*&a1[v8], __src);
  swift_endAccess();
  v113 = __src[0];
  v114 = __src[1];
  v18 = *(&__src[1] + 1);
  if (*(&__src[1] + 1))
  {
    sub_223C2A050(&v113, v112);
    v19 = swift_dynamicCast();
    v20 = v110;
    v18 = v111;
    if (!v19)
    {
      v18 = 0;
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v37 = v20;
  }

  else
  {
    v37 = 63;
  }

  if (v18)
  {
    v38 = v18;
  }

  else
  {
    v38 = 0xE100000000000000;
  }

  swift_beginAccess();
  sub_223C2C00C(*&a1[v8], __src);
  swift_endAccess();
  v113 = __src[0];
  v114 = __src[1];
  v39 = *(&__src[1] + 1);
  if (*(&__src[1] + 1))
  {
    sub_223C2A050(&v113, v112);
    if (swift_dynamicCast())
    {
      v40 = v110;
      v39 = v111;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v110 = 0;
      v111 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v46 = v40;
  }

  else
  {
    v46 = 63;
  }

  if (v39)
  {
    v47 = v39;
  }

  else
  {
    v47 = 0xE100000000000000;
  }

  if (qword_280AEC1C8 != -1)
  {
    swift_once();
  }

  v48 = sub_223C481B8();
  __swift_project_value_buffer(v48, qword_280AEC1D0);

  v49 = sub_223C48198();
  v50 = sub_223C484A8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&__src[0] = v52;
    *v51 = 136446466;
    v53 = sub_223C354E8(v37, v38, __src);

    *(v51 + 4) = v53;
    *(v51 + 12) = 2082;
    v54 = sub_223C354E8(v46, v47, __src);

    *(v51 + 14) = v54;
    _os_log_impl(&dword_223C26000, v49, v50, "attempting to re-configure session (%{public}s:%{public}s) after initial configuration", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DF6270](v52, -1, -1);
    MEMORY[0x223DF6270](v51, -1, -1);
  }

  else
  {
  }

  v55 = v108;
  if (v108)
  {
    v56 = sub_223C48418();
    v27 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v56);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v55;
    v28[5] = v105;

    v29 = &unk_223C4B018;
    goto LABEL_79;
  }
}

uint64_t sub_223C29A24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_223C29A38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  v6 = *(v0 + 128);

  v7 = *(v0 + 144);

  if (*(v0 + 184))
  {
    v8 = *(v0 + 192);
  }

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

unint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_223C29FE0();
}

_OWORD *sub_223C29B2C()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_22_1();
  if (__OFADD__(v6, v7))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BE8, &qword_223C4AD90);
  if ((OUTLINED_FUNCTION_59() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_223C29FE0();
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_223C486C8();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0((v13[7] + 32 * v8));
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_63();

    return sub_223C2A050(v14, v15);
  }

  else
  {
    sub_223C2A218(v8, v2, v1, v0, v13);
    OUTLINED_FUNCTION_63();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _RTCReportingS.sendMessage(category:type:payload:)(Swift::UInt16 category, Swift::UInt16 type, Swift::OpaquePointer_optional payload)
{
  rawValue = payload.value._rawValue;
  v6 = MEMORY[0x223DF5480](4, MEMORY[0x277D837D0], MEMORY[0x277D84F70] + 8, MEMORY[0x277D837E0]);
  v7 = MEMORY[0x277D84C58];
  LOWORD(v54) = category;
  OUTLINED_FUNCTION_64(v6, v8, v9, v10, v11, v12, v13, v14, v46, v49, v52, v53, *(&v53 + 1), v54);
  swift_isUniquelyReferenced_nonNull_native();
  v15 = sub_223C29B2C();
  v56 = v7;
  LOWORD(v54) = type;
  OUTLINED_FUNCTION_64(v15, v16, v17, v18, v19, v20, v21, v22, v47, v50, v52, v53, *(&v53 + 1), v54);
  swift_isUniquelyReferenced_nonNull_native();
  v57 = v6;
  OUTLINED_FUNCTION_60();
  v30 = v6;
  if (rawValue)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BF0, &qword_223C4AD98);
    v32 = rawValue;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    *(&v54 + 1) = 0;
    v55 = 0;
  }

  *&v54 = v32;
  v56 = v31;
  if (v31)
  {
    OUTLINED_FUNCTION_64(v31, v23, v24, v25, v26, v27, v28, v29, v48, v51, v52, v53, *(&v53 + 1), v54);

    swift_isUniquelyReferenced_nonNull_native();
    v57 = v6;
    v33 = sub_223C29B2C();
  }

  else
  {

    sub_223C2CF0C(&v54, &qword_27D0B99E8, &qword_223C4A8A0);
    v41 = sub_223C29FE0();
    if (v42)
    {
      v43 = v41;
      swift_isUniquelyReferenced_nonNull_native();
      v57 = v6;
      v44 = *(v6 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BE8, &qword_223C4AD90);
      sub_223C485F8();
      v30 = v57;
      v45 = *(v57[6] + 16 * v43 + 8);

      sub_223C2A050((v30[7] + 32 * v43), &v52);
      sub_223C48618();
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    v33 = sub_223C2CF0C(&v52, &qword_27D0B99E8, &qword_223C4A8A0);
  }

  v56 = MEMORY[0x277D83B88];
  *&v54 = 0;
  OUTLINED_FUNCTION_64(v33, v34, v35, v36, v37, v38, v39, v40, v48, v51, v52, v53, *(&v53 + 1), v54);
  swift_isUniquelyReferenced_nonNull_native();
  v57 = v30;
  OUTLINED_FUNCTION_60();
  v58.value._rawValue = v57;
  _RTCReportingS.sendMessage(dictionary:)(v58);
}

unint64_t sub_223C29FE0()
{
  v1 = *(v0 + 40);
  sub_223C48758();
  OUTLINED_FUNCTION_29_0();
  sub_223C48358();
  sub_223C48788();
  v2 = OUTLINED_FUNCTION_20();

  return sub_223C2A164(v2, v3, v4);
}

_OWORD *sub_223C2A050(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_18()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  *(v1 - 96) = v0;

  return sub_223C2F610();
}

uint64_t OUTLINED_FUNCTION_23_0()
{
  *(v1 - 96) = v0;

  return sub_223C2F610();
}

unint64_t sub_223C2A164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_223C48678() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_223C2A218(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_223C2A050(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_52_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_dynamicCast();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _RTCReportingS.sendMessage(dictionary:)(Swift::OpaquePointer_optional dictionary)
{
  v3 = v1;
  rawValue = dictionary.value._rawValue;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_48_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector_])
    {
      v8 = v3;
      if (rawValue)
      {
        sub_223C40B20(rawValue);
        v9 = sub_223C48238();
      }

      else
      {
        v9 = 0;
      }

      [v7 didSendMessageForReportingClient:v3 event:v9];

      swift_unknownObjectRelease();

      if (!rawValue)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    Strong = swift_unknownObjectRelease();
  }

  if (!rawValue)
  {
LABEL_13:
    sub_223C44D4C();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    return;
  }

LABEL_7:
  if (qword_280AEC150 != -1)
  {
    OUTLINED_FUNCTION_18_1();
    Strong = swift_once();
  }

  v10 = qword_280AEC158;
  MEMORY[0x28223BE20](Strong);
  OUTLINED_FUNCTION_37_0();
  *(v11 - 16) = ObjectType;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v14 = OUTLINED_FUNCTION_29_1(v13);
  os_unfair_lock_lock(v14);
  sub_223C2A5BC(v15, &v22);
  os_unfair_lock_unlock(v10 + 4);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v17 = *&v3[OBJC_IVAR____RTCReportingS_lock];
    v18 = MEMORY[0x28223BE20](v16);
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_7_1();
    v20 = OUTLINED_FUNCTION_29_1(v19);
    os_unfair_lock_lock(v20);
    sub_223C2BF1C();
    os_unfair_lock_unlock(v17 + 4);
  }
}

void *sub_223C2A558(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *sub_223C2A590@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_223C2A558(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_223C2A5E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v205 = a4;
  v201 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v207 = &v188 - v10;
  v11 = sub_223C48188();
  v206 = *(v11 - 8);
  v12 = *(v206 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v204 = &v188 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = v14;
  MEMORY[0x28223BE20](v13);
  v208 = &v188 - v15;
  v16 = type metadata accessor for EventValue();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v209 = (&v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](&v188 - v25);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v188 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v188 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v188 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v42 = (&v188 - v41);
  if (a1[OBJC_IVAR____RTCReportingS_terminated])
  {
    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v43 = sub_223C481B8();
    __swift_project_value_buffer(v43, qword_280AEC1D0);
    v44 = a1;
    v45 = sub_223C48198();
    v46 = sub_223C48488();

    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_34;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v214 = v48;
    *v47 = 136315138;
    if (*&v44[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
    {
      v49 = *&v44[OBJC_IVAR____RTCReportingS_generatedSessionID];
      v50 = *&v44[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
    }

    else
    {
      v50 = 0xE100000000000000;
      v49 = 63;
    }

    v63 = sub_223C354E8(v49, v50, &v214);

    *(v47 + 4) = v63;
    v64 = "dropping message to terminated session(%s)";
LABEL_33:
    _os_log_impl(&dword_223C26000, v45, v46, v64, v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x223DF6270](v48, -1, -1);
    MEMORY[0x223DF6270](v47, -1, -1);
LABEL_34:

    return;
  }

  v197 = v37;
  v192 = v36;
  v200 = v29;
  v193 = v40;
  v194 = v17;
  v190 = v39;
  v198 = v38;
  v202 = v16;
  sub_223C2C00C(a2, &v214);
  v212 = v214;
  v213 = v215;
  v216 = v5;
  v191 = v11;
  if (*(&v215 + 1))
  {
    sub_223C2A050(&v212, v210);
    v51 = swift_dynamicCast();
    if (v51)
    {
      v195 = v211;
    }

    else
    {
      v195 = 0;
      LOWORD(v211) = 0;
    }

    v52 = v51 ^ 1;
  }

  else
  {
    v195 = 0;
    v52 = 1;
  }

  v199 = a1;
  sub_223C2C00C(a2, &v214);
  v212 = v214;
  v213 = v215;
  if (*(&v215 + 1))
  {
    sub_223C2A050(&v212, v210);
    v53 = swift_dynamicCast();
    v54 = v211;
    if (!v53)
    {
      v54 = 0;
    }

    v196 = v54;
    v55 = v53 ^ 1;
  }

  else
  {
    v196 = 0;
    v55 = 1;
  }

  sub_223C2C00C(a2, &v214);
  v212 = v214;
  v213 = v215;
  if (*(&v215 + 1))
  {
    sub_223C2A050(&v212, v210);
    v56 = swift_dynamicCast();
    if (v211 == 1)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
  }

  sub_223C2C00C(a2, &v214);
  v212 = v214;
  v213 = v215;
  if (!*(&v215 + 1) || (sub_223C2A050(&v212, v210), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BF0, &qword_223C4AD98), (swift_dynamicCast() & 1) == 0) || (v58 = v211) == 0)
  {
    v58 = sub_223C48298();
  }

  v59 = v202;
  if ((v52 | v55))
  {

    sub_223C44D4C();
    swift_allocError();
    *v60 = 1;
    swift_willThrow();
    return;
  }

  v61 = v216;
  v62 = sub_223C2C118(v58);
  v216 = v61;
  if (v61)
  {

    return;
  }

  v65 = v62;
  v66 = v199;
  v67 = *&v199[OBJC_IVAR____RTCReportingS_extraFields];
  if (v67)
  {
    v68 = *&v199[OBJC_IVAR____RTCReportingS_extraFields];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v214 = v65;
    v70 = v216;
    sub_223C364F8(v67, sub_223C36C60, 0, isUniquelyReferenced_nonNull_native, &v214);
    v216 = v70;
    v65 = v214;
  }

  LOBYTE(v210[0]) = v57;
  *v42 = v195;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v59);
  sub_223C4582C(v42, v35, &qword_27D0B9950, &qword_223C4A5D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v59);
  v195 = v65;
  if (EnumTagSinglePayload == 1)
  {

    sub_223C2CF0C(v35, &qword_27D0B9950, &qword_223C4A5D0);
    v72 = sub_223C29FE0();
    if (v73)
    {
      v74 = v72;
      LODWORD(v189) = swift_isUniquelyReferenced_nonNull_native();
      *&v214 = v65;
      v75 = v65[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      sub_223C485F8();
      v76 = v214;
      v77 = *(*(v214 + 48) + 16 * v74 + 8);

      sub_223C2D02C(v76[7] + *(v194 + 72) * v74, v32);
      v65 = v76;
      sub_223C48618();
      v78 = 0;
    }

    else
    {
      v78 = 1;
    }

    __swift_storeEnumTagSinglePayload(v32, v78, 1, v59);
    sub_223C2CF0C(v32, &qword_27D0B9950, &qword_223C4A5D0);
  }

  else
  {
    sub_223C2D02C(v35, v209);

    swift_isUniquelyReferenced_nonNull_native();
    *&v214 = v65;
    sub_223C2F610();
    v65 = v214;
  }

  v189 = v58;
  sub_223C2CF0C(v42, &qword_27D0B9950, &qword_223C4A5D0);
  v79 = v200;
  *v200 = v196;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v59);
  v80 = v79;
  v81 = v197;
  sub_223C4582C(v80, v197, &qword_27D0B9950, &qword_223C4A5D0);
  if (__swift_getEnumTagSinglePayload(v81, 1, v59) == 1)
  {
    sub_223C2CF0C(v81, &qword_27D0B9950, &qword_223C4A5D0);
    v82 = v65;
    v83 = sub_223C29FE0();
    if (v84)
    {
      v85 = v83;
      swift_isUniquelyReferenced_nonNull_native();
      *&v214 = v65;
      v86 = v65[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      sub_223C485F8();
      v82 = v214;
      v87 = *(*(v214 + 48) + 16 * v85 + 8);

      v88 = v192;
      sub_223C2D02C(v82[7] + *(v194 + 72) * v85, v192);
      sub_223C48618();
      v89 = 0;
    }

    else
    {
      v89 = 1;
      v88 = v192;
    }

    __swift_storeEnumTagSinglePayload(v88, v89, 1, v59);
    sub_223C2CF0C(v88, &qword_27D0B9950, &qword_223C4A5D0);
  }

  else
  {
    sub_223C2D02C(v81, v209);
    swift_isUniquelyReferenced_nonNull_native();
    *&v214 = v65;
    sub_223C2F610();
    v82 = v214;
  }

  sub_223C2CF0C(v200, &qword_27D0B9950, &qword_223C4A5D0);
  if (v66[OBJC_IVAR____RTCReportingS_completelyDisabled])
  {

    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v90 = sub_223C481B8();
    __swift_project_value_buffer(v90, qword_280AEC1D0);
    v91 = v66;
    v45 = sub_223C48198();
    v46 = sub_223C48488();

    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_34;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v214 = v48;
    *v47 = 136315138;
    if (*&v91[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
    {
      v92 = *&v91[OBJC_IVAR____RTCReportingS_generatedSessionID];
      v93 = *&v91[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
    }

    else
    {
      v93 = 0xE100000000000000;
      v92 = 63;
    }

    v168 = sub_223C354E8(v92, v93, &v214);

    *(v47 + 4) = v168;
    v64 = "dropping message to inactive session(%s)";
    goto LABEL_33;
  }

  v94 = v59;
  v95 = OBJC_IVAR____RTCReportingS_sentEventCount;
  v96 = v198;
  *v198 = *&v66[OBJC_IVAR____RTCReportingS_sentEventCount];
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v96, 0, 1, v94);
  v97 = v96;
  v98 = v193;
  sub_223C4582C(v97, v193, &qword_27D0B9950, &qword_223C4A5D0);
  if (__swift_getEnumTagSinglePayload(v98, 1, v94) == 1)
  {
    sub_223C2CF0C(v98, &qword_27D0B9950, &qword_223C4A5D0);
    v99 = sub_223C29FE0();
    if (v100)
    {
      v101 = v99;
      swift_isUniquelyReferenced_nonNull_native();
      *&v214 = v82;
      v102 = v82[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      sub_223C485F8();
      v82 = v214;
      v103 = *(*(v214 + 48) + 16 * v101 + 8);

      v104 = v190;
      sub_223C2D02C(v82[7] + *(v194 + 72) * v101, v190);
      v105 = v202;
      sub_223C48618();
      v106 = 0;
      v107 = v199;
    }

    else
    {
      v106 = 1;
      v107 = v199;
      v105 = v202;
      v104 = v190;
    }

    __swift_storeEnumTagSinglePayload(v104, v106, 1, v105);
    sub_223C2CF0C(v104, &qword_27D0B9950, &qword_223C4A5D0);
  }

  else
  {
    sub_223C2D02C(v98, v209);
    swift_isUniquelyReferenced_nonNull_native();
    *&v214 = v82;
    sub_223C2F610();
    v82 = v214;
    v107 = v199;
  }

  sub_223C2CF0C(v198, &qword_27D0B9950, &qword_223C4A5D0);
  v108 = *&v107[v95];
  v109 = __CFADD__(v108, 1);
  v110 = v108 + 1;
  if (v109)
  {
    __break(1u);
    goto LABEL_121;
  }

  *&v107[v95] = v110;
  v111 = *&v107[OBJC_IVAR____RTCReportingS_session];
  if (v111)
  {
    v112 = *&v107[OBJC_IVAR____RTCReportingS_session];

    v113 = *&v107[OBJC_IVAR____RTCReportingS_legacyAVCSupport];
    v209 = v111;
    if (!v113)
    {

      goto LABEL_111;
    }

    v202 = v113;
    sub_223C40B20(v189);
    v114 = sub_223C48238();

    v115 = v210[0];
    *&v214 = v82;
    BYTE8(v214) = v210[0];
    v116 = Event.category.getter();
    if (v117)
    {
      v118 = 0;
    }

    else
    {
      v118 = v116;
    }

    if ((v118 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v118 >> 16))
    {
      *&v214 = v82;
      BYTE8(v214) = v115;
      v119 = Event.type.getter();
      if (v120)
      {
        v121 = 0;
      }

      else
      {
        v121 = v119;
      }

      if ((v121 & 0x8000000000000000) == 0)
      {
        if (!(v121 >> 16))
        {
          [v202 invokeAWDAdaptorForPayload:v114 category:v118 type:v121];

          if (qword_280AEC160 == -1)
          {
LABEL_76:
            if (byte_280AEC398 == 1)
            {
              v123 = v111[14];
              v122 = v111[15];

              v107 = sub_223C48318();

              v125 = v111[16];
              v124 = v111[17];

              v126 = sub_223C48318();

              sub_223C40B20(v189);

              v127 = v82;
              v82 = sub_223C48238();

              *&v214 = v127;
              BYTE8(v214) = v115;
              v128 = Event.category.getter();
              if (v129)
              {
                v130 = 0;
              }

              else
              {
                v130 = v128;
              }

              if ((v130 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (!(v130 >> 16))
              {
                *&v214 = v127;
                BYTE8(v214) = v115;
                v131 = Event.type.getter();
                if (v132)
                {
                  v133 = 0;
                }

                else
                {
                  v133 = v131;
                }

                if ((v133 & 0x8000000000000000) == 0)
                {
                  if (!(v133 >> 16))
                  {
                    v134 = *&v199[v95];
                    if (v134)
                    {
                      v135 = v202;
                      [v202 sendPowerLogEventForClient:v107 serviceName:v126 payload:v82 category:v130 type:v133 eventNumber:v134 - 1];

                      v107 = v199;
                      v82 = v127;
                      goto LABEL_111;
                    }

                    goto LABEL_131;
                  }

LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
LABEL_132:
                  swift_once();
                  goto LABEL_93;
                }

LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              __break(1u);
              goto LABEL_129;
            }

            v107 = v199;
LABEL_111:
            if (qword_280AEC1C8 == -1)
            {
LABEL_112:
              v216 = v82;
              v159 = sub_223C481B8();
              __swift_project_value_buffer(v159, qword_280AEC1D0);
              v160 = v107;
              v161 = sub_223C48198();
              v162 = sub_223C484C8();

              v163 = os_log_type_enabled(v161, v162);
              v202 = v160;
              if (v163)
              {
                v164 = swift_slowAlloc();
                v165 = swift_slowAlloc();
                *&v214 = v165;
                *v164 = 136315138;
                if (*&v160[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
                {
                  v166 = *&v160[OBJC_IVAR____RTCReportingS_generatedSessionID];
                  v167 = *&v160[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
                }

                else
                {
                  v167 = 0xE100000000000000;
                  v166 = 63;
                }

                v169 = sub_223C354E8(v166, v167, &v214);

                *(v164 + 4) = v169;
                _os_log_impl(&dword_223C26000, v161, v162, "sendMessage called for: %s", v164, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v165);
                MEMORY[0x223DF6270](v165, -1, -1);
                MEMORY[0x223DF6270](v164, -1, -1);
              }

              v170 = v210[0];
              v171 = v208;
              sub_223C48178();
              v172 = v207;
              sub_223C483F8();
              v173 = sub_223C48418();
              __swift_storeEnumTagSinglePayload(v172, 0, 1, v173);
              v174 = v206;
              v175 = v204;
              v176 = v191;
              (*(v206 + 16))(v204, v171, v191);
              v177 = (*(v174 + 80) + 64) & ~*(v174 + 80);
              v178 = (v203 + v177 + 7) & 0xFFFFFFFFFFFFFFF8;
              v179 = swift_allocObject();
              *(v179 + 16) = 0;
              *(v179 + 24) = 0;
              v180 = v216;
              *(v179 + 32) = v209;
              *(v179 + 40) = v180;
              *(v179 + 48) = v170;
              v181 = v202;
              *(v179 + 56) = v202;
              (*(v174 + 32))(v179 + v177, v175, v176);
              *(v179 + v178) = v205;

              v182 = v181;
              v183 = v207;
              v184 = sub_223C3FE74(0, 0, v207, &unk_223C4AF98, v179);
              sub_223C2CF0C(v183, &unk_27D0B9A30, &unk_223C4AB88);
              v185 = OBJC_IVAR____RTCReportingS_activeTasks;
              swift_beginAccess();

              v186 = *&v182[v185];
              swift_isUniquelyReferenced_nonNull_native();
              *&v212 = *&v182[v185];
              v187 = v208;
              sub_223C443E8(v184, v208);
              *&v182[v185] = v212;
              swift_endAccess();
              sub_223C3F50C();

              (*(v174 + 8))(v187, v176);
              return;
            }

LABEL_121:
            swift_once();
            goto LABEL_112;
          }

LABEL_126:
          swift_once();
          goto LABEL_76;
        }

LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    __break(1u);
    goto LABEL_124;
  }

  if (qword_280AEC160 != -1)
  {
    swift_once();
  }

  LODWORD(v126) = byte_280AEC398;
  if ((byte_280AEC398 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (qword_280AEC1C8 != -1)
  {
    goto LABEL_132;
  }

LABEL_93:
  v136 = sub_223C481B8();
  __swift_project_value_buffer(v136, qword_280AEC1D0);
  v137 = sub_223C48198();
  v138 = sub_223C484A8();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    *v139 = 0;
    _os_log_impl(&dword_223C26000, v137, v138, "event sent to session with incomplete configuration - caching as a workaround", v139, 2u);
    MEMORY[0x223DF6270](v139, -1, -1);
  }

LABEL_96:
  v140 = v82;
  v141 = OBJC_IVAR____RTCReportingS_earlyCachedEvents;
  swift_beginAccess();
  v142 = MEMORY[0x277D84F90];
  if (!*&v107[v141])
  {
    *&v107[v141] = MEMORY[0x277D84F90];
  }

  v143 = v210[0];
  swift_beginAccess();

  sub_223C36EC0();
  v144 = *(*&v107[v141] + 16);
  sub_223C36E80(v144);
  v145 = *&v107[v141];
  *(v145 + 16) = v144 + 1;
  v146 = v145 + 16 * v144;
  *(v146 + 32) = v140;
  *(v146 + 40) = v143;
  *&v107[v141] = v145;
  swift_endAccess();
  v147 = *&v107[v141];
  if (v147)
  {
    v148 = *&v107[v141];

    v149 = *(v147 + 16);

    if (v149 > v201)
    {
      if (qword_280AEC1C8 != -1)
      {
        swift_once();
      }

      v150 = sub_223C481B8();
      __swift_project_value_buffer(v150, qword_280AEC1D0);
      v151 = sub_223C48198();
      v152 = sub_223C484B8();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        *v153 = 0;
        _os_log_impl(&dword_223C26000, v151, v152, "too many events sent to unconfigured session", v153, 2u);
        v154 = v153;
        v107 = v199;
        MEMORY[0x223DF6270](v154, -1, -1);
      }

      if (v126)
      {
        v155 = sub_223C48198();
        v156 = sub_223C484A8();
        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          *v157 = 0;
          _os_log_impl(&dword_223C26000, v155, v156, "dumping early event cache buffer - too large", v157, 2u);
          MEMORY[0x223DF6270](v157, -1, -1);
        }
      }

      v158 = *&v107[v141];
      *&v107[v141] = v142;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_223C2BE24()
{
  v1 = sub_223C48188();
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  v10 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_223C2C474(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_223C2BF98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1)
{
  v5 = *(*(v2 + 64) + v3);
  *(a1 + 16) = *(v2 + 64);
  *(a1 + 32) = v1;

  return swift_task_alloc();
}

double sub_223C2C00C@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_223C29FE0(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_223C2C0BC(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t type metadata accessor for EventValue()
{
  result = qword_280AEC168;
  if (!qword_280AEC168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223C2C0BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_223C2C118(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventValue();
  v5 = OUTLINED_FUNCTION_3(v4);
  v54 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v55 = &v50 - v13;
  v14 = MEMORY[0x223DF5480](*(a1 + 16), MEMORY[0x277D837D0]);
  v16 = a1 + 64;
  v15 = *(a1 + 64);
  v17 = *(a1 + 32);
  OUTLINED_FUNCTION_28_1();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v50 = a1;

  v23 = 0;
  v51 = v22;
  v52 = a1 + 64;
  v53 = v11;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_8:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v27 = v26 | (v24 << 6);
      v28 = (*(v50 + 48) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      sub_223C2C0BC(*(v50 + 56) + 32 * v27, v56);
      *&v57 = v30;
      *(&v57 + 1) = v29;
      sub_223C2A050(v56, &v58);

      v25 = v55;
LABEL_9:
      v60 = v57;
      v61[0] = v58;
      v61[1] = v59;
      v31 = *(&v57 + 1);
      if (!*(&v57 + 1))
      {
        break;
      }

      v32 = v60;
      sub_223C2A050(v61, &v57);
      sub_223C2C58C(&v57, v25);
      if (v2)
      {
        __swift_destroy_boxed_opaque_existential_0(&v57);

        break;
      }

      v62 = 0;
      sub_223C2D02C(v25, v11);
      swift_isUniquelyReferenced_nonNull_native();
      *&v56[0] = v14;
      sub_223C29FE0();
      OUTLINED_FUNCTION_22_1();
      if (__OFADD__(v35, v36))
      {
        goto LABEL_25;
      }

      v11 = v33;
      v37 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      if (sub_223C485F8())
      {
        v38 = sub_223C29FE0();
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_27;
        }

        v11 = v38;
      }

      if (v37)
      {

        v14 = *&v56[0];
        v40 = OUTLINED_FUNCTION_33_0();
        sub_223C36BBC(v40, v41);
        __swift_destroy_boxed_opaque_existential_0(&v57);
      }

      else
      {
        v14 = *&v56[0];
        OUTLINED_FUNCTION_53(*&v56[0] + 8 * (v11 >> 6));
        v43 = (v42 + 16 * v11);
        *v43 = v32;
        v43[1] = v31;
        v44 = OUTLINED_FUNCTION_33_0();
        sub_223C2D02C(v44, v45);
        __swift_destroy_boxed_opaque_existential_0(&v57);
        v46 = *(v14 + 16);
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_26;
        }

        *(v14 + 16) = v48;
      }

      v2 = v62;
      v16 = v52;
      v22 = v51;
      if (!v20)
      {
        goto LABEL_3;
      }
    }

    return v14;
  }

  else
  {
LABEL_3:
    v25 = v55;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
        v20 = 0;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        goto LABEL_9;
      }

      v20 = *(v16 + 8 * v24);
      ++v23;
      if (v20)
      {
        v23 = v24;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_223C486C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_223C2C474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_223C2C4D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_30_0();
  v9(v8);
  return a2;
}

unint64_t OUTLINED_FUNCTION_26_1()
{
  v2 = *v0;

  return sub_223C29FE0();
}

uint64_t sub_223C2C58C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EventValue();
  v6 = OUTLINED_FUNCTION_3(v5);
  v105 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v104 = v10 - v11;
  v13 = MEMORY[0x28223BE20](v12);
  v103 = &v96 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v96 - v15;
  v100 = sub_223C48078();
  v17 = OUTLINED_FUNCTION_3(v100);
  v99 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_13();
  v21 = sub_223C48188();
  v22 = OUTLINED_FUNCTION_3(v21);
  v101 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13();
  v28 = v27 - v26;
  sub_223C2C0BC(a1, v113);
  if (OUTLINED_FUNCTION_9_1())
  {
    v29 = *(&v110 + 1);
    *a2 = v110;
    a2[1] = v29;
LABEL_3:
    OUTLINED_FUNCTION_50_0();
LABEL_14:
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_0(v113);
  }

  v102 = a2;
  v98 = v5;
  sub_223C2811C(0, qword_280AEC0E8, 0x277CCABB0);
  if (OUTLINED_FUNCTION_9_1())
  {
    v30 = v110;
    if (*MEMORY[0x277CBED28] && v110 == *MEMORY[0x277CBED28])
    {

      *v102 = 1;
LABEL_11:
      OUTLINED_FUNCTION_49_0();
      goto LABEL_14;
    }

    v31 = *MEMORY[0x277CBED10];

    if (v31 && v30 == v31)
    {
      *v102 = 0;
      goto LABEL_11;
    }
  }

  if (OUTLINED_FUNCTION_9_1() || (v33 = OUTLINED_FUNCTION_9_1(), v34 = v102, v33))
  {
    *v102 = v110;
    OUTLINED_FUNCTION_49_0();
    goto LABEL_14;
  }

  v35 = OUTLINED_FUNCTION_9_1();
  v36 = v98;
  if (v35)
  {
    *v34 = v110;
    OUTLINED_FUNCTION_50_0();
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    (*(v101 + 32))(v34, v28, v21);
    OUTLINED_FUNCTION_50_0();
    goto LABEL_14;
  }

  sub_223C2811C(0, &unk_280AEBEF0, 0x277CBEA60);
  if (swift_dynamicCast())
  {
    v37 = *&v106[0];
    v38 = [*&v106[0] count];
    v39 = sub_223C43DC0(0, v38 & ~(v38 >> 63), 0, MEMORY[0x277D84F90]);
    sub_223C48518();
    while (1)
    {
      sub_223C48068();
      if (!*(&v111[0] + 1))
      {
        v80 = OUTLINED_FUNCTION_27_1();
        v81(v80);

        *v34 = v39;
        OUTLINED_FUNCTION_50_0();
        goto LABEL_14;
      }

      sub_223C2A050(&v110, &v107);
      sub_223C2C58C(&v107);
      if (v2)
      {
        break;
      }

      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_223C43DC0(v40 > 1, v41 + 1, 1, v39);
      }

      __swift_destroy_boxed_opaque_existential_0(&v107);
      *(v39 + 16) = v41 + 1;
      sub_223C2D02C(v16, v39 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v41);
    }

    __swift_destroy_boxed_opaque_existential_0(&v107);
    v87 = OUTLINED_FUNCTION_27_1();
    v88(v87);

    return __swift_destroy_boxed_opaque_existential_0(v113);
  }

  sub_223C2811C(0, &qword_280AEC0B8, 0x277CBEAC0);
  if (!swift_dynamicCast())
  {
    sub_223C2811C(0, &qword_280AEBEE8, 0x277D82BB8);
    if (OUTLINED_FUNCTION_9_1())
    {
      v82 = v110;
      if ([v110 respondsToSelector_])
      {
        v83 = [v82 description];
        v84 = sub_223C48328();
        v86 = v85;

        *v34 = v84;
        v34[1] = v86;
        goto LABEL_3;
      }
    }

    v89 = *(a1 + 24);
    v90 = OUTLINED_FUNCTION_41_0();
    __swift_project_boxed_opaque_existential_0(v90, v91);
    *&v110 = swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C48, &qword_223C4AFC8);
    v92 = sub_223C48338();
    v94 = v93;
    sub_223C456A8();
    swift_allocError();
    *v95 = v92;
    v95[1] = v94;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v113);
  }

  *&v110 = 0;
  v96 = v113[6];
  sub_223C48248();
  if (v110)
  {
    v42 = v110;
    v112 = MEMORY[0x223DF5480](*(v110 + 16), MEMORY[0x277D837D0], v36, MEMORY[0x277D837E0]);
    v43 = *(v42 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C50, &qword_223C4AFD0);
    sub_223C48288();
    v44 = 0;
    v97 = v42;
    v46 = v42 + 64;
    v45 = *(v42 + 64);
    v47 = *(v42 + 32);
    OUTLINED_FUNCTION_28_1();
    v50 = v49 & v48;
    v51 = v112;
    v53 = (v52 + 63) >> 6;
    v99 = v42 + 64;
    if ((v49 & v48) == 0)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v54 = v44;
LABEL_36:
      v55 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v56 = v55 | (v54 << 6);
      v57 = (*(v97 + 48) + 16 * v56);
      v59 = *v57;
      v58 = v57[1];
      sub_223C2C0BC(*(v97 + 56) + 32 * v56, v106);
      *&v107 = v59;
      *(&v107 + 1) = v58;
      sub_223C2A050(v106, &v108);

LABEL_37:
      v110 = v107;
      v111[0] = v108;
      v111[1] = v109;
      v101 = *(&v107 + 1);
      if (!*(&v107 + 1))
      {
        v112 = v51;

        *v34 = v51;
        OUTLINED_FUNCTION_49_0();
        goto LABEL_14;
      }

      v60 = v110;
      sub_223C2A050(v111, &v107);
      v61 = v103;
      sub_223C2C58C(&v107);
      if (v2)
      {
        v112 = v51;
        __swift_destroy_boxed_opaque_existential_0(&v107);

        return __swift_destroy_boxed_opaque_existential_0(v113);
      }

      sub_223C2D02C(v61, v104);
      swift_isUniquelyReferenced_nonNull_native();
      *&v106[0] = v51;
      v100 = v60;
      sub_223C29FE0();
      OUTLINED_FUNCTION_22_1();
      if (__OFADD__(v64, v65))
      {
        break;
      }

      v66 = v62;
      v67 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      if (sub_223C485F8())
      {
        v68 = sub_223C29FE0();
        if ((v67 & 1) != (v69 & 1))
        {
          goto LABEL_63;
        }

        v66 = v68;
      }

      if (v67)
      {

        v51 = *&v106[0];
        v70 = OUTLINED_FUNCTION_25_1();
        sub_223C36BBC(v70, v71);
        __swift_destroy_boxed_opaque_existential_0(&v107);
      }

      else
      {
        v51 = *&v106[0];
        OUTLINED_FUNCTION_53(*&v106[0] + 8 * (v66 >> 6));
        v73 = (v72 + 16 * v66);
        v74 = v101;
        *v73 = v100;
        v73[1] = v74;
        v75 = OUTLINED_FUNCTION_25_1();
        sub_223C2D02C(v75, v76);
        __swift_destroy_boxed_opaque_existential_0(&v107);
        v77 = *(v51 + 16);
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_61;
        }

        *(v51 + 16) = v79;
      }

      v34 = v102;
      v46 = v99;
      if (!v50)
      {
LABEL_32:
        while (1)
        {
          v54 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v54 >= v53)
          {
            v50 = 0;
            v108 = 0u;
            v109 = 0u;
            v107 = 0u;
            goto LABEL_37;
          }

          v50 = *(v46 + 8 * v54);
          ++v44;
          if (v50)
          {
            v44 = v54;
            goto LABEL_36;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
  }

  __break(1u);
LABEL_63:
  result = sub_223C486C8();
  __break(1u);
  return result;
}

uint64_t sub_223C2CF0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_223C3C718(0, 0, v0, &unk_223C4ABA0, v1);
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

uint64_t sub_223C2D02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_27_0()
{
  v1 = v0[142];
  v2 = v0[141];
  v3 = v0[124];
}

uint64_t OUTLINED_FUNCTION_27_1()
{
  v2 = *(*(v1 - 312) + 8);
  result = v0;
  v4 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_slowAlloc();
}

uint64_t sub_223C2D120(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner((*(v2 + OBJC_IVAR____RTCReportingS_lock) + 16));
  v4 = sub_223C2C118(a1);
  v5 = sub_223C44660(v4, sub_223C2D328, sub_223C2D328);

  if (!*(v5 + 16))
  {

    v5 = 0;
  }

  v6 = *(v2 + OBJC_IVAR____RTCReportingS_extraFields);
  *(v2 + OBJC_IVAR____RTCReportingS_extraFields) = v5;
}

uint64_t sub_223C2D328(unint64_t *a1, uint64_t a2, void *a3)
{
  v31 = a2;
  v32 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = (&v31 - v5);
  v7 = type metadata accessor for EventValue();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v12 = 0;
  v36 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = (v36[6] + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    sub_223C2D6B4(v36[7] + *(v34 + 72) * v23, v11);
    *v6 = v25;
    v6[1] = v26;
    sub_223C2D6B4(v11, v6 + *(v35 + 48));
    v27 = v25 == 0x4E746E65696C635FLL && v26 == 0xEB00000000656D61;
    if (v27 || (sub_223C48678() & 1) != 0 || (v25 == 0x656369767265735FLL ? (v28 = v26 == 0xEC000000656D614ELL) : (v28 = 0), v28))
    {
      swift_bridgeObjectRetain_n();
      sub_223C2CF0C(v6, &qword_27D0B99E0, &unk_223C4AFA0);
      sub_223C2D718(v11);
    }

    else
    {
      v29 = sub_223C48678();
      swift_bridgeObjectRetain_n();
      sub_223C2CF0C(v6, &qword_27D0B99E0, &unk_223C4AFA0);
      sub_223C2D718(v11);

      if ((v29 & 1) == 0)
      {
        *(v32 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (__OFADD__(v33++, 1))
        {
          goto LABEL_27;
        }
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_223C2D774(v32, v31, v33, v36);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_223C2D650(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_223C4A8D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_223C2D6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223C2D718(uint64_t a1)
{
  v2 = type metadata accessor for EventValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223C2D774(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for EventValue();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F0, &qword_223C4A8A8);
  result = sub_223C48648();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    sub_223C2D6B4(v23 + v45 * v22, v42);
    sub_223C2D02C(v27, v18);
    v28 = *(v14 + 40);
    sub_223C48758();

    sub_223C48358();
    result = sub_223C48788();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_25:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = sub_223C2D02C(v18, *(v14 + 56) + v32 * v45);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_223C2DAB4(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_223C29FE0(), (v3 & 1) != 0) && (sub_223C2C0BC(*(a1 + 56) + 32 * v2, &v7), (OUTLINED_FUNCTION_50() & 1) != 0))
  {
    v4 = v6;
    sub_223C2C00C(a1, &v7);

    if (v8)
    {
      if (OUTLINED_FUNCTION_50())
      {
        return v4;
      }
    }

    else
    {
      sub_223C2CF0C(&v7, &qword_27D0B99E8, &qword_223C4A8A0);
    }
  }

  else
  {
  }

  v4 = 0;
  OUTLINED_FUNCTION_43();
  return v4;
}

uint64_t OUTLINED_FUNCTION_51()
{

  return sub_223C48618();
}

uint64_t sub_223C2DC14@<X0>(double *a1@<X8>)
{
  v2 = getTimeIntervalSince1970(Date:)();
  v3 = v2;
  if (!v2)
  {
    v3 = -1.0;
  }

  *a1 = v3;
  type metadata accessor for EventValue();

  return swift_storeEnumTagMultiPayload();
}

uint64_t getTimeIntervalSince1970(Date:)()
{
  result = sub_223C48108();
  v2 = (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v3 = v1 < 0.0 && ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v1 >= 0.0)
  {
    v2 = 0;
  }

  v4 = (*&v1 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v2;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v4 = 1;
  }

  if ((v4 | v3))
  {
    return 0;
  }

  if (v1 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v1 < 9.22337204e18)
  {
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t OUTLINED_FUNCTION_33()
{

  return sub_223C29FE0();
}

uint64_t sub_223C2DE04(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223C351E8;

  return v7(a1);
}

uint64_t OUTLINED_FUNCTION_29_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 16) = v2;
  *(a1 - 8) = v1;
  return v3 + 16;
}

uint64_t sub_223C2DF44()
{
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v0;
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = sub_223C29FE0();
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  sub_223C2D6B4(*(v15 + 56) + *(v2 + 72) * v16, v12);
  sub_223C2D02C(v12, v14);
  sub_223C2D02C(v14, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return *v8;
    }

    sub_223C2F914(v8, type metadata accessor for EventValue);
    return 0;
  }

  result = *v8;
  if ((*v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_223C2E0D0()
{
  v1 = v0;
  if (*(*(v0 + 32) + 320) != 1)
  {
    goto LABEL_18;
  }

  v2 = *(v0 + 25);
  v245 = *(v0 + 272);
  v3 = Event.category.getter();
  v4 = *(v0 + 32);
  if ((v5 & 1) == 0)
  {
    v6 = v3;
    v7 = *(v4 + 160);
    if (*(v7 + 16))
    {
      if ((sub_223C3C4E0(v3, v7) & 1) == 0)
      {
        if (qword_280AEBEE0 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v14 = sub_223C481B8();
        __swift_project_value_buffer(v14, qword_280AEC380);
        v10 = sub_223C48198();
        v11 = sub_223C48498();
        if (!os_log_type_enabled(v10, v11))
        {
          goto LABEL_17;
        }

        v12 = OUTLINED_FUNCTION_52();
        *v12 = 134349056;
        *(v12 + 4) = v6;
        v13 = "dropping event with category %{public}ld due to allowlist";
        goto LABEL_16;
      }

      v4 = *(v0 + 32);
    }

    v8 = *(v4 + 168);
    if (*(v8 + 16))
    {
      if (sub_223C3C4E0(v6, v8))
      {
        if (qword_280AEBEE0 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v9 = sub_223C481B8();
        __swift_project_value_buffer(v9, qword_280AEC380);
        v10 = sub_223C48198();
        v11 = sub_223C48498();
        if (!os_log_type_enabled(v10, v11))
        {
          goto LABEL_17;
        }

        v12 = OUTLINED_FUNCTION_52();
        *v12 = 134349056;
        *(v12 + 4) = v6;
        v13 = "dropping event with category %{public}ld due to denylist";
LABEL_16:
        _os_log_impl(&dword_223C26000, v10, v11, v13, v12, 0xCu);
        OUTLINED_FUNCTION_36();
LABEL_17:

LABEL_18:
        v16 = *(v0 + 256);
        v15 = *(v0 + 264);
        v18 = *(v0 + 224);
        v17 = *(v0 + 232);
        v19 = *(v0 + 216);
        v21 = *(v0 + 184);
        v20 = *(v0 + 192);
        v22 = *(v0 + 168);
        v23 = *(v0 + 176);
        v24 = *(v0 + 160);
        v228 = *(v0 + 152);
        v229 = *(v0 + 144);
        v230 = *(v0 + 136);
        v231 = *(v0 + 128);
        v232 = *(v0 + 120);
        v233 = *(v0 + 112);
        v234 = *(v0 + 104);
        v235 = *(v0 + 96);
        v236 = *(v0 + 88);
        v237 = *(v0 + 80);
        v238 = *(v0 + 72);
        v240 = *(v0 + 64);
        v242 = *(v0 + 56);
        v243 = *(v0 + 48);

        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_32();

        __asm { BRAA            X1, X16 }
      }

      v4 = *(v0 + 32);
    }
  }

  v27 = *(v0 + 272);
  v244 = v2;
  if (*(v4 + 200) != 1)
  {

    goto LABEL_60;
  }

  v28 = qword_280AEC160;

  if (v28 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    OUTLINED_FUNCTION_6_0();
    if (byte_280AEC398)
    {
      v30 = v1[31];
      v29 = v1[32];
      v31 = v1[30];
      v32 = v1[27];
      v33 = v1[25];
      v35 = v1[14];
      v34 = v1[15];
      v36 = v1[4];
      sub_223C48118();
      sub_223C2DC14(v32);
      (*(v30 + 8))(v29, v31);
      sub_223C2DC14(v34);
      OUTLINED_FUNCTION_11_0();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
      sub_223C2C4D4(v34, v35, &qword_27D0B9950, &qword_223C4A5D0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v33);
      v41 = v1[34];
      if (EnumTagSinglePayload == 1)
      {
        sub_223C2CF0C(v1[14], &qword_27D0B9950, &qword_223C4A5D0);
        v42 = OUTLINED_FUNCTION_33();
        v43 = v1[34];
        if (v44)
        {
          v45 = v42;
          v46 = v1[25];
          v47 = v1[26];
          v48 = v1[13];
          v49 = v1[34];
          swift_isUniquelyReferenced_nonNull_native();
          v245 = v43;
          v50 = v43[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_38();
          sub_223C485F8();
          OUTLINED_FUNCTION_37();
          v52 = *(v51 + 16 * v45 + 8);

          OUTLINED_FUNCTION_45();
          sub_223C2D02C(v53 + v54 * v45, v48);
          OUTLINED_FUNCTION_51();
        }

        OUTLINED_FUNCTION_44();
        v81 = v1[13];
        OUTLINED_FUNCTION_35(v82, v83, v84, v85);
        sub_223C2CF0C(v81, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v1[14], v1[28]);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_22_0();
      }

      v86 = v1[27];
      v87 = v1[25];
      v89 = v1[11];
      v88 = v1[12];
      sub_223C2CF0C(v1[15], &qword_27D0B9950, &qword_223C4A5D0);
      sub_223C2D6B4(v86, v88);
      OUTLINED_FUNCTION_2_1();
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
      v94 = OUTLINED_FUNCTION_15_0();
      sub_223C2C4D4(v94, v95, v96, &qword_223C4A5D0);
      OUTLINED_FUNCTION_13_0(v89);
      if (v97)
      {
        sub_223C2CF0C(v1[11], &qword_27D0B9950, &qword_223C4A5D0);
        v98 = OUTLINED_FUNCTION_24_0();
        if (v99)
        {
          v100 = v98;
          v101 = v1[25];
          v102 = v1[26];
          v103 = v1[10];
          swift_isUniquelyReferenced_nonNull_native();
          v245 = v86;
          v104 = *(v86 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_5_0();
          sub_223C485F8();
          OUTLINED_FUNCTION_37();
          v106 = *(v105 + 16 * v100 + 8);

          OUTLINED_FUNCTION_45();
          sub_223C2D02C(v107 + v108 * v100, v103);
          OUTLINED_FUNCTION_51();
        }

        OUTLINED_FUNCTION_44();
        v136 = v1[10];
        OUTLINED_FUNCTION_35(v137, v138, v139, v140);
        sub_223C2CF0C(v136, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v1[11], v1[28]);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_18_0();
      }

      v141 = v1[27];
      v142 = v1[25];
      v144 = v1[8];
      v143 = v1[9];
      v27 = &qword_27D0B9950;
      sub_223C2CF0C(v1[12], &qword_27D0B9950, &qword_223C4A5D0);
      sub_223C2D6B4(v141, v143);
      OUTLINED_FUNCTION_2_1();
      __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_13_0(v144);
      if (v97)
      {
        sub_223C2CF0C(v1[8], &qword_27D0B9950, &qword_223C4A5D0);
        v149 = OUTLINED_FUNCTION_28_0();
        if (v151)
        {
          v153 = v1[25];
          v152 = v1[26];
          v154 = v1[7];
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_5_0();
          sub_223C485F8();
          OUTLINED_FUNCTION_48();
          OUTLINED_FUNCTION_47();
          v149 = sub_223C48618();
          v155 = 0;
        }

        else
        {
          v155 = 1;
        }

        v176 = v1[7];
        OUTLINED_FUNCTION_35(v149, v155, v150, v1[25]);
        sub_223C2CF0C(v176, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v1[8], v1[28]);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_23_0();
        v27 = v245;
      }

      v177 = v1[27];
      sub_223C2CF0C(v1[9], &qword_27D0B9950, &qword_223C4A5D0);
      OUTLINED_FUNCTION_10_0();
      sub_223C2F914(v177, v178);
    }

    else
    {
      v55 = v1[32];
      v56 = v1[33];
      v58 = v1[30];
      v57 = v1[31];
      v239 = v1[29];
      v59 = v1[24];
      v60 = v1[25];
      v61 = v1[23];
      v62 = v1[4];
      sub_223C48118();
      sub_223C480E8();
      v241 = *(v57 + 8);
      v241(v55, v58);
      sub_223C48128();
      sub_223C2DC14(v239);
      sub_223C2DC14(v59);
      OUTLINED_FUNCTION_11_0();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v60);
      sub_223C2C4D4(v59, v61, &qword_27D0B9950, &qword_223C4A5D0);
      v66 = __swift_getEnumTagSinglePayload(v61, 1, v60);
      v67 = v1[34];
      if (v66 == 1)
      {
        sub_223C2CF0C(v1[23], &qword_27D0B9950, &qword_223C4A5D0);
        v68 = OUTLINED_FUNCTION_33();
        v69 = v1[34];
        if (v70)
        {
          v71 = v68;
          v72 = v1[25];
          v73 = v1[26];
          v74 = v1[22];
          v75 = v1[34];
          swift_isUniquelyReferenced_nonNull_native();
          v245 = v69;
          v76 = v69[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_38();
          sub_223C485F8();
          OUTLINED_FUNCTION_37();
          v78 = *(v77 + 16 * v71 + 8);

          OUTLINED_FUNCTION_45();
          sub_223C2D02C(v79 + v80 * v71, v74);
          OUTLINED_FUNCTION_51();
        }

        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_44();
        v109 = v1[22];
        OUTLINED_FUNCTION_35(v110, v111, v112, v113);
        sub_223C2CF0C(v109, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v1[23], v1[28]);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_6_0();
      }

      v114 = v1[29];
      v115 = v1[25];
      v117 = v1[20];
      v116 = v1[21];
      sub_223C2CF0C(v1[24], &qword_27D0B9950, &qword_223C4A5D0);
      sub_223C2D6B4(v114, v116);
      OUTLINED_FUNCTION_2_1();
      __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
      v122 = OUTLINED_FUNCTION_15_0();
      sub_223C2C4D4(v122, v123, v124, &qword_223C4A5D0);
      OUTLINED_FUNCTION_13_0(v117);
      if (v97)
      {
        sub_223C2CF0C(v1[20], &qword_27D0B9950, &qword_223C4A5D0);
        v125 = OUTLINED_FUNCTION_24_0();
        if (v126)
        {
          v127 = v125;
          v128 = v1[25];
          v129 = v1[26];
          v130 = v1[19];
          swift_isUniquelyReferenced_nonNull_native();
          v245 = v114;
          v131 = *(v114 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_6_0();
          sub_223C485F8();
          OUTLINED_FUNCTION_37();
          v133 = *(v132 + 16 * v127 + 8);

          OUTLINED_FUNCTION_45();
          sub_223C2D02C(v134 + v135 * v127, v130);
          OUTLINED_FUNCTION_51();
        }

        OUTLINED_FUNCTION_44();
        v156 = v1[19];
        OUTLINED_FUNCTION_35(v157, v158, v159, v160);
        sub_223C2CF0C(v156, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v1[20], v1[28]);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_18_0();
      }

      v161 = v1[29];
      v162 = v1[25];
      v164 = v1[17];
      v163 = v1[18];
      v27 = &qword_27D0B9950;
      sub_223C2CF0C(v1[21], &qword_27D0B9950, &qword_223C4A5D0);
      sub_223C2D6B4(v161, v163);
      OUTLINED_FUNCTION_2_1();
      __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_13_0(v164);
      if (v97)
      {
        sub_223C2CF0C(v1[17], &qword_27D0B9950, &qword_223C4A5D0);
        v169 = OUTLINED_FUNCTION_28_0();
        if (v171)
        {
          v173 = v1[25];
          v172 = v1[26];
          v174 = v1[16];
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_5_0();
          sub_223C485F8();
          OUTLINED_FUNCTION_48();
          OUTLINED_FUNCTION_47();
          v169 = sub_223C48618();
          v175 = 0;
        }

        else
        {
          v175 = 1;
        }

        v179 = v1[16];
        OUTLINED_FUNCTION_35(v169, v175, v170, v1[25]);
        sub_223C2CF0C(v179, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v1[17], v1[28]);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_23_0();
        v27 = v245;
      }

      v180 = v1[33];
      v182 = v1[29];
      v181 = v1[30];
      sub_223C2CF0C(v1[18], &qword_27D0B9950, &qword_223C4A5D0);
      OUTLINED_FUNCTION_10_0();
      sub_223C2F914(v182, v183);
      v241(v180, v181);
    }

LABEL_60:
    v184 = v1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9A10, &qword_223C4A948);
    v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A18, &qword_223C4A950);
    OUTLINED_FUNCTION_42(v185);
    v187 = *(v186 + 72);
    v189 = (*(v188 + 80) + 32) & ~*(v188 + 80);
    v190 = swift_allocObject();
    *(v190 + 16) = xmmword_223C4A8F0;
    v191 = (v190 + v189);
    v192 = *(v185 + 48);
    v193 = MessageKeys.payload.unsafeMutableAddressor();
    v195 = *v193;
    v194 = v193[1];
    *v191 = v195;
    v191[1] = v194;
    v245 = v27;

    sub_223C2F96C();
    *(v191 + v192) = v196;
    type metadata accessor for XPCObject();
    swift_storeEnumTagMultiPayload();
    v197 = (v191 + v187);
    v198 = MessageKeys.sessionID.unsafeMutableAddressor();
    v199 = v198[1];
    *v197 = *v198;
    v197[1] = v199;
    v200 = *(v184 + 184);
    if (!v200)
    {
      __break(1u);
      return MEMORY[0x282200430]();
    }

    v201 = v1[4];
    v202 = (v197 + *(v185 + 48));
    *v202 = *(v201 + 176);
    v202[1] = v200;
    swift_storeEnumTagMultiPayload();
    v203 = (v191 + 2 * v187);
    v204 = *(v185 + 48);

    v205 = MessageKeys.realtime.unsafeMutableAddressor();
    v207 = *v205;
    v206 = v205[1];
    *v203 = v207;
    v203[1] = v206;

    *(v203 + v204) = v244;
    swift_storeEnumTagMultiPayload();
    v1[35] = RTCXPCDictionary.init(dictionaryLiteral:)(v190);
    v208 = *(v201 + 344);
    v209 = __OFADD__(v208, 1);
    v210 = v208 + 1;
    if (!v209)
    {
      break;
    }

    __break(1u);
LABEL_70:
    swift_once();
  }

  *(v201 + 344) = v210;
  v211 = v1[4];
  v212 = *(v211 + 312);
  v1[36] = v212;
  if (!v212)
  {
    v216 = v1[35];
    v218 = v1[5];
    v217 = v1[6];
    v219 = sub_223C48418();
    __swift_storeEnumTagSinglePayload(v217, 1, 1, v219);
    v220 = sub_223C30968();
    v221 = swift_allocObject();
    v221[2] = v211;
    v221[3] = v220;
    v221[4] = v211;
    v221[5] = v216;
    v221[6] = v218;
    swift_retain_n();
    swift_unknownObjectRetain();
    v222 = OUTLINED_FUNCTION_7_0();
    v1[38] = v222;
    v223 = *(v211 + 312);
    *(v211 + 312) = v222;

    v224 = *(MEMORY[0x277D857C8] + 4);
    v225 = swift_task_alloc();
    v1[39] = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A00, &unk_223C4A8C0);
    *v225 = v1;
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_32();

    return MEMORY[0x282200430]();
  }

  v213 = *(MEMORY[0x277D857D0] + 4);

  v214 = swift_task_alloc();
  v1[37] = v214;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A00, &unk_223C4A8C0);
  *v214 = v1;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_32();

  return MEMORY[0x282200440]();
}

uint64_t sub_223C2F028()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223C2F084()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_20_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_3_1()
{
  v1 = v0[143];
  v2 = v0[140];
  v3 = v0[139];
  v4 = v0[138];
  v5 = v0[137];
  v6 = v0[136];
}

uint64_t sub_223C2F168()
{
  v3 = v1;
  v4 = sub_223C48188();
  OUTLINED_FUNCTION_26(v4);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_42_0();
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + v11);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_223C349AC;
  OUTLINED_FUNCTION_2_2();

  return sub_223C2F540(v14, v15, v16, v17, v2, v9, v10, v18);
}

uint64_t sub_223C2F298()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  v6 = type metadata accessor for EventValue();
  *(v1 + 200) = v6;
  OUTLINED_FUNCTION_26(v6);
  *(v1 + 208) = v7;
  v9 = *(v8 + 64) + 15;
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  v10 = sub_223C48138();
  *(v1 + 240) = v10;
  OUTLINED_FUNCTION_26(v10);
  *(v1 + 248) = v11;
  v13 = *(v12 + 64) + 15;
  *(v1 + 256) = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *v3;
  *(v1 + 264) = v14;
  *(v1 + 272) = v15;
  *(v1 + 25) = *(v3 + 8);

  return MEMORY[0x2822009F8](sub_223C2E0D0, v0, 0);
}

uint64_t sub_223C2F540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a8;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  v9 = swift_task_alloc();
  *(v8 + 88) = v9;
  *v9 = v8;
  v9[1] = sub_223C350E4;

  return sub_223C2F298();
}

uint64_t OUTLINED_FUNCTION_40_0()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return result;
}

uint64_t sub_223C2F610()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_22_1();
  if (__OFADD__(v6, v7))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
  if ((OUTLINED_FUNCTION_59() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_223C29FE0();
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_223C486C8();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = v13[7];
    v15 = *(*(type metadata accessor for EventValue() - 8) + 72);
    OUTLINED_FUNCTION_63();

    return sub_223C36BBC(v16, v17);
  }

  else
  {
    sub_223C2F7C0(v8, v2, v1, v0, v13);
    OUTLINED_FUNCTION_63();
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_once();
}

uint64_t sub_223C2F7C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for EventValue();
  result = sub_223C2D02C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FCC68](v5 - 88, a2, a3, v3, v4);
}

void OUTLINED_FUNCTION_19_1(uint64_t a1)
{
  *(a1 + 16) = sub_223C45688;
  *(a1 + 24) = v1;

  os_unfair_lock_lock(v2 + 4);
}

uint64_t sub_223C2F914(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_223C2F96C()
{
  OUTLINED_FUNCTION_24();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v4);
  v62 = &v58 - v5;
  v6 = type metadata accessor for EventValue();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_13();
  v64 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99D8, &unk_223C4A890);
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v63 = &v58 - v18;
  v19 = *v0;

  v65 = RTCXPCDictionary.init()();
  v21 = v19 + 64;
  v20 = *(v19 + 64);
  v60 = v19;
  OUTLINED_FUNCTION_15();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  v58 = v27;
  swift_unknownObjectRetain();
  v28 = 0;
  v61 = v21;
  if (v24)
  {
    while (1)
    {
      v29 = v28;
      v30 = v63;
LABEL_8:
      v31 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v32 = v31 | (v29 << 6);
      v33 = (*(v60 + 48) + 16 * v32);
      v35 = *v33;
      v34 = v33[1];
      v36 = v64;
      sub_223C2D6B4(*(v60 + 56) + *(v59 + 72) * v32, v64);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
      v38 = *(v37 + 48);
      *v16 = v35;
      v16[1] = v34;
      sub_223C2D02C(v36, v16 + v38);
      v39 = OUTLINED_FUNCTION_8();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);

LABEL_9:
      v42 = OUTLINED_FUNCTION_28();
      sub_223C3140C(v42, v43);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
      if (__swift_getEnumTagSinglePayload(v30, 1, v44) == 1)
      {
        break;
      }

      v46 = *v30;
      v45 = v30[1];
      v47 = v30 + *(v44 + 48);
      v48 = v16;
      v49 = v64;
      sub_223C2D02C(v47, v64);
      v50 = v62;
      sub_223C3147C();
      v51 = type metadata accessor for XPCObject();
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
      RTCXPCDictionary.subscript.setter(v50);
      OUTLINED_FUNCTION_2_0();
      v52 = v49;
      v16 = v48;
      sub_223C2F914(v52, v53);
      v21 = v61;
      if (!v24)
      {
        goto LABEL_3;
      }
    }

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_23();
  }

  else
  {
LABEL_3:
    v30 = v63;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
        OUTLINED_FUNCTION_26_0();
        __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
        v24 = 0;
        goto LABEL_9;
      }

      v24 = *(v21 + 8 * v29);
      ++v28;
      if (v24)
      {
        v28 = v29;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_11()
{

  return MEMORY[0x2821FDEA0](v2, v0, v1);
}

uint64_t type metadata accessor for XPCObject()
{
  result = qword_280AEC190;
  if (!qword_280AEC190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t XPCObject.obj.getter()
{
  v1 = v0;
  v40 = *MEMORY[0x277D85DE8];
  v2 = sub_223C48188();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = type metadata accessor for XPCObject();
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13();
  v17 = (v16 - v15);
  v18 = OUTLINED_FUNCTION_20();
  sub_223C304C4(v18, v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v20 = xpc_BOOL_create(*v17);
      goto LABEL_13;
    case 3u:
      v20 = xpc_int64_create(*v17);
      goto LABEL_13;
    case 4u:
      v20 = xpc_uint64_create(*v17);
      goto LABEL_13;
    case 5u:
      v20 = xpc_double_create(*v17);
      goto LABEL_13;
    case 6u:
      v20 = xpc_date_create(*v17);
      goto LABEL_13;
    case 7u:
      v29 = *v17;
      v28 = v17[1];
      switch(v28 >> 62)
      {
        case 1uLL:
          v37 = v29 >> 32;
          if (v29 >> 32 < v29)
          {
            __break(1u);
          }

          v36 = v29;
          goto LABEL_20;
        case 2uLL:
          v36 = *(v29 + 16);
          v37 = *(v29 + 24);
LABEL_20:
          sub_223C461C8(v36, v37);
          goto LABEL_21;
        case 3uLL:
          memset(uuid, 0, 14);
          v30 = 0;
          goto LABEL_17;
        default:
          *uuid = *v17;
          *&uuid[8] = v28;
          uuid[10] = BYTE2(v28);
          uuid[11] = BYTE3(v28);
          uuid[12] = BYTE4(v28);
          v30 = BYTE6(v28);
          uuid[13] = BYTE5(v28);
LABEL_17:
          xpc_data_create(uuid, v30);
LABEL_21:
          v38 = OUTLINED_FUNCTION_9_2();
          sub_223C46250(v38, v28);
          break;
      }

      break;
    case 8u:
      v31 = *v17;
      v32 = v17[1];
      v33 = sub_223C48348();

      xpc_string_create((v33 + 32));
      OUTLINED_FUNCTION_9_2();

      break;
    case 9u:
      (*(v5 + 32))(v10, v17, v2);
      *uuid = sub_223C48168();
      *&uuid[8] = v21;
      uuid[10] = v22;
      uuid[11] = v23;
      uuid[12] = v24;
      uuid[13] = v25;
      uuid[14] = v26;
      uuid[15] = v27;
      v1 = xpc_uuid_create(uuid);
      (*(v5 + 8))(v10, v2);
      break;
    case 0xDu:
      v20 = xpc_null_create();
LABEL_13:
      v1 = v20;
      break;
    default:
      v1 = *v17;
      break;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v1;
}

xpc_object_t RTCXPCDictionary.init(dictionaryLiteral:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v53 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v56 = v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A18, &qword_223C4A950);
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v52 = v16 - v17;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (v46 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (v46 - v23);
  MEMORY[0x28223BE20](v22);
  v51 = (v46 - v25);
  empty = xpc_dictionary_create_empty();
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = v10[12];
    v28 = *(v13 + 80);
    v46[1] = a1;
    v47 = v24;
    v29 = a1 + ((v28 + 32) & ~v28);
    v48 = *(v13 + 72);
    v49 = v27;
    v50 = v21;
    do
    {
      v55 = v26;
      v30 = v51;
      sub_223C2C474(v29, v51, &unk_27D0B9A18, &qword_223C4A950);
      v31 = v30[1];
      v32 = v10[12];
      *v24 = *v30;
      v24[1] = v31;
      sub_223C307C0(v30 + v49, v24 + v32);
      sub_223C2C474(v24, v21, &unk_27D0B9A18, &qword_223C4A950);
      v34 = *v21;
      v33 = v21[1];
      v35 = v52;
      sub_223C2C474(v24, v52, &unk_27D0B9A18, &qword_223C4A950);
      v36 = *(v35 + 8);

      v37 = v56;
      v38 = v10;
      sub_223C307C0(v35 + v10[12], v56);
      type metadata accessor for XPCObject();
      v39 = OUTLINED_FUNCTION_9_2();
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v10);
      v40 = v37;
      v41 = v53;
      sub_223C2C474(v40, v53, &unk_27D0B9C60, qword_223C4B100);
      if (__swift_getEnumTagSinglePayload(v41, 1, v10) == 1)
      {
        sub_223C2CF0C(v41, &unk_27D0B9C60, qword_223C4B100);
        v10 = 0;
      }

      else
      {
        XPCObject.obj.getter();
        v42 = OUTLINED_FUNCTION_9_2();
        sub_223C3058C(v42);
      }

      v43 = v38[12];
      v44 = sub_223C48348();

      xpc_dictionary_set_value(empty, (v44 + 32), v10);
      v10 = v38;
      swift_unknownObjectRelease();
      sub_223C2CF0C(v56, &unk_27D0B9C60, qword_223C4B100);
      v24 = v47;
      sub_223C2CF0C(v47, &unk_27D0B9A18, &qword_223C4A950);

      v21 = v50;
      sub_223C3058C(v50 + v43);
      v29 += v48;
      v26 = v55 - 1;
    }

    while (v55 != 1);
  }

  return empty;
}

uint64_t sub_223C304C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_dynamicCast();
}

uint64_t sub_223C3058C(uint64_t a1)
{
  v2 = type metadata accessor for XPCObject();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_22()
{

  return MEMORY[0x2821FE988](v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  *(v1 - 96) = v0;

  return sub_223C2F610();
}

void *XPCMessage.init(ty:payload:)(unsigned __int8 a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = xpc_int64_create(a1);
  XPCObject.init(_:)(v11, v10);
  sub_223C320CC(v10, v8);
  v12 = type metadata accessor for XPCObject();
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_223C30D7C(v8);
    v13 = 0;
  }

  else
  {
    v13 = XPCObject.obj.getter();
    sub_223C3058C(v8);
  }

  v14 = sub_223C48348();
  xpc_dictionary_set_value(a2, (v14 + 32), v13);
  swift_unknownObjectRelease();
  sub_223C30D7C(v10);

  return a2;
}

uint64_t XPCConnection.sendWithReply(_:)(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_223C30854, 0, 0);
}

uint64_t sub_223C307C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_13_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t sub_223C30854()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_223C34658;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000011, 0x8000000223C4A500, sub_223C30DE4, v6, &type metadata for RTCXPCDictionary);
}

unint64_t sub_223C30968()
{
  result = qword_280AEC0D0;
  if (!qword_280AEC0D0)
  {
    type metadata accessor for Session();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEC0D0);
  }

  return result;
}

char *OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(v11 + 16);
  result = &a9 - v9;
  *(v12 - 104) = v10;
  return result;
}

void sub_223C30A24(uint64_t a1, _xpc_connection_s *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C80, &qword_223C4B430);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = sub_223C31158;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_223C310B8;
  aBlock[3] = &block_descriptor_11;
  v16 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(a2, a3, a5, v16);
  _Block_release(v16);
}

uint64_t sub_223C30BE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C80, &qword_223C4B430);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_223C30CA4()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[3];
  v2 = *(v0[2] + 192);
  swift_unknownObjectRetain();
  v0[4] = XPCMessage.init(ty:payload:)(2u, v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_14_0(v3);

  return XPCConnection.sendWithReply(_:)(v4, v5);
}

uint64_t sub_223C30D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_223C30CA4, a4, 0);
}

uint64_t sub_223C30D7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223C30DF4()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock(v1 + 4);
  sub_223C2A5BC(v2, &v5);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v5;

  return v3;
}

uint64_t sub_223C30E70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = *(a1 + 24);
  if (result)
  {
    goto LABEL_4;
  }

  v5 = *(a1 + 16);
  type metadata accessor for XPCConnection();
  swift_allocObject();
  v6 = XPCConnection.init(machService:targetQ:listen:delegate:)(0xD000000000000017, 0x8000000223C4A000, v5, 0, 0, 0);
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;

  v8 = *(a1 + 24);
  if (!v8)
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  *(v8 + 32) = &off_283720B08;
  swift_unknownObjectWeakAssign();
  result = *(a1 + 24);
  if (result)
  {
LABEL_4:
    *a2 = result;
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_223C30FA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 97))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_223C30FFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_223C3106C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_223C310B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_223C31118(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_223C31158(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C80, &qword_223C4B430) - 8) + 80);

  return sub_223C311E0(a1);
}

uint64_t sub_223C311E0(uint64_t a1)
{
  if (MEMORY[0x223DF6570]() == MEMORY[0x277D86480])
  {
    sub_223C46FD4();
    swift_allocError();
    *v3 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C80, &qword_223C4B430);
    return sub_223C483D8();
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C80, &qword_223C4B430);
    return sub_223C483E8();
  }
}

uint64_t sub_223C312C0()
{
  OUTLINED_FUNCTION_19();
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = v2[148];
  v6 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v7 = v6;
  *(v9 + 1192) = v8;
  *(v9 + 1200) = v0;

  v10 = v2[147];
  v11 = v2[146];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_223C3140C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99D8, &unk_223C4A890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_223C3147C()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  v94 = &v87 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99D8, &unk_223C4A890);
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v87 - v16;
  v95 = type metadata accessor for XPCObject();
  v18 = OUTLINED_FUNCTION_3_0(v95);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13();
  v23 = v22 - v21;
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_7();
  v93 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5();
  v30 = v28 - v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v87 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = (&v87 - v35);
  sub_223C2D6B4(v0, &v87 - v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
      *v2 = *v36;
      OUTLINED_FUNCTION_18();
      break;
    case 4u:
      *v2 = *v36;
      OUTLINED_FUNCTION_18();
      break;
    case 5u:
      v75 = sub_223C48188();
      OUTLINED_FUNCTION_3_0(v75);
      (*(v76 + 32))(v2, v36);
      OUTLINED_FUNCTION_18();
      break;
    case 6u:
      v77 = v2;
      v78 = *v36;
      empty = xpc_array_create_empty();
      v80 = *(v78 + 16);
      if (v80)
      {
        v81 = v78 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
        v82 = *(v93 + 72);
        do
        {
          v83 = sub_223C2D6B4(v81, v34);
          sub_223C3147C(v83);
          OUTLINED_FUNCTION_2_0();
          sub_223C2F914(v34, v84);
          v85 = XPCObject.obj.getter();
          sub_223C2F914(v23, type metadata accessor for XPCObject);
          xpc_array_append_value(empty, v85);
          swift_unknownObjectRelease();
          v81 += v82;
          --v80;
        }

        while (v80);
      }

      *v77 = empty;
      break;
    case 7u:
      v91 = v17;
      v92 = v14;
      v89 = v2;
      v38 = *v36;
      v96 = RTCXPCDictionary.init()();
      v40 = v38 + 64;
      v39 = *(v38 + 64);
      v90 = v38;
      OUTLINED_FUNCTION_15();
      v43 = v42 & v41;
      v45 = (v44 + 63) >> 6;
      v88 = v46;
      swift_unknownObjectRetain();
      v47 = 0;
      if (!v43)
      {
        goto LABEL_6;
      }

LABEL_5:
      v48 = v47;
      v49 = v92;
LABEL_11:
      v50 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v51 = v50 | (v48 << 6);
      v52 = (*(v90 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      sub_223C2D6B4(*(v90 + 56) + *(v93 + 72) * v51, v30);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
      v56 = *(v55 + 48);
      *v49 = v54;
      v49[1] = v53;
      sub_223C2D02C(v30, v49 + v56);
      v57 = OUTLINED_FUNCTION_8();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v55);

      while (1)
      {
        v60 = v49;
        v61 = v91;
        sub_223C3140C(v60, v91);
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
        if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
        {
          break;
        }

        v64 = *v61;
        v63 = v61[1];
        v65 = sub_223C2D02C(v61 + *(v62 + 48), v30);
        sub_223C3147C(v65);
        v66 = OUTLINED_FUNCTION_8();
        __swift_storeEnumTagSinglePayload(v66, v67, v68, v95);
        v69 = OUTLINED_FUNCTION_28();
        RTCXPCDictionary.subscript.setter(v69);
        OUTLINED_FUNCTION_2_0();
        sub_223C2F914(v30, v70);
        if (v43)
        {
          goto LABEL_5;
        }

LABEL_6:
        v49 = v92;
        while (1)
        {
          v48 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            __break(1u);
            JUMPOUT(0x223C319C0);
          }

          if (v48 >= v45)
          {
            break;
          }

          v43 = *(v40 + 8 * v48);
          ++v47;
          if (v43)
          {
            v47 = v48;
            goto LABEL_11;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
        OUTLINED_FUNCTION_26_0();
        __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
        v43 = 0;
      }

      v86 = v88;
      swift_unknownObjectRelease();

      *v89 = v86;
      break;
    default:
      v37 = v36[1];
      *v2 = *v36;
      v2[1] = v37;
      OUTLINED_FUNCTION_18();
      break;
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23();
}

uint64_t RTCXPCDictionary.subscript.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  sub_223C2C474(a1, &v14 - v7, &unk_27D0B9C60, qword_223C4B100);
  v10 = type metadata accessor for XPCObject();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_223C2CF0C(v8, &unk_27D0B9C60, qword_223C4B100);
    v11 = 0;
  }

  else
  {
    v11 = XPCObject.obj.getter();
    sub_223C3058C(v8);
  }

  OUTLINED_FUNCTION_20();
  v12 = sub_223C48348();

  xpc_dictionary_set_value(v9, (v12 + 32), v11);
  swift_unknownObjectRelease();
  sub_223C2CF0C(a1, &unk_27D0B9C60, qword_223C4B100);
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, a2, 1, a4);
}

uint64_t sub_223C31B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_223C349AC;

  return sub_223C30D5C(a1, v4, v5, v6, v7);
}

unsigned __int8 *XPCObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_223C48188();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v13 = type metadata accessor for XPCObject();
  v14 = OUTLINED_FUNCTION_3_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v19 = (v17 - v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v53 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  if (a1)
  {
    v26 = swift_unknownObjectRetain();
    v27 = MEMORY[0x223DF6570](v26);
    if (v27 == MEMORY[0x277D864B0])
    {
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_1_3();
    }

    else
    {
      v28 = v27;
      if (v27 == MEMORY[0x277D86450] || v27 == MEMORY[0x277D86478])
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_0_3();
      }

      else if (v27 == MEMORY[0x277D86448])
      {
        value = xpc_BOOL_get_value(a1);
        OUTLINED_FUNCTION_5_2();
        *v25 = value;
        OUTLINED_FUNCTION_1_3();
      }

      else if (v27 == MEMORY[0x277D86498])
      {
        v31 = xpc_int64_get_value(a1);
        OUTLINED_FUNCTION_5_2();
        *v25 = v31;
        OUTLINED_FUNCTION_1_3();
      }

      else if (v27 == MEMORY[0x277D864C8])
      {
        v32 = xpc_uint64_get_value(a1);
        OUTLINED_FUNCTION_5_2();
        *v25 = v32;
        OUTLINED_FUNCTION_1_3();
      }

      else if (v27 == MEMORY[0x277D86470])
      {
        v33 = xpc_double_get_value(a1);
        OUTLINED_FUNCTION_5_2();
        *v25 = v33;
        OUTLINED_FUNCTION_1_3();
      }

      else
      {
        if (v27 != MEMORY[0x277D86460])
        {
          if (v27 == MEMORY[0x277D86458])
          {
            result = xpc_data_get_bytes_ptr(a1);
            if (result)
            {
              v35 = result;
              length = xpc_data_get_length(a1);
              v37 = MEMORY[0x223DF52E0](v35, length);
              v39 = v38;
              OUTLINED_FUNCTION_5_2();
              *v23 = v37;
              v23[1] = v39;
              swift_storeEnumTagMultiPayload();
              v40 = v23;
LABEL_34:
              sub_223C307C0(v40, v25);
              goto LABEL_29;
            }

            __break(1u);
          }

          else
          {
            if (v27 != MEMORY[0x277D864C0])
            {
              if (v27 != MEMORY[0x277D864D0])
              {
                swift_unknownObjectRelease();
                if (v28 != MEMORY[0x277D864B8] && v28 != MEMORY[0x277D86440] && v28 != MEMORY[0x277D86468])
                {
                  swift_unknownObjectRelease();
                  goto LABEL_17;
                }

                OUTLINED_FUNCTION_0_3();
                goto LABEL_28;
              }

              result = xpc_uuid_get_bytes(a1);
              if (result)
              {
                v44 = *(result + 1);
                v45 = result[7];
                v46 = result[6];
                v47 = result[5];
                v48 = result[4];
                v49 = result[3];
                v50 = result[2];
                v51 = result[1];
                v52 = *result;
                sub_223C48158();
                OUTLINED_FUNCTION_5_2();
                (*(v7 + 32))(v25, v12, v4);
                OUTLINED_FUNCTION_1_3();
                goto LABEL_28;
              }

LABEL_40:
              __break(1u);
              return result;
            }

            result = xpc_string_get_string_ptr(a1);
            if (result)
            {
              v41 = sub_223C48378();
              v43 = v42;
              OUTLINED_FUNCTION_5_2();
              *v19 = v41;
              v19[1] = v43;
              swift_storeEnumTagMultiPayload();
              v40 = v19;
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v34 = xpc_date_get_value(a1);
        OUTLINED_FUNCTION_5_2();
        *v25 = v34;
        OUTLINED_FUNCTION_1_3();
      }
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
LABEL_29:
    sub_223C307C0(v25, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
  }

LABEL_17:

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
}

uint64_t sub_223C320CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_223C32180(uint64_t a1)
{
  v17 = *(v1 + 16);
  v15 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v14 = *(v1 + 176);
  v9 = *(v1 + 192);
  v8 = *(v1 + 200);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_1(v10);
  *v11 = v12;
  v11[1] = sub_223C34944;

  return sub_223C3234C(a1, v17, v15, v3, v4, v5, v6, v7);
}

uint64_t sub_223C3234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 320) = v13;
  *(v8 + 328) = v14;
  *(v8 + 304) = v12;
  *(v8 + 288) = a8;
  *(v8 + 296) = v11;
  *(v8 + 272) = a6;
  *(v8 + 280) = a7;
  *(v8 + 256) = a4;
  *(v8 + 264) = a5;
  memcpy((v8 + 16), v11, 0x61uLL);

  return MEMORY[0x2822009F8](sub_223C323DC, 0, 0);
}

uint64_t sub_223C323DC()
{
  OUTLINED_FUNCTION_20_1();
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[32];
  v0[42] = sub_223C324E4();
  v0[43] = v5;
  v6 = type metadata accessor for Session();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  sub_223C2DA7C(v1, (v0 + 15));
  v9 = swift_task_alloc();
  v0[44] = v9;
  *v9 = v0;
  v9[1] = sub_223C34030;
  v10 = v0[35];
  v11 = v0[36];
  v12 = v0[33];
  v13 = v0[34];
  OUTLINED_FUNCTION_41_0();

  return sub_223C329EC();
}

uint64_t type metadata accessor for Session()
{
  result = qword_280AEC1E8;
  if (!qword_280AEC1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223C329EC()
{
  OUTLINED_FUNCTION_31();
  *(v1 + 992) = v0;
  *(v1 + 113) = v2;
  *(v1 + 984) = v3;
  *(v1 + 976) = v4;
  *(v1 + 968) = v5;
  *(v1 + 960) = v6;
  *(v1 + 952) = v7;
  *(v1 + 944) = v8;
  *(v1 + 936) = v9;
  *(v1 + 218) = *v3;
  *(v1 + 322) = *(v3 + 2);
  *(v1 + 220) = *(v3 + 4);
  v10 = *(v3 + 24);
  *(v1 + 1000) = *(v3 + 8);
  *(v1 + 1016) = v10;
  v11 = *(v3 + 56);
  *(v1 + 1032) = *(v3 + 40);
  *(v1 + 1048) = v11;
  *(v1 + 1064) = *(v3 + 72);
  *(v1 + 217) = *(v3 + 80);
  *(v1 + 321) = *(v3 + 81);
  *(v1 + 114) = *(v3 + 82);
  *(v1 + 118) = *(v3 + 86);
  *(v1 + 1072) = *(v3 + 88);
  *(v1 + 324) = *(v3 + 96);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100) - 8) + 64) + 15;
  *(v1 + 1080) = swift_task_alloc();
  *(v1 + 1088) = swift_task_alloc();
  *(v1 + 1096) = swift_task_alloc();
  *(v1 + 1104) = swift_task_alloc();
  *(v1 + 1112) = swift_task_alloc();
  *(v1 + 1120) = swift_task_alloc();
  v13 = sub_223C48138();
  *(v1 + 1128) = v13;
  OUTLINED_FUNCTION_26(v13);
  *(v1 + 1136) = v14;
  v16 = *(v15 + 64) + 15;
  *(v1 + 1144) = swift_task_alloc();
  OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t OUTLINED_FUNCTION_47()
{
  v5 = *(v3 + 56) + *(v1 + 72) * v0;

  return sub_223C2D02C(v5, v2);
}

uint64_t sub_223C32BC8()
{
  v1 = (v0 + 325);
  v2 = *(v0 + 992);
  swift_defaultActor_initialize();
  v2[22] = 0;
  v2[23] = 0;
  if (qword_280AEC1C0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 992);
  v2[24] = sub_223C30DF4();
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 1;
  *(v3 + 312) = 0;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 304) = 0;
  *(v3 + 336) = 0;
  *(v3 + 344) = 0;
  *(v3 + 328) = 0;
  v4 = sub_223C28174();
  *v1 = v4 & 1;
  if (v4)
  {
    v153 = v2;
    v5 = *(v0 + 1144);
    v6 = *(v0 + 1136);
    v7 = *(v0 + 1128);
    v154 = *(v0 + 1016);
    v8 = *(v0 + 992);
    v9 = *(v0 + 113);
    v151 = *(v0 + 984);
    v10 = *(v0 + 968);
    v11 = *(v0 + 944);
    v12 = *(v0 + 936);
    *(v8 + 112) = *(v0 + 952);
    *(v8 + 128) = v10;
    *(v8 + 144) = v12;
    *(v8 + 152) = v11;
    *(v8 + 200) = v9;
    sub_223C48118();
    v13 = OBJC_IVAR____TtC12RTCReporting7Session_baseTime;
    v14 = *(v6 + 32);
    v14(v8 + OBJC_IVAR____TtC12RTCReporting7Session_baseTime, v5, v7);
    (*(v6 + 16))(v5, v8 + v13, v7);
    getTimeIntervalSince1970(Date:)();
    (*(v6 + 8))(v5, v7);
    sub_223C480F8();
    v14(v8 + OBJC_IVAR____TtC12RTCReporting7Session_obfuscatedBaseTime, v5, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9A10, &qword_223C4A948);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A18, &qword_223C4A950);
    OUTLINED_FUNCTION_42(v15);
    v17 = *(v16 + 72);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_223C4A8E0;
    v148 = v20;
    v21 = (v20 + v19);
    v22 = (v21 + *(v15 + 48));
    v23 = MessageKeys.clientName.unsafeMutableAddressor();
    v24 = v23[1];
    *v21 = *v23;
    v21[1] = v24;
    v25 = *(v8 + 120);
    *v22 = *(v8 + 112);
    v22[1] = v25;
    v26 = type metadata accessor for XPCObject();
    *(v0 + 1152) = v26;
    OUTLINED_FUNCTION_34();
    v27 = (v21 + v17);
    v28 = (v21 + v17 + *(v15 + 48));

    v29 = MessageKeys.serviceName.unsafeMutableAddressor();
    v30 = v29[1];
    *v27 = *v29;
    v27[1] = v30;
    v31 = *(v8 + 136);
    *v28 = *(v8 + 128);
    v28[1] = v31;
    OUTLINED_FUNCTION_34();
    v32 = (v21 + 2 * v17);
    v33 = (v32 + *(v15 + 48));

    v34 = MessageKeys.clientType.unsafeMutableAddressor();
    v35 = v34[1];
    *v32 = *v34;
    v32[1] = v35;
    v36 = *(v8 + 152);
    *v33 = *(v8 + 144);
    v33[1] = v36;
    OUTLINED_FUNCTION_34();
    v37 = (v21 + 3 * v17);
    v38 = *(v15 + 48);

    v39 = MessageKeys.legacyClient.unsafeMutableAddressor();
    v40 = v39[1];
    *v37 = *v39;
    v37[1] = v40;
    *(v37 + v38) = v154 != 1;
    v155 = v26;
    swift_storeEnumTagMultiPayload();
    v41 = (v21 + 4 * v17);

    v42 = MessageKeys.realtime.unsafeMutableAddressor();
    v43 = v42[1];
    *v41 = *v42;
    v41[1] = v43;
    v44 = *(v0 + 984);
    if (*(v151 + 24) == 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = *(v44 + 80);
    }

    *(v41 + *(v15 + 48)) = v45 & 1;
    swift_storeEnumTagMultiPayload();

    v65 = RTCXPCDictionary.init(dictionaryLiteral:)(v148);
    *(v0 + 1160) = v65;
    *(v0 + 912) = v65;
    v66 = *(v44 + 24);
    v67 = v153;
    v68 = v0 + 325;
    if (v66 == 1)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v152 = (v0 + 1016);
      v69 = *(v0 + 984);
      *(v0 + 840) = *(v69 + 8);
      *(v0 + 856) = v66;
      if (v66)
      {
        v70 = *(v0 + 1120);
        v71 = *(v0 + 848);
        v145 = *(v0 + 840);
        v146 = *(v0 + 324);
        v144 = *(v0 + 321);
        v149 = *(v0 + 217);
        swift_unknownObjectRetain();
        sub_223C2C4D4(v0 + 840, v0 + 864, &qword_27D0B9AD0, &qword_223C4ABE0);
        v72 = MessageKeys.hierarchyToken.unsafeMutableAddressor();
        v74 = *v72;
        v73 = *(v72 + 1);
        *v70 = v71;
        v70[1] = v66;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_1();
        __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
        sub_223C2C4D4(v0 + 840, v0 + 888, &qword_27D0B9AD0, &qword_223C4ABE0);

        RTCXPCDictionary.subscript.setter(v70);
        v79 = MessageKeys.hierarchyLevel.unsafeMutableAddressor();
        v80 = *v79;
        v81 = *(v79 + 1);

        v82 = v144;
        v68 = v0 + 325;
        sub_223C2CF0C(v0 + 840, &qword_27D0B9AD0, &qword_223C4ABE0);
        *v70 = v145;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_1();
        LOBYTE(v66) = v146;
        __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
        v87 = v149;
        RTCXPCDictionary.subscript.setter(v70);
        v69 = *(v0 + 984);
      }

      else
      {
        v66 = *(v0 + 324);
        v82 = *(v0 + 321);
        v87 = *(v0 + 217);
        swift_unknownObjectRetain();
      }

      v88 = *(v0 + 1072);
      v89 = *(v0 + 1064);
      v90 = (v68 + 675);
      v91 = *(v0 + 220);
      *(v0 + 120) = *(v0 + 218);
      *(v0 + 124) = v91;
      v92 = *v152;
      *(v0 + 128) = *(v68 + 675);
      *(v0 + 144) = v92;
      v147 = (v68 + 707);
      v150 = (v68 + 723);
      v93 = *(v68 + 723);
      *(v0 + 160) = *(v68 + 707);
      *(v0 + 176) = v93;
      *(v0 + 192) = v89;
      *(v0 + 200) = v87 & 1;
      *(v0 + 201) = v82 & 1;
      *(v0 + 208) = v88;
      *(v0 + 216) = v66 & 1;

      sub_223C2C4D4(v69, v0 + 224, &unk_27D0B9A60, &unk_223C4ABD0);
      sub_223C2DEFC(v0 + 120);
      if (v89)
      {
        v94 = *(v0 + 1120);
        v95 = *(v0 + 1056);
        v96 = MessageKeys.samplingUUID.unsafeMutableAddressor();
        v97 = *v96;
        v98 = *(v96 + 1);
        *v94 = v95;
        v94[1] = v89;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_0();
        __swift_storeEnumTagSinglePayload(v99, v100, v101, v155);

        v68 = v0 + 325;
        RTCXPCDictionary.subscript.setter(v94);
      }

      v102 = *(v0 + 324);
      v103 = *(v0 + 1072);
      v104 = *(v0 + 321);
      v105 = *(v0 + 217);
      v106 = *(v0 + 1064);
      v107 = *(v0 + 1056);
      v108 = *(v0 + 1048);
      v109 = *(v0 + 1040);
      v110 = *(v0 + 1032);
      v111 = *(v0 + 1024);
      v112 = *(v0 + 1016);
      v113 = *(v0 + 1008);
      v114 = *(v0 + 1000);
      v115 = *(v0 + 220);
      v116 = *(v0 + 322);
      v117 = *(v0 + 218);
      *(v0 + 432) = v117;
      *(v0 + 436) = v115;
      *(v0 + 440) = v114;
      *(v0 + 448) = v113;
      *(v0 + 456) = v112;
      *(v0 + 464) = v111;
      *(v0 + 472) = v110;
      *(v0 + 480) = v109;
      *(v0 + 488) = v108;
      *(v0 + 496) = v107;
      *(v0 + 504) = v106;
      *(v0 + 512) = v105 & 1;
      *(v0 + 513) = v104 & 1;
      *(v0 + 520) = v103;
      *(v68 + 203) = v102 & 1;
      *(v0 + 328) = v117;
      *(v0 + 330) = v116;
      *(v0 + 332) = v115;
      *(v0 + 336) = v114;
      *(v0 + 344) = v113;
      *(v0 + 352) = v112;
      *(v0 + 360) = v111;
      *(v0 + 368) = v110;
      *(v0 + 376) = v109;
      *(v0 + 384) = v108;
      *(v0 + 392) = v107;
      *(v0 + 400) = v106;
      *(v0 + 408) = v105;
      *(v0 + 409) = v104;
      *(v0 + 410) = *(v0 + 114);
      *(v0 + 414) = *(v0 + 118);
      *(v0 + 416) = v103;
      *(v0 + 424) = v102;
      sub_223C2DA7C(v0 + 328, v0 + 536);
      sub_223C2DEFC(v0 + 432);
      if (v104)
      {
        v118 = *(v0 + 1120);
        v119 = MessageKeys.eager.unsafeMutableAddressor();
        v120 = *v119;
        v121 = *(v119 + 1);
        *v118 = v104 & 1;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_0();
        __swift_storeEnumTagSinglePayload(v122, v123, v124, v155);

        v125 = OUTLINED_FUNCTION_15_0();
        RTCXPCDictionary.subscript.setter(v125);
      }

      v126 = *(v0 + 324);
      v127 = *(v0 + 1072);
      v128 = *(v0 + 321);
      v129 = *(v0 + 217);
      v130 = *(v0 + 1064);
      v131 = *(v0 + 220);
      *(v0 + 640) = *(v0 + 218);
      *(v0 + 644) = v131;
      *(v68 + 323) = *v90;
      *(v68 + 339) = *v152;
      *(v68 + 355) = *v147;
      *(v68 + 371) = *v150;
      *(v0 + 712) = v130;
      *(v0 + 720) = v129 & 1;
      *(v0 + 721) = v128 & 1;
      *(v0 + 728) = v127;
      *(v68 + 411) = v126 & 1;
      sub_223C2DEFC(v0 + 640);
      if ((v126 & 1) == 0)
      {
        v132 = *(v0 + 1120);
        v133 = *(v0 + 1072);
        v134 = MessageKeys.overrideSampling.unsafeMutableAddressor();
        v135 = *v134;
        v136 = *(v134 + 1);
        *v132 = v133;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_0();
        __swift_storeEnumTagSinglePayload(v137, v138, v139, v155);

        v140 = OUTLINED_FUNCTION_15_0();
        RTCXPCDictionary.subscript.setter(v140);
      }

      v67 = v153;
    }

    *(v0 + 1168) = v67[24];

    *(v0 + 1176) = XPCMessage.init(ty:payload:)(0, v65);
    v141 = swift_task_alloc();
    *(v0 + 1184) = v141;
    *v141 = v0;
    v142 = OUTLINED_FUNCTION_14_0(v141);

    return XPCConnection.sendWithReply(_:)(v142, v143);
  }

  else
  {
    v46 = *(v0 + 976);
    v47 = *(v0 + 960);
    v48 = *(v0 + 944);
    sub_223C2CF0C(*(v0 + 984), &unk_27D0B9A60, &unk_223C4ABD0);

    sub_223C3D450();
    swift_allocError();
    *v49 = xmmword_223C4A8D0;
    swift_willThrow();
    v50 = *v1;
    v51 = *(v0 + 992);
    v52 = v51[23];

    v53 = v51[24];

    memcpy((v0 + 16), v51 + 26, 0x61uLL);
    sub_223C2CF0C(v0 + 16, &unk_27D0B9A60, &unk_223C4ABD0);
    v54 = v51[39];

    v55 = v51[42];
    sub_223C28024(v51[41]);
    if (v50 == 1)
    {
      OUTLINED_FUNCTION_27_0();
      v56 = *(v50 + 8);
      v57 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_baseTime);
      v56(v57);
      v58 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_obfuscatedBaseTime);
      v56(v58);
    }

    OUTLINED_FUNCTION_3_1();
    v59 = *(v0 + 1080);
    v60 = *(v0 + 992);
    type metadata accessor for Session();
    swift_defaultActor_destroy();
    v61 = *(*v60 + 48);
    v62 = *(*v60 + 52);
    swift_deallocPartialClassInstance();

    OUTLINED_FUNCTION_20_0();

    return v63();
  }
}

uint64_t sub_223C33670()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1112);
  RTCXPCDictionary.subscript.getter(*(v0 + 1192), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_223C2CF0C(*(v0 + 1112), &unk_27D0B9C60, qword_223C4B100);
  }

  else
  {
    v3 = *(v0 + 1152);
    v4 = *(v0 + 1112);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v5 = *(v0 + 1192);
      v6 = *(v0 + 1160);
      v8 = *v4;
      v7 = v4[1];
      sub_223C3D450();
      swift_allocError();
      *v9 = v8;
      v9[1] = v7;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_0_1();
    sub_223C2F914(v4, v10);
  }

  v11 = *(v0 + 1152);
  v12 = *(v0 + 1104);
  RTCXPCDictionary.subscript.getter(*(v0 + 1192), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
  {
    sub_223C2CF0C(*(v0 + 1104), &unk_27D0B9C60, qword_223C4B100);
LABEL_12:
    v26 = *(v0 + 1192);
    v27 = *(v0 + 1160);
    sub_223C3D450();
    swift_allocError();
    *v28 = 0;
    v28[1] = 0;
LABEL_13:
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v29 = *(v0 + 992);
    v30 = v29[15];

    v31 = v29[17];

    v32 = v29[19];

    v33 = *(v0 + 325);
    v34 = *(v0 + 992);
    v35 = v34[23];

    v36 = v34[24];

    memcpy((v0 + 16), v34 + 26, 0x61uLL);
    sub_223C2CF0C(v0 + 16, &unk_27D0B9A60, &unk_223C4ABD0);
    v37 = v34[39];

    v38 = v34[42];
    sub_223C28024(v34[41]);
    if (v33 == 1)
    {
      OUTLINED_FUNCTION_27_0();
      v39 = *(v33 + 8);
      v40 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_baseTime);
      v39(v40);
      v41 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_obfuscatedBaseTime);
      v39(v41);
    }

    OUTLINED_FUNCTION_3_1();
    v42 = *(v0 + 1080);
    v43 = *(v0 + 992);
    type metadata accessor for Session();
    swift_defaultActor_destroy();
    v44 = *(*v43 + 48);
    v45 = *(*v43 + 52);
    swift_deallocPartialClassInstance();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_46();

    __asm { BRAA            X1, X16 }
  }

  v13 = *(v0 + 1152);
  v14 = *(v0 + 1104);
  OUTLINED_FUNCTION_30_0();
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    OUTLINED_FUNCTION_0_1();
    sub_223C2F914(v14, v25);
    goto LABEL_12;
  }

  v15 = *(v0 + 1192);
  v16 = *(v0 + 1096);
  v17 = *(v0 + 992);
  v18 = v14[1];
  v19 = *(v17 + 184);
  *(v17 + 176) = *v14;
  *(v17 + 184) = v18;

  v20 = MessageKeys.allowed.unsafeMutableAddressor();
  v21 = *v20;
  v22 = *(v20 + 1);

  RTCXPCDictionary.subscript.getter(v15, v16);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v13);
  v24 = MEMORY[0x277D84FA0];
  if (EnumTagSinglePayload == 1)
  {
    sub_223C2CF0C(*(v0 + 1096), &unk_27D0B9C60, qword_223C4B100);
LABEL_22:
    v59 = 0;
    v52 = 0;
    *(*(v0 + 992) + 160) = v24;
    goto LABEL_23;
  }

  v48 = *(v0 + 1152);
  v49 = *(v0 + 1096);
  if (swift_getEnumCaseMultiPayload() != 11)
  {
    OUTLINED_FUNCTION_0_1();
    sub_223C2F914(v49, v60);
    goto LABEL_22;
  }

  v50 = *v49;
  count = xpc_array_get_count(*v49);
  *(v0 + 928) = MEMORY[0x223DF5670](count, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v52 = swift_allocObject();
  *(v52 + 16) = v0 + 928;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_223C3DD2C;
  *(v53 + 24) = v52;
  *(v0 + 824) = sub_223C3DD28;
  *(v0 + 832) = v53;
  *(v0 + 792) = MEMORY[0x277D85DD0];
  *(v0 + 800) = 1107296256;
  *(v0 + 808) = sub_223C3C2E4;
  *(v0 + 816) = &block_descriptor_55;
  v54 = _Block_copy((v0 + 792));
  v55 = *(v0 + 832);

  xpc_array_apply(v50, v54);
  swift_unknownObjectRelease();
  _Block_release(v54);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  if (v50)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(*(v0 + 992) + 160) = *(v0 + 928);
  v59 = sub_223C3DD2C;
LABEL_23:
  *(v0 + 1216) = v52;
  *(v0 + 1208) = v59;
  v61 = *(v0 + 1192);
  v62 = *(v0 + 1152);
  v63 = *(v0 + 1088);
  v64 = MessageKeys.denied.unsafeMutableAddressor();
  v65 = *v64;
  v66 = *(v64 + 1);

  RTCXPCDictionary.subscript.getter(v61, v63);

  OUTLINED_FUNCTION_13_0(v63);
  if (v67)
  {
    sub_223C2CF0C(*(v0 + 1088), &unk_27D0B9C60, qword_223C4B100);
  }

  else
  {
    v68 = *(v0 + 1152);
    v69 = *(v0 + 1088);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      v71 = *v69;
      v72 = xpc_array_get_count(*v69);
      *(v0 + 920) = MEMORY[0x223DF5670](v72, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
      v73 = swift_allocObject();
      *(v73 + 16) = v0 + 920;
      v74 = swift_allocObject();
      *(v74 + 16) = sub_223C3D4A4;
      *(v74 + 24) = v73;
      *(v0 + 776) = sub_223C3D4AC;
      *(v0 + 784) = v74;
      *(v0 + 744) = MEMORY[0x277D85DD0];
      *(v0 + 752) = 1107296256;
      *(v0 + 760) = sub_223C3C2E4;
      *(v0 + 768) = &block_descriptor;
      v75 = _Block_copy((v0 + 744));
      v76 = *(v0 + 784);

      xpc_array_apply(v71, v75);
      swift_unknownObjectRelease();
      _Block_release(v75);
      LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

      if ((v71 & 1) == 0)
      {
        *(*(v0 + 992) + 168) = *(v0 + 920);
        v77 = sub_223C3D4A4;
        goto LABEL_31;
      }

LABEL_38:
      __break(1u);
      return MEMORY[0x2822009F8](v56, v57, v58);
    }

    OUTLINED_FUNCTION_0_1();
    sub_223C2F914(v69, v78);
  }

  v77 = 0;
  v73 = 0;
  *(*(v0 + 992) + 168) = v24;
LABEL_31:
  *(v0 + 1232) = v73;
  *(v0 + 1224) = v77;
  v79 = *(v0 + 1152);
  v80 = *(v0 + 1080);
  v81 = *(v0 + 992);
  RTCXPCDictionary.subscript.getter(*(v0 + 1192), v80);
  LODWORD(v79) = __swift_getEnumTagSinglePayload(v80, 1, v79);
  sub_223C2CF0C(v80, &unk_27D0B9C60, qword_223C4B100);
  *(v81 + 320) = v79 == 1;
  OUTLINED_FUNCTION_46();

  return MEMORY[0x2822009F8](v56, v57, v58);
}

unsigned __int8 *RTCXPCDictionary.subscript.getter@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_223C48348();
  v5 = xpc_dictionary_get_value(a1, (v4 + 32));

  return XPCObject.init(_:)(v5, a2);
}

uint64_t OUTLINED_FUNCTION_48()
{
  v3 = *(*(*(v1 - 96) + 48) + 16 * v0 + 8);
}

void sub_223C33F28()
{
  v1 = v0[154];
  v2 = v0[153];
  v3 = v0[152];
  v4 = v0[151];
  v5 = v0[149];
  v6 = v0[145];
  v7 = v0[143];
  v8 = v0[140];
  v9 = v0[139];
  v10 = v0[138];
  v16 = v0[137];
  v17 = v0[136];
  v18 = v0[135];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_223C28024(v4);
  v11 = OUTLINED_FUNCTION_30_0();
  sub_223C28024(v11);

  v12 = v0[1];
  v13 = v0[124];
  OUTLINED_FUNCTION_46();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_223C34030()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 360) = v3;
  *(v8 + 368) = v0;

  if (v0)
  {
    v9 = sub_223C3FB1C;
    v10 = 0;
  }

  else
  {
    v9 = sub_223C34140;
    v10 = v3;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_223C34140()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 360);
  *(v0 + 376) = *(v1 + 176);
  *(v0 + 384) = *(v1 + 184);

  *(v0 + 113) = sub_223C341B8();
  v2 = OUTLINED_FUNCTION_35_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_223C341C8()
{
  v1 = *(v0 + 113);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v18 = *(v0 + 336);
  v19 = *(v0 + 376);
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v5 + OBJC_IVAR____RTCReportingS_lock);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v19;
  *(v7 + 40) = v3;
  *(v7 + 48) = v1;
  *(v7 + 56) = v18;
  *(v7 + 72) = v4;
  v8 = swift_task_alloc();
  *(v8 + 16) = sub_223C34628;
  *(v8 + 24) = v7;
  os_unfair_lock_lock(v6 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v6 + 4);

  if (!v2)
  {
    v10 = *(v0 + 384);
    v11 = *(v0 + 344);
    v12 = *(v0 + 312);

    v13 = *(v0 + 360);
    if (v12)
    {
      v15 = *(v0 + 312);
      v14 = *(v0 + 320);

      v15(MEMORY[0x277D84F90]);

      sub_223C28024(v15);
    }

    else
    {
      v16 = *(v0 + 360);
    }

    OUTLINED_FUNCTION_20_0();

    return v17();
  }

  return result;
}

uint64_t sub_223C34348(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = &a1[OBJC_IVAR____RTCReportingS_generatedSessionID];
  v20 = *&a1[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
  *v19 = a2;
  v19[1] = a3;

  v21 = *&a1[OBJC_IVAR____RTCReportingS_session];
  *&a1[OBJC_IVAR____RTCReportingS_session] = a4;

  a1[OBJC_IVAR____RTCReportingS_completelyDisabled] = a5;
  v22 = a6 == 17238 && a7 == 0xE200000000000000;
  if (v22 || ((v23 = sub_223C48678(), a6 == 21580) ? (v24 = a7 == 0xE200000000000000) : (v24 = 0), !v24 ? (v25 = 0) : (v25 = 1), (v23 & 1) != 0 || (v25 & 1) != 0 || (sub_223C48678() & 1) != 0 || (a6 == 0x4D41434B48 ? (v26 = a7 == 0xE500000000000000) : (v26 = 0), v26 || (sub_223C48678() & 1) != 0)))
  {
    v27 = objc_allocWithZone(RTCReportingAVCLegacySupport);

    v28 = [v27 init];
    v29 = *&a1[OBJC_IVAR____RTCReportingS_legacyAVCSupport];
    *&a1[OBJC_IVAR____RTCReportingS_legacyAVCSupport] = v28;
  }

  else
  {
  }

  v30 = OBJC_IVAR____RTCReportingS_earlyCachedEvents;
  result = swift_beginAccess();
  v32 = *&a1[v30];
  if (v32)
  {
    *&a1[v30] = 0;
    sub_223C483F8();
    v33 = sub_223C48418();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v32;
    v34[5] = a1;
    v34[6] = v37;
    v35 = a1;
    sub_223C3FE74(0, 0, v18, &unk_223C4B028, v34);

    return sub_223C2CF0C(v18, &unk_27D0B9A30, &unk_223C4AB88);
  }

  return result;
}

uint64_t sub_223C345E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223C34658()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_223C46E68;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_223C33654;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_223C34778(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_223C48398();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_223C347E8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    v9 = v3[2];
    v10 = OUTLINED_FUNCTION_39();
  }

  else
  {
    v12 = v3[4];
    v13 = v3[2];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v10 = OUTLINED_FUNCTION_39();
    v11 = v13;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t OUTLINED_FUNCTION_21_0()
{
  v2 = *(*(v0 + 32) + 8);

  return sub_223C482E8();
}

uint64_t sub_223C34948()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 16);
  v2 = *(v1 + 312);
  *(v1 + 312) = 0;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_223C349AC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_223C34A8C()
{
  OUTLINED_FUNCTION_19();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;
  v4 = *(v1 + 296);
  v5 = *(v1 + 32);
  *v3 = *v0;

  sub_223C34BB4(*(v1 + 16), *(v2 + 24));

  return MEMORY[0x2822009F8](sub_223C34BC0, v5, 0);
}

void sub_223C34BB4(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_223C34BC0()
{
  v1 = v0[36];

  v2 = v0[4];
  v3 = *(v2 + 312);
  v0[36] = v3;
  if (v3)
  {
    v4 = *(MEMORY[0x277D857D0] + 4);

    v5 = swift_task_alloc();
    v0[37] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A00, &unk_223C4A8C0);
    *v5 = v0;
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_16_0();

    return MEMORY[0x282200440]();
  }

  else
  {
    v6 = v0[35];
    v8 = v0[5];
    v7 = v0[6];
    v9 = sub_223C48418();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
    v10 = sub_223C30968();
    v11 = swift_allocObject();
    v11[2] = v2;
    v11[3] = v10;
    v11[4] = v2;
    v11[5] = v6;
    v11[6] = v8;
    swift_retain_n();
    swift_unknownObjectRetain();
    v12 = OUTLINED_FUNCTION_7_0();
    v0[38] = v12;
    v13 = *(v2 + 312);
    *(v2 + 312) = v12;

    v14 = *(MEMORY[0x277D857C8] + 4);
    v15 = swift_task_alloc();
    v0[39] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A00, &unk_223C4A8C0);
    *v15 = v0;
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_16_0();

    return MEMORY[0x282200430]();
  }
}

uint64_t sub_223C34DA4()
{
  OUTLINED_FUNCTION_19();
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *(v2 + 312);
  *v4 = *v1;
  *(v3 + 320) = v0;

  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_223C3C33C;
  }

  else
  {
    v7 = sub_223C34EC8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_223C34EC8()
{
  v1 = v0[4];
  v2 = v1[43];
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v1[43] = v4;
    v5 = v1[41];
    if (v5)
    {
      v6 = v1[42];
      v7 = v0[38];
      v8 = v0[35];
      if (v4)
      {

        swift_unknownObjectRelease();

        v9 = OUTLINED_FUNCTION_30_0();
      }

      else
      {

        v5(v12);
        v13 = OUTLINED_FUNCTION_30_0();
        sub_223C28024(v13);

        swift_unknownObjectRelease();
        v9 = v1[41];
        v14 = v1[42];
        v1[41] = 0;
        v1[42] = 0;
      }

      sub_223C28024(v9);
    }

    else
    {
      v10 = v0[38];
      v11 = v0[35];
      swift_unknownObjectRelease();
    }

    v16 = v0[32];
    v15 = v0[33];
    v18 = v0[28];
    v17 = v0[29];
    v19 = v0[27];
    v21 = v0[23];
    v20 = v0[24];
    v22 = v0[21];
    v23 = v0[22];
    v24 = v0[20];
    v26 = v0[19];
    v27 = v0[18];
    v28 = v0[17];
    v29 = v0[16];
    v30 = v0[15];
    v31 = v0[14];
    v32 = v0[13];
    v33 = v0[12];
    v34 = v0[11];
    v35 = v0[10];
    v36 = v0[9];
    v37 = v0[8];
    v38 = v0[7];
    v39 = v0[6];

    OUTLINED_FUNCTION_20_0();

    v25();
  }
}

uint64_t sub_223C350E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 88);
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    v7 = sub_223C40E9C;
  }

  else
  {
    v7 = sub_223C40DE4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_223C351E8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5();
}

void _RTCReportingS.__deallocating_deinit()
{
  OUTLINED_FUNCTION_65();
  ObjectType = swift_getObjectType();
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v3 = sub_223C481B8();
  __swift_project_value_buffer(v3, qword_280AEC1D0);
  v4 = v0;
  v5 = sub_223C48198();
  v6 = sub_223C48488();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_52();
    v7 = OUTLINED_FUNCTION_44_0();
    v24 = v7;
    *v1 = 136315138;
    if (*&v4[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
    {
      v8 = *&v4[OBJC_IVAR____RTCReportingS_generatedSessionID];
      v9 = *&v4[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
    }

    else
    {
      v9 = 0xE100000000000000;
      v8 = 63;
    }

    v10 = sub_223C354E8(v8, v9, &v24);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_47_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270](v16);
    v17 = OUTLINED_FUNCTION_8_1();
    MEMORY[0x223DF6270](v17);
  }

  v18 = *&v4[OBJC_IVAR____RTCReportingS_lock];
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_37_0();
  *(v20 - 16) = v4;
  *(v20 - 8) = ObjectType;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_1();
  *(v22 - 16) = sub_223C3598C;
  *(v22 - 8) = v23;

  os_unfair_lock_lock(v18 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v18 + 4);

  v25.receiver = v4;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, sel_dealloc);
  OUTLINED_FUNCTION_63();
}

uint64_t sub_223C354E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_43();
  v9 = sub_223C355A8(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_223C2C0BC(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

unint64_t sub_223C355A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_223C3D038(a5, a6);
    *a1 = v9;
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
    result = sub_223C485D8();
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

uint64_t sub_223C356A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v22 - v5;
  if ((*(a1 + OBJC_IVAR____RTCReportingS_terminated) & 1) == 0)
  {
    sub_223C359A8(v4);
    v7 = *(a1 + OBJC_IVAR____RTCReportingS_session);
    if (v7)
    {
      v8 = *(a1 + OBJC_IVAR____RTCReportingS_session);

      sub_223C483F8();
      v9 = sub_223C48418();
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v7;

      sub_223C3FE74(0, 0, v6, &unk_223C4AF10, v10);

      sub_223C2CF0C(v6, &unk_27D0B9A30, &unk_223C4AB88);
    }
  }

  v11 = OBJC_IVAR____RTCReportingS_activeTasks;
  swift_beginAccess();
  v22[1] = a1;
  v12 = *(a1 + v11);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;

  for (i = 0; v15; result = )
  {
    v19 = i;
LABEL_12:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = *(*(v12 + 56) + ((v19 << 9) | (8 * v20)));

    sub_223C48438();
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C10, &qword_223C4AF00);
      sub_223C482A8();
      return swift_endAccess();
    }

    v15 = *(v12 + 64 + 8 * v19);
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223C35954()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

void sub_223C359A8(uint64_t a1)
{
  if (qword_280AEC178 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_280AEC180;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_223C35A7C()
{
  if (__OFSUB__(qword_280AEC118, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_280AEC118;
    if (qword_280AEC1C8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v0 = sub_223C481B8();
  __swift_project_value_buffer(v0, qword_280AEC1D0);
  v1 = sub_223C48198();
  v2 = sub_223C48498();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134349312;
    *(v3 + 4) = qword_280AEC118;
    *(v3 + 12) = 2050;
    *(v3 + 14) = qword_280AEBD80;
    _os_log_impl(&dword_223C26000, v1, v2, "active session count now %{public}ld/%{public}ld", v3, 0x16u);
    MEMORY[0x223DF6270](v3, -1, -1);
  }
}

uint64_t sub_223C35CE8()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_1(v4);
  *v5 = v6;
  v5[1] = sub_223C34944;

  return sub_223C35D90();
}

uint64_t sub_223C35D90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_223C349AC;

  return sub_223C35E20();
}

uint64_t sub_223C35E40()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[6];
  v2 = *(v1 + 184);
  if (v2 && *(v1 + 320))
  {
    v3 = *(v1 + 176);
    v4 = *(v1 + 192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9A10, &qword_223C4A948);
    v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A18, &qword_223C4A950) - 8);
    v6 = *(*v5 + 72);
    v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_223C4A900;
    v9 = (v8 + v7);
    v10 = (v8 + v7 + v5[14]);

    v11 = MessageKeys.sessionID.unsafeMutableAddressor();
    v12 = v11[1];
    *v9 = *v11;
    v9[1] = v12;
    *v10 = v3;
    v10[1] = v2;
    type metadata accessor for XPCObject();
    swift_storeEnumTagMultiPayload();

    v13 = RTCXPCDictionary.init(dictionaryLiteral:)(v8);
    v0[7] = XPCMessage.init(ty:payload:)(1u, v13);
    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v15 = OUTLINED_FUNCTION_14_0(v14);

    return XPCConnection.sendWithReply(_:)(v15, v16);
  }

  else
  {
    *(v1 + 320) = 2;
    OUTLINED_FUNCTION_20_0();

    return v18();
  }
}

uint64_t sub_223C3603C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    v9 = *(v3 + 48);
    v10 = OUTLINED_FUNCTION_39();
  }

  else
  {
    v14 = v3 + 48;
    v13 = *(v3 + 48);
    v12 = *(v14 + 8);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v10 = OUTLINED_FUNCTION_39();
    v11 = v13;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_223C36164()
{
  *(*(v0 + 48) + 320) = 2;
  OUTLINED_FUNCTION_20_0();
  return v1();
}

uint64_t Session.__deallocating_deinit()
{
  Session.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t Session.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 152);

  v4 = *(v0 + 160);

  v5 = *(v0 + 168);

  v6 = *(v0 + 184);

  v7 = *(v0 + 192);

  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 256);
  v11 = *(v0 + 264);
  v22 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 296);
  v19 = *(v0 + 272);
  sub_223C362C8(*(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));
  v12 = *(v0 + 312);

  v13 = *(v0 + 336);
  sub_223C28024(*(v0 + 328));
  v14 = OBJC_IVAR____TtC12RTCReporting7Session_baseTime;
  v15 = sub_223C48138();
  OUTLINED_FUNCTION_3_0(v15);
  v17 = *(v16 + 8);
  v17(v0 + v14, v15);
  v17(v0 + OBJC_IVAR____TtC12RTCReporting7Session_obfuscatedBaseTime, v15);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_223C362C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

Swift::String __swiftcall _RTCReportingS.getReportingSessionID()()
{
  v1 = *(v0 + OBJC_IVAR____RTCReportingS_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_223C36458(v2, v6);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v6[0];
  v4 = v6[1];
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void *sub_223C36410@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_223C36474(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

void *sub_223C36474(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_223C364B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = (a1 + OBJC_IVAR____RTCReportingS_generatedSessionID);
  v3 = *(a1 + OBJC_IVAR____RTCReportingS_generatedSessionID + 8);
  if (v3)
  {
    v4 = *v2;
    v5 = v3;
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_223C364F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for EventValue();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v43 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C30, &qword_223C4AFB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (v42 - v18);
  sub_223C36F0C(a1, a2, a3, v48);
  v44 = v48[0];
  v45 = v48[1];
  v46 = v48[2];
  v47 = v49;
  v42[1] = a1;

  v42[0] = a3;

  while (1)
  {
    sub_223C3684C(v19);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F8, &unk_223C4A8B0);
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      sub_223C4556C();
    }

    v21 = *(v20 + 48);
    v23 = *v19;
    v22 = v19[1];
    sub_223C2D02C(v19 + v21, v15);
    v24 = *a5;
    v26 = sub_223C29FE0();
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
        sub_223C48608();
      }
    }

    else
    {
      sub_223C372BC(v29, a4 & 1);
      v31 = *a5;
      v32 = sub_223C29FE0();
      if ((v30 & 1) != (v33 & 1))
      {
        goto LABEL_16;
      }

      v26 = v32;
    }

    v34 = *a5;
    if (v30)
    {
      v35 = *(v50 + 72) * v26;
      v36 = v43;
      sub_223C2D6B4(v34[7] + v35, v43);
      sub_223C2D718(v15);

      sub_223C36BBC(v36, v34[7] + v35);
      a4 = 1;
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v37 = (v34[6] + 16 * v26);
      *v37 = v23;
      v37[1] = v22;
      sub_223C2D02C(v15, v34[7] + *(v50 + 72) * v26);
      v38 = v34[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_15;
      }

      v34[2] = v40;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_223C486C8();
  __break(1u);
  return result;
}

uint64_t sub_223C3684C@<X0>(uint64_t a1@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v39 - v4;
  v6 = type metadata accessor for EventValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99D8, &unk_223C4A890);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v39 - v17);
  v20 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[4];
  v39 = v5;
  v42 = v21;
  if (v23)
  {
    v24 = v7;
    v40 = a1;
    v25 = v22;
LABEL_7:
    v26 = (v23 - 1) & v23;
    v27 = __clz(__rbit64(v23)) | (v25 << 6);
    v28 = (*(v20 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    sub_223C2D6B4(*(v20 + 56) + *(v24 + 72) * v27, v10);
    v31 = v41;
    v32 = *(v41 + 48);
    *v18 = v29;
    v18[1] = v30;
    v33 = v31;
    sub_223C2D02C(v10, v18 + v32);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v33);

    a1 = v40;
LABEL_8:
    *v1 = v20;
    v1[1] = v19;
    v1[2] = v42;
    v1[3] = v22;
    v1[4] = v26;
    v34 = v1[5];
    v35 = v1[6];
    sub_223C36B70(v18, v15, &qword_27D0B99D8, &unk_223C4A890);
    v36 = 1;
    if (__swift_getEnumTagSinglePayload(v15, 1, v33) != 1)
    {
      v37 = v39;
      sub_223C36B70(v15, v39, &qword_27D0B99E0, &unk_223C4AFA0);
      v34(v37);
      sub_223C2CF0C(v37, &qword_27D0B99E0, &unk_223C4AFA0);
      v36 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F8, &unk_223C4A8B0);
    return __swift_storeEnumTagSinglePayload(a1, v36, 1, v38);
  }

  else
  {
    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= ((v21 + 64) >> 6))
      {
        v33 = v41;
        __swift_storeEnumTagSinglePayload(&v39 - v17, 1, 1, v41);
        v26 = 0;
        goto LABEL_8;
      }

      v23 = *(v19 + 8 * v25);
      ++v22;
      if (v23)
      {
        v24 = v7;
        v40 = a1;
        v22 = v25;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_223C36B70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_62(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_30_0();
  v9(v8);
  return v4;
}

uint64_t sub_223C36BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223C36C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_223C2D6B4(a4, a1);

  return a2;
}

uint64_t sub_223C36C60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F8, &unk_223C4A8B0);
  result = sub_223C36C20(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_223C36CD0()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_52_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C36E60(v4, v5, v6, v7, v0);
}

uint64_t sub_223C36D6C()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____RTCReportingS_session;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 96) = 0;
  if (v3)
  {
    result = *(v1 + 32);
    *(v0 + 104) = result;
    v6 = *(v2 + v4);
    *(v0 + 112) = v6;
    if (v6)
    {
      v7 = *(v1 + 40);
      *(v0 + 40) = result;
      *(v0 + 48) = v7;

      v8 = swift_task_alloc();
      v9 = OUTLINED_FUNCTION_55(v8);
      *v9 = v10;
      OUTLINED_FUNCTION_15_1(v9);

      return sub_223C2F298();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v11();
  }

  return result;
}

uint64_t sub_223C36E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_223C36D6C, 0, 0);
}

char *sub_223C36E80(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_223C36F48((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_223C36EC0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_223C36F48(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_223C36F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

char *sub_223C36F48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C40, &qword_223C4AFC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223C37054()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = v2[15];
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    v7 = v3[14];

    v8 = sub_223C3FCCC;
  }

  else
  {
    v9 = v3[13];
    v10 = v3[14];

    v8 = sub_223C37170;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_223C37170()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 96) + 1;
  *(v0 + 96) = v1;
  if (v1 == *(v0 + 80))
  {
    OUTLINED_FUNCTION_20_0();

    return v2();
  }

  else
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(v0 + 64) + 16 * v1;
    v8 = *(v6 + 32);
    v7 = v6 + 32;
    result = v8;
    *(v0 + 104) = v8;
    v9 = *(v5 + v4);
    *(v0 + 112) = v9;
    if (v9)
    {
      v10 = *(v7 + 8);
      *(v0 + 40) = result;
      *(v0 + 48) = v10;

      v11 = swift_task_alloc();
      v12 = OUTLINED_FUNCTION_55(v11);
      *v12 = v13;
      OUTLINED_FUNCTION_15_1();

      return sub_223C2F298();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_28_0()
{

  return sub_223C29FE0();
}

uint64_t sub_223C372BC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventValue();
  v7 = OUTLINED_FUNCTION_26(v6);
  v47 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13();
  v49 = v12 - v11;
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F0, &qword_223C4A8A8);
  v48 = a2;
  result = sub_223C48638();
  v16 = result;
  if (!*(v13 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v16;
    return result;
  }

  v45 = v3;
  v46 = v13;
  v17 = 0;
  v18 = (v13 + 64);
  v19 = 1 << *(v13 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v13 + 64);
  v22 = (v19 + 63) >> 6;
  v23 = result + 64;
  if (!v21)
  {
LABEL_9:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = v18[v17];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_35;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      sub_223C2D650(0, (v44 + 63) >> 6, v18);
    }

    else
    {
      *v18 = -1 << v44;
    }

    *(v13 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_14:
    v27 = v24 | (v17 << 6);
    v28 = *(v13 + 56);
    v29 = (*(v13 + 48) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v47 + 72);
    v33 = v28 + v32 * v27;
    if (v48)
    {
      sub_223C2D02C(v33, v49);
    }

    else
    {
      sub_223C2D6B4(v33, v49);
    }

    v34 = *(v16 + 40);
    sub_223C48758();
    sub_223C48358();
    result = sub_223C48788();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
    {
      break;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v23 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v16 + 48) + 16 * v38);
    *v43 = v30;
    v43[1] = v31;
    result = sub_223C2D02C(v49, *(v16 + 56) + v32 * v38);
    ++*(v16 + 16);
    v13 = v46;
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  v39 = 0;
  v40 = (63 - v35) >> 6;
  while (++v37 != v40 || (v39 & 1) == 0)
  {
    v41 = v37 == v40;
    if (v37 == v40)
    {
      v37 = 0;
    }

    v39 |= v41;
    v42 = *(v23 + 8 * v37);
    if (v42 != -1)
    {
      v38 = __clz(__rbit64(~v42)) + (v37 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

Swift::Void __swiftcall _RTCReportingS.flushMessages()()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____RTCReportingS_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_223C376DC(uint64_t a1)
{
  if (!*(a1 + OBJC_IVAR____RTCReportingS_session))
  {
    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v1 = sub_223C481B8();
    __swift_project_value_buffer(v1, qword_280AEC1D0);
    v2 = sub_223C48198();
    v3 = sub_223C484A8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_223C26000, v2, v3, "attempted to flush unconfigured session", v4, 2u);
      MEMORY[0x223DF6270](v4, -1, -1);
    }
  }
}

uint64_t sub_223C37810(int a1, xpc_object_t xint)
{
  value = xpc_int64_get_value(xint);
  sub_223C3D4D8(&v4, value);
  return 1;
}

uint64_t sub_223C37878()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223C378B0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_223C378F0()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_223C37960()
{
  v1 = sub_223C48218();
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  if (*(v0 + 6))
  {
    v10 = *(v0 + 7);
  }

  v11 = (v4 + 64) & ~v4;
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(&v0[v11], v1);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v4 | 7);
}

uint64_t sub_223C37A44()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223C37A8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void __createAWDAdaptorInstance_block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:@"/System/Library/PrivateFrameworks/AVConference.framework/Frameworks/GKSPerformance.framework"];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_223C26000, v4, OS_LOG_TYPE_DEFAULT, "loading AWDAdaptor bundle", v6, 2u);
    }

    if (([v3 isLoaded] & 1) == 0)
    {
      [v3 load];
    }

    createAWDAdaptorInstance_awdAdaptorClass = [v3 classNamed:@"AWDAdaptor"];
  }

  else
  {
    createAWDAdaptorInstance_awdAdaptorClass = 0;
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __createAWDAdaptorInstance_block_invoke_cold_1(v5);
    }
  }
}

uint64_t RTCReportingInitWithSessionInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [RTCReporting alloc];

  return [(RTCReporting *)v6 initWithSessionInfo:a1 userInfo:a2 frameworksToCheck:a3 aggregationBlock:0];
}

void *RTCReportingStartConfiguration(void *result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __RTCReportingStartConfiguration_block_invoke;
    v2[3] = &unk_2784F14C0;
    v2[4] = a2;
    return [result startConfigurationWithCompletionHandler:v2];
  }

  return result;
}

uint64_t __RTCReportingStartConfiguration_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *RTCReportingFetchStatesWithUserInfo(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __RTCReportingFetchStatesWithUserInfo_block_invoke;
    v3[3] = &unk_2784F14C0;
    v3[4] = a3;
    return [result fetchReportingStatesWithUserInfo:a2 fetchComplete:v3];
  }

  return result;
}

uint64_t __RTCReportingFetchStatesWithUserInfo_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *RTCReportingSetMessageBlock(void *result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __RTCReportingSetMessageBlock_block_invoke;
    v2[3] = &unk_2784F14E8;
    v2[4] = a2;
    return [result setMessageLoggingBlock:v2];
  }

  return result;
}

uint64_t __RTCReportingSetMessageBlock_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *RTCReportingUpdateSharedDataWithDictionary(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 updateSharedDataWithDictionary:a2];
  }

  return a1;
}

void *RTCReportingUpdateSharedDataForKey(void *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    return [a1 updateSharedDataForKey:a2 value:a3];
  }

  return a1;
}

uint64_t RTCReportingSendMessageWithError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5)
{
  if (!a1)
  {
    return 0;
  }

  v10 = objc_autoreleasePoolPush();
  v15 = 0;
  v11 = [a1 sendMessageWithCategory:a2 type:a3 payload:a4 error:&v15];
  if (a5)
  {
    *a5 = 0;
    if (v15)
    {
      v12 = *MEMORY[0x277CBECE8];
      v13 = [v15 code];
      *a5 = CFErrorCreate(v12, @"RTCReportingErrorDomain", v13, [v15 userInfo]);
    }
  }

  objc_autoreleasePoolPop(v10);
  return v11;
}

uint64_t RTCReportingSendMessageWithDictionary(void *a1, uint64_t a2, CFErrorRef *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [a1 sendMessageWithDictionary:a2 error:&v11];
  if (a3)
  {
    *a3 = 0;
    if (v11)
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = [v11 code];
      *a3 = CFErrorCreate(v8, @"RTCReportingErrorDomain", v9, [v11 userInfo]);
    }
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

uint64_t RTCReportingSendOneMessageWithDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFErrorRef *a6)
{
  v12 = objc_autoreleasePoolPush();
  v17 = 0;
  v13 = [RTCReporting sendOneMessageWithSessionInfo:a1 userInfo:a2 category:a3 type:a4 payload:a5 error:&v17];
  if (a6)
  {
    *a6 = 0;
    if (v17)
    {
      v14 = *MEMORY[0x277CBECE8];
      v15 = [v17 code];
      *a6 = CFErrorCreate(v14, @"RTCReportingErrorDomain", v15, [v17 userInfo]);
    }
  }

  objc_autoreleasePoolPop(v12);
  return v13;
}

uint64_t RTCReportingCreateEphemeralSessionWithSessionInfo(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [+[RTCReporting createEphemeralSessionWithSessionInfo:userInfo:error:](RTCReporting createEphemeralSessionWithSessionInfo:a1 userInfo:a2 error:{&v11), "copy"}];
  if (a3)
  {
    *a3 = 0;
    if (v11)
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = [v11 code];
      *a3 = CFErrorCreate(v8, @"RTCReportingErrorDomain", v9, [v11 userInfo]);
    }
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

void *RTCReportingFlushMessages(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 flushMessages];
  }

  return a1;
}

void *RTCReportingFlushMessagesWithCompletion(void *result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __RTCReportingFlushMessagesWithCompletion_block_invoke;
    v2[3] = &unk_2784F1510;
    v2[4] = a2;
    return [result flushMessagesWithCompletion:v2];
  }

  return result;
}

uint64_t __RTCReportingFlushMessagesWithCompletion_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *RTCReportingUploadLogWithArray(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 uploadDataArray:a2 completionHandler:0];
  }

  return a1;
}

uint64_t EventValue.init(integerLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.init(floatLiteral:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.init(BOOLeanLiteral:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_223C39E94(a1);
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_223C39E94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F0, &qword_223C4A8A8);
    v2 = sub_223C48648();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_223C3B0F0(a1, 1, &v4);
  return v4;
}

uint64_t _s12RTCReporting10EventValueO13stringLiteralACSS_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

void EventValue.init<A>(_:)()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_19_0(v3, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v26 = OUTLINED_FUNCTION_10(v18, v19, v20, v21, v22, v23, v24, v25, v39);
  v27(v26);
  v28 = v1;
  OUTLINED_FUNCTION_6();
  if (sub_223C48558())
  {
    OUTLINED_FUNCTION_0_0();
    if (sub_223C48548() > 64)
    {
      v28 = v1;
      OUTLINED_FUNCTION_6();
      if (sub_223C48558())
      {
        OUTLINED_FUNCTION_0_0();
        if (sub_223C48548() < 64)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v28 = v1;
      OUTLINED_FUNCTION_6();
      v0 = sub_223C48558();
      OUTLINED_FUNCTION_0_0();
      v29 = sub_223C48548();
      if (v0)
      {
        if (v29 > 64)
        {
LABEL_8:
          v30 = sub_223C3A280();
          OUTLINED_FUNCTION_12(v30, MEMORY[0x277D84A28], v30);
          OUTLINED_FUNCTION_4();
          sub_223C482E8();
          v31 = OUTLINED_FUNCTION_1_0();
          v32(v31);
          if ((v0 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_25:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_16(&unk_223C4A5C0);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_4();
        sub_223C482E8();
        v33 = OUTLINED_FUNCTION_1_0();
        v34(v33);
        if (v0)
        {
          goto LABEL_25;
        }

LABEL_13:
        OUTLINED_FUNCTION_0_0();
        sub_223C48538();
        goto LABEL_14;
      }

      if (v29 < 64)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_0_0();
  if (sub_223C48548() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = v1;
    OUTLINED_FUNCTION_6();
    v35 = sub_223C48558();
    OUTLINED_FUNCTION_0_0();
    v36 = sub_223C48548();
    if ((v35 & 1) == 0)
    {
      break;
    }

    if (v36 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    v37 = sub_223C3A280();
    OUTLINED_FUNCTION_12(v37, MEMORY[0x277D84A28], v37);
    v28 = OUTLINED_FUNCTION_21_0();
    (*(v10 + 8))(v16, v1);
    if (v28)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_0();
      if (sub_223C48548() == 64)
      {
        v28 = v1;
        OUTLINED_FUNCTION_6();
        if ((sub_223C48558() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v36 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  OUTLINED_FUNCTION_0_0();
  sub_223C48538();
LABEL_24:
  OUTLINED_FUNCTION_0_0();
  sub_223C48538();
  v38 = OUTLINED_FUNCTION_27();
  (v0)(v38);
  (v0)(v2, v1);
  *v40 = v28;
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23();
}

{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_19_0(v3, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v13 = MEMORY[0x28223BE20](v12);
  v21 = OUTLINED_FUNCTION_10(v13, v14, v15, v16, v17, v18, v19, v20, v33);
  v22(v21);
  v23 = v1;
  OUTLINED_FUNCTION_6();
  if (sub_223C48558() & 1) == 0 || (OUTLINED_FUNCTION_22(), OUTLINED_FUNCTION_16(&unk_223C4A5C0), OUTLINED_FUNCTION_11(), OUTLINED_FUNCTION_4(), sub_223C482F8(), v24 = OUTLINED_FUNCTION_1_0(), v25(v24), (v0))
  {
    OUTLINED_FUNCTION_0_0();
    if (sub_223C48548() > 63)
    {
      v23 = v1;
      OUTLINED_FUNCTION_6();
      v0 = sub_223C48558();
      OUTLINED_FUNCTION_0_0();
      v26 = sub_223C48548();
      if (v0)
      {
        if (v26 <= 64)
        {
          OUTLINED_FUNCTION_22();
          OUTLINED_FUNCTION_16(&unk_223C4A5C0);
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_4();
          sub_223C482D8();
          v27 = OUTLINED_FUNCTION_1_0();
          v28(v27);
          if ((v0 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else if (v26 < 65)
      {
LABEL_11:
        OUTLINED_FUNCTION_0_0();
        sub_223C48538();
        goto LABEL_12;
      }

      v29 = sub_223C3A544();
      OUTLINED_FUNCTION_12(v29, MEMORY[0x277D84D38], v29);
      OUTLINED_FUNCTION_21_0();
      v30 = OUTLINED_FUNCTION_1_0();
      v31(v30);
      if (v0)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_0_0();
    sub_223C48538();
    v32 = OUTLINED_FUNCTION_27();
    (v0)(v32);
    (v0)(v2, v1);
    *v34 = v23;
    type metadata accessor for EventValue();
    OUTLINED_FUNCTION_9();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

unint64_t sub_223C3A280()
{
  result = qword_27D0B9938;
  if (!qword_27D0B9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9938);
  }

  return result;
}

unint64_t sub_223C3A544()
{
  result = qword_27D0B9940;
  if (!qword_27D0B9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9940);
  }

  return result;
}

uint64_t EventValue.init<A>(_:)@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13();
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_29_0();
  v8();
  sub_223C3A6AC();
  sub_223C48228();
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_20();
  v11(v10);
  *a1 = v13;
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_9();
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_223C3A6AC()
{
  result = qword_27D0B9948;
  if (!qword_27D0B9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9948);
  }

  return result;
}

uint64_t EventValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_223C48188();
  OUTLINED_FUNCTION_3_0(v4);
  (*(v5 + 32))(a2, a1);
  type metadata accessor for EventValue();
  OUTLINED_FUNCTION_25();

  return swift_storeEnumTagMultiPayload();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t Event.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  result = sub_223C39E94(a1);
  *a2 = result;
  return result;
}

RTCReporting::Event __swiftcall Event.init(_:)(RTCReporting::Event result)
{
  *(v1 + 8) = 0;
  *v1 = result.dict._rawValue;
  return result;
}

RTCReporting::Event __swiftcall Event.init(category:type:)(Swift::UInt64 category, Swift::UInt64 type)
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v24 - v14);
  *(v5 + 8) = 0;
  v16 = type metadata accessor for EventValue();
  *v5 = sub_223C48298();
  *v15 = category;
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
  v17 = OUTLINED_FUNCTION_8();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_30();
  sub_223C3AC70(v12);
  sub_223C2CF0C(v15, &qword_27D0B9950, &qword_223C4A5D0);
  *v15 = type;
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
  v20 = OUTLINED_FUNCTION_8();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  OUTLINED_FUNCTION_30();
  sub_223C3AC70(v12);
  result.dict._rawValue = sub_223C2CF0C(v15, &qword_27D0B9950, &qword_223C4A5D0);
  result.isRealtime = v23;
  return result;
}

uint64_t Event.subscript.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_223C2C474(a1, &v9 - v6, &qword_27D0B9950, &qword_223C4A5D0);
  sub_223C3AC70(v7);
  return sub_223C2CF0C(a1, &qword_27D0B9950, &qword_223C4A5D0);
}

uint64_t Event.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_223C29FE0(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for EventValue();
    OUTLINED_FUNCTION_3_0(v8);
    sub_223C2D6B4(v7 + *(v9 + 72) * v6, a1);
    v10 = a1;
    v11 = 0;
    v12 = 1;
    v13 = v8;
  }

  else
  {
    type metadata accessor for EventValue();
    OUTLINED_FUNCTION_26_0();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_223C3AB68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  return Event.subscript.getter(a3);
}

uint64_t sub_223C3ABA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v10 = *a3;
  v9 = a3[1];
  sub_223C2C474(a1, &v12 - v7, &qword_27D0B9950, &qword_223C4A5D0);

  return Event.subscript.setter(v8);
}

uint64_t sub_223C3AC70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for EventValue();
  v11 = OUTLINED_FUNCTION_3_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  if (__swift_getEnumTagSinglePayload(a1, 1, v17) == 1)
  {
    sub_223C2CF0C(a1, &qword_27D0B9950, &qword_223C4A5D0);
    OUTLINED_FUNCTION_20();
    sub_223C440F8(v18);

    return sub_223C2CF0C(v9, &qword_27D0B9950, &qword_223C4A5D0);
  }

  else
  {
    sub_223C2D02C(a1, v16);
    v20 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    OUTLINED_FUNCTION_29_0();
    sub_223C2F610();

    *v2 = v22;
  }

  return result;
}

uint64_t sub_223C3ADDC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_223C2A050(a1, v6);
    v2 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    OUTLINED_FUNCTION_29_0();
    sub_223C29B2C();

    *v1 = v5;
  }

  else
  {
    sub_223C2CF0C(a1, &qword_27D0B99E8, &qword_223C4A8A0);
    OUTLINED_FUNCTION_20();
    sub_223C44204(v4);

    return sub_223C2CF0C(v6, &qword_27D0B99E8, &qword_223C4A8A0);
  }

  return result;
}

void (*Event.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v7[3] = __swift_coroFrameAllocStub(v10);
  v7[4] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v7[5] = v11;
  v12 = *v3;
  if (*(v12 + 16) && (v13 = sub_223C29FE0(), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for EventValue();
    OUTLINED_FUNCTION_3_0(v17);
    sub_223C2D6B4(v16 + *(v18 + 72) * v15, v11);
    v19 = v11;
    v20 = 0;
    v21 = 1;
    v22 = v17;
  }

  else
  {
    type metadata accessor for EventValue();
    OUTLINED_FUNCTION_26_0();
  }

  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  return sub_223C3AFE8;
}

void sub_223C3AFE8()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = *v2;
  sub_223C2C474((*v2)[5], (*v2)[4], &qword_27D0B9950, &qword_223C4A5D0);
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[2];
  v7 = v3[3];
  v9 = *v3;
  v8 = v3[1];
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_20();
    sub_223C2C474(v10, v11, &qword_27D0B9950, &qword_223C4A5D0);

    sub_223C3AC70(v7);
    sub_223C2CF0C(v4, &qword_27D0B9950, &qword_223C4A5D0);
  }

  else
  {
    v12 = v3[1];

    sub_223C3AC70(v4);
  }

  sub_223C2CF0C(v5, &qword_27D0B9950, &qword_223C4A5D0);
  free(v5);
  free(v4);
  free(v7);
  OUTLINED_FUNCTION_23();

  free(v13);
}

void sub_223C3B0F0(uint64_t a1, char a2, uint64_t *a3)
{
  v48 = a3;
  v6 = type metadata accessor for EventValue();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F8, &unk_223C4A8B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = (&v41 - v14);
  v45 = *(a1 + 16);
  if (!v45)
  {
LABEL_13:

    return;
  }

  v41 = v3;
  v42 = a1;
  v15 = 0;
  v16 = *(v12 + 48);
  v43 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v44 = v16;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_223C486C8();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v13;
    v18 = v47;
    sub_223C2C474(v43 + *(v13 + 72) * v15, v47, &qword_27D0B99F8, &unk_223C4A8B0);
    v19 = *v18;
    v20 = v18[1];
    v51 = *v18;
    v52 = v20;
    v21 = v9;
    sub_223C2D02C(v18 + v44, v9);
    v22 = *v48;
    v24 = sub_223C29FE0();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      sub_223C48608();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v48;
    *(*v48 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v34 = (v33[6] + 16 * v24);
    *v34 = v19;
    v34[1] = v20;
    v35 = v33[7] + *(v46 + 72) * v24;
    v9 = v21;
    sub_223C2D02C(v21, v35);
    v36 = v33[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_20;
    }

    ++v15;
    v33[2] = v38;
    a2 = 1;
    a1 = v42;
    v13 = v17;
    if (v45 == v15)
    {
      goto LABEL_13;
    }
  }

  v29 = v48;
  sub_223C372BC(v27, a2 & 1);
  v30 = *v29;
  v31 = sub_223C29FE0();
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v39 = swift_allocError();
  swift_willThrow();

  v53 = v39;
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A00, &unk_223C4A8C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_223C2F914(v21, type metadata accessor for EventValue);

    return;
  }

LABEL_22:
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_223C485C8();
  MEMORY[0x223DF5570](0xD00000000000001BLL, 0x8000000223C49D10);
  sub_223C485E8();
  MEMORY[0x223DF5570](39, 0xE100000000000000);
  sub_223C48628();
  __break(1u);
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

void sub_223C3B670()
{
  sub_223C48188();
  if (v0 <= 0x3F)
  {
    sub_223C3B72C();
    if (v1 <= 0x3F)
    {
      sub_223C3B784();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_223C3B72C()
{
  if (!qword_27D0B9968)
  {
    type metadata accessor for EventValue();
    v0 = sub_223C483B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0B9968);
    }
  }
}

void sub_223C3B784()
{
  if (!qword_27D0B9970)
  {
    type metadata accessor for EventValue();
    v0 = sub_223C482B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0B9970);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_223C3B800(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_223C3B840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Event.Keys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for Event.Keys(_BYTE *result, int a2, int a3)
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

uint64_t sub_223C3B998(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223C3B9B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_280AEC1B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280AEC1B0);
    }
  }
}

unint64_t sub_223C3BA30()
{
  v1 = *(v0 + 40);
  sub_223C48188();
  sub_223C3BC80(&qword_280AEC0C0, MEMORY[0x277CC95F0]);
  sub_223C482C8();
  v2 = OUTLINED_FUNCTION_25();

  return sub_223C3BAC4(v2, v3);
}

unint64_t sub_223C3BAC4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_223C48188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_223C3BC80(qword_280AEBF08, MEMORY[0x277CC95F0]);
    v10 = sub_223C48308();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_223C3BC80(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_25();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223C3BCE8()
{
  v0 = sub_223C481B8();
  __swift_allocate_value_buffer(v0, qword_280AEC380);
  __swift_project_value_buffer(v0, qword_280AEC380);
  return sub_223C481A8();
}

uint64_t sub_223C3BD98(unsigned __int8 a1)
{
  sub_223C48758();
  MEMORY[0x223DF5970](a1);
  return sub_223C48788();
}

uint64_t sub_223C3BDFC()
{
  v1 = *v0;
  sub_223C48758();
  MEMORY[0x223DF5970](v1);
  return sub_223C48788();
}

unint64_t sub_223C3BE40(uint64_t a1, uint64_t a2)
{
  v2 = 0xD000000000000015;
  if (!a2)
  {
    return 0xD000000000000016;
  }

  if (a2 != 1)
  {
    sub_223C485C8();

    MEMORY[0x223DF5570](a1, a2);
    return 0xD000000000000020;
  }

  return v2;
}

uint64_t Session.__allocating_init(clientType:clientName:serviceName:)()
{
  OUTLINED_FUNCTION_41();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 1;
  v1 = type metadata accessor for Session();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_223C3C030;

  return sub_223C329EC();
}

uint64_t sub_223C3C030()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_223C3C120()
{
  v1 = *(v0 + 1160);
  swift_unknownObjectRelease();
  v21 = *(v0 + 1200);
  v2 = *(v0 + 992);
  v3 = v2[15];

  v4 = v2[17];

  v5 = v2[19];

  v6 = *(v0 + 325);
  v7 = *(v0 + 992);
  v8 = v7[23];

  v9 = v7[24];

  memcpy((v0 + 16), v7 + 26, 0x61uLL);
  sub_223C2CF0C(v0 + 16, &unk_27D0B9A60, &unk_223C4ABD0);
  v10 = v7[39];

  v11 = v7[42];
  sub_223C28024(v7[41]);
  if (v6 == 1)
  {
    OUTLINED_FUNCTION_27_0();
    v12 = *(v6 + 8);
    v13 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_baseTime);
    v12(v13);
    v14 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_obfuscatedBaseTime);
    v12(v14);
  }

  OUTLINED_FUNCTION_3_1();
  v15 = *(v0 + 1080);
  v16 = *(v0 + 992);
  type metadata accessor for Session();
  swift_defaultActor_destroy();
  v17 = *(*v16 + 48);
  v18 = *(*v16 + 52);
  swift_deallocPartialClassInstance();

  OUTLINED_FUNCTION_20_0();

  return v19();
}

uint64_t sub_223C3C2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_223C3C33C()
{
  v1 = v0[38];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[15];
  v21 = v0[14];
  v22 = v0[13];
  v23 = v0[12];
  v24 = v0[11];
  v25 = v0[10];
  v26 = v0[9];
  v27 = v0[8];
  v28 = v0[7];
  v29 = v0[6];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_0();
  v12 = v0[40];

  return v11();
}

uint64_t sub_223C3C4E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    v6 = sub_223C48748();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 8 * v8) != a1);
  }

  return v2;
}

uint64_t sub_223C3C56C()
{
  OUTLINED_FUNCTION_41();
  v19 = v0;
  v1 = v0[4];
  swift_unknownObjectRelease();
  if (qword_280AEBEE0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v2 = v0[2];
  v3 = sub_223C481B8();
  __swift_project_value_buffer(v3, qword_280AEC380);

  v4 = sub_223C48198();
  v5 = sub_223C484A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = OUTLINED_FUNCTION_52();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    if (*(v6 + 184))
    {
      v9 = *(v0[2] + 176);
      v10 = *(v6 + 184);
    }

    else
    {
      v10 = 0xE100000000000000;
      v9 = 63;
    }

    v11 = sub_223C354E8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_223C26000, v4, v5, "session %s received error during send - marking as disabled", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_36();
  }

  v12 = v0[6];
  v13 = v0[2];
  *(v13 + 320) = 0;
  swift_willThrow();
  v14 = *(v13 + 312);
  *(v13 + 312) = 0;

  OUTLINED_FUNCTION_20_0();
  v16 = v0[6];

  return v15();
}

uint64_t sub_223C3C718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_223C2C4D4(a3, v23 - v10, &unk_27D0B9A30, &unk_223C4AB88);
  v12 = sub_223C48418();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_223C2CF0C(v11, &unk_27D0B9A30, &unk_223C4AB88);
  }

  else
  {
    sub_223C48408();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_223C483C8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_223C48348() + 32;

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

      sub_223C2CF0C(a3, &unk_27D0B9A30, &unk_223C4AB88);

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

  sub_223C2CF0C(a3, &unk_27D0B9A30, &unk_223C4AB88);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}