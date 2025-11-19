uint64_t sub_1DA8983E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

unint64_t sub_1DA89846C()
{
  result = qword_1EE115A90;
  if (!qword_1EE115A90)
  {
    sub_1DA9407F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115A90);
  }

  return result;
}

unint64_t sub_1DA8984C4()
{
  result = qword_1EE115A80;
  if (!qword_1EE115A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115A80);
  }

  return result;
}

uint64_t sub_1DA8985B0()
{
  v0 = objc_opt_self();
  v1 = sub_1DA93F904();
  v2 = [v0 imageDataForContentURL_];

  v3 = sub_1DA93F9A4();
  return v3;
}

uint64_t sub_1DA8986BC()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69A47D8];
  sub_1DA940A14();
  *(&v11 + 1) = v3;
  sub_1DA9412F4();
  v12 = sub_1DA898804();
  *&v11 = sub_1DA9410D4();
  sub_1DA848FE8(&v11, v10);
  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA90AFBC(v10, v13, isUniquelyReferenced_nonNull_native);
  sub_1DA862DE8(v13);
  if ((v1 & 1) == 0)
  {
    v6 = *MEMORY[0x1E69A47D0];
    *&v11 = sub_1DA940A14();
    *(&v11 + 1) = v7;
    sub_1DA9412F4();
    v12 = MEMORY[0x1E69E6530];
    *&v11 = 5;
    sub_1DA848FE8(&v11, v10);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90AFBC(v10, v13, v8);
    sub_1DA862DE8(v13);
  }

  return v4;
}

unint64_t sub_1DA898804()
{
  result = qword_1EE114D70;
  if (!qword_1EE114D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE114D70);
  }

  return result;
}

