void *PFLDataCollector.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[9];

  v3 = v0[10];

  return v0;
}

uint64_t PFLDataCollector.__deallocating_deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[9];

  v3 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_275B59FF4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275B5A2BC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_275B7B18C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_275B7AEAC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_275B16C5C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_275B5A128(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_275B5A1B4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_275B5A1C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_275B5A2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33910, &qword_275B7E7B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int64_t _s33iCloudSubscriptionOptimizerDaemon16PFLDataCollectorC15joinPflMessages09openLabelI003buykI0Say01iabC4Core23SubscriptiondPFLMessageVGAJ_AJtFZ_0(int64_t a1, void *a2)
{
  v7 = sub_275B7A3CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v43 - v15;
  v17 = *(a1 + 16);
  v18 = a2[2];
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v19 < 11)
  {

    goto LABEL_23;
  }

  if (!v17)
  {
    a1 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v2 = sub_275B11790(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = *(v8 + 72);
  v44 = (a1 + v4);
  v45 = v20;
  sub_275B55DF8(a1 + v4, v16);
  a1 = v2[2];
  v19 = v2[3];
  v3 = a1 + 1;
  if (a1 >= v19 >> 1)
  {
    goto LABEL_34;
  }

LABEL_5:
  v2[2] = v3;
  v21 = v2 + v4 + a1 * v45;
  v22 = v45;
  sub_275B5A760(v16, v21);
  if (v17 != 1)
  {
    sub_275B55DF8(&v44[v22], v16);
    a1 = v2[2];
    v19 = v2[3];
    v3 = a1 + 1;
    if (a1 >= v19 >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_7;
  }

  while (1)
  {
    a1 = v2;
LABEL_20:
    v19 = *(a1 + 16);
    v2 = (v19 - 10);
    if (v19 > 0xA)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      v2 = sub_275B11790(v19 > 1, v3, 1, v2);
      goto LABEL_5;
    }

    if (v19 == 10)
    {
      a2 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }

    if (v18)
    {
      break;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v2 = sub_275B11790(v19 > 1, v3, 1, v2);
LABEL_7:
    v2[2] = v3;
    v23 = v2 + v4 + a1 * v45;
    v24 = v45;
    sub_275B5A760(v16, v23);
    if (v17 != 2)
    {
      sub_275B55DF8(&v44[2 * v24], v16);
      v26 = v2[2];
      v25 = v2[3];
      v3 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v2 = sub_275B11790(v25 > 1, v26 + 1, 1, v2);
      }

      v2[2] = v3;
      v27 = v2 + v4 + v26 * v45;
      v28 = v45;
      sub_275B5A760(v16, v27);
      if (v17 != 3)
      {
        sub_275B55DF8(&v44[3 * v28], v16);
        v30 = v2[2];
        v29 = v2[3];
        v3 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v2 = sub_275B11790(v29 > 1, v30 + 1, 1, v2);
        }

        v2[2] = v3;
        v31 = v2 + v4 + v30 * v45;
        v32 = v45;
        sub_275B5A760(v16, v31);
        if (v17 != 4)
        {
          sub_275B55DF8(&v44[4 * v32], v16);
          v34 = v2[2];
          v33 = v2[3];
          v3 = v34 + 1;
          if (v34 >= v33 >> 1)
          {
            v2 = sub_275B11790(v33 > 1, v34 + 1, 1, v2);
          }

          v2[2] = v3;
          sub_275B5A760(v16, v2 + v4 + v34 * v45);
        }
      }
    }
  }

  v19 = 9 - v19;
  if (v19 >= v18)
  {
    goto LABEL_36;
  }

  v36 = sub_275B11790(0, 1, 1, MEMORY[0x277D84F90]);
  v37 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v38 = a2 + v37;
  v39 = *(v8 + 72);
  a2 = v36;
  do
  {
    sub_275B55DF8(v38, v12);
    v41 = a2[2];
    v40 = a2[3];
    if (v41 >= v40 >> 1)
    {
      a2 = sub_275B11790(v40 > 1, v41 + 1, 1, a2);
    }

    a2[2] = v41 + 1;
    sub_275B5A760(v12, a2 + v37 + v41 * v39);
    v38 += v39;
    v42 = __CFADD__(v2, 1);
    v2 = (v2 + 1);
  }

  while (!v42);
LABEL_23:
  v46 = a1;
  sub_275B30AA0(a2);
  return v46;
}

uint64_t sub_275B5A760(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7A3CC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PflDataStoreEvent.__allocating_init(withSink:)(uint64_t *a1)
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
  MEMORY[0x277C89240](0x53617461446C6670, 0xEC00000065726F74);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t PflDataStoreEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x53617461446C6670, 0xEC00000065726F74);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t PflDataStoreEvent.addDuration(_:)()
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t PflDataStoreEvent.addMessagesFetched(_:)()
{
  sub_275B79B7C();
}

uint64_t PflDataStoreEvent.addMessagesToWrite(_:)()
{
  sub_275B79B7C();
}

uint64_t PflDataStoreEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon18PFLFeatureNameListC3getSayAA07FeatureF0OGyFZ_0()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(&unk_2884A7FB0 + v0 + 32);
    if (((1 << v4) & 0x4BFF0FC7FFFEFFLL) != 0)
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

uint64_t sub_275B5AD80()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33920);
  __swift_project_value_buffer(v0, qword_280A33920);
  type metadata accessor for PingAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33948, &unk_275B7E8C0);
  return sub_275B7A97C();
}

uint64_t PingAPI.getResponse(request:)(uint64_t a1)
{
  v2 = sub_275B79C2C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280A32E00 != -1)
  {
    swift_once();
  }

  v7 = sub_275B7A96C();
  __swift_project_value_buffer(v7, qword_280A33920);
  strcpy(v15, "PingRequest=");
  HIBYTE(v15[6]) = 0;
  v15[7] = -5120;
  sub_275B79BCC();
  sub_275B5B308(&qword_280A33938, MEMORY[0x277D7F5C8]);
  v8 = sub_275B7965C();
  MEMORY[0x277C89240](v8);

  sub_275B7A91C();

  MEMORY[0x28223BE20](v9, v10);
  *&v14[-16] = a1;
  sub_275B5B308(&qword_280A33940, MEMORY[0x277D7F5E0]);
  sub_275B7968C();
  v11 = sub_275B797EC();
  MEMORY[0x28223BE20](v11, v12);
  *&v14[-16] = v6;
  sub_275B5B308(&qword_280A33470, MEMORY[0x277D7F580]);
  sub_275B7968C();
  return sub_275B5B350(v6);
}

uint64_t sub_275B5B0B4()
{
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B85930);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  HIDWORD(v2[1]) = -335544318;
  MEMORY[0x277C89240](0, 0xE000000000000000);

  strcpy(v2, " clientMsg=[");
  v0 = sub_275B79BBC();
  MEMORY[0x277C89240](v0);

  MEMORY[0x277C89240](93, 0xE100000000000000);

  MEMORY[0x277C89240](v2[0], v2[1]);

  return sub_275B79C1C();
}

uint64_t sub_275B5B258(uint64_t a1, uint64_t a2)
{
  v3 = sub_275B79C2C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_275B5B3E8(a2, &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_275B797AC();
}

uint64_t sub_275B5B308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275B5B350(uint64_t a1)
{
  v2 = sub_275B79C2C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B5B3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79C2C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *static QuotaDaemonNotifierFactory.indXpcClientWithBackoff()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ICloudNotificationXpcClient();
  v3 = swift_allocObject();
  v4 = sub_275B79CFC();
  v6 = *v4;
  v5 = v4[1];
  type metadata accessor for DaemonStateManager();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = qword_280A32C38;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static BackingOffINDNotifier.kDefaultBackoffDuration;
  v10 = type metadata accessor for BackingOffINDNotifier();
  result = swift_allocObject();
  result[5] = v2;
  result[6] = &off_2884AA078;
  result[2] = v3;
  result[7] = v7;
  result[8] = v9;
  a1[3] = v10;
  a1[4] = &protocol witness table for BackingOffINDNotifier;
  *a1 = result;
  return result;
}

uint64_t static QuotaDaemonNotifierFactory.indXpcClient()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ICloudNotificationXpcClient();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_2884AA078;
  *a1 = result;
  return result;
}

uint64_t RealAssetInterface.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void RealAssetInterface.getLocalUrl()()
{
  v1 = [*(v0 + 16) getLocalUrl];
  if (v1)
  {
    v2 = v1;
    sub_275B794BC();
  }

  else
  {
    __break(1u);
  }
}

void RealAssetInterface.startCatalogDownload(_:options:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v9 = sub_275B7ACDC();
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_275B5B780;
  v11[3] = &block_descriptor_5;
  v10 = _Block_copy(v11);

  [v8 startCatalogDownload:v9 options:a3 then:v10];
  _Block_release(v10);
}

uint64_t sub_275B5B780(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void RealAssetInterface.startDownload(_:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_275B5B780;
  v8[3] = &block_descriptor_3;
  v6 = _Block_copy(v8);
  v7 = v5;

  [v7 startDownload:a1 then:v6];
  _Block_release(v6);
}

id RealAssetInterface.getAttributes()()
{
  result = [*(v0 + 16) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_275B7AC8C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RealAssetInterface.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_275B5B994()
{
  result = [*(*v0 + 16) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_275B7AC8C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_275B5BA04()
{
  v1 = [*(*v0 + 16) getLocalUrl];
  if (v1)
  {
    v2 = v1;
    sub_275B794BC();
  }

  else
  {
    __break(1u);
  }
}

void sub_275B5BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v9 = sub_275B7ACDC();
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_275B5B780;
  v11[3] = &block_descriptor_9_1;
  v10 = _Block_copy(v11);

  [v8 startCatalogDownload:v9 options:a3 then:v10];
  _Block_release(v10);
}

uint64_t sub_275B5BBD4()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140DF10);
  __swift_project_value_buffer(v0, qword_28140DF10);
  type metadata accessor for RealBatteryStateProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33950, "ʕ");
  return sub_275B7A97C();
}

Swift::Bool __swiftcall RealBatteryStateProvider.isCharging()()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = _s33iCloudSubscriptionOptimizerDaemon24RealBatteryStateProviderC10isCharging6deviceSbSo8UIDeviceC_tFZ_0(v0);

  return v1;
}

BOOL sub_275B5BCD4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = _s33iCloudSubscriptionOptimizerDaemon24RealBatteryStateProviderC10isCharging6deviceSbSo8UIDeviceC_tFZ_0(v0);

  return v1;
}

BOOL _s33iCloudSubscriptionOptimizerDaemon24RealBatteryStateProviderC10isCharging6deviceSbSo8UIDeviceC_tFZ_0(void *a1)
{
  [a1 setBatteryMonitoringEnabled_];
  v2 = [a1 batteryState];
  [a1 setBatteryMonitoringEnabled_];
  if (qword_28140DF08 != -1)
  {
    swift_once();
  }

  v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
  v4 = sub_275B7A96C();
  __swift_project_value_buffer(v4, qword_28140DF10);
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD00000000000001FLL, 0x8000000275B85A50);
  type metadata accessor for BatteryState(0);
  sub_275B7B0EC();
  MEMORY[0x277C89240](0x726168437369205DLL, 0xEE005B3D676E6967);
  v5 = (v2 & 0xFFFFFFFFFFFFFFFELL) == 2;
  if (v3 == 2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v3 == 2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x277C89240](v6, v7);

  MEMORY[0x277C89240](11869, 0xE200000000000000);
  sub_275B7A91C();

  return v5;
}

uint64_t RealBiomeManager.getIsDoNotDisturbOn(timestamp:)()
{
  type metadata accessor for BiomeFocusSleep();
  if (static BiomeFocusSleep.getEnabledFocusMode(timestamp:)() == 0xD000000000000023 && 0x8000000275B7FC60 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_275B7B1BC();
  }

  return v1 & 1;
}

uint64_t RealBiomeManager.getIsDrivingModeOn(timestamp:)()
{
  type metadata accessor for BiomeFocusSleep();
  if (static BiomeFocusSleep.getEnabledFocusMode(timestamp:)() == 0xD000000000000023 && 0x8000000275B7FC90 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_275B7B1BC();
  }

  return v1 & 1;
}

uint64_t RealBiomeManager.getAppLaunch1w(timestamp:)(uint64_t a1)
{
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  sub_275B7AB2C();
  v2 = sub_275B7ABCC();
  return static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v2, a1, &unk_2884A7E98);
}

__n128 RealBiomeManager.getNotificationFeatures1w(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275B7AB2C();
  v4 = sub_275B7ABCC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v5 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v4, a1, 0, 0xE000000000000000);
  sub_275B15F6C(v5, v8);

  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

__n128 RealBiomeManager.getICloudNotificationFeatures2w(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275B7AB2C();
  v4 = sub_275B7ABCC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v5 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v4, a1, 0xD000000000000019, 0x8000000275B7F610);
  sub_275B15F6C(v5, v8);

  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t RealBiomeManager.getAppLaunchSameSlotLast24Hours(displayTimestamp:offsetTimeInterval:)()
{
  v0 = sub_275B7AC4C();
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  v1 = sub_275B7ABBC();
  return static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v0, v1, MEMORY[0x277D84F90]);
}

__n128 RealBiomeManager.getNotificationFeaturesSameSlotLast24Hours(displayTimestamp:offsetTimeInterval:)@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_275B7AC4C();
  v3 = sub_275B7ABBC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v4 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v2, v3, 0, 0xE000000000000000);
  sub_275B15F6C(v4, v7);

  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t RealBiomeManager.getMinsSinceLastAppLaunch1w(timestamp:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BiomeAppLaunch.MinsSinceLastAppLaunch();
  v6 = sub_275B7AC4C();
  return static BiomeAppLaunch.MinsSinceLastAppLaunch.get(appBundleId:startTime:endTime:)(a2, a3, v6, a1);
}

uint64_t RealBiomeManager.getUserTier(_:)(uint64_t a1)
{
  sub_275B7AB2C();
  v2 = sub_275B7ABCC();

  return static BiomeICloudSubscription.UserTier.get(_:_:)(a1, v2);
}

uint64_t sub_275B5C5AC()
{
  type metadata accessor for BiomeFocusSleep();
  if (static BiomeFocusSleep.getEnabledFocusMode(timestamp:)() == 0xD000000000000023 && 0x8000000275B7FC60 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_275B7B1BC();
  }

  return v1 & 1;
}

uint64_t sub_275B5C640()
{
  type metadata accessor for BiomeFocusSleep();
  if (static BiomeFocusSleep.getEnabledFocusMode(timestamp:)() == 0xD000000000000023 && 0x8000000275B7FC90 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_275B7B1BC();
  }

  return v1 & 1;
}

uint64_t sub_275B5C6D4(uint64_t a1)
{
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  sub_275B7AB2C();
  v2 = sub_275B7ABCC();
  return static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v2, a1, &unk_2884A7E98);
}

__n128 sub_275B5C738@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275B7AB2C();
  v4 = sub_275B7ABCC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v5 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v4, a1, 0, 0xE000000000000000);
  sub_275B15F6C(v5, v8);

  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_275B5C7F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275B7AB2C();
  v4 = sub_275B7ABCC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v5 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v4, a1, 0xD000000000000019, 0x8000000275B7F610);
  sub_275B15F6C(v5, v8);

  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_275B5C8FC()
{
  v0 = sub_275B7AC4C();
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  v1 = sub_275B7ABBC();
  return static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v0, v1, MEMORY[0x277D84F90]);
}

__n128 sub_275B5C978@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_275B7AC4C();
  v3 = sub_275B7ABBC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v4 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v2, v3, 0, 0xE000000000000000);
  sub_275B15F6C(v4, v7);

  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_275B5CA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BiomeAppLaunch.MinsSinceLastAppLaunch();
  v6 = sub_275B7AC4C();
  return static BiomeAppLaunch.MinsSinceLastAppLaunch.get(appBundleId:startTime:endTime:)(a2, a3, v6, a1);
}

uint64_t sub_275B5CAEC(uint64_t a1)
{
  sub_275B7AB2C();
  v2 = sub_275B7ABCC();

  return static BiomeICloudSubscription.UserTier.get(_:_:)(a1, v2);
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon16RealBiomeManagerC28getAppLaunchCountStatsLast2w16displayTimestamp18offsetTimeIntervalAA0fL0C05photoL0_AH03alliL0t01iabC4Core0O0V_AK0Q5DeltaVtF_0()
{
  v0 = sub_275B7AEAC();
  *(v0 + 16) = 14;
  *(v0 + 32) = 0u;
  v24 = v0 + 32;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  v26 = v0;
  v1 = sub_275B7AEAC();
  *(v1 + 16) = 14;
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  *(v1 + 32) = 0u;
  v23 = v1 + 32;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  v2 = 1;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  v25 = v1;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = sub_275B7AC4C();
    v5 = sub_275B7ABBC();
    result = static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v4, v5, v3);
    v7 = result;
    v8 = *(result + 16);
    if (v8)
    {
      break;
    }

    v9 = v3;
    v12 = *(v3 + 16);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_12:
    v13 = 0;
LABEL_13:
    v17 = v2 - 1;

    if ((v2 - 1) >= *(v26 + 16))
    {
      goto LABEL_23;
    }

    *(v24 + 8 * v17) = v13;
    if (*(v7 + 16) && (v18 = sub_275B180D4(0xD000000000000019, 0x8000000275B7F3C0), (v19 & 1) != 0))
    {
      v20 = *(*(v7 + 56) + 8 * v18);
    }

    else
    {
      v20 = 0;
    }

    if (v17 >= *(v25 + 16))
    {
      goto LABEL_24;
    }

    *(v23 + 8 * v17) = v20;
    if (v2++ == 14)
    {
      v22 = _s33iCloudSubscriptionOptimizerDaemon10BiomeStatsC03geteF08forArrayACSaySiG_tFZ_0(v25);

      _s33iCloudSubscriptionOptimizerDaemon10BiomeStatsC03geteF08forArrayACSaySiG_tFZ_0(v26);

      return v22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33178, &unk_275B7C570);
  v9 = swift_allocObject();
  v10 = _swift_stdlib_malloc_size(v9);
  v11 = v10 - 32;
  if (v10 < 32)
  {
    v11 = v10 - 25;
  }

  v9[2] = v8;
  v9[3] = 2 * (v11 >> 3);
  v27 = sub_275B0B83C(&v28, v9 + 4, v8, v7);

  result = sub_275B0C684();
  if (v27 != v8)
  {
    goto LABEL_25;
  }

  v12 = v9[2];
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_7:
  v13 = 0;
  v14 = v9 + 4;
  while (1)
  {
    v15 = *v14++;
    v16 = __OFADD__(v13, v15);
    v13 += v15;
    if (v16)
    {
      break;
    }

    if (!--v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

char *_s33iCloudSubscriptionOptimizerDaemon16RealBiomeManagerC14getFocusMode2w16displayTimestampSaySSG01iabC4Core0L0V_tF_0()
{
  v0 = type metadata accessor for BiomeFocusSleep();
  sub_275B7AC4C();
  v27 = v0;
  v1 = static BiomeFocusSleep.getEnabledFocusMode(timestamp:)();
  v3 = v2;
  v4 = sub_275B11064(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_275B11064((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = v1;
  *(v7 + 5) = v3;
  v26 = objc_opt_self();
  sub_275B0F00C();
  for (i = 2; i != 15; ++i)
  {
    v28 = v4;
    sub_275B7AC4C();
    v9 = [v26 userFocusComputedMode];
    sub_275B7AC4C();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0xE000000000000000;
    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x277D84F90];
    v12 = sub_275B7AB3C();
    v13 = sub_275B7AB3C();
    v14 = sub_275B7AF9C();
    v15 = [v9 publisherWithStartTime:v12 endTime:v13 maxEvents:v14 reversed:1];

    v33 = nullsub_1;
    v34 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_275B0C864;
    v32 = &block_descriptor_16;
    v16 = _Block_copy(&aBlock);
    v17 = swift_allocObject();
    v17[2] = v27;
    v17[3] = v10;
    v17[4] = v11;
    v33 = sub_275B0F594;
    v34 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_275B0C864;
    v32 = &block_descriptor_22;
    v18 = _Block_copy(&aBlock);

    v19 = [v15 sinkWithCompletion:v16 receiveInput:v18];

    _Block_release(v18);
    _Block_release(v16);

    v4 = v28;
    swift_beginAccess();
    v20 = *(v10 + 16);
    v21 = *(v10 + 24);

    v23 = *(v28 + 2);
    v22 = *(v28 + 3);
    if (v23 >= v22 >> 1)
    {
      v4 = sub_275B11064((v22 > 1), v23 + 1, 1, v28);
    }

    *(v4 + 2) = v23 + 1;
    v24 = &v4[16 * v23];
    *(v24 + 4) = v20;
    *(v24 + 5) = v21;
  }

  return v4;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon16RealBiomeManagerC19getSleepModeCount2w16displayTimestampSi01iabC4Core0M0V_tF_0()
{
  v15 = type metadata accessor for BiomeFocusSleep();
  v14 = objc_opt_self();
  sub_275B0F00C();
  v0 = 0;
  v1 = 1;
  while (1)
  {
    sub_275B7AC4C();
    v2 = [v14 sleepModeStream];
    sub_275B7AC4C();
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    v4 = sub_275B7AB3C();
    v5 = sub_275B7AB3C();
    v6 = sub_275B7AF9C();
    v7 = [v2 publisherWithStartTime:v4 endTime:v5 maxEvents:v6 reversed:1];

    v20 = nullsub_1;
    v21 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_275B0C864;
    v19 = &block_descriptor_6;
    v8 = _Block_copy(&aBlock);
    v9 = swift_allocObject();
    *(v9 + 16) = v15;
    *(v9 + 24) = v3;
    v20 = sub_275B0F0F4;
    v21 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_275B0C864;
    v19 = &block_descriptor_7_0;
    v10 = _Block_copy(&aBlock);

    v11 = [v7 sinkWithCompletion:v8 receiveInput:v10];

    _Block_release(v10);
    _Block_release(v8);

    swift_beginAccess();
    LODWORD(v8) = *(v3 + 16);

    if (v8 == 1 && __OFADD__(v0++, 1))
    {
      break;
    }

    if (++v1 == 15)
    {
      return v0;
    }
  }

  __break(1u);
  return v0;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon16RealBiomeManagerC31getNotificationCountStatsLast2w16displayTimestamp18offsetTimeIntervalAA0fK0C05totaljK0_AH06openedjK0t01iabC4Core0N0V_AK0P5DeltaVtF_0()
{
  v0 = sub_275B7AEAC();
  *(v0 + 16) = 14;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  v1 = sub_275B7AEAC();
  *(v1 + 16) = 14;
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  v2 = 4;
  *(v1 + 128) = 0u;
  while (1)
  {
    v3 = sub_275B7AC4C();
    v4 = sub_275B7ABBC();
    v5 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v3, v4, 0, 0xE000000000000000);
    sub_275B15F6C(v5, v10);

    v7 = v2 - 4;
    if ((v2 - 4) >= *(v0 + 16))
    {
      break;
    }

    *(v0 + 8 * v2) = v10[0];
    v8 = v10[1];
    result = sub_275B13748(v10);
    if (v7 >= *(v1 + 16))
    {
      goto LABEL_7;
    }

    *(v1 + 8 * v2++) = v8;
    if (v7 == 13)
    {
      v9 = _s33iCloudSubscriptionOptimizerDaemon10BiomeStatsC03geteF08forArrayACSaySiG_tFZ_0(v0);

      _s33iCloudSubscriptionOptimizerDaemon10BiomeStatsC03geteF08forArrayACSaySiG_tFZ_0(v1);

      return v9;
    }
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t RealDESRecordStore.__allocating_init()()
{
  v0 = swift_allocObject();
  RealDESRecordStore.init()();
  return v0;
}

uint64_t RealDESRecordStore.init()()
{
  v1 = objc_allocWithZone(MEMORY[0x277D05630]);
  v2 = sub_275B7ACDC();
  v3 = [v1 initWithBundleIdentifier_];

  if (v3)
  {
    *(v0 + 16) = v3;
  }

  else
  {
    sub_275B2D020();
    swift_allocError();
    *v4 = 0xD000000000000024;
    v4[1] = 0x8000000275B85600;
    swift_willThrow();
    type metadata accessor for RealDESRecordStore();
    swift_deallocPartialClassInstance();
  }

  return v0;
}

void RealDESRecordStore.saveRecord(with:recordInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  v9 = sub_275B7951C();
  v10 = sub_275B7AC7C();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_275B5D920;
  v12[3] = &block_descriptor_7;
  v11 = _Block_copy(v12);

  [v8 saveRecordWithData:v9 recordInfo:v10 completion:v11];
  _Block_release(v11);
}

uint64_t sub_275B5D920(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33958, &qword_275B7EAC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v17 - v9;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a2)
  {
    sub_275B795EC();
    v13 = sub_275B795FC();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_275B795FC();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = a3;
  v12(v10, a3);

  return sub_275B5DF10(v10);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void RealDESRecordStore.fetchSavedRecordInfo(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_275B5DB40;
  v6[3] = &block_descriptor_3_0;
  v4 = _Block_copy(v6);
  v5 = v3;

  [v5 fetchSavedRecordInfoWithCompletion_];
  _Block_release(v4);
}

uint64_t sub_275B5DB40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_275B795FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33260, &qword_275B7C6C0);
    sub_275B5DEB8();
    v4 = sub_275B7AC8C();
  }

  v7 = a3;
  v6(v4, a3);
}

void RealDESRecordStore.deleteSavedRecord(withIdentfier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = sub_275B795DC();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_275B28178;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_275B36A24;
  v10[3] = &block_descriptor_6_0;
  v9 = _Block_copy(v10);

  [v6 deleteSavedRecordWithIdentfier:v7 completion:v9];
  _Block_release(v9);
}

uint64_t RealDESRecordStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_275B5DD88(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_275B5DB40;
  v6[3] = &block_descriptor_12_0;
  v4 = _Block_copy(v6);
  v5 = v3;

  [v5 fetchSavedRecordInfoWithCompletion_];
  _Block_release(v4);
}

unint64_t sub_275B5DEB8()
{
  result = qword_28140FBD8;
  if (!qword_28140FBD8)
  {
    sub_275B795FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140FBD8);
  }

  return result;
}

uint64_t sub_275B5DF10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33958, &qword_275B7EAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B5DF90()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33960);
  __swift_project_value_buffer(v0, qword_280A33960);
  type metadata accessor for ShadowEvaluationAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33990, "̔");
  return sub_275B7A97C();
}

void *ShadowEvaluationAPI.__allocating_init(withMobileAssetLocalManager:withShadowModeModelProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v4[4] = MEMORY[0x277D84F90];
  v4[5] = v5;
  v6 = type metadata accessor for RealBiomeManager();
  v7 = swift_allocObject();
  v4[9] = v6;
  v4[10] = &protocol witness table for RealBiomeManager;
  v4[6] = v7;
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

void *ShadowEvaluationAPI.init(withMobileAssetLocalManager:withShadowModeModelProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84F90];
  v2[4] = MEMORY[0x277D84F90];
  v2[5] = v5;
  v6 = type metadata accessor for RealBiomeManager();
  v7 = swift_allocObject();
  v2[9] = v6;
  v2[10] = &protocol witness table for RealBiomeManager;
  v2[6] = v7;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t ShadowEvaluationAPI.getResponse(request:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v126 = a2;
  v125 = sub_275B7A54C();
  v120 = *(v125 - 8);
  v5 = *(v120 + 64);
  MEMORY[0x28223BE20](v125, v6);
  v124 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_275B7A6DC();
  v119 = *(v123 - 8);
  v8 = *(v119 + 64);
  MEMORY[0x28223BE20](v123, v9);
  v122 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_275B7A42C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v121 = (&v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_275B7AA6C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_275B79C5C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280A32E10 != -1)
  {
    swift_once();
  }

  v25 = sub_275B7A96C();
  __swift_project_value_buffer(v25, qword_280A33960);
  v128 = 0;
  v129 = 0xE000000000000000;
  sub_275B7B09C();

  v128 = 0xD000000000000024;
  v129 = 0x8000000275B85B40;
  sub_275B7A2AC();
  sub_275B60964(&qword_280A33978, MEMORY[0x277D7F750]);
  v26 = sub_275B7965C();
  MEMORY[0x277C89240](v26);

  sub_275B7A91C();

  sub_275B5F07C();
  v27 = *a1;

  v29 = sub_275B31714(v28);

  v33 = (*(**(v3 + 24) + 112))(v30);
  if (!*(v33 + 16))
  {

    sub_275B79C4C();
    sub_275B79C3C();
    v54 = sub_275B797EC();
    MEMORY[0x28223BE20](v54, v55);
    *(&v111 - 2) = v24;
    sub_275B60964(&qword_280A33470, MEMORY[0x277D7F580]);
LABEL_12:
    sub_275B7968C();
    goto LABEL_13;
  }

  v34 = sub_275B6046C(v29, v33);

  if (v34[2] != *(v29 + 16))
  {
    sub_275B6074C(v29, v34);

    v128 = 0;
    v129 = 0xE000000000000000;
    sub_275B7B09C();
    v56 = sub_275B7AF3C();
    v58 = v57;

    v128 = v56;
    v129 = v58;
    MEMORY[0x277C89240](0xD000000000000022, 0x8000000275B85B70);
    sub_275B79C4C();
    sub_275B79C3C();
    v59 = sub_275B797EC();
    MEMORY[0x28223BE20](v59, v60);
    *(&v111 - 2) = v24;
    sub_275B60964(&qword_280A33470, MEMORY[0x277D7F580]);
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_275B19CD4(v3 + 48, &v128);
  v35 = sub_275B7A24C();
  v36 = *(v3 + 40);
  v37 = qword_280A32E18;
  v116 = *(v3 + 32);

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v15, static ShadowModePipeline.kDefaultTrialSet);
  sub_275B60AF0(v38, v19, MEMORY[0x277D7F888]);
  v117 = sub_275B7A25C();
  v39 = *(v3 + 16);
  v40 = type metadata accessor for ShadowModeEvaluator();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = MEMORY[0x277D84F90];
  *(v43 + 88) = MEMORY[0x277D84F90];
  *(v43 + 96) = v44;
  v111 = v43 + 96;
  *(v43 + 104) = v44;
  v112 = v43 + 104;
  *(v43 + 112) = v44;
  *(v43 + 120) = v44;
  *(v43 + 128) = v44;
  sub_275B19CD4(&v128, v43 + 16);
  *(v43 + 56) = v35;
  *(v43 + 88) = v34;
  v45 = *(v36 + 16);
  v118 = v39;
  if (!v45)
  {

    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33270, &qword_275B7C6D0);
  result = swift_allocObject();
  *(result + 16) = xmmword_275B7D0A0;
  v47 = *(v36 + 16);
  if (v47)
  {
    v48 = result;
    v49 = (v36 + 48 * v47);
    v50 = *(v49 - 2);
    v51 = *(v49 - 1);
    v52 = *v49;
    v114 = *(v49 + 1);
    v113 = v49[16];
    v115 = *(v49 + 3);

    v53 = v50;

    *(v48 + 32) = v53;
    *(v48 + 40) = v51;
    *(v48 + 48) = v52;
    *(v48 + 56) = v114;
    *(v48 + 64) = v113;
    v36 = v48;
    *(v48 + 72) = v115;
LABEL_16:
    *(v43 + 120) = v36;
    v63 = v116;
    v64 = *(v116 + 16);
    if (v64)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_275B7D0A0;
      v66 = v63 + 56 * v64;
      v67 = *(v66 - 8);
      v68 = *v66;
      v69 = *(v66 + 8);
      v70 = *(v66 + 16);
      v71 = *(v66 + 24);
      *(v65 + 32) = *(v66 - 24);
      *(v65 + 48) = v67;
      *(v65 + 56) = v68;
      *(v65 + 64) = v69;
      *(v65 + 72) = v70;
      *(v65 + 80) = v71;

      v63 = v65;
    }

    __swift_destroy_boxed_opaque_existential_1(&v128);
    *(v43 + 112) = v63;
    *(v43 + 128) = &unk_2884A8308;
    sub_275B60A88(v19, v43 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet, MEMORY[0x277D7F888]);
    *(v43 + 72) = v117 & 1;
    v72 = v118;
    *(v43 + 64) = v118;
    type metadata accessor for ModelProvider();
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v43 + 80) = v73;
    *(v43 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen) = 4320;

    ShadowModeEvaluator.runOnOpenLabelNotifications()();
    if (!v74)
    {
      ShadowModeEvaluator.runOnBuyLabelNotifications()();
      if (!v74)
      {
        v78 = v112;
        v79 = v111;
        if ((v117 & 1) == 0)
        {
          swift_beginAccess();
          if (*(*v79 + 16) || (swift_beginAccess(), *(*v78 + 16)))
          {
            ShadowModeEvaluator.publishMetrics()();
          }
        }

        v80 = v121;
        sub_275B7A41C();
        sub_275B7A28C();
        sub_275B7A40C();
        swift_beginAccess();
        v81 = *v79;
        swift_beginAccess();
        v82 = *v78;
        v83 = *(v81 + 16);
        v118 = *v78;
        if (v83)
        {
          v84 = *v80;
          v85 = v81 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
          v86 = *(v119 + 72);
          v119 = v81;

          do
          {
            v87 = v122;
            sub_275B60AF0(v85, v122, MEMORY[0x277D7F7C0]);
            sub_275B60964(&qword_280A33980, MEMORY[0x277D7F7C0]);
            v88 = sub_275B7965C();
            v90 = v89;
            sub_275B60A28(v87, MEMORY[0x277D7F7C0]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v84 = sub_275B11064(0, *(v84 + 2) + 1, 1, v84);
            }

            v92 = *(v84 + 2);
            v91 = *(v84 + 3);
            if (v92 >= v91 >> 1)
            {
              v84 = sub_275B11064((v91 > 1), v92 + 1, 1, v84);
            }

            *(v84 + 2) = v92 + 1;
            v93 = &v84[16 * v92];
            *(v93 + 4) = v88;
            *(v93 + 5) = v90;
            v85 += v86;
            --v83;
          }

          while (v83);

          v80 = v121;
          *v121 = v84;
          v82 = v118;
        }

        else
        {
        }

        v94 = *(v82 + 16);
        if (v94)
        {
          v95 = v80[1];
          v96 = v82 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
          v97 = *(v120 + 72);
          do
          {
            v98 = v124;
            sub_275B60AF0(v96, v124, MEMORY[0x277D7F7A0]);
            sub_275B60964(&qword_280A33988, MEMORY[0x277D7F7A0]);
            v99 = sub_275B7965C();
            v101 = v100;
            sub_275B60A28(v98, MEMORY[0x277D7F7A0]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = sub_275B11064(0, *(v95 + 2) + 1, 1, v95);
            }

            v103 = *(v95 + 2);
            v102 = *(v95 + 3);
            if (v103 >= v102 >> 1)
            {
              v95 = sub_275B11064((v102 > 1), v103 + 1, 1, v95);
            }

            *(v95 + 2) = v103 + 1;
            v104 = &v95[16 * v103];
            *(v104 + 4) = v99;
            *(v104 + 5) = v101;
            v96 += v97;
            --v94;
          }

          while (v94);

          v105 = v121;
          v121[1] = v95;
        }

        else
        {

          v105 = v80;
        }

        v106 = sub_275B797EC();
        MEMORY[0x28223BE20](v106, v107);
        *(&v111 - 2) = v105;
        sub_275B60964(&qword_280A33470, MEMORY[0x277D7F580]);
        sub_275B7968C();
        swift_setDeallocating();
        v108 = *ShadowModeEvaluator.deinit();
        v109 = *(v108 + 48);
        v110 = *(v108 + 52);
        swift_deallocClassInstance();
        v61 = MEMORY[0x277D7F780];
        v62 = v105;
        return sub_275B60A28(v62, v61);
      }
    }

    swift_setDeallocating();
    v75 = *ShadowModeEvaluator.deinit();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_deallocClassInstance();
    v128 = 0;
    v129 = 0xE000000000000000;
    v127 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
    sub_275B7B0EC();
    sub_275B79C4C();
    sub_275B79C3C();
    v31 = sub_275B797EC();
    MEMORY[0x28223BE20](v31, v32);
    *(&v111 - 2) = v24;
    sub_275B60964(&qword_280A33470, MEMORY[0x277D7F580]);
    sub_275B7968C();

LABEL_13:
    v61 = MEMORY[0x277D7F5F0];
    v62 = v24;
    return sub_275B60A28(v62, v61);
  }

  __break(1u);
  return result;
}

uint64_t sub_275B5EFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *))
{
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v14 - v11;
  sub_275B60AF0(a2, &v14 - v11, a4);
  return a5(v12);
}

