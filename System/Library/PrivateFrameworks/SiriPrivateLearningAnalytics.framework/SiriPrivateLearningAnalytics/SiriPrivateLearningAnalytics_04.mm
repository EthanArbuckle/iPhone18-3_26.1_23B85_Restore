uint64_t CoreAnalyticsLogger.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CoreAnalyticsLogger.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t UFLCoreAnalyticsLogLevel.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1);
  return sub_222B03168();
}

unint64_t sub_222A6ED8C()
{
  result = qword_27D01D6B8;
  if (!qword_27D01D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D6B8);
  }

  return result;
}

unint64_t sub_222A6EEE8()
{
  result = qword_280CB4AE8;
  if (!qword_280CB4AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB4AE8);
  }

  return result;
}

uint64_t sub_222A6EF34(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_222B02098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280CB4BF8 != -1)
  {
    swift_once();
  }

  v13 = byte_280CBC3C0;
  v14 = sub_222B020B8();
  v15 = sub_222B02A08();
  result = sub_222B02B08();
  if (v13 == 1)
  {
    if ((result & 1) == 0)
    {
LABEL_23:

      (*(v8 + 16))(v12, a4, v7);
      v20 = sub_222B02108();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      return sub_222B020F8();
    }

    if (a3)
    {
LABEL_12:
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (a1 >> 16 <= 0x10)
        {
          a1 = v23;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (a1)
    {
LABEL_16:
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_222B02078();
      v19 = "";
LABEL_22:
      _os_signpost_emit_with_name_impl(&dword_222A1C000, v14, v15, v18, a1, v19, v17, 2u);
      MEMORY[0x223DC7E30](v17, -1, -1);
      goto LABEL_23;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_12;
    }

LABEL_21:
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_222B02078();
    v19 = "enableTelemetry=YES";
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    a1 = &v24;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_222A6F1AC()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CBC458);
  __swift_project_value_buffer(v0, qword_280CBC458);
  return sub_222B02138();
}

uint64_t sub_222A6F228()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CBC3C8);
  __swift_project_value_buffer(v0, qword_280CBC3C8);
  return sub_222B02138();
}

uint64_t sub_222A6F2A8()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D0245F8);
  __swift_project_value_buffer(v0, qword_27D0245F8);
  return sub_222B02138();
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

uint64_t sub_222A6F410(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_222B02148();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222B020C8();
  __swift_allocate_value_buffer(v13, a2);
  __swift_project_value_buffer(v13, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v12, v14, v7);
  return sub_222B020A8();
}

void sub_222A6F544()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  byte_280CBC3C0 = v2;
}

void sub_222A6F5D4(const char *a1, uint64_t a2, char a3)
{
  if (qword_280CB4BF8 != -1)
  {
    swift_once();
  }

  v5 = byte_280CBC3C0;
  log = sub_222B020B8();
  v6 = sub_222B02A18();
  v7 = sub_222B02B08();
  if (v5 == 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (a3)
    {
      if (a1 >> 32)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (a1 >> 16 > 0x10)
      {
        goto LABEL_28;
      }

      a1 = &v12;
    }

    else if (!a1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_222B02078();
    v10 = "";
LABEL_25:
    _os_signpost_emit_with_name_impl(&dword_222A1C000, log, v6, v9, a1, v10, v8, 2u);
    MEMORY[0x223DC7E30](v8, -1, -1);

    return;
  }

LABEL_8:
  if (v7)
  {
    if ((a3 & 1) == 0)
    {
      if (!a1)
      {
        __break(1u);
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_31:
        __break(1u);
        return;
      }

      if (a1 >> 16 <= 0x10)
      {
        a1 = &v13;
LABEL_24:
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_222B02078();
        v10 = "enableTelemetry=YES";
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_12:
}

uint64_t PluginSchedulerRunResult.bundleName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PluginSchedulerRunResult.pluginResult.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

__n128 PluginSchedulerRunResult.init(bundleName:pluginResult:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t sub_222A6F824()
{
  v0 = sub_222A76A6C(&unk_2835F1608);
  result = sub_222A77DD0(&unk_2835F1628);
  qword_280CB9C30 = v0;
  return result;
}

uint64_t PluginScheduler.__allocating_init(queue:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_222A76BD4(a1);

  return v5;
}

uint64_t PluginScheduler.init(queue:)(void *a1)
{
  v2 = sub_222A76BD4(a1);

  return v2;
}

uint64_t sub_222A6F8E0(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  if (qword_280CB9568 != -1)
  {
    swift_once();
  }

  v5 = sub_222B01748();
  v6 = __swift_project_value_buffer(v5, qword_280CBC438);
  return sub_222A6F974(&v8, v6, a2, a3);
}

uint64_t sub_222A6F974(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v46 = a4;
  v39 = a2;
  v49 = sub_222B021D8();
  v51 = *(v49 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v49, v8);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_222B02238();
  v48 = *(v50 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v50, v11);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222B01748();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = sub_222B02268();
  v43 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v38 - v25;
  LOBYTE(a1) = *a1;
  v40 = *(v5 + 16);
  sub_222B02248();
  sub_222B02288();
  v27 = *(v18 + 8);
  v42 = v18 + 8;
  v44 = v27;
  v27(v23, v17);
  v28 = swift_allocObject();
  swift_weakInit();
  (*(v14 + 16))(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v13);
  v29 = (*(v14 + 80) + 41) & ~*(v14 + 80);
  v30 = swift_allocObject();
  v31 = v45;
  v32 = v46;
  *(v30 + 16) = v28;
  *(v30 + 24) = v31;
  *(v30 + 32) = v32;
  *(v30 + 40) = a1;
  (*(v14 + 32))(v30 + v29, &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  aBlock[4] = sub_222A77CC8;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_95;
  v33 = _Block_copy(aBlock);

  v34 = v41;
  sub_222B02208();
  v52 = MEMORY[0x277D84F90];
  sub_222A77D34(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  v35 = v47;
  v36 = v49;
  sub_222B02BB8();
  MEMORY[0x223DC6BC0](v26, v34, v35, v33);
  _Block_release(v33);
  (*(v51 + 8))(v35, v36);
  (*(v48 + 8))(v34, v50);
  v44(v26, v43);
}

uint64_t sub_222A6FE50(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v96 = a5;
  v97 = a3;
  v7 = sub_222B020C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222B02098();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v89 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v39 = sub_222B02148();
    __swift_project_value_buffer(v39, qword_280CBC458);
    v40 = sub_222B02128();
    v41 = sub_222B028E8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_222A1C000, v40, v41, "The scheduler was deallocated, cancelling the execution of plugins", v42, 2u);
      MEMORY[0x223DC7E30](v42, -1, -1);
    }

    if (qword_280CB8988 != -1)
    {
      swift_once();
    }

    v43 = swift_allocObject();
    v43[2] = a2;
    v43[3] = v97;
    v43[4] = MEMORY[0x277D84F90];

    sub_222AE8044(sub_222A772D0, v43);
  }

  v24 = Strong;
  v95 = v8;
  v25 = *__swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration), *(Strong + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration + 24));
  if ((sub_222ADD258() & 1) != 0 || !AFDeviceSupportsSiriUOD())
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v35 = sub_222B02148();
    __swift_project_value_buffer(v35, qword_280CBC458);
    v36 = sub_222B02128();
    v37 = sub_222B028D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_222A1C000, v36, v37, "Skipping SiriPrivateLearningAnalytics plugins run - device configuration is not supported", v38, 2u);
      MEMORY[0x223DC7E30](v38, -1, -1);
    }

    if (qword_280CB8988 == -1)
    {
      goto LABEL_17;
    }

LABEL_66:
    swift_once();
LABEL_17:
    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = v97;
    v34[4] = MEMORY[0x277D84F90];

LABEL_18:
    sub_222AE8044(sub_222A77EE8, v34);
  }

  v93 = a4;
  v94 = a2;
  v26 = *(v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector + 24);
  v27 = *(v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector + 32);
  __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector), v26);
  if ((*(v27 + 8))(v26, v27))
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v28 = sub_222B02148();
    __swift_project_value_buffer(v28, qword_280CBC458);
    v29 = sub_222B02128();
    v30 = sub_222B028D8();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v94;
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_222A1C000, v29, v30, "Skipping SiriPrivateLearningAnalytics plugins run - device is in low power mode", v33, 2u);
      MEMORY[0x223DC7E30](v33, -1, -1);
    }

    if (qword_280CB8988 != -1)
    {
      swift_once();
    }

    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = v97;
    v34[4] = MEMORY[0x277D84F90];

    goto LABEL_18;
  }

  if (qword_280CB8540 != -1)
  {
    swift_once();
  }

  v45 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_lockPath;
  sub_222A7BCAC(v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_lockPath);
  sub_222A79DEC(v24 + v45, 1, &v100);
  a2 = v94;
  if (!v101)
  {
    sub_222A34F20(&v100, &unk_27D01D6F0, &unk_222B08CB0);
    v66 = v93;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v67 = sub_222B02148();
    __swift_project_value_buffer(v67, qword_280CBC458);
    v68 = sub_222B02128();
    v69 = sub_222B028D8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_222A1C000, v68, v69, "The scheduler is not able to acquire the scheduling lock, the plugins might already be running", v70, 2u);
      v71 = v70;
      v66 = v93;
      MEMORY[0x223DC7E30](v71, -1, -1);
    }

    LOBYTE(v102[0]) = v66;
    sub_222A74E70(v102);
    if (qword_280CB8988 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

  sub_222A1E5A8(&v100, v102);
  v46 = v93;
  LOBYTE(v100) = v93;
  if (sub_222A74204(&v100))
  {
    v47 = v46 == 3;
    if (v46 == 3)
    {
      v48 = "runPluginScheduler";
    }

    else
    {
      v48 = "runPluginEventsScheduler";
    }

    if (v47)
    {
      v49 = 18;
    }

    else
    {
      v49 = 24;
    }

    if (qword_280CB79E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v7, qword_280CBC3F8);
    sub_222B02088();
    v50 = sub_222A6EF34(v48, v49, 2, v22);
    v92 = v49;
    v51 = v48;
    v52 = v50;
    v53 = *(v14 + 8);
    v91 = v14 + 8;
    v90 = v53;
    v53(v22, v13);
    sub_222A42E40(v102, &v100);
    v54 = swift_allocObject();
    v55 = v92;
    *(v54 + 16) = v51;
    *(v54 + 24) = v55;
    *(v54 + 32) = 2;
    *(v54 + 40) = v52;
    sub_222A1E5A8(&v100, v54 + 48);
    v92 = v54;
    v56 = v97;
    *(v54 + 88) = v94;
    *(v54 + 96) = v56;
    v99 = MEMORY[0x277D84F90];
    v57 = qword_280CB79E0;
    v94 = v52;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = v93;
    v59 = __swift_project_value_buffer(v7, qword_280CBC3E0);
    (*(v95 + 16))(v12, v59, v7);
    sub_222B02088();
    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = sub_222B020B8();
    v62 = sub_222B02A08();
    v63 = sub_222B02078();
    _os_signpost_emit_with_name_impl(&dword_222A1C000, v61, v62, v63, "loadPlugins", "", v60, 2u);
    if (v58 == 3)
    {
      v64 = v96;
      v65 = 0;
    }

    else
    {
      v65 = *(v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_eventBasedEnabledPlugins);
      v64 = v96;
    }

    v99 = sub_222AD07BC(v64, v65);
    v77 = sub_222B029F8();
    v78 = sub_222B02078();
    _os_signpost_emit_with_name_impl(&dword_222A1C000, v61, v77, v78, "loadPlugins", "", v60, 2u);

    MEMORY[0x223DC7E30](v60, -1, -1);
    v90(v19, v13);
    (*(v95 + 8))(v12, v7);
    sub_222A76634();
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v79 = sub_222B02148();
    __swift_project_value_buffer(v79, qword_280CBC458);
    v80 = sub_222B02128();
    v81 = sub_222B028D8();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v93;
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v98 = v85;
      *v84 = 136315138;
      if (v83 == 3)
      {
        v86 = 0xEB0000000065636ELL;
        v87 = 0x616E65746E69614DLL;
      }

      else
      {
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
        sub_222ACEB4C(v83);
        MEMORY[0x223DC66E0](93, 0xE100000000000000);
        v86 = *(&v100 + 1);
        v87 = v100;
      }

      v88 = sub_222A230FC(v87, v86, &v98);

      *(v84 + 4) = v88;
      _os_log_impl(&dword_222A1C000, v80, v81, "The scheduler is starting to run plugins with context=%s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x223DC7E30](v85, -1, -1);
      MEMORY[0x223DC7E30](v84, -1, -1);

      v83 = v93;
    }

    else
    {
    }

    LOBYTE(v100) = v83;
    sub_222A72574(&v100, v99, sub_222A77300, v92);

    __swift_destroy_boxed_opaque_existential_0(v102);
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v72 = sub_222B02148();
    __swift_project_value_buffer(v72, qword_280CBC458);
    v73 = sub_222B02128();
    v74 = sub_222B028D8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_222A1C000, v73, v74, "The scheduler is skipping running plugins, the current time is outside the threshold", v75, 2u);
      MEMORY[0x223DC7E30](v75, -1, -1);
    }

    if (qword_280CB8988 != -1)
    {
      swift_once();
    }

    v76 = swift_allocObject();
    v76[2] = a2;
    v76[3] = v97;
    v76[4] = MEMORY[0x277D84F90];

    sub_222AE8044(sub_222A77EE8, v76);

    return __swift_destroy_boxed_opaque_existential_0(v102);
  }
}

uint64_t sub_222A70E64(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v32 = a8;
  v33 = a7;
  v30 = a6;
  v31 = a1;
  v29 = a4;
  v9 = sub_222B020D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_222B02098();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CB79E8 != -1)
  {
    swift_once();
  }

  v21 = sub_222B020C8();
  __swift_project_value_buffer(v21, qword_280CBC3F8);
  v22 = sub_222B020B8();
  sub_222B020E8();
  v28 = sub_222B029F8();
  result = sub_222B02B08();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v29 & 1) == 0)
  {
    if (a2)
    {
LABEL_11:

      sub_222B02118();

      if ((*(v10 + 88))(v14, v9) == *MEMORY[0x277D85B00])
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v10 + 8))(v14, v9);
        v24 = "";
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_222B02078();
      _os_signpost_emit_with_name_impl(&dword_222A1C000, v22, v28, v26, a2, v24, v25, 2u);
      MEMORY[0x223DC7E30](v25, -1, -1);
LABEL_15:

      (*(v16 + 8))(v20, v15);
      v27 = *__swift_project_boxed_opaque_existential_1(v30, v30[3]);
      sub_222A7B5D0();
      return v33(v31);
    }

    __break(1u);
  }

  if (a2 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {
      a2 = &v34;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222A7116C(const char *a1, uint64_t a2, int a3)
{
  v23 = a3;
  v4 = sub_222B020D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222B02098();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CB79E8 != -1)
  {
    swift_once();
  }

  v16 = sub_222B020C8();
  __swift_project_value_buffer(v16, qword_280CBC3F8);
  v17 = sub_222B020B8();
  sub_222B020E8();
  v22 = sub_222B029F8();
  result = sub_222B02B08();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v23 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_222B02118();

      if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v9, v4);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_222B02078();
      _os_signpost_emit_with_name_impl(&dword_222A1C000, v17, v22, v21, a1, v19, v20, 2u);
      MEMORY[0x223DC7E30](v20, -1, -1);
LABEL_15:

      return (*(v11 + 8))(v15, v10);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v24;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222A71448(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v94 = a4;
  v88 = a9;
  v16 = sub_222B021D8();
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = *(v92 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v90 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = sub_222B02238();
  v89 = *(v91 - 8);
  v20 = *(v89 + 64);
  MEMORY[0x28223BE20](v91, v21);
  v23 = &v77[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_222B01748();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24, v26);
  v29 = &v77[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 >> 62)
  {
    v85 = v27;
    v74 = sub_222B02DC8();
    v27 = v85;
    if (v74 > a1)
    {
LABEL_3:
      v85 = v27;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v84 = a2;
        v83 = a6;
        v82 = a5;
        if ((a3 & 0xC000000000000001) != 0)
        {
          v30 = a7;
          v86 = MEMORY[0x223DC6F00](a1, a3);
LABEL_8:
          v31 = *(Strong + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector + 24);
          v32 = *(Strong + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector + 32);
          __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector), v31);
          if ((*(v32 + 8))(v31, v32))
          {
            v33 = v30;
            if (qword_280CBA628 != -1)
            {
              swift_once();
            }

            v34 = sub_222B02148();
            __swift_project_value_buffer(v34, qword_280CBC458);
            v35 = v86;

            v36 = sub_222B02128();
            v37 = sub_222B028D8();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              aBlock[0] = v39;
              *v38 = 136315394;
              v40 = [*(v35 + 32) bundleURL];
              sub_222B01718();

              v41 = sub_222B01698();
              v43 = v42;
              (*(v85 + 8))(v29, v24);
              v44 = sub_222A230FC(v41, v43, aBlock);

              *(v38 + 4) = v44;
              *(v38 + 12) = 2048;
              *(v38 + 14) = a1;
              _os_log_impl(&dword_222A1C000, v36, v37, "Stopping SiriPrivateLearningAnalytics plugin (%s) run from index %ld - device is in low power mode", v38, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v39);
              MEMORY[0x223DC7E30](v39, -1, -1);
              MEMORY[0x223DC7E30](v38, -1, -1);
            }

            v45 = v83;
            v94();
            v46 = v84;
            if (qword_280CB8988 != -1)
            {
              swift_once();
            }

            v47 = swift_allocObject();
            v47[2] = v45;
            v47[3] = v33;
            v47[4] = v46;

            sub_222AE8044(sub_222A77EE8, v47);
          }

          else
          {
            v81 = v30;
            if (qword_280CBA628 != -1)
            {
              swift_once();
            }

            v53 = sub_222B02148();
            __swift_project_value_buffer(v53, qword_280CBC458);
            v54 = v86;

            v55 = sub_222B02128();
            v56 = sub_222B028C8();

            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              v79 = v57;
              v80 = swift_slowAlloc();
              aBlock[0] = v80;
              *v57 = 136315138;
              v58 = [*(v54 + 32) bundleURL];
              v78 = v56;
              v59 = v58;
              sub_222B01718();

              v60 = sub_222B01698();
              v62 = v61;
              (*(v85 + 8))(v29, v24);
              v63 = sub_222A230FC(v60, v62, aBlock);

              v64 = v79;
              *(v79 + 1) = v63;
              v65 = v64;
              _os_log_impl(&dword_222A1C000, v55, v78, "Starting plugin run for %s", v64, 0xCu);
              v66 = v80;
              __swift_destroy_boxed_opaque_existential_0(v80);
              MEMORY[0x223DC7E30](v66, -1, -1);
              MEMORY[0x223DC7E30](v65, -1, -1);
            }

            v67 = v84;
            v85 = *(Strong + 16);
            v68 = swift_allocObject();
            *(v68 + 16) = v54;
            *(v68 + 24) = v88;
            *(v68 + 32) = v67;
            *(v68 + 40) = a3;
            v69 = v82;
            *(v68 + 48) = v94;
            *(v68 + 56) = v69;
            v70 = v81;
            *(v68 + 64) = v83;
            *(v68 + 72) = v70;
            *(v68 + 80) = a8;
            *(v68 + 88) = a1;
            aBlock[4] = sub_222A7787C;
            aBlock[5] = v68;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_222AD9FB4;
            aBlock[3] = &block_descriptor_6;
            v71 = _Block_copy(aBlock);

            sub_222B02208();
            v95 = MEMORY[0x277D84F90];
            sub_222A77D34(qword_280CBA240, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
            sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
            v72 = v90;
            v73 = v93;
            sub_222B02BB8();
            MEMORY[0x223DC6BE0](0, v23, v72, v71);
            _Block_release(v71);

            (*(v92 + 8))(v72, v73);
            (*(v89 + 8))(v23, v91);
          }
        }

        if (a1 < 0)
        {
          __break(1u);
        }

        else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v30 = a7;
          v86 = *(a3 + 8 * a1 + 32);

          goto LABEL_8;
        }

        __break(1u);
      }

      else if (qword_280CBA628 == -1)
      {
LABEL_17:
        v48 = sub_222B02148();
        __swift_project_value_buffer(v48, qword_280CBC458);
        v49 = sub_222B02128();
        v50 = sub_222B028E8();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_222A1C000, v49, v50, "The scheduler was deallocated, cancelling the execution of plugins", v51, 2u);
          MEMORY[0x223DC7E30](v51, -1, -1);
        }

        v94();
        if (qword_280CB8988 != -1)
        {
          swift_once();
        }

        v52 = swift_allocObject();
        v52[2] = a6;
        v52[3] = a7;
        v52[4] = a2;

        sub_222AE8044(sub_222A77EE8, v52);
      }

      swift_once();
      goto LABEL_17;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    goto LABEL_3;
  }

  v94();
  if (qword_280CB8988 != -1)
  {
    swift_once();
  }

  v75 = swift_allocObject();
  v75[2] = a6;
  v75[3] = a7;
  v75[4] = a2;

  sub_222AE8044(sub_222A77EE8, v75);
}