unint64_t sub_1DA898850(uint64_t a1)
{
  v3 = type metadata accessor for CloudAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1DA898B50(a1, v6);
  v8 = 0x1010201uLL >> (8 * swift_getEnumCaseMultiPayload());
  sub_1DA898BB4(v6);
  result = sub_1DA898990(v8);
  if ((v7 & 1) == 0)
  {
    v10 = *MEMORY[0x1E69A47D0];
    v11 = result;
    *&v16 = sub_1DA940A14();
    *(&v16 + 1) = v12;
    sub_1DA9412F4();
    v17 = MEMORY[0x1E69E6530];
    *&v16 = 5;
    sub_1DA848FE8(&v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v11;
    sub_1DA90AFBC(v15, v18, isUniquelyReferenced_nonNull_native);
    sub_1DA862DE8(v18);
    return v14;
  }

  return result;
}

unint64_t sub_1DA898990(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1DA848EAC(MEMORY[0x1E69E7CC0]);
  if (v1)
  {
    v3 = *MEMORY[0x1E69A47D8];
    *&v15 = sub_1DA940A14();
    *(&v15 + 1) = v4;
    sub_1DA9412F4();
    if (v1 == 2)
    {
      v5 = 259200.0;
    }

    else
    {
      v5 = 1800.0;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E69A47A0];
    sub_1DA940A14();
    *(&v15 + 1) = v7;
    sub_1DA9412F4();
    v16 = sub_1DA898804();
    *&v15 = sub_1DA9410E4();
    sub_1DA848FE8(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90AFBC(v14, v17, isUniquelyReferenced_nonNull_native);
    sub_1DA862DE8(v17);
    v9 = *MEMORY[0x1E69A47D8];
    *&v15 = sub_1DA940A14();
    *(&v15 + 1) = v10;
    sub_1DA9412F4();
    v5 = 0.5;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v16 = sub_1DA898804();
  *&v15 = v11;
  sub_1DA848FE8(&v15, v14);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA90AFBC(v14, v17, v12);
  sub_1DA862DE8(v17);
  return v2;
}

uint64_t sub_1DA898B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA898BB4(uint64_t a1)
{
  v2 = type metadata accessor for CloudAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA898C10(uint64_t a1, unint64_t a2, CFTimeInterval a3)
{
  v4 = v3;
  v22[1] = *MEMORY[0x1E69E9840];
  AssertionID = 0;
  v8 = sub_1DA940A04();
  v9 = sub_1DA940A04();
  v10 = sub_1DA940A04();

  v11 = sub_1DA940A04();
  v12 = IOPMAssertionCreateWithDescription(v8, v9, v10, 0, 0, a3, v11, &AssertionID);

  if (v12)
  {
    *(v4 + 16) = 0;
    if (qword_1EE110D90 != -1)
    {
      swift_once();
    }

    v13 = sub_1DA9405A4();
    __swift_project_value_buffer(v13, qword_1EE11AD60);

    v14 = sub_1DA940584();
    v15 = sub_1DA940F14();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136446210;
      v18 = sub_1DA7AE6E8(a1, a2, v22);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1DA7A9000, v14, v15, "Failed to create power assertion for %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E12739F0](v17, -1, -1);
      MEMORY[0x1E12739F0](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    *(v4 + 16) = AssertionID;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1DA898E84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    IOPMAssertionRelease(v1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1DA898EE4()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_id;
  v2 = sub_1DA93FEC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_analytics);

  v4 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  v5 = sub_1DA9401F4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_orderedSteps);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA898FE0()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  sub_1DA941764();
  v7 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  sub_1DA899A14(&qword_1ECBD6090, MEMORY[0x1E69DF180]);
  sub_1DA9409B4();
  (*(v2 + 8))(v5, v1);
  return sub_1DA941794();
}

uint64_t sub_1DA899140()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  sub_1DA899A14(&qword_1ECBD6090, MEMORY[0x1E69DF180]);
  sub_1DA9409B4();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1DA899290()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  sub_1DA941764();
  v7 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  sub_1DA899A14(&qword_1ECBD6090, MEMORY[0x1E69DF180]);
  sub_1DA9409B4();
  (*(v2 + 8))(v5, v1);
  return sub_1DA941794();
}

uint64_t sub_1DA8993F4(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1DA9401F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19[-v10];
  v12 = *a1;
  v13 = *a2;
  v14 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  swift_beginAccess();
  v15 = v5[2];
  v15(v11, v12 + v14, v4);
  v16 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  swift_beginAccess();
  v15(v9, v13 + v16, v4);
  LOBYTE(v13) = MEMORY[0x1E12711F0](v11, v9);
  v17 = v5[1];
  v17(v9, v4);
  v17(v11, v4);
  return v13 & 1;
}

uint64_t sub_1DA89958C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_id;
  v5 = sub_1DA93FEC4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1DA899608()
{
  if (UNIsInternalInstall() && (v0 = objc_allocWithZone(MEMORY[0x1E695E000]), v1 = sub_1DA940A04(), v2 = [v0 initWithSuiteName_], v1, v2))
  {
    v3 = sub_1DA940A04();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  byte_1EE112408 = v4;
}

uint64_t isTimeoutDebugUIEnabled.getter()
{
  if (qword_1EE112400 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_1EE112408;
}

uint64_t isTimeoutDebugUIEnabled.setter(char a1)
{
  if (qword_1EE112400 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_1EE112408 = a1 & 1;
  return result;
}

uint64_t (*isTimeoutDebugUIEnabled.modify())()
{
  if (qword_1EE112400 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t type metadata accessor for NotificationPipeline()
{
  result = qword_1EE115528;
  if (!qword_1EE115528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA8998A4()
{
  result = sub_1DA93FEC4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DA9401F4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DA899A14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA899A5C(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DA7BD988(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), (v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1DA899B2C(uint64_t a1)
{
  v2 = type metadata accessor for StepFailure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NotificationSource.teamIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NotificationSource.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NotificationSource.displayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

unint64_t NotificationSource.state.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1DA8304A0(v2);
}

uint64_t sub_1DA899C30()
{
  v17 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA9596E0;
  v2 = *(v0 + 24);
  *(inited + 32) = *(v0 + 16);
  *(inited + 40) = v2;
  if (*(v0 + 48))
  {
    v3 = *MEMORY[0x1E6993B70];
  }

  else
  {
    v3 = *MEMORY[0x1E6993B68];
  }

  v4 = *MEMORY[0x1E6993B68];
  v5 = v3;
  v6 = objc_opt_self();

  v7 = [v6 sharedCategories];
  v8 = sub_1DA940A04();
  v9 = [v7 bundleIDForPlatform:v4 fromBundleID:v8 platform:v5];

  if (v9)
  {
    v10 = sub_1DA940A14();
    v12 = v11;

    inited = sub_1DA7B6928(1, 2, 1, inited);
    *(inited + 16) = 2;
    *(inited + 48) = v10;
    *(inited + 56) = v12;
  }

  v13 = *(v0 + *(type metadata accessor for NotificationSource() + 40));

  v14 = sub_1DA89DA08(inited, v13);

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t NotificationSource.hash(into:)()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  v2 = v0[2];
  v3 = v0[3];
  sub_1DA940AB4();
  v4 = *(v0 + 48);
  return sub_1DA941784();
}

uint64_t NotificationSource.init(teamIdentifier:bundleIdentifier:displayName:isRemote:state:bundleURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *a8;
  v19 = type metadata accessor for NotificationSource();
  *(a9 + *(v19 + 40)) = MEMORY[0x1E69E7CD0];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v18;
  v20 = *(v19 + 36);
  v21 = sub_1DA93F964();
  v22 = *(*(v21 - 8) + 32);

  return v22(a9 + v20, a10, v21);
}

unint64_t sub_1DA899F3C()
{
  v1 = *v0;
  v2 = 0x6E6564496D616574;
  v3 = 0x5255656C646E7562;
  if (v1 != 5)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x65746F6D65527369;
  if (v1 != 3)
  {
    v4 = 0x6574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1DA89A038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA89F040(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA89A06C(uint64_t a1)
{
  v2 = sub_1DA89DD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89A0A8(uint64_t a1)
{
  v2 = sub_1DA89DD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationSource.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60E0, &qword_1DA95DFE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89DD34();
  sub_1DA941834();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_1DA9415B4();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v22) = 1;
    sub_1DA9415D4();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v22) = 2;
    sub_1DA9415D4();
    v17 = *(v3 + 48);
    LOBYTE(v22) = 3;
    sub_1DA9415E4();
    v22 = v3[7];
    HIBYTE(v21) = 4;
    sub_1DA8304A0(v22);
    sub_1DA8304D0();
    sub_1DA941604();
    sub_1DA830524(v22);
    v18 = type metadata accessor for NotificationSource();
    v19 = *(v18 + 36);
    LOBYTE(v22) = 5;
    sub_1DA93F964();
    sub_1DA89E1E8(&qword_1ECBD60F0, MEMORY[0x1E6968FB0]);
    sub_1DA941604();
    v22 = *(v3 + *(v18 + 40));
    HIBYTE(v21) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
    sub_1DA89DD88(&qword_1ECBD6100);
    sub_1DA941604();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NotificationSource.hashValue.getter()
{
  sub_1DA941764();
  if (v0[1])
  {
    v1 = *v0;
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  v2 = v0[2];
  v3 = v0[3];
  sub_1DA940AB4();
  v4 = *(v0 + 48);
  sub_1DA941784();
  return sub_1DA941794();
}

uint64_t NotificationSource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1DA93F964();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6108, &qword_1DA95DFF0);
  v33 = *(v35 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = v29 - v8;
  v10 = type metadata accessor for NotificationSource();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89DD34();
  v36 = v9;
  v15 = v37;
  sub_1DA941804();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v6;
  v31 = v3;
  v16 = v33;
  v17 = v34;
  v37 = a1;
  LOBYTE(v39) = 0;
  v18 = v35;
  v19 = v13;
  *v13 = sub_1DA941524();
  v13[1] = v20;
  v29[2] = v20;
  LOBYTE(v39) = 1;
  v13[2] = sub_1DA941554();
  v13[3] = v21;
  LOBYTE(v39) = 2;
  v29[1] = 0;
  v22 = v17;
  v23 = v16;
  *(v19 + 32) = sub_1DA941554();
  *(v19 + 40) = v24;
  LOBYTE(v39) = 3;
  *(v19 + 48) = sub_1DA941564() & 1;
  v38 = 4;
  sub_1DA83044C();
  sub_1DA941584();
  *(v19 + 56) = v39;
  LOBYTE(v39) = 5;
  sub_1DA89E1E8(&qword_1ECBD6110, MEMORY[0x1E6968FB0]);
  v25 = v30;
  v26 = v31;
  sub_1DA941584();
  (*(v22 + 32))(v19 + *(v10 + 36), v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
  v38 = 6;
  sub_1DA89DD88(&qword_1ECBD6118);
  sub_1DA941584();
  v27 = *(v10 + 40);
  (*(v23 + 8))(v36, v18);
  *(v19 + v27) = v39;
  sub_1DA82A798(v19, v32);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1DA82A7FC(v19);
}

uint64_t sub_1DA89AA3C()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  v2 = v0[2];
  v3 = v0[3];
  sub_1DA940AB4();
  v4 = *(v0 + 48);
  return sub_1DA941784();
}

uint64_t sub_1DA89AAAC()
{
  sub_1DA941764();
  if (v0[1])
  {
    v1 = *v0;
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  v2 = v0[2];
  v3 = v0[3];
  sub_1DA940AB4();
  v4 = *(v0 + 48);
  sub_1DA941784();
  return sub_1DA941794();
}

uint64_t NotificationSource.id.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1E1271BD0](v2, v3);

  MEMORY[0x1E1271BD0](46, 0xE100000000000000);
  MEMORY[0x1E1271BD0](v0[2], v0[3]);
  MEMORY[0x1E1271BD0](58, 0xE100000000000000);
  if (*(v0 + 48))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v4, v5);

  return 0;
}

uint64_t sub_1DA89AC44@<X0>(uint64_t *a1@<X8>)
{
  result = NotificationSource.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NotificationSource.description.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000023, 0x80000001DA953A40);
  if (*(v0 + 8))
  {
    v1 = *v0;
    v2 = *(v0 + 8);
  }

  else
  {
    v2 = 0xE500000000000000;
    v1 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E1271BD0](v1, v2);

  MEMORY[0x1E1271BD0](0xD000000000000014, 0x80000001DA953A70);
  MEMORY[0x1E1271BD0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E1271BD0](0x616C70736964202CLL, 0xEF203A656D614E79);
  MEMORY[0x1E1271BD0](*(v0 + 32), *(v0 + 40));
  MEMORY[0x1E1271BD0](0x6F6D65527369202CLL, 0xEC000000203A6574);
  if (*(v0 + 48))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v3, v4);

  MEMORY[0x1E1271BD0](0x3A6574617473202CLL, 0xE900000000000020);
  v5 = *(v0 + 56);
  if (v5 == 4)
  {
    v6 = 0xE700000000000000;
    v7 = 0x64656C62616E65;
  }

  else
  {
    if (v5 == 3)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v8 = NotificationSource.State.OverrideReason.description.getter();
      v9 = v10;
    }

    MEMORY[0x1E1271BD0](v8, v9);

    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    v7 = 0x64656C6261736964;
    v6 = 0xE900000000000028;
  }

  MEMORY[0x1E1271BD0](v7, v6);

  MEMORY[0x1E1271BD0](0xD00000000000001ALL, 0x80000001DA953A90);
  sub_1DA899C30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
  sub_1DA89DDF4();
  sub_1DA8282D0();
  v11 = sub_1DA940B64();
  v13 = v12;

  MEMORY[0x1E1271BD0](v11, v13);

  MEMORY[0x1E1271BD0](10589, 0xE200000000000000);
  return 0;
}

uint64_t NotificationSource.debugDescription.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000023, 0x80000001DA953A40);
  if (*(v0 + 8))
  {
    v1 = *v0;
    v2 = *(v0 + 8);
  }

  else
  {
    v2 = 0xE500000000000000;
    v1 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E1271BD0](v1, v2);

  MEMORY[0x1E1271BD0](0xD000000000000014, 0x80000001DA953A70);
  MEMORY[0x1E1271BD0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E1271BD0](0x616C70736964202CLL, 0xEF203A656D614E79);
  MEMORY[0x1E1271BD0](*(v0 + 32), *(v0 + 40));
  MEMORY[0x1E1271BD0](0x6F6D65527369202CLL, 0xEC000000203A6574);
  if (*(v0 + 48))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v3, v4);

  MEMORY[0x1E1271BD0](0x3A6574617473202CLL, 0xE900000000000020);
  v5 = *(v0 + 56);
  if (v5 == 4)
  {
    v6 = 0xE700000000000000;
    v7 = 0x64656C62616E65;
  }

  else
  {
    if (v5 == 3)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v8 = NotificationSource.State.OverrideReason.description.getter();
      v9 = v10;
    }

    MEMORY[0x1E1271BD0](v8, v9);

    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    v7 = 0x64656C6261736964;
    v6 = 0xE900000000000028;
  }

  MEMORY[0x1E1271BD0](v7, v6);

  MEMORY[0x1E1271BD0](0xD00000000000001ALL, 0x80000001DA953A90);
  sub_1DA899C30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
  sub_1DA89DDF4();
  sub_1DA8282D0();
  v11 = sub_1DA940B64();
  v13 = v12;

  MEMORY[0x1E1271BD0](v11, v13);

  MEMORY[0x1E1271BD0](0x6C646E7562202C5DLL, 0xEE00203A4C525565);
  v14 = *(type metadata accessor for NotificationSource() + 36);
  sub_1DA93F964();
  sub_1DA89E1E8(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
  v15 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v15);

  return 0;
}

BOOL static NotificationSource.State.OverrideReason.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      sub_1DA830544(0);
      v4 = 0;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        sub_1DA830544(2uLL);
        v4 = 2;
LABEL_17:
        sub_1DA830544(v4);
        return 1;
      }
    }

    else if (v3 >= 3)
    {
      v5 = *(v2 + 16);
      v6 = *(v3 + 16);
      if (v5 == 3)
      {
        sub_1DA8304C0(*a2);
        sub_1DA8304C0(v2);
        sub_1DA8304B0(3uLL);
        if (v6 == 3)
        {
          sub_1DA8304B0(3uLL);
          sub_1DA830534(3uLL);
          sub_1DA830544(v2);
          v4 = v3;
          goto LABEL_17;
        }

        sub_1DA8304B0(v6);
      }

      else
      {
        v10 = *(v2 + 16);
        if (v6 != 3)
        {
          v9 = v6;
          sub_1DA8304C0(v3);
          sub_1DA8304C0(v2);
          sub_1DA8304B0(v5);
          sub_1DA8304B0(v6);
          sub_1DA8304B0(v5);
          v8 = static NotificationSource.State.OverrideReason.== infix(_:_:)(&v10, &v9);
          sub_1DA830544(v6);
          sub_1DA830544(v5);
          sub_1DA830534(v5);
          sub_1DA830544(v2);
          sub_1DA830544(v3);
          return (v8 & 1) != 0;
        }

        sub_1DA8304C0(v3);
        sub_1DA8304C0(v2);
        sub_1DA8304B0(v5);
        sub_1DA8304B0(3uLL);
        sub_1DA8304B0(v5);
        sub_1DA830544(v5);
      }

      sub_1DA830534(v5);
      sub_1DA830534(v6);
LABEL_12:
      sub_1DA830544(v2);
      sub_1DA830544(v3);
      return 0;
    }

LABEL_11:
    sub_1DA8304C0(*a2);
    sub_1DA8304C0(v2);
    goto LABEL_12;
  }

  if (v3 != 1)
  {
    goto LABEL_11;
  }

  sub_1DA830544(1uLL);
  sub_1DA830544(1uLL);
  return v3;
}

uint64_t sub_1DA89B4B4()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x65746F6D6572;
  if (*v0 != 2)
  {
    v2 = 0x746163696C707564;
  }

  if (*v0)
  {
    v1 = 0x7963696C6F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DA89B52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA89F2A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA89B554(uint64_t a1)
{
  v2 = sub_1DA89DE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89B590(uint64_t a1)
{
  v2 = sub_1DA89DE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89B5CC(uint64_t a1)
{
  v2 = sub_1DA89DEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89B608(uint64_t a1)
{
  v2 = sub_1DA89DEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89B644(uint64_t a1)
{
  v2 = sub_1DA89DFA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89B680(uint64_t a1)
{
  v2 = sub_1DA89DFA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89B6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x764F65746F6D6572 && a2 == 0xEE00656469727265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA89B770(uint64_t a1)
{
  v2 = sub_1DA89DF00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89B7AC(uint64_t a1)
{
  v2 = sub_1DA89DF00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89B7E8(uint64_t a1)
{
  v2 = sub_1DA89DFFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89B824(uint64_t a1)
{
  v2 = sub_1DA89DFFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationSource.State.OverrideReason.encode(to:)(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6120, &qword_1DA95DFF8);
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v28 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6128, &qword_1DA95E000);
  v34 = *(v36 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6130, &qword_1DA95E008);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6138, &qword_1DA95E010);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6140, &qword_1DA95E018);
  v38 = *(v15 - 8);
  v39 = v15;
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v19 = *v1;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89DE58();
  sub_1DA941834();
  switch(v19)
  {
    case 0:
      v41 = 0;
      sub_1DA89DFFC();
      v22 = v39;
      sub_1DA9415A4();
      (*(v29 + 8))(v14, v11);
      return (*(v38 + 8))(v18, v22);
    case 1:
      v42 = 1;
      sub_1DA89DFA8();
      v22 = v39;
      sub_1DA9415A4();
      (*(v30 + 8))(v10, v31);
      return (*(v38 + 8))(v18, v22);
    case 2:
      v44 = 3;
      sub_1DA89DEAC();
      v21 = v33;
      v22 = v39;
      sub_1DA9415A4();
      (*(v35 + 8))(v21, v37);
      return (*(v38 + 8))(v18, v22);
  }

  v24 = *(v19 + 16);
  v43 = 2;
  sub_1DA89DF00();
  v25 = v32;
  v26 = v39;
  sub_1DA9415A4();
  v40 = v24;
  sub_1DA89DF54();
  v27 = v36;
  sub_1DA9415C4();
  (*(v34 + 8))(v25, v27);
  return (*(v38 + 8))(v18, v26);
}

unint64_t NotificationSource.State.OverrideReason.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    v3 = 0;
    return MEMORY[0x1E1272850](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1E1272850](v3);
  }

  if (v2 == 2)
  {
    v3 = 3;
    return MEMORY[0x1E1272850](v3);
  }

  v5 = *(v2 + 16);
  MEMORY[0x1E1272850](2);
  if (v5 == 3)
  {
    return sub_1DA941784();
  }

  sub_1DA941784();
  sub_1DA8304C0(v5);
  NotificationSource.State.OverrideReason.hash(into:)(a1);

  return sub_1DA830544(v5);
}

uint64_t NotificationSource.State.OverrideReason.hashValue.getter()
{
  v2[9] = *v0;
  sub_1DA941764();
  NotificationSource.State.OverrideReason.hash(into:)(v2);
  return sub_1DA941794();
}

uint64_t NotificationSource.State.OverrideReason.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6160, &qword_1DA95E020);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v46 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6168, &qword_1DA95E028);
  v54 = *(v57 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v46 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6170, &qword_1DA95E030);
  v51 = *(v55 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6178, &qword_1DA95E038);
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6180, &unk_1DA95E040);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1DA89DE58();
  v22 = v60;
  sub_1DA941804();
  if (!v22)
  {
    v47 = v11;
    v48 = v14;
    v23 = v55;
    v24 = v56;
    v49 = 0;
    v25 = v57;
    v26 = v58;
    v60 = v16;
    v27 = v59;
    v28 = sub_1DA941594();
    v29 = (2 * *(v28 + 16)) | 1;
    v62 = v28;
    v63 = v28 + 32;
    v64 = 0;
    v65 = v29;
    v30 = sub_1DA8675E8();
    if (v30 == 4 || v64 != v65 >> 1)
    {
      v33 = sub_1DA9413B4();
      swift_allocError();
      v35 = v34;
      v36 = v19;
      v37 = v15;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
      *v35 = &type metadata for NotificationSource.State.OverrideReason;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v60 + 8))(v36, v37);
      goto LABEL_9;
    }

    if (v30 <= 1u)
    {
      if (v30)
      {
        v66 = 1;
        sub_1DA89DFA8();
        v43 = v49;
        sub_1DA941504();
        if (!v43)
        {
          (*(v51 + 8))(v10, v23);
          (*(v60 + 8))(v19, v15);
          swift_unknownObjectRelease();
          *v27 = 1;
          return __swift_destroy_boxed_opaque_existential_1(v61);
        }
      }

      else
      {
        v66 = 0;
        sub_1DA89DFFC();
        v32 = v48;
        v31 = v49;
        sub_1DA941504();
        if (!v31)
        {
          (*(v50 + 8))(v32, v47);
          (*(v60 + 8))(v19, v15);
          swift_unknownObjectRelease();
          *v27 = 0;
          return __swift_destroy_boxed_opaque_existential_1(v61);
        }
      }

      (*(v60 + 8))(v19, v15);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v61);
    }

    v40 = v60;
    if (v30 != 2)
    {
      v66 = 3;
      sub_1DA89DEAC();
      v44 = v49;
      sub_1DA941504();
      if (!v44)
      {
        (*(v52 + 8))(v26, v53);
        (*(v40 + 8))(v19, v15);
        swift_unknownObjectRelease();
        *v27 = 2;
        return __swift_destroy_boxed_opaque_existential_1(v61);
      }

      (*(v40 + 8))(v19, v15);
      goto LABEL_9;
    }

    v66 = 2;
    sub_1DA89DF00();
    v41 = v24;
    v42 = v49;
    sub_1DA941504();
    if (v42)
    {
      (*(v40 + 8))(v19, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = swift_allocObject();
      sub_1DA89E050();
      sub_1DA941544();
      (*(v54 + 8))(v41, v25);
      (*(v40 + 8))(v19, v15);
      swift_unknownObjectRelease();
      *v59 = v45;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_1DA89C5E4()
{
  v2[9] = *v0;
  sub_1DA941764();
  NotificationSource.State.OverrideReason.hash(into:)(v2);
  return sub_1DA941794();
}

uint64_t sub_1DA89C634()
{
  v2[9] = *v0;
  sub_1DA941764();
  NotificationSource.State.OverrideReason.hash(into:)(v2);
  return sub_1DA941794();
}

uint64_t sub_1DA89C6B4()
{
  if (*v0)
  {
    result = 0x64656C62616E65;
  }

  else
  {
    result = 0x64656C6261736964;
  }

  *v0;
  return result;
}

uint64_t sub_1DA89C6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA89C7CC(uint64_t a1)
{
  v2 = sub_1DA89E0A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89C808(uint64_t a1)
{
  v2 = sub_1DA89E0A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89C85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA89C8E4(uint64_t a1)
{
  v2 = sub_1DA89E14C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89C920(uint64_t a1)
{
  v2 = sub_1DA89E14C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89C95C(uint64_t a1)
{
  v2 = sub_1DA89E0F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89C998(uint64_t a1)
{
  v2 = sub_1DA89E0F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationSource.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6188, &qword_1DA95E050);
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6190, &qword_1DA95E058);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6198, &qword_1DA95E060);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89E0A4();
  sub_1DA941834();
  if (v15 == 4)
  {
    v28 = 1;
    sub_1DA89E0F8();
    v17 = v21;
    sub_1DA9415A4();
    (*(v24 + 8))(v17, v25);
  }

  else
  {
    v27 = 0;
    sub_1DA89E14C();
    sub_1DA9415A4();
    v26 = v15;
    sub_1DA89DF54();
    v19 = v23;
    sub_1DA9415C4();
    (*(v22 + 8))(v9, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t NotificationSource.State.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 == 4)
  {
    return MEMORY[0x1E1272850](1);
  }

  MEMORY[0x1E1272850](0);
  if (v3 == 3)
  {
    return sub_1DA941784();
  }

  sub_1DA941784();
  sub_1DA8304B0(v3);
  NotificationSource.State.OverrideReason.hash(into:)(a1);

  return sub_1DA830544(v3);
}

uint64_t NotificationSource.State.hashValue.getter()
{
  v1 = *v0;
  sub_1DA941764();
  if (v1 == 4)
  {
    MEMORY[0x1E1272850](1);
  }

  else
  {
    MEMORY[0x1E1272850](0);
    sub_1DA941784();
    if (v1 != 3)
    {
      sub_1DA8304B0(v1);
      NotificationSource.State.OverrideReason.hash(into:)(v3);
      sub_1DA830544(v1);
    }
  }

  return sub_1DA941794();
}

uint64_t NotificationSource.State.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD61A0, &qword_1DA95E068);
  v36 = *(v34 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD61A8, &qword_1DA95E070);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD61B0, &unk_1DA95E078);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DA89E0A4();
  v17 = v38;
  sub_1DA941804();
  if (!v17)
  {
    v18 = v9;
    v33 = v6;
    v38 = v11;
    v19 = v36;
    v20 = v37;
    v21 = sub_1DA941594();
    v22 = (2 * *(v21 + 16)) | 1;
    v40 = v21;
    v41 = v21 + 32;
    v42 = 0;
    v43 = v22;
    v23 = sub_1DA8675E4();
    if (v23 == 2 || v42 != v43 >> 1)
    {
      v25 = sub_1DA9413B4();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
      *v27 = &type metadata for NotificationSource.State;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v38 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else if (v23)
    {
      LOBYTE(v44) = 1;
      sub_1DA89E0F8();
      sub_1DA941504();
      v24 = v38;
      (*(v19 + 8))(v5, v34);
      (*(v24 + 8))(v14, v10);
      swift_unknownObjectRelease();
      *v20 = 4;
    }

    else
    {
      LOBYTE(v44) = 0;
      sub_1DA89E14C();
      sub_1DA941504();
      v30 = v38;
      sub_1DA89E050();
      v31 = v33;
      sub_1DA941544();
      (*(v35 + 8))(v18, v31);
      (*(v30 + 8))(v14, v10);
      swift_unknownObjectRelease();
      *v20 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

unint64_t sub_1DA89D31C(uint64_t a1)
{
  v3 = *v1;
  if (*v1 == 4)
  {
    return MEMORY[0x1E1272850](1);
  }

  MEMORY[0x1E1272850](0);
  if (v3 == 3)
  {
    return sub_1DA941784();
  }

  sub_1DA941784();
  sub_1DA8304B0(v3);
  NotificationSource.State.OverrideReason.hash(into:)(a1);

  return sub_1DA830544(v3);
}

uint64_t sub_1DA89D3D4()
{
  v1 = *v0;
  sub_1DA941764();
  if (v1 == 4)
  {
    MEMORY[0x1E1272850](1);
  }

  else
  {
    MEMORY[0x1E1272850](0);
    sub_1DA941784();
    if (v1 != 3)
    {
      sub_1DA8304B0(v1);
      NotificationSource.State.OverrideReason.hash(into:)(v3);
      sub_1DA830544(v1);
    }
  }

  return sub_1DA941794();
}

id NotificationSource.icon.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationSource();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - v8;
  if (*(v0 + 48))
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v7 + 36);
  v12 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v13 = sub_1DA93F904();
  v14 = [v12 initWithURL:v13 options:v10];

  if (qword_1ECBD4758 != -1)
  {
    swift_once();
  }

  v15 = sub_1DA9405A4();
  __swift_project_value_buffer(v15, qword_1ECBD60C8);
  sub_1DA82A798(v1, v9);
  sub_1DA82A798(v1, v6);
  v16 = v14;
  v17 = sub_1DA940584();
  v18 = sub_1DA940F04();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v19 = 136315650;
    v21 = *(v9 + 2);
    v22 = *(v9 + 3);

    sub_1DA82A7FC(v9);
    v23 = sub_1DA7AE6E8(v21, v22, &v33);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = *(v2 + 36);
    sub_1DA93F964();
    sub_1DA89E1E8(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
    v25 = sub_1DA941614();
    v27 = v26;
    sub_1DA82A7FC(v6);
    v28 = sub_1DA7AE6E8(v25, v27, &v33);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2112;
    *(v19 + 24) = v16;
    *v20 = v16;
    v29 = v16;
    _os_log_impl(&dword_1DA7A9000, v17, v18, "%s - returning icon for bundle at %s: %@", v19, 0x20u);
    sub_1DA828378(v20);
    MEMORY[0x1E12739F0](v20, -1, -1);
    v30 = v32;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v30, -1, -1);
    MEMORY[0x1E12739F0](v19, -1, -1);
  }

  else
  {

    sub_1DA82A7FC(v6);
    sub_1DA82A7FC(v9);
  }

  return v16;
}

uint64_t NotificationSource.State.description.getter()
{
  if (*v0 == 4)
  {
    return 0x64656C62616E65;
  }

  if (*v0 == 3)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v2 = NotificationSource.State.OverrideReason.description.getter();
    v3 = v4;
  }

  MEMORY[0x1E1271BD0](v2, v3);

  MEMORY[0x1E1271BD0](41, 0xE100000000000000);
  return 0x64656C6261736964;
}

uint64_t NotificationSource.State.OverrideReason.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  if (v1 == 1)
  {
    return 0x7963696C6F70;
  }

  if (v1 == 2)
  {
    return 0x746163696C707564;
  }

  if (*(v1 + 16) == 3)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = NotificationSource.State.OverrideReason.description.getter();
    v4 = v5;
  }

  MEMORY[0x1E1271BD0](v3, v4);

  MEMORY[0x1E1271BD0](41, 0xE100000000000000);
  return 0x2865746F6D6572;
}

uint64_t sub_1DA89D984()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD60C8);
  __swift_project_value_buffer(v0, qword_1ECBD60C8);
  return sub_1DA940594();
}

uint64_t sub_1DA89DA08(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1DA8A9058(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

BOOL _s21UserNotificationsCore18NotificationSourceV5StateO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 4)
  {
    if (v3 == 4)
    {
      sub_1DA830524(4uLL);
      sub_1DA830524(4uLL);
      return 1;
    }

    goto LABEL_5;
  }

  if (v3 == 4)
  {
LABEL_5:
    sub_1DA8304A0(*a2);
    sub_1DA8304A0(v2);
    sub_1DA830524(v2);
    sub_1DA830524(v3);
    return 0;
  }

  if (v2 == 3)
  {
    sub_1DA8304A0(3uLL);
    sub_1DA8304A0(v3);
    sub_1DA8304A0(v3);
    sub_1DA8304A0(3uLL);
    sub_1DA830524(3uLL);
    sub_1DA830524(v3);
    if (v3 == 3)
    {
      sub_1DA830534(3uLL);
      return 1;
    }

LABEL_12:
    sub_1DA830534(v2);
    sub_1DA830534(v3);
    return 0;
  }

  v7 = *a1;
  if (v3 == 3)
  {
    sub_1DA8304A0(v2);
    sub_1DA8304A0(3uLL);
    sub_1DA8304A0(3uLL);
    sub_1DA8304A0(v2);
    sub_1DA8304B0(v2);
    sub_1DA830524(v2);
    sub_1DA830524(3uLL);
    sub_1DA830544(v2);
    goto LABEL_12;
  }

  v6 = v3;
  sub_1DA8304A0(v3);
  sub_1DA8304A0(v2);
  sub_1DA8304A0(v2);
  sub_1DA8304A0(v3);
  sub_1DA8304A0(v3);
  sub_1DA8304A0(v2);
  sub_1DA8304B0(v2);
  v5 = static NotificationSource.State.OverrideReason.== infix(_:_:)(&v7, &v6);
  sub_1DA830524(v2);
  sub_1DA830524(v3);
  sub_1DA830524(v3);
  sub_1DA830524(v2);
  sub_1DA830544(v3);
  sub_1DA830544(v2);
  sub_1DA830534(v2);
  return v5;
}

uint64_t _s21UserNotificationsCore18NotificationSourceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1DA941684() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v5)
  {
LABEL_16:
    v9 = 0;
    return v9 & 1;
  }

  v8 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v8 && (sub_1DA941684() & 1) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v9 & 1;
}