uint64_t sub_275B5F07C()
{
  if (sub_275B7A28C())
  {
    v1 = type metadata accessor for MockBiomeManager();
    v2 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v1 = type metadata accessor for RealBiomeManager();
    v2 = &protocol witness table for RealBiomeManager;
  }

  v45 = v1;
  v46 = v2;
  *&v44 = swift_allocObject();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  sub_275B075DC(&v44, v0 + 48);
  swift_endAccess();
  v3 = type metadata accessor for DataCollectorUtils();
  sub_275B19CD4(v0 + 48, &v44);
  v4 = sub_275B7A29C();
  v5 = sub_275B7A27C();
  v6 = sub_275B7A26C();
  v7 = v45;
  v8 = v46;
  v9 = __swift_project_boxed_opaque_existential_1(&v44, v45);
  v10 = sub_275B202AC(v9, v4, v5, v6, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  v11 = *(v0 + 32);
  *(v0 + 32) = v10;

  v41 = v0;
  sub_275B19CD4(v0 + 48, &v44);
  sub_275B7A29C();
  sub_275B7A27C();
  sub_275B7A26C();
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v12 = sub_275B7ABCC();
  sub_275B7AB2C();
  v13 = sub_275B7ABCC();
  v14 = v45;
  v15 = v46;
  __swift_project_boxed_opaque_existential_1(&v44, v45);
  v16 = (v15[19])(v13, v12, v14, v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16;
    sub_275B7AB2C();
    v19 = 0;
    v20 = (v18 + 56);
    v21 = MEMORY[0x277D84F90];
    do
    {
      v43 = v21;
      v22 = *(v20 - 3);
      v23 = *(v20 - 2);
      if (v19 < v17 - 1)
      {
        v24 = *v20;
        v25 = *(v20 - 2);
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v26 = v46;
      __swift_project_boxed_opaque_existential_1(&v44, v45);
      v27 = v26[20];
      v42 = v22;
      v28 = v23;
      v29 = v27();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v21 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_275B11B44(0, *(v43 + 2) + 1, 1, v43);
      }

      v37 = *(v21 + 2);
      v36 = *(v21 + 3);
      if (v37 >= v36 >> 1)
      {
        v21 = sub_275B11B44((v36 > 1), v37 + 1, 1, v21);
      }

      ++v19;
      *(v21 + 2) = v37 + 1;
      v38 = &v21[48 * v37];
      *(v38 + 4) = v42;
      *(v38 + 5) = v28;
      v38[48] = v29 & 1;
      *(v38 + 7) = v31;
      v38[64] = v33 & 1;
      *(v38 + 9) = v35;
      v20 += 2;
    }

    while (v17 != v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(&v44);
  v39 = *(v41 + 40);
  *(v41 + 40) = v21;
}

void *ShadowEvaluationAPI.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  return v0;
}

uint64_t ShadowEvaluationAPI.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return swift_deallocClassInstance();
}

void *sub_275B5F4C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33570, &unk_275B7D2D0);
  v2 = *v0;
  v3 = sub_275B7B06C();
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

uint64_t sub_275B5F61C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_275B5FCB8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_275B5F748(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v70 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v51 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v57 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v61 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v65 = (a2 + 56);

  v15 = 0;
  v63 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v64 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_275B7B26C();

    sub_275B7AD7C();
    v24 = sub_275B7B2AC();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v63;
    v15 = v64;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_275B7B1BC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v63;
  v28 = v64;
  v67 = v61;
  v68 = v64;
  v69 = v11;
  v66[0] = v63;
  v66[1] = v7;

  v31 = *(v5 + 32);
  v58 = ((1 << v31) + 63) >> 6;
  v14 = 8 * v58;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v59 = &v57;
    MEMORY[0x28223BE20](v29, v30);
    v2 = &v57 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v65, v32);
    v33 = *(v2 + 8 * v8) & ~v4;
    v34 = *(v5 + 16);
    v62 = v2;
    *(v2 + 8 * v8) = v33;
    v35 = v34 - 1;
