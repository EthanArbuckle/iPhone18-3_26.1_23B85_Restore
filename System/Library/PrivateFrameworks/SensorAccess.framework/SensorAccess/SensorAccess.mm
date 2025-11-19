unint64_t SensorAccessDuration.description.getter()
{
  sub_2655E644C();

  [v0 remainingMicrophoneDurationNanoSeconds];
  v1 = sub_2655E645C();
  MEMORY[0x266759570](v1);

  MEMORY[0x266759570](8236, 0xE200000000000000);
  sub_2655E644C();

  [v0 remainingCameraDurationNanoSeconds];
  v2 = sub_2655E645C();
  MEMORY[0x266759570](v2);

  MEMORY[0x266759570](8236, 0xE200000000000000);

  MEMORY[0x266759570](0xD000000000000018, 0x80000002655E6A40);

  sub_2655E644C();

  [v0 remainingFaceIDDurationNanoSeconds];
  v3 = sub_2655E645C();
  MEMORY[0x266759570](v3);

  MEMORY[0x266759570](0xD00000000000001BLL, 0x80000002655E6A60);

  return 0xD000000000000018;
}

unint64_t type metadata accessor for SensorAccessDuration()
{
  result = qword_280018128;
  if (!qword_280018128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280018128);
  }

  return result;
}

uint64_t sub_2655E5478()
{
  v2 = *v0;
  sub_2655E649C();
  sub_2655E63DC();
  return sub_2655E64AC();
}

uint64_t sub_2655E54DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2655E6250();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_2655E5528()
{
  v2 = *v0;
  sub_2655E649C();
  sub_2655E63DC();
  return sub_2655E64AC();
}

unint64_t sub_2655E5588@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2655E5F14(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2655E55C8(uint64_t a1)
{
  v2 = sub_2655E6250();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_2655E5604(uint64_t a1)
{
  v2 = sub_2655E6250();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_2655E5664(uint64_t a1, uint64_t a2)
{
  v4 = sub_2655E6250();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t SensorAccessError.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0xD00000000000001CLL;
      case 1:
        return 0xD000000000000016;
      case 2:
        return 0xD000000000000020;
    }

LABEL_16:
    result = sub_2655E646C();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x4164696C61766E49;
    }

    if (a1 == 6)
    {
      return 0xD000000000000014;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000021;
  }
}

id sub_2655E5818()
{
  sub_2655E6208(0, &qword_280018178, 0x277D86200);
  v1 = sub_2655E643C();
  v2 = OBJC_IVAR___SensorAccessIndicator_logger;
  *&v0[OBJC_IVAR___SensorAccessIndicator_logger] = v1;
  sub_2655E640C();
  v3 = *&v0[v2];
  sub_2655E63CC();

  v5.receiver = v0;
  v5.super_class = SensorAccessIndicator;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_2655E59D8()
{
  v34 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v2 = [objc_allocWithZone(SensorAccessDuration) init];
  if (![swift_getObjCClassFromMetadata() secureIndicatorPolicyEnforced])
  {
    sub_2655E641C();
    v11 = *(v0 + OBJC_IVAR___SensorAccessIndicator_logger);
    sub_2655E63CC();

    sub_2655E60E0();
    swift_allocError();
    v10 = 4;
LABEL_7:
    *v9 = v10;
    swift_willThrow();
LABEL_8:

    goto LABEL_9;
  }

  v3 = exclaves_indicator_min_on_time();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2655E641C();
    v6 = *(v0 + OBJC_IVAR___SensorAccessIndicator_logger);
    if (os_log_type_enabled(v6, v5))
    {
      v7 = v6;
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_2655E4000, v7, v5, "Kernel call failed with code: %d", v8, 8u);
      MEMORY[0x266759860](v8, -1, -1);
    }

    sub_2655E60E0();
    swift_allocError();
    v10 = 1;
    goto LABEL_7;
  }

  v30 = 0;
  mach_timebase_info(&v30);
  v14 = mach_continuous_time();
  v15 = sub_2655E642C();
  v16 = OBJC_IVAR___SensorAccessIndicator_logger;
  v17 = *(v0 + OBJC_IVAR___SensorAccessIndicator_logger);
  if (os_log_type_enabled(v17, v15))
  {
    v18 = v17;
    v19 = swift_slowAlloc();
    *v19 = 134218752;
    *(v19 + 4) = v14;
    *(v19 + 12) = 2048;
    swift_beginAccess();
    *(v19 + 14) = v33;
    *(v19 + 22) = 2048;
    swift_beginAccess();
    *(v19 + 24) = v32;
    *(v19 + 32) = 2048;
    swift_beginAccess();
    *(v19 + 34) = v31;
    _os_log_impl(&dword_2655E4000, v18, v15, "Evaluating remaining time with curr_time %llu cil %llu mil %llu fid %llu", v19, 0x2Au);
    MEMORY[0x266759860](v19, -1, -1);
  }

  v20 = v30;
  swift_beginAccess();
  v21 = sub_2655E62D8(v20, v33, v14);
  if (v1)
  {
    goto LABEL_8;
  }

  [v2 setRemainingCameraDurationNanoSeconds_];
  v22 = v30;
  swift_beginAccess();
  [v2 setRemainingMicrophoneDurationNanoSeconds_];
  v23 = v30;
  swift_beginAccess();
  [v2 setRemainingFaceIDDurationNanoSeconds_];
  v24 = sub_2655E642C();
  v25 = *(v0 + v16);
  if (os_log_type_enabled(v25, v24))
  {
    v26 = v25;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v2;
    *v28 = v2;
    v29 = v2;
    _os_log_impl(&dword_2655E4000, v26, v24, "Remaining duration %@ from SensorAccess", v27, 0xCu);
    sub_2655E6158(v28);
    MEMORY[0x266759860](v28, -1, -1);
    MEMORY[0x266759860](v27, -1, -1);
  }

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_2655E5F14(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2655E5F28()
{
  result = qword_280018130;
  if (!qword_280018130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018130);
  }

  return result;
}

unint64_t sub_2655E5F80()
{
  result = qword_280018138;
  if (!qword_280018138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018138);
  }

  return result;
}

unint64_t sub_2655E5FD8()
{
  result = qword_280018140;
  if (!qword_280018140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018140);
  }

  return result;
}

unint64_t sub_2655E6030()
{
  result = qword_280018148;
  if (!qword_280018148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018148);
  }

  return result;
}

unint64_t sub_2655E6088()
{
  result = qword_280018150;
  if (!qword_280018150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018150);
  }

  return result;
}

unint64_t sub_2655E60E0()
{
  result = qword_280018158;
  if (!qword_280018158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018158);
  }

  return result;
}

uint64_t sub_2655E6158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018170, &qword_2655E69F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_2655E6208(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_2655E6250()
{
  result = qword_280018180;
  if (!qword_280018180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018180);
  }

  return result;
}

uint64_t sub_2655E62D8(unint64_t a1, unint64_t a2, unint64_t a3)
{
  result = 0;
  if (a2)
  {
    v5 = a2 - a3;
    if (a2 > a3)
    {
      v6 = a1;
      if (!is_mul_ok(a1, v5))
      {
        sub_2655E60E0();
        swift_allocError();
        *v7 = 2;
        return swift_willThrow();
      }

      v8 = HIDWORD(a1);
      if (v8)
      {
        v9 = v6 * v5;
        result = v9 / v8;
        if (!(v9 % v8))
        {
          return result;
        }

        if (!__CFADD__(result++, 1))
        {
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      JUMPOUT(0x2655E637CLL);
    }
  }

  return result;
}