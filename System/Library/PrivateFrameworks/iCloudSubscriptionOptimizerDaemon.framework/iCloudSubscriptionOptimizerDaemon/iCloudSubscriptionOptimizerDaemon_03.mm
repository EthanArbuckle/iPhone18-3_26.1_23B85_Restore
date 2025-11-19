uint64_t MobileAssetDaemonStateHelper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MobileAssetDaemonStateHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_275B41A80()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140DAC8);
  __swift_project_value_buffer(v0, qword_28140DAC8);
  type metadata accessor for MobileAssetDownloadActivity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A336F0, &unk_275B7DCC0);
  return sub_275B7A97C();
}

uint64_t sub_275B41AFC()
{
  v0 = sub_275B79D5C();
  v2 = *v0;
  v1 = v0[1];
  qword_28140DAF0 = v2;
  unk_28140DAF8 = v1;
}

void *static MobileAssetDownloadActivity.shared.getter()
{
  if (off_28140DAE0)
  {
    v0 = off_28140DAE0;
  }

  else
  {
    if (qword_28140DAC0 != -1)
    {
      swift_once();
    }

    v1 = sub_275B7A96C();
    __swift_project_value_buffer(v1, qword_28140DAC8);
    sub_275B7A93C();
    v0 = _s33iCloudSubscriptionOptimizerDaemon27MobileAssetDownloadActivityC10initSharedACyFZ_0();
  }

  return v0;
}

void MobileAssetDownloadActivity.setNewRepeating(withInterval:)(uint64_t a1)
{
  SystemActivity.criteriaFor(interval:)();
  if (*MEMORY[0x277D862E8])
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D862E8], 0x100000);
    swift_unknownObjectRetain();
    sub_275B66D40(a1, v3);

    swift_unknownObjectRelease();
    if (qword_28140DAC0 != -1)
    {
      swift_once();
    }

    v4 = sub_275B7A96C();
    __swift_project_value_buffer(v4, qword_28140DAC8);
    sub_275B7B09C();

    sub_275B7AB1C();
    v5 = sub_275B7B19C();
    MEMORY[0x277C89240](v5);

    MEMORY[0x277C89240](0x73646E6F63657320, 0xE800000000000000);
    MEMORY[0x277C89240](0xD000000000000020, 0x8000000275B83890);

    sub_275B7A91C();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MobileAssetDownloadActivity.run()()
{
  if (qword_28140DAC0 != -1)
  {
    swift_once();
  }

  v0 = sub_275B7A96C();
  __swift_project_value_buffer(v0, qword_28140DAC8);
  sub_275B7A91C();
  v1 = sub_275B79CFC();
  v3 = *v1;
  v2 = v1[1];
  type metadata accessor for DaemonStateManager();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  *(inited + 24) = v2;

  v5 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  MEMORY[0x28223BE20](v5, v6);
  v29[2] = v7;
  if (qword_28140F988 != -1)
  {
    v7 = swift_once();
  }

  v9 = off_28140F990;
  v10 = MEMORY[0x28223BE20](v7, v8);
  v26 = inited;
  v27 = sub_275B422AC;
  v28 = v29;
  (*(*v9 + 136))(0xD000000000000021, v11 | 0x8000000000000000, sub_275B09408, v10);
  swift_setDeallocating();
  v12 = *(inited + 24);

  v14 = *v1;
  v13 = v1[1];
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  v17 = sub_275B7AB2C();
  v18 = sub_275B7AB2C();
  type metadata accessor for MobileAssetDaemonStateHelper();
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = v17;
  v19[4] = v18;
  v19[5] = v18;
  type metadata accessor for MobileAssetLocalManager();
  v20 = swift_allocObject();
  v21 = objc_allocWithZone(MEMORY[0x277D289C0]);
  swift_bridgeObjectRetain_n();
  v22 = [v21 init];
  v23 = type metadata accessor for RealAssetInterface();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  type metadata accessor for MobileAssetDownloadManager();
  v25 = swift_allocObject();
  *(v25 + 64) = v23;
  *(v25 + 72) = &protocol witness table for RealAssetInterface;
  *(v25 + 80) = 0;
  *(v25 + 16) = v15;
  *(v25 + 24) = v19;
  *(v25 + 32) = v20;
  *(v25 + 40) = v24;
  MobileAssetDownloadManager.performAllScheduledOperations()();
}

uint64_t MobileAssetDownloadActivity.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MobileAssetDownloadActivity.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon27MobileAssetDownloadActivityC10initSharedACyFZ_0()
{
  type metadata accessor for MobileAssetDownloadActivity();
  v0 = swift_allocObject();
  if (qword_28140DAE8 != -1)
  {
    swift_once();
  }

  v2 = qword_28140DAF0;
  v1 = unk_28140DAF8;
  *(v0 + 40) = 0;
  *(v0 + 48) = 258;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 1;

  sub_275B68C7C();

  off_28140DAE0 = v0;

  return v0;
}

uint64_t sub_275B422E8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A336F8);
  __swift_project_value_buffer(v0, qword_280A336F8);
  type metadata accessor for MobileAssetDownloadAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33720, &qword_275B7DCF8);
  return sub_275B7A97C();
}

uint64_t MobileAssetDownloadAPI.__allocating_init(withMobileAssetDownloadManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MobileAssetDownloadAPI.getResponse(request:)()
{
  v1 = *(v0 + 16);
  v2 = (*(*v1 + 184))();
  (*(*v2 + 96))(v14);

  (*(*v1 + 208))(v14);
  sub_275B7AA9C();
  v3 = sub_275B7AA8C();
  v4 = *(*v1 + 232);
  while (1)
  {
    v4();
    if (v5)
    {
      break;
    }

    sub_275B7AB2C();
    sub_275B7AB0C();
    if (qword_280A32D30 != -1)
    {
      swift_once();
    }

    v6 = sub_275B7A96C();
    __swift_project_value_buffer(v6, qword_280A336F8);
    sub_275B7B09C();

    v8 = *(*v3 + 96);
    v8(v7);
    sub_275B7AB1C();
    v9 = sub_275B7B19C();
    MEMORY[0x277C89240](v9);

    MEMORY[0x277C89240](0x73646E6F63657320, 0xE800000000000000);
    sub_275B7A91C();

    v8(v10);
    sub_275B7A59C();
    sub_275B7AB2C();
    if (sub_275B7AACC())
    {
      v11 = sub_275B797EC();
      MEMORY[0x28223BE20](v11, v12);
      sub_275B42BE0(&qword_280A33470, MEMORY[0x277D7F580]);
      sub_275B7968C();

      return sub_275B42888(v14);
    }
  }

  sub_275B797EC();
  sub_275B42BE0(&qword_280A33470, MEMORY[0x277D7F580]);
  sub_275B7968C();

  return sub_275B42888(v14);
}

uint64_t sub_275B42764()
{
  v0 = sub_275B79C5C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B42BE0(&qword_280A33478, MEMORY[0x277D7F5F0]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B42888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33710, &qword_275B7DCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B428F0()
{
  sub_275B7B09C();

  sub_275B7A59C();
  v0 = sub_275B7B19C();
  MEMORY[0x277C89240](v0);

  MEMORY[0x277C89240](0x73646E6F63657320, 0xE800000000000000);
  return sub_275B79C3C();
}

uint64_t sub_275B429C4()
{
  v0 = sub_275B7A71C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B42BE0(&qword_280A33718, MEMORY[0x277D7F7F0]);
  sub_275B7968C();
  return sub_275B7977C();
}

uint64_t MobileAssetDownloadAPI.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MobileAssetDownloadAPI.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_275B42B5C()
{
  (*(*v0 + 96))();
  sub_275B7AB1C();
  return sub_275B7A70C();
}

uint64_t sub_275B42BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275B42C38()
{
  v1 = *v0;
  sub_275B7B26C();
  MEMORY[0x277C89740](v1 + 2001);
  return sub_275B7B2AC();
}

uint64_t sub_275B42CB0()
{
  v1 = *v0;
  sub_275B7B26C();
  MEMORY[0x277C89740](v1 + 2001);
  return sub_275B7B2AC();
}

uint64_t sub_275B42CF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s33iCloudSubscriptionOptimizerDaemon24MobileAssetDownloadErrorO8rawValueACSgs5Int64V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon24MobileAssetDownloadErrorO8rawValueACSgs5Int64V_tcfC_0(uint64_t a1)
{
  if ((a1 - 2001) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 2001;
  }
}

unint64_t sub_275B42D48()
{
  result = qword_280A33728;
  if (!qword_280A33728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33728);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileAssetDownloadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobileAssetDownloadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MobileAssetDownloadEvent.__allocating_init(withSink:)(uint64_t *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000013, 0x8000000275B7F4C0);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

iCloudSubscriptionOptimizerDaemon::MobileAssetDownloadEvent::DownloadType_optional __swiftcall MobileAssetDownloadEvent.DownloadType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_275B7B17C();

  if (v1 == 1)
  {
    v2.value = iCloudSubscriptionOptimizerDaemon_MobileAssetDownloadEvent_DownloadType_asset;
  }

  else
  {
    v2.value = iCloudSubscriptionOptimizerDaemon_MobileAssetDownloadEvent_DownloadType_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t MobileAssetDownloadEvent.DownloadType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7465737361;
  }

  else
  {
    return 0x676F6C61746163;
  }
}

uint64_t sub_275B43170(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7465737361;
  }

  else
  {
    v4 = 0x676F6C61746163;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7465737361;
  }

  else
  {
    v6 = 0x676F6C61746163;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_275B7B1BC();
  }

  return v9 & 1;
}

uint64_t sub_275B43214()
{
  v1 = *v0;
  sub_275B7B26C();
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B43294()
{
  *v0;
  sub_275B7AD7C();
}

uint64_t sub_275B43300()
{
  v1 = *v0;
  sub_275B7B26C();
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B4337C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_275B7B17C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_275B433DC(uint64_t *a1@<X8>)
{
  v2 = 0x676F6C61746163;
  if (*v1)
  {
    v2 = 0x7465737361;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MobileAssetDownloadEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000013, 0x8000000275B7F4C0);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t MobileAssetDownloadEvent.addDownloadType(_:)()
{
  sub_275B79B4C();
}

uint64_t MobileAssetDownloadEvent.addWasSuccessful(_:)()
{
  sub_275B79B5C();
}

uint64_t MobileAssetDownloadEvent.addDownloadTime(_:)()
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t MobileAssetDownloadEvent.addTimeSinceLastMACatalogDownload(_:)()
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t MobileAssetDownloadEvent.addErrorCode(_:)()
{
  sub_275B79B7C();
}

uint64_t MobileAssetDownloadEvent.addCurrentAssetVersion(_:)()
{
  sub_275B79B4C();
}

uint64_t MobileAssetDownloadEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

unint64_t sub_275B437AC()
{
  result = qword_280A33730;
  if (!qword_280A33730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33730);
  }

  return result;
}

uint64_t MobileAssetDownloadManager.__allocating_init(withDaemonStateManager:withMobileAssetDeamonStateHelper:withMobileAssetLocalManager:withAssetInterface:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v18 = *(a4 + 24);
  v9 = v18;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a4, v18);
  v11 = *(v18 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10, v10);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, v13);
  *(v8 + 64) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 40));
  (*(v11 + 32))(boxed_opaque_existential_1, v15, v9);
  *(v8 + 80) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v8;
}

uint64_t sub_275B4398C()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140DDF0);
  __swift_project_value_buffer(v0, qword_28140DDF0);
  type metadata accessor for MobileAssetDownloadManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33738, &unk_275B7DF30);
  return sub_275B7A97C();
}

id sub_275B43A08()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v0 setAllowsCellularAccess_];
  [v0 setDiscretionary_];
  result = [v0 setRequiresPowerPluggedIn_];
  qword_28140DE18 = v0;
  return result;
}

uint64_t MobileAssetDownloadManager.init(withDaemonStateManager:withMobileAssetDeamonStateHelper:withMobileAssetLocalManager:withAssetInterface:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = *(*(v9 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11, v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = sub_275B46240(a1, a2, a3, v15, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v17;
}

Swift::Void __swiftcall MobileAssetDownloadManager.performAllScheduledOperations()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v30 - v9;
  v11 = sub_275B79ABC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v30 - v20;
  v22 = *(v0 + 16);
  v23 = (*(v12 + 56))(v6, 1, 1, v11, v19);
  if (qword_28140F988 != -1)
  {
    v23 = swift_once();
  }

  v25 = off_28140F990;
  v26 = MEMORY[0x28223BE20](v23, v24);
  *(&v30 - 2) = v6;
  *(&v30 - 1) = v22;
  (*(*v25 + 136))(0x6574617453746567, 0xE800000000000000, sub_275B094A8, v26);
  sub_275B0952C(v6, v10);
  v27 = *(v12 + 48);
  if (v27(v10, 1, v11) == 1)
  {
    sub_275B79AAC();
    if (v27(v10, 1, v11) != 1)
    {
      sub_275B29CD4(v10, &qword_280A330F8, &qword_275B7C9A0);
    }
  }

  else
  {
    sub_275B0959C(v10, v16);
  }

  v28 = sub_275B0959C(v16, v21);
  (*(**(v1 + 32) + 96))(&v31, v28);
  v29 = *(v1 + 24);
  if ((MobileAssetDaemonStateHelper.isCatalogDownloadNeeded(_:)() & 1) != 0 || (_s33iCloudSubscriptionOptimizerDaemon26MobileAssetDownloadManagerC03oldF17ExistsAndIsOnDiskySbAA0F9Interface_pSgFZ_0(&v31) & 1) == 0)
  {
    (*(*v1 + 208))(&v31);
  }

  if (MobileAssetDaemonStateHelper.isAssetRefreshNeeded(_:)())
  {
    MobileAssetDownloadManager.refreshMobileAsset()();
  }

  sub_275B29CD4(&v31, &qword_280A33710, &qword_275B7DCD0);
  sub_275B09600(v21);
}

Swift::Void __swiftcall MobileAssetDownloadManager.refreshMobileAsset()()
{
  v1 = sub_275B794EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v0 + 32) + 96))(&v20, v5);
  if (v21)
  {
    sub_275B075DC(&v20, v22);
    v8 = v23;
    v9 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v9 + 16))(v8, v9);
    (*(v2 + 8))(v7, v1);
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    v10 = sub_275B7A96C();
    __swift_project_value_buffer(v10, qword_28140DDF0);
    sub_275B7A91C();
    v11 = *(v0 + 16);
    v12 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    MEMORY[0x28223BE20](v12, v13);
    v19[-2] = v14;
    if (qword_28140F988 != -1)
    {
      v14 = swift_once();
    }

    v16 = off_28140F990;
    v17 = MEMORY[0x28223BE20](v14, v15);
    v19[-4] = v11;
    v19[-3] = sub_275B46560;
    v19[-2] = &v19[-4];
    (*(*v16 + 136))(0xD000000000000021, v18 | 0x8000000000000000, sub_275B09408, v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_275B29CD4(&v20, &qword_280A33710, &qword_275B7DCD0);
  }
}

uint64_t MobileAssetDownloadManager.downloadCatalogAndCheckAssetUpdate(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_28140DDE8 != -1)
  {
    swift_once();
  }

  v5 = sub_275B7A96C();
  __swift_project_value_buffer(v5, qword_28140DDF0);
  sub_275B7A91C();
  *(v1 + 80) = 1;
  sub_275B7AA9C();
  v6 = sub_275B7AA8C();
  v7 = v1[8];
  v8 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v7);
  v9 = sub_275B79CEC();
  v10 = *v9;
  v11 = v9[1];
  v12 = qword_28140DE10;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_28140DE18;
  sub_275B46568(a1, v18);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v6;
  v15 = v18[1];
  *(v14 + 32) = v18[0];
  *(v14 + 48) = v15;
  *(v14 + 64) = v19;
  *(v14 + 72) = v4;
  v16 = *(v8 + 24);

  v16(v10, v11, v13, sub_275B465D8, v14, v7, v8);
}

uint64_t sub_275B445E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 80) = 0;
  if (a1)
  {
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    v5 = sub_275B7A96C();
    __swift_project_value_buffer(v5, qword_28140DDF0);
    sub_275B7B09C();

    v6 = sub_275B79CEC();
    v7 = *v6;
    v8 = v6[1];

    MEMORY[0x277C89240](v7, v8);

    MEMORY[0x277C89240](8238, 0xE200000000000000);

    MEMORY[0x277C89240](0xD000000000000020, 0x8000000275B84020);

    v9 = sub_275B7B19C();
    v11 = v10;

    MEMORY[0x277C89240](v9, v11);

    sub_275B7A95C();

    return MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)();
  }

  else
  {
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    v15 = sub_275B7A96C();
    __swift_project_value_buffer(v15, qword_28140DDF0);
    sub_275B7A91C();
    v16 = *(a2 + 16);
    v17 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    MEMORY[0x28223BE20](v17, v18);
    if (qword_28140F988 != -1)
    {
      v19 = swift_once();
    }

    v21 = off_28140F990;
    v22 = MEMORY[0x28223BE20](v19, v20);
    v24 = (*(*v21 + 136))(0xD000000000000021, v23 | 0x8000000000000000, sub_275B1E288, v22);
    (*(*a3 + 96))(v24);
    (*(*a2 + 232))();
    sub_275B46678();

    return MobileAssetDownloadManager.downloadNewAssetIfNeeded(assetBeforeCatDownload:)(a4);
  }
}

uint64_t MobileAssetDownloadManager.downloadNewAssetIfNeeded(assetBeforeCatDownload:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_275B794EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1[4] + 96))(v70, v9);
  sub_275B46568(v70, &v64);
  if (*(&v65 + 1))
  {
    sub_275B075DC(&v64, v67);
    sub_275B46568(a1, &v61);
    if (!*(&v62 + 1))
    {
      sub_275B29CD4(&v61, &qword_280A33710, &qword_275B7DCD0);
      if (qword_28140DDE8 != -1)
      {
        swift_once();
      }

      v28 = sub_275B7A96C();
      __swift_project_value_buffer(v28, qword_28140DDF0);
      sub_275B7A91C();
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      *(v1 + 81) = 1;
      sub_275B7AA9C();
      v29 = sub_275B7AA8C();
      sub_275B7A91C();
      v30 = v68;
      v31 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      if (qword_28140DE10 != -1)
      {
        swift_once();
      }

      v32 = qword_28140DE18;
      sub_275B19CD4(v67, &v61);
      sub_275B46568(&v64, v59);
      v33 = swift_allocObject();
      *(v33 + 16) = v1;
      sub_275B075DC(&v61, v33 + 24);
      v34 = v59[1];
      *(v33 + 64) = v59[0];
      *(v33 + 80) = v34;
      *(v33 + 96) = v60;
      *(v33 + 104) = v29;
      *(v33 + 112) = v4;
      v35 = *(v31 + 32);

      v35(v32, sub_275B465E8, v33, v30, v31);

      sub_275B29CD4(&v64, &qword_280A33710, &qword_275B7DCD0);
      sub_275B29CD4(v70, &qword_280A33710, &qword_275B7DCD0);
      return __swift_destroy_boxed_opaque_existential_1(v67);
    }

    sub_275B075DC(&v61, &v64);
    v12 = *(&v65 + 1);
    v13 = v66;
    __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
    (*(v13 + 16))(v12, v13);
    sub_275B794CC();
    (*(v6 + 8))(v11, v5);
    v14 = [objc_opt_self() defaultManager];
    v15 = sub_275B7ACDC();

    v16 = [v14 fileExistsAtPath_];

    if (v16)
    {
      v17 = _s33iCloudSubscriptionOptimizerDaemon23MobileAssetLocalManagerC10getVersion5assetSSSgAA0F9Interface_p_tF_0(&v64);
      if (v18)
      {
        v19 = v17;
        v20 = v18;
        v21 = _s33iCloudSubscriptionOptimizerDaemon23MobileAssetLocalManagerC10getVersion5assetSSSgAA0F9Interface_p_tF_0(v67);
        if (v22)
        {
          v23 = v21;
          v24 = v22;
          if (v19 == v21 && v20 == v22 || (sub_275B7B1BC() & 1) != 0)
          {

            if (qword_28140DDE8 != -1)
            {
              swift_once();
            }

            v25 = sub_275B7A96C();
            __swift_project_value_buffer(v25, qword_28140DDF0);
            *&v61 = 0;
            *(&v61 + 1) = 0xE000000000000000;
            sub_275B7B09C();

            *&v61 = 0xD000000000000027;
            *(&v61 + 1) = 0x8000000275B83E40;
            MEMORY[0x277C89240](v19, v20);

            MEMORY[0x277C89240](539895593, 0xE400000000000000);

            MEMORY[0x277C89240](0xD000000000000023, 0x8000000275B83E70);

            sub_275B7A91C();

            goto LABEL_32;
          }

          if (qword_28140DDE8 != -1)
          {
            swift_once();
          }

          v45 = sub_275B7A96C();
          v55[1] = __swift_project_value_buffer(v45, qword_28140DDF0);
          *&v61 = 0;
          *(&v61 + 1) = 0xE000000000000000;
          sub_275B7B09C();

          *&v61 = 0xD00000000000002ELL;
          *(&v61 + 1) = 0x8000000275B83DD0;
          MEMORY[0x277C89240](v19, v20);

          MEMORY[0x277C89240](39, 0xE100000000000000);
          v46 = v61;
          *&v61 = 0;
          *(&v61 + 1) = 0xE000000000000000;
          sub_275B7B09C();

          *&v61 = 0xD000000000000011;
          *(&v61 + 1) = 0x8000000275B83E00;
          MEMORY[0x277C89240](v23, v24);

          MEMORY[0x277C89240](539896103, 0xE400000000000000);
          v47 = v61;
          v61 = v46;

          MEMORY[0x277C89240](v47, *(&v47 + 1));

          MEMORY[0x277C89240](0xD00000000000001FLL, 0x8000000275B83E20);

          sub_275B7A91C();

          sub_275B19CD4(&v64, &v61);
          *(v2 + 81) = 1;
          sub_275B7AA9C();
          v48 = sub_275B7AA8C();
          sub_275B7A91C();
          v49 = v68;
          v50 = v69;
          __swift_project_boxed_opaque_existential_1(v67, v68);
          if (qword_28140DE10 != -1)
          {
            swift_once();
          }

          v51 = qword_28140DE18;
          sub_275B19CD4(v67, v59);
          sub_275B46568(&v61, &v56);
          v52 = swift_allocObject();
          *(v52 + 16) = v2;
          sub_275B075DC(v59, v52 + 24);
          v53 = v57;
          *(v52 + 64) = v56;
          *(v52 + 80) = v53;
          *(v52 + 96) = v58;
          *(v52 + 104) = v48;
          *(v52 + 112) = v4;
          v54 = *(v50 + 32);

          v54(v51, sub_275B46910, v52, v49, v50);
LABEL_31:

          sub_275B29CD4(&v61, &qword_280A33710, &qword_275B7DCD0);
LABEL_32:
          sub_275B29CD4(v70, &qword_280A33710, &qword_275B7DCD0);
          __swift_destroy_boxed_opaque_existential_1(&v64);
          return __swift_destroy_boxed_opaque_existential_1(v67);
        }
      }

      if (qword_28140DDE8 != -1)
      {
        swift_once();
      }

      v40 = sub_275B7A96C();
      __swift_project_value_buffer(v40, qword_28140DDF0);
      sub_275B7A95C();
      MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)();
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      *(v2 + 81) = 1;
      sub_275B7AA9C();
      v37 = sub_275B7AA8C();
      sub_275B7A91C();
      v38 = v68;
      v39 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      if (qword_28140DE10 != -1)
      {
        swift_once();
      }
    }

    else
    {
      if (qword_28140DDE8 != -1)
      {
        swift_once();
      }

      v36 = sub_275B7A96C();
      __swift_project_value_buffer(v36, qword_28140DDF0);
      sub_275B7A93C();
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      *(v2 + 81) = 1;
      sub_275B7AA9C();
      v37 = sub_275B7AA8C();
      sub_275B7A91C();
      v38 = v68;
      v39 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      if (qword_28140DE10 != -1)
      {
        swift_once();
      }
    }

    v41 = qword_28140DE18;
    sub_275B19CD4(v67, v59);
    sub_275B46568(&v61, &v56);
    v42 = swift_allocObject();
    *(v42 + 16) = v2;
    sub_275B075DC(v59, v42 + 24);
    v43 = v57;
    *(v42 + 64) = v56;
    *(v42 + 80) = v43;
    *(v42 + 96) = v58;
    *(v42 + 104) = v37;
    *(v42 + 112) = v4;
    v44 = *(v39 + 32);

    v44(v41, sub_275B46910, v42, v38, v39);
    goto LABEL_31;
  }

  sub_275B29CD4(&v64, &qword_280A33710, &qword_275B7DCD0);
  if (qword_28140DDE8 != -1)
  {
    swift_once();
  }

  v26 = sub_275B7A96C();
  __swift_project_value_buffer(v26, qword_28140DDF0);
  sub_275B7A95C();
  MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)();
  return sub_275B29CD4(v70, &qword_280A33710, &qword_275B7DCD0);
}