LABEL_23:
    v60 = v35;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v37 = v28;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v12)
      {
        v5 = sub_275B6002C(v62, v58, v60, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v38);
      ++v37;
      if (v11)
      {
        v28 = v38;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v39 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v40 = *(v3 + 48);
            v64 = v28;
            v41 = (v40 + ((v28 << 10) | (16 * v39)));
            v42 = *v41;
            v4 = v41[1];
            v43 = *(v5 + 40);
            sub_275B7B26C();

            sub_275B7AD7C();
            v44 = sub_275B7B2AC();
            v45 = -1 << *(v5 + 32);
            v8 = v44 & ~v45;
            v2 = v8 >> 6;
            v46 = 1 << v8;
            if (((1 << v8) & v65[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v64;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v47 = (*(v5 + 48) + 16 * v8);
          if (*v47 != v42 || v47[1] != v4)
          {
            v49 = ~v45;
            while ((sub_275B7B1BC() & 1) == 0)
            {
              v8 = (v8 + 1) & v49;
              v2 = v8 >> 6;
              v46 = 1 << v8;
              if (((1 << v8) & v65[v8 >> 6]) == 0)
              {
                v3 = v63;
                goto LABEL_45;
              }

              v50 = (*(v5 + 48) + 16 * v8);
              if (*v50 == v42 && v50[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v63;
          v36 = v62[v2];
          v62[v2] = v36 & ~v46;
          v27 = (v36 & v46) == 0;
          v28 = v64;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v35 = v60 - 1;
        if (__OFSUB__(v60, 1))
        {
          __break(1u);
        }

        if (v60 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v53 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v64;
  }

  v54 = swift_slowAlloc();
  memcpy(v54, v65, v53);
  v55 = v57;
  v56 = sub_275B5FDF4(v54, v58, v5, v2, v66);

  if (!v55)
  {

    MEMORY[0x277C89DA0](v54, -1, -1);
    v61 = v67;
    v5 = v56;
LABEL_52:
    sub_275B0C684();
    goto LABEL_53;
  }

  result = MEMORY[0x277C89DA0](v54, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_275B5FCB8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_275B7B26C();
  sub_275B7AD7C();
  v7 = sub_275B7B2AC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_275B7B1BC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_275B5F4C0();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_275B60250(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_275B5FDF4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_275B6002C(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_275B7B26C();

        sub_275B7AD7C();
        v20 = sub_275B7B2AC();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_275B7B1BC() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_275B6002C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33570, &unk_275B7D2D0);
  result = sub_275B7B08C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_275B7B26C();

    sub_275B7AD7C();
    result = sub_275B7B2AC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_275B60250(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_275B7B02C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_275B7B26C();

        sub_275B7AD7C();
        v15 = sub_275B7B2AC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_275B6046C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShadowModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v12 = (&v29 - v11);
  v33 = *(a2 + 16);
  if (!v33)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = 0;
  v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v32 = a2 + v30;
  v14 = *(v10 + 72);
  v15 = a1 + 56;
  v16 = MEMORY[0x277D84F90];
  do
  {
    sub_275B60AF0(v32 + v14 * v13, v12, type metadata accessor for ShadowModel);
    if (!*(a1 + 16))
    {
      goto LABEL_3;
    }

    v17 = *v12;
    v18 = v12[1];
    v19 = *(a1 + 40);
    sub_275B7B26C();
    sub_275B7AD7C();
    v20 = sub_275B7B2AC();
    v21 = -1 << *(a1 + 32);
    v22 = v20 & ~v21;
    if ((*(v15 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = (*(a1 + 48) + 16 * v22);
        v25 = *v24 == v17 && v24[1] == v18;
        if (v25 || (sub_275B7B1BC() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v15 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_275B60AF0(v12, v31, type metadata accessor for ShadowModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_275B115E4(0, v16[2] + 1, 1, v16);
      }

      v27 = v16[2];
      v26 = v16[3];
      if (v27 >= v26 >> 1)
      {
        v16 = sub_275B115E4(v26 > 1, v27 + 1, 1, v16);
      }

      sub_275B60A28(v12, type metadata accessor for ShadowModel);
      v16[2] = v27 + 1;
      sub_275B60A88(v31, v16 + v30 + v27 * v14, type metadata accessor for ShadowModel);
    }

    else
    {
LABEL_3:
      sub_275B60A28(v12, type metadata accessor for ShadowModel);
    }

    ++v13;
  }

  while (v13 != v33);
  return v16;
}

uint64_t sub_275B6074C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShadowModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    v13 = MEMORY[0x277D84F90];
    do
    {
      sub_275B60AF0(v11, v9, type metadata accessor for ShadowModel);
      v15 = *v9;
      v14 = v9[1];

      sub_275B60A28(v9, type metadata accessor for ShadowModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_275B11064(0, *(v13 + 2) + 1, 1, v13);
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_275B11064((v16 > 1), v17 + 1, 1, v13);
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v19 = sub_275B31714(v13);

  if (*(v19 + 16) <= *(a1 + 16) >> 3)
  {
    v23 = a1;

    sub_275B5F61C(v19);

    return v23;
  }

  else
  {

    v20 = sub_275B5F748(v19, a1);

    return v20;
  }
}

uint64_t sub_275B60964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275B60A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B60A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B60AF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ShadowModeEvaluator.__allocating_init(biomeManager:numOffsets:shadowModeModels:notificationsFromNotifStream:notificationsFromSubStream:trialSet:percentiles:minsUntilOpen:skipPublishMetrics:withMobileAssetLocalManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v16 = *(v10 + 48);
  v17 = *(v10 + 52);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D84F90];
  *(v18 + 88) = MEMORY[0x277D84F90];
  *(v18 + 96) = v19;
  *(v18 + 104) = v19;
  *(v18 + 112) = v19;
  *(v18 + 120) = v19;
  *(v18 + 128) = v19;
  v40 = a1;
  sub_275B19CD4(a1, v18 + 16);
  *(v18 + 56) = a2;
  *(v18 + 88) = a3;
  v20 = *(a5 + 16);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33270, &qword_275B7C6D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_275B7D0A0;
    v22 = a5 + 48 * v20;
    v23 = *(v22 - 8);
    v24 = *v22;
    v25 = *(v22 + 8);
    v26 = *(v22 + 16);
    v27 = *(v22 + 24);
    v28 = *(v22 - 16);

    *(v21 + 32) = v28;
    *(v21 + 40) = v23;
    *(v21 + 48) = v24;
    *(v21 + 56) = v25;
    *(v21 + 64) = v26;
    a5 = v21;
    *(v21 + 72) = v27;
  }

  *(v18 + 120) = a5;
  v29 = *(a4 + 16);
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
    v30 = swift_allocObject();
    v31 = a4 + 56 * v29;
    v32 = *(v31 - 8);
    v33 = *v31;
    v34 = *(v31 + 8);
    v35 = *(v31 + 16);
    v36 = *(v31 + 24);
    v37 = *(v31 - 24);
    *(v30 + 16) = xmmword_275B7D0A0;
    *(v30 + 32) = v37;
    *(v30 + 48) = v32;
    *(v30 + 56) = v33;
    *(v30 + 64) = v34;
    *(v30 + 72) = v35;
    *(v30 + 80) = v36;

    a4 = v30;
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  *(v18 + 112) = a4;
  *(v18 + 128) = a7;
  sub_275B60FD8(a6, v18 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet);
  *(v18 + 72) = a9 & 1;
  *(v18 + 64) = a10;
  type metadata accessor for ModelProvider();
  v38 = swift_allocObject();
  *(v38 + 16) = a10;
  *(v18 + 80) = v38;
  *(v18 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen) = a8;

  return v18;
}

uint64_t ShadowModeEvaluator.init(biomeManager:numOffsets:shadowModeModels:notificationsFromNotifStream:notificationsFromSubStream:trialSet:percentiles:minsUntilOpen:skipPublishMetrics:withMobileAssetLocalManager:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v15 = MEMORY[0x277D84F90];
  *(v10 + 88) = MEMORY[0x277D84F90];
  *(v10 + 96) = v15;
  *(v10 + 104) = v15;
  *(v10 + 112) = v15;
  *(v10 + 120) = v15;
  *(v10 + 128) = v15;
  sub_275B19CD4(a1, v10 + 16);
  *(v10 + 56) = a2;
  *(v10 + 88) = a3;
  v16 = *(a5 + 16);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33270, &qword_275B7C6D0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_275B7D0A0;
    v18 = a5 + 48 * v16;
    v19 = *(v18 - 8);
    v20 = *v18;
    v21 = *(v18 + 8);
    v22 = *(v18 + 16);
    v23 = *(v18 + 24);
    v24 = *(v18 - 16);

    *(v17 + 32) = v24;
    *(v17 + 40) = v19;
    *(v17 + 48) = v20;
    *(v17 + 56) = v21;
    *(v17 + 64) = v22;
    a5 = v17;
    *(v17 + 72) = v23;
  }

  v25 = *(v10 + 120);
  *(v10 + 120) = a5;

  v26 = *(a4 + 16);
  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
    v27 = swift_allocObject();
    v28 = a4 + 56 * v26;
    v29 = *(v28 - 8);
    v30 = *v28;
    v31 = *(v28 + 8);
    v32 = *(v28 + 16);
    v33 = *(v28 + 24);
    v34 = *(v28 - 24);
    *(v27 + 16) = xmmword_275B7D0A0;
    *(v27 + 32) = v34;
    *(v27 + 48) = v29;
    *(v27 + 56) = v30;
    *(v27 + 64) = v31;
    *(v27 + 72) = v32;
    *(v27 + 80) = v33;

    a4 = v27;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v35 = *(v10 + 112);
  *(v10 + 112) = a4;

  v36 = *(v10 + 128);
  *(v10 + 128) = a7;

  sub_275B60FD8(a6, v10 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet);
  *(v10 + 72) = a9 & 1;
  *(v10 + 64) = a10;
  type metadata accessor for ModelProvider();
  v37 = swift_allocObject();
  *(v37 + 16) = a10;
  *(v10 + 80) = v37;
  *(v10 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen) = a8;

  return v10;
}

uint64_t sub_275B60FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7AA6C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShadowModeEvaluator.run()()
{
  ShadowModeEvaluator.runOnOpenLabelNotifications()();
  if (!v1)
  {
    ShadowModeEvaluator.runOnBuyLabelNotifications()();
    if (!v2 && (*(v0 + 72) & 1) == 0)
    {
      swift_beginAccess();
      if (*(*(v0 + 96) + 16) || (swift_beginAccess(), *(*(v0 + 104) + 16)))
      {
        ShadowModeEvaluator.publishMetrics()();
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShadowModeEvaluator.runOnBuyLabelNotifications()()
{
  v2 = sub_275B7AA6C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[15];
  v48 = *(v6 + 16);
  if (v48)
  {
    v54 = v1;
    v46 = sub_275B7AB2C();
    v45 = 0x8000000275B82DD0;
    v41 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen;
    v44 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet;
    v43 = v0[10];
    v42 = v0[7];

    v7 = 0;
    v8 = (v6 + 72);
    v47 = v6;
    while (v7 < *(v6 + 16))
    {
      v9 = *(v8 - 4);
      v53 = *(v8 - 5);
      v51 = v7;
      v52 = v9;
      if (*(v8 - 8) != 1 || (v10 = *v8, v11 = 1.0, *(v0 + v41) < sub_275B7AB1C()))
      {
        v11 = 0.0;
      }

      v50 = v8;
      sub_275B19CD4((v0 + 2), v55);
      v12 = v0[11];
      v13 = v49;
      sub_275B6260C(v0 + v44, v49, MEMORY[0x277D7F888]);
      v14 = v0[16];
      v15 = type metadata accessor for MLEvaluationProvider();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D84F90];
      *(v18 + 16) = MEMORY[0x277D84F90];
      *(v18 + 24) = v19;
      *(v18 + 32) = v19;
      *(v18 + 40) = v19;
      *(v18 + 48) = v19;
      *(v18 + 56) = v19;
      *(v18 + 64) = v19;
      v20 = v46;
      *(v18 + 72) = v19;
      *(v18 + 80) = v20;
      sub_275B075DC(v55, v18 + 88);
      *(v18 + 56) = v12;
      v21 = v52;
      *(v18 + 128) = v42;
      *(v18 + 136) = v21;
      *(v18 + 144) = v11;
      *(v18 + 152) = v43;
      *(v18 + 160) = 0xD000000000000012;
      *(v18 + 168) = v45;
      sub_275B60FD8(v13, v18 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet);
      swift_beginAccess();
      *(v18 + 32) = v14;
      v22 = v53;

      MLEvaluationProvider.calculateMetrics()();
      if (v23)
      {

        swift_setDeallocating();
        v38 = *MLEvaluationProvider.deinit();
        v39 = *(v38 + 48);
        v40 = *(v38 + 52);
        swift_deallocClassInstance();
        return;
      }

      v54 = 0;
      v7 = v51 + 1;
      swift_beginAccess();
      v24 = *(v18 + 16);
      swift_beginAccess();

      sub_275B30840(v25);
      swift_endAccess();
      swift_beginAccess();
      v26 = *(v18 + 24);
      swift_beginAccess();

      sub_275B3086C(v27);
      swift_endAccess();

      swift_setDeallocating();
      v28 = *(v18 + 32);

      v29 = *(v18 + 40);

      v30 = *(v18 + 48);

      v31 = *(v18 + 56);

      v32 = *(v18 + 64);

      v33 = *(v18 + 72);

      __swift_destroy_boxed_opaque_existential_1((v18 + 88));
      v34 = *(v18 + 152);

      v35 = *(v18 + 168);

      sub_275B62674(v18 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet, MEMORY[0x277D7F888]);
      v36 = *(*v18 + 48);
      v37 = *(*v18 + 52);
      swift_deallocClassInstance();
      v8 = v50 + 6;
      v6 = v47;
      if (v48 == v7)
      {

        return;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShadowModeEvaluator.runOnOpenLabelNotifications()()
{
  v2 = sub_275B7AA6C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[14];
  v46 = *(v6 + 16);
  if (v46)
  {
    v52 = v1;
    v44 = sub_275B7AB2C();
    v43 = 0x8000000275B85C30;
    v39 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen;
    v42 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet;
    v41 = v0[10];
    v40 = v0[7];

    v7 = 0;
    v8 = (v6 + 80);
    v45 = v6;
    while (v7 < *(v6 + 16))
    {
      v49 = v7;
      v51 = *(v8 - 6);
      if (*(v8 - 8) != 1 || (v9 = *v8, v10 = 1.0, *(v0 + v39) < sub_275B7AB1C()))
      {
        v10 = 0.0;
      }

      v48 = v8;
      sub_275B19CD4((v0 + 2), v53);
      v11 = v0[11];
      v12 = v41;

      v13 = v47;
      sub_275B6260C(v0 + v42, v47, MEMORY[0x277D7F888]);
      v50 = v0[16];
      v14 = type metadata accessor for MLEvaluationProvider();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D84F90];
      *(v17 + 16) = MEMORY[0x277D84F90];
      *(v17 + 24) = v18;
      *(v17 + 32) = v18;
      *(v17 + 40) = v18;
      *(v17 + 48) = v18;
      *(v17 + 56) = v18;
      *(v17 + 64) = v18;
      v19 = v44;
      *(v17 + 72) = v18;
      *(v17 + 80) = v19;
      sub_275B075DC(v53, v17 + 88);
      *(v17 + 56) = v11;
      v20 = v51;
      *(v17 + 128) = v40;
      *(v17 + 136) = v20;
      *(v17 + 144) = v10;
      *(v17 + 152) = v12;
      *(v17 + 160) = 0xD000000000000014;
      *(v17 + 168) = v43;
      sub_275B60FD8(v13, v17 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet);
      swift_beginAccess();
      *(v17 + 32) = v50;

      MLEvaluationProvider.calculateMetrics()();
      if (v21)
      {

        swift_setDeallocating();
        v36 = *MLEvaluationProvider.deinit();
        v37 = *(v36 + 48);
        v38 = *(v36 + 52);
        swift_deallocClassInstance();
        return;
      }

      v52 = 0;
      v7 = v49 + 1;
      swift_beginAccess();
      v22 = *(v17 + 16);
      swift_beginAccess();

      sub_275B30840(v23);
      swift_endAccess();
      swift_beginAccess();
      v24 = *(v17 + 24);
      swift_beginAccess();

      sub_275B3086C(v25);
      swift_endAccess();

      swift_setDeallocating();
      v26 = *(v17 + 32);

      v27 = *(v17 + 40);

      v28 = *(v17 + 48);

      v29 = *(v17 + 56);

      v30 = *(v17 + 64);

      v31 = *(v17 + 72);

      __swift_destroy_boxed_opaque_existential_1((v17 + 88));
      v32 = *(v17 + 152);

      v33 = *(v17 + 168);

      sub_275B62674(v17 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet, MEMORY[0x277D7F888]);
      v34 = *(*v17 + 48);
      v35 = *(*v17 + 52);
      swift_deallocClassInstance();
      v8 = v48 + 7;
      v6 = v45;
      if (v46 == v7)
      {

        return;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall ShadowModeEvaluator.publishMetrics()()
{
  v1 = sub_275B7A54C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_275B7AA6C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275B7A6DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(v0 + 96);
  v19 = *(v18 + 16);
  if (v19)
  {
    v31 = v2;
    v32 = v0;
    v36 = "eatures' is present.";
    v35 = "normalizedCrossEntropy";
    v20 = v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v34 = "der";
    v33 = *(v13 + 72);
    v30[1] = v18;

    do
    {
      sub_275B6260C(v20, v17, MEMORY[0x277D7F7C0]);
      if (qword_28140F5C0 != -1)
      {
        swift_once();
      }

      sub_275B19CD4(qword_28140F5C8 + 16, v40);
      type metadata accessor for MLModelPerformanceEvent();
      swift_allocObject();
      sub_275B19CD4(v40, v39);
      if (qword_28140F6F8 != -1)
      {
        swift_once();
      }

      v37 = qword_28140F700;
      v38 = unk_28140F708;

      MEMORY[0x277C89240](46, 0xE100000000000000);
      MEMORY[0x277C89240](0xD000000000000012, v34 | 0x8000000000000000);
      sub_275B19CD4(v39, &v37);
      v21 = sub_275B79B9C();
      __swift_destroy_boxed_opaque_existential_1(v39);
      __swift_destroy_boxed_opaque_existential_1(v40);
      sub_275B7A6AC();

      sub_275B79B4C();

      sub_275B7A5DC();
      sub_275B79B6C();

      sub_275B7A65C();
      sub_275B79B6C();

      sub_275B7A5BC();
      sub_275B79B6C();

      sub_275B7A5FC();
      sub_275B79B5C();

      sub_275B7A61C();
      sub_275B79B4C();

      sub_275B7A63C();
      sub_275B79B4C();

      sub_275B7A67C();
      sub_275B79B7C();

      sub_275B7A68C();
      sub_275B7AA4C();
      v22 = MEMORY[0x277D7F888];
      sub_275B62674(v11, MEMORY[0x277D7F888]);
      sub_275B79B4C();

      sub_275B7A68C();
      sub_275B7AA0C();
      sub_275B62674(v11, v22);
      sub_275B79B4C();

      sub_275B7A68C();
      sub_275B62674(v17, MEMORY[0x277D7F7C0]);
      sub_275B7AA2C();
      sub_275B62674(v11, v22);
      sub_275B79B4C();

      (*(*v21 + 200))(v23);

      v20 += v33;
      --v19;
    }

    while (v19);

    v0 = v32;
    v2 = v31;
  }

  swift_beginAccess();
  v24 = *(v0 + 104);
  v25 = *(v24 + 16);
  if (v25)
  {
    v36 = "yModel";
    v35 = "Agent remote proxy error: ";
    v26 = v24 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v34 = "mlModelPerformance";
    v33 = *(v2 + 72);
    v31 = v24;

    v32 = 0xD000000000000011;
    do
    {
      sub_275B6260C(v26, v6, MEMORY[0x277D7F7A0]);
      if (qword_28140F5C0 != -1)
      {
        swift_once();
      }

      sub_275B19CD4(qword_28140F5C8 + 16, v40);
      type metadata accessor for MLDelayPerformanceEvent();
      swift_allocObject();
      sub_275B19CD4(v40, v39);
      if (qword_28140F6F8 != -1)
      {
        swift_once();
      }

      v37 = qword_28140F700;
      v38 = unk_28140F708;

      MEMORY[0x277C89240](46, 0xE100000000000000);
      MEMORY[0x277C89240](0xD000000000000012, v34 | 0x8000000000000000);
      sub_275B19CD4(v39, &v37);
      v27 = sub_275B79B9C();
      __swift_destroy_boxed_opaque_existential_1(v39);
      __swift_destroy_boxed_opaque_existential_1(v40);
      sub_275B7A45C();
      sub_275B7AB2C();
      sub_275B7AB1C();

      sub_275B79B7C();

      sub_275B7A51C();
      sub_275B79B4C();

      sub_275B7A4DC();
      sub_275B79B4C();

      sub_275B7A4BC();
      sub_275B79B7C();

      sub_275B7A47C();
      sub_275B79B5C();

      sub_275B7A49C();
      sub_275B79B4C();

      sub_275B7A4FC();
      sub_275B7AA4C();
      v28 = MEMORY[0x277D7F888];
      sub_275B62674(v11, MEMORY[0x277D7F888]);
      sub_275B79B4C();

      sub_275B7A4FC();
      sub_275B7AA0C();
      sub_275B62674(v11, v28);
      sub_275B79B4C();

      sub_275B7A4FC();
      sub_275B62674(v6, MEMORY[0x277D7F7A0]);
      sub_275B7AA2C();
      sub_275B62674(v11, v28);
      sub_275B79B4C();

      (*(*v27 + 200))(v29);

      v26 += v33;
      --v25;
    }

    while (v25);
  }
}

uint64_t sub_275B6260C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B62674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ShadowModeEvaluator.getModelPerformanceMetricsList()()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t ShadowModeEvaluator.getDelayPerformanceMetricsList()()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t *ShadowModeEvaluator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  v6 = v0[14];

  v7 = v0[15];

  v8 = v0[16];

  sub_275B62674(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet, MEMORY[0x277D7F888]);
  return v0;
}

uint64_t ShadowModeEvaluator.__deallocating_deinit()
{
  ShadowModeEvaluator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShadowModeEvaluator()
{
  result = qword_280A339A8;
  if (!qword_280A339A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275B62874()
{
  result = sub_275B7AA6C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t ShadowModel.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ShadowModel.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShadowModel() + 20);
  v4 = sub_275B794EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ShadowModel()
{
  result = qword_28140F248;
  if (!qword_28140F248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShadowModel.init(name:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ShadowModel() + 20);
  v7 = sub_275B794EC();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_275B62AF0()
{
  result = sub_275B794EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *ShadowModeModelProvider.__allocating_init(kShadowModeModelPrefix:withMobileAssetLocalManager:withFileManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

uint64_t sub_275B62BE8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140E150);
  __swift_project_value_buffer(v0, qword_28140E150);
  type metadata accessor for ShadowModeModelProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A339B8, &qword_275B7EC48);
  return sub_275B7A97C();
}

void *ShadowModeModelProvider.init(kShadowModeModelPrefix:withMobileAssetLocalManager:withFileManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return v4;
}

void *ShadowModeModelProvider.getModelList(modelType:)()
{
  v1 = v0;
  v88 = *MEMORY[0x277D85DE8];
  v70 = type metadata accessor for ShadowModel();
  v69 = *(v70 - 8);
  v2 = *(v69 + 64);
  MEMORY[0x28223BE20](v70, v3);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_275B7945C();
  v6 = *(v68 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v68, v8);
  v67 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275B794EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v73 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v58 - v17;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = v58 - v22;
  (*(**(v0 + 16) + 96))(&v82, v21);
  if (v83)
  {
    v77 = v6;
    v66 = v5;
    sub_275B075DC(&v82, &v84);
    v24 = v86;
    v25 = v87;
    v74 = v10;
    __swift_project_boxed_opaque_existential_1(&v84, v86);
    v26 = v74;
    (*(v25 + 16))(v24, v25);
    sub_275B794AC();
    v72 = v11;
    v27 = v11 + 8;
    v28 = *(v11 + 8);
    v28(v18, v26);
    v29 = *(v0 + 24);
    sub_275B794CC();
    v30 = sub_275B7ACDC();

    *&v82 = 0;
    v31 = [v29 contentsOfDirectoryAtPath:v30 error:&v82];

    v32 = v82;
    if (!v31)
    {
      v53 = v82;
      sub_275B7944C();

      swift_willThrow();
      v28(v23, v26);
      __swift_destroy_boxed_opaque_existential_1(&v84);
      goto LABEL_25;
    }

    v33 = sub_275B7AE7C();
    v34 = v32;

    if (qword_28140E148 != -1)
    {
      swift_once();
    }

    v35 = sub_275B7A96C();
    __swift_project_value_buffer(v35, qword_28140E150);
    *&v82 = 0;
    *(&v82 + 1) = 0xE000000000000000;
    sub_275B7B09C();

    *&v82 = 0x20646E756F46;
    *(&v82 + 1) = 0xE600000000000000;
    v36 = MEMORY[0x277C89330](v33, MEMORY[0x277D837D0]);
    MEMORY[0x277C89240](v36);

    MEMORY[0x277C89240](0x662073656C696620, 0xEC000000206D6F72);
    v37 = sub_275B794CC();
    MEMORY[0x277C89240](v37);

    sub_275B7A91C();

    v38 = *(v33 + 16);
    v58[1] = v33;
    if (v38)
    {
      v39 = *(*v1 + 120);
      v75 = *v1 + 120;
      v76 = v39;
      v62 = *MEMORY[0x277CC91D8];
      v61 = v77 + 13;
      v60 = (v77 + 1);
      v59 = (v72 + 16);
      v40 = (v33 + 40);
      v77 = MEMORY[0x277D84F90];
      v65 = v1;
      v64 = v27;
      v63 = v28;
      do
      {
        v42 = *(v40 - 1);
        v41 = *v40;

        if (v76(v42, v41) & 1) != 0 && ((*(*v1 + 128))(v42, v41))
        {
          *&v82 = v42;
          *(&v82 + 1) = v41;
          v80 = 0x6C65646F6D6C6D2ELL;
          v81 = 0xE900000000000063;
          v78 = 0;
          v79 = 0xE000000000000000;
          sub_275B2AA24();
          v72 = sub_275B7AFFC();
          v71 = v43;
          *&v82 = v42;
          *(&v82 + 1) = v41;
          v44 = v67;
          v45 = v68;
          (*v61)(v67, v62, v68);
          v46 = v73;
          sub_275B794DC();
          (*v60)(v44, v45);

          v47 = v66;
          (*v59)(v66 + *(v70 + 20), v46, v74);
          v48 = v71;
          *v47 = v72;
          v47[1] = v48;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_275B115E4(0, v77[2] + 1, 1, v77);
          }

          v50 = v77[2];
          v49 = v77[3];
          v1 = v65;
          if (v50 >= v49 >> 1)
          {
            v77 = sub_275B115E4(v49 > 1, v50 + 1, 1, v77);
          }

          v28 = v63;
          (v63)(v73);
          v51 = v77;
          v77[2] = v50 + 1;
          sub_275B63714(v47, v51 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v50);
        }

        else
        {
        }

        v40 += 2;
        --v38;
      }

      while (v38);
    }

    else
    {
      v77 = MEMORY[0x277D84F90];
    }

    v28(v23, v74);
    __swift_destroy_boxed_opaque_existential_1(&v84);
  }

  else
  {
    sub_275B42888(&v82);
    if (qword_28140E148 != -1)
    {
      swift_once();
    }

    v52 = sub_275B7A96C();
    __swift_project_value_buffer(v52, qword_28140E150);
    sub_275B7A91C();
    v77 = MEMORY[0x277D84F90];
  }

  if (qword_28140E148 != -1)
  {
    swift_once();
  }

  v54 = sub_275B7A96C();
  __swift_project_value_buffer(v54, qword_28140E150);
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_275B7B09C();

  v84 = 0xD000000000000017;
  v85 = 0x8000000275B85CE0;
  v55 = MEMORY[0x277C89330](v77, v70);
  MEMORY[0x277C89240](v55);

  MEMORY[0x277C89240](0xD000000000000019, 0x8000000275B85D00);
  sub_275B7A91C();

LABEL_25:
  v56 = *MEMORY[0x277D85DE8];
  return v77;
}

Swift::Bool __swiftcall ShadowModeModelProvider.modelHasValidPrefix(_:)(Swift::String a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (!v3 || (sub_275B7ADFC() & 1) != 0)
  {
    return 1;
  }

  return sub_275B7ADFC();
}

uint64_t ShadowModeModelProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t ShadowModeModelProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_275B63714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShadowModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ShadowModePipeline.kDefaultTrialSet.unsafeMutableAddressor()
{
  if (qword_280A32E18 != -1)
  {
    swift_once();
  }

  v0 = sub_275B7AA6C();

  return __swift_project_value_buffer(v0, static ShadowModePipeline.kDefaultTrialSet);
}

uint64_t sub_275B6380C()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140E798);
  __swift_project_value_buffer(v0, qword_28140E798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A339C0, &qword_275B7ECB0);
  return sub_275B7A97C();
}

uint64_t sub_275B63898()
{
  v0 = sub_275B7AA6C();
  __swift_allocate_value_buffer(v0, static ShadowModePipeline.kDefaultTrialSet);
  __swift_project_value_buffer(v0, static ShadowModePipeline.kDefaultTrialSet);
  sub_275B641EC();
  return sub_275B7968C();
}

uint64_t sub_275B63920()
{
  sub_275B7AA5C();
  sub_275B7AA1C();
  return sub_275B7AA3C();
}

uint64_t static ShadowModePipeline.kDefaultTrialSet.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280A32E18 != -1)
  {
    swift_once();
  }

  v2 = sub_275B7AA6C();
  v3 = __swift_project_value_buffer(v2, static ShadowModePipeline.kDefaultTrialSet);
  return sub_275B63AB8(v3, a1, MEMORY[0x277D7F888]);
}

uint64_t ShadowModePipeline.getLastRun(_:)()
{
  if ((sub_275B799DC() & 1) == 0)
  {
    return 0;
  }

  sub_275B7997C();
  return sub_275B7AB6C();
}

uint64_t ShadowModePipeline.updateLastRun(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_275B63AB8(a1, a2, MEMORY[0x277D7F5A8]);
  sub_275B7AB5C();
  return sub_275B7998C();
}

uint64_t sub_275B63AB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B63B4C()
{
  if ((sub_275B799DC() & 1) == 0)
  {
    return 0;
  }

  sub_275B7997C();
  return sub_275B7AB6C();
}

uint64_t sub_275B63B90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_275B63AB8(a1, a2, MEMORY[0x277D7F5A8]);
  sub_275B7AB5C();
  return sub_275B7998C();
}

void sub_275B63BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_275B7AA6C();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (*(*a6 + 112))(v17);
  v68 = a7;
  v69 = v19;
  v67 = a5;
  if (*(v20 + 16))
  {
    v21 = v20;
    sub_275B19CD4(a1, v71);
    if (qword_280A32E18 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v14, static ShadowModePipeline.kDefaultTrialSet);
    sub_275B63AB8(v22, v69, MEMORY[0x277D7F888]);
    type metadata accessor for MobileAssetLocalManager();
    v23 = swift_allocObject();
    v24 = type metadata accessor for ShadowModeEvaluator();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D84F90];
    *(v27 + 88) = MEMORY[0x277D84F90];
    *(v27 + 96) = v28;
    v66 = v27 + 96;
    *(v27 + 104) = v28;
    v65 = v27 + 104;
    *(v27 + 112) = v28;
    *(v27 + 120) = v28;
    *(v27 + 128) = v28;
    sub_275B19CD4(v71, v27 + 16);
    *(v27 + 56) = a2;
    *(v27 + 88) = v21;
    v29 = a4;
    v30 = *(a4 + 16);
    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33270, &qword_275B7C6D0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_275B7D0A0;
      v32 = v29 + 48 * v30;
      v33 = *(v32 - 16);
      v34 = *(v32 - 8);
      v35 = *v32;
      v36 = *(v32 + 8);
      v37 = *(v32 + 16);
      v38 = *(v32 + 24);
      *(v31 + 32) = v33;
      *(v31 + 40) = v34;
      *(v31 + 48) = v35;
      *(v31 + 56) = v36;
      *(v31 + 64) = v37;
      *(v31 + 72) = v38;
      v39 = v33;
      v29 = v31;
    }

    else
    {
    }

    *(v27 + 120) = v29;
    v41 = *(a3 + 16);
    v42 = v69;
    if (v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
      v43 = swift_allocObject();
      v44 = a3 + 56 * v41;
      v45 = *(v44 - 8);
      v46 = *v44;
      v47 = *(v44 + 8);
      v48 = *(v44 + 16);
      v49 = *(v44 + 24);
      v50 = *(v44 - 24);
      *(v43 + 16) = xmmword_275B7D0A0;
      *(v43 + 32) = v50;
      *(v43 + 48) = v45;
      *(v43 + 56) = v46;
      *(v43 + 64) = v47;
      *(v43 + 72) = v48;
      *(v43 + 80) = v49;

      a3 = v43;
    }

    else
    {
    }

    v51 = v68;
    __swift_destroy_boxed_opaque_existential_1(v71);
    *(v27 + 112) = a3;
    *(v27 + 128) = &unk_2884A8308;
    sub_275B60FD8(v42, v27 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet);
    v52 = v67;
    *(v27 + 72) = v67 & 1;
    *(v27 + 64) = v23;
    type metadata accessor for ModelProvider();
    v53 = swift_allocObject();
    *(v53 + 16) = v23;
    *(v27 + 80) = v53;
    *(v27 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen) = v51;

    ShadowModeEvaluator.runOnOpenLabelNotifications()();
    if (v54 || (ShadowModeEvaluator.runOnBuyLabelNotifications()(), v54))
    {
      swift_setDeallocating();
      v55 = *ShadowModeEvaluator.deinit();
      v56 = *(v55 + 48);
      v57 = *(v55 + 52);
      swift_deallocClassInstance();
      if (qword_28140E790 != -1)
      {
        swift_once();
      }

      v58 = sub_275B7A96C();
      __swift_project_value_buffer(v58, qword_28140E798);
      v71[0] = 0;
      v71[1] = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD000000000000027, 0x8000000275B85DC0);
      v70 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
      sub_275B7B0EC();
      MEMORY[0x277C89240](93, 0xE100000000000000);
      sub_275B7A95C();
    }

    else
    {
      if ((v52 & 1) == 0)
      {
        v59 = v66;
        swift_beginAccess();
        if (*(*v59 + 16) || (v60 = v65, swift_beginAccess(), *(*v60 + 16)))
        {
          ShadowModeEvaluator.publishMetrics()();
        }
      }

      swift_setDeallocating();
      v61 = *ShadowModeEvaluator.deinit();
      v62 = *(v61 + 48);
      v63 = *(v61 + 52);
      swift_deallocClassInstance();
    }
  }

  else
  {

    if (qword_28140E790 != -1)
    {
      swift_once();
    }

    v40 = sub_275B7A96C();
    __swift_project_value_buffer(v40, qword_28140E798);
    sub_275B7A91C();
  }
}

uint64_t sub_275B64154(uint64_t *a1, int a2)
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

uint64_t sub_275B6419C(uint64_t result, int a2, int a3)
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

unint64_t sub_275B641EC()
{
  result = qword_280A339C8;
  if (!qword_280A339C8)
  {
    sub_275B7AA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A339C8);
  }

  return result;
}

void *SimpleTimeFeatureProvider.__allocating_init(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_275B6428C()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A339D0);
  __swift_project_value_buffer(v0, qword_280A339D0);
  type metadata accessor for SimpleTimeFeatureProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A339E8, &unk_275B7ECF0);
  return sub_275B7A97C();
}

void *SimpleTimeFeatureProvider.init(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t SimpleTimeFeatureProvider.getFeatureByName(_:)(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33128, &unk_275B7C3B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v25[-v6];
  if (a1 > 0x32u)
  {
    if (a1 == 51)
    {
      v23 = v1[4];
      type metadata accessor for Feature();
      v10 = swift_allocObject();
      *(v10 + 16) = 51;
      v19 = [objc_opt_self() featureValueWithInt64_];
LABEL_13:
      v13 = v19;
      v14 = 1;
      goto LABEL_14;
    }

    if (a1 == 53)
    {
      v15 = v1[2];
      v16 = v1[3];
      sub_275B7ABCC();
      v14 = 1;
      v17 = sub_275B7AB1C();
      type metadata accessor for Feature();
      v10 = swift_allocObject();
      *(v10 + 16) = 53;
      v13 = [objc_opt_self() featureValueWithInt64_];
      goto LABEL_14;
    }

LABEL_8:
    if (qword_280A32E20 != -1)
    {
      swift_once();
    }

    v18 = sub_275B7A96C();
    __swift_project_value_buffer(v18, qword_280A339D0);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
    v25[15] = a1;
    sub_275B7B0EC();
    MEMORY[0x277C89240](0xD000000000000031, 0x8000000275B85E20);
    sub_275B7A95C();

    type metadata accessor for Feature();
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    v19 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_13;
  }

  if (!a1)
  {
    v20 = v1[2];
    v21 = sub_275B7961C();
    v14 = 1;
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = sub_275B7AC6C();
    sub_275B0A398(v7);
    type metadata accessor for Feature();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    v13 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v8 = v1[2];
  v9 = sub_275B7961C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_275B7AC5C();
  sub_275B0A398(v7);
  type metadata accessor for Feature();
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  v11 = sub_275B7ACDC();

  v12 = [objc_opt_self() featureValueWithString_];

  v13 = v12;
  v14 = 3;
LABEL_14:
  *(v10 + 24) = v13;
  *(v10 + 32) = v14;
  return v10;
}

Swift::Int64 __swiftcall SimpleTimeFeatureProvider.getSecondsSincePush()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_275B7ABCC();

  return sub_275B7AB1C();
}

uint64_t sub_275B64778()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A339F0);
  __swift_project_value_buffer(v0, qword_280A339F0);
  type metadata accessor for SnapshotFeatureProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A08, &qword_275B7ED18);
  return sub_275B7A97C();
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon23SnapshotFeatureProviderC03getF6ByNameyAA0F0CAA0fJ0OFZ_0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    switch(a1)
    {
      case 5u:
        v11 = [objc_opt_self() processInfo];
        [v11 operatingSystemVersion];

        type metadata accessor for Feature();
        v1 = swift_allocObject();
        *(v1 + 16) = 5;
        v7 = [objc_opt_self() featureValueWithInt64_];
        break;
      case 6u:
        v20 = [objc_opt_self() processInfo];
        [v20 operatingSystemVersion];

        type metadata accessor for Feature();
        v1 = swift_allocObject();
        *(v1 + 16) = 6;
        v7 = [objc_opt_self() featureValueWithInt64_];
        break;
      case 7u:
        v6 = [objc_opt_self() processInfo];
        [v6 operatingSystemVersion];

        type metadata accessor for Feature();
        v1 = swift_allocObject();
        *(v1 + 16) = 7;
        v7 = [objc_opt_self() featureValueWithInt64_];
        break;
      default:
LABEL_15:
        if (qword_280A32E28 != -1)
        {
          swift_once();
        }

        v13 = sub_275B7A96C();
        __swift_project_value_buffer(v13, qword_280A339F0);
        sub_275B7B09C();
        MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
        sub_275B7B0EC();
        MEMORY[0x277C89240](0xD00000000000002FLL, 0x8000000275B85F10);
        sub_275B7A95C();

        type metadata accessor for Feature();
        v1 = swift_allocObject();
        *(v1 + 16) = a1;
        v7 = [objc_opt_self() featureValueWithInt64_];
        break;
    }

LABEL_24:
    v4 = v7;
    v5 = 1;
    goto LABEL_25;
  }

  if (a1 == 2)
  {
    v8 = sub_275B34900();
    if (v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = v8;
    }

    type metadata accessor for Feature();
    v1 = swift_allocObject();
    *(v1 + 16) = 2;
    v7 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_24;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC18getDeviceModelNameSSyFZ_0();
      type metadata accessor for Feature();
      v1 = swift_allocObject();
      *(v1 + 16) = 4;
      v2 = sub_275B7ACDC();

      v3 = [objc_opt_self() featureValueWithString_];

      v4 = v3;
      v5 = 3;
LABEL_25:
      *(v1 + 24) = v4;
      *(v1 + 32) = v5;
      return v1;
    }

    goto LABEL_15;
  }

  v14 = sub_275B34900();
  if (v15 & 1) != 0 || (v16 = v14, result = sub_275B34920(), (v18))
  {
    v19 = -1;
LABEL_23:
    type metadata accessor for Feature();
    v1 = swift_allocObject();
    *(v1 + 16) = 3;
    v7 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_24;
  }

  v19 = v16 - result;
  if (!__OFSUB__(v16, result))
  {
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_275B64C88()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140F368);
  __swift_project_value_buffer(v0, qword_28140F368);
  type metadata accessor for SubscriptionDaemon();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A10, &unk_275B7ED70);
  return sub_275B7A97C();
}

void *SubscriptionDaemon.__allocating_init(batteryStateProvider:)(uint64_t *a1)
{
  v2 = sub_275B79CFC();
  v4 = *v2;
  v3 = v2[1];
  type metadata accessor for DaemonStateManager();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = sub_275B7AB2C();
  v8 = sub_275B7AB2C();
  type metadata accessor for MobileAssetDaemonStateHelper();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  v9[5] = v8;
  type metadata accessor for MobileAssetLocalManager();
  v10 = swift_allocObject();
  v11 = objc_allocWithZone(MEMORY[0x277D289C0]);
  swift_bridgeObjectRetain_n();
  v12 = [v11 init];
  v13 = type metadata accessor for RealAssetInterface();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  type metadata accessor for MobileAssetDownloadManager();
  v15 = swift_allocObject();
  *(v15 + 64) = v13;
  *(v15 + 72) = &protocol witness table for RealAssetInterface;
  *(v15 + 80) = 0;
  *(v15 + 16) = v5;
  *(v15 + 24) = v9;
  *(v15 + 32) = v10;
  *(v15 + 40) = v14;
  sub_275B19CD4(a1, v18);
  type metadata accessor for SubscriptionDaemon();
  swift_allocObject();
  v16 = sub_275B65C34(v15, v18, 300.0);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

void *SubscriptionDaemon.__allocating_init(maxInativeSecs:mobileAssetDownloadManager:batteryStateProvider:)(uint64_t a1, uint64_t *a2, double a3)
{
  swift_allocObject();
  v6 = sub_275B65C34(a1, a2, a3);

  return v6;
}

void *SubscriptionDaemon.init(maxInativeSecs:mobileAssetDownloadManager:batteryStateProvider:)(uint64_t a1, uint64_t *a2, double a3)
{
  v3 = sub_275B65C34(a1, a2, a3);

  return v3;
}

Swift::Void __swiftcall SubscriptionDaemon.run()()
{
  if (qword_28140F360 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_28140F368);
  sub_275B7B09C();

  v15 = 0xD00000000000001CLL;
  v16 = 0x8000000275B812E0;
  v2 = [objc_opt_self() isInternalBuild];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x277C89240](v4, v5);

  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  sub_275B7A91C();

  sub_275B7A9DC();

  sub_275B7A9DC();

  v6 = sub_275B7A91C();
  (*(**(v0 + 24) + 120))(v6);
  v7 = *(v0 + 40);
  if (*(v7 + 80) == 1)
  {
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_28140DDF0);
    sub_275B7A91C();
    MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)();
  }

  if (*(v7 + 81) == 1)
  {
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_28140DDF0);
    sub_275B7A91C();
    MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)();
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_275B7B09C();
  v8 = MEMORY[0x277C89240](0xD00000000000001CLL, 0x8000000275B86000);
  v9 = *(**(v0 + 16) + 96);
  v14[0] = v9(v8);
  sub_275B7B0EC();
  MEMORY[0x277C89240](46, 0xE100000000000000);
  sub_275B7A91C();

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, &v15);
  type metadata accessor for DaemonExitEvent();
  swift_allocObject();
  sub_275B19CD4(&v15, v14);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v13[0] = qword_28140F700;
  v13[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x78456E6F6D656164, 0xEA00000000007469);
  sub_275B19CD4(v14, v13);
  v10 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = __swift_destroy_boxed_opaque_existential_1(&v15);
  v9(v11);
  sub_275B7AB1C();

  sub_275B79B7C();

  (*(*v10 + 200))(v12);
}

uint64_t sub_275B654F8()
{
  v1 = sub_275B79ABC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  if (((*(v7 + 8))(v6, v7) & 1) == 0)
  {
    if (qword_28140F360 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v52[4] = &type metadata for PFLDataCollectionPipeline;
  v52[5] = &protocol witness table for PFLDataCollectionPipeline;
  v8 = sub_275B79CFC();
  v9 = *v8;
  v10 = v8[1];
  type metadata accessor for DaemonStateManager();
  v11 = 32;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  v52[0] = v12;
  v53[4] = &type metadata for PETDataCollectionPipeline;
  v53[5] = &protocol witness table for PETDataCollectionPipeline;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  v53[0] = v13;
  type metadata accessor for MobileAssetLocalManager();
  v44 = swift_allocObject();
  v14 = swift_allocObject();
  v15 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v16 = [v15 defaultManager];
  type metadata accessor for ShadowModeModelProvider();
  v17 = swift_allocObject();
  v17[4] = 0x776F64616873;
  v17[5] = 0xE600000000000000;
  v17[2] = v14;
  v17[3] = v16;
  v54[4] = &type metadata for ShadowModePipeline;
  v54[5] = &protocol witness table for ShadowModePipeline;
  v18 = swift_allocObject();
  v54[1] = v18;
  *(v18 + 16) = v44;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  *(v18 + 40) = 4320;
  v20 = *v8;
  v19 = v8[1];
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v54[0] = v21;

  v22 = MEMORY[0x277D84F90];
  do
  {
    sub_275B660C8(&v51[v11], v48);
    sub_275B1E4C0(v5);
    _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    v23 = _s33iCloudSubscriptionOptimizerDaemon23DataCollectionSchedulerV02iseF6Needed8pipeline5state3nowSbAA0eF8Pipeline_p_01iabC4Core0D5StateVAI9TimestampVtFZ_0(v48 + 1, v5);
    sub_275B09600(v5);
    if (v23)
    {
      v45 = v48[0];
      v46 = v48[1];
      v47 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_275B0E614(0, *(v22 + 16) + 1, 1);
        v22 = v50;
      }

      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_275B0E614((v25 > 1), v26 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v26 + 1;
      v27 = (v22 + 48 * v26);
      v28 = v45;
      v29 = v47;
      v27[3] = v46;
      v27[4] = v29;
      v27[2] = v28;
    }

    else
    {
      sub_275B66124(v48);
    }

    v11 += 48;
  }

  while (v11 != 176);
  v30 = *(v22 + 16);

  if (v30)
  {
    v31 = type metadata accessor for RealBiomeManager();
    v44 = v31;
    v32 = swift_allocObject();
    v33 = sub_275B66178();
    v34 = sub_275B665FC();
    sub_275B660C8(v52, v48);
    *(&v46 + 1) = v31;
    *&v47 = &protocol witness table for RealBiomeManager;
    *&v45 = v32;
    v35 = v49;
    __swift_project_boxed_opaque_existential_1(v48 + 1, v49);
    v36 = *(*(&v35 + 1) + 40);

    v43 = v33;
    v36(&v45, 23, v33, v34, v35, *(&v35 + 1));
    sub_275B1E92C();
    __swift_destroy_boxed_opaque_existential_1(&v45);
    sub_275B66124(v48);
    sub_275B660C8(v53, v48);
    *(&v46 + 1) = v44;
    *&v47 = &protocol witness table for RealBiomeManager;
    *&v45 = v32;
    v37 = v49;
    __swift_project_boxed_opaque_existential_1(v48 + 1, v49);
    v38 = *(*(&v37 + 1) + 40);
    swift_retain_n();
    v38(&v45, 23, v33, v34, v37, *(&v37 + 1));
    sub_275B1E92C();

    __swift_destroy_boxed_opaque_existential_1(&v45);
    sub_275B66124(v48);
    sub_275B660C8(v54, v48);
    swift_arrayDestroy();
    *(&v46 + 1) = v44;
    *&v47 = &protocol witness table for RealBiomeManager;
    *&v45 = v32;
    v39 = v49;
    __swift_project_boxed_opaque_existential_1(v48 + 1, v49);
    v40 = *(*(&v39 + 1) + 40);
    swift_retain_n();
    v40(&v45, 23, v43, v34, v39, *(&v39 + 1));

    sub_275B1E92C();

    __swift_destroy_boxed_opaque_existential_1(&v45);
    return sub_275B66124(v48);
  }

  swift_arrayDestroy();
  if (qword_28140F360 != -1)
  {
LABEL_17:
    swift_once();
  }

LABEL_16:
  v42 = sub_275B7A96C();
  __swift_project_value_buffer(v42, qword_28140F368);
  return sub_275B7A91C();
}

uint64_t SubscriptionDaemon.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t SubscriptionDaemon.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void *sub_275B65C34(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = v3;
  v3[6] = 0;
  if (qword_28140F360 != -1)
  {
    swift_once();
  }

  v8 = sub_275B7A96C();
  __swift_project_value_buffer(v8, qword_28140F368);
  sub_275B7A91C();
  sub_275B7AA9C();
  v3[2] = sub_275B7AA8C();
  sub_275B19CD4(a2, (v3 + 7));
  sub_275B7A9FC();
  swift_allocObject();
  v3[3] = sub_275B7A9EC();
  type metadata accessor for XpcSubscriptionServer();
  swift_allocObject();
  v3[4] = XpcSubscriptionServer.init()();
  v3[5] = a1;

  XpcSubscriptionServer.runAsync()();

  v9 = [objc_opt_self() scheduledTimerWithTimeInterval:v3 target:sel_onExitTimerRun selector:0 userInfo:0 repeats:a3];
  v10 = v3[6];
  v3[6] = v9;

  v11 = v3[6];
  if (v11)
  {
    [v11 setTolerance_];
  }

  type metadata accessor for SystemActivityHistoryManager();
  v12 = swift_allocObject();
  v12[2] = 0xD00000000000001FLL;
  v12[3] = 0x8000000275B86180;
  v12[4] = 20;
  qword_28140D970 = v12;

  v13 = sub_275B79CFC();
  v15 = *v13;
  v14 = v13[1];
  type metadata accessor for DaemonStateManager();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  type metadata accessor for DelayedNotificationActivity();
  swift_allocObject();

  off_28140DC78 = sub_275B25BF8(v17, sub_275B26124, 0);

  _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC10initSharedACyFZ_0();

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v25);
  type metadata accessor for DaemonLaunchedEvent();
  swift_allocObject();
  sub_275B19CD4(v25, v24);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v23[0] = qword_28140F700;
  v23[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x614C6E6F6D656164, 0xEE00646568636E75);
  sub_275B19CD4(v24, v23);
  v18 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v19 = *(*v4[2] + 96);

  v19(v20);

  sub_275B7AB1C();

  sub_275B79B7C();

  (*(*v18 + 200))(v21);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

char *sub_275B66178()
{
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v0 = sub_275B7ABCC();
  sub_275B7AB2C();
  v1 = sub_275B7ABCC();
  type metadata accessor for BiomeNotificationStream.ReceivedEvents();
  v2 = static BiomeNotificationStream.ReceivedEvents.get(beginTime:endTime:)(v1, v0);
  v3 = *(v2 + 16);
  v27 = v2;
  if (v3)
  {
    v4 = v2;
    sub_275B7AB2C();
    v5 = (v4 + 64);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v31 = *(v5 - 2);
      v32 = v7;
      v33 = v8;
      v34 = v9;

      v29 = static BiomeNotificationStream.ICloudLabel.get(event:duration:)(&v31);
      v28 = v10;
      v11 = v31;
      v12 = v32;
      v13 = v33;
      v14 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_275B11A1C(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = sub_275B11A1C((v15 > 1), v16 + 1, 1, v6);
      }

      *(v6 + 2) = v16 + 1;
      v17 = &v6[56 * v16];
      *(v17 + 2) = v11;
      *(v17 + 6) = v12;
      *(v17 + 7) = v13;
      *(v17 + 8) = v14;
      v17[72] = v29;
      *(v17 + 10) = v28;
      v5 += 5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v18 = _s33iCloudSubscriptionOptimizerDaemon18DataCollectorUtilsC17sampleWithSpacing20labeledNotifications7maximum13spacingInDaysSayAA19LabeledNotificationVGAJ_s5Int64VALtFZ_0(v6, 3);

  sub_275B2005C();
  v19 = v18;
  if (*(v18 + 2) >= 4uLL)
  {
    sub_275B1FF6C(v18, (v18 + 32), 0, 7uLL);
    v21 = v20;

    v19 = v21;
  }

  if (qword_28140EA00 != -1)
  {
    swift_once();
  }

  v22 = sub_275B7A96C();
  __swift_project_value_buffer(v22, qword_28140EA08);
  sub_275B7B09C();
  MEMORY[0x277C89240](0x20646E756F46, 0xE600000000000000);
  v23 = *(v27 + 16);

  v24 = sub_275B7B19C();
  MEMORY[0x277C89240](v24);

  MEMORY[0x277C89240](0xD00000000000001ELL, 0x8000000275B815A0);
  sub_275B7B0EC();
  MEMORY[0x277C89240](0x20646E6120, 0xE500000000000000);
  sub_275B7B0EC();
  MEMORY[0x277C89240](8238, 0xE200000000000000);
  sub_275B7B09C();

  v30 = *(v19 + 2);
  v25 = sub_275B7B19C();
  MEMORY[0x277C89240](v25);

  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B815E0);

  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B815C0);

  sub_275B7A91C();

  return v19;
}

char *sub_275B665FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33130, &unk_275B7C8D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v57 = v52 - v7;
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v8 = sub_275B7ABCC();
  sub_275B7AB2C();
  v9 = sub_275B7ABCC();
  v10 = static BiomeICloudSubscription.ICloudNotification.getDisplayedNotifications(beginTime:endTime:)(v9, v8);
  v11 = *(v10 + 16);
  if (v11)
  {
    v56 = sub_275B7AB2C();
    v54 = v11 - 1;
    v53 = sub_275B7AB2C();
    v12 = 0;
    v52[2] = &v68;
    v52[1] = v10;
    v13 = (v10 + 56);
    v14 = MEMORY[0x277D84F90];
    v55 = v11;
    do
    {
      v64 = v14;
      v15 = *(v13 - 3);
      v16 = *(v13 - 2);
      v63 = v12;
      if (v12 < v54)
      {
        v17 = *v13;
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v62 = v13;
      v60 = swift_allocObject();
      *(v60 + 16) = -1;
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      v59 = v18 + 16;
      v19 = v53;
      *(v18 + 24) = v53;
      *(v18 + 32) = 0;
      *(v18 + 40) = v19;
      sub_275B7ABBC();
      v61 = v15;
      v20 = [BiomeLibrary() iCloud];
      swift_unknownObjectRelease();
      v58 = [v20 Subscription];
      swift_unknownObjectRelease();
      v21 = v16;
      v22 = v57;
      sub_275B7AC2C();
      v23 = sub_275B795CC();
      v24 = *(v23 - 8);
      v25 = *(v24 + 56);
      v25(v22, 0, 1, v23);
      sub_275B7AC2C();
      v26 = v4;
      v25(v4, 0, 1, v23);
      v65 = v21;
      v27 = sub_275B7ABAC();
      v28 = *(v24 + 48);
      v29 = 0;
      if (v28(v22, 1, v23) != 1)
      {
        v30 = v57;
        v29 = sub_275B795AC();
        (*(v24 + 8))(v30, v23);
      }

      v31 = v28(v26, 1, v23);
      v14 = v64;
      if (v31 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = sub_275B795AC();
        (*(v24 + 8))(v26, v23);
      }

      v4 = v26;
      v33 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v29 endDate:v32 maxEvents:0 lastN:0 reversed:v27 & 1];

      v34 = v58;
      v35 = [v58 publisherWithOptions_];

      v70 = sub_275B12560;
      v71 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v67 = 1107296256;
      v68 = sub_275B0C864;
      v69 = &block_descriptor_8;
      v36 = _Block_copy(&aBlock);
      v37 = swift_allocObject();
      v38 = v60;
      v37[2] = v65;
      v37[3] = v38;
      v37[4] = v18;
      v70 = sub_275B12534;
      v71 = v37;
      aBlock = MEMORY[0x277D85DD0];
      v67 = 1107296256;
      v68 = sub_275B0A330;
      v69 = &block_descriptor_17;
      v39 = _Block_copy(&aBlock);

      v40 = [v35 sinkWithCompletion:v36 receiveInput:v39];
      _Block_release(v39);
      _Block_release(v36);

      swift_beginAccess();
      v41 = *(v18 + 16);
      v42 = *(v18 + 24);
      v43 = *(v18 + 32);
      v44 = *(v18 + 40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_275B11B44(0, *(v14 + 2) + 1, 1, v14);
      }

      v45 = v63;
      v47 = *(v14 + 2);
      v46 = *(v14 + 3);
      if (v47 >= v46 >> 1)
      {
        v14 = sub_275B11B44((v46 > 1), v47 + 1, 1, v14);
      }

      v12 = v45 + 1;
      *(v14 + 2) = v47 + 1;
      v48 = &v14[48 * v47];
      v49 = v62;
      v50 = v65;
      *(v48 + 4) = v61;
      *(v48 + 5) = v50;
      v48[48] = v41;
      *(v48 + 7) = v42;
      v48[64] = v43;
      *(v48 + 9) = v44;
      v13 = v49 + 2;
    }

    while (v55 != v12);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SystemActivity.init(identifier:activityType:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = 0;
  *(v3 + 48) = 258;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return v3;
}

uint64_t SystemActivity.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SystemActivity.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_275B66D40(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_275B7A7BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_275B7A76C();
  v11 = *(*(v65 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v65, v12);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v58 - v16;
  if (a2)
  {
    v63 = a2;
  }

  else
  {
    SystemActivity.criteriaFor(interval:)();
    v63 = v18;
  }

  v61 = *(v2 + 32);
  v64 = a1;
  if (v61)
  {
    if (qword_28140D970)
    {
      v19 = *(v2 + 24);
      v60 = *(v2 + 16);
      v59 = v19;
      aBlock = 0;
      v69 = 0xE000000000000000;
      swift_unknownObjectRetain();

      sub_275B7B09C();
      MEMORY[0x277C89240](0xD00000000000001CLL, 0x8000000275B864F0);
      v67[0] = a1;
      sub_275B7B0EC();
      MEMORY[0x277C89240](46, 0xE100000000000000);
      v21 = aBlock;
      v20 = v69;
      v22 = sub_275B7A8DC();
      MEMORY[0x28223BE20](v22, v23);
      *(&v58 - 2) = v24;
      sub_275B69518(&qword_28140FBA8, MEMORY[0x277D7F878]);
      sub_275B7968C();
      swift_storeEnumTagMultiPayload();
      v25 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
      *(&v58 - 4) = MEMORY[0x28223BE20](v25, v26);
      *(&v58 - 3) = v21;
      *(&v58 - 2) = v20;
      *(&v58 - 1) = v17;
      sub_275B69518(&qword_28140FBB8, MEMORY[0x277D7F818]);
      sub_275B7968C();

      sub_275B6B234(v60, v59, v10);

      sub_275B6941C(v10, MEMORY[0x277D7F818]);
      sub_275B6941C(v17, MEMORY[0x277D7F808]);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v35 = v63;
    if (qword_28140F1A8 != -1)
    {
      swift_once();
    }

    v36 = sub_275B7A96C();
    __swift_project_value_buffer(v36, qword_28140F1B0);
    aBlock = 0;
    v69 = 0xE000000000000000;
    sub_275B7B09C();
    v37 = "Activity unregister. [";
    v38 = 0xD00000000000002ALL;
  }

  else
  {
    if (qword_28140D970)
    {
      v27 = *(v2 + 24);
      v60 = *(v2 + 16);
      v59 = v27;
      aBlock = 0;
      v69 = 0xE000000000000000;
      swift_unknownObjectRetain();

      sub_275B7B09C();
      MEMORY[0x277C89240](0x7265747369676552, 0xEF3D79616C656420);
      v67[0] = a1;
      sub_275B7B0EC();
      MEMORY[0x277C89240](46, 0xE100000000000000);
      v29 = aBlock;
      v28 = v69;
      v30 = sub_275B7A8DC();
      MEMORY[0x28223BE20](v30, v31);
      *(&v58 - 2) = v32;
      sub_275B69518(&qword_28140FBA8, MEMORY[0x277D7F878]);
      sub_275B7968C();
      swift_storeEnumTagMultiPayload();
      v33 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
      *(&v58 - 4) = MEMORY[0x28223BE20](v33, v34);
      *(&v58 - 3) = v29;
      *(&v58 - 2) = v28;
      *(&v58 - 1) = v17;
      sub_275B69518(&qword_28140FBB8, MEMORY[0x277D7F818]);
      sub_275B7968C();

      sub_275B6B234(v60, v59, v10);

      sub_275B6941C(v10, MEMORY[0x277D7F818]);
      sub_275B6941C(v17, MEMORY[0x277D7F808]);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v35 = v63;
    if (qword_28140F1A8 != -1)
    {
      swift_once();
    }

    v39 = sub_275B7A96C();
    __swift_project_value_buffer(v39, qword_28140F1B0);
    aBlock = 0;
    v69 = 0xE000000000000000;
    sub_275B7B09C();
    v37 = "Register repeating interval=";
    v38 = 0xD00000000000001DLL;
  }

  MEMORY[0x277C89240](v38, v37 | 0x8000000000000000);
  v67[0] = v64;
  sub_275B7B0EC();
  MEMORY[0x277C89240](5972014, 0xE300000000000000);
  v67[0] = v2;
  type metadata accessor for SystemActivity();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  v72 = sub_275B69598;
  v73 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_275B0B464;
  v71 = &block_descriptor_19_0;
  v42 = _Block_copy(&aBlock);

  v43 = sub_275B7AD4C();
  xpc_activity_register((v43 + 32), v35, v42);

  _Block_release(v42);
  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, &aBlock);
  type metadata accessor for SystemActivityEvent();
  swift_allocObject();
  sub_275B19CD4(&aBlock, v67);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v66[0] = qword_28140F700;
  v66[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x63416D6574737973, 0xEE00797469766974);
  sub_275B19CD4(v67, v66);
  v44 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);

  sub_275B79B4C();

  sub_275B79B4C();

  v45 = v62;
  sub_275B7A8CC();
  swift_storeEnumTagMultiPayload();
  sub_275B69498(v45, v17);
  v46 = sub_275B7AD1C();
  sub_275B696A4(40, 0xE100000000000000, v46, v47);
  if ((v48 & 1) == 0)
  {
    v49 = sub_275B7AE4C();
    v51 = v50;
    v53 = v52;
    v55 = v54;

    MEMORY[0x277C89200](v49, v51, v53, v55);
  }

  sub_275B79B4C();

  sub_275B6941C(v45, MEMORY[0x277D7F808]);
  sub_275B7AB1C();
  sub_275B79B7C();

  (*(*v44 + 200))(v56);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t SystemActivity.unregister()()
{
  sub_275B68E44();
}

uint64_t SystemActivity.checkIn()()
{
  sub_275B68C7C();
}

uint64_t SystemActivity.debugDescription.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A18, &qword_275B7ED80);
  v6 = sub_275B7AD1C();
  MEMORY[0x277C89240](40, 0xE100000000000000);
  MEMORY[0x277C89240](v0[2], v0[3]);
  MEMORY[0x277C89240](32, 0xE100000000000000);

  MEMORY[0x277C89240](0x696669746E656469, 0xEB000000003D7265);

  v4 = v0[5];
  v5 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A20, &qword_275B7ED88);
  v2 = sub_275B7AFBC();
  MEMORY[0x277C89240](v2);

  MEMORY[0x277C89240](0x6169726574697263, 0xE90000000000003DLL);

  MEMORY[0x277C89240](41, 0xE100000000000000);

  return v6;
}

uint64_t SystemActivity.refreshState(timeout:)()
{
  sub_275B7AA9C();
  v1 = sub_275B7AA8C();
  *(v0 + 49) = 1;
  sub_275B68C7C();
  if (*(v0 + 49) == 1)
  {
    while (1)
    {
      (*(*v1 + 96))();
      if (sub_275B7AACC())
      {
        break;
      }

      sub_275B7AB2C();
      sub_275B7AB0C();
      if ((*(v0 + 49) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  else
  {
LABEL_4:

    return 1;
  }
}

uint64_t sub_275B67B84(_xpc_activity_s *a1)
{
  v2 = v1;
  v54 = *v1;
  v51 = sub_275B7A7BC();
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51, v5);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_275B7A76C();
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50, v8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7AA9C();
  v10 = sub_275B7AA8C();
  v55 = a1;
  state = xpc_activity_get_state(a1);
  v12 = _s33iCloudSubscriptionOptimizerDaemon14SystemActivityC8toStringySSSiFZ_0(state);
  v14 = v13;
  if (qword_28140F1A8 != -1)
  {
    swift_once();
  }

  v15 = sub_275B7A96C();
  __swift_project_value_buffer(v15, qword_28140F1B0);
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000023, 0x8000000275B862C0);
  v56 = v12;
  MEMORY[0x277C89240](v12, v14);
  MEMORY[0x277C89240](1528835677, 0xE400000000000000);
  v57 = v1;
  type metadata accessor for SystemActivity();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  if (state == 2)
  {
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_275B7B09C();
    v16 = *(v1 + 16);
    v17 = *(v1 + 24);

    v58 = v16;
    v59 = v17;
    MEMORY[0x277C89240](0xD000000000000017, 0x8000000275B86360);
    sub_275B7A91C();

    (*(*v1 + 168))(v18);
    v19 = xpc_activity_set_state(v55, 5);
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_275B7B09C();

    v58 = 0xD000000000000012;
    v59 = 0x8000000275B86380;
    MEMORY[0x277C89240](v16, v17);
    MEMORY[0x277C89240](0xD00000000000001ALL, 0x8000000275B863A0);
    if (v19)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v19)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x277C89240](v20, v21);

    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A91C();

    *(v1 + 40) = 0;
    *(v1 + 48) = 2;
    v22 = v56;
    if (qword_28140D970)
    {
      v58 = 0;
      v59 = 0xE000000000000000;

      v23 = MEMORY[0x277C89240](0x6B6F6F74206E7552, 0xE900000000000020);
      v57 = (*(*v10 + 96))(v23);
      sub_275B7B0EC();
      MEMORY[0x277C89240](46, 0xE100000000000000);
      v24 = v58;
      v25 = v59;
      v26 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
      v27 = v17;
      v54 = v17;
      v28 = v52;
      sub_275B6C6E8(v16, v27, v26, v52);
      v29 = swift_storeEnumTagMultiPayload();
      v55 = v14;
      v50 = v10;
      MEMORY[0x28223BE20](v29, v30);
      *(&v49 - 4) = v26;
      *(&v49 - 3) = v24;
      *(&v49 - 2) = v25;
      *(&v49 - 1) = v28;
      sub_275B69518(&qword_28140FBB8, MEMORY[0x277D7F818]);
      v31 = v16;
      v32 = v53;
      sub_275B7968C();
      v22 = v56;

      v14 = v55;
      v33 = v31;
      v10 = v50;
      sub_275B6B234(v33, v54, v32);

      sub_275B6941C(v32, MEMORY[0x277D7F818]);
      sub_275B6941C(v28, MEMORY[0x277D7F808]);
    }
  }

  else
  {
    v34 = v14;
    v35 = v55;
    sub_275B689C0(v55);
    if (v36 != 2)
    {
      v37 = v36;
      v50 = v10;
      v38 = *(v1 + 32);
      if (v36)
      {
        v39 = 0x6E69746165706572;
      }

      else
      {
        v39 = 0x7552656C676E6973;
      }

      if (v36)
      {
        v40 = 0xE900000000000067;
      }

      else
      {
        v40 = 0xE90000000000006ELL;
      }

      if (*(v1 + 32))
      {
        v41 = 0x6E69746165706572;
      }

      else
      {
        v41 = 0x7552656C676E6973;
      }

      if (*(v1 + 32))
      {
        v42 = 0xE900000000000067;
      }

      else
      {
        v42 = 0xE90000000000006ELL;
      }

      if (v39 == v41 && v40 == v42)
      {

        v10 = v50;
      }

      else
      {
        v43 = sub_275B7B1BC();

        v10 = v50;
        if ((v43 & 1) == 0)
        {
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_275B7B09C();
          MEMORY[0x277C89240](0xD000000000000025, 0x8000000275B862F0);
          MEMORY[0x277C89240](*(v2 + 16), *(v2 + 24));
          MEMORY[0x277C89240](0xD000000000000018, 0x8000000275B86320);
          v44 = v59;
          v53 = v58;
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_275B7B09C();
          MEMORY[0x277C89240](23328, 0xE200000000000000);
          LOBYTE(v57) = v37 & 1;
          sub_275B7B0EC();
          v35 = v55;
          MEMORY[0x277C89240](0xD000000000000019, 0x8000000275B86340);
          LOBYTE(v57) = v38;
          sub_275B7B0EC();
          MEMORY[0x277C89240](93, 0xE100000000000000);
          v45 = v58;
          v46 = v59;
          v58 = v53;
          v59 = v44;

          MEMORY[0x277C89240](v45, v46);
          v10 = v50;

          sub_275B7A95C();
        }
      }
    }

    *(v2 + 40) = sub_275B689C0(v35);
    *(v2 + 48) = v47;
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_275B7B09C();
    v57 = v2;
    sub_275B7B0EC();
    MEMORY[0x277C89240](0x61747320726F6620, 0xEC0000005B206574);
    v22 = v56;
    v14 = v34;
    MEMORY[0x277C89240](v56, v34);
    MEMORY[0x277C89240](0x2D6F6E207369205DLL, 0xEB000000002E706FLL);
    sub_275B7A91C();
  }

  sub_275B69208(v2, v22, v14, v10);
}

void SystemActivity.criteriaFor(interval:)()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  if (*MEMORY[0x277D86398])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86398], 1);
    v2 = *MEMORY[0x277D86360];
    if (*(v0 + 32))
    {
      xpc_dictionary_set_BOOL(v1, v2, 1);
      v3 = *MEMORY[0x277D86288];
      v4 = sub_275B7AB1C();
      xpc_dictionary_set_int64(v1, v3, v4);
      xpc_dictionary_set_int64(v1, *MEMORY[0x277D86250], 1);
      v5 = *MEMORY[0x277D86270];
      v6 = v4 / 2;
      v7 = v1;
    }

    else
    {
      xpc_dictionary_set_BOOL(v1, v2, 0);
      v8 = *MEMORY[0x277D86250];
      v6 = sub_275B7AB1C();
      v7 = v1;
      v5 = v8;
    }

    xpc_dictionary_set_int64(v7, v5, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_275B68520()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140F1B0);
  __swift_project_value_buffer(v0, qword_28140F1B0);
  type metadata accessor for SystemActivity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A18, &qword_275B7ED80);
  return sub_275B7A97C();
}

iCloudSubscriptionOptimizerDaemon::SystemActivity::ActivityType_optional __swiftcall SystemActivity.ActivityType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_275B7B17C();

  if (v1 == 1)
  {
    v2.value = iCloudSubscriptionOptimizerDaemon_SystemActivity_ActivityType_repeating;
  }

  else
  {
    v2.value = iCloudSubscriptionOptimizerDaemon_SystemActivity_ActivityType_unknownDefault;
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

uint64_t SystemActivity.ActivityType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E69746165706572;
  }

  else
  {
    return 0x7552656C676E6973;
  }
}