uint64_t type metadata accessor for NotificationSource()
{
  result = qword_1EE112B48;
  if (!qword_1EE112B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DA89DD34()
{
  result = qword_1ECBD60E8;
  if (!qword_1ECBD60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD60E8);
  }

  return result;
}

uint64_t sub_1DA89DD88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA89DDF4()
{
  result = qword_1EE110C70;
  if (!qword_1EE110C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110C70);
  }

  return result;
}

unint64_t sub_1DA89DE58()
{
  result = qword_1EE112C10;
  if (!qword_1EE112C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C10);
  }

  return result;
}

unint64_t sub_1DA89DEAC()
{
  result = qword_1ECBD6148;
  if (!qword_1ECBD6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6148);
  }

  return result;
}

unint64_t sub_1DA89DF00()
{
  result = qword_1EE112BE8;
  if (!qword_1EE112BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BE8);
  }

  return result;
}

unint64_t sub_1DA89DF54()
{
  result = qword_1EE112BB0;
  if (!qword_1EE112BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BB0);
  }

  return result;
}

unint64_t sub_1DA89DFA8()
{
  result = qword_1ECBD6150;
  if (!qword_1ECBD6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6150);
  }

  return result;
}

unint64_t sub_1DA89DFFC()
{
  result = qword_1ECBD6158;
  if (!qword_1ECBD6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6158);
  }

  return result;
}

unint64_t sub_1DA89E050()
{
  result = qword_1EE112BA8;
  if (!qword_1EE112BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BA8);
  }

  return result;
}

unint64_t sub_1DA89E0A4()
{
  result = qword_1EE112C28;
  if (!qword_1EE112C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C28);
  }

  return result;
}

unint64_t sub_1DA89E0F8()
{
  result = qword_1EE112BA0;
  if (!qword_1EE112BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BA0);
  }

  return result;
}

unint64_t sub_1DA89E14C()
{
  result = qword_1EE112B88;
  if (!qword_1EE112B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B88);
  }

  return result;
}

uint64_t sub_1DA89E1E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA89E234()
{
  result = qword_1ECBD61C0;
  if (!qword_1ECBD61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61C0);
  }

  return result;
}

unint64_t sub_1DA89E28C()
{
  result = qword_1ECBD61C8;
  if (!qword_1ECBD61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61C8);
  }

  return result;
}

void sub_1DA89E308()
{
  sub_1DA89E3C8();
  if (v0 <= 0x3F)
  {
    sub_1DA93F964();
    if (v1 <= 0x3F)
    {
      sub_1DA89E418();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DA89E3C8()
{
  if (!qword_1EE110CE0)
  {
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE110CE0);
    }
  }
}

void sub_1DA89E418()
{
  if (!qword_1EE110C78)
  {
    v0 = sub_1DA940ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE110C78);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore18NotificationSourceV5StateO14OverrideReasonO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore18NotificationSourceV5StateO14OverrideReasonOSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore18NotificationSourceV5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DA89E4D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 + 1 >= 2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA89E53C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1DA89E58C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFB)
  {
    v2 = -2147483644;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 3;
  }

  *result = v2 + a2;
  return result;
}

uint64_t sub_1DA89E5CC(uint64_t *a1, unsigned int a2)
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

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA89E628(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NotificationSource.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationSource.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DA89E85C()
{
  result = qword_1ECBD61D0;
  if (!qword_1ECBD61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61D0);
  }

  return result;
}

unint64_t sub_1DA89E8B4()
{
  result = qword_1ECBD61D8;
  if (!qword_1ECBD61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61D8);
  }

  return result;
}

unint64_t sub_1DA89E90C()
{
  result = qword_1ECBD61E0;
  if (!qword_1ECBD61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61E0);
  }

  return result;
}

unint64_t sub_1DA89E964()
{
  result = qword_1ECBD61E8;
  if (!qword_1ECBD61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61E8);
  }

  return result;
}

unint64_t sub_1DA89E9BC()
{
  result = qword_1ECBD61F0;
  if (!qword_1ECBD61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61F0);
  }

  return result;
}

unint64_t sub_1DA89EA14()
{
  result = qword_1EE112B78;
  if (!qword_1EE112B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B78);
  }

  return result;
}

unint64_t sub_1DA89EA6C()
{
  result = qword_1EE112B80;
  if (!qword_1EE112B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B80);
  }

  return result;
}

unint64_t sub_1DA89EAC4()
{
  result = qword_1EE112B90;
  if (!qword_1EE112B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B90);
  }

  return result;
}

unint64_t sub_1DA89EB1C()
{
  result = qword_1EE112B98;
  if (!qword_1EE112B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B98);
  }

  return result;
}

unint64_t sub_1DA89EB74()
{
  result = qword_1EE112C18;
  if (!qword_1EE112C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C18);
  }

  return result;
}

unint64_t sub_1DA89EBCC()
{
  result = qword_1EE112C20;
  if (!qword_1EE112C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C20);
  }

  return result;
}

unint64_t sub_1DA89EC24()
{
  result = qword_1EE112BC8;
  if (!qword_1EE112BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BC8);
  }

  return result;
}

unint64_t sub_1DA89EC7C()
{
  result = qword_1EE112BD0;
  if (!qword_1EE112BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BD0);
  }

  return result;
}

unint64_t sub_1DA89ECD4()
{
  result = qword_1EE112BF0;
  if (!qword_1EE112BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BF0);
  }

  return result;
}

unint64_t sub_1DA89ED2C()
{
  result = qword_1EE112BF8;
  if (!qword_1EE112BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BF8);
  }

  return result;
}

unint64_t sub_1DA89ED84()
{
  result = qword_1EE112BD8;
  if (!qword_1EE112BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BD8);
  }

  return result;
}

unint64_t sub_1DA89EDDC()
{
  result = qword_1EE112BE0;
  if (!qword_1EE112BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BE0);
  }

  return result;
}

unint64_t sub_1DA89EE34()
{
  result = qword_1EE112BB8;
  if (!qword_1EE112BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BB8);
  }

  return result;
}

unint64_t sub_1DA89EE8C()
{
  result = qword_1EE112BC0;
  if (!qword_1EE112BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BC0);
  }

  return result;
}

unint64_t sub_1DA89EEE4()
{
  result = qword_1EE112C00;
  if (!qword_1EE112C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C00);
  }

  return result;
}

unint64_t sub_1DA89EF3C()
{
  result = qword_1EE112C08;
  if (!qword_1EE112C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C08);
  }

  return result;
}

unint64_t sub_1DA89EF94()
{
  result = qword_1ECBD61F8;
  if (!qword_1ECBD61F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61F8);
  }

  return result;
}

unint64_t sub_1DA89EFEC()
{
  result = qword_1ECBD6200;
  if (!qword_1ECBD6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6200);
  }

  return result;
}

uint64_t sub_1DA89F040(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564496D616574 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DA950340 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746F6D65527369 && a2 == 0xE800000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5255656C646E7562 && a2 == 0xE90000000000004CLL || (sub_1DA941684() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DA953AB0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DA89F2A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7963696C6F70 && a2 == 0xE600000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746163696C707564 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DA941684();

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

uint64_t sub_1DA89F408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EE113018 = result;
  return result;
}

uint64_t sub_1DA89F448()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EE1127D0 = result;
  return result;
}

uint64_t sub_1DA89F49C()
{
  v10 = sub_1DA940FC4();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940F74();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DA940854();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1DA7AC344();
  sub_1DA940844();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DA8A42B0(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8098], v10);
  result = sub_1DA941004();
  qword_1EE112C40 = result;
  return result;
}

uint64_t StateCapturing.stateCaptureTitle.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1DA940A74();
}