uint64_t sub_222A71F10(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = *(a1 + 16);
  v17 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v24 = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  *(v18 + 80) = a2;
  *(v18 + 88) = a10;
  v21 = *(v17 + 16);

  v21(&v24, sub_222A77910, v18, ObjectType, v17);
}

uint64_t sub_222A72054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  v60 = a7;
  v61 = a8;
  v58 = a5;
  v59 = a6;
  v57 = a4;
  v62 = a3;
  v13 = sub_222B01748();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v20 = *(a1 + 8);
  v22 = &off_2784BA000;
  v23 = &unk_280CBA000;
  v63 = v17;
  if (!v20)
  {
    goto LABEL_6;
  }

  v56 = v21;
  if (qword_280CBA628 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v24 = sub_222B02148();
    __swift_project_value_buffer(v24, qword_280CBC458);

    v25 = sub_222B02128();
    v26 = sub_222B028E8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v64 = v14;
      v29 = v28;
      v66 = v28;
      *v27 = 136315394;
      v30 = [*(a2 + 32) v22[255]];
      sub_222B01718();

      v31 = sub_222B01698();
      v33 = v32;
      (*(v64 + 8))(v19, v63);
      v34 = sub_222A230FC(v31, v33, &v66);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2080;
      v21 = v56;
      v65[0] = v56;
      v65[1] = v20;

      v35 = sub_222B023D8();
      v37 = sub_222A230FC(v35, v36, &v66);

      *(v27 + 14) = v37;
      v22 = &off_2784BA000;
      _os_log_impl(&dword_222A1C000, v25, v26, "Error running plugin. Bundle: %s; Error: %s", v27, 0x16u);
      swift_arrayDestroy();
      v38 = v29;
      v14 = v64;
      MEMORY[0x223DC7E30](v38, -1, -1);
      v39 = v27;
      v13 = v63;
      MEMORY[0x223DC7E30](v39, -1, -1);

      v23 = &unk_280CBA000;
    }

    else
    {

      v23 = &unk_280CBA000;
      v21 = v56;
    }

LABEL_6:
    v40 = v22[255];
    v56 = *(a2 + 32);
    v41 = [v56 v40];
    sub_222B01718();

    v42 = sub_222B01698();
    v44 = v43;
    v22 = *(v14 + 8);
    v64 = v14 + 8;
    (v22)(v19, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CAA0, &unk_222B08CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222B05250;
    *(inited + 32) = v42;
    *(inited + 40) = v44;
    *(inited + 48) = v21;
    *(inited + 56) = v20;
    v65[0] = v62;

    sub_222A96CE4(inited);
    v20 = v65[0];
    if (v23[197] != -1)
    {
      swift_once();
    }

    v14 = a11;
    v46 = sub_222B02148();
    __swift_project_value_buffer(v46, qword_280CBC458);

    v47 = sub_222B02128();
    v13 = sub_222B028C8();

    if (os_log_type_enabled(v47, v13))
    {
      v48 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      v65[0] = a2;
      *v48 = 136315138;
      v49 = [v56 bundleURL];
      sub_222B01718();

      v50 = sub_222B01698();
      v52 = v51;
      (v22)(v19, v63);
      v53 = sub_222A230FC(v50, v52, v65);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_222A1C000, v47, v13, "Finished plugin run for %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a2);
      MEMORY[0x223DC7E30](a2, -1, -1);
      MEMORY[0x223DC7E30](v48, -1, -1);
    }

    if (!__OFADD__(a11, 1))
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  sub_222A71448(a11 + 1, v20, v57, v58, v59, v60, v61, a9, a10);
}

uint64_t sub_222A72574(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a2;
  v9 = sub_222B02098();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = v15;
  v17 = qword_280CB79E8;

  if (v17 != -1)
  {
    swift_once();
  }

  if (v15 == 3)
  {
    v18 = 10;
  }

  else
  {
    v18 = 16;
  }

  if (v15 == 3)
  {
    v19 = "runPlugins";
  }

  else
  {
    v19 = "runPluginsEvents";
  }

  v20 = sub_222B020C8();
  __swift_project_value_buffer(v20, qword_280CBC3F8);
  sub_222B02088();
  v21 = sub_222A6EF34(v19, v18, 2, v14);
  (*(v10 + 8))(v14, v9);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v18;
  *(v22 + 32) = 2;
  *(v22 + 40) = v21;
  v23 = swift_allocObject();
  swift_weakInit();

  sub_222A71448(0, MEMORY[0x277D84F90], v26, sub_222A7786C, v22, sub_222A7785C, v16, v23, v15);
}

uint64_t sub_222A727E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v18 - v12;
  v14 = sub_222B02768();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v15;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  *(v16 + 56) = a1;
  *(v16 + 64) = a5;

  sub_222A72FE8(0, 0, v13, &unk_222B08CE8, v16);
}

uint64_t sub_222A72944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 97) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  return MEMORY[0x2822009F8](sub_222A7296C, 0, 0);
}

uint64_t sub_222A7296C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    *(v0 + 96) = *(v0 + 97);
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_222A72B38;

    return sub_222A735C0((v0 + 96));
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_280CBC458);
    v6 = sub_222B02128();
    v7 = sub_222B028E8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_222A1C000, v6, v7, "The scheduler was deallocated, cancelling the execution of the user feedback learning platform", v8, 2u);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);

    v11(v9);
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_222A72B38(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_222A72C38, 0, 0);
}

uint64_t sub_222A72C38()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v7 = v0[8];

  sub_222A96CE4(v1);
  v4(v7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_222A72CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_222A77A30(a3, v28 - v12);
  v14 = sub_222B02768();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_222A34F20(v13, &qword_27D01D720, &qword_222B07760);
  }

  else
  {
    sub_222B02758();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_222B026E8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_222B02408() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D738, &qword_222B08D40);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v25 = swift_task_create();

      sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);

      return v25;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D738, &qword_222B08D40);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_222A72FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_222A77A30(a3, v28 - v12);
  v14 = sub_222B02768();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_222A34F20(v13, &qword_27D01D720, &qword_222B07760);
  }

  else
  {
    sub_222B02758();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_222B026E8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_222B02408() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_222A732D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_222A77A30(a3, v28 - v12);
  v14 = sub_222B02768();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_222A34F20(v13, &qword_27D01D720, &qword_222B07760);
  }

  else
  {
    sub_222B02758();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_222B026E8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_222B02408() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_222A735C0(_BYTE *a1)
{
  *(v2 + 192) = v1;
  v4 = sub_222B020D8();
  *(v2 + 200) = v4;
  v5 = *(v4 - 8);
  *(v2 + 208) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  v7 = sub_222B02098();
  *(v2 + 224) = v7;
  v8 = *(v7 - 8);
  *(v2 + 232) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 304) = *a1;

  return MEMORY[0x2822009F8](sub_222A736F4, 0, 0);
}

uint64_t sub_222A736F4()
{
  v45 = v0;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = sub_222B02148();
  *(v0 + 256) = __swift_project_value_buffer(v1, qword_280CBC458);
  v2 = sub_222B02128();
  v3 = sub_222B028D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v43 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_222A230FC(0xD000000000000029, 0x8000000222B125C0, &v43);
    _os_log_impl(&dword_222A1C000, v2, v3, "PluginScheduler.%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DC7E30](v5, -1, -1);
    MEMORY[0x223DC7E30](v4, -1, -1);
  }

  v6 = (*(v0 + 192) + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_featureFlags);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  *(v0 + 96) = &type metadata for SiriPrivateLearningFeatureFlag;
  *(v0 + 104) = sub_222A36228();
  *(v0 + 72) = 13;
  v9 = (*(v8 + 8))(v0 + 72, v7, v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  if (v9)
  {
    if (*(v0 + 304) == 3)
    {
      v10 = *(v0 + 192);
      LOBYTE(v43) = 0;
      sub_222A42E40(v10 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_usageLogger, v0 + 112);
      SiriUserFeedbackLearningTask.init(context:usageLogger:)(&v43, (v0 + 112), v0 + 16);
      if (qword_280CB79E8 != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 248);
      v31 = *(v0 + 224);
      v32 = *(v0 + 232);
      v33 = *(v0 + 192);
      v34 = sub_222B020C8();
      *(v0 + 264) = __swift_project_value_buffer(v34, qword_280CBC3F8);
      sub_222B02088();
      *(v0 + 272) = sub_222A6EF34("runUserFeedbackLearningPlatform", 31, 2, v30);
      v35 = *(v32 + 8);
      *(v0 + 280) = v35;
      *(v0 + 288) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v35(v30, v31);
      v36 = *(v33 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform + 24);
      v37 = *(v33 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform + 32);
      __swift_project_boxed_opaque_existential_1((v33 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform), v36);
      v38 = *(v37 + 16);
      v41 = (v38 + *v38);
      v39 = v38[1];
      v40 = swift_task_alloc();
      *(v0 + 296) = v40;
      *v40 = v0;
      v40[1] = sub_222A73DEC;

      return v41(v0 + 152, v0 + 16, v36, v37);
    }

    v18 = sub_222B02128();
    v19 = sub_222B028E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 304);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42 = v22;
      v43 = 0;
      *v21 = 136315138;
      v44 = 0xE000000000000000;
      MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
      sub_222ACEB4C(v20);
      MEMORY[0x223DC66E0](93, 0xE100000000000000);
      v23 = sub_222A230FC(v43, v44, &v42);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_222A1C000, v18, v19, "Error: context is %s, only maintenance context is supported by the User Feedback Learning platform", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DC7E30](v22, -1, -1);
      MEMORY[0x223DC7E30](v21, -1, -1);
    }
  }

  else
  {
    v11 = sub_222B02128();
    v12 = sub_222B028D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v43 = v14;
      *v13 = 136315138;
      v15 = sub_222B02C98();
      v17 = sub_222A230FC(v15, v16, &v43);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_222A1C000, v11, v12, "%s is not enabled", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DC7E30](v14, -1, -1);
      MEMORY[0x223DC7E30](v13, -1, -1);
    }
  }

  v25 = *(v0 + 240);
  v24 = *(v0 + 248);
  v26 = *(v0 + 216);

  v27 = *(v0 + 8);
  v28 = MEMORY[0x277D84F90];

  return v27(v28);
}

uint64_t sub_222A73DEC()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222A73EE8, 0, 0);
}

uint64_t sub_222A73EE8()
{
  v40 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];
  v7 = sub_222B020B8();
  sub_222B020E8();
  v8 = sub_222B029F8();
  if (sub_222B02B08())
  {
    v9 = v0[34];
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];

    sub_222B02118();

    if ((*(v11 + 88))(v10, v12) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[26] + 8))(v0[27], v0[25]);
      v13 = "";
    }

    v14 = v0[30];
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_222B02078();
    _os_signpost_emit_with_name_impl(&dword_222A1C000, v7, v8, v16, "runUserFeedbackLearningPlatform", v13, v15, 2u);
    MEMORY[0x223DC7E30](v15, -1, -1);
  }

  v18 = v0[35];
  v17 = v0[36];
  v19 = v0[30];
  v20 = v0[28];

  v18(v19, v20);
  if (v6)
  {
    v21 = v0[32];
    v22 = v6;
    v23 = v6;
    v24 = sub_222B02128();
    v25 = sub_222B028E8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39[0] = v27;
      *v26 = 136315138;
      v0[23] = v6;
      v28 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v29 = sub_222B023D8();
      v31 = sub_222A230FC(v29, v30, v39);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_222A1C000, v24, v25, "Error running user feedback platform: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DC7E30](v27, -1, -1);
      MEMORY[0x223DC7E30](v26, -1, -1);
    }

    else
    {
    }
  }

  v32 = v0[34];
  v39[0] = v4;
  v39[1] = v5;
  v39[2] = v6;
  v33 = SiriUserFeedbackLearningPlatformResult.toSchedulerResult()();

  sub_222A4DEB8((v0 + 2));

  v35 = v0[30];
  v34 = v0[31];
  v36 = v0[27];

  v37 = v0[1];

  return v37(v33);
}

uint64_t sub_222A74204(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_222B01848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v62[-v12];
  v14 = *a1;
  if (v14 != 3)
  {
    v68 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath;
    v15 = sub_222A77318(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath);
    if (!v15)
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v36 = sub_222B02148();
      __swift_project_value_buffer(v36, qword_280CBC458);
      v37 = sub_222B02128();
      v38 = sub_222B028D8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_222A1C000, v37, v38, "Cannot retrieve the scheduler timestamp, the scheduler might not have run before", v39, 2u);
        MEMORY[0x223DC7E30](v39, -1, -1);
      }

      v71 = 0;
      v72 = 0xE000000000000000;
      MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
      sub_222ACEB4C(v14);
      MEMORY[0x223DC66E0](93, 0xE100000000000000);
      v40 = v71;
      v41 = v72;
      v42 = type metadata accessor for PluginSchedulerTimestamp();
      v43 = objc_allocWithZone(v42);
      v44 = &v43[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler];
      *v44 = v40;
      v44[1] = v41;
      *&v43[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_timestamp] = 0;
      v69.receiver = v43;
      v69.super_class = v42;
      v19 = objc_msgSendSuper2(&v69, sel_init);
      goto LABEL_20;
    }

    v16 = v15;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v17 = sub_222B02148();
    v18 = __swift_project_value_buffer(v17, qword_280CBC458);
    v19 = v16;
    v67 = v18;
    v20 = sub_222B02128();
    v21 = sub_222B028D8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v65 = v22;
      v66 = swift_slowAlloc();
      v71 = v66;
      *v22 = 136315138;
      v23 = [v19 debugDescription];
      v64 = v20;
      v24 = v23;
      v25 = sub_222B02388();
      v63 = v21;
      v26 = v2;
      v27 = v25;
      v29 = v28;

      v30 = v27;
      v2 = v26;
      v31 = sub_222A230FC(v30, v29, &v71);

      v33 = v64;
      v32 = v65;
      *(v65 + 1) = v31;
      v34 = v32;
      _os_log_impl(&dword_222A1C000, v33, v63, "The scheduler retrieved the previous timestamp: %s", v32, 0xCu);
      v35 = v66;
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x223DC7E30](v35, -1, -1);
      MEMORY[0x223DC7E30](v34, -1, -1);
    }

    else
    {
    }

    sub_222B01838();
    v45 = *&v19[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_timestamp];
    sub_222B017B8();
    sub_222B017D8();
    v47 = v46;
    v48 = *(v5 + 8);
    v48(v10, v4);
    v48(v13, v4);
    if (v47 <= 30.0 || v47 >= 172800.0)
    {
      v50 = sub_222B02128();
      v51 = sub_222B028D8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        *(v52 + 4) = v47;
        _os_log_impl(&dword_222A1C000, v50, v51, "The scheduler time delta is outside the threshold, delta=%f", v52, 0xCu);
        MEMORY[0x223DC7E30](v52, -1, -1);
      }

LABEL_20:
      sub_222A747CC(v2 + v68);
      v53 = 0;
      goto LABEL_26;
    }
  }

  sub_222B01838();
  sub_222B017C8();
  v55 = v54;
  (*(v5 + 8))(v13, v4);
  if (v14 == 3)
  {
    v56 = 0xEB0000000065636ELL;
    v57 = 0x616E65746E69614DLL;
  }

  else
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
    sub_222ACEB4C(v14);
    MEMORY[0x223DC66E0](93, 0xE100000000000000);
    v57 = v71;
    v56 = v72;
  }

  v58 = type metadata accessor for PluginSchedulerTimestamp();
  v59 = objc_allocWithZone(v58);
  v60 = &v59[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler];
  *v60 = v57;
  v60[1] = v56;
  *&v59[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_timestamp] = v55;
  v70.receiver = v59;
  v70.super_class = v58;
  v19 = objc_msgSendSuper2(&v70, sel_init);
  sub_222A747CC(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath);
  v53 = 1;
LABEL_26:

  return v53;
}