uint64_t sub_275B6862C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E69746165706572;
  }

  else
  {
    v4 = 0x7552656C676E6973;
  }

  if (v3)
  {
    v5 = 0xE90000000000006ELL;
  }

  else
  {
    v5 = 0xE900000000000067;
  }

  if (*a2)
  {
    v6 = 0x6E69746165706572;
  }

  else
  {
    v6 = 0x7552656C676E6973;
  }

  if (*a2)
  {
    v7 = 0xE900000000000067;
  }

  else
  {
    v7 = 0xE90000000000006ELL;
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

uint64_t sub_275B686D8()
{
  v1 = *v0;
  sub_275B7B26C();
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B68760()
{
  *v0;
  sub_275B7AD7C();
}

uint64_t sub_275B687D4()
{
  v1 = *v0;
  sub_275B7B26C();
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B68858@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_275B688B8(uint64_t *a1@<X8>)
{
  v2 = 0x7552656C676E6973;
  if (*v1)
  {
    v2 = 0x6E69746165706572;
  }

  v3 = 0xE900000000000067;
  if (!*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t SystemActivity.__allocating_init(identifier:activityType:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 48) = 258;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  return result;
}

uint64_t sub_275B689C0(_xpc_activity_s *a1)
{
  v1 = xpc_activity_copy_criteria(a1);
  if (v1)
  {
    v2 = v1;
    if (qword_28140F1A8 != -1)
    {
      swift_once();
    }

    v3 = sub_275B7A96C();
    __swift_project_value_buffer(v3, qword_28140F1B0);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000033, 0x8000000275B86420);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A90, &unk_275B7EED0);
    sub_275B7B0EC();
    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A91C();

    xpc_dictionary_get_int64(v2, *MEMORY[0x277D86250]);
    xpc_dictionary_get_int64(v2, *MEMORY[0x277D86288]);
    v4 = sub_275B7AB2C();
    xpc_dictionary_get_BOOL(v2, *MEMORY[0x277D86360]);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_28140F1A8 != -1)
    {
      swift_once();
    }

    v5 = sub_275B7A96C();
    __swift_project_value_buffer(v5, qword_28140F1B0);
    sub_275B7B09C();

    v6 = sub_275B7B2EC();
    MEMORY[0x277C89240](v6);

    MEMORY[0x277C89240](93, 0xE100000000000000);
    sub_275B7A91C();

    return 0;
  }

  return v4;
}

uint64_t SystemActivity.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_275B68C7C()
{
  v1 = v0;
  if (qword_28140F1A8 != -1)
  {
    swift_once();
  }

  v2 = sub_275B7A96C();
  __swift_project_value_buffer(v2, qword_28140F1B0);
  aBlock = 0;
  v10 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000014, 0x8000000275B86460);
  v15 = v0;
  type metadata accessor for SystemActivity();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  v3 = *(v0 + 16);
  v4 = *(v1 + 24);
  v5 = *MEMORY[0x277D86238];
  v13 = sub_275B6947C;
  v14 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_275B0B464;
  v12 = &block_descriptor_9;
  v6 = _Block_copy(&aBlock);

  v7 = sub_275B7AD4C();
  xpc_activity_register((v7 + 32), v5, v6);

  _Block_release(v6);
  return v1;
}