uint64_t MobileAssetDownloadManager.downloadAsset(_:oldAssetToPurge:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  *(v2 + 81) = 1;
  sub_275B7AA9C();
  v6 = sub_275B7AA8C();
  if (qword_28140DDE8 != -1)
  {
    swift_once();
  }

  v7 = sub_275B7A96C();
  __swift_project_value_buffer(v7, qword_28140DDF0);
  sub_275B7A91C();
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if (qword_28140DE10 != -1)
  {
    swift_once();
  }

  v10 = qword_28140DE18;
  sub_275B19CD4(a1, v17);
  sub_275B46568(a2, v15);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  sub_275B075DC(v17, v11 + 24);
  v12 = v15[1];
  *(v11 + 64) = v15[0];
  *(v11 + 80) = v12;
  *(v11 + 96) = v16;
  *(v11 + 104) = v6;
  *(v11 + 112) = v5;
  v13 = *(v9 + 32);

  v13(v10, sub_275B46910, v11, v8, v9);
}

uint64_t sub_275B4589C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(a2 + 81) = 0;
  if (a1)
  {
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    v5 = sub_275B7A96C();
    __swift_project_value_buffer(v5, qword_28140DDF0);
    v6 = sub_275B79CEC();
    MEMORY[0x277C89240](*v6, v6[1]);

    MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B84000);

    MEMORY[0x277C89240](0xD000000000000020, 0x8000000275B84020);

    v7 = sub_275B7B19C();
    v9 = v8;
    v24 = 0x207465737341;
    v25 = 0xE600000000000000;

    MEMORY[0x277C89240](v7, v9);

    sub_275B7A95C();

    return MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)();
  }

  else
  {
    v13 = _s33iCloudSubscriptionOptimizerDaemon23MobileAssetLocalManagerC10getVersion5assetSSSgAA0F9Interface_p_tF_0(a3);
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    sub_275B46568(a4, &v22);
    if (v23)
    {
      sub_275B075DC(&v22, &v24);
      v17 = v26;
      v18 = v27;
      __swift_project_boxed_opaque_existential_1(&v24, v26);
      (*(v18 + 40))(v17, v18);
      if (qword_28140DDE8 != -1)
      {
        swift_once();
      }

      v19 = sub_275B7A96C();
      __swift_project_value_buffer(v19, qword_28140DDF0);
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD00000000000003ELL, 0x8000000275B84080);
      MEMORY[0x277C89240](v15, v16);
      sub_275B7A91C();

      v20 = __swift_destroy_boxed_opaque_existential_1(&v24);
    }

    else
    {
      sub_275B29CD4(&v22, &qword_280A33710, &qword_275B7DCD0);
      if (qword_28140DDE8 != -1)
      {
        swift_once();
      }

      v21 = sub_275B7A96C();
      __swift_project_value_buffer(v21, qword_28140DDF0);
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_275B7B09C();

      v24 = 0xD00000000000002CLL;
      v25 = 0x8000000275B84050;
      MEMORY[0x277C89240](v15, v16);
      sub_275B7A91C();
    }

    (*(*a5 + 96))(v20);
    sub_275B46678();
  }
}

Swift::String_optional __swiftcall MobileAssetDownloadManager.getAssetVersionOnDisk()()
{
  v1 = (*(**(v0 + 32) + 112))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)()
{
  (*(*v0 + 232))();
  v1 = v0[3];
  MobileAssetDaemonStateHelper.getTimeSinceLastMACatalogDownload()();
  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v9);
  type metadata accessor for MobileAssetDownloadEvent();
  swift_allocObject();
  sub_275B19CD4(v9, v8);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v7[0] = qword_28140F700;
  v7[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000013, 0x8000000275B7F4C0);
  sub_275B19CD4(v8, v7);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_275B79B4C();

  sub_275B79B5C();

  sub_275B79B7C();

  sub_275B7AB1C();
  sub_275B79B7C();

  sub_275B79B4C();

  (*(*v2 + 200))(v3);

  result = MobileAssetDaemonStateHelper.lastMADownloadActivityRunIsOldEnough()();
  if (result)
  {
    if (!off_28140DAE0)
    {
      if (qword_28140DAC0 != -1)
      {
        swift_once();
      }

      v5 = sub_275B7A96C();
      __swift_project_value_buffer(v5, qword_28140DAC8);
      sub_275B7A93C();
      _s33iCloudSubscriptionOptimizerDaemon27MobileAssetDownloadActivityC10initSharedACyFZ_0();
    }

    v6 = sub_275B7AB2C();

    MobileAssetDownloadActivity.setNewRepeating(withInterval:)(v6);
  }

  return result;
}

Swift::Void __swiftcall MobileAssetDownloadManager.checkout()()
{
  if (*(v0 + 80) == 1)
  {
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    v1 = sub_275B7A96C();
    __swift_project_value_buffer(v1, qword_28140DDF0);
    sub_275B7A91C();
    MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)();
  }

  if (*(v0 + 81) == 1)
  {
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    v2 = sub_275B7A96C();
    __swift_project_value_buffer(v2, qword_28140DDF0);
    sub_275B7A91C();

    MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)();
  }
}

void *MobileAssetDownloadManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  return v0;
}

uint64_t MobileAssetDownloadManager.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return swift_deallocClassInstance();
}

uint64_t sub_275B46240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a5 + 64) = a6;
  *(a5 + 72) = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a5 + 40));
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  *(a5 + 80) = 0;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  return a5;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon26MobileAssetDownloadManagerC03oldF17ExistsAndIsOnDiskySbAA0F9Interface_pSgFZ_0(uint64_t a1)
{
  v2 = sub_275B794EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B46568(a1, &v16);
  if (v17)
  {
    sub_275B075DC(&v16, v18);
    v8 = v19;
    v9 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v9 + 16))(v8, v9);
    sub_275B794CC();
    (*(v3 + 8))(v7, v2);
    v10 = [objc_opt_self() defaultManager];
    v11 = sub_275B7ACDC();

    v12 = [v10 fileExistsAtPath_];

    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1(v18);
      return 1;
    }

    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    v15 = sub_275B7A96C();
    __swift_project_value_buffer(v15, qword_28140DDF0);
    sub_275B7A91C();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_275B29CD4(&v16, &qword_280A33710, &qword_275B7DCD0);
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    v14 = sub_275B7A96C();
    __swift_project_value_buffer(v14, qword_28140DDF0);
    sub_275B7A91C();
  }

  return 0;
}

uint64_t sub_275B46568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33710, &qword_275B7DCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  v2 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_275B46678()
{
  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v5);
  type metadata accessor for MobileAssetDownloadEvent();
  swift_allocObject();
  sub_275B19CD4(v5, v4);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v3[0] = qword_28140F700;
  v3[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000013, 0x8000000275B7F4C0);
  sub_275B19CD4(v4, v3);
  v0 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);

  sub_275B79B4C();

  sub_275B79B5C();

  sub_275B7AB1C();
  sub_275B79B7C();

  sub_275B79B4C();

  (*(*v0 + 200))(v1);
}

uint64_t sub_275B46914()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33740);
  __swift_project_value_buffer(v0, qword_280A33740);
  type metadata accessor for MobileAssetGetVersionAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33760, &qword_275B7DF70);
  return sub_275B7A97C();
}

uint64_t MobileAssetGetVersionAPI.__allocating_init(withMobileAssetDownloadManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MobileAssetGetVersionAPI.getResponse()()
{
  (*(**(v0 + 16) + 232))();
  if (v1)
  {
    v2 = sub_275B797EC();
    MEMORY[0x28223BE20](v2, v3);
    sub_275B4702C(&qword_280A33470, MEMORY[0x277D7F580]);
    sub_275B7968C();

    if (qword_280A32D38 != -1)
    {
      swift_once();
    }

    v4 = sub_275B7A96C();
    __swift_project_value_buffer(v4, qword_280A33740);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000022, 0x8000000275B84270);
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    sub_275B7A91C();
  }

  else
  {
    if (qword_280A32D38 != -1)
    {
      swift_once();
    }

    v6 = sub_275B7A96C();
    __swift_project_value_buffer(v6, qword_280A33740);
    sub_275B7A95C();
    sub_275B797EC();
    sub_275B4702C(&qword_280A33470, MEMORY[0x277D7F580]);
    return sub_275B7968C();
  }
}

uint64_t sub_275B46C7C()
{
  v0 = sub_275B7A7DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B4702C(&qword_280A33758, MEMORY[0x277D7F828]);
  sub_275B7968C();
  return sub_275B7978C();
}

uint64_t sub_275B46D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_275B7B09C();

  MEMORY[0x277C89240](a2, a3);
  MEMORY[0x277C89240](0x736964206E6F2027, 0xEA00000000002E6BLL);
  return sub_275B7A7CC();
}

uint64_t sub_275B46E44()
{
  v0 = sub_275B79C5C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B4702C(&qword_280A33478, MEMORY[0x277D7F5F0]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B46F34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_275B46C7C();
}

uint64_t MobileAssetGetVersionAPI.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MobileAssetGetVersionAPI.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_275B4702C(unint64_t *a1, void (*a2)(uint64_t))
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

id static MobileAssetLocalManager.existsOnDisk(_:)(void *a1)
{
  v2 = sub_275B794EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 16))(v8, v9);
  sub_275B794CC();
  (*(v3 + 8))(v7, v2);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_275B7ACDC();

  v12 = [v10 fileExistsAtPath_];

  return v12;
}

uint64_t sub_275B47200()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140E228);
  __swift_project_value_buffer(v0, qword_28140E228);
  type metadata accessor for MobileAssetLocalManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33770, &qword_275B7DF98);
  return sub_275B7A97C();
}

id MobileAssetLocalManager.getMobileAssetModel(modelType:modelName:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_275B794EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v33 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = v33 - v17;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = v33 - v22;
  (*(*v2 + 96))(&v34, v21);
  if (v35)
  {
    sub_275B075DC(&v34, v36);
    v33[0] = v10;
    v24 = a1;
    v25 = v37;
    v26 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    (*(v26 + 16))(v25, v26);
    sub_275B794AC();
    v27 = *(v6 + 8);
    v27(v14, v5);
    *&v34 = v24;
    *(&v34 + 1) = a2;
    v28 = v23;

    MEMORY[0x277C89240](0x6C65646F6D6C6D2ELL, 0xE900000000000063);
    sub_275B794AC();

    v27(v18, v5);
    v29 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    [v29 setComputeUnits_];
    sub_275B40748(0, &qword_280A336D8, 0x277CBFF20);
    v30 = v33[0];
    (*(v6 + 16))(v33[0], v28, v5);
    v31 = sub_275B47DEC(v30, v29);

    v27(v28, v5);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return v31;
  }

  else
  {
    sub_275B42888(&v34);
    return 0;
  }
}

void MobileAssetLocalManager.getLocalAsset()(uint64_t a1@<X8>)
{
  v2 = sub_275B79CEC();
  v3 = *v2;
  v4 = v2[1];
  v5 = objc_allocWithZone(MEMORY[0x277D289D8]);

  v6 = sub_275B7ACDC();

  v7 = [v5 initWithType_];

  if (!v7)
  {
    if (qword_28140E220 != -1)
    {
      swift_once();
    }

    v14 = sub_275B7A96C();
    __swift_project_value_buffer(v14, qword_28140E228);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000035, 0x8000000275B843B0);
    v16 = *v2;
    v15 = v2[1];

    MEMORY[0x277C89240](v16, v15);

    sub_275B7A95C();

    goto LABEL_22;
  }

  if ([v7 queryMetaDataSync])
  {
    if (qword_28140E220 != -1)
    {
      swift_once();
    }

    v8 = sub_275B7A96C();
    __swift_project_value_buffer(v8, qword_28140E228);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD00000000000001ALL, 0x8000000275B843F0);
    v10 = *v2;
    v9 = v2[1];

    MEMORY[0x277C89240](v10, v9);

    MEMORY[0x277C89240](0xD000000000000019, 0x8000000275B84410);
    v11 = sub_275B7B19C();
    v13 = v12;

    MEMORY[0x277C89240](v11, v13);

LABEL_21:
    sub_275B7A95C();

LABEL_22:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v17 = [v7 results];
  if (!v17)
  {
LABEL_18:
    if (qword_28140E220 != -1)
    {
      swift_once();
    }

    v24 = sub_275B7A96C();
    __swift_project_value_buffer(v24, qword_28140E228);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD00000000000001ALL, 0x8000000275B843F0);
    v26 = *v2;
    v25 = v2[1];

    MEMORY[0x277C89240](v26, v25);

    MEMORY[0x277C89240](0xD000000000000019, 0x8000000275B84430);
    goto LABEL_21;
  }

  v18 = v17;
  sub_275B40748(0, &unk_28140D850, 0x277D289C0);
  v19 = sub_275B7AE7C();

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if (!sub_275B7B11C())
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_12:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x277C89550](0, v19);
    goto LABEL_15;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
LABEL_15:
    v21 = v20;

    v22 = type metadata accessor for RealAssetInterface();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(a1 + 24) = v22;
    *(a1 + 32) = &protocol witness table for RealAssetInterface;

    *a1 = v23;
    return;
  }

  __break(1u);
}

Swift::String_optional __swiftcall MobileAssetLocalManager.getAssetVersionOnDisk()()
{
  v1 = sub_275B794EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 96))(&v21, v5);
  if (!v22)
  {
    sub_275B42888(&v21);
    goto LABEL_9;
  }

  sub_275B075DC(&v21, v23);
  if (qword_28140E220 != -1)
  {
    swift_once();
  }

  v8 = sub_275B7A96C();
  __swift_project_value_buffer(v8, qword_28140E228);
  sub_275B7A91C();
  v9 = v24;
  v10 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v10 + 16))(v9, v10);
  sub_275B794CC();
  (*(v2 + 8))(v7, v1);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_275B7ACDC();

  v13 = [v11 fileExistsAtPath_];

  if ((v13 & 1) == 0 || (v14 = _s33iCloudSubscriptionOptimizerDaemon23MobileAssetLocalManagerC10getVersion5assetSSSgAA0F9Interface_p_tF_0(v23), !v15))
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_9:
    v19 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  v16 = v14;
  v17 = v15;

  sub_275B7B09C();

  *&v21 = 0xD00000000000001ALL;
  *(&v21 + 1) = 0x8000000275B84470;
  MEMORY[0x277C89240](v16, v17);

  sub_275B7A91C();

  __swift_destroy_boxed_opaque_existential_1(v23);
  v18 = v17;
  v19 = v16;
LABEL_10:
  result.value._object = v18;
  result.value._countAndFlagsBits = v19;
  return result;
}

id sub_275B47DEC(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_275B7948C();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_275B794EC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_275B7944C();

    swift_willThrow();
    v11 = sub_275B794EC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_275B47F4C()
{
  result = qword_280A33768;
  if (!qword_280A33768)
  {
    sub_275B794EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33768);
  }

  return result;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon23MobileAssetLocalManagerC10getVersion5assetSSSgAA0F9Interface_p_tF_0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 8))(v1, v2);
  v9[0] = 0xD000000000000015;
  v9[1] = 0x8000000275B84330;
  sub_275B7B05C();
  if (*(v3 + 16) && (v4 = sub_275B182A0(v8), (v5 & 1) != 0))
  {
    sub_275B0C76C(*(v3 + 56) + 32 * v4, v9);
    sub_275B189EC(v8);

    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    sub_275B189EC(v8);
    return 0;
  }
}

void sub_275B48140(void *a1@<X8>)
{
  if (__OFADD__(qword_280A33778, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_280A33778;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0x6E776F6E6B6E55;
    a1[4] = 0xE700000000000000;
    a1[5] = 0x6E776F6E6B6E55;
    a1[6] = 0xE700000000000000;
    a1[7] = 0x6E776F6E6B6E55;
    a1[8] = 0xE700000000000000;
  }
}

void MockBiomeManager.getNotificationFeaturesSameSlotLast24Hours(displayTimestamp:offsetTimeInterval:)(void *a1@<X8>)
{
  if (__OFADD__(qword_280A33778, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_280A33778;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0x6E776F6E6B6E55;
    a1[4] = 0xE700000000000000;
    a1[5] = 0x6E776F6E6B6E55;
    a1[6] = 0xE700000000000000;
    a1[7] = 0x6E776F6E6B6E55;
    a1[8] = 0xE700000000000000;
  }
}

uint64_t MockBiomeManager.getDisplayedNotifications(beginTime:endTime:)()
{
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A332A0, &qword_275B7DFF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_275B7DFC0;
  sub_275B7AC4C();
  *(v0 + 32) = _s33iCloudSubscriptionOptimizerDaemon16MockBiomeManagerC21newICloudNotification9timestampAA0fiB0V0iJ0V01iabC4Core9TimestampV_tFZ_0();
  *(v0 + 40) = v1;
  *(v0 + 48) = _s33iCloudSubscriptionOptimizerDaemon16MockBiomeManagerC21newICloudNotification9timestampAA0fiB0V0iJ0V01iabC4Core9TimestampV_tFZ_0();
  *(v0 + 56) = v2;
  return v0;
}

uint64_t MockBiomeManager.getBuyAndOpenLabel(notification:duration:)()
{
  sub_275B7AB2C();
  v0 = sub_275B7AAFC() & 1;
  sub_275B7AB2C();
  sub_275B7AB2C();
  return v0;
}

uint64_t sub_275B4845C()
{
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A332A0, &qword_275B7DFF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_275B7DFC0;
  sub_275B7AC4C();
  *(v0 + 32) = _s33iCloudSubscriptionOptimizerDaemon16MockBiomeManagerC21newICloudNotification9timestampAA0fiB0V0iJ0V01iabC4Core9TimestampV_tFZ_0();
  *(v0 + 40) = v1;
  *(v0 + 48) = _s33iCloudSubscriptionOptimizerDaemon16MockBiomeManagerC21newICloudNotification9timestampAA0fiB0V0iJ0V01iabC4Core9TimestampV_tFZ_0();
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_275B484E8()
{
  sub_275B7AB2C();
  v0 = sub_275B7AAFC() & 1;
  sub_275B7AB2C();
  sub_275B7AB2C();
  return v0;
}

void _s33iCloudSubscriptionOptimizerDaemon16MockBiomeManagerC28getAppLaunchCountStatsLast2w16displayTimestamp18offsetTimeIntervalAA0fL0C05photoL0_AH03alliL0t01iabC4Core0O0V_AK0Q5DeltaVtF_0()
{
  if (__OFADD__(qword_280A33780, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_280A33780;
    type metadata accessor for BiomeStats();
    v0 = swift_allocObject();
    *(v0 + 16) = -1;
    *(v0 + 24) = -1;
    v1 = swift_allocObject();
    *(v1 + 16) = -1;
    *(v1 + 24) = -1;
  }
}

char *_s33iCloudSubscriptionOptimizerDaemon16MockBiomeManagerC14getFocusMode2w16displayTimestampSaySSG01iabC4Core0L0V_tF_0()
{
  v0 = MEMORY[0x277D84F90];
  v1 = 1;
  v2 = 14;
  do
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v1 % 3 == 1)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v0 = sub_275B11064(0, *(v0 + 2) + 1, 1, v0);
      }

      v8 = *(v0 + 2);
      v10 = *(v0 + 3);
      v9 = v8 + 1;
      if (v8 >= v10 >> 1)
      {
        v0 = sub_275B11064((v10 > 1), v8 + 1, 1, v0);
      }

      v3 = 0xD000000000000023;
      v4 = 0x8000000275B7FC90;
    }

    else if (v1 % 3)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v0 = sub_275B11064(0, *(v0 + 2) + 1, 1, v0);
      }

      v8 = *(v0 + 2);
      v11 = *(v0 + 3);
      v9 = v8 + 1;
      if (v8 >= v11 >> 1)
      {
        v0 = sub_275B11064((v11 > 1), v8 + 1, 1, v0);
      }

      v3 = 0;
      v4 = 0xE000000000000000;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v0 = sub_275B11064(0, *(v0 + 2) + 1, 1, v0);
      }

      v8 = *(v0 + 2);
      v7 = *(v0 + 3);
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        v0 = sub_275B11064((v7 > 1), v8 + 1, 1, v0);
      }

      v3 = 0xD000000000000023;
      v4 = 0x8000000275B7FC60;
    }

    *(v0 + 2) = v9;
    v5 = &v0[16 * v8];
    *(v5 + 4) = v3;
    *(v5 + 5) = v4;
    ++v1;
    --v2;
  }

  while (v2);
  return v0;
}