uint64_t sub_1DA89F750(uint64_t a1)
{
  if (qword_1EE111430 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(a1 + 24);
  swift_beginAccess();
  sub_1DA8F4874(v1);
  swift_endAccess();
}

void *sub_1DA89F810(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EE110DF8 != -1)
  {
    swift_once();
  }

  v12 = sub_1DA9405A4();
  __swift_project_value_buffer(v12, qword_1EE110E00);

  v13 = sub_1DA940584();
  v14 = sub_1DA940F34();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1DA7AE6E8(a1, a2, &v18);
    _os_log_impl(&dword_1DA7A9000, v13, v14, "StateCaptureEntry created with title: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E12739F0](v16, -1, -1);
    MEMORY[0x1E12739F0](v15, -1, -1);
  }

  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t StateCaptureEntry.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t StateCaptureEntry.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

double sub_1DA89FA00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  aBlock[4] = sub_1DA8A40A4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA8A0AC4;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);

  v12 = os_state_add_handler();
  _Block_release(v11);
  if (v12)
  {
    if (qword_1EE1127C8 != -1)
    {
      v13 = swift_once();
    }

    v14 = qword_1EE1127D0;
    v15 = MEMORY[0x1EEE9AC00](v13);
    MEMORY[0x1EEE9AC00](v15);
    os_unfair_lock_lock(v14 + 4);
    sub_1DA8A45E4();
    os_unfair_lock_unlock(v14 + 4);
    v16 = type metadata accessor for StateCaptureInvalidator();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = v12;
    *(a5 + 24) = v16;
    *(a5 + 32) = &off_1F5636298;
    *a5 = v17;
  }

  else
  {
    if (qword_1EE110DF8 != -1)
    {
      swift_once();
    }

    v19 = sub_1DA9405A4();
    __swift_project_value_buffer(v19, qword_1EE110E00);

    v20 = sub_1DA940584();
    v21 = sub_1DA940F14();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_1DA7AE6E8(a3, a4, aBlock);
      _os_log_impl(&dword_1DA7A9000, v20, v21, "[%{public}s] os_state_add_handler() failed to return a handle", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12739F0](v23, -1, -1);
      MEMORY[0x1E12739F0](v22, -1, -1);
    }

    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1DA89FD14(unsigned int *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (qword_1EE110DF8 != -1)
  {
    swift_once();
  }

  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1EE110E00);

  v9 = sub_1DA940584();
  v10 = sub_1DA940F04();

  if (os_log_type_enabled(v9, v10))
  {
    v34 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36[0] = v12;
    *v11 = 136446466;
    v35 = a2;
    *(v11 + 4) = sub_1DA7AE6E8(a2, a3, v36);
    *(v11 + 12) = 2082;
    v13 = *a1;
    v15 = a1[4];
    v14 = a1[5];
    if (*(a1 + 1))
    {
      v16 = sub_1DA940B04();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = sub_1DA8A2A7C(v13, v16, v18);
    v21 = v20;

    v22 = sub_1DA7AE6E8(v19, v21, v36);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_1DA7A9000, v9, v10, "[%{public}s] %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v12, -1, -1);
    MEMORY[0x1E12739F0](v11, -1, -1);

    a4 = v34;
    a2 = v35;
  }

  else
  {
  }

  v23 = a4();
  v24 = a2;
  v25 = sub_1DA8A0314(a2, a3, v23);
  v27 = v26;
  v28 = v25;

  if (v27 < 0x8000)
  {
    return v28;
  }

  v30 = sub_1DA940584();
  v31 = sub_1DA940F14();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36[0] = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_1DA7AE6E8(v24, a3, v36);
    *(v32 + 12) = 1024;
    *(v32 + 14) = 32;
    _os_log_impl(&dword_1DA7A9000, v30, v31, "[%{public}s] Cannot capture state data larger than %dKB", v32, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12739F0](v33, -1, -1);
    MEMORY[0x1E12739F0](v32, -1, -1);
  }

  return 0;
}

unint64_t sub_1DA8A0314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a2;
  v77 = a1;
  v88 = *MEMORY[0x1E69E9840];
  v76 = sub_1DA93F774();
  v75 = *(v76 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6218, &qword_1DA95EEF8);
  v7 = sub_1DA9414C4();
  v8 = v7;
  v9 = 0;
  v81 = a3;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v80 = v7 + 64;
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_5:
  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v9 >= v16)
    {
      break;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v82 = (v19 - 1) & v19;
      while (2)
      {
        v3 = v17 | (v9 << 6);
        v20 = *(v81 + 56);
        v21 = (*(v81 + 48) + 16 * v3);
        v23 = *v21;
        v22 = v21[1];
        v83 = v23;
        v84 = v22;
        sub_1DA822F48(v20 + 40 * v3, v85, &qword_1ECBD5918, &qword_1DA95EF00);
        sub_1DA822F48(v85, &v86, &qword_1ECBD5918, &qword_1DA95EF00);
        if (v87)
        {
          __swift_project_boxed_opaque_existential_1(&v86, v87);

          v24 = sub_1DA941614();
          v26 = v25;
          __swift_destroy_boxed_opaque_existential_1(&v86);
        }

        else
        {

          sub_1DA7BA120(&v86, &qword_1ECBD5918, &qword_1DA95EF00);
          v26 = 0xE500000000000000;
          v24 = 0x3E6C696E3CLL;
        }

        sub_1DA7BA120(v85, &qword_1ECBD5918, &qword_1DA95EF00);
        *(v80 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        v27 = (v8[6] + 16 * v3);
        v28 = v84;
        *v27 = v83;
        v27[1] = v28;
        v29 = (v8[7] + 16 * v3);
        *v29 = v24;
        v29[1] = v26;
        v30 = v8[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (!v31)
        {
          v8[2] = v32;
          v15 = v82;
          if (!v82)
          {
            goto LABEL_5;
          }

LABEL_4:
          v17 = __clz(__rbit64(v15));
          v82 = (v15 - 1) & v15;
          continue;
        }

        break;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }
  }

  v33 = sub_1DA93F894();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1DA93F884();
  sub_1DA93F864();
  *v85 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6220, &unk_1DA95EF08);
  sub_1DA8A40D4();
  v36 = v79;
  v37 = sub_1DA93F874();
  v39 = v38;

  if (v36)
  {
    goto LABEL_17;
  }

  v40 = v39 >> 62;
  if ((v39 >> 62) <= 1)
  {
    if (!v40)
    {
      v41 = BYTE6(v39);
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v40 != 2)
  {
    v41 = 0;
    goto LABEL_28;
  }

  v43 = *(v37 + 16);
  v42 = *(v37 + 24);
  v31 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v31)
  {
    __break(1u);
LABEL_25:
    LODWORD(v41) = HIDWORD(v37) - v37;
    if (__OFSUB__(HIDWORD(v37), v37))
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v41 = v41;
  }

LABEL_28:
  if (__OFADD__(v41, 200))
  {
    goto LABEL_56;
  }

  v44 = malloc(v41 + 200);
  if (v44)
  {
    v3 = v44;
    *v85 = 1;
    memset(&v85[4], 0, 196);
    sub_1DA8A0C50(v77, v78, &v85[136], &v86);
    if (v40 > 1)
    {
      if (v40 != 2)
      {
        goto LABEL_47;
      }

      v55 = *(v37 + 16);
      v54 = *(v37 + 24);
      v31 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (!v31)
      {
LABEL_40:
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        if (HIDWORD(v56))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        *&v85[4] = v56;
        v57 = *&v85[176];
        *(v3 + 160) = *&v85[160];
        *(v3 + 176) = v57;
        *(v3 + 192) = *&v85[192];
        v58 = *&v85[112];
        *(v3 + 96) = *&v85[96];
        *(v3 + 112) = v58;
        v59 = *&v85[144];
        *(v3 + 128) = *&v85[128];
        *(v3 + 144) = v59;
        v60 = *&v85[48];
        *(v3 + 32) = *&v85[32];
        *(v3 + 48) = v60;
        v61 = *&v85[80];
        *(v3 + 64) = *&v85[64];
        *(v3 + 80) = v61;
        v62 = *&v85[16];
        *v3 = *v85;
        *(v3 + 16) = v62;
        if (v40 != 2)
        {
          if (__OFSUB__(HIDWORD(v37), v37))
          {
            goto LABEL_63;
          }

          v45 = HIDWORD(v37) - v37;
          goto LABEL_50;
        }

        if (__OFSUB__(*(v37 + 24), *(v37 + 16)))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
        }

        sub_1DA93F9C4();

        v64 = *(v37 + 16);
        v63 = *(v37 + 24);
        sub_1DA828324(v37, v39);
        v31 = __OFSUB__(v63, v64);
        v45 = v63 - v64;
        if (!v31)
        {
          goto LABEL_52;
        }

        __break(1u);
LABEL_47:
        *&v85[4] = 0;
        v65 = *&v85[176];
        *(v3 + 160) = *&v85[160];
        *(v3 + 176) = v65;
        *(v3 + 192) = *&v85[192];
        v66 = *&v85[112];
        *(v3 + 96) = *&v85[96];
        *(v3 + 112) = v66;
        v67 = *&v85[144];
        *(v3 + 128) = *&v85[128];
        *(v3 + 144) = v67;
        v68 = *&v85[48];
        *(v3 + 32) = *&v85[32];
        *(v3 + 48) = v68;
        v69 = *&v85[80];
        *(v3 + 64) = *&v85[64];
        *(v3 + 80) = v69;
        v70 = *&v85[16];
        *v3 = *v85;
        *(v3 + 16) = v70;
        sub_1DA93F9C4();
        v45 = 0;
LABEL_51:

        sub_1DA828324(v37, v39);
LABEL_52:
        if (!__OFADD__(v45, 200))
        {
          goto LABEL_53;
        }

        goto LABEL_59;
      }

      __break(1u);
    }

    else if (!v40)
    {
      v45 = BYTE6(v39);
      *&v85[4] = BYTE6(v39);
      v46 = *&v85[176];
      *(v3 + 160) = *&v85[160];
      *(v3 + 176) = v46;
      *(v3 + 192) = *&v85[192];
      v47 = *&v85[112];
      *(v3 + 96) = *&v85[96];
      *(v3 + 112) = v47;
      v48 = *&v85[144];
      *(v3 + 128) = *&v85[128];
      *(v3 + 144) = v48;
      v49 = *&v85[48];
      *(v3 + 32) = *&v85[32];
      *(v3 + 48) = v49;
      v50 = *&v85[80];
      *(v3 + 64) = *&v85[64];
      *(v3 + 80) = v50;
      v51 = *&v85[16];
      *v3 = *v85;
      *(v3 + 16) = v51;
LABEL_50:
      sub_1DA93F9C4();
      goto LABEL_51;
    }

    LODWORD(v56) = HIDWORD(v37) - v37;
    if (__OFSUB__(HIDWORD(v37), v37))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v56 = v56;
    goto LABEL_40;
  }

  *v85 = 12;
  sub_1DA8A4150(MEMORY[0x1E69E7CC0]);
  sub_1DA8A42B0(&qword_1ECBD6228, MEMORY[0x1E6967EB8]);
  v52 = v74;
  v53 = v76;
  sub_1DA93F8A4();
  sub_1DA93F764();
  (*(v75 + 8))(v52, v53);
  swift_willThrow();
  sub_1DA828324(v37, v39);
LABEL_17:

LABEL_53:
  v71 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1DA8A0AC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_1DA8A0B14(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for StateCaptureEntry();
  v12 = swift_allocObject();

  v13 = a3;

  sub_1DA89F810(a1, a2, v13, a4, a5);
  if (qword_1EE111430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = off_1EE111438;
  off_1EE111438 = 0x8000000000000000;
  sub_1DA90BA70(v12, a6, isUniquelyReferenced_nonNull_native);
  off_1EE111438 = v16;
  swift_endAccess();
}

uint64_t sub_1DA8A0C50(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1DA941354();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_1DA941354();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

uint64_t StateCaptureItem.deinit()
{
  sub_1DA822F48(v0 + 48, v7, &qword_1ECBD6208, &qword_1DA95ED40);
  if (v8)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v7, v8);
    if ((*(*v1 + 16) & 1) == 0 && *(*v1 + 24))
    {
      v2 = os_state_remove_handler();
      if (qword_1EE1127C8 != -1)
      {
        v2 = swift_once();
      }

      v3 = qword_1EE1127D0;
      MEMORY[0x1EEE9AC00](v2);
      os_unfair_lock_lock(v3 + 4);
      sub_1DA8A343C();
      os_unfair_lock_unlock(v3 + 4);
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1DA7BA120(v7, &qword_1ECBD6208, &qword_1DA95ED40);
  }

  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  sub_1DA7BA120(v0 + 48, &qword_1ECBD6208, &qword_1DA95ED40);
  return v0;
}

uint64_t StateCaptureItem.__deallocating_deinit()
{
  sub_1DA822F48(v0 + 48, v7, &qword_1ECBD6208, &qword_1DA95ED40);
  if (v8)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v7, v8);
    if ((*(*v1 + 16) & 1) == 0 && *(*v1 + 24))
    {
      v2 = os_state_remove_handler();
      if (qword_1EE1127C8 != -1)
      {
        v2 = swift_once();
      }

      v3 = qword_1EE1127D0;
      MEMORY[0x1EEE9AC00](v2);
      os_unfair_lock_lock(v3 + 4);
      sub_1DA8A45E4();
      os_unfair_lock_unlock(v3 + 4);
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1DA7BA120(v7, &qword_1ECBD6208, &qword_1DA95ED40);
  }

  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  sub_1DA7BA120(v0 + 48, &qword_1ECBD6208, &qword_1DA95ED40);
  return swift_deallocClassInstance();
}

void *sub_1DA8A0FC4()
{
  type metadata accessor for StateCaptureService();
  swift_allocObject();
  result = sub_1DA8A105C();
  qword_1EE112A98 = result;
  return result;
}

uint64_t static StateCaptureService.shared.getter()
{
  if (qword_1EE112A90 != -1)
  {
    swift_once();
  }
}

void *sub_1DA8A105C()
{
  v13 = sub_1DA940FC4();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DA940854();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = MEMORY[0x1E69E7CC8];
  v0[2] = MEMORY[0x1E69E7CC8];
  v0[3] = v9;
  v10 = sub_1DA7AC344();
  v12[0] = "os_state_hints_s=I*II}8";
  v12[1] = v10;
  sub_1DA940814();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1DA8A42B0(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v13);
  v0[4] = sub_1DA941004();
  return v0;
}

uint64_t sub_1DA8A12D0(uint64_t a1)
{
  if (qword_1EE113010 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_1EE113018;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 4);
  sub_1DA84A1B0(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DA8A138C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  result = sub_1DA8A6ED8(v5);
  *a2 = result;
  return result;
}

uint64_t sub_1DA8A1404(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v7);
  return sub_1DA8A363C(v9, a3, a4, a1, v7, v8);
}

uint64_t sub_1DA8A1484(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);

  return a4(v9, a2, a3, v4, v7, v8);
}