uint64_t sub_275B68E44()
{
  if (qword_28140D970)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);

    v3._countAndFlagsBits = v1;
    v3._object = v2;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    SystemActivityHistoryManager.addUnregisterAction(_:_:)(v3, v4);
  }

  if (qword_28140F1A8 != -1)
  {
    swift_once();
  }

  v5 = sub_275B7A96C();
  __swift_project_value_buffer(v5, qword_28140F1B0);
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000016, 0x8000000275B864A0);
  type metadata accessor for SystemActivity();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = sub_275B7AD4C();
  xpc_activity_unregister((v8 + 32));

  return v0;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon14SystemActivityC8toStringySSSiFZ_0(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1 = 0xE500000000000000;
        v2 = 0x5245464544;
        goto LABEL_15;
      case 5:
        v1 = 0xE400000000000000;
        v2 = 1162760004;
        goto LABEL_15;
      case 4:
        v1 = 0xE800000000000000;
        v2 = 0x45554E49544E4F43;
        goto LABEL_15;
    }

LABEL_12:
    v1 = 0xE700000000000000;
    v2 = 0x4E574F4E4B4E55;
    goto LABEL_15;
  }

  if (!a1)
  {
    v1 = 0xE800000000000000;
    v2 = 0x4E495F4B43454843;
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v1 = 0xE400000000000000;
    v2 = 1414086999;
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0xE300000000000000;
  v2 = 5133650;
LABEL_15:
  v4 = sub_275B7B19C();
  MEMORY[0x277C89240](58, 0xE100000000000000);
  MEMORY[0x277C89240](v2, v1);

  return v4;
}

unint64_t sub_275B690D4()
{
  result = qword_280A33A28;
  if (!qword_280A33A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33A28);
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

uint64_t getEnumTagSinglePayload for SystemActivity.Criteria(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemActivity.Criteria(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_275B69208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 49) = 0;
  if (qword_28140F1A8 != -1)
  {
    swift_once();
  }

  v7 = sub_275B7A96C();
  __swift_project_value_buffer(v7, qword_28140F1B0);
  sub_275B7B09C();

  MEMORY[0x277C89240](a2, a3);
  MEMORY[0x277C89240](8285, 0xE200000000000000);
  v8 = MEMORY[0x277C89240](0x207265746661, 0xE600000000000000);
  (*(*a4 + 96))(v8);
  sub_275B7B0EC();
  MEMORY[0x277C89240](5972014, 0xE300000000000000);
  type metadata accessor for SystemActivity();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);

  MEMORY[0x277C89240](0, 0xE000000000000000);

  sub_275B7A91C();
}

uint64_t sub_275B6941C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275B69498(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7A76C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B69518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SystemActivityEvent.__allocating_init(withSink:)(uint64_t *a1)
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
  MEMORY[0x277C89240](0x63416D6574737973, 0xEE00797469766974);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_275B696A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_275B7AE2C() != a1 || v9 != a2)
  {
    v10 = sub_275B7B1BC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_275B7AD8C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t SystemActivityEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x63416D6574737973, 0xEE00797469766974);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t SystemActivityEvent.addIdentifier(_:)()
{
  sub_275B79B4C();
}

uint64_t SystemActivityEvent.addActivityType(_:)()
{
  sub_275B79B4C();
}

uint64_t SystemActivityEvent.addActionType(_:)(uint64_t a1)
{
  v2 = sub_275B7A76C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  sub_275B69498(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_275B7AD1C();
  sub_275B696A4(40, 0xE100000000000000, v6, v7);
  if ((v8 & 1) == 0)
  {
    v9 = sub_275B7AE4C();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    MEMORY[0x277C89200](v9, v11, v13, v15);
  }

  sub_275B79B4C();
}

uint64_t SystemActivityEvent.addInterval(_:)(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_275B7AB1C();
    sub_275B79B7C();
  }
}

uint64_t SystemActivityEvent.addDeviationFromExpectedTime(_:)(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_275B7AB1C();
    sub_275B79B7C();
  }
}

uint64_t SystemActivityEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

Swift::String __swiftcall SystemActivityHistory_Action.OneOf_Type.toString()()
{
  v1 = sub_275B7A76C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  sub_275B69498(v0, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_275B7AD1C();
  v7 = v6;
  sub_275B696A4(40, 0xE100000000000000, v5, v6);
  if ((v8 & 1) == 0)
  {
    v9 = sub_275B7AE4C();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v5 = MEMORY[0x277C89200](v9, v11, v13, v15);
    v7 = v16;
  }

  v17 = v5;
  v18 = v7;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

void *SystemActivityHistoryManager.__allocating_init(historyFile:maxHistorySize:)(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  result = swift_allocObject();
  v9 = 0x8000000275B86180;
  v10 = 0xD00000000000001FLL;
  if (a2)
  {
    v10 = a1;
    v9 = a2;
  }

  result[2] = v10;
  result[3] = v9;
  v11 = 20;
  if ((a4 & 1) == 0)
  {
    v11 = a3;
  }

  result[4] = v11;
  return result;
}

uint64_t static SystemActivityHistoryManager.initShared(_:)(uint64_t a1)
{
  qword_28140D970 = a1;
}

uint64_t sub_275B69ED4()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140D958);
  __swift_project_value_buffer(v0, qword_28140D958);
  type metadata accessor for SystemActivityHistoryManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA8, &qword_275B7EFA0);
  return sub_275B7A97C();
}

void *SystemActivityHistoryManager.init(historyFile:maxHistorySize:)(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = 0x8000000275B86180;
  v6 = 0xD00000000000001FLL;
  if (a2)
  {
    v6 = a1;
    v5 = a2;
  }

  v4[2] = v6;
  v4[3] = v5;
  v7 = 20;
  if ((a4 & 1) == 0)
  {
    v7 = a3;
  }

  v4[4] = v7;
  return v4;
}

uint64_t SystemActivityHistoryManager.addRegisterAction(_:activityType:interval:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_275B7A7BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_275B7A76C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7A8DC();
  v22[10] = a4;
  sub_275B6DD70(&qword_28140FBA8, MEMORY[0x277D7F878]);
  sub_275B7968C();
  swift_storeEnumTagMultiPayload();
  v22[4] = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = v20;
  sub_275B6DD70(&qword_28140FBB8, MEMORY[0x277D7F818]);
  sub_275B7968C();
  sub_275B6B234(a1, a2, v15);
  sub_275B6DC74(v15, MEMORY[0x277D7F818]);
  return sub_275B6DC74(v20, MEMORY[0x277D7F808]);
}

uint64_t sub_275B6A1C0()
{
  sub_275B7AB1C();
  sub_275B7A8AC();
  sub_275B7AAAC();
  return sub_275B7A8BC();
}

Swift::Void __swiftcall SystemActivityHistoryManager.addRunAction(_:_:)(Swift::String a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v3 = a1._object;
  v4 = a1._countAndFlagsBits;
  v5 = sub_275B7A7BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275B7A76C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B6C6E8(v4, v3, v15, v14);
  swift_storeEnumTagMultiPayload();
  v18 = v15;
  v19 = countAndFlagsBits;
  v20 = object;
  v21 = v14;
  sub_275B6DD70(&qword_28140FBB8, MEMORY[0x277D7F818]);
  sub_275B7968C();
  sub_275B6B234(v4, v3, v9);
  sub_275B6DC74(v9, MEMORY[0x277D7F818]);
  sub_275B6DC74(v14, MEMORY[0x277D7F808]);
}

Swift::Void __swiftcall SystemActivityHistoryManager.addUnregisterAction(_:_:)(Swift::String a1, Swift::String a2)
{
  v68 = a2;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A98, &qword_275B7EF50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v63 = &v62 - v7;
  v8 = sub_275B7A8DC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v62 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA0, &unk_275B7EF58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v62 - v15;
  v17 = sub_275B7A7BC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v66 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v62 - v24;
  v26 = sub_275B7A76C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v64 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v62 - v33;
  sub_275B7A80C();
  v35 = v34;
  swift_storeEnumTagMultiPayload();
  v65 = sub_275B7AB2C();
  v36 = countAndFlagsBits;
  sub_275B6D19C(countAndFlagsBits, object, v16);
  v37 = *(v18 + 48);
  v67 = v17;
  if (v37(v16, 1, v17) == 1)
  {
    sub_275B29CD4(v16, &qword_280A33AA0, &unk_275B7EF58);
    v38 = object;
    v39 = countAndFlagsBits;
    v40 = v35;
  }

  else
  {
    sub_275B6DCD4(v16, v25, MEMORY[0x277D7F818]);
    v41 = v63;
    sub_275B6DA94(v25, v63);
    sub_275B6DC74(v25, MEMORY[0x277D7F818]);
    v39 = v36;
    v40 = v35;
    if ((*(v27 + 48))(v41, 1, v26) == 1)
    {
      sub_275B29CD4(v41, &qword_280A33A98, &qword_275B7EF50);
      v38 = object;
    }

    else
    {
      v38 = object;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_275B6DC74(v41, MEMORY[0x277D7F808]);
      }

      else
      {
        v42 = v41;
        v43 = v62;
        sub_275B6DCD4(v42, v62, MEMORY[0x277D7F878]);
        sub_275B7A89C();
        sub_275B6DC74(v43, MEMORY[0x277D7F878]);
        sub_275B7AB2C();
      }
    }
  }

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v71);
  type metadata accessor for SystemActivityEvent();
  swift_allocObject();
  sub_275B19CD4(v71, v70);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v69[0] = qword_28140F700;
  v69[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x63416D6574737973, 0xEE00797469766974);
  sub_275B19CD4(v70, v69);
  v44 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v71);

  sub_275B79B4C();

  sub_275B6DB80(v40, v64, MEMORY[0x277D7F808]);
  v45 = sub_275B7AD1C();
  sub_275B696A4(40, 0xE100000000000000, v45, v46);
  if ((v47 & 1) == 0)
  {
    v48 = sub_275B7AE4C();
    v50 = v49;
    v52 = v51;
    v54 = v53;

    MEMORY[0x277C89200](v48, v50, v52, v54);
  }

  sub_275B79B4C();

  sub_275B7AB1C();
  sub_275B79B7C();

  (*(*v44 + 200))(v55);

  v56 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  MEMORY[0x28223BE20](v56, v57);
  v59 = v68._countAndFlagsBits;
  v58 = v68._object;
  *(&v62 - 4) = v60;
  *(&v62 - 3) = v59;
  *(&v62 - 2) = v58;
  *(&v62 - 1) = v40;
  sub_275B6DD70(&qword_28140FBB8, MEMORY[0x277D7F818]);
  v61 = v66;
  sub_275B7968C();
  sub_275B6B234(v39, v38, v61);
  sub_275B6DC74(v61, MEMORY[0x277D7F818]);
  sub_275B6DC74(v40, MEMORY[0x277D7F808]);
}

uint64_t sub_275B6ABDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[2] = a3;
  v21 = a5;
  v20[1] = a4;
  v6 = sub_275B7959C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275B795CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7AB5C();
  sub_275B7A7AC();
  sub_275B7AC2C();
  sub_275B6AE30(v11);
  sub_275B7953C();
  (*(v7 + 8))(v11, v6);
  (*(v13 + 8))(v17, v12);
  sub_275B7A77C();

  sub_275B7A78C();
  sub_275B29CD4(a1, &qword_280A33A98, &qword_275B7EF50);
  sub_275B6DB80(v21, a1, MEMORY[0x277D7F808]);
  v18 = sub_275B7A76C();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_275B6AE30@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33128, &unk_275B7C3B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v41 = &v36 - v4;
  v40 = sub_275B7961C();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v40, v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_275B7958C();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v39, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_275B7956C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_275B7954C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_275B7955C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v28);
  (*(v30 + 104))(&v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v31 = v20;
  v32 = v40;
  (*(v21 + 104))(v25, *MEMORY[0x277CC9458], v31);
  v33 = v13;
  v34 = v41;
  (*(v15 + 104))(v19, *MEMORY[0x277CC9468], v14);
  (*(v9 + 104))(v33, *MEMORY[0x277CC9480], v39);
  sub_275B7960C();
  result = (*(v5 + 48))(v34, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v37, v34, v32);
    return sub_275B7957C();
  }

  return result;
}

uint64_t sub_275B6B234(void *a1, void *a2, uint64_t a3)
{
  v64 = a3;
  v67 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA0, &unk_275B7EF58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v58 - v8;
  v68 = sub_275B7A7BC();
  v61 = *(v68 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](v68, v11);
  v62 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_275B796BC();
  v66 = *(v59 - 8);
  v13 = *(v66 + 64);
  v15 = MEMORY[0x28223BE20](v59, v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AB0, &qword_275B7EFA8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v58 - v24;
  v26 = sub_275B7A6FC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v3;
  SystemActivityHistoryManager.readHistory()(v25);
  v34 = *(v27 + 48);
  v32 = v27 + 48;
  v33 = v34;
  v35 = v34(v25, 1, v26);
  v60 = v17;
  if (v35 == 1)
  {
    sub_275B7A6EC();
    v36 = v33(v25, 1, v26);
    if (v36 != 1)
    {
      v36 = sub_275B29CD4(v25, &qword_280A33AB0, &qword_275B7EFA8);
    }
  }

  else
  {
    v36 = sub_275B6DCD4(v25, v31, MEMORY[0x277D7F7D0]);
  }

  v38 = 0;
  v63 = v31;
  v39 = *v31;
  v40 = *(*v31 + 16);
  while (1)
  {
    if (v40 == v38)
    {
      MEMORY[0x28223BE20](v36, v37);
      v53 = v67;
      *(&v58 - 4) = a1;
      *(&v58 - 3) = v53;
      *(&v58 - 2) = v64;
      sub_275B6DD70(&qword_28140FBD0, MEMORY[0x277D7F500]);
      v54 = v60;
      sub_275B7968C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_275B11490(0, v39[2] + 1, 1, v39);
      }

      v52 = v63;
      v56 = v39[2];
      v55 = v39[3];
      if (v56 >= v55 >> 1)
      {
        v39 = sub_275B11490(v55 > 1, v56 + 1, 1, v39);
      }

      v39[2] = v56 + 1;
      sub_275B6DCD4(v54, v39 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v56, MEMORY[0x277D7F500]);
      goto LABEL_37;
    }

    v41 = v38;
    if (v38 >= v39[2])
    {
      goto LABEL_41;
    }

    v17 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v32 = *(v66 + 72) * v38;
    sub_275B6DB80(v39 + v17 + v32, v20, MEMORY[0x277D7F500]);
    v26 = sub_275B7969C();
    v43 = v42;
    sub_275B6DC74(v20, MEMORY[0x277D7F500]);
    if (v26 == a1 && v43 == v67)
    {
      break;
    }

    v26 = sub_275B7B1BC();

    v38 = v41 + 1;
    if (v26)
    {
      goto LABEL_12;
    }
  }

LABEL_12:
  v20 = v62;
  sub_275B6DB80(v64, v62, MEMORY[0x277D7F818]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v44 = v61;
    if (v41 >= v39[2])
    {
      __break(1u);
    }

    else
    {
      v67 = v39;
      v26 = v39 + v17;
      a1 = *(v39 + v17 + v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + v17 + v32) = a1;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }
    }

    a1 = sub_275B114B8(0, a1[2] + 1, 1, a1);
    *(v26 + v32) = a1;
LABEL_15:
    v17 = a1[2];
    v46 = a1[3];
    if (v17 >= v46 >> 1)
    {
      a1 = sub_275B114B8(v46 > 1, v17 + 1, 1, a1);
      *(v26 + v32) = a1;
    }

    a1[2] = v17 + 1;
    v39 = ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v47 = *(v44 + 72);
    sub_275B6DCD4(v20, v39 + a1 + v47 * v17, MEMORY[0x277D7F818]);
    if (v41 < v67[2])
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v39 = sub_275B6DD3C(v39);
  }

  v17 = *(v65 + 32);
  v48 = (v44 + 56);
  a1 = *(v26 + v32);
  while (1)
  {
    v49 = a1[2];
    if (v17 >= v49)
    {
      break;
    }

    if (!v49)
    {
      goto LABEL_39;
    }

    sub_275B6DB80(v39 + a1, v9, MEMORY[0x277D7F818]);
    (*v48)(v9, 0, 1, v68);
    sub_275B29CD4(v9, &qword_280A33AA0, &unk_275B7EF58);
    a1 = *(v26 + v32);
    v20 = a1[2];
    if (!v20)
    {
      goto LABEL_40;
    }

    v50 = *(v26 + v32);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + v32) = a1;
    if (!v51 || (v20 - 1) > a1[3] >> 1)
    {
      a1 = sub_275B114B8(v51, v20, 1, a1);
      *(v26 + v32) = a1;
    }

    v20 = v39 + a1;
    sub_275B6DC74(v39 + a1, MEMORY[0x277D7F818]);
    if (v47 > 0 || v20 >= v39 + a1 + v47 + (a1[2] - 1) * v47)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v47)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    --a1[2];
    *(v26 + v32) = a1;
    if (v41 >= v67[2])
    {
      goto LABEL_38;
    }
  }

  v52 = v63;
  v39 = v67;
LABEL_37:
  *v52 = v39;
  sub_275B6C1B0(v52);
  return sub_275B6DC74(v52, MEMORY[0x277D7F7D0]);
}

uint64_t sub_275B6B9F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_275B796AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33228, &qword_275B7C688);
  v6 = *(sub_275B7A7BC() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_275B7D0A0;
  sub_275B6DB80(a4, v9 + v8, MEMORY[0x277D7F818]);
  v10 = *a1;

  *a1 = v9;
  return result;
}

uint64_t SystemActivityHistoryManager.readHistory()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_275B7964C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_275B7A6FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275B794EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DaemonStateManager();
  static DaemonStateManager.toUrl(_:)(*(v1 + 16), *(v1 + 24), v17);
  v39 = v13;
  v40 = a1;
  v18 = [objc_opt_self() defaultManager];
  sub_275B794CC();
  v19 = sub_275B7ACDC();

  v20 = [v18 fileExistsAtPath_];

  if ((v20 & 1) == 0)
  {
    if (qword_28140D950 != -1)
    {
      swift_once();
    }

    v21 = sub_275B7A96C();
    __swift_project_value_buffer(v21, qword_28140D958);
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    sub_275B7B09C();

    *&v41 = 0xD000000000000024;
    *(&v41 + 1) = 0x8000000275B865F0;
    v22 = sub_275B794CC();
    MEMORY[0x277C89240](v22);

    MEMORY[0x277C89240](93, 0xE100000000000000);
    sub_275B7A91C();

    (*(v39 + 8))(v17, v12);
    v23 = 1;
    v24 = v40;
    return (*(v7 + 56))(v24, v23, 1, v6);
  }

  v25 = sub_275B794FC();
  v27 = v26;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_275B1E0B4(v25, v26);
  sub_275B7963C();
  sub_275B6DD70(&qword_28140FBC0, MEMORY[0x277D7F7D0]);
  sub_275B7966C();
  if (qword_28140D950 != -1)
  {
    swift_once();
  }

  v29 = sub_275B7A96C();
  v30 = __swift_project_value_buffer(v29, qword_28140D958);
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_275B7B09C();
  result = MEMORY[0x277C89240](0x5B3D657A6973, 0xE600000000000000);
  v31 = v27 >> 62;
  v38[1] = v30;
  if ((v27 >> 62) > 1)
  {
    v32 = 0;
    if (v31 != 2)
    {
      goto LABEL_18;
    }

    v34 = *(v25 + 16);
    v33 = *(v25 + 24);
    v35 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (!v35)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (!v31)
  {
    v32 = BYTE6(v27);
LABEL_18:
    v38[0] = 0x8000000275B86620;
    v44 = v32;
    v36 = sub_275B7B19C();
    MEMORY[0x277C89240](v36);

    MEMORY[0x277C89240](0xD000000000000010, 0x8000000275B86640);
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    v37 = v41;
    *&v41 = 0xD00000000000001FLL;
    *(&v41 + 1) = v38[0];
    MEMORY[0x277C89240](v37, *(&v37 + 1));

    sub_275B7A91C();

    sub_275B1E160(v25, v27);
    (*(v39 + 8))(v17, v12);
    v24 = v40;
    sub_275B6DCD4(v11, v40, MEMORY[0x277D7F7D0]);
    v23 = 0;
    return (*(v7 + 56))(v24, v23, 1, v6);
  }

  LODWORD(v32) = HIDWORD(v25) - v25;
  if (!__OFSUB__(HIDWORD(v25), v25))
  {
    v32 = v32;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_275B6C1B0(uint64_t a1)
{
  v3 = sub_275B794EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16) < 6uLL)
  {
    v14 = v7;
    type metadata accessor for DaemonStateManager();
    static DaemonStateManager.toUrl(_:)(*(v1 + 16), *(v1 + 24), v9);
    sub_275B7A6FC();
    sub_275B6DD70(&qword_28140FBC0, MEMORY[0x277D7F7D0]);
    v15 = sub_275B7967C();
    v17 = v16;
    sub_275B7952C();
    if (qword_28140D950 != -1)
    {
      swift_once();
    }

    v18 = sub_275B7A96C();
    v19 = __swift_project_value_buffer(v18, qword_28140D958);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_275B7B09C();
    result = MEMORY[0x277C89240](0x5B3D657A6973, 0xE600000000000000);
    v20 = v17 >> 62;
    v28[1] = v19;
    if ((v17 >> 62) > 1)
    {
      v21 = 0;
      if (v20 != 2)
      {
        goto LABEL_16;
      }

      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      v24 = __OFSUB__(v22, v23);
      v21 = v22 - v23;
      if (!v24)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v20)
    {
      v21 = BYTE6(v17);
      goto LABEL_16;
    }

    LODWORD(v21) = HIDWORD(v15) - v15;
    if (__OFSUB__(HIDWORD(v15), v15))
    {
      __break(1u);
      return result;
    }

    v21 = v21;
LABEL_16:
    v28[2] = v21;
    v25 = sub_275B7B19C();
    MEMORY[0x277C89240](v25);

    MEMORY[0x277C89240](0xD000000000000010, 0x8000000275B86640);
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    v26 = v29;
    v27 = v30;
    v29 = 0xD000000000000020;
    v30 = 0x8000000275B86700;
    MEMORY[0x277C89240](v26, v27);

    sub_275B7A91C();

    sub_275B1E160(v15, v17);
    return (*(v4 + 8))(v9, v14);
  }

  if (qword_28140D950 != -1)
  {
    swift_once();
  }

  v10 = sub_275B7A96C();
  __swift_project_value_buffer(v10, qword_28140D958);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD00000000000001ELL, 0x8000000275B86780);
  sub_275B7A6FC();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  v11 = v29;
  v12 = v30;
  v29 = 0xD000000000000042;
  v30 = 0x8000000275B86730;
  MEMORY[0x277C89240](v11, v12);

  sub_275B7A95C();
}