void _s33iCloudSubscriptionOptimizerDaemon16MockBiomeManagerC31getNotificationCountStatsLast2w16displayTimestamp18offsetTimeIntervalAA0fK0C05totaljK0_AH06openedjK0t01iabC4Core0N0V_AK0P5DeltaVtF_0()
{
  if (__OFADD__(qword_280A33788, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_280A33788;
    type metadata accessor for BiomeStats();
    *(swift_allocObject() + 16) = xmmword_275B7DFD0;
    *(swift_allocObject() + 16) = xmmword_275B7DFE0;
  }
}

char *_s33iCloudSubscriptionOptimizerDaemon16MockBiomeManagerC35getICloudNotificationReceivedEvents9beginTime03endN0SayAA0i5NotifF5EventVG01iabC4Core9TimestampV_ALtF_0()
{
  v0 = sub_275B7AB6C();
  v1 = sub_275B1127C(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_275B1127C((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[40 * v3];
  *(v4 + 4) = v0;
  *(v4 + 5) = 0xD000000000000017;
  *(v4 + 6) = 0x8000000275B84540;
  *(v4 + 7) = 0xD000000000000014;
  *(v4 + 8) = 0x8000000275B84560;
  return v1;
}

id _s33iCloudSubscriptionOptimizerDaemon16MockBiomeManagerC21newICloudNotification9timestampAA0fiB0V0iJ0V01iabC4Core9TimestampV_tFZ_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  LODWORD(v7) = 3;
  v5 = [objc_allocWithZone(MEMORY[0x277CF1730]) initWithMlServerScore:0 totalQuota:v0 totalUsed:v1 totalAvailable:v2 bundleQuotaInBytes:v3 commerceQuotaInBytes:v4 iCloudSubscriptionEventType:v7];

  return v5;
}

uint64_t ModelProvider.__allocating_init(withMobileAssetLocalManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_275B48AC4()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33790);
  __swift_project_value_buffer(v0, qword_280A33790);
  type metadata accessor for ModelProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A337A8, &unk_275B7E040);
  return sub_275B7A97C();
}

double ModelProvider.getOTANotificationDelayModel(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (*(**(v3 + 16) + 88))();
  if (v7)
  {
    v8 = v7;
    v9 = type metadata accessor for OTANotificationDelayModel();
    swift_allocObject();

    v10 = v8;
    v12 = OTANotificationDelayModel.init(name:mlModel:)(a1, a2, v10);
    *(a3 + 24) = v9;
    *(a3 + 32) = &protocol witness table for OTANotificationDelayModel;

    *a3 = v12;
  }

  else
  {
    if (qword_280A32D48 != -1)
    {
      swift_once();
    }

    v11 = sub_275B7A96C();
    __swift_project_value_buffer(v11, qword_280A33790);
    sub_275B7B09C();

    MEMORY[0x277C89240](a1, a2);
    MEMORY[0x277C89240](39, 0xE100000000000000);
    sub_275B7A95C();

    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void ModelProvider.getOTANotificationDelayModel(name:url:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_275B794EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B496E8();
  (*(v9 + 16))(v13, a3, v8);
  v14 = sub_275B492F0(v13);
  v15 = type metadata accessor for OTANotificationDelayModel();
  swift_allocObject();

  v16 = v14;
  v17 = OTANotificationDelayModel.init(name:mlModel:)(a1, a2, v16);
  a4[3] = v15;
  a4[4] = &protocol witness table for OTANotificationDelayModel;

  *a4 = v17;
}

id sub_275B492F0(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_275B7948C();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_275B794EC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_275B7944C();

    swift_willThrow();
    v9 = sub_275B794EC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

void *ModelProvider.getBundledNotificationDelayModel()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for BundledNotificationDelayModel();
  swift_allocObject();
  result = BundledNotificationDelayModel.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for BundledNotificationDelayModel;
  *a1 = result;
  return result;
}

uint64_t ModelProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ModelProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_275B496E8()
{
  result = qword_280A336D8;
  if (!qword_280A336D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A336D8);
  }

  return result;
}

uint64_t ModelType.hashValue.getter()
{
  sub_275B7B26C();
  MEMORY[0x277C89720](0);
  return sub_275B7B2AC();
}

unint64_t sub_275B497EC()
{
  result = qword_280A337B0;
  if (!qword_280A337B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A337B0);
  }

  return result;
}

unint64_t _s33iCloudSubscriptionOptimizerDaemon10ModelUtilsC17isValidPropensityySbSo12MLMultiArrayCFZ_0(void *a1)
{
  result = [a1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      v4 = 0;
      v5 = 0.0;
      while (1)
      {
        v6 = [a1 objectAtIndexedSubscript_];
        sub_275B7AEEC();
        v8 = v7;

        result = 0;
        if (v8 > 1.0 || v8 < 0.0)
        {
          break;
        }

        ++v4;
        v5 = v5 + v8;
        if (v3 == v4)
        {
          v9 = v5 + -1.0;
          return fabsf(v9) < 0.00000011921;
        }
      }
    }

    else
    {
      v9 = -1.0;
      return fabsf(v9) < 0.00000011921;
    }
  }

  return result;
}

void _s33iCloudSubscriptionOptimizerDaemon10ModelUtilsC23softmaxOverMlMultiArrayySaySfGSo07MLMultiK0CFZ_0(void *a1)
{
  v2 = [a1 count];
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v2)
  {
    v3 = v2;
    v4 = sub_275B7AEAC();
    *(v4 + 16) = v3;
    bzero((v4 + 32), 4 * v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = [a1 count];
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  v7 = v5;
  if (v5)
  {
    v8 = 0;
    *&v6 = 0;
    v22 = v6;
    while (1)
    {
      v9 = [a1 objectAtIndexedSubscript_];
      sub_275B7AEEC();
      v11 = v10;

      if (v8 >= *(v4 + 16))
      {
        break;
      }

      v12 = expf(v11);
      v13 = v22;
      *&v13 = *&v22 + v12;
      v22 = v13;
      *(v4 + 32 + 4 * v8++) = v12;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  *&v22 = 0;
LABEL_12:
  v14 = [a1 count];
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (v14)
  {
    if (v14 > *(v4 + 16))
    {
LABEL_27:
      __break(1u);
      return;
    }

    if (v14 < 8)
    {
      v15 = 0;
LABEL_20:
      v20 = v14 - v15;
      v21 = (v4 + 4 * v15 + 32);
      do
      {
        *v21 = *v21 / *v23.i32;
        ++v21;
        --v20;
      }

      while (v20);
      return;
    }

    v15 = v14 & 0x7FFFFFFFFFFFFFF8;
    v16 = vdupq_lane_s32(v23, 0);
    v17 = (v4 + 48);
    v18 = v14 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v19 = vdivq_f32(*v17, v16);
      v17[-1] = vdivq_f32(v17[-1], v16);
      *v17 = v19;
      v17 += 2;
      v18 -= 8;
    }

    while (v18);
    if (v14 != v15)
    {
      goto LABEL_20;
    }
  }
}

void sub_275B49B34(void *a1)
{
  v2 = [a1 shape];
  v3 = sub_275B0F00C();
  v4 = sub_275B7AE7C();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277C89550](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;
  v7 = sub_275B7AF9C();
  v8 = sub_275B7AFAC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
    {
      goto LABEL_7;
    }

LABEL_19:
    sub_275B7B09C();

    v24 = 0xD000000000000017;
    v25 = 0x8000000275B846C0;
    v20 = MEMORY[0x277C89330](v4, v3);
    v22 = v21;

    MEMORY[0x277C89240](v20, v22);

    v14 = 0xD000000000000018;
    v13 = 0x8000000275B846E0;
    goto LABEL_20;
  }

LABEL_18:
  if (sub_275B7B11C() != 2)
  {
    goto LABEL_19;
  }

LABEL_7:

  v9 = [a1 count];
  if (v9 == 1)
  {
    v10 = [a1 objectAtIndexedSubscript_];
    sub_275B7AEEC();
    v12 = v11;

    if (v12 < 0.0 || v12 > 1.0)
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B84700);
      sub_275B7AF0C();
      v13 = 0x8000000275B84720;
      v14 = 0xD000000000000011;
LABEL_20:
      MEMORY[0x277C89240](v14, v13);
      sub_275B1814C();
      swift_allocError();
      *v23 = v24;
      v23[1] = v25;
      swift_willThrow();
    }
  }

  else
  {
    v15 = v9;
    if (_s33iCloudSubscriptionOptimizerDaemon10ModelUtilsC17isValidPropensityySbSo12MLMultiArrayCFZ_0(a1))
    {
      if (!__OFSUB__(v15, 1))
      {
        v16 = [a1 objectAtIndexedSubscript_];
        sub_275B7AEEC();

        return;
      }

      __break(1u);
    }

    else
    {
      _s33iCloudSubscriptionOptimizerDaemon10ModelUtilsC23softmaxOverMlMultiArrayySaySfGSo07MLMultiK0CFZ_0(a1);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v17 + 4 * v18 + 28);

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_275B49E74()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A337B8);
  __swift_project_value_buffer(v0, qword_280A337B8);
  type metadata accessor for NewOfferAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A337E0, &unk_275B7E130);
  return sub_275B7A97C();
}

uint64_t sub_275B49EF0(uint64_t a1)
{
  if (!off_28140DC78)
  {
    if (qword_280A32CA8 != -1)
    {
      swift_once();
    }

    v2 = sub_275B7A96C();
    __swift_project_value_buffer(v2, qword_280A33420);
    sub_275B7A93C();
    v3 = sub_275B79CFC();
    v5 = *v3;
    v4 = v3[1];
    type metadata accessor for DaemonStateManager();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    type metadata accessor for DelayedNotificationActivity();
    swift_allocObject();

    off_28140DC78 = sub_275B25BF8(v7, sub_275B26124, 0);
  }

  DelayedNotificationActivity.setNewWakeUpDelay(withDelay:)(a1);
}

void *NewOfferAPI.__allocating_init(withDaemonStateManager:withHashedAltDsid:withMLDelayProvider:withSetSystemTimerCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[4] = a2;
  result[5] = a3;
  result[2] = a1;
  result[3] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *NewOfferAPI.init(withDaemonStateManager:withHashedAltDsid:withMLDelayProvider:withSetSystemTimerCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a2;
  v6[5] = a3;
  v6[2] = a1;
  v6[3] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t NewOfferAPI.getResponse(request:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_275B79C5C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_275B79EEC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v57 - v15;
  v17 = sub_275B7A06C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7AA9C();
  v62 = sub_275B7AA8C();
  if (qword_280A32D58 != -1)
  {
    swift_once();
  }

  sub_275B7A99C();
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000038, 0x8000000275B84740);
  sub_275B79DDC();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A9CC();

  v59 = sub_275B4AF5C(a1);
  v23 = DelayActionNewOfferRequest.getDelayAndStateUpdate()();
  sub_275B21564(v23 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_state, v16);
  v24 = (*(v18 + 48))(v16, 1, v17) == 1;
  v58 = v23;
  if (v24)
  {
    v25 = sub_275B215D4(v16);
    v27 = *(v3 + 16);
    if (qword_28140F988 != -1)
    {
      v25 = swift_once();
    }

    v28 = off_28140F990;
    v29 = MEMORY[0x28223BE20](v25, v26);
    *(&v57 - 4) = v27;
    *(&v57 - 3) = sub_275B1BF98;
    *(&v57 - 2) = 0;
    (*(*v28 + 136))(0xD000000000000021, v30 | 0x8000000000000000, sub_275B09408, v29);
    sub_275B7A9CC();
  }

  else
  {
    v31 = sub_275B21690(v16, v22);
    v57 = &v57;
    v32 = *(v3 + 16);
    MEMORY[0x28223BE20](v31, v33);
    *(&v57 - 2) = v22;
    if (qword_28140F988 != -1)
    {
      v34 = swift_once();
    }

    v36 = off_28140F990;
    v37 = MEMORY[0x28223BE20](v34, v35);
    *(&v57 - 4) = v32;
    *(&v57 - 3) = sub_275B1D150;
    *(&v57 - 2) = (&v57 - 4);
    (*(*v36 + 136))(0xD000000000000021, v38 | 0x8000000000000000, sub_275B1E288, v37);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000020, 0x8000000275B81AF0);
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    sub_275B7A9CC();

    sub_275B4BAF4(v22, MEMORY[0x277D7F690]);
  }

  v39 = v58;
  v40 = v58 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
  swift_beginAccess();
  v41 = 0;
  if ((v40[8] & 1) == 0)
  {
    v42 = *(v3 + 56);
    (*(v3 + 48))(*v40);
    v39 = v58;
    v41 = sub_275B7AB1C();
  }

  v43 = v60;
  sub_275B4BB54(v39 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_response, v60, MEMORY[0x277D7F660]);
  sub_275B79ECC();
  v44 = sub_275B79CCC();
  if (v44 == sub_275B79CCC())
  {
    if (!off_28140DC78)
    {
      if (qword_280A32CA8 != -1)
      {
        swift_once();
      }

      v45 = sub_275B7A96C();
      __swift_project_value_buffer(v45, qword_280A33420);
      sub_275B7A93C();
      v46 = sub_275B79CFC();
      v48 = *v46;
      v47 = v46[1];
      type metadata accessor for DaemonStateManager();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = v47;
      type metadata accessor for DelayedNotificationActivity();
      swift_allocObject();

      off_28140DC78 = sub_275B25BF8(v50, sub_275B26124, 0);
    }

    sub_275B68E44();
  }

  v63 = 0;
  v64 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000026, 0x8000000275B847C0);
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A9CC();

  if (qword_280A32D50 != -1)
  {
    swift_once();
  }

  v51 = sub_275B7A96C();
  __swift_project_value_buffer(v51, qword_280A337B8);
  sub_275B7A9AC();
  sub_275B7A92C();

  v52 = sub_275B797EC();
  MEMORY[0x28223BE20](v52, v53);
  *(&v57 - 2) = v43;
  sub_275B4BAAC(&qword_280A33470, MEMORY[0x277D7F580]);
  sub_275B7968C();
  sub_275B4BAF4(v43, MEMORY[0x277D7F660]);
  v54 = sub_275B4B17C(v59, v44, v41);
  (*(*v62 + 96))();
  sub_275B7AB1C();

  sub_275B79B7C();

  (*(*v54 + 200))(v55);
}

uint64_t sub_275B4AE0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_275B79EEC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_275B4BB54(a2, &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D7F660]);
  return sub_275B797DC();
}

uint64_t sub_275B4AEB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_275B79C5C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_275B4BB54(a2, &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D7F5F0]);
  return sub_275B797BC();
}

uint64_t sub_275B4AF5C(uint64_t a1)
{
  v4 = sub_275B79DDC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[4];
  v10 = v1[5];
  v12 = v1[2];
  v11 = v1[3];
  sub_275B4BB54(a1, v8, MEMORY[0x277D7F628]);
  v13 = type metadata accessor for DelayActionNewOfferRequest(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  _s33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequestC7request33_35C3B97F6143DFB9EDA7E76A03E6286801iabC4Core0ghI0Vvpfi_0();
  v16 = NotificationDelayAction.init(_:_:_:)(v12, v9, v10, v11);
  if (v2)
  {
    sub_275B4BAF4(v8, MEMORY[0x277D7F628]);
  }

  else
  {
    v17 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest_request;
    swift_beginAccess();

    sub_275B222A0(v8, v16 + v17);
    swift_endAccess();
  }

  return v16;
}

void *NewOfferAPI.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  return v0;
}

uint64_t NewOfferAPI.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_275B4B17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_275B79DDC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_275B7989C();
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v43 - v20;
  v22 = sub_275B7A06C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v43 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v43 - v29;
  v31 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState;
  swift_beginAccess();
  v48 = v31;
  sub_275B21564(a1 + v31, v21);
  v32 = *(v23 + 48);
  v49 = v22;
  v46 = v32;
  if (v32(v21, 1, v22) == 1)
  {
    sub_275B215D4(v21);
    v33 = *(a1 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_now);
  }

  else
  {
    sub_275B21690(v21, v30);
    sub_275B79FFC();
    sub_275B4BAF4(v30, MEMORY[0x277D7F690]);
    sub_275B7AB6C();
  }

  DelayActionNewOfferRequest.getMaxDelayTimestamp()();
  sub_275B7ABCC();
  v45 = sub_275B7AB1C();
  v34 = *(a1 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_now);
  v35 = sub_275B7ABCC();
  if (qword_280A32D50 != -1)
  {
    swift_once();
  }

  v36 = sub_275B7A96C();
  __swift_project_value_buffer(v36, qword_280A337B8);
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000021, 0x8000000275B84870);
  v53[0] = v35;
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  v37 = sub_275B79CCC();
  v38 = v51;
  if (v37 == v51 || sub_275B79CCC() == v38)
  {
    v44 = -1;
  }

  else
  {
    v44 = sub_275B7AB1C();
  }

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v54);
  type metadata accessor for NotificationDelayEvent();
  swift_allocObject();
  sub_275B19CD4(v54, v53);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v52[0] = qword_28140F700;
  v52[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F4A0);
  sub_275B19CD4(v53, v52);
  v39 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_275B7AB5C();
  sub_275B79B7C();

  v40 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest_request;
  swift_beginAccess();
  sub_275B4BB54(a1 + v40, v8, MEMORY[0x277D7F628]);
  sub_275B79D8C();
  sub_275B4BAF4(v8, MEMORY[0x277D7F628]);
  sub_275B4BAAC(&qword_280A33438, MEMORY[0x277D7F598]);
  sub_275B7965C();
  sub_275B4BAF4(v12, MEMORY[0x277D7F598]);
  sub_275B79B4C();

  sub_275B79B7C();

  sub_275B79B7C();

  sub_275B79B7C();

  sub_275B21564(a1 + v48, v17);
  if (v46(v17, 1, v49) == 1)
  {
    sub_275B215D4(v17);
  }

  else
  {
    v41 = v43;
    sub_275B21690(v17, v43);
    sub_275B79F9C();
    sub_275B4BAF4(v41, MEMORY[0x277D7F690]);
  }

  sub_275B79B7C();

  sub_275B79B7C();

  sub_275B79B4C();

  return v39;
}