uint64_t sub_1DA8A14FC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_project_boxed_opaque_existential_1(a2, v8);
  sub_1DA8A363C(v10, a3, a4, a1, v8, *(v9 + 8));
  swift_beginAccess();
  v38 = a1;
  v11 = *(a1 + 24);
  v12 = *(v11 + 16);

  if (v12 && (v13 = sub_1DA85A4B4(a3, a4), (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  result = (*(v17 + 16))(v16, v17);
  v19 = 0;
  v20 = *(result + 16);
  v36 = result + 32;
  v37 = result;
  while (1)
  {
    v21 = 0uLL;
    v22 = v20;
    v23 = 0uLL;
    v24 = 0uLL;
    if (v19 == v20)
    {
      goto LABEL_9;
    }

    if (v19 >= *(v37 + 16))
    {
      break;
    }

    v22 = v19 + 1;
    *&v40 = v19;
    sub_1DA7BABAC(v36 + 40 * v19, &v40 + 8);
    v21 = v40;
    v23 = v41;
    v24 = v42;
LABEL_9:
    v43[0] = v21;
    v43[1] = v23;
    v43[2] = v24;
    if (!v24)
    {

      swift_beginAccess();

      v34 = *(v38 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v40 = *(v38 + 24);
      *(v38 + 24) = 0x8000000000000000;
      sub_1DA90BBE8(v15, a3, a4, isUniquelyReferenced_nonNull_native);

      *(v38 + 24) = v40;
      return swift_endAccess();
    }

    v39 = v21;
    sub_1DA7B9FAC((v43 + 8), &v40);
    v25 = a3;

    MEMORY[0x1E1271BD0](45, 0xE100000000000000);
    v44 = v39;
    v26 = sub_1DA941614();
    MEMORY[0x1E1271BD0](v26);

    v27 = a3;
    v28 = *(&v41 + 1);
    v29 = v42;
    v30 = __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    sub_1DA8A363C(v30, v27, a4, v38, v28, v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DA7B6928(0, *(v15 + 2) + 1, 1, v15);
    }

    v32 = *(v15 + 2);
    v31 = *(v15 + 3);
    if (v32 >= v31 >> 1)
    {
      v15 = sub_1DA7B6928((v31 > 1), v32 + 1, 1, v15);
    }

    *(v15 + 2) = v32 + 1;
    v33 = &v15[16 * v32];
    *(v33 + 4) = v27;
    *(v33 + 5) = a4;
    result = __swift_destroy_boxed_opaque_existential_1(&v40);
    v19 = v22;
    a3 = v25;
  }

  __break(1u);
  return result;
}

void sub_1DA8A1804(uint64_t a1)
{
  if (qword_1EE113010 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_1EE113018;
  v3 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v1 + 4);
  sub_1DA8A45E4();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DA8A18F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1DA8F48FC(a2, a3);
  swift_endAccess();

  result = swift_beginAccess();
  v7 = *(a1 + 24);
  if (*(v7 + 16))
  {
    v8 = *(a1 + 24);

    v9 = sub_1DA85A4B4(a2, a3);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);

      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v11 + 40);
        do
        {
          v17 = *(v13 - 1);
          v16 = *v13;
          swift_beginAccess();
          v18 = *(a1 + 16);

          v19 = sub_1DA85A4B4(v17, v16);
          if (v20)
          {
            v21 = v19;
            v22 = *(a1 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v24 = *(a1 + 16);
            *(a1 + 16) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1DA86133C();
            }

            v14 = *(*(v24 + 48) + 16 * v21 + 8);

            v15 = *(*(v24 + 56) + 8 * v21);

            sub_1DA7BED64(v21, v24);
            *(a1 + 16) = v24;
          }

          swift_endAccess();

          v13 += 2;
          --v12;
        }

        while (v12);
      }

      swift_beginAccess();
      sub_1DA8F4994(a2, a3);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1DA8A1AE8(uint64_t a1)
{
  if (qword_1EE113010 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EE113018;
  v4 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v1 + 4);
  sub_1DA84A1B0(&v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t sub_1DA8A1BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  if (*(v9 + 16))
  {

    v10 = sub_1DA85A4B4(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return result;
}

uint64_t sub_1DA8A1C8C(uint64_t a1)
{
  if (qword_1EE113010 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EE113018;
  v4 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v1 + 4);
  sub_1DA8A3D8C(&v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t sub_1DA8A1D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  if (!*(v9 + 16))
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 16);

  v11 = sub_1DA85A4B4(a2, a3);
  if ((v12 & 1) == 0)
  {

LABEL_20:
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  swift_beginAccess();
  v14 = *(a1 + 24);
  if (!*(v14 + 16))
  {
LABEL_19:

    goto LABEL_20;
  }

  v15 = *(a1 + 24);

  v16 = sub_1DA85A4B4(a2, a3);
  if ((v17 & 1) == 0)
  {

    goto LABEL_19;
  }

  v18 = *(*(v14 + 56) + 8 * v16);

  v19 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v20 = *(v18 + 16);
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = 0;
  v22 = v18 + 40;
  v34 = v13;
  do
  {
    v33 = v19;
    v23 = (v22 + 16 * v21);
    v24 = v21;
    while (1)
    {
      if (v24 >= *(v18 + 16))
      {
        __break(1u);
        return result;
      }

      v25 = *(a1 + 16);
      if (*(v25 + 16))
      {
        break;
      }

LABEL_8:
      ++v24;
      v23 += 2;
      if (v20 == v24)
      {
        v19 = v33;
        v13 = v34;
        goto LABEL_22;
      }
    }

    v26 = *(v23 - 1);
    v27 = *v23;

    v28 = sub_1DA85A4B4(v26, v27);
    if ((v29 & 1) == 0)
    {

      goto LABEL_8;
    }

    v30 = *(*(v25 + 56) + 8 * v28);

    MEMORY[0x1E1271CA0](v31);
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1DA940C04();
    }

    v21 = v24 + 1;
    result = sub_1DA940C14();
    v19 = v35;
    v22 = v18 + 40;
    v13 = v34;
  }

  while (v20 - 1 != v24);
LABEL_22:

  *a4 = v13;
  a4[1] = v19;
  return result;
}

uint64_t sub_1DA8A1FD8(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *(v1 + 104) = a1;
  v2 = *(*(sub_1DA940A64() - 8) + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DA8A2094, 0, 0);
}

uint64_t sub_1DA8A2094()
{
  v56 = v0;
  v55[1] = *MEMORY[0x1E69E9840];
  if (qword_1EE1127C8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v52 = v0 + 88;
  aBlock = (v0 + 16);
  v1 = qword_1EE1127D0;
  os_unfair_lock_lock((qword_1EE1127D0 + 16));
  if (qword_1EE111430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_1EE111438;

  os_unfair_lock_unlock(v1 + 4);
  *(v0 + 88) = sub_1DA849274(MEMORY[0x1E69E7CC0]);
  v50 = v2 + 64;
  v3 = -1;
  v4 = -1 << v2[32];
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 8);
  v49 = (63 - v4) >> 6;

  v54 = 0;
  v6 = 0;
  v51 = v2;
  while (v5)
  {
LABEL_13:
    v14 = *(*(v2 + 7) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));
    v15 = qword_1EE110DF8;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE110E00);

    v17 = sub_1DA940584();
    v18 = sub_1DA940F04();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = v0;
      v21 = swift_slowAlloc();
      v55[0] = v21;
      *v19 = 136446210;
      v22 = v14[2];
      v23 = v14[3];

      v24 = sub_1DA7AE6E8(v22, v23, v55);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1DA7A9000, v17, v18, "Capturing state for entry: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v25 = v21;
      v0 = v20;
      MEMORY[0x1E12739F0](v25, -1, -1);
      v26 = v19;
      v2 = v51;
      MEMORY[0x1E12739F0](v26, -1, -1);
    }

    v5 &= v5 - 1;
    v7 = v14[4];
    v8 = swift_allocObject();
    *(v8 + 16) = v52;
    *(v8 + 24) = v14;

    v9 = v7;
    sub_1DA7B5220(v54);
    v10 = swift_allocObject();
    v54 = sub_1DA8A42F8;
    *(v10 + 16) = sub_1DA8A42F8;
    *(v10 + 24) = v8;
    *(v0 + 48) = sub_1DA82B5F8;
    *(v0 + 56) = v10;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DA7B8000;
    *(v0 + 40) = &block_descriptor_64;
    v11 = _Block_copy(aBlock);
    v12 = *(v0 + 56);

    dispatch_sync(v9, v11);

    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v13 >= v49)
    {
      break;
    }

    v5 = *&v50[8 * v13];
    ++v6;
    if (v5)
    {
      v6 = v13;
      goto LABEL_13;
    }
  }

  v27 = objc_opt_self();
  v28 = *(v0 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5918, &qword_1DA95EF00);
  v29 = sub_1DA940964();

  *(v0 + 96) = 0;
  v30 = [v27 dataWithJSONObject:v29 options:3 error:v0 + 96];

  v31 = *(v0 + 96);
  v32 = *(v0 + 112);
  if (v30)
  {
    v33 = *(v0 + 104);
    v34 = sub_1DA93F9A4();
    v36 = v35;

    sub_1DA940A54();
    v37 = sub_1DA940A34();
    v39 = v38;

    sub_1DA828324(v34, v36);
    v40 = 0x80000001DA953D60;
    v41 = 0xD00000000000001CLL;
    if (v39)
    {
      v41 = v37;
      v40 = v39;
    }

    *v33 = v41;
    v33[1] = v40;
    v42 = *(v0 + 88);

    sub_1DA7B5220(v54);

    v43 = *(v0 + 8);
    v44 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v45 = v31;
    sub_1DA93F8C4();

    swift_willThrow();

    v46 = *(v0 + 88);

    sub_1DA7B5220(v54);

    v43 = *(v0 + 8);
    v47 = *MEMORY[0x1E69E9840];
  }

  return v43();
}

uint64_t sub_1DA8A26CC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v5 = a2[5];
  v4 = a2[6];

  v7 = v5(v6);

  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6230, &unk_1DA95EF28);
  v9[4] = sub_1DA7AD11C(&qword_1ECBD6238, &qword_1ECBD6230, &unk_1DA95EF28);
  v9[0] = v7;
  return sub_1DA8F0F44(v9, v3, v2);
}

uint64_t StateCaptureService.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t StateCaptureService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8A2A7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0x3A6E6F6973726576, 0xE900000000000020);
  v5 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v5);

  MEMORY[0x1E1271BD0](0x736575716572203BLL, 0xED0000203A726F74);
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    a2 = 0x3E6C696E3CLL;
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](a2, v6);

  MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](0x203A697061203BLL, 0xE700000000000000);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](59, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DA8A2C34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746C756166;
  if (v2 != 1)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xEF74736575716552;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x726F727265;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x746C756166;
  if (*a2 != 1)
  {
    v8 = 0x6C616E7265747865;
    v3 = 0xEF74736575716552;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726F727265;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA941684();
  }

  return v11 & 1;
}

uint64_t sub_1DA8A2D40()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8A2DE8()
{
  *v0;
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA8A2E7C()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8A2F20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA8A4450();
  *a2 = result;
  return result;
}

void sub_1DA8A2F50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746C756166;
  if (v2 != 1)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xEF74736575716552;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726F727265;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DA8A2FC0()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8A30B4()
{
  *v0;
  *v0;
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA8A3194()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8A3284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA8A449C();
  *a2 = result;
  return result;
}

void sub_1DA8A32B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000676ELL;
  v6 = 0x696B726F7774656ELL;
  v7 = 0xE800000000000000;
  v8 = 0x72616C756C6C6563;
  if (v2 != 3)
  {
    v8 = 0x69746E6568747561;
    v7 = 0xEE006E6F69746163;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C6172656E6567;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DA8A3374()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110E00);
  __swift_project_value_buffer(v0, qword_1EE110E00);
  return sub_1DA940594();
}

uint64_t sub_1DA8A33F4()
{
  v1 = *v0;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6210, &unk_1DA95EEE8);
  return sub_1DA940A74();
}

uint64_t sub_1DA8A343C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1DA8A3480(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DA941764();
  sub_1DA940AB4();
  v6 = sub_1DA941794();

  return sub_1DA85A94C(a1, a2, v6);
}