uint64_t sub_275B6C6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v7 = sub_275B7A76C();
  v67 = *(v7 - 8);
  v8 = v67[8];
  MEMORY[0x28223BE20](v7, v9);
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v69 = &v61 - v13;
  v64 = sub_275B7A86C();
  v14 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64, v15);
  v65 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A98, &qword_275B7EF50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v61 - v20;
  v22 = sub_275B7A8DC();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v62 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA0, &unk_275B7EF58);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = &v61 - v29;
  v31 = sub_275B7A7BC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a4;
  sub_275B7A85C();
  v68 = a1;
  v70 = a2;
  sub_275B6D19C(a1, a2, v30);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_275B29CD4(v30, &qword_280A33AA0, &unk_275B7EF58);
    v37 = 1;
    v38 = v69;
  }

  else
  {
    sub_275B6DCD4(v30, v36, MEMORY[0x277D7F818]);
    sub_275B6DA94(v36, v21);
    if ((v67[6])(v21, 1, v7) == 1)
    {
      sub_275B6DC74(v36, MEMORY[0x277D7F818]);
      sub_275B29CD4(v21, &qword_280A33A98, &qword_275B7EF50);
      v37 = 1;
      v38 = v69;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v38 = v69;
      if (EnumCaseMultiPayload)
      {
        sub_275B6DC74(v36, MEMORY[0x277D7F818]);
        sub_275B6DC74(v21, MEMORY[0x277D7F808]);
        v37 = 1;
      }

      else
      {
        v40 = v21;
        v41 = v62;
        sub_275B6DCD4(v40, v62, MEMORY[0x277D7F878]);
        sub_275B7A79C();
        sub_275B7AB6C();
        sub_275B7A89C();
        sub_275B7AB2C();
        v42 = sub_275B7ABBC();
        v43 = sub_275B7ABCC();
        v67 = &v61;
        MEMORY[0x28223BE20](v43, v44);
        *(&v61 - 2) = v42;
        *(&v61 - 1) = v45;
        sub_275B6DD70(&qword_28140FBB0, MEMORY[0x277D7F858]);
        v46 = v65;
        sub_275B7968C();
        sub_275B6DC74(v41, MEMORY[0x277D7F878]);
        sub_275B6DC74(v36, MEMORY[0x277D7F818]);
        v47 = v66;
        sub_275B6DC74(v66, MEMORY[0x277D7F858]);
        sub_275B6DCD4(v46, v47, MEMORY[0x277D7F858]);
        v37 = 0;
      }
    }
  }

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v74);
  type metadata accessor for SystemActivityEvent();
  swift_allocObject();
  sub_275B19CD4(v74, v73);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v72[0] = qword_28140F700;
  v72[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x63416D6574737973, 0xEE00797469766974);
  sub_275B19CD4(v73, v72);
  v48 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);

  sub_275B79B4C();

  sub_275B7A85C();
  swift_storeEnumTagMultiPayload();
  sub_275B6DB80(v38, v71, MEMORY[0x277D7F808]);
  v49 = sub_275B7AD1C();
  sub_275B696A4(40, 0xE100000000000000, v49, v50);
  if ((v51 & 1) == 0)
  {
    v52 = sub_275B7AE4C();
    v54 = v53;
    v56 = v55;
    v58 = v57;

    MEMORY[0x277C89200](v52, v54, v56, v58);
  }

  sub_275B79B4C();

  sub_275B6DC74(v38, MEMORY[0x277D7F808]);
  if ((v37 & 1) == 0)
  {
    sub_275B7AB1C();
    sub_275B79B7C();

    sub_275B7AB1C();
    sub_275B79B7C();
  }

  (*(*v48 + 200))(v59);
}

uint64_t sub_275B6CFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a3;
  v3 = sub_275B7959C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_275B795CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7AB5C();
  sub_275B7A82C();
  sub_275B7AC2C();
  sub_275B6AE30(v8);
  sub_275B7953C();
  (*(v4 + 8))(v8, v3);
  (*(v10 + 8))(v14, v9);
  sub_275B7A83C();
  v16[2] = 0;
  v16[3] = 0xE000000000000000;
  v16[5] = v16[0];
  sub_275B7B0EC();
  return sub_275B7A84C();
}

uint64_t sub_275B6D19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A98, &qword_275B7EF50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v101 = &v95 - v8;
  v103 = sub_275B7A7BC();
  v100 = *(v103 - 8);
  v9 = *(v100 + 64);
  MEMORY[0x28223BE20](v103, v10);
  v105 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA0, &unk_275B7EF58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v102 = &v95 - v15;
  v107 = sub_275B7A76C();
  v97 = *(v107 - 8);
  v16 = *(v97 + 64);
  MEMORY[0x28223BE20](v107, v17);
  v108 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v106 = &v95 - v21;
  v22 = sub_275B796BC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8, v25);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v98 = (&v95 - v30);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v95 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AB0, &qword_275B7EFA8);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8, v37);
  v39 = &v95 - v38;
  v40 = sub_275B7A6FC();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v95 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  SystemActivityHistoryManager.readHistory()(v39);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    sub_275B29CD4(v39, &qword_280A33AB0, &qword_275B7EFA8);
    return (*(v100 + 56))(a3, 1, 1, v103);
  }

  v95 = v34;
  v96 = a3;
  sub_275B6DCD4(v39, v45, MEMORY[0x277D7F7D0]);
  v46 = *v45;
  v47 = *(*v45 + 16);
  v48 = v107;
  result = v45;
  v50 = v99;
  if (!v47)
  {
LABEL_10:
    sub_275B6DC74(result, MEMORY[0x277D7F7D0]);
    a3 = v96;
    return (*(v100 + 56))(a3, 1, 1, v103);
  }

  v51 = 0;
  v104 = result;
  while (1)
  {
    if (v51 >= *(v46 + 16))
    {
      __break(1u);
      return result;
    }

    sub_275B6DB80(v46 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v51, v27, MEMORY[0x277D7F500]);
    if (sub_275B7969C() == a1 && v52 == v50)
    {
      break;
    }

    v53 = sub_275B7B1BC();

    if (v53)
    {
      goto LABEL_13;
    }

    ++v51;
    sub_275B6DC74(v27, MEMORY[0x277D7F500]);
    result = v104;
    if (v47 == v51)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  v54 = MEMORY[0x277D7F500];
  v55 = v98;
  sub_275B6DCD4(v27, v98, MEMORY[0x277D7F500]);
  v56 = v55;
  v57 = v95;
  sub_275B6DCD4(v56, v95, v54);
  sub_275B7A8CC();
  swift_storeEnumTagMultiPayload();
  v58 = v100;
  v98 = *(v100 + 56);
  v99 = v100 + 56;
  (v98)(v102, 1, 1, v103);
  v59 = *(*v57 + 16);
  v60 = v101;
  v61 = v105;
  if (v59)
  {
    v62 = *v57 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v63 = (v97 + 48);
    v64 = *(v58 + 72);
    v97 += 48;
    do
    {
      sub_275B6DB80(v62, v61, MEMORY[0x277D7F818]);
      sub_275B6DB80(v106, v108, MEMORY[0x277D7F808]);
      v65 = sub_275B7AD1C();
      v67 = v66;
      sub_275B696A4(40, 0xE100000000000000, v65, v66);
      if ((v68 & 1) == 0)
      {
        v69 = sub_275B7AE4C();
        v71 = v70;
        v73 = v72;
        v75 = v74;

        v76 = v73;
        v61 = v105;
        v65 = MEMORY[0x277C89200](v69, v71, v76, v75);
        v67 = v77;
        v48 = v107;
      }

      sub_275B6DA94(v61, v60);
      if ((*v63)(v60, 1, v48) == 1)
      {
        sub_275B29CD4(v60, &qword_280A33A98, &qword_275B7EF50);
      }

      else
      {
        sub_275B6DB80(v60, v108, MEMORY[0x277D7F808]);
        v78 = sub_275B7AD1C();
        v80 = v79;
        sub_275B696A4(40, 0xE100000000000000, v78, v79);
        if ((v81 & 1) == 0)
        {
          v82 = sub_275B7AE4C();
          v84 = v83;
          v86 = v85;
          v87 = v64;
          v89 = v88;

          v90 = v82;
          v61 = v105;
          v91 = v86;
          v60 = v101;
          v78 = MEMORY[0x277C89200](v90, v84, v91, v89);
          v80 = v92;
          v64 = v87;
          v63 = v97;
        }

        sub_275B6DC74(v60, MEMORY[0x277D7F808]);
        if (v65 == v78 && v67 == v80)
        {

          v48 = v107;
LABEL_27:
          v94 = v102;
          sub_275B29CD4(v102, &qword_280A33AA0, &unk_275B7EF58);
          sub_275B6DCD4(v61, v94, MEMORY[0x277D7F818]);
          (v98)(v94, 0, 1, v103);
          goto LABEL_17;
        }

        v93 = sub_275B7B1BC();

        v48 = v107;
        if (v93)
        {
          goto LABEL_27;
        }
      }

      sub_275B6DC74(v61, MEMORY[0x277D7F818]);
LABEL_17:
      v62 += v64;
      --v59;
    }

    while (v59);
  }

  sub_275B6DC74(v106, MEMORY[0x277D7F808]);
  sub_275B6DC74(v95, MEMORY[0x277D7F500]);
  sub_275B6DC74(v104, MEMORY[0x277D7F7D0]);
  return sub_275B6DBE8(v102, v96);
}

uint64_t sub_275B6DA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A98, &qword_275B7EF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SystemActivityHistoryManager.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SystemActivityHistoryManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_275B6DB80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B6DBE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA0, &unk_275B7EF58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B6DC74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B6DCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B6DD70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275B6DDBC()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140F050);
  __swift_project_value_buffer(v0, qword_28140F050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A33AD0, &qword_275B7EFE8);
  return sub_275B7A97C();
}

void sub_275B6DE3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = a1;

  swift_beginAccess();
  v11 = *(a4 + 16);
  *(a4 + 16) = a2;
  v12 = a2;

  dispatch_group_leave(a5);
}

uint64_t sub_275B6DEE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC8, &qword_275B7EFE0);
    v4 = sub_275B7AC8C();
  }

  v7 = a3;
  v6(v4, a3);
}

id _s33iCloudSubscriptionOptimizerDaemon14SystemSettingsV010isSharingiA14DiagnosticDataSbyFZ_0()
{
  v0 = dispatch_group_create();
  v1 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  dispatch_group_enter(v0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);
  if (v1)
  {
    v5 = v1;
    v24 = v1;
    v6 = sub_275B7AE6C();
    sub_275B35FEC();
    v7 = sub_275B7ACDC();

    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v2;
    v8[4] = v0;
    aBlock[4] = sub_275B6E594;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275B6DEE4;
    aBlock[3] = &block_descriptor_10;
    v9 = _Block_copy(aBlock);

    v10 = v0;

    [v5 configurationInfoWithIdentifiers:v6 forAltDSID:v7 completion:v9];
    _Block_release(v9);

    v1 = v24;
  }

  sub_275B7AB2C();
  if (sub_275B7AF6C())
  {
    if (qword_28140F048 != -1)
    {
      swift_once();
    }

    v11 = sub_275B7A96C();
    __swift_project_value_buffer(v11, qword_28140F050);
    sub_275B7A95C();
  }

  else
  {
    swift_beginAccess();
    v12 = *(v2 + 16);
    if (v12)
    {
      v13 = v12;
      if (qword_28140F048 != -1)
      {
        swift_once();
      }

      v14 = sub_275B7A96C();
      __swift_project_value_buffer(v14, qword_28140F050);
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD00000000000001BLL, 0x8000000275B867C0);
      MEMORY[0x277C89240](0xD000000000000029, 0x8000000275B7F580);
      MEMORY[0x277C89240](0x726F727265202E5DLL, 0xEA00000000005B3DLL);
      v28 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
      sub_275B7B0EC();
      MEMORY[0x277C89240](93, 0xE100000000000000);
      sub_275B7A95C();

      return 0;
    }

    if (qword_28140F048 != -1)
    {
      swift_once();
    }

    v15 = sub_275B7A96C();
    __swift_project_value_buffer(v15, qword_28140F050);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_275B7B09C();

    v28 = 0xD00000000000001FLL;
    v29 = 0x8000000275B867A0;
    swift_beginAccess();
    aBlock[6] = *v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AB8, &unk_275B7EFD0);
    v16 = sub_275B7AD1C();
    MEMORY[0x277C89240](v16);

    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A91C();

    v17 = *v4;
    if (v17)
    {
      if (*(v17 + 16))
      {

        v18 = sub_275B180D4(0xD000000000000029, 0x8000000275B7F580);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);
          swift_unknownObjectRetain();

          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (v21)
          {
            v22 = [v21 BOOLValue];

            swift_unknownObjectRelease();
            return v22;
          }

          swift_unknownObjectRelease();
          goto LABEL_8;
        }
      }

      else
      {
      }

      return 0;
    }
  }

LABEL_8:

  return 0;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275B6E5B8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33AE0);
  __swift_project_value_buffer(v0, qword_280A33AE0);
  type metadata accessor for UsageTrackingFeatureProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AF8, &unk_275B7F020);
  return sub_275B7A97C();
}

uint64_t UsageTrackingFeatureProvider.getFeatureByName(_:)(unsigned __int8 a1)
{
  v2 = a1;
  v3 = a1;
  v4 = sub_275B793FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v3 == 50)
  {
    v10 = *(v1 + 16);
    sub_275B7AB9C();
    type metadata accessor for UsageTrackingFeatures();
    v11 = static UsageTrackingFeatures.getTotalScreenTimeInSeconds(_:)();
    (*(v5 + 8))(v9, v4);
    v2 = 50;
  }

  else
  {
    if (qword_280A32E30 != -1)
    {
      swift_once();
    }

    v12 = sub_275B7A96C();
    __swift_project_value_buffer(v12, qword_280A33AE0);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
    v15[15] = v2;
    sub_275B7B0EC();
    MEMORY[0x277C89240](0xD000000000000034, 0x8000000275B86830);
    sub_275B7A95C();

    v11 = -1;
  }

  type metadata accessor for Feature();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = [objc_opt_self() featureValueWithInt64_];
  *(v13 + 32) = 1;
  return v13;
}

uint64_t static UsageTrackingFeatures.getTotalScreenTimeInSeconds(_:)()
{
  v1 = v0;
  sub_275B7AA9C();
  v2 = sub_275B7AA8C();
  v3 = [objc_allocWithZone(MEMORY[0x277D77B60]) init];
  v4 = swift_allocObject();
  *(v4 + 16) = sub_275B7AB2C();
  v5 = (v4 + 16);
  sub_275B793EC();
  v7 = v6;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = sub_275B793DC();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v4;
  v10[4] = v1;
  v10[5] = v1;
  v25 = sub_275B6EFD4;
  v26 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_275B6EFE4;
  v24 = &block_descriptor_11;
  v11 = _Block_copy(&aBlock);
  v12 = v8;

  [v3 fetchReportsDuringInterval:v9 partitionInterval:v11 completionHandler:v7];
  _Block_release(v11);

  if (qword_280A32E40 != -1)
  {
    swift_once();
  }

  if (sub_275B7AF6C())
  {
    if (qword_280A32E38 != -1)
    {
      swift_once();
    }

    v13 = sub_275B7A96C();
    __swift_project_value_buffer(v13, qword_280A33B00);
    aBlock = 0;
    v22 = 0xE000000000000000;
    sub_275B7B09C();
    v14 = MEMORY[0x277C89240](0xD000000000000029, 0x8000000275B86900);
    (*(*v2 + 96))(v14);
    sub_275B7B0EC();
    MEMORY[0x277C89240](46, 0xE100000000000000);
    sub_275B7A91C();

    if (qword_280A32E48 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (qword_280A32E38 != -1)
    {
      swift_once();
    }

    v15 = sub_275B7A96C();
    __swift_project_value_buffer(v15, qword_280A33B00);
    aBlock = 0;
    v22 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000027, 0x8000000275B86930);
    swift_beginAccess();
    v20 = *v5;
    sub_275B7B0EC();
    MEMORY[0x277C89240](8238, 0xE200000000000000);
    v16 = MEMORY[0x277C89240](0x617275446C6C6163, 0xED00003D6E6F6974);
    (*(*v2 + 96))(v16);
    sub_275B7B0EC();

    MEMORY[0x277C89240](0, 0xE000000000000000);

    sub_275B7A91C();

    v17 = *v5;
  }

  v18 = sub_275B7AB1C();

  return v18;
}

uint64_t sub_275B6EDA8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33B00);
  __swift_project_value_buffer(v0, qword_280A33B00);
  type metadata accessor for UsageTrackingFeatures();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B28, &qword_275B7F048);
  return sub_275B7A97C();
}

uint64_t sub_275B6EE24()
{
  result = sub_275B7AB2C();
  qword_280A33B18 = result;
  return result;
}

uint64_t sub_275B6EE5C()
{
  result = sub_275B7AB2C();
  qword_280A33B20 = result;
  return result;
}

void sub_275B6EE94(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, NSObject *a5, uint64_t a6)
{
  if (a4)
  {
    if (qword_280A32E38 != -1)
    {
      swift_once();
    }

    v8 = sub_275B7A96C();
    __swift_project_value_buffer(v8, qword_280A33B00);
    sub_275B7B09C();

    v9 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33218, &unk_275B7C670);
    v10 = sub_275B7AD1C();
    MEMORY[0x277C89240](v10);

    sub_275B7A95C();
  }

  else
  {
    v12 = _s33iCloudSubscriptionOptimizerDaemon21UsageTrackingFeaturesC17getScreenTimeSecsy01iabC4Core0J5DeltaVSaySo13USUsageReportCGSgFZ_0(a1);
    swift_beginAccess();
    *(a6 + 16) = v12;
  }

  dispatch_group_leave(a5);
}

void sub_275B6EFD4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  sub_275B6EE94(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24));
}

uint64_t sub_275B6EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_275B6F2D0();
    v8 = sub_275B7AE7C();
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B38, &unk_275B7F050);
    a3 = sub_275B7AC8C();
  }

  if (a4)
  {
    sub_275B6F2D0();
    a4 = sub_275B7AE7C();
  }

  v11 = a5;
  v10(v8, a3, a4, a5);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon21UsageTrackingFeaturesC17getScreenTimeSecsy01iabC4Core0J5DeltaVSaySo13USUsageReportCGSgFZ_0(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_16:

    if (qword_280A32E48 == -1)
    {
      return qword_280A33B20;
    }

LABEL_23:
    swift_once();
    return qword_280A33B20;
  }

  if (!sub_275B7B11C())
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v3 = MEMORY[0x277C89550](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v2 = *(v1 + 32);

    v3 = v2;
  }

  v4 = v3;

  [v4 screenTime];
  v6 = v5;
  v7 = v5;

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return sub_275B7AB2C();
}

unint64_t sub_275B6F2D0()
{
  result = qword_280A33B30;
  if (!qword_280A33B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A33B30);
  }

  return result;
}

uint64_t XpcCallFinishedEvent.__allocating_init(withSink:)(uint64_t *a1)
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
  MEMORY[0x277C89240](0x466C6C6143637078, 0xEF64656873696E69);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallFinishedEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x466C6C6143637078, 0xEF64656873696E69);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallFinishedEvent.addXpcMethod(_:)()
{
  sub_275B79B4C();
}

uint64_t XpcCallFinishedEvent.addDuration(_:)()
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t XpcCallFinishedEvent.addWasSuccessful(_:)()
{
  sub_275B79B5C();
}

uint64_t XpcCallFinishedEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t XpcCallStartedEvent.__allocating_init(withSink:)(uint64_t *a1)
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
  MEMORY[0x277C89240](0x536C6C6143637078, 0xEE00646574726174);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallStartedEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x536C6C6143637078, 0xEE00646574726174);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallStartedEvent.addXpcMethod(_:)()
{
  sub_275B79B4C();
}

uint64_t XpcCallStartedEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t XpcCallToIndFinishedEvent.__allocating_init(withSink:)(uint64_t *a1)
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
  MEMORY[0x277C89240](0xD000000000000014, 0x8000000275B7F540);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallToIndFinishedEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000014, 0x8000000275B7F540);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallToIndFinishedEvent.addCallDuration(_:)()
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t XpcCallToIndFinishedEvent.addWasSuccessful(_:)()
{
  sub_275B79B5C();
}

uint64_t XpcCallToIndFinishedEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_275B6FDC8()
{
  v0 = sub_275B79CFC();
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for DaemonStateManager();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = sub_275B7AB2C();
  v6 = sub_275B7AB2C();
  type metadata accessor for MobileAssetDaemonStateHelper();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v6;
  v7[5] = v6;
  type metadata accessor for MobileAssetLocalManager();
  v8 = swift_allocObject();
  v9 = objc_allocWithZone(MEMORY[0x277D289C0]);
  swift_bridgeObjectRetain_n();
  v10 = [v9 init];
  v11 = type metadata accessor for RealAssetInterface();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  type metadata accessor for MobileAssetDownloadManager();
  result = swift_allocObject();
  *(result + 64) = v11;
  *(result + 72) = &protocol witness table for RealAssetInterface;
  *(result + 80) = 0;
  *(result + 16) = v3;
  *(result + 24) = v7;
  *(result + 32) = v8;
  *(result + 40) = v12;
  return result;
}

uint64_t sub_275B6FF28()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33B40);
  __swift_project_value_buffer(v0, qword_280A33B40);
  type metadata accessor for XpcSubscriptionClientProtocolServer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33BC0, &unk_275B7F190);
  return sub_275B7A97C();
}

uint64_t sub_275B6FFA4()
{
  result = sub_275B7AB2C();
  qword_280A33B58 = result;
  return result;
}

uint64_t XpcSubscriptionClientProtocolServer.request(_:withReply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280A32E50 != -1)
  {
    swift_once();
  }

  v6 = sub_275B7A96C();
  __swift_project_value_buffer(v6, qword_280A33B40);
  sub_275B7A91C();
  v7 = *MEMORY[0x277D7F508];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  XpcSubscriptionClientProtocolServer.request(_:withReply:)(a1 + v7, sub_275B701C0, v8);
}

{
  v24 = *v3;
  v25 = a2;
  v23[0] = sub_275B797EC();
  v6 = *(*(v23[0] - 8) + 64);
  MEMORY[0x28223BE20](v23[0], v7);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_275B7970C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8, v12);
  v13 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280A32E50 != -1)
  {
    swift_once();
  }

  v14 = sub_275B7A96C();
  __swift_project_value_buffer(v14, qword_280A33B40);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_275B7B09C();

  v26 = 0xD000000000000022;
  v27 = 0x8000000275B86BA0;
  v15 = sub_275B796FC();
  MEMORY[0x277C89240](v15);

  MEMORY[0x277C89240](11869, 0xE200000000000000);
  sub_275B7A91C();

  sub_275B7AA9C();
  v16 = sub_275B7AA8C();
  sub_275B77C9C(a1, v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D7F530]);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_275B77AB0(v13, v20 + v17, MEMORY[0x277D7F530]);
  *(v20 + v18) = v16;
  v21 = (v20 + v19);
  *v21 = v25;
  v21[1] = a3;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;

  sub_275B70CB4(a1, sub_275B70B9C, v20);
}

void sub_275B700FC(uint64_t a1, void (*a2)(void))
{
  v4 = sub_275B797EC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  sub_275B77C9C(a1, &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D7F580]);
  v8 = objc_allocWithZone(sub_275B796DC());
  v9 = sub_275B796CC();
  a2();
}

uint64_t sub_275B70828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334F8, &unk_275B7D090);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v23 - v9;
  sub_275B77BD4(a1, v23 - v9, &qword_280A334F8, &unk_275B7D090);
  v11 = sub_275B7971C();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    sub_275B29CD4(v10, &qword_280A334F8, &unk_275B7D090);
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_275B77C3C(v10, MEMORY[0x277D7F538]);
    v13 = 0xE000000000000000;
    if (EnumCaseMultiPayload)
    {
      v12 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      MEMORY[0x277C89240](0x5B3D726F72726520, 0xE800000000000000);
      sub_275B797EC();
      sub_275B7B0EC();
      MEMORY[0x277C89240](93, 0xE100000000000000);
      v12 = v24;
      v13 = v25;
    }
  }

  if (qword_280A32E50 != -1)
  {
    swift_once();
  }

  v15 = sub_275B7A96C();
  __swift_project_value_buffer(v15, qword_280A33B40);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_275B7B09C();

  v24 = 0xD000000000000020;
  v25 = 0x8000000275B86DA0;
  v16 = sub_275B796FC();
  MEMORY[0x277C89240](v16);

  MEMORY[0x277C89240](2109021, 0xE300000000000000);
  v17 = v24;
  v18 = v25;
  v24 = 0;
  v25 = 0xE000000000000000;
  v19 = MEMORY[0x277C89240](0x6E6F697461727564, 0xEA00000000005B3DLL);
  v23[1] = (*(*a3 + 96))(v19);
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  v20 = v24;
  v21 = v25;
  v24 = v17;
  v25 = v18;

  MEMORY[0x277C89240](v20, v21);

  MEMORY[0x277C89240](v12, v13);

  sub_275B7A91C();

  return (v23[0])(a1);
}

uint64_t sub_275B70B9C(uint64_t a1)
{
  v3 = *(sub_275B7970C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);

  return sub_275B70828(a1, v1 + v4, v7, v10);
}

uint64_t sub_275B70C54()
{
  swift_getErrorValue();
  sub_275B7B21C();
  return sub_275B79C3C();
}