uint64_t type metadata accessor for NewOfferAPI.UpdateResult()
{
  result = qword_280A337D0;
  if (!qword_280A337D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275B4BA28()
{
  sub_275B25900();
  if (v0 <= 0x3F)
  {
    sub_275B79EEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_275B4BAAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275B4BAF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B4BB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NotificationDelayAction.init(_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - v15;
  v17 = sub_275B7A06C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v18;
  v40 = v23;
  v24 = *(v18 + 56);
  v24(v5 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState, 1, 1);
  v25 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_maxDelayTimestamp;
  v26 = sub_275B7AB6C();
  *(v5 + v25) = v26;
  *(v5 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pushTimestamp) = v26;
  *(v5 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_delayCount) = 0;
  v27 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_now;
  *(v5 + v27) = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  *(v5 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_daemonStateManager) = a1;
  v28 = (v5 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_hashedAltDsid);
  v29 = v41;
  *v28 = v41;
  v28[1] = a3;
  *(v5 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_mlDelayProvider) = a4;

  v30 = v29;
  v31 = v42;
  DaemonStateManager.readOrDeleteNotificationStateIfAccountChanged(currentAccount:)(v30, a3, v16);
  if (v31)
  {
  }

  else
  {
    v42 = v24;
    v32 = v38;

    v33 = v40;
    if ((*(v39 + 48))(v16, 1, v40) == 1)
    {
      sub_275B215D4(v16);
    }

    else
    {
      v34 = MEMORY[0x277D7F690];
      sub_275B4CFC0(v16, v22, MEMORY[0x277D7F690]);
      sub_275B4CFC0(v22, v32, v34);
      (v42)(v32, 0, 1, v33);
      v35 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState;
      swift_beginAccess();
      sub_275B4BED4(v32, v5 + v35);
      swift_endAccess();
    }
  }

  return v5;
}

uint64_t sub_275B4BED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NotificationDelayAction.deinit()
{
  sub_275B215D4(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState);
  v1 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_mlDelayProvider);

  v2 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_daemonStateManager);

  v3 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_hashedAltDsid + 8);

  return v0;
}

uint64_t NotificationDelayAction.pendingNotificationState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState;
  swift_beginAccess();
  sub_275B4BED4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t NotificationDelayAction.mlDelayProvider.getter()
{
  v1 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_mlDelayProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t NotificationDelayAction.mlDelayProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_mlDelayProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t NotificationDelayAction.maxDelayTimestamp.getter()
{
  v1 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_maxDelayTimestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NotificationDelayAction.maxDelayTimestamp.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_maxDelayTimestamp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t NotificationDelayAction.pushTimestamp.getter()
{
  v1 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pushTimestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NotificationDelayAction.pushTimestamp.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pushTimestamp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t NotificationDelayAction.delayCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_delayCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_275B4C3FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState;
  swift_beginAccess();
  return sub_275B21564(v1 + v3, a1);
}

uint64_t NotificationDelayAction.getDelayDecision()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = sub_275B7989C();
  v4 = *(*(v54 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v54, v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v51 - v10;
  v12 = NotificationDelayAction.addNotificationStateToSlogger()();
  v13 = (*(*v1 + 288))(v12);
  v14 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_maxDelayTimestamp;
  v15 = swift_beginAccess();
  *(v1 + v14) = v13;
  v16 = (*(*v1 + 296))(v15);
  v17 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pushTimestamp;
  v18 = swift_beginAccess();
  *(v1 + v17) = v16;
  (*(*v1 + 304))(v18);
  v19 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_mlDelayProvider;
  swift_beginAccess();
  v20 = *(v2 + v19);
  v21 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo;
  swift_beginAccess();

  v57 = v11;
  sub_275B3A6E8(v11, v20 + v21);
  swift_endAccess();

  v22 = *(v2 + v19);
  v23 = type metadata accessor for RealBiomeManager();
  v24 = swift_allocObject();
  v59 = v23;
  v60 = &protocol witness table for RealBiomeManager;
  v58[0] = v24;
  v25 = *(v2 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_now);
  v55 = v14;
  v26 = *(v2 + v14);
  v53 = v17;
  v27 = *(v2 + v17);

  v28 = v56;
  MLDelayProvider.getDelayDecision(biomeManager:inferenceTimestamp:maxDelayTimestamp:pushTimestamp:)(v58, v25, v61);
  if (v28)
  {
    v52 = v23;
    v29 = v8;
    v51 = a1;

    __swift_destroy_boxed_opaque_existential_1(v58);
    if (qword_280A32D68 != -1)
    {
      swift_once();
    }

    v30 = sub_275B7A96C();
    __swift_project_value_buffer(v30, qword_280A337E8);
    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD00000000000001ALL, 0x8000000275B848A0);
    v56 = v28;
    v69 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
    sub_275B7B0EC();
    sub_275B7A95C();

    type metadata accessor for MobileAssetLocalManager();
    v31 = swift_allocObject();
    type metadata accessor for ModelProvider();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v33 = sub_275B79CFC();
    v34 = *v33;
    v35 = v33[1];
    type metadata accessor for DaemonStateManager();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v35;
    v37 = type metadata accessor for MLDelayProvider();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    v40 = swift_allocObject();
    *(v40 + 16) = v32;
    *(v40 + 24) = v36;
    sub_275B3A540();

    sub_275B7968C();
    sub_275B4CFC0(v29, v40 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo, MEMORY[0x277D7F598]);

    v41 = v52;
    v42 = swift_allocObject();
    v59 = v41;
    v60 = &protocol witness table for RealBiomeManager;
    v58[0] = v42;
    v43 = *(v2 + v55);
    v44 = *(v2 + v53);
    MLDelayProvider.getDelayDecision(biomeManager:inferenceTimestamp:maxDelayTimestamp:pushTimestamp:)(v58, v25, v65);
    v45 = v65[0];
    v46 = v65[1];
    v47 = v66;
    v48 = v67;
    v49 = v68;

    __swift_destroy_boxed_opaque_existential_1(v58);
    a1 = v51;
  }

  else
  {
    v45 = v61[0];
    v46 = v61[1];
    v47 = v62;
    v48 = v63;
    v49 = v64;

    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  if (qword_280A32D60 != -1)
  {
    swift_once();
  }

  sub_275B7A9CC();
  result = sub_275B4D138(v57, MEMORY[0x277D7F598]);
  *a1 = v45;
  *(a1 + 8) = v46;
  *(a1 + 16) = v47;
  *(a1 + 24) = v48;
  *(a1 + 32) = v49;
  return result;
}

uint64_t NotificationDelayAction.addNotificationStateToSlogger()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = v14 - v4;
  v6 = sub_275B7A06C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState;
  swift_beginAccess();
  sub_275B21564(v0 + v12, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_275B215D4(v5);
    if (qword_280A32D60 != -1)
    {
      swift_once();
    }

    return sub_275B7A9CC();
  }

  else
  {
    sub_275B4CFC0(v5, v11, MEMORY[0x277D7F690]);
    if (qword_280A32D60 != -1)
    {
      swift_once();
    }

    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD00000000000001DLL, 0x8000000275B849B0);
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    sub_275B7A9CC();

    return sub_275B4D138(v11, MEMORY[0x277D7F690]);
  }
}

uint64_t NotificationDelayAction.hashedAltDsid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_hashedAltDsid);
  v2 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_hashedAltDsid + 8);

  return v1;
}

uint64_t sub_275B4CDF0()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A337E8);
  __swift_project_value_buffer(v0, qword_280A337E8);
  type metadata accessor for DelayActionNewOfferRequest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33418, &unk_275B7CE80);
  return sub_275B7A97C();
}

uint64_t NotificationDelayAction.__allocating_init(_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  NotificationDelayAction.init(_:_:_:)(a1, a2, a3, a4);
  return v11;
}

Swift::Int64 __swiftcall NotificationDelayAction.getDelayCount()()
{
  v1 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_delayCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NotificationDelayAction.__deallocating_deinit()
{
  sub_275B215D4(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState);
  v1 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_mlDelayProvider);

  v2 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_daemonStateManager);

  v3 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_hashedAltDsid + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_275B4CFC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for NotificationDelayAction()
{
  result = qword_280A33800;
  if (!qword_280A33800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275B4D07C()
{
  sub_275B25900();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_275B4D138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NotificationDelayEvent.__allocating_init(withSink:)(uint64_t *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F4A0);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t NotificationDelayEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F4A0);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t NotificationDelayEvent.addDuration(_:)()
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t NotificationDelayEvent.addPushTimestampMillis(_:)()
{
  sub_275B79B7C();
}

uint64_t NotificationDelayEvent.addDelayCountBeforeDecision(_:)()
{
  sub_275B79B7C();
}

uint64_t NotificationDelayEvent.addTotalDelayInSecs(_:)()
{
  sub_275B79B7C();
}

uint64_t sub_275B4D750()
{
  sub_275B79B7C();
}

uint64_t NotificationDelayEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

char *NotificationDelayModel.batchPrediction(fromFeatureProviderList:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v46[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  v40 = *(v5 + 24);
  v6 = v40(a2, v5);
  v7 = *(v3 + 8);
  v45 = a2;
  v8._rawValue = v7(a2, v3);
  MLModel.validateStringFeaturesInArray(_:)(v8);

  if (v9)
  {
    goto LABEL_2;
  }

  v38 = v5;
  v12 = a1;
  v39 = a1 >> 62;
  if (a1 >> 62)
  {
    v19 = sub_275B7B11C();
    v12 = a1;
    v13 = v19;
    if (!v19)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v14 = 0;
  v15 = v12 & 0xC000000000000001;
  do
  {
    if (v15)
    {
      v16 = MEMORY[0x277C89550](v14);
    }

    else
    {
      v16 = *(v12 + 8 * v14 + 32);
    }

    ++v14;
    v17 = v7(v45, v3);
    v18 = *(v16 + 88);
    *(v16 + 88) = v17;

    v12 = a1;
  }

  while (v13 != v14);
LABEL_12:
  v41 = v3;

  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33810, &qword_275B7E278);
    sub_275B7B10C();
  }

  else
  {
    sub_275B7B1CC();
  }

  v20 = objc_allocWithZone(MEMORY[0x277CBFEB0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33810, &qword_275B7E278);
  v21 = sub_275B7AE6C();

  v22 = [v20 initWithFeatureProviderArray_];

  v23 = v40(v45, v38);
  v46[0] = 0;
  v3 = [v23 predictionsFromBatch:v22 error:v46];

  v24 = v46[0];
  v42 = v3;
  if (!v3)
  {
    v26 = v46[0];
    v27 = sub_275B7944C();

    swift_willThrow();
    sub_275B1814C();
    swift_allocError();
    *v28 = 0xD000000000000026;
    v28[1] = 0x8000000275B84A70;
    swift_willThrow();

    goto LABEL_2;
  }

  if (!v39)
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_20;
  }

  v25 = sub_275B7B11C();
  if (v25 < 0)
  {
LABEL_33:
    __break(1u);
  }

LABEL_20:
  v44 = v22;
  v29 = v24;
  if (v25)
  {
    v30 = 0;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v31 = [v42 featuresAtIndex_];
      v32 = sub_275B7ACDC();
      v33 = [v31 featureValueForName_];

      swift_unknownObjectRelease();
      if (!v33)
      {
        break;
      }

      v34 = sub_275B4DF6C(v33, v45, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_275B114E0(0, *(v3 + 2) + 1, 1, v3);
      }

      v36 = *(v3 + 2);
      v35 = *(v3 + 3);
      if (v36 >= v35 >> 1)
      {
        v3 = sub_275B114E0((v35 > 1), v36 + 1, 1, v3);
      }

      ++v30;

      *(v3 + 2) = v36 + 1;
      *&v3[4 * v36 + 32] = v34;
      if (v25 == v30)
      {
        goto LABEL_30;
      }
    }

    sub_275B1814C();
    swift_allocError();
    *v37 = 0xD000000000000034;
    v37[1] = 0x8000000275B84AA0;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
LABEL_30:
    swift_unknownObjectRelease();
  }

LABEL_2:
  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

float sub_275B4DF6C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a3 + 8) + 24))(a2);
  v6 = [v5 modelDescription];
  v7 = [v6 inputDescriptionsByName];

  sub_275B40748(0, &qword_280A33320, 0x277CBFEE0);
  v8 = sub_275B7AC8C();

  if (!*(v8 + 16))
  {

    goto LABEL_7;
  }

  sub_275B180D4(0x4165727574616566, 0xEC00000079617272);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v14 = [a1 type];
    if (v14 == 6)
    {
      v16 = [a1 dictionaryValue];
      sub_275B40748(0, &qword_280A331F8, 0x277CCABB0);
      v17 = sub_275B7AC8C();

      sub_275B7B05C();
      if (*(v17 + 16))
      {
        sub_275B182A0(&v37);
      }

      sub_275B189EC(&v37);

      v21 = [a1 dictionaryValue];
      v22 = sub_275B7AC8C();

      sub_275B7B05C();
      if (*(v22 + 16))
      {
        v23 = sub_275B182A0(&v37);
        if (v24)
        {
          v25 = *(*(v22 + 56) + 8 * v23);
          sub_275B189EC(&v37);

          sub_275B7AEEC();
          v3 = v26;

          return v3;
        }
      }

      sub_275B189EC(&v37);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_275B7B09C();

      v37 = 0xD00000000000001DLL;
      v38 = 0x8000000275B84C40;
      v27 = [a1 dictionaryValue];
      sub_275B7AC8C();

      v28 = sub_275B7AC9C();
      v30 = v29;

      MEMORY[0x277C89240](v28, v30);

      MEMORY[0x277C89240](46, 0xE100000000000000);
      v31 = v37;
      v32 = v38;
      v37 = 0xD000000000000051;
      v38 = 0x8000000275B84BE0;
      MEMORY[0x277C89240](v31, v32);

      v33 = v37;
      v34 = v38;
      sub_275B1814C();
      swift_allocError();
      *v35 = v33;
      v35[1] = v34;
LABEL_20:
      swift_willThrow();
      return v3;
    }

    if (v14 == 2)
    {
      [a1 doubleValue];
      return v15;
    }

    v18 = 0x8000000275B84B80;
    sub_275B1814C();
    swift_allocError();
    v20 = 0xD000000000000055;
LABEL_19:
    *v19 = v20;
    v19[1] = v18;
    goto LABEL_20;
  }

  if ([a1 type] != 5)
  {
    v18 = 0x8000000275B84C60;
    sub_275B1814C();
    swift_allocError();
    v20 = 0xD00000000000007BLL;
    goto LABEL_19;
  }

  v11 = [a1 multiArrayValue];
  if (!v11)
  {
    v18 = 0x8000000275B84CE0;
    sub_275B1814C();
    swift_allocError();
    v20 = 0xD000000000000042;
    goto LABEL_19;
  }

  v12 = v11;
  sub_275B49B34(v11);
  v3 = v13;

  return v3;
}

uint64_t (*sub_275B4E4D4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277C89550](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_275B4E554;
  }

  __break(1u);
  return result;
}

char *_s33iCloudSubscriptionOptimizerDaemon23NotificationDataSourcesC12getAllvaluesSaySSGyFZ_0()
{
  v0 = sub_275B11064(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_275B11064((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0xD000000000000017;
  *(v5 + 5) = 0x8000000275B82DF0;
  v6 = v2 + 2;
  if (v3 < v6)
  {
    v0 = sub_275B11064((v1 > 1), v6, 1, v0);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0xD000000000000013;
  *(v7 + 5) = 0x8000000275B84A50;
  return v0;
}

uint64_t sub_275B4E690()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33818);
  __swift_project_value_buffer(v0, qword_280A33818);
  type metadata accessor for NotificationPendingAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33838, &qword_275B7E318);
  return sub_275B7A97C();
}

void *NotificationPendingAPI.__allocating_init(withDaemonStateManager:withHashedAltDsid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *NotificationPendingAPI.init(withDaemonStateManager:withHashedAltDsid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t NotificationPendingAPI.getResponse()()
{
  v1 = sub_275B79C5C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v28 - v7;
  v9 = sub_275B7A06C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_275B7A75C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7A74C();
  v20 = v0[3];
  v21 = v0[4];
  v22 = v0[2];
  DaemonStateManager.readOrDeleteNotificationStateIfAccountChanged(currentAccount:)(v20, v21, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_275B215D4(v8);
    sub_275B7A72C();
  }

  else
  {
    sub_275B21690(v8, v14);
    sub_275B7A72C();
    sub_275B7A02C();
    sub_275B4EEC4(v14, MEMORY[0x277D7F690]);
  }

  sub_275B7A73C();
  if (qword_280A32D70 != -1)
  {
    swift_once();
  }

  v23 = sub_275B7A96C();
  __swift_project_value_buffer(v23, qword_280A33818);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_275B7B09C();

  v29 = 0xD00000000000001CLL;
  v30 = 0x8000000275B84D60;
  sub_275B4EE34(&qword_280A33830, MEMORY[0x277D7F800]);
  v24 = sub_275B7965C();
  MEMORY[0x277C89240](v24);

  sub_275B7A91C();

  v25 = sub_275B797EC();
  MEMORY[0x28223BE20](v25, v26);
  *(&v28 - 2) = v19;
  sub_275B4EE34(&qword_280A33470, MEMORY[0x277D7F580]);
  sub_275B7968C();
  return sub_275B4EEC4(v19, MEMORY[0x277D7F800]);
}

uint64_t sub_275B4ED40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *))
{
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v14 - v11;
  sub_275B4EFB0(a2, &v14 - v11, a4);
  return a5(v12);
}

uint64_t sub_275B4EE34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275B4EEC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NotificationPendingAPI.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t NotificationPendingAPI.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_275B4EFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B4F018()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33840);
  __swift_project_value_buffer(v0, qword_280A33840);
  type metadata accessor for NotificationStateWriteAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33868, "ښ");
  return sub_275B7A97C();
}

uint64_t NotificationStateWriteAPI.__allocating_init(withDaemonStateManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t NotificationStateWriteAPI.getResponse(request:)@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_275B79C5C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v45 - v9;
  v11 = sub_275B7A06C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_275B7A81C();
  v17 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47, v18);
  v50 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7A80C();
  if (qword_280A32D78 != -1)
  {
    swift_once();
  }

  v20 = sub_275B7A96C();
  __swift_project_value_buffer(v20, qword_280A33840);
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_275B7B09C();

  v51 = 0xD00000000000001ELL;
  v52 = 0x8000000275B84DE0;
  sub_275B7A7FC();
  sub_275B4FF0C(&qword_280A33858, MEMORY[0x277D7F838]);
  v21 = sub_275B7965C();
  MEMORY[0x277C89240](v21);

  sub_275B7A91C();

  sub_275B7A7EC();
  v22 = sub_275B79F7C();
  v24 = v23;
  v25 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = v22;
  }

  else
  {

    sub_275B35FEC();
    if (!v27)
    {
      sub_275B7A95C();
      sub_275B797EC();
      sub_275B4FF0C(&qword_280A33470, MEMORY[0x277D7F580]);
      sub_275B7968C();
      sub_275B4FE14(v16, MEMORY[0x277D7F690]);
      goto LABEL_10;
    }

    v26 = sub_275B7A98C();
    v24 = v28;

    sub_275B79F8C();
  }

  v29 = *(v1 + 16);
  DaemonStateManager.readOrDeleteNotificationStateIfAccountChanged(currentAccount:)(v26, v24, v10);

  v32 = (*(v12 + 48))(v10, 1, v11);
  if (v32 != 1)
  {
    sub_275B7A95C();
    sub_275B797EC();
    sub_275B4FF0C(&qword_280A33470, MEMORY[0x277D7F580]);
    sub_275B7968C();
    sub_275B4FE14(v16, MEMORY[0x277D7F690]);
    sub_275B215D4(v10);
LABEL_10:
    v30 = v50;
    return sub_275B4FE14(v30, MEMORY[0x277D7F848]);
  }

  v46 = v10;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_275B7B09C();

  v51 = 0xD00000000000001CLL;
  v52 = 0x8000000275B84E30;
  sub_275B4FF0C(&qword_280A333E0, MEMORY[0x277D7F690]);
  v33 = sub_275B7965C();
  MEMORY[0x277C89240](v33);

  MEMORY[0x277C89240](46, 0xE100000000000000);
  sub_275B7A91C();

  MEMORY[0x28223BE20](v34, v35);
  *(&v45 - 2) = v16;
  if (qword_28140F988 != -1)
  {
    v36 = swift_once();
  }

  v38 = off_28140F990;
  v39 = MEMORY[0x28223BE20](v36, v37);
  *(&v45 - 4) = v29;
  *(&v45 - 3) = sub_275B1D150;
  *(&v45 - 2) = (&v45 - 4);
  (*(*v38 + 136))(0xD000000000000021, v40 | 0x8000000000000000, sub_275B09408, v39);
  sub_275B7A91C();
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_275B7B09C();

  v51 = 0xD00000000000001FLL;
  v52 = 0x8000000275B84E80;
  sub_275B4FF0C(&qword_280A33860, MEMORY[0x277D7F848]);
  v41 = v50;
  v42 = sub_275B7965C();
  MEMORY[0x277C89240](v42);

  sub_275B7A91C();

  v43 = sub_275B797EC();
  MEMORY[0x28223BE20](v43, v44);
  *(&v45 - 2) = v41;
  sub_275B4FF0C(&qword_280A33470, MEMORY[0x277D7F580]);
  sub_275B7968C();
  sub_275B4FE14(v16, MEMORY[0x277D7F690]);
  sub_275B215D4(v46);
  v30 = v41;
  return sub_275B4FE14(v30, MEMORY[0x277D7F848]);
}

uint64_t sub_275B4FB78()
{
  v0 = sub_275B79C5C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B4FF0C(&qword_280A33478, MEMORY[0x277D7F5F0]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B4FCA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_275B7A81C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_275B4FF54(a2, &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D7F848]);
  return sub_275B7979C();
}

uint64_t sub_275B4FD50(uint64_t a1, uint64_t a2)
{
  v3 = sub_275B79C5C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_275B4FF54(a2, &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D7F5F0]);
  return sub_275B797BC();
}

uint64_t sub_275B4FE14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NotificationStateWriteAPI.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t NotificationStateWriteAPI.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_275B4FF0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275B4FF54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *OHEVocabulary.kStringFeatureVocabMap.unsafeMutableAddressor()
{
  if (qword_280A32D80 != -1)
  {
    swift_once();
  }

  return &static OHEVocabulary.kStringFeatureVocabMap;
}

uint64_t sub_275B50090()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33870, &qword_275B7E4B8);
  inited = swift_initStackObject();
  *(inited + 32) = 1;
  *(inited + 16) = xmmword_275B7E360;
  *(inited + 40) = &unk_2884A8008;
  *(inited + 48) = 4;
  *(inited + 56) = &unk_2884A8098;
  *(inited + 64) = 8;
  if (qword_280A32DB8 != -1)
  {
    swift_once();
  }

  *(inited + 72) = static OHEVocabulary.kVocabForAppId;
  *(inited + 80) = 27;
  v1 = qword_280A32DC0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = static OHEVocabulary.kVocabForNotifUsageType;
  *(inited + 88) = static OHEVocabulary.kVocabForNotifUsageType;
  *(inited + 96) = 28;
  *(inited + 104) = v2;
  *(inited + 112) = 29;
  *(inited + 120) = v2;
  *(inited + 128) = 37;
  *(inited + 136) = v2;
  *(inited + 144) = 38;
  *(inited + 152) = v2;
  *(inited + 160) = 39;
  *(inited + 168) = v2;
  *(inited + 176) = 54;
  *(inited + 184) = &unk_2884A8128;
  swift_bridgeObjectRetain_n();
  v3 = sub_275B0C1A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33878, &unk_275B7E4C0);
  result = swift_arrayDestroy();
  static OHEVocabulary.kStringFeatureVocabMap = v3;
  return result;
}

uint64_t *OHEVocabulary.kVocabForAppId.unsafeMutableAddressor()
{
  if (qword_280A32DB8 != -1)
  {
    swift_once();
  }

  return &static OHEVocabulary.kVocabForAppId;
}

uint64_t *OHEVocabulary.kVocabForNotifUsageType.unsafeMutableAddressor()
{
  if (qword_280A32DC0 != -1)
  {
    swift_once();
  }

  return &static OHEVocabulary.kVocabForNotifUsageType;
}

uint64_t sub_275B50428()
{
  result = sub_275B7AD1C();
  static OHEVocabulary.kPhotos = result;
  *algn_280A35B68 = v1;
  return result;
}

uint64_t *OHEVocabulary.kPhotos.unsafeMutableAddressor()
{
  if (qword_280A32D88 != -1)
  {
    swift_once();
  }

  return &static OHEVocabulary.kPhotos;
}

uint64_t sub_275B504E0()
{
  result = sub_275B7AD1C();
  static OHEVocabulary.kCamera = result;
  *algn_280A35B78 = v1;
  return result;
}

uint64_t *OHEVocabulary.kCamera.unsafeMutableAddressor()
{
  if (qword_280A32D90 != -1)
  {
    swift_once();
  }

  return &static OHEVocabulary.kCamera;
}

uint64_t sub_275B50594()
{
  result = sub_275B7AD1C();
  static OHEVocabulary.kFiles = result;
  *algn_280A35B88 = v1;
  return result;
}