uint64_t sub_1DA8A34F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a5;
  v13[4] = a6;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v13);
  v9 = (*(*(a5 - 8) + 16))(boxed_opaque_existential_2, a1, a5);
  if (qword_1EE113010 != -1)
  {
    v9 = swift_once();
  }

  v10 = qword_1EE113018;
  v11 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v10 + 4);
  sub_1DA8A45E4();
  os_unfair_lock_unlock(v10 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1DA8A363C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44[3] = a5;
  v44[4] = a6;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v44);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_2, a1, a5);
  v13 = (*(a6 + 8))(a5, a6);
  v15 = v14;
  swift_beginAccess();
  if (!*(*(a4 + 16) + 16))
  {
    goto LABEL_12;
  }

  v16 = *(a4 + 16);

  sub_1DA85A4B4(a2, a3);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_1EE110DF8 != -1)
  {
    swift_once();
  }

  v19 = sub_1DA9405A4();
  __swift_project_value_buffer(v19, qword_1EE110E00);

  v20 = sub_1DA940584();
  v21 = sub_1DA940F14();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v43[0] = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_1DA7AE6E8(a2, a3, v43);
    _os_log_impl(&dword_1DA7A9000, v20, v21, "Identifier [%{public}s] is already in use", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E12739F0](v23, -1, -1);
    MEMORY[0x1E12739F0](v22, -1, -1);
  }

  if (!os_variant_has_internal_content())
  {
    goto LABEL_20;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v25 = [v24 processName];

  v26 = sub_1DA940A14();
  v28 = v27;

  if (v26 != 0x747365746378 || v28 != 0xE600000000000000)
  {
    v29 = sub_1DA941684();

    if (v29)
    {
      goto LABEL_12;
    }

LABEL_20:
    result = sub_1DA9414A4();
    __break(1u);
    return result;
  }

LABEL_12:
  sub_1DA7BABAC(v44, v43);
  v30 = swift_allocObject();
  sub_1DA7B9FAC(v43, v30 + 16);
  type metadata accessor for StateCaptureItem();
  v31 = swift_allocObject();
  v31[2] = v13;
  v31[3] = v15;
  v31[4] = a2;
  v31[5] = a3;
  v32 = qword_1EE112C38;

  if (v32 != -1)
  {
    swift_once();
  }

  sub_1DA89FA00(sub_1DA8A4048, v30, v13, v15, (v31 + 6));

  if (qword_1EE110DF8 != -1)
  {
    swift_once();
  }

  v33 = sub_1DA9405A4();
  __swift_project_value_buffer(v33, qword_1EE110E00);

  v34 = sub_1DA940584();
  v35 = sub_1DA940F34();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v43[0] = v37;
    *v36 = 136446466;
    v38 = sub_1DA7AE6E8(v13, v15, v43);

    *(v36 + 4) = v38;
    *(v36 + 12) = 2082;
    *(v36 + 14) = sub_1DA7AE6E8(a2, a3, v43);
    _os_log_impl(&dword_1DA7A9000, v34, v35, "Added StateCaptureItem with title: %{public}s, identifier: %{public}s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v37, -1, -1);
    MEMORY[0x1E12739F0](v36, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  v39 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1DA90BBBC(v31, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a4 + 16) = v42;
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_1DA8A3BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a5;
  v13[4] = a6;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v13);
  v9 = (*(*(a5 - 8) + 16))(boxed_opaque_existential_2, a1, a5);
  if (qword_1EE113010 != -1)
  {
    v9 = swift_once();
  }

  v10 = qword_1EE113018;
  v11 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v10 + 4);
  sub_1DA8A45E4();
  os_unfair_lock_unlock(v10 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

double sub_1DA8A3D8C@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1DA8A4048()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

unint64_t sub_1DA8A40D4()
{
  result = qword_1EE110CF0;
  if (!qword_1EE110CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6220, &unk_1DA95EF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110CF0);
  }

  return result;
}

unint64_t sub_1DA8A4150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B0, &qword_1DA95C1A0);
    v3 = sub_1DA9414E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DA822F48(v4, &v13, &qword_1ECBD54B8, &qword_1DA95B140);
      v5 = v13;
      v6 = v14;
      result = sub_1DA8A3480(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DA848FE8(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

char *sub_1DA8A4280(char *__src)
{
  result = *(v1 + 16);
  if (result)
  {
    return strncpy(result, __src, *(v1 + 24) - result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8A42B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA8A4320()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v1[3];
  v6 = v1[4];
  v7 = __swift_project_boxed_opaque_existential_1(v1, v5);
  return sub_1DA8A363C(v7, v4, v3, v2, v5, v6);
}

unint64_t sub_1DA8A43A4()
{
  result = qword_1ECBD6240;
  if (!qword_1ECBD6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6240);
  }

  return result;
}

unint64_t sub_1DA8A43FC()
{
  result = qword_1ECBD6248;
  if (!qword_1ECBD6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6248);
  }

  return result;
}

uint64_t sub_1DA8A4450()
{
  v0 = sub_1DA9414F4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DA8A449C()
{
  v0 = sub_1DA9414F4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1DA8A44FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DA8A4558(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1DA8A467C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DA940594();
}

uint64_t static Logger.sim.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBD4768 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  v3 = __swift_project_value_buffer(v2, qword_1ECBD6250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1DA8A479C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696B0D8]) initWithMachServiceName_];
  [v2 setDelegate_];
  [v2 resume];
  v3 = *(a1 + OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_listener);
  *(a1 + OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_listener) = v2;
}

uint64_t sub_1DA8A4828(void *a1)
{
  v2 = v1;
  v4 = sub_1DA9407F4();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA940854();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00]();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1DA8A5D54;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_53;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_1DA940824();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

void sub_1DA8A4B28(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  swift_beginAccess();
  v5 = sub_1DA8C5F30(a2);
  swift_endAccess();

  swift_beginAccess();
  v6 = sub_1DA8F4B20(a2);
  swift_endAccess();
  if (!v6)
  {
LABEL_38:
    v51 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observingConnectionsByBundleIdentifier;
    swift_beginAccess();
    if (*(*&v4[v51] + 16))
    {
    }

    else
    {
      v52 = *&v4[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction];
      *&v4[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction] = 0;

      swift_unknownObjectRelease();
    }

    return;
  }

  v7 = v6 + 56;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 56);
  v11 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observingConnectionsByBundleIdentifier;
  swift_beginAccess();
  v12 = 0;
  v13 = (v8 + 63) >> 6;
  v54 = v6;
  v56 = v11;
  while (v10)
  {
    v14 = v10;
LABEL_13:
    v10 = (v14 - 1) & v14;
    v16 = *&v4[v11];
    if (*(v16 + 16))
    {
      v17 = (*(v6 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v14)))));
      v19 = *v17;
      v18 = v17[1];

      v55 = v19;
      v20 = sub_1DA85A4B4(v19, v18);
      if (v21)
      {
        v22 = *(*(v16 + 56) + 8 * v20);

        v23 = sub_1DA8C5F30(a2);
        if (!v23)
        {

          goto LABEL_29;
        }

        if ((v22 & 0xC000000000000001) != 0)
        {
          if (sub_1DA941264())
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }

        if (*(v22 + 16))
        {
LABEL_18:
          v53 = a2;
          swift_beginAccess();
          v24 = *&v4[v56];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = *&v4[v56];
          *&v4[v56] = 0x8000000000000000;
          v27 = sub_1DA85A4B4(v55, v18);
          v29 = v26[2];
          v30 = (v28 & 1) == 0;
          v31 = __OFADD__(v29, v30);
          v32 = v29 + v30;
          if (v31)
          {
            goto LABEL_43;
          }

          v33 = v28;
          if (v26[3] < v32)
          {
            sub_1DA85D740(v32, isUniquelyReferenced_nonNull_native);
            v27 = sub_1DA85A4B4(v55, v18);
            if ((v33 & 1) != (v34 & 1))
            {
              goto LABEL_45;
            }

LABEL_31:
            v44 = v26;
            if (v33)
            {
              goto LABEL_32;
            }

            goto LABEL_34;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_31;
          }

          v47 = v27;
          sub_1DA861518();
          v27 = v47;
          v44 = v26;
          if (v33)
          {
LABEL_32:
            v45 = v44[7];
            v46 = *(v45 + 8 * v27);
            *(v45 + 8 * v27) = v22;

            goto LABEL_36;
          }

LABEL_34:
          v44[(v27 >> 6) + 8] |= 1 << v27;
          v48 = (v44[6] + 16 * v27);
          *v48 = v55;
          v48[1] = v18;
          *(v44[7] + 8 * v27) = v22;
          v49 = v44[2];
          v31 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v31)
          {
            goto LABEL_44;
          }

          v44[2] = v50;
LABEL_36:
          a2 = v53;
          v6 = v54;
          v11 = v56;
          *&v4[v56] = v44;
          swift_endAccess();
        }

        else
        {
LABEL_24:

          swift_beginAccess();
          v35 = *&v4[v56];
          v36 = sub_1DA85A4B4(v19, v18);
          if (v37)
          {
            v38 = v36;
            v39 = *&v4[v56];
            v40 = swift_isUniquelyReferenced_nonNull_native();
            v41 = *&v4[v56];
            *&v4[v56] = 0x8000000000000000;
            if (!v40)
            {
              sub_1DA861518();
            }

            v42 = *(*(v41 + 48) + 16 * v38 + 8);

            v43 = *(*(v41 + 56) + 8 * v38);

            sub_1DA8F71FC(v38, v41);
            *&v4[v56] = v41;
          }

          swift_endAccess();
LABEL_29:

          v6 = v54;
          v11 = v56;
        }
      }

      else
      {

        v11 = v56;
      }
    }
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      goto LABEL_38;
    }

    v14 = *(v7 + 8 * v15);
    ++v12;
    if (v14)
    {
      v12 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_1DA9416E4();
  __break(1u);
}

void sub_1DA8A4FE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observingConnectionsByBundleIdentifier;
  swift_beginAccess();
  v10 = *&v8[v9];
  if (*(v10 + 16))
  {
    v11 = *&v8[v9];

    v12 = sub_1DA85A4B4(a2, a3);
    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v12);

      goto LABEL_8;
    }
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1DA941264())
  {
    sub_1DA84DD74(MEMORY[0x1E69E7CC0]);
    v14 = v32;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

LABEL_8:
  v37 = v14;
  v15 = a4;
  sub_1DA7AEE18(v36, v15);

  v16 = v37;
  swift_beginAccess();

  v17 = *&v8[v9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *&v8[v9];
  *&v8[v9] = 0x8000000000000000;
  sub_1DA90BDA4(v16, a2, a3, isUniquelyReferenced_nonNull_native);

  *&v8[v9] = v34;
  swift_endAccess();
  v19 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_bundleIdentifiersByObservingConnection;
  swift_beginAccess();
  v20 = *&v8[v19];
  if (*(v20 + 16))
  {
    v21 = *&v8[v19];

    v22 = sub_1DA85A7CC(v15);
    if (v23)
    {
      v24 = *(*(v20 + 56) + 8 * v22);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
  }

  v35 = v24;

  sub_1DA8A9058(&v34, a2, a3);

  v25 = v35;
  swift_beginAccess();
  v26 = v15;
  v27 = *&v8[v19];
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *&v8[v19];
  *&v8[v19] = 0x8000000000000000;
  sub_1DA90BF68(v25, v26, v28);

  *&v8[v19] = v33;
  swift_endAccess();
  v29 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction;
  if (*&v8[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction])
  {
  }

  else
  {
    sub_1DA940A94();
    v30 = os_transaction_create();

    v31 = *&v8[v29];
    *&v8[v29] = v30;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1DA8A52F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v10 = sub_1DA9407F4();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1DA940854();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v6 + OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a1;
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);

  v21 = a1;
  sub_1DA940824();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v17, v13, v20);
  _Block_release(v20);
  (*(v27 + 8))(v13, v10);
  (*(v14 + 8))(v17, v26);
}

void sub_1DA8A55FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observingConnectionsByBundleIdentifier;
    swift_beginAccess();
    v10 = *&v8[v9];
    if (!*(v10 + 16))
    {
      goto LABEL_12;
    }

    v11 = *&v8[v9];

    v12 = sub_1DA85A4B4(a2, a3);
    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v12);

      v15 = sub_1DA8C5F30(a4);
      if (v15)
      {

        if ((v14 & 0xC000000000000001) != 0)
        {
          if (sub_1DA941264())
          {
LABEL_7:
            swift_beginAccess();

            v16 = *&v8[v9];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v30 = *&v8[v9];
            *&v8[v9] = 0x8000000000000000;
            sub_1DA90BDA4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

            *&v8[v9] = v30;
            swift_endAccess();
            goto LABEL_12;
          }
        }

        else if (*(v14 + 16))
        {
          goto LABEL_7;
        }

        swift_beginAccess();
        sub_1DA8F4B08(a2, a3);
        swift_endAccess();
      }
    }

LABEL_12:
    v18 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_bundleIdentifiersByObservingConnection;
    swift_beginAccess();
    v19 = *&v8[v18];
    if (!*(v19 + 16))
    {
      goto LABEL_20;
    }

    v20 = *&v8[v18];

    v21 = sub_1DA85A7CC(a4);
    if (v22)
    {
      v23 = *(*(v19 + 56) + 8 * v21);

      sub_1DA8C5DF4(a2, a3);
      if (v24)
      {

        if (*(v23 + 16))
        {
          swift_beginAccess();
          v25 = a4;
          v26 = *&v8[v18];
          v27 = swift_isUniquelyReferenced_nonNull_native();
          v29 = *&v8[v18];
          *&v8[v18] = 0x8000000000000000;
          sub_1DA90BF68(v23, v25, v27);

          *&v8[v18] = v29;
          swift_endAccess();
          goto LABEL_20;
        }

        swift_beginAccess();
        sub_1DA8F4B20(a4);
        swift_endAccess();
      }
    }

LABEL_20:
    if (*(*&v8[v9] + 16))
    {
    }

    else
    {
      v28 = *&v8[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction];
      *&v8[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction] = 0;

      swift_unknownObjectRelease();
    }
  }
}

id sub_1DA8A5908()
{
  v1 = v0;
  v18 = sub_1DA940FC4();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1DA940854();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v17 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue;
  v10 = sub_1DA7AC344();
  v16[1] = "NotificationServiceListener";
  v16[2] = v10;
  sub_1DA940824();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v18);
  *&v0[v17] = sub_1DA941004();
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_listener] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_connections] = MEMORY[0x1E69E7CD0];
  v11 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observingConnectionsByBundleIdentifier;
  v12 = MEMORY[0x1E69E7CC0];
  *&v1[v11] = sub_1DA8493AC(MEMORY[0x1E69E7CC0]);
  v13 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_bundleIdentifiersByObservingConnection;
  *&v1[v13] = sub_1DA8494BC(v12);
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction] = 0;
  v14 = type metadata accessor for NotificationServiceListener();
  v19.receiver = v1;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_1DA8A5C00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationServiceListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_35Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA8A5D78(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA93FB24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utType;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  *(v3 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier) = xmmword_1DA95F150;
  *(v3 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbol) = 1;
  *(v3 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbolName) = xmmword_1DA95F150;
  v13 = [a1 uniqueID];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1DA940A14();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  sub_1DA93FD44();
  v18 = sub_1DA93FB04();
  v20 = v19;
  (*(v7 + 8))(v10, v6);
  if (v17)
  {
    if (v15 == v18 && v17 == v20)
    {
    }

    else
    {
      v22 = sub_1DA941684();

      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    *(v3 + 16) = a1;
    v24 = sub_1DA93FD54();
    v25 = *(v24 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x1EEE9AC00](v24);
    (*(v25 + 16))(&v29 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v24);
    v28 = sub_1DA9416C4();
    (*(v25 + 8))(a2, v24);
    *(v3 + 24) = v28;
    return v3;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_1DA8A6064@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62B8, &unk_1DA95F2A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62B0, &qword_1DA95F160);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20[-v12];
  v14 = OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utType;
  swift_beginAccess();
  sub_1DA822F48(v1 + v14, v13, &qword_1ECBD62B0, &qword_1DA95F160);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return sub_1DA8662E4(v13, a1);
  }

  sub_1DA7BA120(v13, &qword_1ECBD62B0, &qword_1DA95F160);
  result = [*(v1 + 16) modelIdentifier];
  if (result)
  {
    v18 = result;
    sub_1DA940A14();

    v19 = sub_1DA93FE14();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_1DA93FE44();
    sub_1DA822F48(a1, v11, &qword_1ECBD4E80, &qword_1DA958C00);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_1DA8A6E64(v11, v1 + v14);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8A631C()
{
  v1 = sub_1DA93FE74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier);
  v11 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier);
  v12 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier + 8);
  v13 = v11;
  if (v12 == 1)
  {
    sub_1DA8A6064(v9);
    if ((*(v2 + 48))(v9, 1, v1))
    {
      sub_1DA7BA120(v9, &qword_1ECBD4E80, &qword_1DA958C00);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      (*(v2 + 16))(v5, v9, v1);
      sub_1DA7BA120(v9, &qword_1ECBD4E80, &qword_1DA958C00);
      v13 = sub_1DA93FE24();
      v14 = v15;
      (*(v2 + 8))(v5, v1);
    }

    v16 = *v10;
    v17 = v10[1];
    *v10 = v13;
    v10[1] = v14;

    sub_1DA8A65A0(v16, v17);
  }

  sub_1DA8A6E50(v11, v12);
  return v13;
}

uint64_t RemoteDevice.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_1DA7BA120(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utType, &qword_1ECBD62B0, &qword_1DA95F160);
  sub_1DA8A65A0(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier), *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier + 8));
  sub_1DA8A65B4(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbol));
  sub_1DA8A65A0(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbolName), *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbolName + 8));
  return v0;
}