uint64_t sub_275B70CB4(uint64_t a1, void (*a2)(char **), uint64_t a3)
{
  v251 = a3;
  v252 = a2;
  v4 = sub_275B7A3FC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v245 = v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275B7A2AC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v246 = (v224 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_275B7A5AC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v243 = v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AB0, &qword_275B7EFA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v228 = v224 - v19;
  v20 = sub_275B7A6FC();
  v226 = *(v20 - 8);
  v227 = v20;
  v21 = *(v226 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v229 = v224 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_275B7A10C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v242 = (v224 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_275B7A0CC();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v240 = (v224 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_275B7A58C();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8, v34);
  v236 = (v224 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v237 = sub_275B79E2C();
  v36 = *(*(v237 - 8) + 64);
  MEMORY[0x28223BE20](v237, v37);
  v248 = v224 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_275B7A17C();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8, v41);
  v244 = v224 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_275B79B3C();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8, v45);
  v233 = (v224 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_275B79E5C();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8, v49);
  v238 = v224 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_275B79D7C();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8, v53);
  v239 = v224 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_275B7A7FC();
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8, v57);
  v231 = v224 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_275B79BCC();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8, v61);
  v230 = v224 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_275B7989C();
  v63 = *(*(v235 - 8) + 64);
  MEMORY[0x28223BE20](v235, v64);
  v250 = v224 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_275B797EC();
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66, v68);
  v232 = v224 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70, v71);
  v234 = v224 - v72;
  MEMORY[0x28223BE20](v73, v74);
  v76 = (v224 - v75);
  MEMORY[0x28223BE20](v77, v78);
  v225 = v224 - v79;
  MEMORY[0x28223BE20](v80, v81);
  v83 = v224 - v82;
  MEMORY[0x28223BE20](v84, v85);
  v87 = (v224 - v86);
  MEMORY[0x28223BE20](v88, v89);
  v241 = v224 - v90;
  v91 = sub_275B79DDC();
  v92 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91 - 8, v93);
  v247 = v224 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B98, &qword_275B7F188);
  v96 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95 - 8, v97);
  v99 = v224 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100, v101);
  v103 = v224 - v102;
  sub_275B77BD4(a1, v224 - v102, &qword_280A33B98, &qword_275B7F188);
  v104 = sub_275B796EC();
  v105 = (*(*(v104 - 8) + 48))(v103, 1, v104);
  if (v105 == 1)
  {
    MEMORY[0x28223BE20](v105, v106);
    v224[-2] = a1;
    sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
    sub_275B7968C();
    v252(v87);
    v107 = MEMORY[0x277D7F580];
    v108 = v87;
LABEL_3:
    sub_275B77C3C(v108, v107);
  }

  else
  {
    v224[1] = v66;
    sub_275B77BD4(v103, v99, &qword_280A33B98, &qword_275B7F188);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v110 = v87;
    v111 = v250;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v224[0] = v103;
        sub_275B77AB0(v99, v247, MEMORY[0x277D7F628]);
        v163 = sub_275B79CFC();
        v165 = *v163;
        v164 = v163[1];
        type metadata accessor for DaemonStateManager();
        v166 = swift_allocObject();
        *(v166 + 16) = v165;
        *(v166 + 24) = v164;

        v167 = sub_275B35FEC();
        if (v168)
        {
          v167 = sub_275B7A98C();
          v249 = v169;
        }

        else
        {
          v249 = 0;
        }

        type metadata accessor for MobileAssetLocalManager();
        v192 = swift_allocObject();
        type metadata accessor for ModelProvider();
        v193 = swift_allocObject();
        *(v193 + 16) = v192;
        v195 = *v163;
        v194 = v163[1];
        v196 = swift_allocObject();
        *(v196 + 16) = v195;
        *(v196 + 24) = v194;
        v197 = type metadata accessor for MLDelayProvider();
        v198 = *(v197 + 48);
        v199 = *(v197 + 52);
        v200 = swift_allocObject();
        v200[2] = v193;
        v200[3] = v196;
        sub_275B77B8C(&qword_280A33438, MEMORY[0x277D7F598]);

        v201 = v253;
        sub_275B7968C();
        if (!v201)
        {
          sub_275B77AB0(v111, v200 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo, MEMORY[0x277D7F598]);

          type metadata accessor for NewOfferAPI();
          inited = swift_initStackObject();
          v203 = v249;
          inited[4] = v167;
          inited[5] = v203;
          inited[2] = v166;
          inited[3] = v200;
          inited[6] = sub_275B49EF0;
          inited[7] = 0;
          v204 = v241;
          v205 = v247;
          NewOfferAPI.getResponse(request:)(v247, v241);
          swift_setDeallocating();
          v206 = inited[2];

          v207 = inited[3];

          v208 = inited[5];

          v209 = inited[7];

          v252(v204);
          sub_275B77C3C(v204, MEMORY[0x277D7F580]);
          v187 = MEMORY[0x277D7F628];
          v188 = v205;
          goto LABEL_49;
        }

        v220 = v200[2];

        v221 = v200[3];

        v222 = *(*v200 + 48);
        v223 = *(*v200 + 52);
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      case 2:
        v154 = v103;
        v155 = v239;
        sub_275B77AB0(v99, v239, MEMORY[0x277D7F618]);
        v156 = type metadata accessor for RealBiomeManager();
        v157 = swift_allocObject();
        type metadata accessor for FeaturesAPI();
        v158 = swift_initStackObject();
        v158[2] = v157;
        v159 = v158 + 2;
        v158[5] = v156;
        v158[6] = &protocol witness table for RealBiomeManager;
        v160 = v238;
        v161 = v253;
        FeaturesAPI.getResponse(request:)(v155);
        if (v161)
        {
          sub_275B77C3C(v155, MEMORY[0x277D7F618]);
          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_1(v159);
        }

        else
        {
          swift_setDeallocating();
          v189 = __swift_destroy_boxed_opaque_existential_1(v159);
          MEMORY[0x28223BE20](v189, v190);
          v224[-2] = v160;
          sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
          v191 = v225;
          sub_275B7968C();
          sub_275B77C3C(v160, MEMORY[0x277D7F640]);
          v252(v191);
          sub_275B77C3C(v191, MEMORY[0x277D7F580]);
          sub_275B77C3C(v155, MEMORY[0x277D7F618]);
        }

        v103 = v154;
        return sub_275B29CD4(v103, &qword_280A33B98, &qword_275B7F188);
      case 3:
        sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
        sub_275B7968C();
        v252(v87);
        sub_275B77C3C(v87, MEMORY[0x277D7F580]);
        v107 = MEMORY[0x277D7F520];
        v108 = v99;
        goto LABEL_3;
      case 4:
        v141 = v233;
        sub_275B77AB0(v99, v233, MEMORY[0x277D7F5B8]);
        v142 = v253;
        XpcSubscriptionClientProtocolServer.handleData(_:_:)(v141, 0, v76);
        if (!v142)
        {
          v252(v76);
          sub_275B77C3C(v76, MEMORY[0x277D7F580]);
        }

        v143 = MEMORY[0x277D7F5B8];
        goto LABEL_34;
      case 5:
        v170 = sub_275B79CFC();
        v172 = *v170;
        v171 = v170[1];
        type metadata accessor for DaemonStateManager();
        v173 = swift_allocObject();
        *(v173 + 16) = v172;
        *(v173 + 24) = v171;

        v174 = sub_275B35FEC();
        if (v175)
        {
          v174 = sub_275B7A98C();
          v177 = v176;
        }

        else
        {
          v177 = 0;
        }

        v210 = v252;
        type metadata accessor for NotificationPendingAPI();
        v211 = swift_initStackObject();
        v211[2] = v173;
        v211[3] = v174;
        v211[4] = v177;
        NotificationPendingAPI.getResponse()();

        v210(v83);
        sub_275B77C3C(v83, MEMORY[0x277D7F580]);
        sub_275B77C3C(v99, MEMORY[0x277D7F520]);
        return sub_275B29CD4(v103, &qword_280A33B98, &qword_275B7F188);
      case 6:
        v180 = v99;
        v181 = v244;
        v182 = sub_275B77AB0(v180, v244, MEMORY[0x277D7F6D8]);
        MEMORY[0x28223BE20](v182, v183);
        v224[-2] = v181;
        sub_275B77B8C(&qword_280A33BA0, MEMORY[0x277D7F638]);
        v184 = v248;
        v185 = v253;
        sub_275B7968C();
        v253 = v185;
        _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC12persistStateyy01iabC4Core0egI0VFZ_0(v184);
        v224[0] = v103;
        if (!off_28140EB68)
        {
          if (qword_280A32C78 != -1)
          {
            swift_once();
          }

          v212 = sub_275B7A96C();
          __swift_project_value_buffer(v212, qword_280A33338);
          sub_275B7A93C();
          _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC10initSharedACyFZ_0();
        }

        v213 = v252;
        sub_275B7A16C();
        v214 = sub_275B7AB2C();

        sub_275B66D40(v214, 0);

        MEMORY[0x28223BE20](v215, v216);
        v217 = v248;
        v224[-2] = v248;
        sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
        v218 = v234;
        sub_275B7968C();
        sub_275B77C3C(v217, MEMORY[0x277D7F638]);
        v213(v218);
        sub_275B77C3C(v218, MEMORY[0x277D7F580]);
        v187 = MEMORY[0x277D7F6D8];
        v188 = v181;
        goto LABEL_49;
      case 7:
        v152 = v236;
        sub_275B77AB0(v99, v236, MEMORY[0x277D7F7A8]);
        XpcSubscriptionClientProtocolServer.handleDisplayDelayedOffer(_:)(v152, v110);
        v252(v110);
        sub_275B77C3C(v110, MEMORY[0x277D7F580]);
        v153 = MEMORY[0x277D7F7A8];
        goto LABEL_31;
      case 8:
        sub_275B77C3C(v99, MEMORY[0x277D7F520]);
        sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
        v141 = v87;
        sub_275B7968C();
        v252(v87);
        v143 = MEMORY[0x277D7F580];
LABEL_34:
        v107 = v143;
        v108 = v141;
        goto LABEL_3;
      case 9:
        v152 = v240;
        sub_275B77AB0(v99, v240, MEMORY[0x277D7F6A8]);
        XpcSubscriptionClientProtocolServer.handleActivityClear(_:)();
        v252(v110);
        sub_275B77C3C(v110, MEMORY[0x277D7F580]);
        v153 = MEMORY[0x277D7F6A8];
        goto LABEL_31;
      case 10:
        v152 = v242;
        sub_275B77AB0(v99, v242, MEMORY[0x277D7F6C0]);
        XpcSubscriptionClientProtocolServer.handleGetBiomeStream(_:)();
        v252(v110);
        sub_275B77C3C(v110, MEMORY[0x277D7F580]);
        v153 = MEMORY[0x277D7F6C0];
LABEL_31:
        v107 = v153;
        v108 = v152;
        goto LABEL_3;
      case 11:
        v113 = v231;
        sub_275B77AB0(v99, v231, MEMORY[0x277D7F838]);
        v136 = sub_275B79CFC();
        v137 = v87;
        v139 = *v136;
        v138 = v136[1];
        type metadata accessor for DaemonStateManager();
        v140 = swift_allocObject();
        *(v140 + 16) = v139;
        *(v140 + 24) = v138;
        type metadata accessor for NotificationStateWriteAPI();
        *(swift_initStackObject() + 16) = v140;

        NotificationStateWriteAPI.getResponse(request:)(v137);

        v252(v137);
        sub_275B77C3C(v137, MEMORY[0x277D7F580]);
        v121 = MEMORY[0x277D7F838];
        goto LABEL_9;
      case 12:
        sub_275B77C3C(v99, MEMORY[0x277D7F520]);
        v224[0] = v103;
        if (qword_28140D970)
        {

          v144 = v228;
          SystemActivityHistoryManager.readHistory()(v228);

          v146 = v226;
          v145 = v227;
          v147 = (*(v226 + 48))(v144, 1, v227);
          v148 = v229;
          if (v147 != 1)
          {
            v149 = sub_275B77AB0(v144, v229, MEMORY[0x277D7F7D0]);
            v151 = v252;
            goto LABEL_38;
          }
        }

        else
        {
          v146 = v226;
          v145 = v227;
          v144 = v228;
          (*(v226 + 56))(v228, 1, 1, v227);
          v148 = v229;
        }

        sub_275B7A6EC();
        v149 = (*(v146 + 48))(v144, 1, v145);
        v151 = v252;
        if (v149 != 1)
        {
          v149 = sub_275B29CD4(v144, &qword_280A33AB0, &qword_275B7EFA8);
        }

LABEL_38:
        MEMORY[0x28223BE20](v149, v150);
        v224[-2] = v148;
        sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
        v186 = v232;
        sub_275B7968C();
        sub_275B77C3C(v148, MEMORY[0x277D7F7D0]);
        v151(v186);
        v187 = MEMORY[0x277D7F580];
        v188 = v186;
LABEL_49:
        sub_275B77C3C(v188, v187);
        v103 = v224[0];
        break;
      case 13:
        v178 = v243;
        sub_275B77AB0(v99, v243, MEMORY[0x277D7F7B0]);
        v179 = sub_275B6FDC8();
        type metadata accessor for MobileAssetDownloadAPI();
        *(swift_initStackObject() + 16) = v179;
        MobileAssetDownloadAPI.getResponse(request:)();

        v252(v87);
        sub_275B77C3C(v87, MEMORY[0x277D7F580]);
        v107 = MEMORY[0x277D7F7B0];
        v108 = v178;
        goto LABEL_3;
      case 14:
        v122 = v246;
        sub_275B77AB0(v99, v246, MEMORY[0x277D7F750]);
        type metadata accessor for MobileAssetLocalManager();
        v123 = v87;
        v124 = swift_allocObject();
        v125 = swift_allocObject();
        v126 = [objc_opt_self() defaultManager];
        type metadata accessor for ShadowModeModelProvider();
        v127 = swift_allocObject();
        v127[4] = 0;
        v127[5] = 0xE000000000000000;
        v127[2] = v125;
        v127[3] = v126;
        type metadata accessor for ShadowEvaluationAPI();
        v128 = swift_initStackObject();
        v129 = MEMORY[0x277D84F90];
        v128[4] = MEMORY[0x277D84F90];
        v128[5] = v129;
        v130 = type metadata accessor for RealBiomeManager();
        v131 = swift_allocObject();
        v128[9] = v130;
        v128[10] = &protocol witness table for RealBiomeManager;
        v128[6] = v131;
        v128[2] = v124;
        v128[3] = v127;
        ShadowEvaluationAPI.getResponse(request:)(v122, v123);
        swift_setDeallocating();
        v132 = v128[2];

        v133 = v128[3];

        v134 = v128[4];

        v135 = v128[5];

        __swift_destroy_boxed_opaque_existential_1(v128 + 6);
        v252(v123);
        sub_275B77C3C(v123, MEMORY[0x277D7F580]);
        v107 = MEMORY[0x277D7F750];
        v108 = v122;
        goto LABEL_3;
      case 15:
        v162 = sub_275B6FDC8();
        type metadata accessor for MobileAssetGetVersionAPI();
        *(swift_initStackObject() + 16) = v162;
        MobileAssetGetVersionAPI.getResponse()();

        v252(v87);
        sub_275B77C3C(v87, MEMORY[0x277D7F580]);
        v107 = MEMORY[0x277D7F520];
        v108 = v99;
        goto LABEL_3;
      case 16:
        v113 = v245;
        sub_275B77AB0(v99, v245, MEMORY[0x277D7F778]);
        v114 = sub_275B79CFC();
        v115 = v87;
        v117 = *v114;
        v116 = v114[1];
        type metadata accessor for DaemonStateManager();
        v118 = swift_allocObject();
        *(v118 + 16) = v117;
        *(v118 + 24) = v116;
        type metadata accessor for DeleteDaemonStateAPI();
        v119 = swift_initStackObject();
        *(v119 + 16) = v118;

        DeleteDaemonStateAPI.getResponse(_:)();
        swift_setDeallocating();
        v120 = *(v119 + 16);

        v252(v115);
        sub_275B77C3C(v115, MEMORY[0x277D7F580]);
        v121 = MEMORY[0x277D7F778];
LABEL_9:
        v107 = v121;
        v108 = v113;
        goto LABEL_3;
      default:
        v112 = v230;
        sub_275B77AB0(v99, v230, MEMORY[0x277D7F5C8]);
        type metadata accessor for PingAPI();
        swift_initStackObject();
        PingAPI.getResponse(request:)(v112);
        v252(v87);
        sub_275B77C3C(v87, MEMORY[0x277D7F580]);
        v107 = MEMORY[0x277D7F5C8];
        v108 = v112;
        goto LABEL_3;
    }
  }

  return sub_275B29CD4(v103, &qword_280A33B98, &qword_275B7F188);
}

uint64_t sub_275B727BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_275B75670();
}

uint64_t XpcSubscriptionClientProtocolServer.handleActivityHistory(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AB0, &qword_275B7EFA8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v15[-v3];
  v5 = sub_275B7A6FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140D970)
  {

    SystemActivityHistoryManager.readHistory()(v4);

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_275B77AB0(v4, v11, MEMORY[0x277D7F7D0]);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5, v9);
  }

  sub_275B7A6EC();
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_275B29CD4(v4, &qword_280A33AB0, &qword_275B7EFA8);
  }

LABEL_7:
  v12 = sub_275B797EC();
  MEMORY[0x28223BE20](v12, v13);
  *&v15[-16] = v11;
  sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
  sub_275B7968C();
  return sub_275B77C3C(v11, MEMORY[0x277D7F7D0]);
}

uint64_t sub_275B72A74()
{
  v0 = sub_275B7A23C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33B90, MEMORY[0x277D7F740]);
  sub_275B7968C();
  return sub_275B7975C();
}

void XpcSubscriptionClientProtocolServer.handleGetBiomeStream(_:)()
{
  v1 = *v0;
  sub_275B7A0FC();
  v2 = sub_275B7AB6C();
  sub_275B7A0EC();
  v3 = sub_275B7AB6C();
  v4 = sub_275B7A0DC();
  v6 = v5;
  sub_275B7AA9C();
  v27 = sub_275B7AA8C();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = MEMORY[0x277D84F90];
  if ((v6 & 1) != 0 && v4)
  {
    if (v4 == 1)
    {
      v9 = [BiomeLibrary() iCloud];
      swift_unknownObjectRelease();
      v10 = [v9 Subscription];
      swift_unknownObjectRelease();
      v11 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(v2, v3, 0);
      v12 = [v10 publisherWithOptions_];

      v33 = sub_275B77D3C;
      v34 = v7;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = sub_275B0C864;
      v32 = &block_descriptor_21_0;
      v13 = _Block_copy(&aBlock);

      v14 = swift_allocObject();
      *(v14 + 16) = v28;
      *(v14 + 24) = v1;
      v33 = sub_275B76C4C;
      v34 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = sub_275B0A330;
      v32 = &block_descriptor_27_1;
    }

    else
    {
      v17 = [BiomeLibrary() Notification];
      swift_unknownObjectRelease();
      v18 = [v17 Usage];
      swift_unknownObjectRelease();
      v19 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(v2, v3, 0);
      v20 = [v18 publisherWithOptions_];

      v33 = sub_275B73340;
      v34 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = sub_275B0B1C0;
      v32 = &block_descriptor_12;
      v21 = _Block_copy(&aBlock);
      v12 = [v20 filterWithIsIncluded_];
      _Block_release(v21);

      v33 = sub_275B76C00;
      v34 = v7;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = sub_275B0C864;
      v32 = &block_descriptor_12_1;
      v13 = _Block_copy(&aBlock);

      v22 = swift_allocObject();
      *(v22 + 16) = v28;
      *(v22 + 24) = v1;
      v33 = sub_275B76C1C;
      v34 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = sub_275B0A330;
      v32 = &block_descriptor_18_0;
    }

    v15 = _Block_copy(&aBlock);

    v23 = [v12 sinkWithCompletion:v13 receiveInput:v15];
    _Block_release(v15);
    _Block_release(v13);
  }

  else
  {
    if (qword_280A32E50 != -1)
    {
      swift_once();
    }

    v16 = sub_275B7A96C();
    __swift_project_value_buffer(v16, qword_280A33B40);
    aBlock = 0;
    v30 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000036, 0x8000000275B86BD0);
    sub_275B7A10C();
    sub_275B7B0EC();
    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A91C();
  }

  swift_beginAccess();
  if (*v8)
  {
    v24 = *v8;
    [v24 state];
    v25 = sub_275B797EC();
    MEMORY[0x28223BE20](v25, v26);
    sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
    sub_275B7968C();
  }

  else
  {
    sub_275B797EC();
    sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
    sub_275B7968C();
  }
}

uint64_t sub_275B73340(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 bundleID];

    if (v3)
    {
      v4 = sub_275B7AD0C();
      v6 = v5;

      if (v4 == 0xD000000000000019 && 0x8000000275B7F610 == v6)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = sub_275B7B1BC();
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

id sub_275B73410(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_275B73474(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id))
{
  [a1 timestamp];
  v7 = sub_275B7AB8C();
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    v10 = a4(v7, v8);
    v12 = v11;
    swift_beginAccess();
    v13 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_275B11064(0, *(v13 + 2) + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_275B11064((v15 > 1), v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = v10;
    *(v17 + 5) = v12;
    *(a2 + 16) = v13;
    swift_endAccess();
  }
}

uint64_t sub_275B735A0()
{
  v0 = sub_275B79C5C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33478, MEMORY[0x277D7F5F0]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B736BC(uint64_t a1, uint64_t a2)
{
  sub_275B7B09C();
  v3 = MEMORY[0x277C89240](0xD000000000000027, 0x8000000275B86D40);
  (*(*a2 + 96))(v3);
  sub_275B7B0EC();
  MEMORY[0x277C89240](46, 0xE100000000000000);
  return sub_275B79C3C();
}

uint64_t sub_275B737A0()
{
  v0 = sub_275B79C5C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33478, MEMORY[0x277D7F5F0]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B7389C(uint64_t a1, void *a2)
{
  sub_275B7B09C();

  v7 = [a2 error];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33218, &unk_275B7C670);
  v3 = sub_275B7AFBC();
  v5 = v4;

  MEMORY[0x277C89240](v3, v5);

  MEMORY[0x277C89240](11869, 0xE200000000000000);
  return sub_275B79C3C();
}

uint64_t sub_275B73994()
{
  v0 = sub_275B7A21C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33B88, MEMORY[0x277D7F710]);
  sub_275B7968C();
  return sub_275B7973C();
}

uint64_t sub_275B73A9C(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a2;
  v5 = *a1;

  *a1 = v4;
  return result;
}

uint64_t XpcSubscriptionClientProtocolServer.handleActivityClear(_:)()
{
  if (sub_275B7A09C())
  {
    if (!off_28140DC78)
    {
      if (qword_280A32CA8 != -1)
      {
        swift_once();
      }

      v0 = sub_275B7A96C();
      __swift_project_value_buffer(v0, qword_280A33420);
      sub_275B7A93C();
      v1 = sub_275B79CFC();
      v3 = *v1;
      v2 = v1[1];
      type metadata accessor for DaemonStateManager();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = v2;
      type metadata accessor for DelayedNotificationActivity();
      swift_allocObject();

      off_28140DC78 = sub_275B25BF8(v5, sub_275B26124, 0);
    }

    sub_275B68E44();
  }

  if (sub_275B7A0BC())
  {
    if (!off_28140EB68)
    {
      if (qword_280A32C78 != -1)
      {
        swift_once();
      }

      v6 = sub_275B7A96C();
      __swift_project_value_buffer(v6, qword_280A33338);
      sub_275B7A93C();
      _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC10initSharedACyFZ_0();
    }

    sub_275B68E44();
  }

  if (sub_275B7A0AC())
  {
    if (!off_28140DAE0)
    {
      if (qword_28140DAC0 != -1)
      {
        swift_once();
      }

      v7 = sub_275B7A96C();
      __swift_project_value_buffer(v7, qword_28140DAC8);
      sub_275B7A93C();
      _s33iCloudSubscriptionOptimizerDaemon27MobileAssetDownloadActivityC10initSharedACyFZ_0();
    }

    sub_275B68E44();
  }

  sub_275B797EC();
  sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
  return sub_275B7968C();
}

uint64_t XpcSubscriptionClientProtocolServer.handleActivityStatus(_:)()
{
  sub_275B797EC();
  sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
  return sub_275B7968C();
}

uint64_t sub_275B73F08()
{
  v0 = sub_275B7A20C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33B70, MEMORY[0x277D7F700]);
  sub_275B7968C();
  return sub_275B7972C();
}

uint64_t sub_275B74008(uint64_t *a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_275B7A1DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v53 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v49 - v9;
  v11 = sub_275B7A1FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v51 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v49 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v49 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B78, &qword_275B7F178);
  v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v55 = *(v12 + 72);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_275B7F130;
  if (off_28140EB68)
  {
    v26 = off_28140EB68;
  }

  else
  {
    if (qword_280A32C78 != -1)
    {
      swift_once();
    }

    v27 = sub_275B7A96C();
    __swift_project_value_buffer(v27, qword_280A33338);
    sub_275B7A93C();
    v26 = _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC10initSharedACyFZ_0();
  }

  v50 = v25;
  v56 = v25 + v24;
  v28 = sub_275B77B8C(&qword_280A33B60, MEMORY[0x277D7F6F0]);

  v54 = v28;
  sub_275B7968C();
  v49[1] = v2;
  sub_275B7AB2C();
  sub_275B7AA9C();
  v29 = sub_275B7AA8C();
  v26[49] = 1;
  sub_275B68C7C();
  if (v26[49] == 1)
  {
    do
    {
      (*(*v29 + 96))();
      if (sub_275B7AACC())
      {
        break;
      }

      sub_275B7AB2C();
      sub_275B7AB0C();
    }

    while ((v26[49] & 1) != 0);
  }

  if (v26[48] != 2)
  {
    v30 = *(v26 + 5);
    sub_275B7A19C();
    sub_275B7AB1C();
    sub_275B7A1CC();
    sub_275B7A1AC();
    sub_275B7AABC();
    sub_275B7A1BC();
    sub_275B77C9C(v10, v53, MEMORY[0x277D7F6E8]);
    sub_275B7A1EC();
    sub_275B77C3C(v10, MEMORY[0x277D7F6E8]);
  }

  sub_275B77AB0(v23, v56, MEMORY[0x277D7F6F0]);

  if (off_28140DC78)
  {
    v31 = off_28140DC78;
  }

  else
  {
    if (qword_280A32CA8 != -1)
    {
      swift_once();
    }

    v32 = sub_275B7A96C();
    __swift_project_value_buffer(v32, qword_280A33420);
    sub_275B7A93C();
    v33 = sub_275B79CFC();
    v35 = *v33;
    v34 = v33[1];
    type metadata accessor for DaemonStateManager();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v34;
    type metadata accessor for DelayedNotificationActivity();
    swift_allocObject();

    v31 = sub_275B25BF8(v37, sub_275B26124, 0);
    off_28140DC78 = v31;
  }

  sub_275B7968C();
  v38 = sub_275B7AA8C();
  *(v31 + 49) = 1;
  sub_275B68C7C();
  if (*(v31 + 49) == 1)
  {
    do
    {
      (*(*v38 + 96))();
      if (sub_275B7AACC())
      {
        break;
      }

      sub_275B7AB2C();
      sub_275B7AB0C();
    }

    while ((*(v31 + 49) & 1) != 0);
  }

  if (*(v31 + 48) != 2)
  {
    v39 = *(v31 + 5);
    sub_275B7A19C();
    sub_275B7AB1C();
    sub_275B7A1CC();
    sub_275B7A1AC();
    sub_275B7AABC();
    sub_275B7A1BC();
    sub_275B77C9C(v10, v53, MEMORY[0x277D7F6E8]);
    sub_275B7A1EC();
    sub_275B77C3C(v10, MEMORY[0x277D7F6E8]);
  }

  sub_275B77AB0(v19, v56 + v55, MEMORY[0x277D7F6F0]);

  v40 = v51;
  if (off_28140DAE0)
  {
    v41 = off_28140DAE0;
  }

  else
  {
    if (qword_28140DAC0 != -1)
    {
      swift_once();
    }

    v42 = sub_275B7A96C();
    __swift_project_value_buffer(v42, qword_28140DAC8);
    sub_275B7A93C();
    v41 = _s33iCloudSubscriptionOptimizerDaemon27MobileAssetDownloadActivityC10initSharedACyFZ_0();
  }

  sub_275B7968C();
  v43 = sub_275B7AA8C();
  v41[49] = 1;
  sub_275B68C7C();
  if (v41[49] == 1)
  {
    do
    {
      (*(*v43 + 96))();
      if (sub_275B7AACC())
      {
        break;
      }

      sub_275B7AB2C();
      sub_275B7AB0C();
    }

    while ((v41[49] & 1) != 0);
  }

  v44 = v50;
  if (v41[48] != 2)
  {
    v45 = *(v41 + 5);
    sub_275B7A19C();
    sub_275B7AB1C();
    sub_275B7A1CC();
    sub_275B7A1AC();
    sub_275B7AABC();
    sub_275B7A1BC();
    sub_275B77C9C(v10, v53, MEMORY[0x277D7F6E8]);
    sub_275B7A1EC();
    sub_275B77C3C(v10, MEMORY[0x277D7F6E8]);
  }

  sub_275B77AB0(v40, v56 + 2 * v55, MEMORY[0x277D7F6F0]);

  v46 = v52;
  v47 = *v52;

  *v46 = v44;
  return result;
}