uint64_t *OHEVocabulary.kFiles.unsafeMutableAddressor()
{
  if (qword_280A32D98 != -1)
  {
    swift_once();
  }

  return &static OHEVocabulary.kFiles;
}

uint64_t sub_275B5064C()
{
  result = sub_275B7AD1C();
  static OHEVocabulary.kSettings = result;
  *algn_280A35B98 = v1;
  return result;
}

uint64_t *OHEVocabulary.kSettings.unsafeMutableAddressor()
{
  if (qword_280A32DA0 != -1)
  {
    swift_once();
  }

  return &static OHEVocabulary.kSettings;
}

uint64_t sub_275B50704()
{
  result = sub_275B7AD1C();
  static OHEVocabulary.kMail = result;
  *algn_280A35BA8 = v1;
  return result;
}

uint64_t *OHEVocabulary.kMail.unsafeMutableAddressor()
{
  if (qword_280A32DA8 != -1)
  {
    swift_once();
  }

  return &static OHEVocabulary.kMail;
}

uint64_t sub_275B507BC()
{
  result = sub_275B7AD1C();
  static OHEVocabulary.kCalendar = result;
  *algn_280A35BB8 = v1;
  return result;
}

uint64_t *OHEVocabulary.kCalendar.unsafeMutableAddressor()
{
  if (qword_280A32DB0 != -1)
  {
    swift_once();
  }

  return &static OHEVocabulary.kCalendar;
}

uint64_t sub_275B50874(void *a1, void *a2, void *a3)
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

uint64_t sub_275B509B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_275B7E370;
  if (qword_280A32D88 != -1)
  {
    swift_once();
  }

  v1 = *algn_280A35B68;
  *(v0 + 32) = static OHEVocabulary.kPhotos;
  *(v0 + 40) = v1;
  v2 = qword_280A32D90;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_280A35B78;
  *(v0 + 48) = static OHEVocabulary.kCamera;
  *(v0 + 56) = v3;
  v4 = qword_280A32D98;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_280A35B88;
  *(v0 + 64) = static OHEVocabulary.kFiles;
  *(v0 + 72) = v5;
  v6 = qword_280A32DA0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_280A35B98;
  *(v0 + 80) = static OHEVocabulary.kSettings;
  *(v0 + 88) = v7;
  v8 = qword_280A32DA8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *algn_280A35BA8;
  *(v0 + 96) = static OHEVocabulary.kMail;
  *(v0 + 104) = v9;
  v10 = qword_280A32DB0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_280A35BB8;
  *(v0 + 112) = static OHEVocabulary.kCalendar;
  *(v0 + 120) = v11;
  static OHEVocabulary.kVocabForAppId = v0;
}

uint64_t sub_275B50BD8()
{
  if (qword_280A32C70 != -1)
  {
    swift_once();
  }

  v0 = static BiomeNotificationStream.kUsageTypeValueMap;
  v1 = *(static BiomeNotificationStream.kUsageTypeValueMap + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = sub_275B0B6B0(*(static BiomeNotificationStream.kUsageTypeValueMap + 16), 0);
    v4 = sub_275B0BA40(&v19, v3 + 4, v1, v0);

    sub_275B0C684();
    if (v4 == v1)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = v2;
LABEL_7:
  v19 = v3;

  sub_275B50E60(&v19);

  v5 = v19;
  v6 = *(v19 + 2);
  if (v6)
  {
    v19 = v2;
    sub_275B0E5B0(0, v6, 0);
    v7 = v19;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = sub_275B7AD2C();
      v19 = v7;
      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v16 = v11;
        v17 = v12;
        sub_275B0E5B0((v13 > 1), v14 + 1, 1);
        v12 = v17;
        v11 = v16;
        v7 = v19;
      }

      *(v7 + 2) = v14 + 1;
      v15 = &v7[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  static OHEVocabulary.kVocabForNotifUsageType = v7;
  return result;
}

uint64_t sub_275B50DE4(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_275B50E60(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275B5A294(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_275B50ECC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_275B50ECC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_275B7B18C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_275B7AEAC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_275B51094(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_275B50FC4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_275B50FC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_275B7B1BC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_275B51094(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_275B5A1B4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_275B51670((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_275B7B1BC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_275B7B1BC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_275B10F4C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_275B10F4C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_275B51670((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_275B5A1B4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_275B5A128(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_275B7B1BC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_275B51670(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_275B7B1BC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_275B7B1BC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t *OTANotificationDelayModel.kDefaultOTANotificationDelayModelName.unsafeMutableAddressor()
{
  if (qword_280A32DC8 != -1)
  {
    swift_once();
  }

  return &static OTANotificationDelayModel.kDefaultOTANotificationDelayModelName;
}

uint64_t OTANotificationDelayModel.__allocating_init(name:mlModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  OTANotificationDelayModel.init(name:mlModel:)(a1, a2, a3);
  return v6;
}

uint64_t sub_275B51950()
{
  v0 = sub_275B7989C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B3A540();
  sub_275B7968C();
  v5 = _s33iCloudSubscriptionOptimizerDaemon15MLDelayProviderC12getModelName14fromLitmusInfoSS01iabC4Core0kL0V_tFZ_0();
  v7 = v6;
  result = sub_275B3A818(v4);
  static OTANotificationDelayModel.kDefaultOTANotificationDelayModelName = v5;
  *algn_280A35BD8 = v7;
  return result;
}

uint64_t sub_275B51A1C()
{
  sub_275B7985C();
  sub_275B7980C();
  return sub_275B7987C();
}

uint64_t static OTANotificationDelayModel.kDefaultOTANotificationDelayModelName.getter()
{
  if (qword_280A32DC8 != -1)
  {
    swift_once();
  }

  v0 = static OTANotificationDelayModel.kDefaultOTANotificationDelayModelName;

  return v0;
}

uint64_t OTANotificationDelayModel.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t OTANotificationDelayModel.overwriteDelay.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t OTANotificationDelayModel.useMaxDelayTimestamp.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 73) = a1;
  return result;
}

uint64_t OTANotificationDelayModel.notificationDataSource.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

void *OTANotificationDelayModel.init(name:mlModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v6 = a3;
  v7 = [v6 modelDescription];
  v8 = [v7 inputDescriptionsByName];

  sub_275B18088();
  v9 = sub_275B7AC8C();

  if (*(v9 + 16))
  {
    sub_275B180D4(0x4165727574616566, 0xEC00000079617272);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      v15 = MEMORY[0x277D84F90];
      goto LABEL_9;
    }

    v12._countAndFlagsBits = 0x7365727574616566;
    v12._object = 0xE800000000000000;
    v13 = MLModel.getMetadataStringValueFor(_:)(v12);
    if (!v13.value._object)
    {
      sub_275B1814C();
      swift_allocError();
      *v18 = 0xD00000000000003ELL;
      v18[1] = 0x8000000275B80B70;
      swift_willThrow();
      goto LABEL_11;
    }

    v14 = sub_275B405D8(v13.value._countAndFlagsBits, v13.value._object);
    if (v4)
    {

LABEL_11:

      v19 = v5[3];

      type metadata accessor for OTANotificationDelayModel();
      swift_deallocPartialClassInstance();
      return v5;
    }

    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_9:
  v5[10] = v15;
  v5[5] = MLModel.getOffsetTimeIntervalOrDefault()();
  v5[7] = MLModel.getPercentileToChooseOffsetOrDefault()();
  v5[6] = MLModel.getNumOffsetsOrDefault()();
  v5[8] = MLModel.getOverwriteDelayOrDefault()();
  *(v5 + 72) = v16 & 1;
  *(v5 + 73) = MLModel.getUseMaxDelayTimestampOrDefault()();
  v17 = MLModel.getNotificationDataSource()();

  *(v5 + 11) = v17;
  return v5;
}

uint64_t OTANotificationDelayModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  return v0;
}

uint64_t OTANotificationDelayModel.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_275B51EDC()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 73);
}

uint64_t sub_275B51F1C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 96);

  return v1;
}

uint64_t sub_275B51F74()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33880);
  __swift_project_value_buffer(v0, qword_280A33880);
  type metadata accessor for PetDataAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A338A0, "Ș");
  return sub_275B7A97C();
}

uint64_t PetDataAPI.__allocating_init(skipLogMessageForTesting:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id PetDataAPI.getResponse(request:)@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68[0] = a2;
  v5 = sub_275B79C0C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v74 = (v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280A32DD0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v9 = sub_275B7A96C();
  __swift_project_value_buffer(v9, qword_280A33880);
  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  sub_275B7B09C();

  *&v78 = 0x5261746144746550;
  *(&v78 + 1) = 0xEF3D747365757165;
  sub_275B79B3C();
  sub_275B52758();
  v10 = sub_275B7965C();
  MEMORY[0x277C89240](v10);

  sub_275B7A91C();

  sub_275B7A91C();
  v11 = sub_275B79AEC();
  v12 = sub_275B79B2C();
  v13 = sub_275B79B1C();
  v14 = sub_275B79B0C();
  v71 = a1;
  v15 = sub_275B79ACC();
  type metadata accessor for PETDataCollector();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x277D84F90];
  v68[3] = inited + 16;
  *(inited + 24) = v11;
  *(inited + 32) = 2;
  v70 = inited;
  *(inited + 56) = v15 & 1;
  v69 = v3;
  if (v15)
  {
    v17 = type metadata accessor for MockBiomeManager();
    v18 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v17 = type metadata accessor for RealBiomeManager();
    v18 = &protocol witness table for RealBiomeManager;
  }

  v19 = swift_allocObject();
  v79 = v17;
  v80 = v18;
  *&v78 = v19;
  v3 = v70;
  sub_275B075DC(&v78, (v70 + 8));
  v20 = type metadata accessor for DataCollectorUtils();
  v21 = v3[11];
  v22 = v3[12];
  v23 = __swift_project_boxed_opaque_existential_1(v3 + 8, v21);
  v3[5] = sub_275B202AC(v23, v12, v13, v14, v20, v21, v22);
  sub_275B19CD4((v3 + 8), &v78);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v24 = sub_275B7ABCC();
  sub_275B7AB2C();
  v25 = sub_275B7ABCC();
  v26 = v79;
  v27 = v80;
  __swift_project_boxed_opaque_existential_1(&v78, v79);
  v28 = (v27[19])(v25, v24, v26, v27);
  v29 = *(v28 + 16);
  v68[2] = v28;
  if (v29)
  {
    v30 = v28;
    v75 = sub_275B7AB2C();
    v31 = 0;
    v72 = v29 - 1;
    v3 = (v30 + 56);
    v32 = MEMORY[0x277D84F90];
    v73 = v29;
    do
    {
      v81 = v32;
      v33 = *(v3 - 2);
      v77 = *(v3 - 3);
      if (v31 < v72)
      {
        v34 = *v3;
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v35 = v80;
      __swift_project_boxed_opaque_existential_1(&v78, v79);
      v36 = v35[20];
      v76 = v77;
      v77 = v33;
      v37 = v36(v76);
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v32 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_275B11B44(0, *(v32 + 2) + 1, 1, v32);
      }

      v45 = *(v32 + 2);
      v44 = *(v32 + 3);
      if (v45 >= v44 >> 1)
      {
        v32 = sub_275B11B44((v44 > 1), v45 + 1, 1, v32);
      }

      ++v31;
      *(v32 + 2) = v45 + 1;
      v46 = &v32[48 * v45];
      v47 = v77;
      *(v46 + 4) = v76;
      *(v46 + 5) = v47;
      v46[48] = v37 & 1;
      *(v46 + 7) = v39;
      v46[64] = v41 & 1;
      *(v46 + 9) = v43;
      v3 += 2;
    }

    while (v73 != v31);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(&v78);
  v48 = v70;
  v70[6] = v32;
  PETDataCollector.buildAndLogMessages(skipLogMessageInPetForTesting:)(*(v69 + 16));
  swift_beginAccess();
  v49 = v48[2];

  a1 = v74;
  sub_275B79BFC();
  if (!(v49 >> 62))
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_18;
    }

LABEL_35:
    swift_bridgeObjectRelease_n();
    v65 = v70;
    swift_setDeallocating();
    v66 = v65[5];

    v67 = v65[6];

    __swift_destroy_boxed_opaque_existential_1(v65 + 8);
    return sub_275B527B0(a1, v68[0]);
  }

  v50 = sub_275B7B11C();
  if (!v50)
  {
    goto LABEL_35;
  }

LABEL_18:
  v51 = 0;
  v81 = v49 & 0xC000000000000001;
  v76 = v50;
  v77 = (v49 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v81)
    {
      v52 = MEMORY[0x277C89550](v51, v49);
    }

    else
    {
      if (v51 >= *(v77 + 2))
      {
        goto LABEL_32;
      }

      v52 = *(v49 + 8 * v51 + 32);
    }

    v53 = v52;
    v54 = (v51 + 1);
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    sub_275B79ACC();
    sub_275B79BDC();
    result = [v53 formattedText];
    if (!result)
    {
      break;
    }

    v56 = result;
    v57 = sub_275B7AD0C();
    v59 = v58;

    v60 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_275B11064(0, *(v60 + 2) + 1, 1, v60);
    }

    v62 = *(v60 + 2);
    v61 = *(v60 + 3);
    v3 = (v62 + 1);
    if (v62 >= v61 >> 1)
    {
      v60 = sub_275B11064((v61 > 1), v62 + 1, 1, v60);
    }

    *(v60 + 2) = v3;
    v63 = &v60[16 * v62];
    *(v63 + 4) = v57;
    *(v63 + 5) = v59;
    v64 = v74;
    *v74 = v60;
    a1 = v64;
    sub_275B79BEC();
    ++v51;
    if (v54 == v76)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_275B52758()
{
  result = qword_280A33898;
  if (!qword_280A33898)
  {
    sub_275B79B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33898);
  }

  return result;
}

uint64_t sub_275B527B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79C0C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PetDataCollectionEvent.__allocating_init(withSink:)(uint64_t *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F480);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t PetDataCollectionEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F480);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t PetDataCollectionEvent.addDuration(_:)()
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t PetDataCollectionEvent.addSentToPet(_:)()
{
  sub_275B79B5C();
}

uint64_t PetDataCollectionEvent.addMessagesSent(_:)()
{
  sub_275B79B7C();
}

uint64_t PetDataCollectionEvent.addTrafficType(_:)()
{
  sub_275B79B4C();
}

uint64_t PetDataCollectionEvent.addMessagesFromNotifStream(_:)()
{
  sub_275B79B7C();
}

uint64_t PetDataCollectionEvent.addMessagesFromSubStream(_:)()
{
  sub_275B79B7C();
}

uint64_t PetDataCollectionEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_275B52DA4()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140DE50);
  __swift_project_value_buffer(v0, qword_28140DE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A338A8, &unk_275B7E660);
  return sub_275B7A97C();
}

uint64_t PETDataCollectionPipeline.getLastRun(_:)()
{
  if ((sub_275B799EC() & 1) == 0)
  {
    return 0;
  }

  sub_275B7999C();
  return sub_275B7AB6C();
}

uint64_t PETDataCollectionPipeline.updateLastRun(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_275B52ECC(a1, a2);
  sub_275B7AB5C();
  return sub_275B799AC();
}

uint64_t sub_275B52ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79ABC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B52F50()
{
  if ((sub_275B799EC() & 1) == 0)
  {
    return 0;
  }

  sub_275B7999C();
  return sub_275B7AB6C();
}

uint64_t sub_275B52F94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_275B52ECC(a1, a2);
  sub_275B7AB5C();
  return sub_275B799AC();
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon25PETDataCollectionPipelineV07runDataF0yyAA12BiomeManager_p_s5Int64VSayAA19LabeledNotificationVGSayAA0j6ICloudB0VGtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_28140DE48 != -1)
  {
    swift_once();
  }

  v7 = sub_275B7A96C();
  __swift_project_value_buffer(v7, qword_28140DE50);
  sub_275B7A91C();
  type metadata accessor for PETDataCollector();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x277D84F90];
  *(inited + 24) = a2;
  *(inited + 32) = 1;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(inited + 56) = 0;
  v9 = type metadata accessor for RealBiomeManager();
  v10 = swift_allocObject();
  *(inited + 88) = v9;
  *(inited + 96) = &protocol witness table for RealBiomeManager;
  *(inited + 64) = v10;

  PETDataCollector.buildAndLogMessages(skipLogMessageInPetForTesting:)(0);
  swift_setDeallocating();
  v11 = *(inited + 16);

  v12 = *(inited + 40);

  v13 = *(inited + 48);

  return __swift_destroy_boxed_opaque_existential_1((inited + 64));
}

uint64_t PETDataCollector.__allocating_init(numOffsets:trafficType:notifStartDaysUntilNow:notifEndDaysUntilNow:labelDurationInDays:dummyData:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 56) = a6;
  if (a6)
  {
    v13 = type metadata accessor for MockBiomeManager();
    v14 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v13 = type metadata accessor for RealBiomeManager();
    v14 = &protocol witness table for RealBiomeManager;
  }

  v51 = v13;
  v52 = v14;
  *&v50 = swift_allocObject();
  sub_275B075DC(&v50, v12 + 64);
  v15 = type metadata accessor for DataCollectorUtils();
  v16 = *(v12 + 88);
  v17 = *(v12 + 96);
  v18 = __swift_project_boxed_opaque_existential_1((v12 + 64), v16);
  *(v12 + 40) = sub_275B202AC(v18, a3, a4, a5, v15, v16, v17);
  v47 = v12;
  sub_275B19CD4(v12 + 64, &v50);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v19 = sub_275B7ABCC();
  sub_275B7AB2C();
  v20 = sub_275B7ABCC();
  v21 = v51;
  v22 = v52;
  __swift_project_boxed_opaque_existential_1(&v50, v51);
  v23 = (v22[19])(v20, v19, v21, v22);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v23;
    sub_275B7AB2C();
    v26 = 0;
    v27 = (v25 + 56);
    v28 = MEMORY[0x277D84F90];
    do
    {
      v49 = v28;
      v29 = *(v27 - 3);
      v30 = *(v27 - 2);
      if (v26 < v24 - 1)
      {
        v31 = *v27;
        v32 = *(v27 - 2);
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v33 = v52;
      __swift_project_boxed_opaque_existential_1(&v50, v51);
      v34 = v33[20];
      v48 = v29;
      v35 = v30;
      v36 = v34();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_275B11B44(0, *(v49 + 2) + 1, 1, v49);
      }

      v44 = *(v28 + 2);
      v43 = *(v28 + 3);
      if (v44 >= v43 >> 1)
      {
        v28 = sub_275B11B44((v43 > 1), v44 + 1, 1, v28);
      }

      ++v26;
      *(v28 + 2) = v44 + 1;
      v45 = &v28[48 * v44];
      *(v45 + 4) = v48;
      *(v45 + 5) = v35;
      v45[48] = v36 & 1;
      *(v45 + 7) = v38;
      v45[64] = v40 & 1;
      *(v45 + 9) = v42;
      v27 += 2;
    }

    while (v24 != v26);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(&v50);
  result = v47;
  *(v47 + 48) = v28;
  return result;
}

uint64_t PETDataCollector.__allocating_init(numOffsets:trafficType:notificationsFromNotifStream:notificationsFromSubStream:dummyData:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  *(v10 + 56) = a5;
  if (a5)
  {
    v11 = type metadata accessor for MockBiomeManager();
    v12 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v11 = type metadata accessor for RealBiomeManager();
    v12 = &protocol witness table for RealBiomeManager;
  }

  v15 = v11;
  v16 = v12;
  *&v14 = swift_allocObject();
  sub_275B075DC(&v14, v10 + 64);
  return v10;
}

uint64_t sub_275B53550()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140F028);
  __swift_project_value_buffer(v0, qword_28140F028);
  type metadata accessor for PETDataCollector();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A338B0, &qword_275B7E6C8);
  return sub_275B7A97C();
}

uint64_t PETDataCollector.petMessages.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t PETDataCollector.petMessages.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t PETDataCollector.init(numOffsets:trafficType:notificationsFromNotifStream:notificationsFromSubStream:dummyData:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = MEMORY[0x277D84F90];
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  if (a5)
  {
    v6 = type metadata accessor for MockBiomeManager();
    v7 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v6 = type metadata accessor for RealBiomeManager();
    v7 = &protocol witness table for RealBiomeManager;
  }

  v10 = v6;
  v11 = v7;
  *&v9 = swift_allocObject();
  sub_275B075DC(&v9, v5 + 64);
  return v5;
}