void sub_222A747CC(uint64_t a1)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v3 = sub_222B01748();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v9 = sub_222B02148();
  __swift_project_value_buffer(v9, qword_280CBC458);
  (*(v4 + 16))(v8, a1, v3);
  v10 = v1;
  v11 = sub_222B02128();
  v12 = sub_222B028D8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55[0] = v52;
    *v13 = 136315394;
    v14 = [v10 debugDescription];
    v51 = v12;
    v15 = v14;
    v16 = sub_222B02388();
    v53 = a1;
    v17 = v16;
    v19 = v18;

    v20 = sub_222A230FC(v17, v19, v55);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    v21 = sub_222B01738();
    v23 = v22;
    (*(v4 + 8))(v8, v3);
    v24 = sub_222A230FC(v21, v23, v55);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_222A1C000, v11, v51, "Updating timestamp to %s, path=%s", v13, 0x16u);
    v25 = v52;
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v25, -1, -1);
    MEMORY[0x223DC7E30](v13, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v8, v3);
  }

  v26 = objc_opt_self();
  v55[0] = 0;
  v27 = [v26 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v55];
  v28 = v55[0];
  if (v27)
  {
    v29 = sub_222B01798();
    v31 = v30;

    sub_222B017A8();
    sub_222A26530(v29, v31);
  }

  else
  {
    v32 = v28;
    v33 = sub_222B01628();

    swift_willThrow();
    v34 = v10;
    v35 = v33;
    v36 = sub_222B02128();
    v37 = sub_222B028E8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55[0] = v39;
      *v38 = 136315394;
      v40 = [v34 debugDescription];
      v41 = sub_222B02388();
      v43 = v42;

      v44 = sub_222A230FC(v41, v43, v55);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2080;
      v54 = v33;
      v45 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v46 = sub_222B023D8();
      v48 = sub_222A230FC(v46, v47, v55);

      *(v38 + 14) = v48;
      _os_log_impl(&dword_222A1C000, v36, v37, "Cannot encode timestamp, timestamp=%s, error=%s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v39, -1, -1);
      MEMORY[0x223DC7E30](v38, -1, -1);
    }

    else
    {
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_222A74E70(unsigned __int8 *a1)
{
  v99[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v88 - v5;
  v7 = sub_222B01848();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v88 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v88 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v88 - v23;
  v96 = *a1;
  sub_222B01738();
  v25 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v26 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v27 = [v25 initFileURLWithPath_];

  v28 = *MEMORY[0x277CBE7B0];
  v97 = 0;
  v99[0] = 0;
  v29 = [v27 getResourceValue:&v97 forKey:v28 error:v99];
  v30 = v97;
  if (v29)
  {
    v31 = v99[0];
    swift_unknownObjectRetain();

    if (v30)
    {
      v97 = v30;
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        (*(v8 + 56))(v6, 0, 1, v7);
        (*(v8 + 32))(v24, v6, v7);
        sub_222B01838();
        sub_222B017D8();
        v33 = v32;
        v34 = v8 + 8;
        v35 = *(v8 + 8);
        v35(v21, v7);
        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v36 = sub_222B02148();
        v37 = __swift_project_value_buffer(v36, qword_280CBC458);
        v92 = *(v8 + 16);
        v92(v17, v24, v7);
        v93 = v37;
        v38 = sub_222B02128();
        v91 = sub_222B028D8();
        if (os_log_type_enabled(v38, v91))
        {
          v39 = swift_slowAlloc();
          v89 = v39;
          v90 = swift_slowAlloc();
          v97 = v90;
          *v39 = 136315394;
          v40 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v95 = v8 + 8;
          v41 = v40;
          v42 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
          v88 = v38;
          v43 = v42;
          [v41 setDateFormat_];

          v44 = sub_222B017F8();
          v45 = [v41 stringFromDate_];
          v94 = v35;
          v46 = v13;
          v47 = v45;

          v48 = sub_222B02388();
          v50 = v49;

          v34 = v95;
          v13 = v46;
          v35 = v94;
          v94(v17, v7);
          v51 = sub_222A230FC(v48, v50, &v97);

          v53 = v88;
          v52 = v89;
          *(v89 + 1) = v51;
          *(v52 + 6) = 2048;
          *(v52 + 14) = v33;
          v54 = v52;
          _os_log_impl(&dword_222A1C000, v53, v91, "The scheduler retrieved the timestamp of the previous run: %s, delta=%f", v52, 0x16u);
          v55 = v90;
          __swift_destroy_boxed_opaque_existential_0(v90);
          MEMORY[0x223DC7E30](v55, -1, -1);
          MEMORY[0x223DC7E30](v54, -1, -1);
        }

        else
        {

          v35(v17, v7);
        }

        if (v33 <= 172800.0)
        {
          v35(v24, v7);
          swift_unknownObjectRelease_n();
          goto LABEL_20;
        }

        v92(v13, v24, v7);
        v70 = sub_222B02128();
        v71 = sub_222B028F8();
        if (os_log_type_enabled(v70, v71))
        {
          LODWORD(v93) = v71;
          v94 = v35;
          v72 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v99[0] = v92;
          *v72 = 136315394;
          v73 = v96;
          v95 = v34;
          if (v96 == 3)
          {
            v74 = 0xEB0000000065636ELL;
            v75 = 0x616E65746E69614DLL;
          }

          else
          {
            v97 = 0;
            v98 = 0xE000000000000000;
            MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
            sub_222ACEB4C(v73);
            MEMORY[0x223DC66E0](93, 0xE100000000000000);
            v75 = v97;
            v74 = v98;
          }

          v76 = sub_222A230FC(v75, v74, v99);

          *(v72 + 4) = v76;
          *(v72 + 12) = 2080;
          v77 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v78 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
          [v77 setDateFormat_];

          v79 = sub_222B017F8();
          v80 = v13;
          v81 = [v77 stringFromDate_];

          v82 = sub_222B02388();
          v84 = v83;

          v85 = v94;
          v94(v80, v7);
          v86 = sub_222A230FC(v82, v84, v99);

          *(v72 + 14) = v86;
          _os_log_impl(&dword_222A1C000, v70, v93, "The scheduler with context %s was unable to acquire the scheduling lock, the previous run timestamp: %s", v72, 0x16u);
          v87 = v92;
          swift_arrayDestroy();
          MEMORY[0x223DC7E30](v87, -1, -1);
          MEMORY[0x223DC7E30](v72, -1, -1);
          swift_unknownObjectRelease();

          v85(v24, v7);
        }

        else
        {
          swift_unknownObjectRelease();

          v35(v13, v7);
          v35(v24, v7);
        }

        goto LABEL_13;
      }

      swift_unknownObjectRelease();
      (*(v8 + 56))(v6, 1, 1, v7);
      sub_222A34F20(v6, &qword_27D01D700, &qword_222B07320);
    }

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v66 = sub_222B02148();
    __swift_project_value_buffer(v66, qword_280CBC458);
    v60 = sub_222B02128();
    v67 = sub_222B028E8();
    if (os_log_type_enabled(v60, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_222A1C000, v60, v67, "The scheduler was not able to convert the timestamp to Date", v68, 2u);
      MEMORY[0x223DC7E30](v68, -1, -1);
    }

LABEL_19:
    swift_unknownObjectRelease();

    goto LABEL_20;
  }

  v56 = v99[0];
  swift_unknownObjectRetain();
  v57 = sub_222B01628();

  swift_willThrow();
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v58 = sub_222B02148();
  __swift_project_value_buffer(v58, qword_280CBC458);
  v59 = v57;
  v60 = sub_222B02128();
  v61 = sub_222B028E8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    v64 = v57;
    v65 = _swift_stdlib_bridgeErrorToNSError();
    *(v62 + 4) = v65;
    *v63 = v65;
    _os_log_impl(&dword_222A1C000, v60, v61, "The scheduler was not able to retrieve the timestamp, error=%@", v62, 0xCu);
    sub_222A34F20(v63, &qword_27D01E4B0, &qword_222B0A530);
    MEMORY[0x223DC7E30](v63, -1, -1);
    MEMORY[0x223DC7E30](v62, -1, -1);

    goto LABEL_19;
  }

LABEL_13:
  swift_unknownObjectRelease();
LABEL_20:
  v69 = *MEMORY[0x277D85DE8];
}

uint64_t PluginScheduler.deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_lockPath;
  v2 = sub_222B01748();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector));
  v4 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_eventBasedEnabledPlugins);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_usageLogger));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform));
  return v0;
}

uint64_t PluginScheduler.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_lockPath;
  v2 = sub_222B01748();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector));
  v4 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_eventBasedEnabledPlugins);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_usageLogger));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform));
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_222A75B10(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v10 = *a1;
  if (qword_280CB9568 != -1)
  {
    swift_once();
  }

  v7 = sub_222B01748();
  v8 = __swift_project_value_buffer(v7, qword_280CBC438);
  return sub_222A6F974(&v10, v8, a2, a3);
}

void sub_222A75BC0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler);
  v4 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler + 8);
  v5 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_timestamp);
  v8 = sub_222B027B8();
  v9 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v8 forKey:v9];
}

id sub_222A75D1C(void *a1)
{
  sub_222A250BC(0, &unk_280CB83F0, 0x277CCACA8);
  v2 = sub_222B02AB8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_222B02388();
    v6 = v5;

    sub_222A250BC(0, &qword_280CB8400, 0x277CCABB0);
    v7 = sub_222B02AB8();
    if (v7)
    {
      v8 = v7;
      [v7 doubleValue];
      v10 = v9;
      v11 = type metadata accessor for PluginSchedulerTimestamp();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler];
      *v13 = v4;
      v13[1] = v6;
      *&v12[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_timestamp] = v10;
      v16.receiver = v12;
      v16.super_class = v11;
      v14 = objc_msgSendSuper2(&v16, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v14;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_222A75F2C()
{
  v1 = sub_222B01848();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_timestamp);
  sub_222B017B8();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_222B02C88();
  MEMORY[0x223DC66E0](0xD000000000000025, 0x8000000222B12550);
  MEMORY[0x223DC66E0](*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler + 8));
  MEMORY[0x223DC66E0](0x73656D6974202C22, 0xEE00203A706D6174);
  v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v9 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [v8 setDateFormat_];

  v10 = sub_222B017F8();
  v11 = [v8 stringFromDate_];

  v12 = sub_222B02388();
  v14 = v13;

  MEMORY[0x223DC66E0](v12, v14);

  MEMORY[0x223DC66E0](41, 0xE100000000000000);
  v15 = v17[0];
  (*(v2 + 8))(v6, v1);
  return v15;
}

id sub_222A76180()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PluginSchedulerTimestamp();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222A761C8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222A7625C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A77EE0;

  return v7(a1);
}

uint64_t sub_222A76354(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A7644C;

  return v7(a1);
}

uint64_t sub_222A7644C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_222A7656C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_222A765D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_222B02DC8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_222B02CC8();
}

void sub_222A76634()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_32;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2 > 1)
  {
    do
    {
      v3 = 0;
      v4 = v2 - 2;
      while (1)
      {
        v17 = 0;
        MEMORY[0x223DC7E50](&v17, 8);
        v6 = (v17 * v2) >> 64;
        if (v2 > v17 * v2)
        {
          v7 = -v2 % v2;
          if (v7 > v17 * v2)
          {
            do
            {
              v17 = 0;
              MEMORY[0x223DC7E50](&v17, 8);
            }

            while (v7 > v17 * v2);
            v6 = (v17 * v2) >> 64;
          }
        }

        v8 = v3 + v6;
        if (__OFADD__(v3, v6))
        {
          break;
        }

        if (v3 != v8)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x223DC6F00](v3, v1);
            v11 = MEMORY[0x223DC6F00](v8, v1);
          }

          else
          {
            v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v9)
            {
              goto LABEL_29;
            }

            if (v8 >= v9)
            {
              goto LABEL_30;
            }

            v10 = *(v1 + 32 + 8 * v3);
            v11 = *(v1 + 32 + 8 * v8);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
          {
            v1 = sub_222A765D0(v1);
            v12 = (v1 >> 62) & 1;
          }

          else
          {
            LODWORD(v12) = 0;
          }

          v13 = v1 & 0xFFFFFFFFFFFFFF8;
          v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
          *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v11;

          if ((v1 & 0x8000000000000000) != 0 || v12)
          {
            v1 = sub_222A765D0(v1);
            v13 = v1 & 0xFFFFFFFFFFFFFF8;
            if ((v8 & 0x8000000000000000) != 0)
            {
LABEL_27:
              __break(1u);
              break;
            }
          }

          else if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          if (v8 >= *(v13 + 16))
          {
            goto LABEL_31;
          }

          v15 = v13 + 8 * v8;
          v16 = *(v15 + 32);
          *(v15 + 32) = v10;

          *v0 = v1;
        }

        --v2;
        if (v3++ == v4)
        {
          return;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      if (sub_222B02DC8() < 2)
      {
        break;
      }

      v2 = sub_222B02DC8();
    }

    while (v2 >= 2);
  }
}

uint64_t sub_222A76848(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_222A7693C;

  return v6(v2 + 16);
}

uint64_t sub_222A7693C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_222A76A6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D730, qword_222B0E750);
    v3 = sub_222B02C38();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_222B03128();

      sub_222B02448();
      result = sub_222B03168();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_222B02F78();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_222A76BD4(void *a1)
{
  v2 = v1;
  v4 = sub_222B01748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  v10 = a1;
  sub_222B01688();
  v11 = *(v5 + 32);
  v11(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_lockPath, v9, v4);
  sub_222B01688();
  v11(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath, v9, v4);
  v12 = type metadata accessor for DefaultDeviceConfiguration();
  swift_allocObject();
  v13 = sub_222ADD0B0();
  v14 = (v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration);
  v14[3] = v12;
  v14[4] = &off_2835F8A98;
  *v14 = v13;
  v15 = [objc_opt_self() processInfo];
  v16 = (v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector);
  v16[3] = sub_222A250BC(0, &qword_280CB8458, 0x277CCAC38);
  v16[4] = &off_2835F4FF8;
  *v16 = v15;
  if (qword_280CB9C20 != -1)
  {
    swift_once();
  }

  *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_eventBasedEnabledPlugins) = qword_280CB9C30;
  *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_minEventBasedProcessingThreshold) = 0x403E000000000000;
  *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_maxEventBasedProcessingThreshold) = 0x4105180000000000;
  v17 = v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_featureFlags;
  *(v17 + 24) = &type metadata for EnvironmentFeatureFlags;
  *(v17 + 32) = &protocol witness table for EnvironmentFeatureFlags;
  v18 = v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_usageLogger;
  *(v18 + 24) = &type metadata for UsageLogger;
  *(v18 + 32) = &protocol witness table for UsageLogger;
  v19 = v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform;
  *(v19 + 24) = &type metadata for SiriUserFeedbackLearningMLRuntimePlatform;
  *(v19 + 32) = &protocol witness table for SiriUserFeedbackLearningMLRuntimePlatform;

  return v2;
}

uint64_t _s28SiriPrivateLearningAnalytics15PluginSchedulerCACycfC_0()
{
  v18 = sub_222B02988();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v18, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222B02968();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = sub_222B02238();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v17[1] = sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  sub_222B02218();
  v19 = MEMORY[0x277D84F90];
  sub_222A77D34(&unk_280CBA210, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D728, &unk_222B08D20);
  sub_222A77D7C(&unk_280CBA220, &qword_27D01D728, &unk_222B08D20);
  sub_222B02BB8();
  (*(v0 + 104))(v4, *MEMORY[0x277D85260], v18);
  v11 = sub_222B029A8();
  v12 = type metadata accessor for PluginScheduler();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_222A76BD4(v11);

  return v15;
}

uint64_t type metadata accessor for PluginScheduler()
{
  result = qword_280CB9BE8;
  if (!qword_280CB9BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A7718C()
{
  result = sub_222B01748();
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

uint64_t sub_222A77318(uint64_t a1)
{
  v2 = sub_222B01748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  v10 = sub_222B01758();
  v12 = v11;
  sub_222A250BC(0, &qword_280CB8440, 0x277CCAAC8);
  type metadata accessor for PluginSchedulerTimestamp();
  v13 = sub_222B02918();
  if (v13)
  {
    v24 = v13;
    sub_222A26530(v10, v12);
    return v24;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v14 = sub_222B02148();
    __swift_project_value_buffer(v14, qword_280CBC458);
    (*(v3 + 16))(v9, a1, v2);
    v15 = sub_222B02128();
    v16 = sub_222B028E8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v17 = 136315138;
      sub_222A77D34(&qword_280CB8310, MEMORY[0x277CC9260]);
      v18 = sub_222B02F38();
      v20 = v19;
      (*(v3 + 8))(v9, v2);
      v21 = sub_222A230FC(v18, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_222A1C000, v15, v16, "Cannot decode scheduler timestamp, path=%s", v17, 0xCu);
      v22 = v25;
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223DC7E30](v22, -1, -1);
      MEMORY[0x223DC7E30](v17, -1, -1);
      sub_222A26530(v10, v12);
    }

    else
    {
      sub_222A26530(v10, v12);

      (*(v3 + 8))(v9, v2);
    }

    return 0;
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222A77954(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_222A34620;

  return sub_222A72944(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_222A77A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A77AA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222A35344;

  return sub_222A7625C(a1, v5);
}

uint64_t sub_222A77B58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222A35344;

  return sub_222A76354(a1, v5);
}

uint64_t sub_222A77C10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222A34620;

  return sub_222A76354(a1, v5);
}

uint64_t sub_222A77CC8()
{
  v1 = *(sub_222B01748() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  return sub_222A6FE50(v2, v3, v4, v5, v6);
}

uint64_t sub_222A77D34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222A77D7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222A77E24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222A35344;

  return sub_222A76848(a1, v5);
}

uint64_t SandboxOperation.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_222B02E48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_222A77F60()
{
  sub_222B03128();
  sub_222B02448();
  return sub_222B03168();
}

uint64_t sub_222A77FD4()
{
  sub_222B03128();
  sub_222B02448();
  return sub_222B03168();
}

uint64_t sub_222A78028@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222B02E48();

  *a2 = v5 != 0;
  return result;
}

BOOL checkSandbox(operation:path:)()
{
  sub_222B01738();
  v0 = objc_opt_self();
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v3 = [v0 checkOperation:v1 forPath:v2];

  return v3 != 1;
}

unint64_t sub_222A78150()
{
  result = qword_27D01D740;
  if (!qword_27D01D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D740);
  }

  return result;
}

id StreamBookmark.__allocating_init(name:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222B017C8();
  v7 = v6;
  v8 = type metadata accessor for StreamBookmark();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = 0;
  v11 = &v9[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
  *v11 = v7;
  v11[8] = 0;
  v15.receiver = v9;
  v15.super_class = v8;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = sub_222B01848();
  (*(*(v13 - 8) + 8))(a3, v13);
  return v12;
}

uint64_t static StreamBookmark.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27D01D750 = a1;
  return result;
}

uint64_t StreamBookmark.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name);
  v2 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8);

  return v1;
}

id StreamBookmark.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamBookmark();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  *&v5[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = 0;
  v7 = &v5[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
  *v7 = 0;
  v7[8] = 1;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_222A784F8()
{
  if (*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate + 8);
  }
}

uint64_t sub_222A78524(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  v4 = *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8];
  v5 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v5 forKey:v6];

  if (v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate + 8])
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v8 = v7;
  v9 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark];
  if (!v10)
  {
LABEL_13:
    v14 = 0;
    v16 = 0xF000000000000000;
    goto LABEL_14;
  }

  v11 = objc_opt_self();
  v33[0] = 0;
  swift_unknownObjectRetain();
  v12 = [v11 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v33];
  v13 = v33[0];
  if (!v12)
  {
    v17 = v13;
    v18 = sub_222B01628();

    swift_willThrow();
    if (qword_27D01C4D8 != -1)
    {
      swift_once();
    }

    v19 = sub_222B02148();
    __swift_project_value_buffer(v19, qword_27D01D758);
    v20 = v1;
    v21 = v18;
    v22 = sub_222B02128();
    v23 = sub_222B028E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33[0] = v32;
      *v24 = 136315394;
      *(v24 + 4) = sub_222A230FC(v3, v4, v33);
      *(v24 + 12) = 2080;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v26 = sub_222B023D8();
      v28 = sub_222A230FC(v26, v27, v33);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_222A1C000, v22, v23, "Unable to encode the bookmark data for %s, error=%s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v32, -1, -1);
      MEMORY[0x223DC7E30](v24, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v10 = 0;
    goto LABEL_13;
  }

  v14 = sub_222B01798();
  v16 = v15;

  swift_unknownObjectRelease();
  v10 = sub_222B01788();
LABEL_14:
  v29 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v10 forKey:v29];
  swift_unknownObjectRelease();

  result = sub_222A398A4(v14, v16);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

id StreamBookmark.init(coder:)(void *a1)
{
  v50[4] = *MEMORY[0x277D85DE8];
  sub_222A250BC(0, &unk_280CB83F0, 0x277CCACA8);
  v2 = sub_222B02AB8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_222B02388();
    v6 = v5;

    sub_222A250BC(0, &qword_280CB8418, 0x277CBEA90);
    v7 = sub_222B02AB8();
    if (v7)
    {
      v47 = v4;
      v8 = v7;
      v9 = sub_222B01798();
      v11 = v10;

      v12 = objc_opt_self();
      v13 = objc_opt_self();
      sub_222A55AB8(v9, v11);
      v14 = [v13 bm_allowedClassesForSecureCodingBMBookmark];
      sub_222B027E8();

      v15 = sub_222B027D8();

      v16 = sub_222B01788();
      v50[0] = 0;
      v17 = [v12 unarchivedObjectOfClasses:v15 fromData:v16 error:v50];

      if (v17)
      {
        v18 = v50[0];
        sub_222B02BA8();
        sub_222A26530(v9, v11);
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D788, &unk_222B08EB0);
        if (swift_dynamicCast())
        {
          v19 = v48;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v21 = v50[0];
        v22 = sub_222B01628();

        swift_willThrow();
        if (qword_27D01C4D8 != -1)
        {
          swift_once();
        }

        v23 = sub_222B02148();
        __swift_project_value_buffer(v23, qword_27D01D758);

        v24 = v22;
        v25 = sub_222B02128();
        v26 = sub_222B028E8();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v50[0] = v46;
          *v27 = 136315394;
          *(v27 + 4) = sub_222A230FC(v47, v6, v50);
          *(v27 + 12) = 2080;
          v28 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
          v29 = sub_222B023D8();
          v45 = v6;
          v31 = v25;
          v32 = sub_222A230FC(v29, v30, v50);

          *(v27 + 14) = v32;
          v33 = v26;
          v34 = v31;
          v6 = v45;
          _os_log_impl(&dword_222A1C000, v34, v33, "Unable to decode the bookmark data for %s, error=%s", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DC7E30](v46, -1, -1);
          v35 = v27;
          v4 = v47;
          MEMORY[0x223DC7E30](v35, -1, -1);
          sub_222A26530(v9, v11);
        }

        else
        {
          sub_222A26530(v9, v11);
        }

        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    sub_222A250BC(0, &qword_280CB8400, 0x277CCABB0);
    v36 = sub_222B02AB8();
    if (v36)
    {
      sub_222B027A8();
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = type metadata accessor for StreamBookmark();
    v40 = objc_allocWithZone(v39);
    v41 = &v40[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
    *v41 = v4;
    v41[1] = v6;
    *&v40[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = v19;
    v42 = &v40[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
    *v42 = v38;
    v42[8] = v36 == 0;
    v49.receiver = v40;
    v49.super_class = v39;
    swift_unknownObjectRetain();
    v20 = objc_msgSendSuper2(&v49, sel_init);

    sub_222A398A4(v9, v11);
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v20 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v20;
}

unint64_t sub_222A78FC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - v4;
  if (*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate + 8))
  {
    v6 = sub_222B01848();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate);
    sub_222B017B8();
    v8 = sub_222B01848();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_222B02C88();

  v14 = 0xD000000000000016;
  v15 = 0x8000000222B12710;
  MEMORY[0x223DC66E0](*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8));
  MEMORY[0x223DC66E0](0x6D6B6F6F62202C22, 0xED0000203A6B7261);
  v13[1] = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D798, &qword_222B08EC0);
  v9 = sub_222B02B18();
  MEMORY[0x223DC66E0](v9);

  MEMORY[0x223DC66E0](0x203A65746164202CLL, 0xE800000000000000);
  v10 = sub_222B02B18();
  MEMORY[0x223DC66E0](v10);

  v11 = v14;
  sub_222A34F20(v5, &qword_27D01D700, &qword_222B07320);
  return v11;
}

id StreamBookmark.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static StreamBookmarkCollection.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27D01D751 = a1;
  return result;
}