uint64_t XpcSubscriptionClientProtocolServer.getActivityStatus(_:)(uint64_t a1)
{
  v2 = sub_275B7A1DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v14[-v9];
  sub_275B7A1FC();
  sub_275B77B8C(&qword_280A33B60, MEMORY[0x277D7F6F0]);
  sub_275B7968C();
  sub_275B7AB2C();
  sub_275B7AA9C();
  v11 = sub_275B7AA8C();
  *(a1 + 49) = 1;
  sub_275B68C7C();
  if (*(a1 + 49) == 1)
  {
    do
    {
      (*(*v11 + 96))();
      if (sub_275B7AACC())
      {
        break;
      }

      sub_275B7AB2C();
      sub_275B7AB0C();
    }

    while ((*(a1 + 49) & 1) != 0);
  }

  if (*(a1 + 48) != 2)
  {
    v13 = *(a1 + 40);
    sub_275B7A19C();
    sub_275B7AB1C();
    sub_275B7A1CC();
    sub_275B7A1AC();
    sub_275B7AABC();
    sub_275B7A1BC();
    sub_275B77C9C(v10, v6, MEMORY[0x277D7F6E8]);
    sub_275B7A1EC();
    return sub_275B77C3C(v10, MEMORY[0x277D7F6E8]);
  }

  return result;
}

uint64_t sub_275B74B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);

  sub_275B7A18C();
  return sub_275B7A19C();
}

void XpcSubscriptionClientProtocolServer.handleDisplayDelayedOffer(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v64 = *v2;
  v4 = sub_275B7A88C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_275B79F4C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v60 - v16;
  if (qword_280A32E50 != -1)
  {
    swift_once();
  }

  v18 = sub_275B7A96C();
  __swift_project_value_buffer(v18, qword_280A33B40);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B86C10);
  sub_275B7A58C();
  sub_275B7B0EC();
  MEMORY[0x277C89240](11869, 0xE200000000000000);
  sub_275B7A91C();

  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v65 = (v20 + 16);
  if (sub_275B7A55C())
  {
    v63 = sub_275B7A08C();
    v22 = v21;
  }

  else
  {
    sub_275B79F3C();
    v23 = sub_275B7A57C();
    if (v23)
    {
      v25 = sub_275B7A56C();
      v27 = v26;

      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        MEMORY[0x28223BE20](v23, v24);
        *(&v60 - 2) = a1;
        sub_275B77B8C(&qword_280A33B68, MEMORY[0x277D7F670]);
        sub_275B7968C();
        v23 = sub_275B76D64(v13, v17);
      }
    }

    MEMORY[0x28223BE20](v23, v24);
    *(&v60 - 2) = v17;
    sub_275B77B8C(&qword_280A33440, MEMORY[0x277D7F868]);
    sub_275B7968C();
    v63 = sub_275B7A07C();
    v22 = v29;
    sub_275B77C3C(v8, MEMORY[0x277D7F868]);
    sub_275B77C3C(v17, MEMORY[0x277D7F670]);
  }

  v30 = type metadata accessor for ICloudNotificationXpcClient();
  v31 = swift_allocObject();
  v32 = sub_275B79CFC();
  v34 = *v32;
  v33 = v32[1];
  type metadata accessor for DaemonStateManager();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;
  v36 = qword_280A32C38;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = static BackingOffINDNotifier.kDefaultBackoffDuration;
  type metadata accessor for BackingOffINDNotifier();
  v38 = swift_allocObject();
  v38[2] = v31;
  v38[5] = v30;
  v38[6] = &off_2884AA078;
  v38[7] = v35;
  v38[8] = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = v20;
  *(v39 + 24) = v19;
  swift_retain_n();
  v40 = v19;
  BackingOffINDNotifier.checkIsNotTooEarlyToCallIndAgain()();
  if (v41)
  {
    v42 = v65;
    swift_beginAccess();
    v43 = *(v20 + 16);
    *(v20 + 16) = v41;
    v44 = v41;
    v45 = v41;

    dispatch_group_leave(v40);
  }

  else
  {
    v46 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    v62 = v20;
    v47 = v38[5];
    v48 = v38[6];
    v60 = __swift_project_boxed_opaque_existential_1(v38 + 2, v47);
    v49 = swift_allocObject();
    v61 = v40;
    v50 = v22;
    v51 = v49;
    v49[2] = sub_275B76CD0;
    v49[3] = v39;
    v49[4] = v38;
    v49[5] = v46;
    v52 = *(v48 + 8);

    v52(v63, v50, sub_275B282C8, v51, v47, v48);

    v40 = v61;

    v42 = v65;
  }

  if (qword_280A32E58 != -1)
  {
    swift_once();
  }

  if (sub_275B7AF6C())
  {
    v53 = sub_275B797EC();
    MEMORY[0x28223BE20](v53, v54);
    *(&v60 - 2) = v64;
    sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
    sub_275B7968C();
  }

  else
  {
    swift_beginAccess();
    v55 = *v42;
    if (*v42)
    {
      v56 = sub_275B797EC();
      MEMORY[0x28223BE20](v56, v57);
      v58 = v64;
      *(&v60 - 2) = v55;
      *(&v60 - 1) = v58;
      v59 = v55;
      sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
      sub_275B7968C();
    }

    else
    {
      sub_275B797EC();
      sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
      sub_275B7968C();
    }
  }
}

uint64_t sub_275B75444()
{
  v0 = sub_275B7A14C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33448, MEMORY[0x277D7F6D0]);
  sub_275B7968C();
  return sub_275B7A87C();
}

uint64_t sub_275B7554C(uint64_t a1, uint64_t a2)
{
  v3 = sub_275B79F4C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7A11C();
  sub_275B7A13C();
  sub_275B77C9C(a2, v7, MEMORY[0x277D7F670]);
  return sub_275B7A12C();
}

void sub_275B75604(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  v7 = a1;

  dispatch_group_leave(a3);
}

uint64_t sub_275B75670()
{
  v0 = sub_275B79C5C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33478, MEMORY[0x277D7F5F0]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B75778()
{
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000023, 0x8000000275B86C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
  sub_275B7B0EC();
  MEMORY[0x277C89240](8285, 0xE200000000000000);
  sub_275B7B09C();
  MEMORY[0x277C89240](0x656D697420646E61, 0xED00005B3D74756FLL);
  if (qword_280A32E58 != -1)
  {
    swift_once();
  }

  sub_275B7B0EC();
  MEMORY[0x277C89240](11869, 0xE200000000000000);

  MEMORY[0x277C89240](0, 0xE000000000000000);

  return sub_275B79C3C();
}

uint64_t sub_275B75984(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), uint64_t (*a4)(char *))
{
  v6 = (*(*(a2(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20]();
  v9 = &v11 - v8;
  a3(v7);
  return a4(v9);
}

uint64_t sub_275B75A28()
{
  v0 = sub_275B79C5C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33478, MEMORY[0x277D7F5F0]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B75B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *))
{
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v14 - v11;
  sub_275B77C9C(a2, &v14 - v11, a4);
  return a5(v12);
}

uint64_t XpcSubscriptionClientProtocolServer.handleData(_:_:)@<X0>(char **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_275B797EC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275B79C0C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_275B79ADC())
  {
    type metadata accessor for PetDataAPI();
    *(swift_initStackObject() + 16) = a2 & 1;
    result = PetDataAPI.getResponse(request:)(a1, v16);
    if (!v3)
    {
      MEMORY[0x28223BE20](result, v18);
      *(&v19 - 2) = v16;
      sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580]);
      sub_275B7968C();
      return sub_275B77C3C(v16, MEMORY[0x277D7F5D0]);
    }
  }

  else
  {
    type metadata accessor for PflDataAPI();
    swift_allocObject();
    result = PflDataAPI.init()();
    if (!v3)
    {
      PflDataAPI.getResponse(request:)(a1, v11);

      return sub_275B77AB0(v11, a3, MEMORY[0x277D7F580]);
    }
  }

  return result;
}

uint64_t sub_275B75E04()
{
  v0 = sub_275B79E7C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33BA8, MEMORY[0x277D7F650]);
  sub_275B7968C();
  return sub_275B797CC();
}

uint64_t sub_275B75EF4(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v31 = &v30 - v10;
  v11 = sub_275B79ABC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v30 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_275B79CFC();
  v18 = *v16;
  v17 = v16[1];
  type metadata accessor for DaemonStateManager();
  inited = swift_initStackObject();
  *(inited + 16) = v18;
  *(inited + 24) = v17;
  v20 = *(v12 + 56);
  v20(v7, 1, 1, v11);
  v21 = qword_28140F988;

  if (v21 != -1)
  {
    v22 = swift_once();
  }

  v24 = off_28140F990;
  v25 = MEMORY[0x28223BE20](v22, v23);
  *(&v30 - 2) = v7;
  *(&v30 - 1) = inited;
  (*(*v24 + 136))(0x6574617453746567, 0xE800000000000000, sub_275B094A8, v25);
  if (v2)
  {

    swift_setDeallocating();
    v26 = *(inited + 24);

    sub_275B29CD4(v7, &qword_280A330F8, &qword_275B7C9A0);
    v27 = v31;
    v20(v31, 1, 1, v11);
  }

  else
  {
    swift_setDeallocating();
    v28 = *(inited + 24);

    v27 = v31;
    sub_275B0952C(v7, v31);
    if ((*(v12 + 48))(v27, 1, v11) != 1)
    {
      sub_275B77AB0(v27, v30, MEMORY[0x277D7F5A8]);
      return sub_275B79E6C();
    }
  }

  sub_275B79AAC();
  if ((*(v12 + 48))(v27, 1, v11) != 1)
  {
    sub_275B29CD4(v27, &qword_280A330F8, &qword_275B7C9A0);
  }

  return sub_275B79E6C();
}

uint64_t sub_275B7625C()
{
  sub_275B7A15C();
  sub_275B79E0C();
  sub_275B7A16C();
  sub_275B79E1C();
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7A16C();
  sub_275B7AB2C();
  sub_275B7ABBC();
  sub_275B7AB5C();
  return sub_275B79DFC();
}

uint64_t sub_275B762FC()
{
  v0 = sub_275B7A22C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33BB0, MEMORY[0x277D7F728]);
  sub_275B7968C();
  return sub_275B7974C();
}

uint64_t sub_275B76404()
{
  v0 = sub_275B79C5C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  sub_275B77B8C(&qword_280A33478, MEMORY[0x277D7F5F0]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B7650C()
{
  sub_275B7B09C();

  sub_275B7970C();
  sub_275B77B8C(&qword_280A33BB8, MEMORY[0x277D7F530]);
  v0 = sub_275B7965C();
  MEMORY[0x277C89240](v0);

  MEMORY[0x277C89240](11869, 0xE200000000000000);
  return sub_275B79C3C();
}

uint64_t sub_275B76688(int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_275B181A0(a1);
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
    sub_275B2CA18();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_275B767C0(v10, v9);
  *v2 = v9;
  return v11;
}

double sub_275B7671C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_275B182A0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_275B2CD08();
      v11 = v13;
    }

    sub_275B189EC(*(v11 + 48) + 40 * v8);
    sub_275B17B40((*(v11 + 56) + 32 * v8), a2);
    sub_275B76954(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_275B767C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_275B7B02C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_275B7B26C();
      sub_275B7B28C();
      result = sub_275B7B2AC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_275B76954(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_275B7B02C() + 1) & ~v5;
    do
    {
      sub_275B18990(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_275B7B03C();
      result = sub_275B189EC(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_275B76AF8()
{
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000026, 0x8000000275B86CB0);
  if (qword_280A32E58 != -1)
  {
    swift_once();
  }

  sub_275B7B0EC();
  MEMORY[0x277C89240](46, 0xE100000000000000);
  return sub_275B79C3C();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275B76CF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_275B75670();
}

uint64_t sub_275B76D24()
{
  v1 = *(v0 + 16);
  sub_275B7A56C();
  return sub_275B79F2C();
}

uint64_t sub_275B76D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79F4C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B76E58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_275B75778();
}

uint64_t sub_275B76EAC(int a1, id a2)
{
  v3 = [a2 jsonDictionary];
  v4 = sub_275B7AC8C();

  *(&v23 + 1) = 0xEF73696C6C694D70;
  v5 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v6 = sub_275B7AB5C();
  v24 = MEMORY[0x277D84A28];
  *&v23 = v6;
  sub_275B17B40(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v22, v25, isUniquelyReferenced_nonNull_native);
  sub_275B189EC(v25);
  *&v23 = 0x6D617473656D6974;
  *(&v23 + 1) = 0xEF79747465725070;
  sub_275B7B05C();
  v8 = sub_275B7AB7C();
  v24 = v5;
  *&v23 = v8;
  *(&v23 + 1) = v9;
  sub_275B17B40(&v23, v22);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v22, v25, v10);
  sub_275B189EC(v25);
  v11 = v4;
  *&v23 = 0xD000000000000021;
  *(&v23 + 1) = 0x8000000275B86CE0;
  sub_275B7B05C();
  [a2 iCloudSubscriptionEventType];
  v12 = BMiCloudSubscriptionEventTypeAsString();
  v13 = sub_275B7AD0C();
  v15 = v14;

  v24 = v5;
  *&v23 = v13;
  *(&v23 + 1) = v15;
  sub_275B17B40(&v23, v22);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v22, v25, v16);
  sub_275B189EC(v25);
  v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B80, &qword_275B7F180);
  v25[0] = v11;
  v17 = sub_275B7AA7C();
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (!v19)
  {
    v20 = [a2 debugDescription];
    v17 = sub_275B7AD0C();
  }

  return v17;
}

uint64_t sub_275B77148(uint64_t a1, void *a2)
{
  *(&v68 + 1) = 0xEF73696C6C694D70;
  v3 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v4 = sub_275B7AB5C();
  v69 = MEMORY[0x277D84A28];
  *&v68 = v4;
  sub_275B17B40(&v68, v67);
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v5;
  sub_275B2C67C(v67, v70, isUniquelyReferenced_nonNull_native);
  sub_275B189EC(v70);
  v7 = v71;
  *&v68 = 0x6D617473656D6974;
  *(&v68 + 1) = 0xEF79747465725070;
  sub_275B7B05C();
  v8 = sub_275B7AB7C();
  v69 = v3;
  *&v68 = v8;
  *(&v68 + 1) = v9;
  sub_275B17B40(&v68, v67);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v67, v70, v10);
  sub_275B189EC(v70);
  v71 = v7;
  strcpy(&v68, "uniqueID");
  BYTE9(v68) = 0;
  WORD5(v68) = 0;
  HIDWORD(v68) = -402653184;
  sub_275B7B05C();
  v11 = [a2 uniqueID];
  if (v11)
  {
    v12 = v11;
    v13 = sub_275B7AD0C();
    v15 = v14;

    v69 = v3;
    *&v68 = v13;
    *(&v68 + 1) = v15;
    sub_275B17B40(&v68, v67);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C67C(v67, v70, v16);
    sub_275B189EC(v70);
    v71 = v7;
  }

  else
  {
    sub_275B7671C(v70, &v68);
    sub_275B29CD4(&v68, &qword_280A334F0, &qword_275B7D048);
    sub_275B189EC(v70);
  }

  strcpy(&v68, "notificationId");
  HIBYTE(v68) = -18;
  v17 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v18 = [a2 notificationID];
  if (v18)
  {
    v19 = v18;
    v20 = sub_275B7AD0C();
    v22 = v21;

    v69 = v17;
    *&v68 = v20;
    *(&v68 + 1) = v22;
    sub_275B17B40(&v68, v67);
    v23 = v71;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C67C(v67, v70, v24);
    sub_275B189EC(v70);
    v71 = v23;
  }

  else
  {
    sub_275B7671C(v70, &v68);
    sub_275B29CD4(&v68, &qword_280A334F0, &qword_275B7D048);
    sub_275B189EC(v70);
  }

  strcpy(&v68, "bundleID");
  BYTE9(v68) = 0;
  WORD5(v68) = 0;
  HIDWORD(v68) = -402653184;
  v25 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v26 = [a2 bundleID];
  if (v26)
  {
    v27 = v26;
    v28 = sub_275B7AD0C();
    v30 = v29;

    v69 = v25;
    *&v68 = v28;
    *(&v68 + 1) = v30;
    sub_275B17B40(&v68, v67);
    v31 = v71;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C67C(v67, v70, v32);
    sub_275B189EC(v70);
    v71 = v31;
  }

  else
  {
    sub_275B7671C(v70, &v68);
    sub_275B29CD4(&v68, &qword_280A334F0, &qword_275B7D048);
    sub_275B189EC(v70);
  }

  strcpy(&v68, "threadId");
  BYTE9(v68) = 0;
  WORD5(v68) = 0;
  HIDWORD(v68) = -402653184;
  v33 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v34 = [a2 threadID];
  if (v34)
  {
    v35 = v34;
    v36 = sub_275B7AD0C();
    v38 = v37;

    v69 = v33;
    *&v68 = v36;
    *(&v68 + 1) = v38;
    sub_275B17B40(&v68, v67);
    v39 = v71;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C67C(v67, v70, v40);
    sub_275B189EC(v70);
    v71 = v39;
  }

  else
  {
    sub_275B7671C(v70, &v68);
    sub_275B29CD4(&v68, &qword_280A334F0, &qword_275B7D048);
    sub_275B189EC(v70);
  }

  *&v68 = 0x656C746974;
  *(&v68 + 1) = 0xE500000000000000;
  v41 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v42 = [a2 title];
  if (v42)
  {
    v43 = v42;
    v44 = sub_275B7AD0C();
    v46 = v45;

    v69 = v41;
    *&v68 = v44;
    *(&v68 + 1) = v46;
    sub_275B17B40(&v68, v67);
    v47 = v71;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C67C(v67, v70, v48);
    sub_275B189EC(v70);
  }

  else
  {
    sub_275B7671C(v70, &v68);
    sub_275B29CD4(&v68, &qword_280A334F0, &qword_275B7D048);
    sub_275B189EC(v70);
    v47 = v71;
  }

  strcpy(&v68, "usageType");
  WORD5(v68) = 0;
  HIDWORD(v68) = -385875968;
  v49 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v50 = [a2 usageType];
  v69 = MEMORY[0x277D849A8];
  LODWORD(v68) = v50;
  sub_275B17B40(&v68, v67);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v67, v70, v51);
  sub_275B189EC(v70);
  v52 = v47;
  *&v68 = 0x7079546567617375;
  *(&v68 + 1) = 0xEF79747465725065;
  sub_275B7B05C();
  if (qword_280A32C70 != -1)
  {
    swift_once();
  }

  v53 = static BiomeNotificationStream.kUsageTypeValueMap;
  v54 = [a2 usageType];
  if (*(v53 + 16) && (v55 = sub_275B181A0(v54), (v56 & 1) != 0))
  {
    v57 = (*(v53 + 56) + 16 * v55);
    v59 = *v57;
    v58 = v57[1];
    v69 = v49;

    if (v60)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v69 = v49;
  }

  v60 = 0xE600000000000000;
  v59 = 0x73726568744FLL;
LABEL_24:
  *&v68 = v59;
  *(&v68 + 1) = v60;
  sub_275B17B40(&v68, v67);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v67, v70, v61);
  sub_275B189EC(v70);
  v70[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B80, &qword_275B7F180);
  v70[0] = v52;
  v62 = sub_275B7AA7C();
  v64 = v63;
  __swift_destroy_boxed_opaque_existential_1(v70);
  if (!v64)
  {
    v65 = [a2 debugDescription];
    v62 = sub_275B7AD0C();
  }

  return v62;
}

uint64_t sub_275B7799C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return sub_275B79C3C();
}

uint64_t sub_275B77AB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B77B8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275B77BD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_275B77C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B77C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t XpcSubscriptionServer.__allocating_init()()
{
  v0 = swift_allocObject();
  XpcSubscriptionServer.init()();
  return v0;
}

uint64_t sub_275B77DAC()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140FA58);
  __swift_project_value_buffer(v0, qword_28140FA58);
  type metadata accessor for XpcSubscriptionServer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33BC8, &qword_275B7F1D8);
  return sub_275B7A97C();
}

uint64_t sub_275B77E28()
{
  v0 = sub_275B79D2C();
  v2 = *v0;
  v1 = v0[1];
  static XpcSubscriptionServer.kServiceName = v2;
  *algn_28140FCE8 = v1;
}

uint64_t *XpcSubscriptionServer.kServiceName.unsafeMutableAddressor()
{
  if (qword_28140FA78 != -1)
  {
    swift_once();
  }

  return &static XpcSubscriptionServer.kServiceName;
}

uint64_t static XpcSubscriptionServer.kServiceName.getter()
{
  if (qword_28140FA78 != -1)
  {
    swift_once();
  }

  v0 = static XpcSubscriptionServer.kServiceName;

  return v0;
}

uint64_t XpcSubscriptionServer.init()()
{
  v1 = v0;
  if (qword_28140FA50 != -1)
  {
    swift_once();
  }

  v2 = sub_275B7A96C();
  __swift_project_value_buffer(v2, qword_28140FA58);
  sub_275B7B09C();

  if (qword_28140FA78 != -1)
  {
    swift_once();
  }

  v3 = static XpcSubscriptionServer.kServiceName;
  v4 = *algn_28140FCE8;
  MEMORY[0x277C89240](static XpcSubscriptionServer.kServiceName, *algn_28140FCE8);
  MEMORY[0x277C89240](0x6E657473696C205DLL, 0xEB000000002E7265);
  sub_275B7A91C();

  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for XpcSubscriptionServerDelegate()) init];
  v5 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v6 = sub_275B7ACDC();
  v7 = [v5 initWithMachServiceName_];

  *(v1 + 24) = v7;
  [v7 setDelegate_];
  sub_275B7B09C();

  MEMORY[0x277C89240](v3, v4);
  MEMORY[0x277C89240](0xD00000000000001BLL, 0x8000000275B86DF0);
  sub_275B7A91C();

  return v1;
}

Swift::Void __swiftcall XpcSubscriptionServer.runAsync()()
{
  [*(v0 + 24) resume];
  if (qword_28140FA50 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_28140FA58);
  sub_275B7B09C();

  if (qword_28140FA78 != -1)
  {
    swift_once();
  }

  MEMORY[0x277C89240](static XpcSubscriptionServer.kServiceName, *algn_28140FCE8);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B86E10);
  sub_275B7A91C();
}

uint64_t XpcSubscriptionServer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B78334()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140FA90);
  __swift_project_value_buffer(v0, qword_28140FA90);
  type metadata accessor for XpcSubscriptionServerDelegate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A33C30, &unk_275B7F200);
  return sub_275B7A97C();
}

id XpcSubscriptionServerDelegate.__deallocating_deinit()
{
  if (qword_28140FA80 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_28140FA90);
  sub_275B7A91C();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for XpcSubscriptionServerDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_275B78638(void *a1)
{
  if (qword_28140FA80 != -1)
  {
    swift_once();
  }

  v2 = sub_275B7A96C();
  __swift_project_value_buffer(v2, qword_28140FA90);
  sub_275B7B09C();

  v3 = [a1 description];
  v4 = sub_275B7AD0C();
  v6 = v5;

  MEMORY[0x277C89240](v4, v6);

  sub_275B7A91C();

  v7 = sub_275B79D1C();
  v8 = *v7;
  v9 = v7[1];

  v10 = sub_275B2D0F4(a1);

  if (v10)
  {
    v11 = [objc_opt_self() interfaceWithProtocol_];
    [a1 setExportedInterface_];

    type metadata accessor for XpcSubscriptionClientProtocolServer();
    v12 = swift_allocObject();
    type metadata accessor for EventLoggingXpcSubscriptionClient();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;

    [a1 setExportedObject_];
    [a1 resume];
    sub_275B7A91C();
  }

  else
  {
    sub_275B7B09C();

    v15 = *v7;
    v14 = v7[1];

    MEMORY[0x277C89240](v15, v14);

    MEMORY[0x277C89240](8285, 0xE200000000000000);
    sub_275B7B09C();

    v16 = [a1 description];
    v17 = sub_275B7AD0C();
    v19 = v18;

    MEMORY[0x277C89240](v17, v19);

    MEMORY[0x277C89240](11869, 0xE200000000000000);

    MEMORY[0x277C89240](0xD000000000000010, 0x8000000275B86FA0);

    sub_275B7A95C();
  }

  return v10 & 1;
}

uint64_t XpcSubscriptionServerError.hashValue.getter()
{
  sub_275B7B26C();
  MEMORY[0x277C89720](0);
  return sub_275B7B2AC();
}

unint64_t sub_275B78A14()
{
  result = qword_280A33C40;
  if (!qword_280A33C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33C40);
  }

  return result;
}

void sub_275B78A78(void *a1)
{
  v3 = sub_275B794EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v15 - v11;
  sub_275B78ED8();
  sub_275B496E8();
  (*(v4 + 16))(v9, v12, v3);
  v13 = sub_275B47DEC(v9, a1);
  if (v1)
  {
    (*(v4 + 8))(v12, v3);
  }

  else
  {
    v14 = v13;
    (*(v4 + 8))(v12, v3);

    type metadata accessor for BundledNotificationDelaySamePropensities();
    *(swift_allocObject() + 16) = v14;
  }
}

uint64_t sub_275B78E7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_275B78ED8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_275B7ACDC();
  v2 = sub_275B7ACDC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_275B794BC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_275B78FD0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B7902C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33C48, &qword_275B7F3A8);
    v3 = sub_275B7B08C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_275B7AD0C();
      sub_275B7B26C();
      v29 = v7;
      sub_275B7AD7C();
      v9 = sub_275B7B2AC();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_275B7AD0C();
        v20 = v19;
        if (v18 == sub_275B7AD0C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_275B7B1BC();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_275B79220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33570, &unk_275B7D2D0);
    v3 = sub_275B7B08C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_275B7B26C();

      sub_275B7AD7C();
      result = sub_275B7B2AC();
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
          result = sub_275B7B1BC();
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