uint64_t PETDataCollector.init(numOffsets:trafficType:notifStartDaysUntilNow:notifEndDaysUntilNow:labelDurationInDays:dummyData:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 56) = a6;
  if (a6)
  {
    v10 = type metadata accessor for MockBiomeManager();
    v11 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v10 = type metadata accessor for RealBiomeManager();
    v11 = &protocol witness table for RealBiomeManager;
  }

  v49 = v10;
  v50 = v11;
  *&v48 = swift_allocObject();
  sub_275B075DC(&v48, v6 + 64);
  v12 = type metadata accessor for DataCollectorUtils();
  sub_275B19CD4(v6 + 64, &v48);
  v13 = v49;
  v14 = v50;
  v15 = __swift_project_boxed_opaque_existential_1(&v48, v49);
  v16 = sub_275B202AC(v15, a3, a4, a5, v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  *(v6 + 40) = v16;
  v45 = v6;
  sub_275B19CD4(v6 + 64, &v48);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v17 = sub_275B7ABCC();
  sub_275B7AB2C();
  v18 = sub_275B7ABCC();
  v19 = v49;
  v20 = v50;
  __swift_project_boxed_opaque_existential_1(&v48, v49);
  v21 = (v20[19])(v18, v17, v19, v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v21;
    sub_275B7AB2C();
    v24 = 0;
    v25 = (v23 + 56);
    v26 = MEMORY[0x277D84F90];
    do
    {
      v47 = v26;
      v27 = *(v25 - 3);
      v28 = *(v25 - 2);
      if (v24 < v22 - 1)
      {
        v29 = *v25;
        v30 = *(v25 - 2);
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v31 = v50;
      __swift_project_boxed_opaque_existential_1(&v48, v49);
      v32 = v31[20];
      v46 = v27;
      v33 = v28;
      v34 = v32();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v26 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_275B11B44(0, *(v47 + 2) + 1, 1, v47);
      }

      v42 = *(v26 + 2);
      v41 = *(v26 + 3);
      if (v42 >= v41 >> 1)
      {
        v26 = sub_275B11B44((v41 > 1), v42 + 1, 1, v26);
      }

      ++v24;
      *(v26 + 2) = v42 + 1;
      v43 = &v26[48 * v42];
      *(v43 + 4) = v46;
      *(v43 + 5) = v33;
      v43[48] = v34 & 1;
      *(v43 + 7) = v36;
      v43[64] = v38 & 1;
      *(v43 + 9) = v40;
      v25 += 2;
    }

    while (v22 != v24);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(&v48);
  result = v45;
  *(v45 + 48) = v26;
  return result;
}

Swift::Void __swiftcall PETDataCollector.buildAndLogMessages(skipLogMessageInPetForTesting:)(Swift::Bool skipLogMessageInPetForTesting)
{
  v2 = v1;
  sub_275B7AA9C();
  v4 = sub_275B7AA8C();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v5 = *(v1 + 32);
  if (v5 == 2)
  {
    v6 = @"SYNTHESIZED";
    v9 = @"SYNTHESIZED";
  }

  else if (v5 == 1)
  {
    v6 = @"REAL";
    v8 = @"REAL";
  }

  else if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *(v1 + 32)];
  }

  else
  {
    v6 = @"UNKNOWN";
    v7 = @"UNKNOWN";
  }

  v10 = v6;
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  sub_275B7AD0C();

  PETDataCollector.buildAllMessages(_:_:)(&v31, &v30);
  if (!skipLogMessageInPetForTesting)
  {
    swift_beginAccess();
    v22 = *(v2 + 16);

    _s33iCloudSubscriptionOptimizerDaemon16PETDataCollectorC16logMessagesInPetyySaySo018ISOPBSubscriptiondJ7MessageCG_s5Int64VztFZ_0(v23, &v32);
LABEL_22:

    goto LABEL_23;
  }

  swift_beginAccess();
  v12 = *(v2 + 16);
  if (v12 >> 62)
  {
    v13 = sub_275B7B11C();
    if (!v13)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_12:
    if (v13 >= 1)
    {

      v14 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x277C89550](v14, v12);
        }

        else
        {
          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        if (qword_28140F020 != -1)
        {
          swift_once();
        }

        ++v14;
        v17 = sub_275B7A96C();
        __swift_project_value_buffer(v17, qword_28140F028);
        sub_275B7B09C();

        v29[0] = 0xD000000000000019;
        v29[1] = 0x8000000275B85160;
        v18 = [v16 description];
        v19 = sub_275B7AD0C();
        v21 = v20;

        MEMORY[0x277C89240](v19, v21);

        MEMORY[0x277C89240](93, 0xE100000000000000);
        sub_275B7A91C();
      }

      while (v13 != v14);
      goto LABEL_22;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

LABEL_23:
  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v29);
  type metadata accessor for PetDataCollectionEvent();
  swift_allocObject();
  sub_275B19CD4(v29, v28);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v27[0] = qword_28140F700;
  v27[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F480);
  sub_275B19CD4(v28, v27);
  v24 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);

  sub_275B79B7C();

  sub_275B79B7C();

  sub_275B79B7C();

  sub_275B79B5C();

  (*(*v4 + 96))(v25);
  sub_275B7AB1C();
  sub_275B79B7C();

  sub_275B79B4C();

  (*(*v24 + 200))(v26);
}

Swift::Void __swiftcall PETDataCollector.buildAllMessages(_:_:)(Swift::Int64 *a1, Swift::Int64 *a2)
{
  v3 = v2;
  *(v2 + 56);
  *(v2 + 56);
  if (qword_28140F020 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v5 = sub_275B7A96C();
    __swift_project_value_buffer(v5, qword_28140F028);
    sub_275B7A91C();
    v35 = v3[5];
    v34 = *(v35 + 16);
    if (v34)
    {
      break;
    }

LABEL_22:
    v38 = v3[6];
    v36 = *(v38 + 16);
    if (!v36)
    {
      return;
    }

    v22 = v3[3];
    if (v22 < 0)
    {
      goto LABEL_47;
    }

    for (i = 0; i < *(v38 + 16); ++i)
    {
      v24 = v38 + 32 + 48 * i;
      v25 = *(v24 + 8);
      v44 = *(v24 + 16);
      v26 = *(v24 + 24);
      a1 = *(v24 + 32);
      v27 = *(v24 + 40);
      v28 = qword_28140F020;
      v39 = *v24;
      if (v28 != -1)
      {
        swift_once();
      }

      v41 = i + 1;
      v29 = sub_275B7A96C();
      __swift_project_value_buffer(v29, qword_28140F028);
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD000000000000017, 0x8000000275B85260);
      sub_275B7B0EC();
      MEMORY[0x277C89240](0, 0xE000000000000000);

      sub_275B7A91C();

      v30 = 0;
      while (1)
      {
        v31 = sub_275B54790(v25, v30);
        if (v31)
        {
          v32 = v31;
          [v31 setBuyLabel_];
          [v32 setMinsUntilICloudBuy_];
          [v32 setOpenLabelSubStream_];
          [v32 setMinsUntilICloudOpenedSubStream_];
          swift_beginAccess();
          v33 = v32;
          MEMORY[0x277C89300]();
          if (*((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_275B7AE9C();
          }

          sub_275B7AEBC();
          swift_endAccess();

          if (__OFADD__(*a2, 1))
          {
            goto LABEL_42;
          }

          ++*a2;
        }

        if (v22 == v30)
        {
          break;
        }

        v21 = __OFADD__(v30++, 1);
        if (v21)
        {
          goto LABEL_40;
        }
      }

      if (v41 == v36)
      {
        return;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v6 = v3[3];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    while (v37 < *(v35 + 16))
    {
      v7 = v35 + 32 + 56 * v37;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v43 = *(v7 + 40);
      v40 = *(v7 + 48);
      v13 = qword_28140F020;

      if (v13 != -1)
      {
        swift_once();
      }

      ++v37;
      v14 = sub_275B7A96C();
      __swift_project_value_buffer(v14, qword_28140F028);
      sub_275B7B09C();

      MEMORY[0x277C89240](v11, v12);

      MEMORY[0x277C89240](0x74697420646E6120, 0xEB0000000020656CLL);

      MEMORY[0x277C89240](v8, v10);

      MEMORY[0x277C89240](32, 0xE100000000000000);

      sub_275B7B09C();
      MEMORY[0x277C89240](0x656D697420746120, 0xEE0020706D617473);
      sub_275B7B0EC();
      MEMORY[0x277C89240](46, 0xE100000000000000);

      MEMORY[0x277C89240](0, 0xE000000000000000);

      sub_275B7A91C();

      v15 = 0;
      while (1)
      {
        v16 = sub_275B54790(v9, v15);
        if (v16)
        {
          v17 = v16;
          v18 = [objc_allocWithZone(MEMORY[0x277D7F8A0]) init];
          if (v18)
          {
            v19 = v18;
            [v18 setMinsUntilICloudNotificationOpened_];
            [v19 setLabel_];
            [v17 setLabelMessage_];
          }

          else
          {
            sub_275B7A95C();
          }

          swift_beginAccess();
          v20 = v17;
          MEMORY[0x277C89300]();
          if (*((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_275B7AE9C();
          }

          sub_275B7AEBC();
          swift_endAccess();

          if (__OFADD__(*a1, 1))
          {
            goto LABEL_41;
          }

          ++*a1;
        }

        if (v6 == v15)
        {
          break;
        }

        v21 = __OFADD__(v15++, 1);
        if (v21)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }
      }

      if (v37 == v34)
      {
        goto LABEL_22;
      }
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

void *sub_275B54790(uint64_t a1, uint64_t a2)
{
  v5 = 0x27A66C000uLL;
  v6 = [objc_allocWithZone(MEMORY[0x277D7F8A8]) init];
  v7 = v6;
  if (v6)
  {
    [v6 setDaemonVersion_];
    _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    [v7 setTimestampMillis_];
    [v7 setTrafficType_];
    v42 = *(v2 + 56);
    if (v42 == 1)
    {
      a1 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    }

    v8 = _s33iCloudSubscriptionOptimizerDaemon18DataCollectorUtilsC18newFeatureProvideryAA0iJ0CAA12BiomeManager_p_01iabC4Core9TimestampVs5Int64VtFZ_0(v2 + 64, a1, a2);
    v9 = _s33iCloudSubscriptionOptimizerDaemon18PetFeatureNameListC3getSayAA0fG0OGyFZ_0();
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = 32;
      while (1)
      {
        v14 = *(v9 + v11);
        if (!v42)
        {
          break;
        }

        if (FeatureName.rawValue.getter(*(v9 + v11)) == 0xD000000000000016 && 0x8000000275B7FC10 == v15)
        {
        }

        else
        {
          v17 = sub_275B7B1BC();

          if ((v17 & 1) == 0)
          {
            break;
          }
        }

        v12 = sub_275B7AF5C();
        FeatureName.rawValue.getter(v14);
        v13 = sub_275B7ACDC();

        [v7 setValue:v12 forKey:v13];

LABEL_8:
        ++v11;
        if (!--v10)
        {
          goto LABEL_49;
        }
      }

      v18 = (*(*v8 + 400))(v14);
      if (FeatureName.rawValue.getter(v14) == 0x656557664F796164 && v19 == 0xE90000000000006BLL)
      {
      }

      else
      {
        v21 = sub_275B7B1BC();

        if ((v21 & 1) == 0)
        {
          if (FeatureName.rawValue.getter(v14) == 0x7265695472657375 && v22 == 0xE800000000000000)
          {
          }

          else
          {
            v24 = sub_275B7B1BC();

            if ((v24 & 1) == 0)
            {
              if (FeatureName.rawValue.getter(v14) == 0x7265767265536C6DLL && v25 == 0xED000065726F6353)
              {

                v26 = 5;
              }

              else
              {
                v37 = sub_275B7B1BC();

                if (v37)
                {
                  v26 = 5;
                }

                else
                {
                  v26 = 2;
                }
              }

              Feature.getValueToString(significantDigits:)(v26);
              v38 = sub_275B7ACDC();

              FeatureName.rawValue.getter(v14);
              v39 = sub_275B7ACDC();

              [v7 setValue:v38 forKey:v39];

              v5 = 0x27A66C000;
              goto LABEL_8;
            }
          }

          v32 = [objc_allocWithZone(MEMORY[0x277CCABB8]) *(v5 + 3984)];
          [v32 setUsesSignificantDigits_];
          [v32 setMaximumSignificantDigits_];
          v33 = *(v18 + 32);
          switch(v33)
          {
            case 1:
              [*(v18 + 24) int64Value];
              sub_275B7B19C();
              break;
            case 2:
              [*(v18 + 24) doubleValue];
              sub_275B7AECC();
              break;
            case 3:
              v34 = [*(v18 + 24) stringValue];
              sub_275B7AD0C();

              v5 = 0x27A66C000;
              sub_275B7AE3C();
              break;
          }

          v35 = sub_275B7ACDC();

          v36 = [v7 StringAsUserTier_];

          [v7 setUserTier_];
          goto LABEL_36;
        }
      }

      v27 = [objc_allocWithZone(MEMORY[0x277CCABB8]) *(v5 + 3984)];
      [v27 setUsesSignificantDigits_];
      [v27 setMaximumSignificantDigits_];
      v28 = *(v18 + 32);
      switch(v28)
      {
        case 1:
          [*(v18 + 24) int64Value];
          sub_275B7B19C();
          break;
        case 2:
          [*(v18 + 24) doubleValue];
          sub_275B7AECC();
          break;
        case 3:
          v29 = [*(v18 + 24) stringValue];
          sub_275B7AD0C();

          v5 = 0x27A66C000;
          sub_275B7AE3C();
          break;
      }

      v30 = sub_275B7ACDC();

      v31 = [v7 StringAsDayOfWeek_];

      [v7 setDayOfWeek_];
LABEL_36:

      goto LABEL_8;
    }

LABEL_49:
  }

  else
  {
    if (qword_28140F020 != -1)
    {
      swift_once();
    }

    v40 = sub_275B7A96C();
    __swift_project_value_buffer(v40, qword_28140F028);
    sub_275B7A95C();
  }

  return v7;
}

void *PETDataCollector.deinit()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  return v0;
}

uint64_t PETDataCollector.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return swift_deallocClassInstance();
}

void _s33iCloudSubscriptionOptimizerDaemon16PETDataCollectorC16logMessagesInPetyySaySo018ISOPBSubscriptiondJ7MessageCG_s5Int64VztFZ_0(unint64_t a1, void *a2)
{
  v15 = [objc_opt_self() sharedInstance];
  if (!v15)
  {
    if (qword_28140F020 == -1)
    {
LABEL_15:
      v13 = sub_275B7A96C();
      __swift_project_value_buffer(v13, qword_28140F028);
      sub_275B7A95C();
      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (v4 >= 1)
    {
      v5 = 0;
      v14 = a2;
      a2 = *a2;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x277C89550](v5, a1);
        }

        else
        {
          v6 = *(a1 + 8 * v5 + 32);
        }

        v7 = v6;
        if (qword_28140F020 != -1)
        {
          swift_once();
        }

        v8 = sub_275B7A96C();
        __swift_project_value_buffer(v8, qword_28140F028);
        sub_275B7B09C();

        v9 = [v7 description];
        v10 = sub_275B7AD0C();
        v12 = v11;

        MEMORY[0x277C89240](v10, v12);

        MEMORY[0x277C89240](11869, 0xE200000000000000);
        sub_275B7A91C();

        [v15 logMessage_];
        if (a2 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v5;
        a2 = (a2 + 1);
        sub_275B7A91C();

        if (v4 == v5)
        {

          *v14 = a2;
          return;
        }
      }

      __break(1u);
LABEL_17:
      v4 = sub_275B7B11C();
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_18:
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon18PetFeatureNameListC3getSayAA0fG0OGyFZ_0()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(&unk_2884A7FB0 + v0 + 32);
    if (((1 << v4) & 0x4FFF0FFFFFFFFFLL) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_275B0E5F4(0, *(v1 + 16) + 1, 1);
      }

      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      if (v3 >= v2 >> 1)
      {
        sub_275B0E5F4((v2 > 1), v3 + 1, 1);
      }

      *(v1 + 16) = v3 + 1;
      *(v1 + v3 + 32) = v4;
    }

    ++v0;
  }

  while (v0 != 55);
  return v1;
}

uint64_t sub_275B55388()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140E770);
  __swift_project_value_buffer(v0, qword_28140E770);
  type metadata accessor for PetToDESRecordStore();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A338B8, &unk_275B7E728);
  return sub_275B7A97C();
}

uint64_t PetToDESRecordStore.__allocating_init(store:protoMessages:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_275B55CFC(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t PetToDESRecordStore.init(store:protoMessages:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7, v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = sub_275B55C4C(v11, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PetToDESRecordStore.run()()
{
  v2 = v1;
  v3 = sub_275B7A3CC();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_275B7AA9C();
  v34 = sub_275B7AA8C();
  v44 = 0;
  v39 = v0;
  v8 = *(v0 + 24);
  v9 = *(v8 + 16);

  v38 = v9;
  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
    v35 = v7;
    v36 = v8;
    while (v10 < *(v8 + 16))
    {
      sub_275B55DF8(v8 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v10, v7);
      v13 = *(v39 + 16);

      DESRecordStoreOperators.writeRecordToStore(data:)(v7);
      v17 = v16;
      v18 = v7;
      if (v2)
      {
        v43 = v10;
        sub_275B55E5C(v7);

        goto LABEL_19;
      }

      v19 = v14;
      v20 = v15;
      sub_275B55E5C(v18);

      sub_275B1E0B4(v19, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_275B11910(0, *(v11 + 2) + 1, 1, v11);
      }

      v22 = *(v11 + 2);
      v21 = *(v11 + 3);
      if (v22 >= v21 >> 1)
      {
        v11 = sub_275B11910((v21 > 1), v22 + 1, 1, v11);
      }

      *(v11 + 2) = v22 + 1;
      v23 = &v11[16 * v22];
      *(v23 + 4) = v19;
      *(v23 + 5) = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_275B117B8(0, v12[2] + 1, 1, v12);
      }

      v25 = v12[2];
      v24 = v12[3];
      if (v25 >= v24 >> 1)
      {
        v12 = sub_275B117B8((v24 > 1), v25 + 1, 1, v12);
      }

      ++v10;
      sub_275B1E160(v19, v20);
      v12[2] = v25 + 1;
      v12[v25 + 4] = v17;
      v2 = 0;
      v7 = v35;
      v8 = v36;
      if (v38 == v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v12 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
LABEL_16:

  v43 = v38;
  v26 = *(v39 + 16);

  v27 = DESRecordStoreOperators.fetchAllRecordsFromStore()();
  if (!v2)
  {
    v28 = v27;

    v7 = v28[2];

    v44 = v7;
    if (qword_28140E768 == -1)
    {
LABEL_21:
      v29 = sub_275B7A96C();
      __swift_project_value_buffer(v29, qword_28140E770);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_275B7B09C();

      v41 = 0x7261206572656854;
      v42 = 0xEA00000000002065;
      v40 = v7;
      v30 = sub_275B7B19C();
      MEMORY[0x277C89240](v30);

      MEMORY[0x277C89240](0xD00000000000001DLL, 0x8000000275B85500);
      sub_275B7A91C();

      sub_275B55994(&v44, &v43, v34);

      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_21;
  }

LABEL_19:

  sub_275B55994(&v44, &v43, v34);

LABEL_22:
  v31 = v12;
  v32 = v11;
  result._1._rawValue = v32;
  result._0._rawValue = v31;
  return result;
}

uint64_t sub_275B55994(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v14);
  type metadata accessor for PflDataStoreEvent();
  swift_allocObject();
  sub_275B19CD4(v14, v13);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v12[0] = qword_28140F700;
  v12[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x53617461446C6670, 0xEC00000065726F74);
  sub_275B19CD4(v13, v12);
  v6 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v7 = *a1;

  sub_275B79B7C();

  v8 = *a2;
  sub_275B79B7C();

  (*(*a3 + 96))(v9);
  sub_275B7AB1C();
  sub_275B79B7C();

  (*(*v6 + 200))(v10);
}

uint64_t PetToDESRecordStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PetToDESRecordStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_275B55C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *(a3 + 24) = MEMORY[0x277D84F90];
  type metadata accessor for DESRecordStoreOperators();
  v10 = swift_allocObject();
  sub_275B075DC(&v12, v10 + 16);
  *(a3 + 16) = v10;
  *(a3 + 24) = a2;
  return a3;
}

uint64_t sub_275B55CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PetToDESRecordStore();
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  return sub_275B55C4C(v12, a2, v13, a4, a5);
}

uint64_t sub_275B55DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7A3CC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B55E5C(uint64_t a1)
{
  v2 = sub_275B7A3CC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B55EDC()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A338C0);
  __swift_project_value_buffer(v0, qword_280A338C0);
  type metadata accessor for PflDataAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A338E0, &unk_275B7E750);
  return sub_275B7A97C();
}

uint64_t PflDataAPI.__allocating_init()()
{
  v0 = swift_allocObject();
  PflDataAPI.init()();
  return v0;
}

uint64_t PflDataAPI.init()()
{
  v1 = type metadata accessor for RealDESRecordStore();
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(MEMORY[0x277D05630]);
  v4 = sub_275B7ACDC();
  v5 = [v3 initWithBundleIdentifier_];

  if (v5)
  {
    *(v2 + 16) = v5;
    v9 = v1;
    v10 = &protocol witness table for RealDESRecordStore;
    *&v8 = v2;
    sub_275B075DC(&v8, v0 + 16);
  }

  else
  {
    sub_275B2D020();
    swift_allocError();
    *v6 = 0xD000000000000024;
    v6[1] = 0x8000000275B85600;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    type metadata accessor for PflDataAPI();
    swift_deallocPartialClassInstance();
  }

  return v0;
}

uint64_t PflDataAPI.__allocating_init(store:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_275B075DC(a1, v2 + 16);
  return v2;
}

uint64_t PflDataAPI.getResponse(request:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_275B79C5C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v83 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_275B7A3CC();
  v84 = *(v93 - 8);
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v93, v8);
  v92 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275B79C0C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v95 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280A32DE0 != -1)
  {
    swift_once();
  }

  v14 = sub_275B7A96C();
  v15 = __swift_project_value_buffer(v14, qword_280A338C0);
  *&v102 = 0;
  *(&v102 + 1) = 0xE000000000000000;
  sub_275B7B09C();

  *&v102 = 0xD000000000000010;
  *(&v102 + 1) = 0x8000000275B85630;
  sub_275B79B3C();
  sub_275B56E1C(&qword_280A33898, MEMORY[0x277D7F5B8]);
  v16 = sub_275B7965C();
  MEMORY[0x277C89240](v16);

  sub_275B7A91C();

  v86 = v15;
  sub_275B7A91C();
  v17 = sub_275B79AEC();
  v18 = sub_275B79B2C();
  v19 = sub_275B79B1C();
  v20 = sub_275B79B0C();
  v94 = a1;
  v21 = sub_275B79ACC();
  type metadata accessor for PFLDataCollector();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x277D84F90];
  v88 = inited + 16;
  *(inited + 64) = v17;
  *(inited + 88) = v21 & 1;
  if (v21)
  {
    v23 = type metadata accessor for MockBiomeManager();
    v24 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v23 = type metadata accessor for RealBiomeManager();
    v24 = &protocol witness table for RealBiomeManager;
  }

  v25 = swift_allocObject();
  v103 = v23;
  v104 = v24;
  *&v102 = v25;
  sub_275B075DC(&v102, inited + 24);
  v26 = type metadata accessor for DataCollectorUtils();
  v27 = *(inited + 48);
  v28 = *(inited + 56);
  v29 = __swift_project_boxed_opaque_existential_1((inited + 24), v27);
  *(inited + 72) = sub_275B202AC(v29, v18, v19, v20, v26, v27, v28);
  v91 = inited;
  sub_275B19CD4(inited + 24, &v102);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v30 = sub_275B7ABCC();
  sub_275B7AB2C();
  v31 = sub_275B7ABCC();
  v32 = v103;
  v33 = v104;
  __swift_project_boxed_opaque_existential_1(&v102, v103);
  v34 = (v33[19])(v31, v30, v32, v33);
  v35 = *(v34 + 16);
  v87 = v34;
  if (v35)
  {
    v36 = v34;
    v98 = sub_275B7AB2C();
    v37 = 0;
    v96 = v35 - 1;
    v38 = (v36 + 56);
    v39 = MEMORY[0x277D84F90];
    v97 = v35;
    do
    {
      v101 = v39;
      v40 = *(v38 - 2);
      v100 = *(v38 - 3);
      if (v37 < v96)
      {
        v41 = *v38;
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v42 = v104;
      __swift_project_boxed_opaque_existential_1(&v102, v103);
      v43 = v42[20];
      v99 = v100;
      v100 = v40;
      v44 = v43();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v39 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_275B11B44(0, *(v39 + 2) + 1, 1, v39);
      }

      v52 = *(v39 + 2);
      v51 = *(v39 + 3);
      if (v52 >= v51 >> 1)
      {
        v39 = sub_275B11B44((v51 > 1), v52 + 1, 1, v39);
      }

      ++v37;
      *(v39 + 2) = v52 + 1;
      v53 = &v39[48 * v52];
      v54 = v100;
      *(v53 + 4) = v99;
      *(v53 + 5) = v54;
      v53[48] = v44 & 1;
      *(v53 + 7) = v46;
      v53[64] = v48 & 1;
      *(v53 + 9) = v50;
      v38 += 2;
    }

    while (v97 != v37);
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(&v102);
  v55 = v91;
  *(v91 + 80) = v39;
  PFLDataCollector.buildMessages()();
  swift_beginAccess();
  v56 = *(v55 + 16);
  if (sub_275B79AFC())
  {

    v57 = v95;
  }

  else
  {
    v58 = type metadata accessor for PetToDESRecordStore();
    sub_275B19CD4(v85 + 16, &v102);
    v59 = v103;
    v60 = v104;
    v61 = __swift_mutable_project_boxed_opaque_existential_1(&v102, v103);
    sub_275B55CFC(v61, v56, v58, v59, v60);
    swift_bridgeObjectRetain_n();
    __swift_destroy_boxed_opaque_existential_1(&v102);
    PetToDESRecordStore.run()();
    v57 = v95;
    if (v62)
    {

      *&v102 = 0;
      *(&v102 + 1) = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD00000000000001ELL, 0x8000000275B85680);
      v105 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
      sub_275B7B0EC();
      sub_275B7A95C();

      v63 = v83;
      sub_275B79C4C();
      *&v102 = 0;
      *(&v102 + 1) = 0xE000000000000000;
      v105 = v62;
      sub_275B7B0EC();
      sub_275B79C3C();
      v64 = sub_275B797EC();
      MEMORY[0x28223BE20](v64, v65);
      *(&v83 - 2) = v63;
      sub_275B56E1C(&qword_280A33470, MEMORY[0x277D7F580]);
      sub_275B7968C();

      v66 = MEMORY[0x277D7F5F0];
      v67 = v63;
      return sub_275B56EBC(v67, v66);
    }

    v90 = 0;

    sub_275B7A91C();
  }

  sub_275B79BFC();
  v68 = *(v56 + 16);
  if (v68)
  {
    v69 = *(v57 + 1);
    v70 = *(v84 + 80);
    v101 = v56;
    v71 = v56 + ((v70 + 32) & ~v70);
    v72 = *(v84 + 72);
    do
    {
      v73 = v92;
      sub_275B56F1C(v71, v92, MEMORY[0x277D7F760]);
      sub_275B79ACC();
      sub_275B79BDC();
      sub_275B56E1C(&qword_280A338D8, MEMORY[0x277D7F760]);
      v74 = sub_275B7965C();
      v76 = v75;
      sub_275B56EBC(v73, MEMORY[0x277D7F760]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_275B11064(0, *(v69 + 2) + 1, 1, v69);
      }

      v78 = *(v69 + 2);
      v77 = *(v69 + 3);
      if (v78 >= v77 >> 1)
      {
        v69 = sub_275B11064((v77 > 1), v78 + 1, 1, v69);
      }

      *(v69 + 2) = v78 + 1;
      v79 = &v69[16 * v78];
      *(v79 + 4) = v74;
      *(v79 + 5) = v76;
      v57 = v95;
      sub_275B79BEC();
      v71 += v72;
      --v68;
    }

    while (v68);

    *(v57 + 1) = v69;
  }

  else
  {
  }

  v80 = sub_275B797EC();
  MEMORY[0x28223BE20](v80, v81);
  *(&v83 - 2) = v57;
  sub_275B56E1C(&qword_280A33470, MEMORY[0x277D7F580]);
  sub_275B7968C();

  v66 = MEMORY[0x277D7F5D0];
  v67 = v57;
  return sub_275B56EBC(v67, v66);
}