uint64_t sub_1DA8A65A0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1DA8A65B4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t RemoteDevice.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_1DA7BA120(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utType, &qword_1ECBD62B0, &qword_1DA95F160);
  sub_1DA8A65A0(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier), *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier + 8));
  sub_1DA8A65B4(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbol));
  sub_1DA8A65A0(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbolName), *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbolName + 8));
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DA8A6680(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) uniqueID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DA940A14();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_1DA8A66F8()
{
  result = [*(v0 + 16) uniqueID];
  if (result)
  {
    v2 = result;
    v3 = sub_1DA940A14();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id RemoteDevice.debugDescription.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1DA941884();
  MEMORY[0x1E1271BD0](v3);

  MEMORY[0x1E1271BD0](2108704, 0xE300000000000000);
  v4 = v0[2];
  result = [v4 uniqueID];
  if (result)
  {
    v6 = result;
    v7 = sub_1DA940A14();
    v9 = v8;

    MEMORY[0x1E1271BD0](v7, v9);

    MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
    v14 = v1[3];
    sub_1DA941494();
    MEMORY[0x1E1271BD0](8251, 0xE200000000000000);
    v10 = [v4 description];
    v11 = sub_1DA940A14();
    v13 = v12;

    MEMORY[0x1E1271BD0](v11, v13);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DA8A68D8()
{
  v1 = v0;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1DA941364();
  result = [*(v0 + 16) uniqueID];
  if (result)
  {
    v3 = result;
    v4 = sub_1DA940A14();
    v6 = v5;

    MEMORY[0x1E1271BD0](v4, v6);

    MEMORY[0x1E1271BD0](10272, 0xE200000000000000);
    v7 = sub_1DA8A631C();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
      v9 = 0xE700000000000000;
    }

    MEMORY[0x1E1271BD0](v7, v9);

    MEMORY[0x1E1271BD0](0x3A65746174732029, 0xE900000000000020);
    v10 = sub_1DA93FD54();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20[1] = *(v1 + 24);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    v15 = sub_1DA93FD24();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x1EEE9AC00](v15);
    v19 = v20 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1DA93FD34();
    (*(v11 + 8))(v14, v10);
    sub_1DA941494();
    (*(v16 + 8))(v19, v15);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DA8A6B6C()
{
  result = [*(*v0 + 16) uniqueID];
  if (result)
  {
    v2 = result;
    v3 = sub_1DA940A14();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s21UserNotificationsCore12RemoteDeviceC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 16) uniqueID];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = sub_1DA940A14();
  v7 = v6;

  result = [*(a2 + 16) uniqueID];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = sub_1DA940A14();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DA941684();
  }

  return (v13 & 1);
}

uint64_t type metadata accessor for RemoteDevice()
{
  result = qword_1EE113A50;
  if (!qword_1EE113A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA8A6D20()
{
  sub_1DA8A6DEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DA8A6DEC()
{
  if (!qword_1EE110EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD4E80, &qword_1DA958C00);
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE110EE8);
    }
  }
}

uint64_t sub_1DA8A6E50(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DA8A6E64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62B0, &qword_1DA95F160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8A6ED8(uint64_t a1)
{
  result = MEMORY[0x1E1271F90](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1DA8A9058(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8A6FF4(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSource();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1DA8AD244(&qword_1ECBD62F0, type metadata accessor for NotificationSource);
  result = MEMORY[0x1E1271F90](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1DA8AE360(v9, type metadata accessor for NotificationSource))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1DA8AE290(*(a1 + 48) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for NotificationSource);
    sub_1DA8AE2F8(v11, v6, type metadata accessor for NotificationSource);
    sub_1DA8A96D0(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8A7238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E8, &qword_1DA95F360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v25 - v4 + 8;
  v6 = type metadata accessor for UserNotificationsCloudRecord(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for CloudAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v25[3] = v6;
  v25[4] = sub_1DA8AD244(&qword_1EE114560, type metadata accessor for UserNotificationsCloudRecord);
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v25);
  sub_1DA8AE290(a1, boxed_opaque_existential_2, type metadata accessor for UserNotificationsCloudRecord);
  v15 = sub_1DA841298(v25, 0, 1);
  v24 = v16;
  v17 = v15;
  __swift_destroy_boxed_opaque_existential_1(v25);
  v18 = *(v6 + 20);
  sub_1DA8AE290(a1 + v18, v13, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1DA8AE360(v13, type metadata accessor for CloudAction);
      v20 = 0x80000001DA9540B0;
      v21 = 0xD000000000000012;
    }

    else
    {
      sub_1DA8AE360(v13, type metadata accessor for CloudAction);
      v20 = 0xEF6E6F6974616369;
      v21 = 0x6669746F4E646461;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v21 = 0xD000000000000010;
    sub_1DA8AE360(v13, type metadata accessor for CloudAction);
    v20 = 0x80000001DA954090;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1DA8AE360(v13, type metadata accessor for CloudAction);
    v20 = 0xED00006E6F697463;
    v21 = 0x416D726F66726570;
  }

  else
  {
    v20 = 0x80000001DA954070;
    sub_1DA8AE360(v13, type metadata accessor for CloudAction);
    v21 = 0xD000000000000011;
  }

  sub_1DA8AE290(a1 + v18, v5, type metadata accessor for CloudAction);
  (*(v10 + 56))(v5, 0, 1, v9);
  v22 = v24;
  sub_1DA8AD490(v17, v24, v21, v20, v5);

  sub_1DA828324(v17, v22);
  return sub_1DA7BA120(v5, &qword_1ECBD62E8, &qword_1DA95F360);
}

uint64_t sub_1DA8A7878(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1DA941264())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62C8, &qword_1DA95F350);
  v3 = sub_1DA941334();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_1DA941224();
  sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
  sub_1DA8AD28C();
  result = sub_1DA940EC4();
  v1 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_1DA941294();
    if (!v16)
    {
LABEL_34:
      sub_1DA830720();

      return v3;
    }

    *&v28 = v16;
    sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
    swift_dynamicCast();
LABEL_25:
    sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
    swift_dynamicCast();
    v20 = *(v3 + 40);
    result = sub_1DA9412C4();
    v21 = -1 << *(v3 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      do
      {
        if (++v23 == v25 && (v24 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v23);
      }

      while (v27 == -1);
      v13 = __clz(__rbit64(~v27)) + (v23 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v30;
    *v14 = v28;
    *(v14 + 16) = v29;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1DA8A7BF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62C8, &qword_1DA95F350);
    v2 = sub_1DA941334();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v22 = *v13;
    v23 = v13[1];

    swift_dynamicCast();
    v14 = *(v2 + 40);
    result = sub_1DA9412C4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v26;
    *v11 = v24;
    *(v11 + 16) = v25;
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

    v5 = *(a1 + 56 + 8 * v12);
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

id sub_1DA8A7E28(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA941264())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v8 = MEMORY[0x1E69E7CC0];
    result = sub_1DA941404();
    if (i < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E1272460](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      result = [*(v6 + 16) destination];
      if (!result)
      {
        goto LABEL_19;
      }

      sub_1DA9413E4();
      v7 = *(v8 + 16);
      sub_1DA941414();
      sub_1DA941424();
      sub_1DA9413F4();
      if (v5 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_1DA8A7F7C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1DA8A7FD8(void *a1, NSObject *a2)
{
  v131 = a2;
  v132 = a1;
  v136[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DA93F964();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v130 = &v122 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v122 - v11;
  v13 = *(v2 + 16);
  swift_getKeyPath();
  v135[0] = v13;
  sub_1DA8AD244(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v14 = *(v13 + 56);
  if (v14 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA941264())
  {
    v16 = qword_1EE110E68;
    if (i < 1)
    {
      break;
    }

    v123 = v8;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    v18 = __swift_project_value_buffer(v17, qword_1EE11ADC0);
    v124 = v4[2];
    v125 = v4 + 2;
    v124(v12, v132, v3);

    v126 = v18;
    v19 = sub_1DA940584();
    v20 = sub_1DA940F34();

    v21 = os_log_type_enabled(v19, v20);
    v133 = v14;
    v128 = v4;
    v129 = v3;
    if (v21)
    {
      v22 = v4;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v135[0] = v24;
      *v23 = 136315650;
      sub_1DA8AD244(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
      v25 = v20;
      v26 = sub_1DA941614();
      v27 = v3;
      v29 = v28;
      v127 = v22[1];
      v127(v12, v27);
      v30 = sub_1DA7AE6E8(v26, v29, v135);

      *(v23 + 4) = v30;
      *(v23 + 12) = 2080;
      v31 = sub_1DA940984();
      v33 = sub_1DA7AE6E8(v31, v32, v135);

      *(v23 + 14) = v33;
      *(v23 + 22) = 2080;
      v34 = type metadata accessor for RemoteDevice();
      v35 = MEMORY[0x1E1271CD0](v133, v34);
      v37 = sub_1DA7AE6E8(v35, v36, v135);

      *(v23 + 24) = v37;
      _os_log_impl(&dword_1DA7A9000, v19, v25, "UserNotificationsIDSCloudPushTarget push(attachmentURL): attachmentURL: %s to metadata: %s to availableDevices: %s", v23, 0x20u);
      swift_arrayDestroy();
      v38 = v24;
      v14 = v133;
      MEMORY[0x1E12739F0](v38, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
    }

    else
    {

      v127 = v4[1];
      v127(v12, v3);
    }

    swift_beginAccess();
    v53 = *(v13 + 40);
    v54 = sub_1DA93F904();
    v55 = sub_1DA940964();
    v56 = sub_1DA8A7E28(v14);
    v57 = sub_1DA8AD104(v56);

    sub_1DA8A7878(v57);

    v58 = sub_1DA940E84();

    LOBYTE(v136[0]) = *(v13 + 16);
    sub_1DA8986BC();
    v59 = sub_1DA940964();

    v136[0] = 0;
    v134 = 0;
    v60 = [v53 sendResourceAtURL:v54 metadata:v55 toDestinations:v58 priority:300 options:v59 identifier:v136 error:&v134];

    v61 = v134;
    v62 = v136[0];
    if (!v60)
    {
      v82 = v134;
      v83 = v62;
      v84 = sub_1DA93F8C4();

      swift_willThrow();
      v85 = v123;
      v86 = v129;
      v124(v123, v132, v129);
      v87 = v133;

      v88 = v84;
      v89 = sub_1DA940584();
      v90 = sub_1DA940F14();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v132 = v83;
        v92 = v91;
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v136[0] = v94;
        *v92 = 136315650;
        sub_1DA8AD244(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
        v95 = sub_1DA941614();
        v96 = v86;
        v98 = v97;
        v127(v85, v96);
        v99 = sub_1DA7AE6E8(v95, v98, v136);

        *(v92 + 4) = v99;
        *(v92 + 12) = 2080;
        v100 = type metadata accessor for RemoteDevice();
        v101 = MEMORY[0x1E1271CD0](v87, v100);
        v103 = v102;

        v104 = sub_1DA7AE6E8(v101, v103, v136);

        *(v92 + 14) = v104;
        *(v92 + 22) = 2112;
        v105 = v84;
        v106 = _swift_stdlib_bridgeErrorToNSError();
        *(v92 + 24) = v106;
        *v93 = v106;
        _os_log_impl(&dword_1DA7A9000, v89, v90, "UserNotificationsIDSCloudPushTarget push(attachmentURL): attachmentURL: %s to availableDevices: %s failed: %@", v92, 0x20u);
        sub_1DA7BA120(v93, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v93, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v94, -1, -1);
        MEMORY[0x1E12739F0](v92, -1, -1);
      }

      else
      {

        v127(v85, v86);
      }

      goto LABEL_35;
    }

    v63 = v129;
    v12 = v130;
    v124(v130, v132, v129);
    v64 = v133;

    v65 = v61;
    v4 = v62;
    v66 = sub_1DA940584();
    v14 = sub_1DA940F34();

    if (!os_log_type_enabled(v66, v14))
    {

      v127(v12, v63);

      goto LABEL_35;
    }

    LODWORD(v124) = v14;
    v125 = v4;
    v126 = v62;
    v131 = v66;
    v67 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v136[0] = v123;
    *v67 = 136315650;
    sub_1DA8AD244(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
    v68 = sub_1DA941614();
    v69 = v63;
    v71 = v70;
    v127(v12, v69);
    v72 = sub_1DA7AE6E8(v68, v71, v136);

    *(v67 + 4) = v72;
    v130 = v67;
    *(v67 + 12) = 2080;
    v134 = MEMORY[0x1E69E7CC0];
    sub_1DA82A778(0, i, 0);
    v3 = 0;
    v73 = v134;
    v74 = v64;
    v8 = (v64 & 0xC000000000000001);
    v132 = (v64 & 0xFFFFFFFFFFFFFF8);
    while (v3 < i)
    {
      v75 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_37;
      }

      if (v8)
      {
        v76 = MEMORY[0x1E1272460](v3, v74);
      }

      else
      {
        if (v3 >= *(v132 + 2))
        {
          goto LABEL_38;
        }

        v76 = *(v74 + 8 * v3 + 32);
      }

      v77 = [*(v76 + 16) uniqueID];
      if (!v77)
      {
        __break(1u);
      }

      v78 = v77;
      v12 = sub_1DA940A14();
      v4 = v79;

      v134 = v73;
      v13 = v73[2];
      v80 = v73[3];
      v14 = v13 + 1;
      if (v13 >= v80 >> 1)
      {
        sub_1DA82A778((v80 > 1), v13 + 1, 1);
        v73 = v134;
      }

      v73[2] = v14;
      v81 = &v73[2 * v13];
      v81[4] = v12;
      v81[5] = v4;
      ++v3;
      v74 = v133;
      if (v75 == i)
      {

        v107 = MEMORY[0x1E1271CD0](v73, MEMORY[0x1E69E6158]);
        v109 = v108;

        v110 = sub_1DA7AE6E8(v107, v109, v136);

        v111 = v130;
        *(v130 + 14) = v110;
        *(v111 + 11) = 2112;
        v113 = v125;
        v112 = v126;
        *(v111 + 3) = v125;
        v114 = v122;
        *v122 = v112;
        v115 = v113;
        v116 = v131;
        _os_log_impl(&dword_1DA7A9000, v131, v124, "UserNotificationsIDSCloudPushTarget push(attachmentURL): SENT attachmentURL: %s to availableDevices: %s IDS message identifier: %@", v111, 0x20u);
        sub_1DA7BA120(v114, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v114, -1, -1);
        v117 = v123;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v117, -1, -1);
        MEMORY[0x1E12739F0](v111, -1, -1);

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v39 = sub_1DA9405A4();
  __swift_project_value_buffer(v39, qword_1EE11ADC0);

  v40 = sub_1DA940584();
  v41 = sub_1DA940F34();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v136[0] = v43;
    *v42 = 136315394;
    swift_beginAccess();
    v44 = *(v13 + 40);
    v45 = [v44 description];
    v46 = sub_1DA940A14();
    v48 = v47;

    v49 = sub_1DA7AE6E8(v46, v48, v136);

    *(v42 + 4) = v49;
    *(v42 + 12) = 2080;
    v50 = [*(v13 + 40) devices];
    if (v50)
    {
      v51 = v50;
      sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
      v52 = sub_1DA940BE4();
    }

    else
    {
      v52 = 0;
    }

    v134 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62C0, &unk_1DA95F340);
    v118 = sub_1DA940A74();
    v120 = sub_1DA7AE6E8(v118, v119, v136);

    *(v42 + 14) = v120;
    _os_log_impl(&dword_1DA7A9000, v40, v41, "UserNotificationsIDSCloudPushTarget push(attachmentURL): zero available devices for idsService: %s idsService.devices: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v43, -1, -1);
    MEMORY[0x1E12739F0](v42, -1, -1);
  }

LABEL_35:
  v121 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DA8A8DEC(NSObject *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E8, &qword_1DA95F360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = *v4;
  v14 = type metadata accessor for CloudAction(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_1DA8AD490(a1, a2, a3, a4, v12);
  return sub_1DA7BA120(v12, &qword_1ECBD62E8, &qword_1DA95F360);
}

uint64_t sub_1DA8A8EF4(NSObject *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E8, &qword_1DA95F360);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  v17 = *v7;
  v18 = type metadata accessor for UserNotificationsCloudRecord(0);
  sub_1DA8AE290(a7 + *(v18 + 20), v16, type metadata accessor for CloudAction);
  v19 = type metadata accessor for CloudAction(0);
  (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  sub_1DA8AD490(a1, a2, a3, a4, v16);
  return sub_1DA7BA120(v16, &qword_1ECBD62E8, &qword_1DA95F360);
}

uint64_t sub_1DA8A9058(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DA941764();
  sub_1DA940AB4();
  v9 = sub_1DA941794();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DA941684() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1DA8AAE80(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DA8A91A8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DA941274();

    if (v9)
    {

      sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1DA941264();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1DA8A9B6C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1DA8AA8B8(v22 + 1, &qword_1ECBD62E0, &qword_1DA95F358);
    }

    v20 = v8;
    sub_1DA8AADFC(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
  v11 = *(v6 + 40);
  v12 = sub_1DA941104();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1DA8AB000(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1DA941114();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1DA8A93F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DA93FEC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1DA8AD244(&qword_1ECBD5940, MEMORY[0x1E69DF0D0]);
  v36 = a2;
  v13 = sub_1DA9409A4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1DA8AD244(&qword_1ECBD5948, MEMORY[0x1E69DF0D0]);
      v23 = sub_1DA9409F4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1DA8AB1A0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1DA8A96D0(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v4 = type metadata accessor for NotificationSource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v39 - v10;
  v40 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1DA941764();
  v14 = *a2;
  v13 = *(a2 + 8);
  sub_1DA941784();
  if (v13)
  {
    sub_1DA940AB4();
  }

  v15 = *(a2 + 16);
  v45 = *(a2 + 24);
  sub_1DA940AB4();
  v41 = a2;
  v44 = *(a2 + 48);
  sub_1DA941784();
  v16 = sub_1DA941794();
  v17 = v11 + 56;
  v18 = -1 << *(v11 + 32);
  v19 = v16 & ~v18;
  if ((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v21 = *(v5 + 72);
    v43 = v13;
    do
    {
      v22 = v21 * v19;
      sub_1DA8AE290(*(v11 + 48) + v21 * v19, v9, type metadata accessor for NotificationSource);
      v23 = *(v9 + 1);
      if (v23)
      {
        if (!v13 || (*v9 == v14 ? (v24 = v23 == v13) : (v24 = 0), !v24 && (sub_1DA941684() & 1) == 0))
        {
LABEL_6:
          sub_1DA8AE360(v9, type metadata accessor for NotificationSource);
          goto LABEL_7;
        }
      }

      else if (v13)
      {
        goto LABEL_6;
      }

      v25 = *(v9 + 2) == v15 && *(v9 + 3) == v45;
      if (!v25 && (sub_1DA941684() & 1) == 0)
      {
        goto LABEL_6;
      }

      v26 = v21;
      v27 = v20;
      v28 = v17;
      v29 = v11;
      v30 = v15;
      v31 = v14;
      v32 = v9[48];
      sub_1DA8AE360(v9, type metadata accessor for NotificationSource);
      v24 = v44 == v32;
      v14 = v31;
      v15 = v30;
      v11 = v29;
      v17 = v28;
      v20 = v27;
      v21 = v26;
      v13 = v43;
      if (v24)
      {
        sub_1DA8AE360(v41, type metadata accessor for NotificationSource);
        sub_1DA8AE290(*(v11 + 48) + v22, v42, type metadata accessor for NotificationSource);
        return 0;
      }

LABEL_7:
      v19 = (v19 + 1) & v20;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  v34 = v40;
  v35 = *v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v41;
  v38 = v39;
  sub_1DA8AE290(v41, v39, type metadata accessor for NotificationSource);
  v46 = *v34;
  sub_1DA8AB444(v38, v19, isUniquelyReferenced_nonNull_native);
  *v34 = v46;
  sub_1DA8AE2F8(v37, v42, type metadata accessor for NotificationSource);
  return 1;
}

uint64_t sub_1DA8A9A2C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1DA941764();
  sub_1DA8ACEEC(v19, a2);
  v8 = sub_1DA941794();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      v14 = sub_1DA8C4948(v13, a2);

      if (v14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);

    return 0;
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[0] = *v3;

    sub_1DA8AB77C(v17, v10, isUniquelyReferenced_nonNull_native);
    *v3 = *&v19[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1DA8A9B6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E0, &qword_1DA95F358);
    v2 = sub_1DA941324();
    v16 = v2;
    sub_1DA941224();
    if (sub_1DA941294())
    {
      sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1DA8AA8B8(v10 + 1, &qword_1ECBD62E0, &qword_1DA95F358);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1DA941104();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1DA941294());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DA8A9D7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD56C8, &unk_1DA95F380);
    v2 = sub_1DA941324();
    v16 = v2;
    sub_1DA941224();
    if (sub_1DA941294())
    {
      type metadata accessor for NotificationServiceConnection();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1DA8AA8B8(v10 + 1, &qword_1ECBD56C8, &unk_1DA95F380);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1DA941104();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1DA941294());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DA8A9F7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B00, &qword_1DA95F368);
  result = sub_1DA941314();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DA8AA1DC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DA93FEC4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6300, &qword_1DA95F398);
  result = sub_1DA941314();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1DA8AD244(&qword_1ECBD5940, MEMORY[0x1E69DF0D0]);
      result = sub_1DA9409A4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1DA8AA538(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NotificationSource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AD0, &qword_1DA960F90);
  v11 = sub_1DA941314();
  v12 = v11;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = *(v9 + 56);
    v45 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v43 = v2;
    v44 = (v15 + 63) >> 6;
    v18 = v11 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v5 + 72);
      sub_1DA8AE2F8(*(v9 + 48) + v24 * (v20 | (v13 << 6)), v8, type metadata accessor for NotificationSource);
      v25 = *(v12 + 40);
      sub_1DA941764();
      if (*(v8 + 1))
      {
        v46 = v24;
        v26 = v17;
        v27 = v5;
        v28 = v12;
        v29 = v9;
        v30 = *v8;
        sub_1DA941784();
        v9 = v29;
        v12 = v28;
        v5 = v27;
        v17 = v26;
        v24 = v46;
        sub_1DA940AB4();
      }

      else
      {
        sub_1DA941784();
      }

      v31 = *(v8 + 2);
      v32 = *(v8 + 3);
      sub_1DA940AB4();
      v33 = v8[48];
      sub_1DA941784();
      result = sub_1DA941794();
      v34 = -1 << *(v12 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1DA8AE2F8(v8, *(v12 + 48) + v19 * v24, type metadata accessor for NotificationSource);
      ++*(v12 + 16);
    }

    v21 = v13;
    result = v45;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v44)
      {
        break;
      }

      v23 = v45[v13];
      ++v21;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    v41 = 1 << *(v9 + 32);
    if (v41 >= 64)
    {
      bzero(v45, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v45 = -1 << v41;
    }

    v2 = v43;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1DA8AA8B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DA941314();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1DA941104();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1DA8AAAD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62F8, &qword_1DA95F390);
  v5 = sub_1DA941314();
  v6 = v5;
  if (!*(v3 + 16))
  {
LABEL_31:

    *v2 = v6;
    return result;
  }

  v33 = v2;
  v7 = 0;
  v34 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v35 = v5 + 56;
  v36 = v11;
  v37 = v5;
  v38 = v3;
  while (1)
  {
    if (v10)
    {
      v14 = __clz(__rbit64(v10));
      v39 = (v10 - 1) & v10;
    }

    else
    {
      v15 = v7;
      result = v34;
      do
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_33;
        }

        if (v7 >= v11)
        {
          v32 = 1 << *(v3 + 32);
          if (v32 >= 64)
          {
            bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v34 = -1 << v32;
          }

          v2 = v33;
          *(v3 + 16) = 0;
          goto LABEL_31;
        }

        v17 = v34[v7];
        ++v15;
      }

      while (!v17);
      v14 = __clz(__rbit64(v17));
      v39 = (v17 - 1) & v17;
    }

    v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = *(v6 + 40);
    sub_1DA941764();
    v20 = 1 << *(v18 + 32);
    v21 = v20 < 64 ? ~(-1 << v20) : -1;
    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    v25 = 0;
    if (!v22)
    {
      break;
    }

    while (1)
    {
      v26 = v25;
LABEL_24:
      v27 = __clz(__rbit64(v22)) | (v26 << 6);
      v28 = (*(v18 + 48) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      sub_1DA862D8C(*(v18 + 56) + 40 * v27, &v42);
      v40 = v42;
      v41 = v43;
      v31 = v44;

      if (!v29)
      {
        break;
      }

      v22 &= v22 - 1;
      v47[0] = v40;
      v47[1] = v41;
      v48 = v31;
      v44 = v51;
      v45 = v52;
      v46 = v53;
      v42 = v49;
      v43 = v50;
      sub_1DA940AB4();

      sub_1DA9412E4();
      sub_1DA862DE8(v47);
      result = sub_1DA941794();
      v24 ^= result;
      v25 = v26;
      if (!v22)
      {
        goto LABEL_21;
      }
    }

LABEL_8:

    MEMORY[0x1E1272850](v24);
    sub_1DA941794();
    v6 = v37;
    v12 = -1 << *(v37 + 32);
    v13 = sub_1DA941204();
    *(v35 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v37 + 48) + 8 * v13) = v18;
    ++*(v37 + 16);
    v3 = v38;
    v10 = v39;
    v11 = v36;
  }

LABEL_21:
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_8;
    }

    v22 = *(v18 + 64 + 8 * v26);
    ++v25;
    if (v22)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_1DA8AADFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DA941104();
  v5 = -1 << *(a2 + 32);
  result = sub_1DA941204();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1DA8AAE80(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DA8A9F7C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DA8AB908();
      goto LABEL_16;
    }

    sub_1DA8AC14C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DA941764();
  sub_1DA940AB4();
  result = sub_1DA941794();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DA941684();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DA9416D4();
  __break(1u);
  return result;
}

void sub_1DA8AB000(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DA8AA8B8(v6 + 1, &qword_1ECBD62E0, &qword_1DA95F358);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DA8ABCB0(&qword_1ECBD62E0, &qword_1DA95F358);
      goto LABEL_12;
    }

    sub_1DA8AC6A0(v6 + 1, &qword_1ECBD62E0, &qword_1DA95F358);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1DA941104();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1DA941114();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DA9416D4();
  __break(1u);
}

uint64_t sub_1DA8AB1A0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1DA93FEC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DA8AA1DC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DA8ABA64();
      goto LABEL_12;
    }

    sub_1DA8AC384(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1DA8AD244(&qword_1ECBD5940, MEMORY[0x1E69DF0D0]);
  v15 = sub_1DA9409A4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1DA8AD244(&qword_1ECBD5948, MEMORY[0x1E69DF0D0]);
      v23 = sub_1DA9409F4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DA9416D4();
  __break(1u);
  return result;
}

uint64_t sub_1DA8AB444(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for NotificationSource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v46 = v3;
  v47 = a1;
  v45 = v8;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    v44 = v10;
    sub_1DA8AA538(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1DA8ABDF0();
      goto LABEL_30;
    }

    v44 = v10;
    sub_1DA8AC8AC(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1DA941764();
  v17 = *a1;
  v18 = *(a1 + 8);
  sub_1DA941784();
  if (v18)
  {
    sub_1DA940AB4();
  }

  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  sub_1DA940AB4();
  v49 = *(a1 + 48);
  sub_1DA941784();
  v21 = sub_1DA941794();
  v22 = v15 + 56;
  v23 = -1 << *(v15 + 32);
  a2 = v21 & ~v23;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v24 = ~v23;
    v25 = *(v8 + 72);
    v48 = v18;
    do
    {
      sub_1DA8AE290(*(v15 + 48) + v25 * a2, v12, type metadata accessor for NotificationSource);
      v26 = *(v12 + 1);
      if (v26)
      {
        if (!v18 || (*v12 == v17 ? (v27 = v26 == v18) : (v27 = 0), !v27 && (sub_1DA941684() & 1) == 0))
        {
LABEL_13:
          sub_1DA8AE360(v12, type metadata accessor for NotificationSource);
          goto LABEL_14;
        }
      }

      else if (v18)
      {
        goto LABEL_13;
      }

      v28 = *(v12 + 2) == v20 && *(v12 + 3) == v19;
      if (!v28 && (sub_1DA941684() & 1) == 0)
      {
        goto LABEL_13;
      }

      v29 = v25;
      v30 = v24;
      v31 = v22;
      v32 = v15;
      v33 = v19;
      v34 = v20;
      v35 = v17;
      v36 = v12[48];
      sub_1DA8AE360(v12, type metadata accessor for NotificationSource);
      v27 = v49 == v36;
      v17 = v35;
      v20 = v34;
      v19 = v33;
      v15 = v32;
      v22 = v31;
      v24 = v30;
      v25 = v29;
      v18 = v48;
      if (v27)
      {
        sub_1DA9416D4();
        __break(1u);
        break;
      }

LABEL_14:
      a2 = (a2 + 1) & v24;
    }

    while (((*(v22 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_30:
  v37 = v47;
  v38 = *v46;
  *(*v46 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1DA8AE2F8(v37, *(v38 + 48) + *(v45 + 72) * a2, type metadata accessor for NotificationSource);
  v40 = *(v38 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v42;
  }

  return result;
}

uint64_t sub_1DA8AB77C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DA8AAAD8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1DA8ABFFC();
      goto LABEL_12;
    }

    sub_1DA8ACBF0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1DA941764();
  sub_1DA8ACEEC(v20, v5);
  result = sub_1DA941794();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7150, &qword_1DA962D90);
      v12 = *(*(v8 + 48) + 8 * a2);

      v14 = sub_1DA8C4948(v13, v5);

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DA9416D4();
  __break(1u);
  return result;
}

void *sub_1DA8AB908()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B00, &qword_1DA95F368);
  v2 = *v0;
  v3 = sub_1DA941304();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DA8ABA64()
{
  v1 = v0;
  v2 = sub_1DA93FEC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6300, &qword_1DA95F398);
  v7 = *v0;
  v8 = sub_1DA941304();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

id sub_1DA8ABCB0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DA941304();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_1DA8ABDF0()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationSource();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AD0, &qword_1DA960F90);
  v7 = *v0;
  v8 = sub_1DA941304();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
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
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1DA8AE290(*(v7 + 48) + v22, v6, type metadata accessor for NotificationSource);
        result = sub_1DA8AE2F8(v6, *(v9 + 48) + v22, type metadata accessor for NotificationSource);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
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
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1DA8ABFFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62F8, &qword_1DA95F390);
  v2 = *v0;
  v3 = sub_1DA941304();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1DA8AC14C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B00, &qword_1DA95F368);
  result = sub_1DA941314();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1DA941764();

      sub_1DA940AB4();
      result = sub_1DA941794();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DA8AC384(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DA93FEC4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6300, &qword_1DA95F398);
  v10 = sub_1DA941314();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1DA8AD244(&qword_1ECBD5940, MEMORY[0x1E69DF0D0]);
      result = sub_1DA9409A4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1DA8AC6A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DA941314();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1DA941104();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}