id StreamBookmarkCollection.__allocating_init(bookmarks:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id StreamBookmarkCollection.init(bookmarks:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StreamBookmarkCollection();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_222A794F4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks);
  type metadata accessor for StreamBookmark();
  v4 = sub_222B025D8();
  v5 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v4 forKey:v5];
}

id StreamBookmarkCollection.init(coder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7A8, &qword_222B08EC8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222B05260;
  *(v2 + 32) = sub_222A250BC(0, &qword_280CB8410, 0x277CBEA60);
  *(v2 + 40) = type metadata accessor for StreamBookmark();
  sub_222B02AC8();

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7B0, qword_222B08ED8);
    if (swift_dynamicCast())
    {
      v3 = type metadata accessor for StreamBookmarkCollection();
      v4 = objc_allocWithZone(v3);
      *&v4[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks] = v8;
      v7.receiver = v4;
      v7.super_class = v3;
      v5 = objc_msgSendSuper2(&v7, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v5;
    }
  }

  else
  {

    sub_222A34F20(v9, &unk_27D01CB00, &qword_222B08ED0);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_222A798B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_222A798FC()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01D758);
  v1 = __swift_project_value_buffer(v0, qword_27D01D758);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222A79B5C(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0xEB00000000676E69;
      v2 = 0x6B636F6C426E6F4ELL;
    }

    else
    {
      sub_222B02C88();

      v3 = sub_222B029B8();
      MEMORY[0x223DC66E0](v3);

      MEMORY[0x223DC66E0](0x706D65747461202CLL, 0xEC000000203A7374);
      v4 = sub_222B02F38();
      MEMORY[0x223DC66E0](v4);

      MEMORY[0x223DC66E0](41, 0xE100000000000000);
      v2 = 0xD00000000000001BLL;
      v1 = 0x8000000222B12960;
    }
  }

  else
  {
    v1 = 0xE800000000000000;
    v2 = 0x676E696B636F6C42;
  }

  MEMORY[0x223DC66E0](v2, v1);

  MEMORY[0x223DC66E0](93, 0xE100000000000000);
  return 0x6B636F4C656C6946;
}

uint64_t sub_222A79CD4()
{
  v0 = type metadata accessor for FileLockDarwinDefault();
  v10[3] = v0;
  v10[4] = &off_2835F55A8;
  v10[0] = swift_allocObject();
  type metadata accessor for FileLock();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v10, v0);
  v3 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v2, v2);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v1[5] = v0;
  v1[6] = &off_2835F55A8;
  v1[2] = v7;
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  qword_280CBC410 = v1;
  return result;
}

void sub_222A79DEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a3;
  v5 = sub_222B01748();
  v6 = *(v5 - 8);
  v101 = v5;
  v102 = v6;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v94[-v14];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v99 = &v94[-v18];
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v94[-v20];
  v22 = a1;
  sub_222B01738();
  sub_222B02188();
  sub_222B021A8();
  sub_222B02178();
  sub_222B02198();
  sub_222B02408();

  v23 = sub_222B02158();

  if (v23 < 0)
  {
    if (qword_280CB8548 != -1)
    {
      swift_once();
    }

    v42 = sub_222B02148();
    __swift_project_value_buffer(v42, qword_280CB8550);
    v43 = v101;
    v44 = v102;
    (*(v102 + 16))(v11, a1, v101);
    v45 = sub_222B02128();
    v46 = sub_222B028E8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v104[0] = v48;
      *v47 = 136315650;
      sub_222A7BC00(&qword_280CB8310, MEMORY[0x277CC9260]);
      v49 = sub_222B02F38();
      v51 = v50;
      (*(v44 + 8))(v11, v43);
      v52 = sub_222A230FC(v49, v51, v104);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      v54 = MEMORY[0x223DC63B0](v53);
      if (!strerror(v54))
      {
LABEL_27:
        __break(1u);
        return;
      }

      v55 = sub_222B024A8();
      v57 = sub_222A230FC(v55, v56, v104);

      *(v47 + 14) = v57;
      *(v47 + 22) = 1024;
      *(v47 + 24) = MEMORY[0x223DC63B0](v58);
      _os_log_impl(&dword_222A1C000, v45, v46, "Cannot open lock file %s: %s, %d", v47, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v48, -1, -1);
      MEMORY[0x223DC7E30](v47, -1, -1);
    }

    else
    {

      (*(v44 + 8))(v11, v43);
    }

    v73 = v100;
    *(v100 + 32) = 0;
    *v73 = 0u;
    v73[1] = 0u;
    return;
  }

  if (a2)
  {
    v24 = 6;
  }

  else
  {
    v24 = 2;
  }

  if (flock(v23, v24))
  {
    v25 = v101;
    if (qword_280CB8548 != -1)
    {
      swift_once();
    }

    v26 = sub_222B02148();
    __swift_project_value_buffer(v26, qword_280CB8550);
    v27 = v102;
    (*(v102 + 16))(v15, a1, v25);
    v28 = sub_222B02128();
    v29 = sub_222B028E8();
    if (!os_log_type_enabled(v28, v29))
    {

      (*(v27 + 8))(v15, v25);
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v104[0] = v31;
    *v30 = 136315650;
    v32 = sub_222B01738();
    v34 = v33;
    (*(v27 + 8))(v15, v25);
    v35 = sub_222A230FC(v32, v34, v104);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v37 = MEMORY[0x223DC63B0](v36);
    if (strerror(v37))
    {
      v38 = sub_222B024A8();
      v40 = sub_222A230FC(v38, v39, v104);

      *(v30 + 14) = v40;
      *(v30 + 22) = 1024;
      *(v30 + 24) = MEMORY[0x223DC63B0](v41);
      _os_log_impl(&dword_222A1C000, v28, v29, "Failed to acquire lock file: %s, %s, %d", v30, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v31, -1, -1);
      MEMORY[0x223DC7E30](v30, -1, -1);

LABEL_21:
      v72 = v100;
      *(v100 + 32) = 0;
      *v72 = 0u;
      v72[1] = 0u;
      close(v23);
      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  v59 = v101;
  if (qword_280CB8548 != -1)
  {
    swift_once();
  }

  v60 = sub_222B02148();
  __swift_project_value_buffer(v60, qword_280CB8550);
  v61 = v102;
  v62 = *(v102 + 16);
  v62(v21, a1, v59);
  v63 = sub_222B02128();
  v64 = sub_222B028D8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v104[0] = v96;
    *v65 = 136315394;
    v95 = v64;
    v66 = sub_222B01738();
    v97 = v22;
    v67 = v62;
    v69 = v68;
    (*(v61 + 8))(v21, v59);
    v70 = sub_222A230FC(v66, v69, v104);
    v62 = v67;
    v22 = v97;

    *(v65 + 4) = v70;
    *(v65 + 12) = 1024;
    *(v65 + 14) = v23;
    _os_log_impl(&dword_222A1C000, v63, v95, "Acquired a file lock for path %s, fd=%d", v65, 0x12u);
    v71 = v96;
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x223DC7E30](v71, -1, -1);
    MEMORY[0x223DC7E30](v65, -1, -1);
  }

  else
  {

    (*(v61 + 8))(v21, v59);
  }

  v74 = v99;
  v62(v99, v22, v59);
  sub_222A42E40((v98 + 16), v104);
  v75 = v105;
  v76 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
  v98 = v94;
  v77 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v76, v76);
  v79 = &v94[-((v78 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v80 + 16))(v79);
  v81 = *v79;
  v82 = type metadata accessor for FileLockDarwinDefault();
  v103[3] = v82;
  v103[4] = &off_2835F55A8;
  v103[0] = v81;
  v83 = type metadata accessor for FileLockContextExclusive();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  v86 = swift_allocObject();
  v87 = __swift_mutable_project_boxed_opaque_existential_1(v103, v82);
  v88 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v87, v87);
  v90 = &v94[-((v89 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v91 + 16))(v90);
  v92 = *v90;
  *(v86 + 40) = v82;
  *(v86 + 48) = &off_2835F55A8;
  *(v86 + 16) = v92;
  *(v86 + 60) = 0;
  *(v86 + 56) = v23;
  (*(v61 + 32))(v86 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_9A16EB635EAE528C9CC424A4A1DE53F824FileLockContextExclusive_path, v74, v59);
  __swift_destroy_boxed_opaque_existential_0(v103);
  __swift_destroy_boxed_opaque_existential_0(v104);
  v93 = v100;
  *(v100 + 24) = v83;
  v93[4] = &off_2835F5590;
  *v93 = v86;
}