uint64_t sub_275B56C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *))
{
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v14 - v11;
  sub_275B56F1C(a2, &v14 - v11, a4);
  return a5(v12);
}

uint64_t PflDataAPI.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_275B56E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275B56EBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B56F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B56F84()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140DE30);
  __swift_project_value_buffer(v0, qword_28140DE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A338E8, &qword_275B7E7A8);
  return sub_275B7A97C();
}

uint64_t PFLDataCollectionPipeline.getLastRun(_:)()
{
  if ((sub_275B799FC() & 1) == 0)
  {
    return 0;
  }

  sub_275B799BC();
  return sub_275B7AB6C();
}

uint64_t PFLDataCollectionPipeline.updateLastRun(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_275B52ECC(a1, a2);
  sub_275B7AB5C();
  return sub_275B799CC();
}

uint64_t sub_275B570CC()
{
  if ((sub_275B799FC() & 1) == 0)
  {
    return 0;
  }

  sub_275B799BC();
  return sub_275B7AB6C();
}

uint64_t sub_275B57110@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_275B52ECC(a1, a2);
  sub_275B7AB5C();
  return sub_275B799CC();
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon25PFLDataCollectionPipelineV07runDataF0yyAA12BiomeManager_p_s5Int64VSayAA19LabeledNotificationVGSayAA0j6ICloudB0VGtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_28140DE28 != -1)
  {
    swift_once();
  }

  v7 = sub_275B7A96C();
  __swift_project_value_buffer(v7, qword_28140DE30);
  sub_275B7A91C();
  type metadata accessor for PFLDataCollector();
  inited = swift_initStackObject();
  v9 = MEMORY[0x277D84F90];
  *(inited + 16) = MEMORY[0x277D84F90];
  *(inited + 64) = a2;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  *(inited + 88) = 0;
  v10 = type metadata accessor for RealBiomeManager();
  v11 = swift_allocObject();
  *(inited + 48) = v10;
  *(inited + 56) = &protocol witness table for RealBiomeManager;
  *(inited + 24) = v11;

  PFLDataCollector.buildMessages()();
  v12 = type metadata accessor for RealDESRecordStore();
  v13 = swift_allocObject();
  v14 = objc_allocWithZone(MEMORY[0x277D05630]);
  v15 = sub_275B7ACDC();
  v16 = [v14 initWithBundleIdentifier_];

  if (v16)
  {
    *(v13 + 16) = v16;
    swift_beginAccess();
    v17 = *(inited + 16);
    type metadata accessor for PetToDESRecordStore();
    v18 = swift_initStackObject();
    v25 = v12;
    v26 = &protocol witness table for RealDESRecordStore;
    *&v24 = v13;
    *(v18 + 24) = v9;
    type metadata accessor for DESRecordStoreOperators();
    v19 = swift_allocObject();
    sub_275B075DC(&v24, v19 + 16);
    *(v18 + 16) = v19;
    *(v18 + 24) = v17;

    PetToDESRecordStore.run()();
    if (!v20)
    {

      sub_275B7A91C();
    }

    v21 = v20;
  }

  else
  {
    sub_275B2D020();
    v21 = swift_allocError();
    *v22 = 0xD000000000000024;
    v22[1] = 0x8000000275B85600;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD00000000000002FLL, 0x8000000275B85750);
  v27 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A95C();
}

uint64_t PFLDataCollector.__allocating_init(numOffsets:notifStartDaysUntilNow:notifEndDaysUntilNow:labelDurationInDays:dummyPflData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 64) = a1;
  *(v10 + 88) = a5;
  if (a5)
  {
    v11 = type metadata accessor for MockBiomeManager();
    v12 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v11 = type metadata accessor for RealBiomeManager();
    v12 = &protocol witness table for RealBiomeManager;
  }

  v49 = v11;
  v50 = v12;
  *&v48 = swift_allocObject();
  sub_275B075DC(&v48, v10 + 24);
  v13 = type metadata accessor for DataCollectorUtils();
  v14 = *(v10 + 48);
  v15 = *(v10 + 56);
  v16 = __swift_project_boxed_opaque_existential_1((v10 + 24), v14);
  *(v10 + 72) = sub_275B202AC(v16, a2, a3, a4, v13, v14, v15);
  v45 = v10;
  sub_275B19CD4(v10 + 24, &v48);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v17 = sub_275B7ABCC();
  sub_275B7AB2C();
  v18 = sub_275B7ABCC();
  v19 = v49;
  v20 = v50;
  __swift_project_boxed_opaque_existential_1(&v48, v49);
  v21 = (v20[19])(v18, v17, v19, v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v21;
    sub_275B7AB2C();
    v24 = 0;
    v25 = (v23 + 56);
    v26 = MEMORY[0x277D84F90];
    do
    {
      v47 = v26;
      v27 = *(v25 - 3);
      v28 = *(v25 - 2);
      if (v24 < v22 - 1)
      {
        v29 = *v25;
        v30 = *(v25 - 2);
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v31 = v50;
      __swift_project_boxed_opaque_existential_1(&v48, v49);
      v32 = v31[20];
      v46 = v27;
      v33 = v28;
      v34 = v32();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v26 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_275B11B44(0, *(v47 + 2) + 1, 1, v47);
      }

      v42 = *(v26 + 2);
      v41 = *(v26 + 3);
      if (v42 >= v41 >> 1)
      {
        v26 = sub_275B11B44((v41 > 1), v42 + 1, 1, v26);
      }

      ++v24;
      *(v26 + 2) = v42 + 1;
      v43 = &v26[48 * v42];
      *(v43 + 4) = v46;
      *(v43 + 5) = v33;
      v43[48] = v34 & 1;
      *(v43 + 7) = v36;
      v43[64] = v38 & 1;
      *(v43 + 9) = v40;
      v25 += 2;
    }

    while (v22 != v24);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(&v48);
  result = v45;
  *(v45 + 80) = v26;
  return result;
}

uint64_t PFLDataCollector.__allocating_init(numOffsets:notificationsFromNotifStream:notificationsFromSubStream:dummyPflData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  if (a4)
  {
    v9 = type metadata accessor for MockBiomeManager();
    v10 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v9 = type metadata accessor for RealBiomeManager();
    v10 = &protocol witness table for RealBiomeManager;
  }

  v13 = v9;
  v14 = v10;
  *&v12 = swift_allocObject();
  sub_275B075DC(&v12, v8 + 24);
  return v8;
}

uint64_t sub_275B57918()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A338F0);
  __swift_project_value_buffer(v0, qword_280A338F0);
  type metadata accessor for PFLDataCollector();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33918, &qword_275B7E820);
  return sub_275B7A97C();
}

uint64_t sub_275B57994()
{
  result = _s33iCloudSubscriptionOptimizerDaemon18PFLFeatureNameListC3getSayAA07FeatureF0OGyFZ_0();
  qword_280A33908 = result;
  return result;
}

uint64_t PFLDataCollector.pflMessages.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t PFLDataCollector.pflMessages.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t PFLDataCollector.init(numOffsets:notificationsFromNotifStream:notificationsFromSubStream:dummyPflData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 64) = a1;
  *(v4 + 16) = MEMORY[0x277D84F90];
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  if (a4)
  {
    v5 = type metadata accessor for MockBiomeManager();
    v6 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v5 = type metadata accessor for RealBiomeManager();
    v6 = &protocol witness table for RealBiomeManager;
  }

  v9 = v5;
  v10 = v6;
  *&v8 = swift_allocObject();
  sub_275B075DC(&v8, v4 + 24);
  return v4;
}