void sub_222A7A74C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, unint64_t), void (*a6)(unint64_t, unint64_t))
{
  v133 = a6;
  v134 = a5;
  v130 = a4;
  v132 = a3;
  v122 = sub_222B021D8();
  v121 = *(v122 - 8);
  v9 = *(v121 + 64);
  MEMORY[0x28223BE20](v122, v10);
  v119 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_222B02238();
  v118 = *(v120 - 8);
  v12 = *(v118 + 64);
  MEMORY[0x28223BE20](v120, v13);
  v117 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_222B021B8();
  v125 = *(v123 - 8);
  v15 = v125[8];
  MEMORY[0x28223BE20](v123, v16);
  v124 = (&v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = sub_222B02268();
  v131 = *(v127 - 8);
  v18 = *(v131 + 64);
  v20 = MEMORY[0x28223BE20](v127, v19);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v107 - v24;
  v26 = sub_222B01748();
  v129 = *(v26 - 8);
  v27 = *(v129 + 64);
  v29 = MEMORY[0x28223BE20](v26, v28);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v107 - v31;
  sub_222A79DEC(a1, a2, &v139);
  if (v140)
  {
    sub_222A1E5A8(&v139, aBlock);
    v134(0, 0);
    v33 = *__swift_project_boxed_opaque_existential_1(aBlock, v136);
    v140 = type metadata accessor for FileLockContextExclusive();
    v141 = &off_2835F5590;
    *&v139 = v33;
    v34 = *__swift_project_boxed_opaque_existential_1(&v139, v140);

    sub_222A7B5D0();
    __swift_destroy_boxed_opaque_existential_0(&v139);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return;
  }

  v113 = v32;
  v109 = v27;
  v111 = v22;
  v128 = a2;
  v114 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v26;
  v126 = a1;
  v115 = v25;
  v110 = v6;
  sub_222A7BAC4(&v139);
  if (qword_280CB8548 != -1)
  {
    swift_once();
  }

  v35 = sub_222B02148();
  v36 = __swift_project_value_buffer(v35, qword_280CB8550);
  v37 = v129;
  v38 = v113;
  v39 = v116;
  v108 = *(v129 + 16);
  v108(v113, v126, v116);
  v40 = v128;
  sub_222A42840(v128);
  v112 = v36;
  v41 = sub_222B02128();
  v42 = sub_222B028E8();
  sub_222A34E38(v40);
  v43 = os_log_type_enabled(v41, v42);
  v44 = v134;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 134218498;
    *(v45 + 4) = v130;
    *(v45 + 12) = 2080;
    v47 = sub_222A79B5C(v128);
    v48 = v42;
    v50 = v39;
    v51 = sub_222A230FC(v47, v49, aBlock);

    *(v45 + 14) = v51;
    *(v45 + 22) = 2080;
    v52 = sub_222B01738();
    v54 = v53;
    (*(v37 + 8))(v38, v50);
    v55 = sub_222A230FC(v52, v54, aBlock);

    *(v45 + 24) = v55;
    _os_log_impl(&dword_222A1C000, v41, v48, "Attempt %ld to acquire lock file (%s) failed: %s", v45, 0x20u);
    swift_arrayDestroy();
    v44 = v134;
    MEMORY[0x223DC7E30](v46, -1, -1);
    v40 = v128;
    MEMORY[0x223DC7E30](v45, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v38, v39);
  }

  v56 = v131;
  v57 = v114;
  v58 = swift_allocObject();
  v59 = v58;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  v60 = v40 >= 2;
  v61 = v40;
  v62 = v115;
  if (v60)
  {
    v70 = v61;
    v71 = v61;
    v72 = v130;
    if (v130 >= v132)
    {
      v100 = sub_222A7B364(v59);
      v102 = v101;
      v103 = sub_222B02128();
      v104 = sub_222B028E8();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        aBlock[0] = v106;
        *v105 = 136315138;
        *(v105 + 4) = sub_222A230FC(v100, v102, aBlock);
        _os_log_impl(&dword_222A1C000, v103, v104, "%s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
        MEMORY[0x223DC7E30](v106, -1, -1);
        MEMORY[0x223DC7E30](v105, -1, -1);
      }

      v44(v100, v102);

      sub_222A34E38(v70);
      goto LABEL_22;
    }

    v114 = v71;
    sub_222B02248();
    v73 = exp2(v72);
    if (v73 == INFINITY)
    {
      __break(1u);
    }

    else
    {
      v74 = v123;
      v75 = v125;
      v76 = v124;
      if (v73 > -9.22337204e18)
      {
        v113 = v59;
        v77 = v111;
        if (v73 < 9.22337204e18)
        {
          v78 = v73;
          if (v73 >= 15)
          {
            v78 = 15;
          }

          *v124 = v78;
          v79 = v74;
          v80 = v75;
          (v75[13])(v76, *MEMORY[0x277D85188], v74);
          MEMORY[0x223DC64C0](v77, v76);
          (v80[1])(v76, v79);
          v81 = *(v56 + 8);
          v131 = v56 + 8;
          v125 = v81;
          (v81)(v77, v127);
          v82 = v57;
          v83 = v57;
          v84 = v116;
          v108(v82, v126, v116);
          v85 = v129;
          v86 = (*(v129 + 80) + 24) & ~*(v129 + 80);
          v87 = v62;
          v88 = (v109 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
          v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
          v90 = swift_allocObject();
          *(v90 + 16) = v110;
          (*(v85 + 32))(v90 + v86, v83, v84);
          v91 = (v90 + v88);
          v92 = v128;
          v94 = v132;
          v93 = v133;
          *v91 = v128;
          v91[1] = v94;
          *(v90 + v89) = v130;
          v95 = (v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8));
          *v95 = v134;
          v95[1] = v93;
          v137 = sub_222A7BB2C;
          v138 = v90;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_222AD9FB4;
          v136 = &block_descriptor_7;
          v96 = _Block_copy(aBlock);
          sub_222A42840(v92);

          v97 = v117;
          sub_222B02208();
          *&v139 = MEMORY[0x277D84F90];
          sub_222A7BC00(qword_280CBA240, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
          sub_222A7BC48();
          v98 = v119;
          v99 = v122;
          sub_222B02BB8();
          MEMORY[0x223DC6BC0](v87, v97, v98, v96);
          _Block_release(v96);
          sub_222A34E38(v92);
          (*(v121 + 8))(v98, v99);
          (*(v118 + 8))(v97, v120);
          (v125)(v87, v127);

LABEL_22:

          return;
        }

LABEL_25:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v63 = sub_222A7B364(v58);
  v65 = v64;
  v66 = sub_222B02128();
  v67 = sub_222B028E8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_222A230FC(v63, v65, aBlock);
    _os_log_impl(&dword_222A1C000, v66, v67, "%s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x223DC7E30](v69, -1, -1);
    MEMORY[0x223DC7E30](v68, -1, -1);
  }

  v44(v63, v65);
}

unint64_t sub_222A7B364(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    sub_222B02C88();

    sub_222B01748();
    sub_222A7BC00(&qword_280CB8310, MEMORY[0x277CC9260]);
    v3 = sub_222B02F38();
    MEMORY[0x223DC66E0](v3);

    v2 = 0xD000000000000022;
    swift_beginAccess();
    v4 = *(a1 + 24);
    *(a1 + 16) = 0xD000000000000022;
    *(a1 + 24) = 0x8000000222B12980;
  }

  return v2;
}

uint64_t sub_222A7B488()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222A7B4E4()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CB8550);
  v1 = __swift_project_value_buffer(v0, qword_280CB8550);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_222A7B5D0()
{
  if ((*(v0 + 60) & 1) == 0)
  {
    *(v0 + 60) = 1;
    v1 = *(v0 + 56);
    if (flock(v1, 12))
    {
      if (qword_280CB8548 != -1)
      {
        swift_once();
      }

      v2 = sub_222B02148();
      __swift_project_value_buffer(v2, qword_280CB8550);

      v3 = sub_222B02128();
      v4 = sub_222B028E8();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v24 = v6;
        *v5 = 136315650;
        v7 = sub_222B01738();
        v9 = sub_222A230FC(v7, v8, &v24);

        *(v5 + 4) = v9;
        *(v5 + 12) = 2080;
        v11 = MEMORY[0x223DC63B0](v10);
        if (!strerror(v11))
        {
          __break(1u);
          return;
        }

        v12 = sub_222B024A8();
        v14 = sub_222A230FC(v12, v13, &v24);

        *(v5 + 14) = v14;
        *(v5 + 22) = 1024;
        *(v5 + 24) = MEMORY[0x223DC63B0](v15);
        _os_log_impl(&dword_222A1C000, v3, v4, "Failed to unlock file: %s, %s, %d", v5, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v6, -1, -1);
        MEMORY[0x223DC7E30](v5, -1, -1);
      }
    }

    close(v1);
    if (qword_280CB8548 != -1)
    {
      swift_once();
    }

    v16 = sub_222B02148();
    __swift_project_value_buffer(v16, qword_280CB8550);
    swift_retain_n();
    v17 = sub_222B02128();
    v18 = sub_222B028D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315394;
      v21 = sub_222B01738();
      v23 = sub_222A230FC(v21, v22, &v24);

      *(v19 + 4) = v23;
      *(v19 + 12) = 1024;

      *(v19 + 14) = v1;

      _os_log_impl(&dword_222A1C000, v17, v18, "Released the file lock for path %s, fd=%d", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223DC7E30](v20, -1, -1);
      MEMORY[0x223DC7E30](v19, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_222A7B90C()
{
  if ((*(v0 + 60) & 1) == 0)
  {
    sub_222A7B5D0();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_9A16EB635EAE528C9CC424A4A1DE53F824FileLockContextExclusive_path;
  v2 = sub_222B01748();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FileLockContextExclusive()
{
  result = qword_280CB8C88;
  if (!qword_280CB8C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A7BA10()
{
  result = sub_222B01748();
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

uint64_t sub_222A7BAC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D6F0, &unk_222B08CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222A7BB2C()
{
  v1 = sub_222B01748();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = (v0 + v5);
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v0 + 16);
    return sub_222A7A74C(v0 + v4, v9, v10, v7 + 1, *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222A7BC00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_222A7BC48()
{
  result = qword_280CBA230;
  if (!qword_280CBA230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D718, &unk_222B0A160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA230);
  }

  return result;
}

void sub_222A7BCAC(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = sub_222B01748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v36[-v10];
  v12 = [objc_opt_self() defaultManager];
  sub_222B01708();
  v13 = sub_222B016A8();
  v14 = *(v3 + 8);
  v14(v11, v2);
  v40[0] = 0;
  v15 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v40];

  v16 = v40[0];
  if (v15)
  {
    v17 = *MEMORY[0x277D85DE8];

    v18 = v16;
  }

  else
  {
    v38 = v40[0];
    v19 = v40[0];
    v20 = sub_222B01628();

    swift_willThrow();
    if (qword_280CB8548 != -1)
    {
      swift_once();
    }

    v21 = sub_222B02148();
    __swift_project_value_buffer(v21, qword_280CB8550);
    (*(v3 + 16))(v8, a1, v2);
    v22 = v20;
    v23 = sub_222B02128();
    v24 = sub_222B028E8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v25 = 136315394;
      v37 = v24;
      sub_222B01708();
      sub_222A7BC00(&qword_280CB8310, MEMORY[0x277CC9260]);
      v26 = sub_222B02F38();
      v28 = v27;
      v14(v11, v2);
      v14(v8, v2);
      v29 = sub_222A230FC(v26, v28, v40);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v39 = v20;
      v30 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v31 = sub_222B023D8();
      v33 = sub_222A230FC(v31, v32, v40);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_222A1C000, v23, v37, "Cannot create the file lock directory: %s, error=%s", v25, 0x16u);
      v34 = v38;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v34, -1, -1);
      MEMORY[0x223DC7E30](v25, -1, -1);
    }

    else
    {

      v14(v8, v2);
    }

    v35 = *MEMORY[0x277D85DE8];
  }
}

id sub_222A7C100(uint64_t a1)
{
  v3 = *(v1 + 72);
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (*(v4 + 16))
  {

    v5 = sub_222A26F40(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      return v7;
    }
  }

  return 0;
}

uint64_t sub_222A7C1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D838, &qword_222B0C0D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29[-v17];
  swift_beginAccess();
  v19 = *(v2 + 64);
  v30 = a1;

  sub_222AAAD30(sub_222A816BC, v29, v19, v9);

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D840, &qword_222B09660);
  if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
  {
    sub_222A34F20(v9, &qword_27D01D838, &qword_222B0C0D0);
    v21 = sub_222B018D8();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  else
  {
    v22 = &v9[*(v20 + 48)];
    v23 = *v22;
    v24 = v22[1];
    if (*(v24 + 16))
    {
      v21 = sub_222B018D8();
      v25 = *(v21 - 8);
      (*(v25 + 16))(v18, v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v21);

      (*(v25 + 56))(v18, 0, 1, v21);
    }

    else
    {

      v21 = sub_222B018D8();
      (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
    }

    sub_222B018D8();
    (*(*(v21 - 8) + 8))(v9, v21);
  }

  sub_222A65A04(v18, v15);
  sub_222B018D8();
  v26 = *(v21 - 8);
  v27 = *(v26 + 48);
  if (v27(v15, 1, v21) != 1)
  {
    return (*(v26 + 32))(a2, v15, v21);
  }

  (*(v26 + 16))(a2, a1, v21);
  result = (v27)(v15, 1, v21);
  if (result != 1)
  {
    return sub_222A34F20(v15, &unk_27D01DA50, &unk_222B04E20);
  }

  return result;
}

uint64_t sub_222A7C5DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D840, &qword_222B09660) + 48));
  v14 = *v12;
  v13 = v12[1];
  v15 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v16 = *(v13 + 16);
  v28[1] = v3;
  if (v14)
  {

    sub_222AB384C(a2, v15, v16, (v14 + 16), v14 + 32);
    v18 = v17;

    v19 = v18 ^ 1;
  }

  else if (v16)
  {
    v28[3] = a2;
    v23 = *(v7 + 16);
    v21 = v7 + 16;
    v22 = v23;
    v24 = *(v21 + 56);
    v25 = (v21 - 8);
    v26 = v16 - 1;
    do
    {
      v27 = v26;
      v22(v11, v15, v6);
      sub_222A2DB64(&qword_280CB8300);
      v19 = sub_222B02338();
      (*v25)(v11, v6);
      if (v19)
      {
        break;
      }

      v26 = v27 - 1;
      v15 += v24;
    }

    while (v27);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void sub_222A7C7BC(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_222A49F98();
  v5 = v4;
  v26 = v6;
  if ((a1 & 1) != 0 && [v4 anyEventType] != 17)
  {
    goto LABEL_20;
  }

  v7 = [v5 anyEventType];
  if (v7 > 18)
  {
    if (v7 > 22)
    {
      switch(v7)
      {
        case 23:
          KeyPath = swift_getKeyPath();
          sub_222A7DE0C(v5, 9u, KeyPath, 0, 0, &unk_280CB4B70, 0x277D587F0, &qword_27D01D828, a2, &qword_222B09648, &qword_27D01D830, &unk_222B09650);
          break;
        case 38:
          v25 = swift_getKeyPath();
          sub_222A7DE0C(v5, 0x13u, v25, 0, 0, &qword_280CB4AF8, 0x277D59C50, &qword_27D01D808, a2, &qword_222B09628, &qword_27D01D810, &qword_222B09630);
          break;
        case 61:
          v11 = swift_getKeyPath();
          v12 = swift_getKeyPath();
          v13 = swift_getKeyPath();
          sub_222A7DE0C(v5, 0x1Fu, v11, v12, v13, &qword_280CB4B60, 0x277D5A630, &qword_27D01D818, a2, &qword_222B09638, &qword_27D01D820, &qword_222B09640);
          goto LABEL_26;
        default:
          goto LABEL_20;
      }

      goto LABEL_33;
    }

    if (v7 == 19)
    {
      sub_222A7F5A8();
      v17 = swift_getKeyPath();
      v18 = swift_getKeyPath();
      sub_222A7DE0C(v5, 1u, v17, v18, 0, &qword_280CB4B00, 0x277D59610, &qword_27D01D7F8, a2, &qword_222B09618, &qword_27D01D800, &qword_222B09620);
    }

    else
    {
      if (v7 != 20)
      {
        goto LABEL_20;
      }

      v14 = swift_getKeyPath();
      v15 = swift_getKeyPath();
      sub_222A7DE0C(v5, 8u, v14, v15, 0, &unk_280CB4B48, 0x277D56858, &qword_27D01D7C8, a2, &qword_222B095E8, &qword_27D01D7D0, &qword_222B095F0);
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v7 <= 12)
  {
    if (v7 == 1)
    {
      sub_222A7ED84(v5, v26, a2);
      goto LABEL_21;
    }

    if (v7 == 9)
    {
      sub_222A7D5B0(v5, a2);
LABEL_21:

LABEL_34:

      return;
    }

LABEL_20:
    v16 = sub_222B018D8();
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    goto LABEL_21;
  }

  if (v7 == 13)
  {
    v19 = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v21 = swift_getKeyPath();
    sub_222A7DE0C(v5, 3u, v19, v20, v21, &unk_280CB4B18, 0x277D57500, &qword_27D01D7D8, a2, &qword_222B095F8, &qword_27D01D7E0, &qword_222B09600);
    goto LABEL_26;
  }

  if (v7 != 17)
  {
    if (v7 == 18)
    {
      v8 = swift_getKeyPath();
      v9 = swift_getKeyPath();
      v10 = swift_getKeyPath();
      sub_222A7DE0C(v5, 7u, v8, v9, v10, &unk_280CB4B30, 0x277D590F0, &qword_27D01D7E8, a2, &qword_222B09608, &qword_27D01D7F0, &qword_222B09610);
LABEL_26:

      goto LABEL_33;
    }

    goto LABEL_20;
  }

  sub_222A7CD20(v5, v26);

  v23 = sub_222B018D8();
  v24 = *(*(v23 - 8) + 56);

  v24(a2, 1, 1, v23);
}

void sub_222A7CD20(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v78 - v8;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v80 = v10;
  v81 = v11;
  isa = v11[8].isa;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v78 - v18;
  v20 = [a1 payload];
  if (v20)
  {
    v21 = v20;
    v22 = sub_222B01798();
    v24 = v23;

    v25 = sub_222B01788();
    sub_222A26530(v22, v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_allocWithZone(MEMORY[0x277D57038]) initWithData_];

  if (v26)
  {
    if (!a2)
    {
      goto LABEL_22;
    }

    v27 = [a2 timestamp];
    if (!v27)
    {
      goto LABEL_22;
    }

    v28 = v27;
    v29 = [v27 clockIdentifier];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 value];
      if (v31)
      {
        v79 = v28;
        v32 = v31;
        v33 = sub_222B01798();
        v35 = v34;

        sub_222A67044(v33, v35, v9);
        sub_222A26530(v33, v35);
        v36 = v80;
        isUniquelyReferenced_nonNull_native = v81;
        if ((v81[6].isa)(v9, 1, v80) == 1)
        {

LABEL_21:
          sub_222A34F20(v9, &unk_27D01DA50, &unk_222B04E20);
LABEL_22:
          if (qword_280CBA628 != -1)
          {
            swift_once();
          }

          v49 = sub_222B02148();
          __swift_project_value_buffer(v49, qword_280CBC458);
          v50 = a2;
          v51 = sub_222B02128();
          v52 = sub_222B028D8();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v82[0] = v54;
            *v53 = 136315138;
            if (a2)
            {
              v55 = [v50 dictionaryRepresentation];
              if (v55)
              {
                v56 = v55;
                a2 = sub_222B022B8();
              }

              else
              {
                a2 = 0;
              }
            }

            v83 = a2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7C0, qword_222B09110);
            v57 = sub_222B023D8();
            v59 = sub_222A230FC(v57, v58, v82);

            *(v53 + 4) = v59;
            _os_log_impl(&dword_222A1C000, v51, v52, "Missing logical timestamp for DIM metadata: %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v54);
            MEMORY[0x223DC7E30](v54, -1, -1);
            MEMORY[0x223DC7E30](v53, -1, -1);
          }

          return;
        }

        (*(isUniquelyReferenced_nonNull_native + 32))(v19, v9, v36);
        v60 = [v26 wrapAsAnyEvent];
        if (!v60)
        {
LABEL_42:
          v74 = [v26 deviceFixedContext];
          v75 = v79;
          if (v74)
          {
            v76 = v74;
            v77 = *(v2 + 72);

            sub_222A663E4(v19, v75, v76);

            (*(isUniquelyReferenced_nonNull_native + 8))(v19, v36);
          }

          else
          {
            (*(isUniquelyReferenced_nonNull_native + 8))(v19, v36);
          }

          sub_222A1F4CC(v60);
          return;
        }

        swift_beginAccess();
        v61 = *(v2 + 56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = *(v2 + 56);
        v62 = v83;
        v63 = v2;
        *(v2 + 56) = 0x8000000000000000;
        v65 = sub_222A26F40(v19);
        v66 = v62[2];
        v67 = (v64 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          __break(1u);
LABEL_47:
          sub_222B02648();
          v36 = v80;
LABEL_41:
          sub_222B02688();
          swift_endAccess();

          v60 = sub_222A7D5A0;
          v2 = v63;
          goto LABEL_42;
        }

        v69 = v64;
        if (v62[3] >= v68)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222A2C4C0();
            v36 = v80;
            v72 = v63;
            v62 = v83;
LABEL_38:
            isUniquelyReferenced_nonNull_native = v81;
            *(v72 + 56) = v62;
            if ((v69 & 1) == 0)
            {
              (*(isUniquelyReferenced_nonNull_native + 16))(v16, v19, v36);
              sub_222AEC4C8(v65, v16, MEMORY[0x277D84F90], v62);
            }

            v73 = (v62[7] + 8 * v65);
            v60 = v60;
            MEMORY[0x223DC6810]();
            if (*((*v73 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_41;
            }

            goto LABEL_47;
          }

LABEL_37:
          v72 = v63;
          goto LABEL_38;
        }

        sub_222A28C30(v68, isUniquelyReferenced_nonNull_native);
        v62 = v83;
        v70 = sub_222A26F40(v19);
        if ((v69 & 1) == (v71 & 1))
        {
          v65 = v70;
          goto LABEL_37;
        }

LABEL_50:
        sub_222B030B8();
        __break(1u);
        return;
      }
    }

    (v81[7].isa)(v9, 1, 1, v80);
    goto LABEL_21;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v38 = sub_222B02148();
  __swift_project_value_buffer(v38, qword_280CBC458);
  v39 = a1;
  v81 = sub_222B02128();
  v40 = sub_222B028D8();
  if (os_log_type_enabled(v81, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v82[0] = v42;
    *v41 = 136315138;
    v43 = [v39 dictionaryRepresentation];

    if (v43)
    {
      sub_222B022B8();

      v44 = sub_222B022C8();
      v46 = v45;

      v47 = sub_222A230FC(v44, v46, v82);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_222A1C000, v81, v40, "Expected DIM client event for event: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x223DC7E30](v42, -1, -1);
      MEMORY[0x223DC7E30](v41, -1, -1);

      return;
    }

    __break(1u);
    goto LABEL_50;
  }

  v48 = v81;
}

uint64_t sub_222A7D5B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v71 - v15;
  v17 = sub_222B018D8();
  v78 = *(v17 - 8);
  v18 = *(v78 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v74 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v75 = &v71 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v71 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v71 - v30;
  v76 = a1;
  v32 = [a1 payload];
  if (v32)
  {
    v33 = v32;
    v34 = sub_222B01798();
    v36 = v35;

    v37 = sub_222B01788();
    sub_222A26530(v34, v36);
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) initWithData_];

  if (v38)
  {
    v73 = v2;
    v39 = *(v2 + 16);
    sub_222A25788(v38);
    sub_222A7DBD4(v38, 1, v16);
    v40 = *(v78 + 48);
    if (v40(v16, 1, v17) == 1)
    {

      sub_222A34F20(v16, &unk_27D01DA50, &unk_222B04E20);
      return (*(v78 + 56))(v77, 1, 1, v17);
    }

    v44 = v31;
    v45 = *(v78 + 32);
    v46 = v16;
    v47 = v78 + 32;
    v45(v44, v46, v17);
    sub_222A7DBD4(v38, 43, v13);
    if (v40(v13, 1, v17) != 1)
    {
      v45(v28, v13, v17);
      v49 = v73;
      sub_222A7F9E4(v44, v28);
      (*(v78 + 8))(v28, v17);
      v48 = 0;
      goto LABEL_23;
    }

    v72 = v45;
    sub_222A34F20(v13, &unk_27D01DA50, &unk_222B04E20);
    sub_222A7DBD4(v38, 2, v9);
    if (v40(v9, 1, v17) == 1)
    {
      sub_222A34F20(v9, &unk_27D01DA50, &unk_222B04E20);
      v48 = 0;
      v45 = v72;
      v49 = v73;
LABEL_23:
      v69 = *(v49 + 24);
      sub_222ADF020(1, v44, v76);

      v70 = v77;
      v45(v77, v44, v17);
      (*(v78 + 56))(v70, 0, 1, v17);
      return sub_222A1F4CC(v48);
    }

    v50 = v75;
    v71 = v47;
    v45 = v72;
    v72(v75, v9, v17);
    v49 = v73;
    v51 = v50;
    swift_beginAccess();
    v52 = *(v49 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v49 + 64);
    v54 = v79;
    *(v49 + 64) = 0x8000000000000000;
    v56 = sub_222A26F40(v50);
    v57 = v54[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v47) = v55;
      if (v54[3] < v59)
      {
        sub_222A296E8(v59, isUniquelyReferenced_nonNull_native);
        v54 = v79;
        v60 = sub_222A26F40(v51);
        if ((v47 & 1) != (v61 & 1))
        {
          result = sub_222B030B8();
          __break(1u);
          return result;
        }

        v56 = v60;
        *(v49 + 64) = v54;
        if (v47)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        *(v49 + 64) = v54;
        if (v55)
        {
LABEL_22:
          v68 = v54[7] + 16 * v56;
          sub_222A80094(v44);
          swift_endAccess();
          (*(v78 + 8))(v51, v17);
          v48 = sub_222A7DDDC;
          goto LABEL_23;
        }

LABEL_21:
        sub_222A80890(MEMORY[0x277D84F90]);
        v63 = v62;
        v65 = v64;
        v66 = v74;
        (*(v78 + 16))(v74, v51, v17);
        v67 = v66;
        v45 = v72;
        sub_222AEA63C(v56, v67, v63, v65, v54);
        goto LABEL_22;
      }
    }

    sub_222A2C90C();
    v54 = v79;
    *(v49 + 64) = v79;
    if (v47)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v42 = v77;
  v43 = *(v78 + 56);

  return v43(v42, 1, 1, v17);
}

uint64_t sub_222A7DBD4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 source];
  if (v6 && (v7 = v6, v8 = [v6 component], v7, v8 == a2))
  {
    v9 = [a1 source];
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = v9;
    v11 = [v9 uuid];

    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = [v11 value];
    if (v12)
    {
LABEL_6:
      v13 = v12;
      v14 = sub_222B01798();
      v16 = v15;

      sub_222A67044(v14, v16, a3);

      return sub_222A26530(v14, v16);
    }
  }

  else
  {
    v18 = [a1 target];
    if (!v18)
    {
      goto LABEL_15;
    }

    v19 = v18;
    v20 = [v18 component];

    if (v20 != a2)
    {
      goto LABEL_15;
    }

    v21 = [a1 target];
    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = v21;
    v11 = [v21 uuid];

    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = [v11 value];
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_15:
  v23 = sub_222B018D8();
  v24 = *(*(v23 - 8) + 56);

  return v24(a3, 1, 1, v23);
}

void sub_222A7DDDC(void *a1@<X8>)
{
  sub_222A80890(MEMORY[0x277D84F90]);
  *a1 = v2;
  a1[1] = v3;
}

void sub_222A7DE0C(void *a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, unint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v163 = a4;
  v160 = a2;
  v166 = a9;
  v157 = a12;
  v155 = a8;
  v156 = a11;
  v154 = a10;
  v17 = sub_222B018D8();
  v169 = *(v17 - 1);
  v18 = *(v169 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v158 = &v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v161 = &v153 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v159 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v153 - v31;
  v34 = MEMORY[0x28223BE20](v30, v33);
  v36 = &v153 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v153 - v39;
  v42 = MEMORY[0x28223BE20](v38, v41);
  v167 = &v153 - v43;
  MEMORY[0x28223BE20](v42, v44);
  v168 = &v153 - v45;
  sub_222A250BC(0, a6, a7);
  v164 = a1;
  v46 = [a1 payload];
  if (v46)
  {
    v47 = v46;
    v48 = sub_222B01798();
    v50 = v49;

    v51 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v52 = sub_222B01788();
    sub_222A26530(v48, v50);
    v53 = v51;
  }

  else
  {
    v53 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v52 = 0;
  }

  v54 = [v53 initWithData_];

  if (v54)
  {
    v170[0] = v54;
    v55 = v54;
    swift_getAtKeyPath();

    v56 = v171;
    v165 = v40;
    v153 = a3;
    if (v171)
    {
      v57 = [v171 value];
      v58 = a5;
      if (v57)
      {
        v59 = v57;
        v60 = sub_222B01798();
        v61 = v17;
        v63 = v62;

        sub_222A67044(v60, v63, v168);
        v64 = v63;
        v17 = v61;
        v40 = v165;
        sub_222A26530(v60, v64);
      }

      else
      {

        (*(v169 + 56))(v168, 1, 1, v17);
      }

      v74 = v163;
      v73 = v167;
      if (v163)
      {
LABEL_19:
        v170[0] = v55;
        v75 = v55;

        swift_getAtKeyPath();

        v76 = v171;
        if (v171)
        {
          v77 = [v171 value];
          if (v77)
          {
            v78 = v77;
            v79 = v17;
            v80 = sub_222B01798();
            v82 = v81;

            sub_222A67044(v80, v82, v167);
            v83 = v80;
            v17 = v79;
            v40 = v165;
            v84 = v82;
            v73 = v167;
            sub_222A26530(v83, v84);
            goto LABEL_30;
          }
        }

        (*(v169 + 56))(v73, 1, 1, v17);
LABEL_30:

        if (v58)
        {
LABEL_31:
          v170[0] = v55;
          v98 = v55;

          swift_getAtKeyPath();

          v99 = v171;
          if (v171)
          {
            v100 = [v171 value];
            if (v100)
            {
              v101 = v100;
              v102 = v17;
              v103 = sub_222B01798();
              v105 = v104;

              sub_222A67044(v103, v105, v165);
              v106 = v103;
              v17 = v102;
              v40 = v165;
              v107 = v105;
              v73 = v167;
              sub_222A26530(v106, v107);
LABEL_36:

LABEL_37:
              sub_222A6E45C(v40, v36);
              v108 = *(v169 + 48);
              if (v108(v36, 1, v17) == 1)
              {
                sub_222A34F20(v36, &unk_27D01DA50, &unk_222B04E20);
                sub_222A6E45C(v73, v32);
                if (v108(v32, 1, v17) == 1)
                {
                  sub_222A34F20(v32, &unk_27D01DA50, &unk_222B04E20);
                  v109 = v159;
                  sub_222A6E45C(v168, v159);
                  if (v108(v109, 1, v17) == 1)
                  {
                    sub_222A34F20(v109, &unk_27D01DA50, &unk_222B04E20);
                    if (qword_280CBA628 != -1)
                    {
                      swift_once();
                    }

                    v110 = sub_222B02148();
                    __swift_project_value_buffer(v110, qword_280CBC458);

                    v111 = v153;

                    v69 = v55;

                    v112 = sub_222B02128();
                    v113 = sub_222B028E8();

                    if (os_log_type_enabled(v112, v113))
                    {
                      v164 = v17;
                      v114 = v58;
                      v115 = swift_slowAlloc();
                      v163 = swift_slowAlloc();
                      v170[0] = v163;
                      *v115 = 136315906;
                      v171 = v74;

                      __swift_instantiateConcreteTypeFromMangledNameV2(v155, v154);
                      v116 = sub_222B023D8();
                      v118 = sub_222A230FC(v116, v117, v170);

                      *(v115 + 4) = v118;
                      *(v115 + 12) = 2080;
                      v171 = v114;

                      v119 = sub_222B023D8();
                      v121 = sub_222A230FC(v119, v120, v170);

                      *(v115 + 14) = v121;
                      *(v115 + 22) = 2080;
                      v171 = v111;

                      __swift_instantiateConcreteTypeFromMangledNameV2(v156, v157);
                      v122 = sub_222B023D8();
                      v124 = sub_222A230FC(v122, v123, v170);

                      *(v115 + 24) = v124;
                      *(v115 + 32) = 2080;
                      v125 = [v69 dictionaryRepresentation];
                      if (v125)
                      {
                        v126 = v125;
                        sub_222B022B8();

                        v127 = sub_222B022C8();
                        v129 = v128;

                        v130 = sub_222A230FC(v127, v129, v170);

                        *(v115 + 34) = v130;
                        _os_log_impl(&dword_222A1C000, v112, v113, "    Failed to extract either request ID, sub-request ID or component UUID.\n    Tried keypaths '%s'/'%s'/'%s'.\n    For event: %s)", v115, 0x2Au);
                        v131 = v163;
                        swift_arrayDestroy();
                        MEMORY[0x223DC7E30](v131, -1, -1);
                        MEMORY[0x223DC7E30](v115, -1, -1);

                        sub_222A34F20(v165, &unk_27D01DA50, &unk_222B04E20);
                        sub_222A34F20(v167, &unk_27D01DA50, &unk_222B04E20);
                        sub_222A34F20(v168, &unk_27D01DA50, &unk_222B04E20);
                        v17 = v164;
LABEL_55:
                        v140 = *(v169 + 56);
                        v141 = v166;
                        v144 = 1;
                        goto LABEL_56;
                      }

                      goto LABEL_64;
                    }

LABEL_54:
                    sub_222A34F20(v165, &unk_27D01DA50, &unk_222B04E20);
                    sub_222A34F20(v73, &unk_27D01DA50, &unk_222B04E20);
                    sub_222A34F20(v168, &unk_27D01DA50, &unk_222B04E20);
                    goto LABEL_55;
                  }

                  v145 = *(v169 + 32);
                  v146 = v158;
                  v145(v158, v109, v17);
                  v147 = v162;
                  v148 = *(v162 + 24);
                  v149 = v160;
                  sub_222ADF020(v160, v146, v164);
                  if (v149 == 1)
                  {

                    sub_222A34F20(v165, &unk_27D01DA50, &unk_222B04E20);
                    sub_222A34F20(v73, &unk_27D01DA50, &unk_222B04E20);
                    sub_222A34F20(v168, &unk_27D01DA50, &unk_222B04E20);
                    v150 = v166;
                    v145(v166, v146, v17);
                    v140 = *(v169 + 56);
                    v141 = v150;
                    goto LABEL_50;
                  }

                  v151 = *(v147 + 16);
                  v152 = sub_222A26364(v149, v146, 1);
                  if (!*(v152 + 16))
                  {

                    (*(v169 + 8))(v146, v17);
                    goto LABEL_54;
                  }

                  v142 = v166;
                  (*(v169 + 16))(v166, v152 + ((*(v169 + 80) + 32) & ~*(v169 + 80)), v17);

                  (*(v169 + 8))(v146, v17);
                }

                else
                {
                  v142 = v166;
                  (*(v169 + 32))(v166, v32, v17);
                  v143 = *(v162 + 32);
                  sub_222ADF440(v142, v164);
                }

                sub_222A34F20(v165, &unk_27D01DA50, &unk_222B04E20);
                sub_222A34F20(v73, &unk_27D01DA50, &unk_222B04E20);
                sub_222A34F20(v168, &unk_27D01DA50, &unk_222B04E20);
                v140 = *(v169 + 56);
                v141 = v142;
LABEL_50:
                v144 = 0;
LABEL_56:
                v140(v141, v144, 1, v17);
                return;
              }

              v132 = v161;
              (*(v169 + 32))(v161, v36, v17);
              v133 = v162;
              v134 = *(v162 + 32);
              sub_222ADF440(v132, v164);
              swift_beginAccess();
              v135 = *(v133 + 48);
              if (*(v135 + 16))
              {
                v136 = *(v133 + 48);

                v137 = sub_222A26F40(v132);
                if (v138)
                {
                  v139 = v166;
                  (*(v169 + 16))(v166, *(v135 + 56) + *(v169 + 72) * v137, v17);

                  (*(v169 + 8))(v132, v17);
                  sub_222A34F20(v165, &unk_27D01DA50, &unk_222B04E20);
                  sub_222A34F20(v73, &unk_27D01DA50, &unk_222B04E20);
                  sub_222A34F20(v168, &unk_27D01DA50, &unk_222B04E20);

                  v140 = *(v169 + 56);
                  v141 = v139;
                  goto LABEL_50;
                }
              }

              else
              {
              }

              (*(v169 + 8))(v132, v17);
              goto LABEL_54;
            }
          }

          (*(v169 + 56))(v40, 1, 1, v17);
          goto LABEL_36;
        }

LABEL_15:
        (*(v169 + 56))(v40, 1, 1, v17);
        goto LABEL_37;
      }
    }

    else
    {
      (*(v169 + 56))(v168, 1, 1, v17);
      v73 = v167;
      v58 = a5;
      v74 = v163;
      if (v163)
      {
        goto LABEL_19;
      }
    }

    (*(v169 + 56))(v73, 1, 1, v17);
    if (v58)
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v65 = sub_222B02148();
  __swift_project_value_buffer(v65, qword_280CBC458);
  v66 = v164;
  v67 = sub_222B02128();
  v68 = sub_222B028D8();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v170[0] = v70;
    *v69 = 136315394;
    if (v160 > 0x42)
    {
      v71 = @"COMPONENTNAME_UNKNOWN";
      v72 = @"COMPONENTNAME_UNKNOWN";
    }

    else
    {
      v71 = off_2784B8F80[v160];
      v72 = off_2784B9198[v160];
    }

    v85 = v71;
    v86 = v72;
    v87 = sub_222B02388();
    v89 = v88;

    v90 = sub_222A230FC(v87, v89, v170);

    *(v69 + 1) = v90;
    *(v69 + 6) = 2080;
    v91 = [v66 dictionaryRepresentation];

    if (!v91)
    {
      __break(1u);
LABEL_64:

      __break(1u);
      return;
    }

    sub_222B022B8();

    v92 = sub_222B022C8();
    v94 = v93;

    v95 = sub_222A230FC(v92, v94, v170);

    *(v69 + 14) = v95;
    _os_log_impl(&dword_222A1C000, v67, v68, "Failed to decode event of expected type '%s'; event: %s", v69, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v70, -1, -1);
    MEMORY[0x223DC7E30](v69, -1, -1);
  }

  else
  {
  }

  v96 = *(v169 + 56);
  v97 = v166;

  v96(v97, 1, 1, v17);
}

void sub_222A7ED84(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v87 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v80[-v8];
  v88 = sub_222B018D8();
  v10 = *(v88 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v88, v12);
  v15 = &v80[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v80[-v18];
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v80[-v21];
  v23 = [a1 payload];
  if (v23)
  {
    v24 = v23;
    v25 = sub_222B01798();
    v27 = v26;

    v28 = sub_222B01788();
    sub_222A26530(v25, v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D5A800]) initWithData_];

  if (v29)
  {
    v30 = [v29 eventMetadata];
    if (v30 && (v31 = v30, v32 = [v30 turnID], v31, v32))
    {
      v85 = v22;
      v33 = sub_222B01798();
      v35 = v34;

      v84 = v35;
      sub_222A67044(v33, v35, v9);
      v36 = v88;
      if ((*(v10 + 48))(v9, 1, v88) != 1)
      {
        v83 = v33;
        (*(v10 + 32))(v85, v9, v36);
        v51 = [v29 deviceDynamicContext];
        v52 = v86;
        if (v51)
        {

          if (v52)
          {
            v53 = [v52 timestamp];
            if (v53)
            {
              v54 = v53;
              v55 = v3[9];
              (*(v10 + 16))(v19, v85, v88);
              swift_beginAccess();

              v56 = v54;
              sub_222AC59B4(v54, v19);
              swift_endAccess();

              v52 = v86;
            }
          }
        }

        v57 = sub_222A81314(v29, v52);
        v58 = v57;
        if (v57)
        {
          v59 = v57;
        }

        else
        {
          v86 = v3;
          if (qword_280CBA628 != -1)
          {
            swift_once();
          }

          v60 = sub_222B02148();
          __swift_project_value_buffer(v60, qword_280CBC458);
          v61 = v88;
          (*(v10 + 16))(v15, v85, v88);
          v62 = v29;
          v63 = sub_222B02128();
          v64 = sub_222B028E8();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v89[0] = v82;
            *v65 = 134218242;
            *(v65 + 4) = [v62 whichEvent_Type];

            *(v65 + 12) = 2080;
            v81 = v64;
            v66 = sub_222B01868();
            v68 = v67;
            (*(v10 + 8))(v15, v61);
            v69 = sub_222A230FC(v66, v68, v89);

            *(v65 + 14) = v69;
            _os_log_impl(&dword_222A1C000, v63, v81, "Missing timestamp metadata for backfilling UEI event; type: %lu; turn: %s", v65, 0x16u);
            v70 = v82;
            __swift_destroy_boxed_opaque_existential_0(v82);
            MEMORY[0x223DC7E30](v70, -1, -1);
            MEMORY[0x223DC7E30](v65, -1, -1);
          }

          else
          {

            (*(v10 + 8))(v15, v61);
          }

          v59 = a1;
          v3 = v86;
        }

        v71 = v83;
        v72 = v3[3];
        v73 = v58;
        v74 = v85;
        sub_222ADF020(2, v85, v59);
        v75 = v3[2];
        v76 = sub_222A26364(2, v74, 1);
        if (*(v76 + 16))
        {
          v77 = v87;
          v78 = v88;
          (*(v10 + 16))(v87, v76 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v88);
          sub_222A26530(v71, v84);

          (*(v10 + 8))(v74, v78);
          v50 = v78;
          v49 = v77;
          v48 = 0;
        }

        else
        {

          sub_222A26530(v71, v84);

          v79 = v88;
          (*(v10 + 8))(v74, v88);
          v50 = v79;
          v48 = 1;
          v49 = v87;
        }

        goto LABEL_17;
      }

      sub_222A26530(v33, v84);

      sub_222A34F20(v9, &unk_27D01DA50, &unk_222B04E20);
    }

    else
    {
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v37 = sub_222B02148();
  __swift_project_value_buffer(v37, qword_280CBC458);
  v38 = a1;
  v39 = sub_222B02128();
  v40 = sub_222B028E8();
  if (!os_log_type_enabled(v39, v40))
  {

    goto LABEL_16;
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v89[0] = v42;
  *v41 = 136315138;
  v43 = [v38 dictionaryRepresentation];

  if (v43)
  {
    sub_222B022B8();

    v44 = sub_222B022C8();
    v46 = v45;

    v47 = sub_222A230FC(v44, v46, v89);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_222A1C000, v39, v40, "Failed to UEI data and/or turn ID from event: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x223DC7E30](v42, -1, -1);
    MEMORY[0x223DC7E30](v41, -1, -1);
LABEL_16:

    v48 = 1;
    v49 = v87;
    v50 = v88;
LABEL_17:
    (*(v10 + 56))(v49, v48, 1, v50);
    return;
  }

  __break(1u);
}

void *sub_222A7F5A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v42 - v9;
  v11 = sub_222B018D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v42 - v19;
  result = sub_222A66E6C();
  if (result)
  {
    v22 = result;
    v23 = [result eventMetadata];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 requestId];

      if (v25)
      {
        v26 = [v25 value];
        if (v26)
        {
          v46 = v1;
          v47 = v7;
          v27 = v26;
          v28 = sub_222B01798();
          v30 = v29;

          sub_222A67044(v28, v30, v10);
          sub_222A26530(v28, v30);
          v31 = *(v12 + 48);
          if (v31(v10, 1, v11) != 1)
          {
            v45 = *(v12 + 32);
            v45(v20, v10, v11);
            v33 = [v22 subRequestContext];
            if (v33 && (v34 = v33, v35 = [v33 subRequestId], v34, v35))
            {
              v36 = [v35 value];
              if (v36)
              {
                v37 = v36;
                v38 = sub_222B01798();
                v43 = v39;
                v44 = v38;

                v40 = v47;
                sub_222A67044(v44, v43, v47);

                sub_222A26530(v44, v43);
                if (v31(v40, 1, v11) != 1)
                {
                  v45(v17, v40, v11);
                  sub_222A7F9E4(v20, v17);

                  v41 = *(v12 + 8);
                  v41(v17, v11);
                  return (v41)(v20, v11);
                }
              }

              else
              {

                v40 = v47;
                (*(v12 + 56))(v47, 1, 1, v11);
              }

              (*(v12 + 8))(v20, v11);
            }

            else
            {

              (*(v12 + 8))(v20, v11);
              v40 = v47;
              (*(v12 + 56))(v47, 1, 1, v11);
            }

            v32 = v40;
            return sub_222A34F20(v32, &unk_27D01DA50, &unk_222B04E20);
          }

LABEL_9:
          v32 = v10;
          return sub_222A34F20(v32, &unk_27D01DA50, &unk_222B04E20);
        }
      }
    }

    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_9;
  }

  return result;
}

void sub_222A7F9E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v52 - v9;
  v11 = sub_222B018D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v57 = &v52 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v52 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v52 - v26;
  sub_222A2DB64(&qword_280CB8300);
  if (sub_222B02338())
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v28 = sub_222B02148();
    __swift_project_value_buffer(v28, qword_280CBC458);
    (*(v12 + 16))(v17, a1, v11);
    v29 = sub_222B02128();
    v30 = sub_222B028E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v59 = v32;
      *v31 = 136315138;
      sub_222A2DB64(&qword_280CB82F8);
      v33 = sub_222B02F38();
      v35 = v34;
      (*(v12 + 8))(v17, v11);
      v36 = sub_222A230FC(v33, v35, &v59);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_222A1C000, v29, v30, "Request %s uses the same id for sub-request and request id. Ignoring subrequest linking.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x223DC7E30](v32, -1, -1);
      MEMORY[0x223DC7E30](v31, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v17, v11);
    }

    return;
  }

  v53 = a2;
  v54 = v10;
  v55 = *(v12 + 16);
  v55(v24, a2, v11);
  swift_beginAccess();
  v37 = *(v2 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(v2 + 40);
  v39 = v58;
  *(v3 + 40) = 0x8000000000000000;
  v56 = a1;
  v41 = sub_222A26F40(a1);
  v42 = v39[2];
  v43 = (v40 & 1) == 0;
  v44 = v42 + v43;
  if (__OFADD__(v42, v43))
  {
    __break(1u);
LABEL_16:
    sub_222A2C79C();
    v39 = v58;
    goto LABEL_12;
  }

  LOBYTE(a1) = v40;
  if (v39[3] < v44)
  {
    sub_222A2907C(v44, isUniquelyReferenced_nonNull_native);
    v39 = v58;
    v45 = sub_222A26F40(v56);
    if ((a1 & 1) != (v46 & 1))
    {
      sub_222B030B8();
      __break(1u);
      return;
    }

    v41 = v45;
    goto LABEL_12;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v47 = v54;
  *(v3 + 40) = v39;
  if ((a1 & 1) == 0)
  {
    v48 = v57;
    v55(v57, v56, v11);
    sub_222AEC4C8(v41, v48, MEMORY[0x277D84FA0], v39);
  }

  v49 = v39[7] + 8 * v41;
  sub_222AE4114(v27, v24);
  (*(v12 + 8))(v27, v11);
  swift_endAccess();
  v50 = v57;
  v51 = v55;
  v55(v57, v53, v11);
  v51(v47, v56, v11);
  (*(v12 + 56))(v47, 0, 1, v11);
  swift_beginAccess();
  sub_222AC5B74(v47, v50);
  swift_endAccess();
}

void *sub_222A7FF10()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  return v0;
}

uint64_t sub_222A7FF68()
{
  sub_222A7FF10();

  return swift_deallocClassInstance();
}

void *sub_222A7FFC0()
{
  type metadata accessor for RequestLinkTable();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_222A394AC(MEMORY[0x277D84F90]);
  v0[2] = v1;
  type metadata accessor for ComponentEventTable();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F98];
  *(v3 + 16) = MEMORY[0x277D84F98];
  v0[3] = v3;
  v5 = sub_222A3A264(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7B8, &unk_222B09100);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v0[4] = v6;
  v0[5] = v4;
  v0[6] = v4;
  v0[7] = v4;
  v0[8] = v4;
  type metadata accessor for LogicalClockTable();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v4;
  v0[9] = v7;
  return v0;
}

uint64_t sub_222A80094(uint64_t a1)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v9 = v1[1];
  v11 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v9 + 16);
  if (*v1)
  {
    v13 = *v1;

    sub_222AB384C(a1, v11, v12, (v10 + 16), v10 + 32);
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    v24 = v1;
    v17 = 0;
    v20 = *(v4 + 16);
    v19 = v4 + 16;
    v18 = v20;
    v25 = *(v19 + 56);
    v26 = v12;
    while (1)
    {
      v18(v8, v11, v3);
      sub_222A2DB64(&qword_280CB8300);
      v21 = sub_222B02338();
      (*(v19 - 8))(v8, v3);
      if (v21)
      {
        return 0;
      }

      ++v17;
      v11 += v25;
      if (v26 == v17)
      {
        v1 = v24;
        break;
      }
    }
  }

  sub_222A80288(a1);
  v22 = *(v1[1] + 16) - 1;
  return 1;
}

uint64_t sub_222A80288(uint64_t a1)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3);
  v9 = v1 + 1;
  v10 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_222A23D50(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_222A23D50(v12 > 1, v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  result = (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v8, v3);
  v1[1] = v10;
  v15 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    if (MEMORY[0x223DC60E0](*(v15 + 16) & 0x3FLL) > v13)
    {
      v16 = *v1;
      result = swift_isUniquelyReferenced_native();
      v17 = *v1;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v18 = *v1;
        v19 = sub_222B01EA8();

        *v1 = v19;
        v17 = v19;
      }

      if (v17)
      {
        v20 = *(v17 + 16);
        v21 = *(*v9 + 16) + ~(*(v17 + 24) >> 6);
        return sub_222B01E58();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return result;
  }

  return sub_222A804D0();
}

uint64_t sub_222A804D0()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x223DC6100](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_222A80570(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_222A80570(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x223DC6100](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x223DC6110](v8, a4);
    sub_222A805F0(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_222A8068C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a4;
  v33 = a1;
  v6 = sub_222B018D8();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6, v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  if (a2)
  {
    if ((v41 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v15 = *(v10 + 16);
      v14 = v10 + 16;
      v29 = *(v14 + 56);
      v30 = v15;
      v31 = v14;
      v28 = (v14 - 8);
      v15(v12, v33, v6);
      while (1)
      {
        v16 = *a3;
        sub_222A2DB64(&qword_280CBA1F0);
        result = sub_222B022E8();
        v17 = 1 << *a3;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
          break;
        }

        v20 = v19 & result;
        v21 = v32;
        v22 = sub_222B01E48();
        v24 = v23;
        v26 = v25;
        (*v28)(v12, v6);
        v34 = a3;
        v35 = v21;
        v36 = v20;
        v37 = v22;
        v38 = v24;
        v39 = v26;
        v40 = 0;
        while (v37)
        {
          sub_222B01E88();
        }

        result = sub_222B01E78();
        if (++v13 == v41)
        {
          return result;
        }

        v30(v12, v33 + v29 * v13, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_222A80890(uint64_t a1)
{
  v2 = sub_222B018D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v28 - v10;
  v12 = sub_222A80B6C();
  v13 = sub_222A80B74(&v33, a1, 0, 1, v12);
  v14 = *(a1 + 16);
  v15 = v33;
  if (v33 != v14)
  {
    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 >= v33)
    {
      v31 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v30 = a1 + v31;
      sub_222AAA2B4(a1, a1 + v31, 0, (2 * v33) | 1);
      v34 = v13;
      v35 = v16;
      if (*(a1 + 16) >= v14)
      {
        v28[1] = v13;
        v28[2] = a1;
        v19 = *(v3 + 16);
        v18 = v3 + 16;
        v17 = v19;
        v32 = *(v18 + 56);
        v20 = (v18 - 8);

        v29 = v14;
        while (1)
        {
          v21 = v18;
          v17(v11, v30 + v32 * v15, v2);
          v22 = v34;
          v23 = v35 + v31;
          v24 = *(v35 + 16);
          if (v34)
          {

            sub_222AB384C(v11, v23, v24, (v22 + 16), v22 + 32);
            v26 = v25;

            if ((v26 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v24)
          {
            do
            {
              v17(v8, v23, v2);
              sub_222A2DB64(&qword_280CB8300);
              v27 = sub_222B02338();
              (*v20)(v8, v2);
              if (v27)
              {
                goto LABEL_7;
              }

              v23 += v32;
            }

            while (--v24);
          }

          sub_222A80288(v11);
LABEL_7:
          ++v15;
          (*v20)(v11, v2);
          v18 = v21;
          if (v15 == v29)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_222A80B74(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x223DC6100](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x223DC6110]();
    v15 = *(sub_222B018D8() - 8);
    sub_222A80FA0(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v8, (v14 + 16), v14 + 32);
    *a1 = v16;
    return v14;
  }

  else if (v8 >= 2)
  {
    v17 = *(sub_222B018D8() - 8);
    v18 = sub_222A80CC8(a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v8);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

size_t sub_222A80CC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_222B018D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v30 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v26 - v12;
  v37 = MEMORY[0x277D84F90];
  result = sub_222A23D50(0, a2 & ~(a2 >> 63), 0);
  v15 = v37;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v28 = a2;
    v29 = v2;
    v16 = 0;
    v33 = (v6 + 8);
    v26[1] = v6 + 32;
    v27 = a1;
    v17 = *(v6 + 16);
    v18 = *(v6 + 72);
    v34 = v17;
    v35 = v6 + 16;
    do
    {
      v31 = v16;
      v32 = v16 + 1;
      v17(v13, (a1 + v18 * v16), v5);
      v19 = *(v15 + 16) + 1;
      v36 = v15;
      while (--v19)
      {
        v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        sub_222A2DB64(&qword_280CB8300);
        v15 += v18;
        if (sub_222B02338())
        {
          (*v33)(v13, v5);
          a2 = v31;
          goto LABEL_11;
        }
      }

      v21 = v30;
      v34(v30, v13, v5);
      v37 = v36;
      v23 = *(v36 + 16);
      v22 = *(v36 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_222A23D50(v22 > 1, v23 + 1, 1);
        v21 = v30;
      }

      (*(v6 + 8))(v13, v5);
      v24 = v37;
      *(v37 + 16) = v23 + 1;
      v25 = v21;
      v15 = v24;
      (*(v6 + 32))(v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v23 * v18, v25, v5);
      a1 = v27;
      a2 = v28;
      v16 = v32;
      v17 = v34;
    }

    while (v32 != v28);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_222A80FA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a4;
  v8 = sub_222B018D8();
  v40 = *(v8 - 8);
  v9 = v40[8];
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11, v14);
  v17 = &v35 - v16;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v38 = a3;
    v35 = v4;
    v18 = 0;
    v19 = (v40 + 1);
    v36 = a2;
    v37 = a1;
    while (1)
    {
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v41 = v18 + 1;
      v56 = v40[9];
      v20 = v40[2];
      v46 = v18;
      v47 = a1 + v56 * v18;
      v20(v17);
      v21 = v38;
      v22 = *v38;
      sub_222A2DB64(&qword_280CBA1F0);
      result = sub_222B022E8();
      v23 = 1 << *v21;
      v24 = __OFSUB__(v23, 1);
      v25 = v23 - 1;
      if (v24)
      {
        goto LABEL_15;
      }

      v45 = v25 & result;
      v26 = v39;
      v27 = sub_222B01E48();
      v43 = v28;
      v44 = v27;
      v42 = v29;
      v30 = *v19;
      (*v19)(v17, v8);
      *&v48 = v21;
      *(&v48 + 1) = v26;
      *&v49 = v45;
      *(&v49 + 1) = v44;
      *&v50 = v43;
      *(&v50 + 1) = v42;
      v51 = 0;
      v55 = 0;
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v31 = sub_222B01E68();
      a1 = v37;
      if ((v32 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_222B01E78();
      v18 = v41;
      if (v41 == v36)
      {
        return 1;
      }
    }

    while (1)
    {
      (v20)(v17, a1 + v31 * v56, v8);
      (v20)(v13, v47, v8);
      sub_222A2DB64(&qword_280CB8300);
      v33 = sub_222B02338();
      v30(v13, v8);
      v30(v17, v8);
      if (v33)
      {
        return 0;
      }

      sub_222B01E88();
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v55 = v51;
      v31 = sub_222B01E68();
      if (v34)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

id sub_222A81314(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v25 - v11;
  if (!a2)
  {
    return 0;
  }

  result = [a2 timestamp];
  if (result)
  {
    v14 = result;
    v15 = [result timestampInNanoseconds];

    result = [a2 timestamp];
    if (result)
    {
      v16 = result;
      v17 = [result clockIdentifier];

      if (v17)
      {
        v18 = [v17 toSafeNSUUID];

        if (v18)
        {
          sub_222B01898();

          v19 = sub_222B018D8();
          (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
        }

        else
        {
          v19 = sub_222B018D8();
          (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
        }

        sub_222A65A04(v9, v12);
        sub_222B018D8();
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v12, 1, v19) == 1)
        {
          sub_222A34F20(v12, &unk_27D01DA50, &unk_222B04E20);
        }

        else
        {
          sub_222B01868();
          (*(v20 + 8))(v12, v19);
          v21 = [a1 eventMetadata];
          if (v21 || (v21 = [objc_allocWithZone(MEMORY[0x277D5A808]) init]) != 0)
          {
            v22 = v21;
            [v21 setEventGeneratedRelativeToBootTimeTimestampNs_];
            v23 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

            [v22 setEventGeneratedTimestampRefId_];

            [a1 setEventMetadata_];
            v24 = [a1 wrapAsAnyEvent];

            return v24;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_222A816E4()
{
  v1 = [v0 typeName];
  sub_222B02388();

  sub_222A397FC();
  v2 = sub_222B02B68();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 16 + 16 * v3);
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_222A8184C()
{
  result = MEMORY[0x223DC66E0](0xD000000000000014, 0x8000000222B12F10);
  qword_280CB4CB8 = 0xD000000000000036;
  unk_280CB4CC0 = 0x8000000222B12DB0;
  return result;
}

uint64_t sub_222A81908()
{
  if (qword_280CB4CB0 != -1)
  {
    swift_once();
  }

  v1 = qword_280CB4CB8;
  v2 = unk_280CB4CC0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DC66E0](0xD00000000000001DLL, 0x8000000222B12E10);

  qword_280CB4CA0 = v1;
  *algn_280CB4CA8 = v2;
  return result;
}

uint64_t sub_222A81A20()
{
  if (qword_280CB4C80 != -1)
  {
    swift_once();
  }

  v1 = qword_280CB4C88;
  v2 = qword_280CB4C90;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DC66E0](0x7461642E73636970, 0xE900000000000061);

  qword_280CB4CF0 = v1;
  unk_280CB4CF8 = v2;
  return result;
}

uint64_t sub_222A81B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier_];

  if (v4)
  {
    sub_222B01718();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222B01748();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t static Config.universalSuggestionsStoreDir.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_222B01F68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17 - v11;
  sub_222A81B0C(&v17 - v11);
  v13 = sub_222B01748();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_222A81E38(v12);
    v15 = 1;
  }

  else
  {
    sub_222B01F58();
    sub_222B016C8();
    (*(v3 + 8))(v7, v2);
    (*(v14 + 8))(v12, v13);
    v15 = 0;
  }

  return (*(v14 + 56))(a1, v15, 1, v13);
}

uint64_t sub_222A81E38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Config.universalSuggestionsStoreFilePath.getter()
{
  v0 = sub_222B01F68();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v25 - v9;
  v11 = sub_222B01748();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v25 - v19;
  sub_222A81B0C(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_222A81E38(v10);
    return 0;
  }

  else
  {
    sub_222B01F58();
    sub_222B016C8();
    v22 = *(v1 + 8);
    v22(v5, v0);
    v23 = *(v12 + 8);
    v23(v10, v11);
    sub_222B01F48();
    sub_222B016C8();
    v22(v5, v0);
    v23(v17, v11);
    v24 = sub_222B01728();
    v23(v20, v11);
    return v24;
  }
}

uint64_t sub_222A82194(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x223DC66E0](a2, 0xE500000000000000);
  *a3 = 0xD000000000000036;
  *a4 = 0x8000000222B12DB0;
  return result;
}

uint64_t sub_222A82244()
{
  if (qword_280CB4C60 != -1)
  {
    swift_once();
  }

  v1 = qword_280CB4C68;
  v2 = *algn_280CB4C70;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DC66E0](0x7461642E736D6970, 0xE900000000000061);

  qword_280CB4CD0 = v1;
  unk_280CB4CD8 = v2;
  return result;
}

uint64_t sub_222A82314(void *a1, void *a2, void *a3)
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

id sub_222A82480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroundTruthModelWipePhoneCallGroundTruthMigration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_222A824DC(void *a1, void *a2, void *a3)
{
  v7 = [a1 entity];
  v8 = [v7 name];

  if (v8)
  {
    v9 = sub_222B02388();
    v11 = v10;

    if (v9 == 0xD000000000000011 && 0x8000000222B11A30 == v11)
    {
    }

    else
    {
      v13 = sub_222B02F78();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v14 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    v15 = [a1 primitiveValueForKey_];

    if (v15)
    {
      sub_222B02BA8();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    v49[0] = v47;
    v49[1] = v48;
    if (*(&v48 + 1))
    {
      v16 = swift_dynamicCast();
      if (v16)
      {
        v44 = a2;
        v49[0] = v46;
        MEMORY[0x28223BE20](v16, v17);
        v42[2] = v49;
        v18 = sub_222AF69D0(sub_222A82928, v42, &unk_2835F16A8);

        if ((v18 & 1) == 0)
        {
          v19 = [v44 destinationEntityName];
          if (v19)
          {
            v20 = v19;
            v42[4] = v3;
            v21 = objc_opt_self();
            v22 = [a3 destinationContext];
            v23 = [v21 insertNewObjectForEntityForName:v20 inManagedObjectContext:v22];

            v50 = v23;
            v24 = [v23 entity];
            v25 = [v24 attributesByName];

            sub_222A82948();
            v26 = sub_222B022B8();

            v27 = v26 + 64;
            v28 = 1 << *(v26 + 32);
            v29 = -1;
            if (v28 < 64)
            {
              v29 = ~(-1 << v28);
            }

            v30 = v29 & *(v26 + 64);
            v31 = (v28 + 63) >> 6;
            v45 = v26;

            v32 = 0;
            for (i = a3; v30; a3 = i)
            {
              v33 = v32;
LABEL_24:
              v34 = __clz(__rbit64(v30));
              v30 &= v30 - 1;
              v35 = (*(v45 + 48) + ((v33 << 10) | (16 * v34)));
              v36 = *v35;
              v37 = v35[1];

              v38 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
              v39 = [a1 valueForKey_];

              v40 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

              [v50 setValue:v39 forKey:v40];
              swift_unknownObjectRelease();
            }

            while (1)
            {
              v33 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                break;
              }

              if (v33 >= v31)
              {

                v41 = v50;
                [a3 associateSourceInstance:a1 withDestinationInstance:v50 forEntityMapping:v44];

                return;
              }

              v30 = *(v27 + 8 * v33);
              ++v32;
              if (v30)
              {
                v32 = v33;
                goto LABEL_24;
              }
            }

            __break(1u);
          }
        }
      }
    }

    else
    {
      sub_222A254C4(v49);
    }
  }
}

unint64_t sub_222A82948()
{
  result = qword_27D01D848;
  if (!qword_27D01D848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01D848);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics15PluginLoadErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_222A829B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_222A829F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_222A82A3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_222A82A7C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 intent];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_222B05260;
    v6 = [v4 typeName];
    v7 = sub_222B02388();
    v9 = v8;

    v10 = type metadata accessor for SetTaskAttributeFeature.EventType(0);
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v9;
    *(v5 + 56) = v10;
    *(v5 + 64) = sub_222A82DEC(&qword_27D01D850, type metadata accessor for SetTaskAttributeFeature.EventType);
    *(v5 + 32) = v11;
    v12 = [v1 _donatedBySiri];
    v13 = type metadata accessor for SetTaskAttributeFeature.DonatedBySiri(0);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v5 + 96) = v13;
    *(v5 + 104) = sub_222A82DEC(&qword_27D01D858, type metadata accessor for SetTaskAttributeFeature.DonatedBySiri);
    *(v5 + 72) = v14;
    v15 = [v4 taskTitle];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 spokenPhrase];
      v18 = sub_222B02388();
      v20 = v19;

      v21 = type metadata accessor for SetTaskAttributeFeature.TaskContents(0);
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      *(v22 + 24) = v20;
      v5 = sub_222AA8FDC(1, 3, 1, v5);

      v25 = v21;
      v26 = sub_222A82DEC(&qword_27D01D860, type metadata accessor for SetTaskAttributeFeature.TaskContents);
      *&v24 = v22;
      *(v5 + 16) = 3;
      sub_222A2577C(&v24, v5 + 112);
    }

    else
    {
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t SetTaskAttributeFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SetTaskAttributeFeature.TaskContents.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SetTaskAttributeFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A82DEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SetTaskAttributeFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A82F60(char *a1)
{
  v1 = *a1;
  type metadata accessor for SetTaskAttributeFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A82F98(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for SetTaskAttributeFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t SetTaskAttributeFeature.TaskContents.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t SetTaskAttributeFeature.TaskContents.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SetTaskAttributeFeature.TaskContents.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_222A83098(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A830EC(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_222A83220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A83294, 0, 0);
}

uint64_t sub_222A83294()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(MEMORY[0x277D856D0] + 4);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_222A83344;
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  return MEMORY[0x282200308](v6, v7, v4);
}

uint64_t sub_222A83344()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222A5E6C4, 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

void *sub_222A834A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v12 = swift_allocBox();
  (*(*(a3 - 8) + 32))(v13, a1, a3);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = v12;
  *a6 = a5;
  a6[1] = result;
  return result;
}

uint64_t sub_222A8354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A835C0, 0, 0);
}

uint64_t sub_222A835C0()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  swift_beginAccess();
  sub_222B02B48();
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t AnyAsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_222A83678, 0, 0);
}

uint64_t sub_222A83678()
{
  v1 = v0[3];
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_222A8376C;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_222A8376C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_222A83860(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222A34620;

  return AnyAsyncIterator.next()(a1);
}

uint64_t sub_222A838F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222A83940(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222A83988(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_222A839DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222A35344;

  return sub_222A8354C(a1, v6, v4, v5, v7);
}

uint64_t sub_222A83A9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222A34620;

  return sub_222A83220(a1, v6, v4, v5, v7);
}

id _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59DC8]) init];
  if (v2)
  {
    v3 = v2;
    [v2 setSuggestionGenerationDomain_];
    return v3;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_280CBC458);
    v6 = sub_222B02128();
    v7 = sub_222B028E8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_222A230FC(0xD000000000000035, 0x8000000222B13130, &v10);
      _os_log_impl(&dword_222A1C000, v6, v7, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DC7E30](v9, -1, -1);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    return 0;
  }
}

id _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO35suggestionChangeDataCaptureMetadata10changeTypeSo0e10PLUSChangejkL0CSgSo0eojkN0V_tFZ_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59C48]) init];
  if (v2)
  {
    v3 = v2;
    [v2 setOperationType_];
    return v3;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_280CBC458);
    v6 = sub_222B02128();
    v7 = sub_222B028E8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_222A230FC(0xD000000000000030, 0x8000000222B130F0, &v10);
      _os_log_impl(&dword_222A1C000, v6, v7, "PLUSSchemaMessageConstructor.%s:  failed to create PLUS SELF event templates", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DC7E30](v9, -1, -1);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    return 0;
  }
}

uint64_t PBCodable.wrapAsAnyEvent(time:turnID:)(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(MEMORY[0x277D5A808]);
    v6 = v1;
    v7 = [v5 init];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v10 = sub_222B01878();
      v11 = AFTurnIdentifierGetBytes();

      if (v11)
      {
        v12 = sub_222B01798();
        v14 = v13;

        v11 = sub_222B01788();
        sub_222A26530(v12, v14);
      }

      [v9 setTurnID_];

      if (a1 < 0)
      {
        __break(1u);
        goto LABEL_21;
      }

      [v9 setEventGeneratedRelativeToBootTimeTimestampNs_];
    }

    v15 = [objc_allocWithZone(MEMORY[0x277D5A800]) init];
    if (v15)
    {
      v16 = v15;
      [v15 setEventType_];
      [v16 setEventMetadata_];
      v17 = [v16 wrapAsAnyEvent];
      if (v17)
      {
        v18 = v17;

        return v18;
      }

      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v23 = sub_222B02148();
      __swift_project_value_buffer(v23, qword_280CBC458);
      v20 = sub_222B02128();
      v24 = sub_222B028E8();
      if (os_log_type_enabled(v20, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_222A1C000, v20, v24, "Failed to wrap SISchemaClientEvent as SISchemaAnyEvent", v25, 2u);
        MEMORY[0x223DC7E30](v25, -1, -1);
      }

      goto LABEL_18;
    }

    if (qword_280CBA628 == -1)
    {
LABEL_11:
      v19 = sub_222B02148();
      __swift_project_value_buffer(v19, qword_280CBC458);
      v20 = sub_222B02128();
      v21 = sub_222B028E8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_222A1C000, v20, v21, "Failed to create a SISchemaClientEvent", v22, 2u);
        MEMORY[0x223DC7E30](v22, -1, -1);
      }