uint64_t PFLDataCollector.init(numOffsets:notifStartDaysUntilNow:notifEndDaysUntilNow:labelDurationInDays:dummyPflData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = MEMORY[0x277D84F90];
  *(v5 + 64) = a1;
  *(v5 + 88) = a5;
  if (a5)
  {
    v9 = type metadata accessor for MockBiomeManager();
    v10 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v9 = type metadata accessor for RealBiomeManager();
    v10 = &protocol witness table for RealBiomeManager;
  }

  v48 = v9;
  v49 = v10;
  *&v47 = swift_allocObject();
  sub_275B075DC(&v47, v5 + 24);
  v11 = type metadata accessor for DataCollectorUtils();
  sub_275B19CD4(v5 + 24, &v47);
  v12 = v48;
  v13 = v49;
  v14 = __swift_project_boxed_opaque_existential_1(&v47, v48);
  v15 = sub_275B202AC(v14, a2, a3, a4, v11, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  *(v5 + 72) = v15;
  v44 = v5;
  sub_275B19CD4(v5 + 24, &v47);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v16 = sub_275B7ABCC();
  sub_275B7AB2C();
  v17 = sub_275B7ABCC();
  v18 = v48;
  v19 = v49;
  __swift_project_boxed_opaque_existential_1(&v47, v48);
  v20 = (v19[19])(v17, v16, v18, v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20;
    sub_275B7AB2C();
    v23 = 0;
    v24 = (v22 + 56);
    v25 = MEMORY[0x277D84F90];
    do
    {
      v46 = v25;
      v26 = *(v24 - 3);
      v27 = *(v24 - 2);
      if (v23 < v21 - 1)
      {
        v28 = *v24;
        v29 = *(v24 - 2);
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v30 = v49;
      __swift_project_boxed_opaque_existential_1(&v47, v48);
      v31 = v30[20];
      v45 = v26;
      v32 = v27;
      v33 = v31();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v25 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_275B11B44(0, *(v46 + 2) + 1, 1, v46);
      }

      v41 = *(v25 + 2);
      v40 = *(v25 + 3);
      if (v41 >= v40 >> 1)
      {
        v25 = sub_275B11B44((v40 > 1), v41 + 1, 1, v25);
      }

      ++v23;
      *(v25 + 2) = v41 + 1;
      v42 = &v25[48 * v41];
      *(v42 + 4) = v45;
      *(v42 + 5) = v32;
      v42[48] = v33 & 1;
      *(v42 + 7) = v35;
      v42[64] = v37 & 1;
      *(v42 + 9) = v39;
      v24 += 2;
    }

    while (v21 != v23);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(&v47);
  result = v44;
  *(v44 + 80) = v25;
  return result;
}

Swift::Void __swiftcall PFLDataCollector.buildMessages()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33910, &qword_275B7E7B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v219 = &v200 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v200 - v7;
  v233 = sub_275B7A3CC();
  v9 = *(v233 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v233, v11);
  v208 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v207 = &v200 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v217 = (&v200 - v18);
  MEMORY[0x28223BE20](v19, v20);
  v220 = (&v200 - v21);
  MEMORY[0x28223BE20](v22, v23);
  v216 = &v200 - v24;
  v25 = *(v0 + 72);
  v26 = *(v25 + 16);
  v234 = v0;
  v27 = PFLDataCollector.selectOffsets(numOfNotifications:)(v26);
  v28 = *(v25 + 16);
  v213 = v9;
  v201 = v28;
  if (!v28)
  {

    v221 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  v29 = v25;
  v30 = 0;
  v204 = v25 + 32;
  v203 = 0x8000000275B851D0;
  v205 = v27;
  v202 = v27 + 32;
  v209 = 0x8000000275B82360;
  v229 = (v9 + 56);
  v214 = (v9 + 48);
  v215 = 0x8000000275B823E0;
  v218 = "ed to get float value ";
  v225 = "data to DESRecordStore. error=[";
  v238 = xmmword_275B7D0A0;
  v221 = MEMORY[0x277D84F90];
  v222 = v8;
  v200 = v25;
  while (1)
  {
    if (v30 >= *(v29 + 16))
    {
      goto LABEL_195;
    }

    v31 = v204 + 56 * v30;
    v33 = *v31;
    v32 = *(v31 + 8);
    v35 = *(v31 + 16);
    v34 = *(v31 + 24);
    v36 = *(v31 + 32);
    v212 = *(v31 + 40);
    v211 = *(v31 + 48);
    v37 = qword_280A32DF0;
    v210 = v30;

    if (v37 != -1)
    {
      swift_once();
    }

    v228 = sub_275B7A96C();
    v38 = __swift_project_value_buffer(v228, qword_280A338F0);
    v239[0] = 0;
    v239[1] = 0xE000000000000000;
    sub_275B7B09C();

    v239[0] = 32;
    v239[1] = 0xE100000000000000;

    MEMORY[0x277C89240](v34, v36);
    v206 = v36;

    MEMORY[0x277C89240](0x74697420646E6120, 0xEB0000000020656CLL);

    MEMORY[0x277C89240](v32, v35);

    v39 = v239[0];
    v40 = v239[1];
    v239[0] = 0xD000000000000032;
    v239[1] = v203;
    MEMORY[0x277C89240](v39, v40);

    v42 = v239[0];
    v41 = v239[1];
    v239[0] = 0;
    v239[1] = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0x656D697420746120, 0xEE0020706D617473);
    v226 = v33;
    v240 = v33;
    sub_275B7B0EC();
    MEMORY[0x277C89240](46, 0xE100000000000000);
    v43 = v239[0];
    v44 = v239[1];
    v239[0] = v42;
    v239[1] = v41;

    MEMORY[0x277C89240](v43, v44);

    v227 = v38;
    sub_275B7A91C();

    if (v210 >= *(v205 + 16))
    {
      break;
    }

    v45 = v210;
    v46 = *(v202 + 8 * v210);
    v231 = v46[2];
    if (v231)
    {
      LODWORD(v232) = *(v234 + 88);
      v230 = (v46 + 4);

      v47 = 0;
      v48 = v226;
      v224 = v35;
      v223 = v46;
      while (1)
      {
        if (v47 >= v46[2])
        {
          goto LABEL_193;
        }

        v235 = v47;
        v49 = v230[v47];
        v50 = v48;
        if (v232)
        {
          v50 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
        }

        v51 = _s33iCloudSubscriptionOptimizerDaemon18DataCollectorUtilsC18newFeatureProvideryAA0iJ0CAA12BiomeManager_p_01iabC4Core9TimestampVs5Int64VtFZ_0(v234 + 24, v50, v49);
        if (qword_280A32DF8 != -1)
        {
          swift_once();
        }

        v52 = v51[11];
        v51[11] = qword_280A33908;

        v237 = *(v51[11] + 16);
        if (!v237)
        {
          if (qword_280A32CE8 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v228, qword_280A33538);
          sub_275B7A95C();
          goto LABEL_12;
        }

        v53 = 0;
        v54 = MEMORY[0x277D84F90];
        v55 = MEMORY[0x277D84F90];
        v236 = v51;
        do
        {
          v56 = v51[11];
          if (v53 >= *(v56 + 16))
          {
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:

LABEL_87:
            v116 = *(v234 + 80);
            v117 = PFLDataCollector.selectOffsets(numOfNotifications:)(*(v116 + 16));
            v201 = *(v116 + 16);
            if (!v201)
            {
              v223 = MEMORY[0x277D84F90];
              goto LABEL_173;
            }

            v118 = v116;
            v119 = 0;
            v205 = v116 + 32;
            v204 = 0x8000000275B85210;
            v203 = "with buy label - ";
            v202 = v117 + 32;
            v211 = 0x8000000275B82360;
            v230 = (v213 + 56);
            v217 = (v213 + 48);
            v218 = 0x8000000275B823E0;
            v222 = "ed to get float value ";
            v227 = "data to DESRecordStore. error=[";
            v238 = xmmword_275B7D0A0;
            v223 = MEMORY[0x277D84F90];
            v210 = v117;
            v200 = v116;
LABEL_89:
            if (v119 >= *(v118 + 16))
            {
              goto LABEL_197;
            }

            v120 = v205 + 48 * v119;
            v121 = *v120;
            v122 = *(v120 + 8);
            LODWORD(v216) = *(v120 + 16);
            v215 = *(v120 + 24);
            LODWORD(v214) = *(v120 + 32);
            v212 = *(v120 + 40);
            v123 = qword_280A32DF0;
            v124 = v119;
            v209 = v121;
            if (v123 != -1)
            {
              swift_once();
            }

            v229 = sub_275B7A96C();
            v125 = __swift_project_value_buffer(v229, qword_280A338F0);
            v239[0] = 0;
            v239[1] = 0xE000000000000000;
            sub_275B7B09C();
            MEMORY[0x277C89240](0xD000000000000017, v203 | 0x8000000000000000);
            v240 = v122;
            sub_275B7B0EC();
            v126 = v239[0];
            v127 = v239[1];
            v239[0] = 0xD000000000000041;
            v239[1] = v204;
            MEMORY[0x277C89240](v126, v127);

            v228 = v125;
            sub_275B7A91C();

            if (v124 >= *(v210 + 16))
            {
              goto LABEL_198;
            }

            v206 = v124;
            v128 = *(v202 + 8 * v124);
            v232 = *(v128 + 2);
            if (!v232)
            {

              goto LABEL_170;
            }

            v129 = *(v234 + 88);
            v231 = v128 + 32;

            v130 = 0;
            v225 = v128;
            v226 = v122;
            LODWORD(v224) = v129;
            while (1)
            {
              if (v130 >= *(v128 + 2))
              {
                goto LABEL_194;
              }

              v132 = *&v231[8 * v130];
              v133 = v122;
              if (v129)
              {
                v133 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
              }

              v134 = _s33iCloudSubscriptionOptimizerDaemon18DataCollectorUtilsC18newFeatureProvideryAA0iJ0CAA12BiomeManager_p_01iabC4Core9TimestampVs5Int64VtFZ_0(v234 + 24, v133, v132);
              if (qword_280A32DF8 != -1)
              {
                swift_once();
              }

              v135 = v134[11];
              v134[11] = qword_280A33908;

              v237 = *(v134[11] + 16);
              if (v237)
              {
                break;
              }

              if (qword_280A32CE8 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v229, qword_280A33538);
              sub_275B7A95C();
LABEL_98:
              sub_275B7A95C();

              v131 = v219;
              (*v230)(v219, 1, 1, v233);
LABEL_99:
              sub_275B5A2E4(v131);
LABEL_100:
              if (++v130 == v232)
              {

LABEL_170:
                v119 = v206 + 1;
                v118 = v200;
                if (v206 + 1 == v201)
                {
LABEL_173:

                  v197 = _s33iCloudSubscriptionOptimizerDaemon16PFLDataCollectorC15joinPflMessages09openLabelI003buykI0Say01iabC4Core23SubscriptiondPFLMessageVGAJ_AJtFZ_0(v221, v223);

                  v198 = v234;
                  swift_beginAccess();
                  v199 = *(v198 + 16);
                  *(v198 + 16) = v197;

                  return;
                }

                goto LABEL_89;
              }
            }

            v235 = v130;
            v136 = 0;
            v137 = MEMORY[0x277D84F90];
            v138 = MEMORY[0x277D84F90];
            v236 = v134;
            while (2)
            {
              v139 = v134[11];
              if (v136 >= *(v139 + 16))
              {
                __break(1u);
LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
                goto LABEL_187;
              }

              v140 = *(v139 + v136 + 32);
              v141 = (*(*v134 + 400))(v140);
              v142 = *(v141 + 32);
              if (v142 == 3)
              {
                if (qword_280A32D80 != -1)
                {
                  swift_once();
                }

                v149 = static OHEVocabulary.kStringFeatureVocabMap;
                v150 = *(v141 + 16);
                if (!*(static OHEVocabulary.kStringFeatureVocabMap + 16) || (v151 = sub_275B182E4(*(v141 + 16)), (v152 & 1) == 0))
                {
                  if (qword_280A32CE0 != -1)
                  {
                    swift_once();
                  }

                  __swift_project_value_buffer(v229, qword_280A33500);
                  v239[0] = 0;
                  v239[1] = 0xE000000000000000;
                  sub_275B7B09C();

                  v239[0] = 0xD00000000000002ELL;
                  v239[1] = v211;
                  v193 = FeatureName.rawValue.getter(v150);
                  MEMORY[0x277C89240](v193);

                  sub_275B7A91C();

                  goto LABEL_165;
                }

                v153 = *(*(v149 + 56) + 8 * v151);
                v154 = *(v141 + 16);
                v155 = *(v141 + 24);

                v156 = [v155 stringValue];
                v157 = sub_275B7AD0C();
                v159 = v158;

                if (v154 == 4)
                {
                  v162 = _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC33getSimplifiedStringForDeviceModelyS2SFZ_0(v157, v159);
                }

                else
                {
                  if (v154 == 8)
                  {
                    v160 = _s33iCloudSubscriptionOptimizerDaemon16KnownAppBundleIdO8rawValueACSgSS_tcfC_0();
                    if (v160 == 8)
                    {
                      v161 = 7;
                    }

                    else
                    {
                      v161 = v160;
                    }

                    LOBYTE(v239[0]) = v161;
                    sub_275B7AD1C();
                  }

                  v162 = sub_275B7AD2C();
                }

                v164 = v162;
                v165 = v163;

                v166 = FeatureName.rawValue.getter(v150);
                v143 = _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC13buildOHEArrayySaySSG5names_SaySfG6valuestAE_S2StFZ_0(v153, v164, v165, v166, v167);
                v145 = v168;
              }

              else
              {
                if (v142 == 2)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
                  v143 = swift_allocObject();
                  *(v143 + 16) = v238;
                  *(v143 + 32) = FeatureName.rawValue.getter(*(v141 + 16));
                  *(v143 + 40) = v147;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E0, &unk_275B7C560);
                  v145 = swift_allocObject();
                  *(v145 + 16) = v238;
                  [*(v141 + 24) doubleValue];
                  v146 = v148;
                }

                else
                {
                  if (v142 != 1)
                  {

LABEL_165:

                    if (qword_280A32CE8 != -1)
                    {
                      swift_once();
                    }

                    __swift_project_value_buffer(v229, qword_280A33538);
                    strcpy(v239, "for feature ");
                    BYTE5(v239[1]) = 0;
                    HIWORD(v239[1]) = -5120;
                    v194 = FeatureName.rawValue.getter(v140);
                    MEMORY[0x277C89240](v194);

                    v195 = v239[0];
                    v196 = v239[1];
                    v239[0] = 0xD000000000000036;
                    v239[1] = v218;
                    MEMORY[0x277C89240](v195, v196);

                    sub_275B7A95C();

                    v128 = v225;
                    v122 = v226;
                    v129 = v224;
                    v130 = v235;
                    goto LABEL_98;
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
                  v143 = swift_allocObject();
                  *(v143 + 16) = v238;
                  *(v143 + 32) = FeatureName.rawValue.getter(*(v141 + 16));
                  *(v143 + 40) = v144;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E0, &unk_275B7C560);
                  v145 = swift_allocObject();
                  *(v145 + 16) = v238;
                  v146 = [*(v141 + 24) int64Value];
                }

                *(v145 + 32) = v146;
              }

              v169 = *(v143 + 16);
              v170 = *(v137 + 2);
              v171 = v170 + v169;
              if (__OFADD__(v170, v169))
              {
                goto LABEL_183;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (isUniquelyReferenced_nonNull_native && v171 <= *(v137 + 3) >> 1)
              {
                if (*(v143 + 16))
                {
LABEL_134:
                  if ((*(v137 + 3) >> 1) - *(v137 + 2) < v169)
                  {
                    goto LABEL_189;
                  }

                  swift_arrayInitWithCopy();

                  if (v169)
                  {
                    v173 = *(v137 + 2);
                    v91 = __OFADD__(v173, v169);
                    v174 = v173 + v169;
                    if (v91)
                    {
                      goto LABEL_191;
                    }

                    *(v137 + 2) = v174;
                  }

                  goto LABEL_143;
                }
              }

              else
              {
                if (v170 <= v171)
                {
                  v175 = v170 + v169;
                }

                else
                {
                  v175 = v170;
                }

                v137 = sub_275B11064(isUniquelyReferenced_nonNull_native, v175, 1, v137);
                if (*(v143 + 16))
                {
                  goto LABEL_134;
                }
              }

              if (v169)
              {
                goto LABEL_184;
              }

LABEL_143:
              v176 = *(v145 + 16);
              v177 = *(v138 + 2);
              v178 = v177 + v176;
              if (__OFADD__(v177, v176))
              {
                goto LABEL_185;
              }

              v179 = swift_isUniquelyReferenced_nonNull_native();
              if (!v179 || v178 > *(v138 + 3) >> 1)
              {
                if (v177 <= v178)
                {
                  v180 = v177 + v176;
                }

                else
                {
                  v180 = v177;
                }

                v138 = sub_275B114E0(v179, v180, 1, v138);
              }

              v134 = v236;
              if (*(v145 + 16))
              {
                v181 = *(v138 + 2);
                if ((*(v138 + 3) >> 1) - v181 < v176)
                {
                  goto LABEL_190;
                }

                memcpy(&v138[4 * v181 + 32], (v145 + 32), 4 * v176);

                if (v176)
                {
                  v182 = *(v138 + 2);
                  v91 = __OFADD__(v182, v176);
                  v183 = v182 + v176;
                  if (v91)
                  {
                    goto LABEL_192;
                  }

                  *(v138 + 2) = v183;
                }
              }

              else
              {

                if (v176)
                {
                  goto LABEL_186;
                }
              }

              if (v237 == ++v136)
              {
                v184 = v220;
                sub_275B7A3BC();
                _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();

                sub_275B7AB5C();
                sub_275B7A2FC();
                v185 = v184[1];

                v184[1] = v138;
                v186 = *v184;

                *v184 = v137;
                v129 = v224;
                sub_275B7A2CC();
                sub_275B7A2EC();
                v131 = v219;
                sub_275B55DF8(v184, v219);
                v187 = v233;
                (*v230)(v131, 0, 1, v233);
                sub_275B55E5C(v184);
                v188 = (*v217)(v131, 1, v187);
                v128 = v225;
                v122 = v226;
                v130 = v235;
                if (v188 == 1)
                {
                  goto LABEL_99;
                }

                v189 = v207;
                sub_275B5A760(v131, v207);
                sub_275B7A3AC();
                sub_275B7AB1C();
                sub_275B7A30C();
                sub_275B7A32C();
                sub_275B7AB1C();
                sub_275B7A36C();
                sub_275B55DF8(v189, v208);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v223 = sub_275B11790(0, v223[2] + 1, 1, v223);
                }

                v191 = v223[2];
                v190 = v223[3];
                if (v191 >= v190 >> 1)
                {
                  v223 = sub_275B11790(v190 > 1, v191 + 1, 1, v223);
                }

                sub_275B55E5C(v207);
                v192 = v223;
                v223[2] = v191 + 1;
                sub_275B5A760(v208, v192 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v191);
                goto LABEL_100;
              }

              continue;
            }
          }

          v57 = *(v56 + v53 + 32);
          v58 = (*(*v51 + 400))(v57);
          v59 = *(v58 + 32);
          if (v59 == 3)
          {
            if (qword_280A32D80 != -1)
            {
              swift_once();
            }

            v66 = static OHEVocabulary.kStringFeatureVocabMap;
            v67 = *(v58 + 16);
            if (!*(static OHEVocabulary.kStringFeatureVocabMap + 16) || (v68 = sub_275B182E4(*(v58 + 16)), (v69 & 1) == 0))
            {
              if (qword_280A32CE0 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v228, qword_280A33500);
              v239[0] = 0;
              v239[1] = 0xE000000000000000;
              sub_275B7B09C();

              v239[0] = 0xD00000000000002ELL;
              v239[1] = v209;
              v112 = FeatureName.rawValue.getter(v67);
              MEMORY[0x277C89240](v112);

              sub_275B7A91C();

              v8 = v222;
LABEL_79:

              if (qword_280A32CE8 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v228, qword_280A33538);
              strcpy(v239, "for feature ");
              BYTE5(v239[1]) = 0;
              HIWORD(v239[1]) = -5120;
              v113 = FeatureName.rawValue.getter(v57);
              MEMORY[0x277C89240](v113);

              v114 = v239[0];
              v115 = v239[1];
              v239[0] = 0xD000000000000036;
              v239[1] = v215;
              MEMORY[0x277C89240](v114, v115);

              sub_275B7A95C();

              v48 = v226;
              v46 = v223;
LABEL_12:
              sub_275B7A95C();

              (*v229)(v8, 1, 1, v233);
LABEL_13:
              sub_275B5A2E4(v8);
              goto LABEL_14;
            }

            v70 = *(*(v66 + 56) + 8 * v68);
            v71 = *(v58 + 16);
            v72 = *(v58 + 24);

            v73 = [v72 stringValue];
            v74 = sub_275B7AD0C();
            v76 = v75;

            if (v71 == 4)
            {
              v79 = _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC33getSimplifiedStringForDeviceModelyS2SFZ_0(v74, v76);
            }

            else
            {
              if (v71 == 8)
              {
                v77 = _s33iCloudSubscriptionOptimizerDaemon16KnownAppBundleIdO8rawValueACSgSS_tcfC_0();
                if (v77 == 8)
                {
                  v78 = 7;
                }

                else
                {
                  v78 = v77;
                }

                LOBYTE(v239[0]) = v78;
                sub_275B7AD1C();
              }

              v79 = sub_275B7AD2C();
            }

            v81 = v79;
            v82 = v80;

            v83 = FeatureName.rawValue.getter(v67);
            v60 = _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC13buildOHEArrayySaySSG5names_SaySfG6valuestAE_S2StFZ_0(v70, v81, v82, v83, v84);
            v62 = v85;
          }

          else
          {
            if (v59 == 2)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
              v60 = swift_allocObject();
              *(v60 + 16) = v238;
              *(v60 + 32) = FeatureName.rawValue.getter(*(v58 + 16));
              *(v60 + 40) = v64;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E0, &unk_275B7C560);
              v62 = swift_allocObject();
              *(v62 + 16) = v238;
              [*(v58 + 24) doubleValue];
              v63 = v65;
            }

            else
            {
              if (v59 != 1)
              {

                v8 = v222;
                goto LABEL_79;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
              v60 = swift_allocObject();
              *(v60 + 16) = v238;
              *(v60 + 32) = FeatureName.rawValue.getter(*(v58 + 16));
              *(v60 + 40) = v61;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E0, &unk_275B7C560);
              v62 = swift_allocObject();
              *(v62 + 16) = v238;
              v63 = [*(v58 + 24) int64Value];
            }

            *(v62 + 32) = v63;
          }

          v86 = *(v60 + 16);
          v87 = *(v54 + 2);
          v88 = v87 + v86;
          if (__OFADD__(v87, v86))
          {
            goto LABEL_175;
          }

          v89 = swift_isUniquelyReferenced_nonNull_native();
          if (v89 && v88 <= *(v54 + 3) >> 1)
          {
            if (!*(v60 + 16))
            {
              goto LABEL_56;
            }
          }

          else
          {
            if (v87 <= v88)
            {
              v93 = v87 + v86;
            }

            else
            {
              v93 = v87;
            }

            v54 = sub_275B11064(v89, v93, 1, v54);
            if (!*(v60 + 16))
            {
LABEL_56:

              if (v86)
              {
                goto LABEL_176;
              }

              goto LABEL_57;
            }
          }

          if ((*(v54 + 3) >> 1) - *(v54 + 2) < v86)
          {
            goto LABEL_179;
          }

          swift_arrayInitWithCopy();

          if (v86)
          {
            v90 = *(v54 + 2);
            v91 = __OFADD__(v90, v86);
            v92 = v90 + v86;
            if (v91)
            {
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
              goto LABEL_196;
            }

            *(v54 + 2) = v92;
          }

LABEL_57:
          v94 = *(v62 + 16);
          v95 = *(v55 + 2);
          v96 = v95 + v94;
          if (__OFADD__(v95, v94))
          {
            goto LABEL_177;
          }

          v97 = swift_isUniquelyReferenced_nonNull_native();
          if (!v97 || v96 > *(v55 + 3) >> 1)
          {
            if (v95 <= v96)
            {
              v98 = v95 + v94;
            }

            else
            {
              v98 = v95;
            }

            v55 = sub_275B114E0(v97, v98, 1, v55);
          }

          v51 = v236;
          if (*(v62 + 16))
          {
            v99 = *(v55 + 2);
            if ((*(v55 + 3) >> 1) - v99 < v94)
            {
              goto LABEL_180;
            }

            memcpy(&v55[4 * v99 + 32], (v62 + 32), 4 * v94);

            if (v94)
            {
              v100 = *(v55 + 2);
              v91 = __OFADD__(v100, v94);
              v101 = v100 + v94;
              if (v91)
              {
                goto LABEL_188;
              }

              *(v55 + 2) = v101;
            }
          }

          else
          {

            if (v94)
            {
              goto LABEL_178;
            }
          }

          ++v53;
        }

        while (v237 != v53);
        v102 = v220;
        sub_275B7A3BC();
        _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();

        sub_275B7AB5C();
        sub_275B7A2FC();
        v103 = v102[1];

        v102[1] = v55;
        v104 = *v102;

        *v102 = v54;
        sub_275B7A2CC();
        sub_275B7A2EC();
        v8 = v222;
        sub_275B55DF8(v102, v222);
        v105 = v233;
        (*v229)(v8, 0, 1, v233);
        sub_275B55E5C(v102);
        v106 = (*v214)(v8, 1, v105);
        v48 = v226;
        v46 = v223;
        if (v106 == 1)
        {
          goto LABEL_13;
        }

        v107 = v216;
        sub_275B5A760(v8, v216);
        sub_275B7AB1C();
        sub_275B7A39C();
        v108 = dword_275B7E82C[v212];
        sub_275B7A34C();
        sub_275B55DF8(v107, v217);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v221 = sub_275B11790(0, v221[2] + 1, 1, v221);
        }

        v110 = v221[2];
        v109 = v221[3];
        if (v110 >= v109 >> 1)
        {
          v221 = sub_275B11790(v109 > 1, v110 + 1, 1, v221);
        }

        sub_275B55E5C(v216);
        v111 = v221;
        v221[2] = v110 + 1;
        sub_275B5A760(v217, v111 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v110);
LABEL_14:
        v47 = v235 + 1;
        if ((v235 + 1) == v231)
        {

          v45 = v210;
          break;
        }
      }
    }

    v30 = v45 + 1;

    v29 = v200;
    if (v30 == v201)
    {
      goto LABEL_181;
    }
  }

LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
}

uint64_t PFLDataCollector.selectOffsets(numOfNotifications:)(unint64_t a1)
{
  v3 = *(v1 + 64);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v6 = a1 * v4;
  if ((a1 * v4) >> 64 != (a1 * v4) >> 63)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v6 >= 0xA)
  {
    v2 = 10;
  }

  else
  {
    v2 = a1 * v4;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_86;
  }

  if (!a1)
  {
    v7 = MEMORY[0x277D84F90];
    if (v6 < 1)
    {
      goto LABEL_22;
    }

LABEL_11:
    v8 = 0;
    v9 = v7 + 32;
    while (1)
    {
      if (v8 == a1)
      {
        if (!v2)
        {
          goto LABEL_22;
        }

          ;
        }

        v8 = 0;
      }

      if (v8 >= a1)
      {
        goto LABEL_76;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_77;
      }

      if (v8 >= *(v7 + 16))
      {
        goto LABEL_78;
      }

      v10 = *(v9 + 8 * v8);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_79;
      }

      *(v9 + 8 * v8++) = v12;
      if (v2-- <= 1)
      {
        goto LABEL_22;
      }
    }
  }

  v7 = sub_275B7AEAC();
  *(v7 + 16) = a1;
  bzero((v7 + 32), 8 * a1);
  if (v6 >= 1)
  {
    goto LABEL_11;
  }

LABEL_22:
  v14 = MEMORY[0x277D84F90];
  if (v3 < 1)
  {
    v15 = MEMORY[0x277D84F90];
    if (a1)
    {
LABEL_25:
      v16 = 0;
      v2 = 0;
      v45 = v7 + 32;
      v17 = v14;
      v43 = v7;
      while (1)
      {
        v46 = v14;
        v18 = *(v7 + 16);
        if (v16 >= v18)
        {
          break;
        }

        if (*(v45 + 8 * v16) < 1)
        {
          v19 = v14;
          if (v16 >= v18)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v19 = sub_275B1160C(0, 1, 1, v14);
          v21 = *(v19 + 2);
          v20 = *(v19 + 3);
          if (v21 >= v20 >> 1)
          {
            v19 = sub_275B1160C((v20 > 1), v21 + 1, 1, v19);
          }

          *(v19 + 2) = v21 + 1;
          *&v19[8 * v21 + 32] = 0;
          v46 = v19;
          v18 = *(v7 + 16);
          if (v16 >= v18)
          {
            goto LABEL_74;
          }
        }

        v22 = *(v45 + 8 * v16);
        v11 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v11)
        {
          goto LABEL_75;
        }

        if (v23 >= 1)
        {
          v44 = v17;
          v24 = v15[2];
          if (v24)
          {
            if (v24 != 1)
            {
              v25 = 0;
              v26 = v24 - 2;
              while (1)
              {
                v47 = 0;
                MEMORY[0x277C89DC0](&v47, 8);
                v28 = (v47 * v24) >> 64;
                if (v24 > v47 * v24)
                {
                  v29 = -v24 % v24;
                  if (v29 > v47 * v24)
                  {
                    do
                    {
                      v47 = 0;
                      MEMORY[0x277C89DC0](&v47, 8);
                    }

                    while (v29 > v47 * v24);
                    v28 = (v47 * v24) >> 64;
                  }
                }

                v30 = v25 + v28;
                if (__OFADD__(v25, v28))
                {
                  break;
                }

                if (v25 != v30)
                {
                  v31 = v15[2];
                  if (v25 >= v31)
                  {
                    goto LABEL_69;
                  }

                  if (v30 >= v31)
                  {
                    goto LABEL_70;
                  }

                  v32 = v15[v25 + 4];
                  v33 = v15[v30 + 4];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = sub_275B5A2BC(v15);
                  }

                  v34 = v15[2];
                  if (v25 >= v34)
                  {
                    goto LABEL_71;
                  }

                  v15[v25 + 4] = v33;
                  if (v30 >= v34)
                  {
                    goto LABEL_72;
                  }

                  v15[v30 + 4] = v32;
                }

                --v24;
                if (v25++ == v26)
                {
                  v18 = *(v43 + 16);
                  goto LABEL_53;
                }
              }

              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              break;
            }

LABEL_53:
            if (v16 >= v18)
            {
              goto LABEL_80;
            }

            v35 = *(v45 + 8 * v16);
            v11 = __OFSUB__(v35, 1);
            v36 = v35 - 1;
            if (v11)
            {
              goto LABEL_81;
            }

            if ((v36 & 0x8000000000000000) != 0)
            {
              goto LABEL_82;
            }

            if (v15[2] < v36)
            {
              goto LABEL_83;
            }

            v37 = (2 * v36) | 1;

            sub_275B3098C(v38, (v15 + 4), 0, v37);
            v19 = v46;
          }

          v17 = v44;
        }

        v47 = v19;

        sub_275B59FF4(&v47);

        v39 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_275B1176C(0, v17[2] + 1, 1, v17);
        }

        v41 = v17[2];
        v40 = v17[3];
        if (v41 >= v40 >> 1)
        {
          v17 = sub_275B1176C((v40 > 1), v41 + 1, 1, v17);
        }

        ++v16;
        v17[2] = v41 + 1;
        v17[v41 + 4] = v39;
        v7 = v43;
        v14 = MEMORY[0x277D84F90];
        if (v16 == a1)
        {

          return v17;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  else
  {
    v15 = sub_275B0B754(v3, 0);
    if (sub_275B5A1C8(&v46, (v15 + 4), v3, 1, v3) != v3)
    {
LABEL_87:
      __break(1u);

      __break(1u);
      return result;
    }

    v14 = MEMORY[0x277D84F90];
    if (a1)
    {
      goto LABEL_25;
    }
  }

  return MEMORY[0x277D84F90];
}