LABEL_18:

      return 0;
    }

LABEL_21:
    swift_once();
    goto LABEL_11;
  }

  return result;
}

uint64_t DismissalTimestampFeature.__allocating_init(value:)(double a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DismissalReasonFeature.__allocating_init(value:)(int a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_222A84214()
{
  result = sub_222A96DD8(&unk_2835F1718);
  qword_280CB5D88 = &unk_2835F16E8;
  return result;
}

uint64_t static DismissalFeatureExtractor.allUserDismissalEvents.getter()
{
  if (qword_280CB5D80 != -1)
  {
    swift_once();
  }
}

uint64_t DismissalTimestampFeature.init(value:)(double a1)
{
  result = v1;
  *(v1 + 16) = a1;
  return result;
}

uint64_t DismissalTimestampFeature.__allocating_init(value:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D108, &unk_222B06230);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1;
  }

  return result;
}

uint64_t DismissalTimestampFeature.init(value:)(uint64_t a1, char a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D108, &unk_222B06230);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v2 + 16) = a1;
  }

  return v2;
}

uint64_t sub_222A843D4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for DismissalTimestampFeature(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A8440C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for DismissalTimestampFeature(0);
  result = swift_allocObject();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D108, &unk_222B06230);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1;
  }

  return result;
}

uint64_t DismissalReasonFeature.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  if ((a1 & 0x100000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D898, &qword_222B09A28);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1;
  }

  return result;
}

uint64_t DismissalReasonFeature.init(value:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D898, &qword_222B09A28);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1;
  }

  return v1;
}

uint64_t sub_222A84578(int *a1)
{
  v1 = *a1;
  type metadata accessor for DismissalReasonFeature(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A845B0(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  type metadata accessor for DismissalReasonFeature(0);
  result = swift_allocObject();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D898, &qword_222B09A28);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1;
  }

  return result;
}

void *sub_222A84628(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  *&v66 = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_34:
    a1 = sub_222B02DC8();
    v4 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_35:
    v65 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_35;
  }

LABEL_3:
  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v64 = v2;
  v65 = MEMORY[0x277D84F90];
  v7 = &off_2784BA000;
  v63 = v2 & 0xC000000000000001;
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x223DC6F00](v8, v2);
      }

      else
      {
        if (v8 >= *(v3 + 16))
        {
          goto LABEL_33;
        }

        v9 = *(v2 + 8 * v8 + 32);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if ([v9 v7[94]] == 6)
      {
        v11 = [v10 payload];
        if (v11)
        {
          v12 = v11;
          v13 = sub_222B01798();
          v15 = v14;

          v16 = sub_222B01788();
          v17 = v15;
          v7 = &off_2784BA000;
          sub_222A26530(v13, v17);
        }

        else
        {
          v16 = 0;
        }

        v19 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

        v18 = [v19 event];
        if (!v18)
        {
          v18 = v10;
          goto LABEL_6;
        }
      }

      else
      {
        v18 = v10;
      }

      v20 = sub_222A40414();
      [v18 v7[94]];
      v21 = sub_222B02A28();
      if (!v21 || v20 != v21)
      {

        goto LABEL_6;
      }

      v22 = [v18 payload];
      if (v22)
      {
        v23 = v22;
        v24 = v4;
        v25 = sub_222B01798();
        v27 = v26;

        v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v29 = sub_222B01788();
        v30 = v25;
        v4 = v24;
        v31 = v27;
        v6 = v63;
        v2 = v64;
        sub_222A26530(v30, v31);
        v32 = v28;
      }

      else
      {
        v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v29 = 0;
      }

      v33 = [v32 initWithData_];

      if (!v33)
      {
        v18 = v10;
        v7 = &off_2784BA000;
        goto LABEL_6;
      }

      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();

      v18 = v33;
      v7 = &off_2784BA000;
      if (v34)
      {
        break;
      }

LABEL_6:

      ++v8;
      if (v5 == v4)
      {
        goto LABEL_36;
      }
    }

    MEMORY[0x223DC6810]();
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_222B02648();
    }

    a1 = sub_222B02688();
    v65 = v66;
  }

  while (v5 != v4);
LABEL_36:
  *&v66 = v65;
  if (v65 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = a1)
  {
    while (!__OFSUB__(i--, 1))
    {
      if ((v65 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x223DC6F00](i, v65);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        if (i >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v38 = *(v65 + 32 + 8 * i);
      }

      v39 = v38;
      v40 = [v38 uiStateTransition];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 dismissed];

        if (v42)
        {
          [v42 dismissalReason];

          goto LABEL_50;
        }
      }

      if (!i)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    a1 = sub_222B02DC8();
  }

LABEL_50:
  MEMORY[0x28223BE20](a1, a2);
  v62[2] = &v66;
  v44 = sub_222A9DCE0(sub_222A6E41C, v62, i, v43);

  if (!v44)
  {
    return MEMORY[0x277D84F90];
  }

  if (([v44 hasDeviceDynamicContext] & 1) != 0 && (getEventTimestampFromContext(from:context:)(v44, v44), (v46 & 1) == 0))
  {
    v48 = v45;
    v49 = type metadata accessor for DismissalTimestampFeature(0);
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    v47 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
    v52 = v47[2];
    v51 = v47[3];
    if (v52 >= v51 >> 1)
    {
      v47 = sub_222AA8FDC((v51 > 1), v52 + 1, 1, v47);
    }

    v67 = v49;
    v68 = sub_222A84D74(&qword_27D01D8B0, type metadata accessor for DismissalTimestampFeature);
    *&v66 = v50;
    v47[2] = v52 + 1;
    sub_222A2577C(&v66, &v47[5 * v52 + 4]);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  v53 = [v44 uiStateTransition];
  if (v53 && (v54 = v53, v55 = [v53 dismissed], v54, v55))
  {
    v56 = [v55 dismissalReason];

    v57 = type metadata accessor for DismissalReasonFeature(0);
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_222AA8FDC(0, v47[2] + 1, 1, v47);
    }

    v60 = v47[2];
    v59 = v47[3];
    if (v60 >= v59 >> 1)
    {
      v47 = sub_222AA8FDC((v59 > 1), v60 + 1, 1, v47);
    }

    v67 = v57;
    v68 = sub_222A84D74(qword_280CB6328, type metadata accessor for DismissalReasonFeature);
    *&v66 = v58;
    v47[2] = v60 + 1;
    sub_222A2577C(&v66, &v47[5 * v60 + 4]);
  }

  else
  {
  }

  return v47;
}

uint64_t sub_222A84D74(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_222A84E10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroundTruthModelV1toV2CoreDataMigration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Conversation.init(_:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
  v4 = swift_allocObject();
  v4[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  if (a1 >> 62)
  {
    v6 = sub_222B02DC8();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = sub_222A84F40();
  result = swift_allocObject();
  *(result + 16) = v6;
  v4[2] = v5;
  v4[3] = v7;
  v4[4] = result;
  v4[5] = v7;
  *a2 = v4;
  return result;
}

unint64_t sub_222A84F40()
{
  result = qword_280CB4AB0;
  if (!qword_280CB4AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01DCE0, &qword_222B0D8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4AB0);
  }

  return result;
}

uint64_t sub_222A84FB0()
{
  v0 = sub_222B018D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v168 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v153 = &v152 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v160 = &v152 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v155 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v164 = &v152 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v154 = &v152 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v152 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v169 = &v152 - v27;
  v28 = MEMORY[0x277D84F90];
  v29 = sub_222A3A288(MEMORY[0x277D84F90]);
  v159 = sub_222B02D68();
  sub_222B02E18();
  v30 = v177;
  if (!v177)
  {
LABEL_93:

    v135 = v28[2];
    v136 = MEMORY[0x277D84F90];
    if (v135)
    {
      v166 = v29;
      v177 = MEMORY[0x277D84F90];
      sub_222A23D94(0, v135, 0);
      v167 = v28;
      v137 = v28 + 4;
      v136 = v177;
      do
      {
        v138 = *v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
        v139 = swift_allocObject();
        v139[6] = v138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
        v140 = swift_allocObject();
        *(v140 + 16) = 0;
        if (v138 >> 62)
        {
          v141 = sub_222B02DC8();
        }

        else
        {
          v141 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v142 = sub_222A84F40();
        v143 = swift_allocObject();
        *(v143 + 16) = v141;
        v139[2] = v140;
        v139[3] = v142;
        v139[4] = v143;
        v139[5] = v142;
        v177 = v136;
        v144 = v136[2];
        v145 = v136[3];

        if (v144 >= v145 >> 1)
        {
          sub_222A23D94((v145 > 1), v144 + 1, 1);
          v136 = v177;
        }

        v136[2] = v144 + 1;
        v136[v144 + 4] = v139;
        ++v137;
        --v135;
      }

      while (v135);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D8B8, &unk_222B09BE0);
    v146 = swift_allocObject();
    v146[6] = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
    v147 = swift_allocObject();
    *(v147 + 16) = 0;
    v148 = sub_222A84F40();
    v149 = v136[2];
    v150 = swift_allocObject();
    *(v150 + 16) = v149;

    v146[2] = v147;
    v146[3] = v148;
    v146[4] = v150;
    v146[5] = v148;
    return v146;
  }

  v172 = (v1 + 56);
  v174 = (v1 + 48);
  v157 = (v1 + 32);
  v163 = (v1 + 16);
  v161 = (v1 + 8);
  v156 = xmmword_222B06DF0;
  v31 = &off_2784BA000;
  v171 = v0;
  v158 = v1;
  while (2)
  {
    v170 = v30;
    v166 = v29;
    v167 = v28;
    v33 = *(v30 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);
    v165 = v33 >> 62;
    v34 = v33 & 0xFFFFFFFFFFFFFF8;
    if (v33 >> 62)
    {
      v35 = sub_222B02DC8();
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v173 = v33 & 0xC000000000000001;
    v162 = v33 + 32;

    v36 = 0;
    v175 = v33;
    while (1)
    {
      if (v35 == v36)
      {
        goto LABEL_39;
      }

      if (v173)
      {
        v37 = MEMORY[0x223DC6F00](v36, v33);
      }

      else
      {
        if (v36 >= *(v34 + 16))
        {
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v37 = *(v33 + 8 * v36 + 32);
      }

      v38 = v37;
      if ([v37 v31[94]] == 6)
      {
        v39 = [v38 payload];
        if (v39)
        {
          v40 = v39;
          v41 = sub_222B01798();
          v43 = v42;

          v44 = sub_222B01788();
          v45 = v43;
          v31 = &off_2784BA000;
          sub_222A26530(v41, v45);
        }

        else
        {
          v44 = 0;
        }

        v47 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

        v46 = [v47 event];
        if (!v46)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v46 = v38;
      }

      v48 = sub_222A40414();
      [v46 v31[94]];
      v49 = sub_222B02A28();
      if (!v49 || v48 != v49)
      {
        goto LABEL_31;
      }

      v50 = [v46 payload];
      if (v50)
      {
        v51 = v50;
        v52 = sub_222B01798();
        v54 = v53;

        v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v56 = sub_222B01788();
        v57 = v52;
        v31 = &off_2784BA000;
        sub_222A26530(v57, v54);
        v58 = v55;
      }

      else
      {
        v58 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v56 = 0;
      }

      v59 = [v58 initWithData_];

      if (!v59)
      {
        goto LABEL_30;
      }

      objc_opt_self();
      v60 = swift_dynamicCastObjCClass();

      if (!v60)
      {
        v46 = v59;
LABEL_30:
        v0 = v171;
LABEL_31:

LABEL_32:
        (*v172)(v25, 1, 1, v0);
        v59 = v38;
        goto LABEL_33;
      }

      v61 = [v60 clientConversationTrace];
      if (v61 && (v62 = v61, v63 = [v61 previousTurnID], v62, v63))
      {
        v64 = sub_222B01798();
        v66 = v65;

        sub_222A67044(v64, v66, v25);
        sub_222A26530(v64, v66);

        v0 = v171;
      }

      else
      {
        v0 = v171;
        (*v172)(v25, 1, 1, v171);
      }

LABEL_33:

      v67 = (*v174)(v25, 1, v0);
      sub_222A264C8(v25);
      v33 = v175;
      if (v67 != 1)
      {
        break;
      }

      v68 = __OFADD__(v36++, 1);
      if (v68)
      {
        goto LABEL_104;
      }
    }

    v35 = v36;
LABEL_39:
    v69 = v164;
    v70 = v169;
    if (!v165)
    {
      if (v35 != *(v34 + 16))
      {
        goto LABEL_41;
      }

LABEL_49:
      v85 = 1;
      v74 = v166;
      v28 = v167;
      v75 = v158;
      v76 = v160;
LABEL_54:
      (*v172)(v70, v85, 1, v0);

      sub_222A6E45C(v70, v69);
      if ((*v174)(v69, 1, v0) == 1)
      {
        sub_222A264C8(v69);
        goto LABEL_70;
      }

      (*v157)(v76, v69, v0);
      if (v74[2])
      {
        v87 = sub_222A26F40(v76);
        if (v88)
        {
          v89 = *(v74[7] + 8 * v87);
          if ((v89 & 0x8000000000000000) != 0)
          {
            goto LABEL_108;
          }

          if (v89 >= v28[2])
          {
            goto LABEL_109;
          }

          v177 = v28[v89 + 4];

          MEMORY[0x223DC6810](v90);
          if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v133 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222B02648();
          }

          sub_222B02688();
          v91 = v177;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_222A765B8(v28);
          }

          v92 = v170;
          if (v89 >= v28[2])
          {
            goto LABEL_110;
          }

          v93 = &v28[v89];
          v94 = v93[4];
          v93[4] = v91;

          v95 = v0;
          v96 = *v163;
          v97 = v153;
          (*v163)(v153, v92 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v95);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v176 = v74;
          v99 = sub_222A26F40(v97);
          v101 = v74[2];
          v102 = (v100 & 1) == 0;
          v68 = __OFADD__(v101, v102);
          v103 = v101 + v102;
          if (v68)
          {
            goto LABEL_111;
          }

          v104 = v100;
          if (v74[3] >= v103)
          {
            v31 = &off_2784BA000;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_78;
            }

            v134 = v99;
            sub_222A2CB9C();
            v99 = v134;
            v29 = v176;
            if (v104)
            {
              goto LABEL_3;
            }

LABEL_79:
            v29[(v99 >> 6) + 8] |= 1 << v99;
            v119 = v99;
            v120 = v153;
            v121 = v171;
            v96(v29[6] + *(v75 + 72) * v99, v153, v171);
            v0 = v121;
            *(v29[7] + 8 * v119) = v89;

            v122 = *(v75 + 8);
            v122(v120, v121);
            v122(v160, v121);
            sub_222A264C8(v169);
            v123 = v29[2];
            v68 = __OFADD__(v123, 1);
            v124 = v123 + 1;
            if (!v68)
            {
              v29[2] = v124;
              goto LABEL_4;
            }

            goto LABEL_112;
          }

          sub_222A29AC0(v103, isUniquelyReferenced_nonNull_native);
          v99 = sub_222A26F40(v153);
          v31 = &off_2784BA000;
          if ((v104 & 1) != (v105 & 1))
          {
            goto LABEL_114;
          }

LABEL_78:
          v29 = v176;
          if ((v104 & 1) == 0)
          {
            goto LABEL_79;
          }

LABEL_3:
          *(v29[7] + 8 * v99) = v89;

          v32 = *v161;
          v0 = v171;
          (*v161)(v153, v171);
          v32(v160, v0);
          sub_222A264C8(v169);
LABEL_4:
          sub_222B02E18();
          v30 = v177;
          if (!v177)
          {
            goto LABEL_93;
          }

          continue;
        }
      }

      (*v161)(v76, v0);
LABEL_70:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
      v106 = swift_allocObject();
      *(v106 + 16) = v156;
      v107 = v170;
      *(v106 + 32) = v170;
      v108 = *v163;
      v109 = v168;
      (*v163)(v168, v107 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v0);
      v110 = v28[2];

      v111 = swift_isUniquelyReferenced_nonNull_native();
      v177 = v74;
      v112 = sub_222A26F40(v109);
      v114 = v74[2];
      v115 = (v113 & 1) == 0;
      v68 = __OFADD__(v114, v115);
      v116 = v114 + v115;
      if (!v68)
      {
        v117 = v113;
        if (v74[3] >= v116)
        {
          v31 = &off_2784BA000;
          if (v111)
          {
            goto LABEL_75;
          }

          v125 = v112;
          sub_222A2CB9C();
          v112 = v125;
          v29 = v177;
          if ((v117 & 1) == 0)
          {
            goto LABEL_84;
          }

LABEL_76:
          *(v29[7] + 8 * v112) = v110;
          v0 = v171;
          (*v161)(v168, v171);
LABEL_86:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_222AA9834(0, v28[2] + 1, 1, v28);
          }

          v132 = v28[2];
          v131 = v28[3];
          if (v132 >= v131 >> 1)
          {
            v28 = sub_222AA9834((v131 > 1), v132 + 1, 1, v28);
          }

          sub_222A264C8(v169);
          v28[2] = v132 + 1;
          v28[v132 + 4] = v106;
          goto LABEL_4;
        }

        sub_222A29AC0(v116, v111);
        v112 = sub_222A26F40(v168);
        v31 = &off_2784BA000;
        if ((v117 & 1) != (v118 & 1))
        {
          goto LABEL_114;
        }

LABEL_75:
        v29 = v177;
        if (v117)
        {
          goto LABEL_76;
        }

LABEL_84:
        v29[(v112 >> 6) + 8] |= 1 << v112;
        v126 = v112;
        v127 = v168;
        v128 = v171;
        v108(v29[6] + *(v75 + 72) * v112, v168, v171);
        *(v29[7] + 8 * v126) = v110;
        v0 = v128;
        (*(v75 + 8))(v127, v128);
        v129 = v29[2];
        v68 = __OFADD__(v129, 1);
        v130 = v129 + 1;
        if (!v68)
        {
          v29[2] = v130;
          v31 = &off_2784BA000;
          goto LABEL_86;
        }

LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    break;
  }

  if (v35 == sub_222B02DC8())
  {
    goto LABEL_49;
  }

LABEL_41:
  if (v173)
  {
    v71 = MEMORY[0x223DC6F00](v35, v33);
  }

  else
  {
    if (v35 >= *(v34 + 16))
    {
      goto LABEL_106;
    }

    v71 = *(v162 + 8 * v35);
  }

  v72 = v71;
  v73 = sub_222A66E54();
  v74 = v166;
  v28 = v167;
  v75 = v158;
  v76 = v160;
  if (v73)
  {
    v77 = v73;
    v78 = [v73 clientConversationTrace];
    if (v78 && (v79 = v78, v80 = [v78 previousTurnID], v79, v80))
    {
      v81 = sub_222B01798();
      v83 = v82;

      v84 = v154;
      sub_222A67044(v81, v83, v154);
      sub_222A26530(v81, v83);

      v72 = v77;
      v0 = v171;
    }

    else
    {
      v0 = v171;
      v84 = v154;
      (*v172)(v154, 1, 1, v171);

      v72 = v77;
    }
  }

  else
  {
    v84 = v154;
    (*v172)(v154, 1, 1, v0);
  }

  v86 = v155;
  sub_222A6E45C(v84, v155);
  if ((*v174)(v86, 1, v0) != 1)
  {
    v70 = v169;
    (*v157)(v169, v86, v0);
    sub_222A264C8(v84);
    v85 = 0;
    v69 = v164;
    goto LABEL_54;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  result = sub_222B030B8();
  __break(1u);
  return result;
}

uint64_t sub_222A85F4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222A85F94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222A85FE4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  sub_222A6EEE8();
  if ((sub_222B02AE8() & 1) == 0)
  {
    return 0;
  }

  v10 = sub_222B02AE8() & (v5 == v9);
  if (v4 == v8)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222A860D4()
{
  sub_222A86648(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_222A861B4(uint64_t a1, unsigned int a2)
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

uint64_t sub_222A861FC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222A86258()
{
  v0 = sub_222B02E48();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222A862A4(void *a1)
{
  v2 = [a1 intentName];
  v3 = sub_222B02388();
  v5 = v4;

  sub_222A250BC(0, &qword_27D01D8C8, 0x277CD41A8);
  v6 = [swift_getObjCClassFromMetadata() typeName];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = sub_222B02388();
  v10 = v9;

  if (v3 == v8 && v5 == v10)
  {
  }

  else
  {
    v12 = sub_222B02F78();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  v14 = [a1 slotValue];
  v15 = sub_222B02388();
  v17 = v16;

  if (v15 == 0x746361746E6F63 && v17 == 0xE700000000000000)
  {
    goto LABEL_12;
  }

  v18 = sub_222B02F78();

  if (v18)
  {
    return 1;
  }

  v19 = [a1 slotValue];
  v20 = sub_222B02388();
  v22 = v21;

  if (v20 == 0x73746361746E6F63 && v22 == 0xE800000000000000)
  {
LABEL_12:

    return 1;
  }

  v23 = sub_222B02F78();

  return v23 & 1;
}

uint64_t sub_222A864B4(void *a1)
{
  v2 = [a1 intentName];
  v3 = sub_222B02388();
  v5 = v4;

  sub_222A250BC(0, &qword_27D01D8C0, 0x277CD4078);
  v6 = [swift_getObjCClassFromMetadata() typeName];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = sub_222B02388();
  v10 = v9;

  if (v3 == v8 && v5 == v10)
  {
  }

  else
  {
    v12 = sub_222B02F78();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  v14 = [a1 slotValue];
  v15 = sub_222B02388();
  v17 = v16;

  if (v15 == 0x6E65697069636572 && v17 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v18 = sub_222B02F78();

    return v18 & 1;
  }
}

void sub_222A86648(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}