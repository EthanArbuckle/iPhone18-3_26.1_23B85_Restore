void *sub_1A4371AB0()
{
  v1 = v0;
  v0[2] = sub_1A3C38BD4();
  v0[3] = v2;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    MobileGestalt_get_wapiCapability();

    v5 = sub_1A524C634();
    v6 = PXLocalizedString(v5);

    v7 = sub_1A524C674();
    v9 = v8;

    v1[4] = v7;
    v1[5] = v9;
    v1[6] = [objc_allocWithZone(off_1E77218E8) init];
    v1[7] = 0;
    type metadata accessor for PhotosSearchAIStatus();
    v1[8] = PhotosSearchAIStatus.__allocating_init()();
    v1[9] = 0;
    sub_1A5241604();
    sub_1A52415B4();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A4371C04(void *a1)
{
  swift_allocObject();
  v2 = sub_1A4373054(a1);

  return v2;
}

void sub_1A4371C4C(void *a1)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
  sub_1A52415D4();

  if (!*(v1 + 56))
  {
    type metadata accessor for LemonadeFeatureAvailabilityMonitor();
    v4 = 7;
    v3 = static LemonadeFeatureAvailabilityMonitor.sharedStatus(feature:for:)(&v4, a1);
    sub_1A4371574(v3);
  }
}

void sub_1A4371D1C(uint64_t a1)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  v4 = sub_1A524C674();
  v6 = v5;

  PhotosSearchAIStatus.status.getter(aBlock);
  v7 = aBlock[0];
  v8 = MobileGestalt_get_current_device();
  if (v8)
  {
    v9 = v8;
    MobileGestalt_get_wapiCapability();

    LOBYTE(aBlock[0]) = v7;
    v55[0] = 1;
    v10 = static SearchAIStatus.== infix(_:_:)(aBlock, v55);
    sub_1A4370FD0();
    if (v10)
    {
      if (v11)
      {
LABEL_4:
        v12 = sub_1A3C38BD4();
        sub_1A4370A60(v12, v13);
        v14 = sub_1A524C634();
        v15 = PXLocalizedString(v14);

        v16 = sub_1A524C674();
        v18 = v17;

        sub_1A4370D7C(v16, v18);
        v19 = sub_1A524C634();
        v20 = PXLocalizedString(v19);
LABEL_10:
        v25 = v20;

        v26 = sub_1A524C674();
        v28 = v27;

        goto LABEL_11;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_4;
      }

      LOBYTE(aBlock[0]) = v7;
      v55[0] = 3;
      if (!static SearchAIStatus.== infix(_:_:)(aBlock, v55))
      {
        v36 = sub_1A3C38BD4();
        sub_1A4370A60(v36, v37);
        v38 = sub_1A524C634();
        v39 = PXLocalizedString(v38);

        v40 = sub_1A524C674();
        v42 = v41;

        sub_1A4370D7C(v40, v42);
        v43 = sub_1A524C634();
        v44 = PXLocalizedString(v43);

        v26 = sub_1A524C674();
        v28 = v45;

        swift_getKeyPath();
        aBlock[0] = a1;
        sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
        sub_1A52415D4();

        swift_beginAccess();
        v46 = *(a1 + 72);
        if (v46)
        {
          v53 = v4;
          swift_getKeyPath();
          aBlock[0] = v46;
          sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel);
          v47 = v46;
          sub_1A52415D4();

          v48 = OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults;
          swift_beginAccess();
          if (*&v47[v48] < 1)
          {

            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
          }

          else
          {
            v49 = sub_1A524C634();
            v50 = PXLocalizedString(v49);

            v31 = sub_1A524C674();
            v32 = v51;

            swift_getKeyPath();
            aBlock[0] = v47;
            sub_1A52415D4();

            v52 = &v47[OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__actionHandler];
            swift_beginAccess();
            v29 = *v52;
            v30 = v52[1];
            sub_1A3C66EE8(v29);
          }

          v4 = v53;
          goto LABEL_12;
        }

LABEL_11:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
LABEL_12:
        v33 = *(a1 + 48);
        v34 = swift_allocObject();
        v34[2] = v4;
        v34[3] = v6;
        v34[4] = v26;
        v34[5] = v28;
        v34[6] = v31;
        v34[7] = v32;
        v34[8] = v29;
        v34[9] = v30;
        aBlock[4] = sub_1A4373544;
        aBlock[5] = v34;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3D59380;
        aBlock[3] = &block_descriptor_163;
        v35 = _Block_copy(aBlock);
        sub_1A3C66EE8(v29);

        [v33 performChanges_];
        sub_1A3C784D4(v29, v30);
        _Block_release(v35);
        return;
      }
    }

    v21 = sub_1A3C38BD4();
    sub_1A4370A60(v21, v22);
    v23 = sub_1A3C38BD4();
    sub_1A4370D7C(v23, v24);
    v19 = sub_1A524C634();
    v20 = PXLocalizedString(v19);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1A437244C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel);
  sub_1A52415D4();

  v1 = OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1A4372508()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel);
  sub_1A52415D4();

  v1 = (v0 + OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__actionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t (*sub_1A43725DC())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A437349C;
}

uint64_t sub_1A4372634()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_1A3EA52F4(0, 0, v2, &unk_1A5333658, v6);
}

uint64_t sub_1A43727AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4372844, v6, v5);
}

uint64_t sub_1A4372844()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4372920()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore28LemonadeSearchIndexingStatus___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A43729EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1A4372AD8(uint64_t a1)
{
  v3 = OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A4372BF8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel);
  sub_1A52415D4();

  v4 = (v3 + OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__actionHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1A3C7146C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_1A3C66EE8(v5);
}

uint64_t sub_1A4372D04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A3D6069C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3C66EE8(v1);
  sub_1A4373250(&qword_1EB138AE0, type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel);
  sub_1A52415C4();
  sub_1A3C784D4(v4, v3);
}

uint64_t sub_1A4372E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__actionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_1A3C66EE8(a2);
  return sub_1A3C784D4(v6, v7);
}

id sub_1A4372EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__actionHandler];
  *v8 = 0;
  v8[1] = 0;
  sub_1A5241604();
  *&v7[OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults] = a1;
  v9 = *v8;
  v10 = v8[1];
  sub_1A3C66EE8(a2);
  sub_1A3C784D4(v9, v10);
  *v8 = a2;
  v8[1] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1A3C784D4(a2, a3);
  return v11;
}

void *sub_1A4373054(void *a1)
{
  v2 = v1;
  v1[2] = sub_1A3C38BD4();
  v1[3] = v4;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    MobileGestalt_get_wapiCapability();

    v7 = sub_1A524C634();
    v8 = PXLocalizedString(v7);

    v9 = sub_1A524C674();
    v11 = v10;

    v2[4] = v9;
    v2[5] = v11;
    v2[6] = [objc_allocWithZone(off_1E77218E8) init];
    v2[7] = 0;
    type metadata accessor for PhotosSearchAIStatus();
    v2[8] = PhotosSearchAIStatus.__allocating_init()();
    v2[9] = 0;
    sub_1A5241604();
    swift_getKeyPath();
    v14 = v2;
    sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
    sub_1A52415D4();

    if (!v2[7])
    {
      type metadata accessor for LemonadeFeatureAvailabilityMonitor();
      v13 = 7;
      v12 = static LemonadeFeatureAvailabilityMonitor.sharedStatus(feature:for:)(&v13, a1);
      sub_1A4371574(v12);
    }

    sub_1A52415B4();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4373250(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4373298()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR___PXLemonadeSearchIndexingStatusGenericEmptyStateViewModel__numberOfCollectionResults;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

uint64_t sub_1A4373328()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A43733F4()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A43734A4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A43727AC(a1, v5, v6, v4);
}

void sub_1A4373544(void *a1)
{
  v3 = v1[7];
  v5 = v1[8];
  v4 = v1[9];
  v6 = sub_1A524C634();
  [a1 setTitle_];

  v7 = sub_1A524C634();
  [a1 setMessage_];

  if (v3)
  {
    v8 = sub_1A524C634();
  }

  else
  {
    v8 = 0;
  }

  [a1 setActionTitle_];

  if (v5)
  {
    v10[4] = v5;
    v10[5] = v4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3C2E0D0;
    v10[3] = &block_descriptor_46_5;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [a1 setAction_];
  _Block_release(v9);
}

uint64_t sub_1A43736C0(uint64_t a1)
{
  sub_1A3D63AC0();
  sub_1A43737A0();
  v3 = v1;
  if (swift_dynamicCast())
  {
    if (*(&v9 + 1))
    {
      sub_1A3C34460(&v8, v11);
      v4 = v12;
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v6 = (*(v5 + 8))(a1, v4, v5);
      __swift_destroy_boxed_opaque_existential_0(v11);
      return v6;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_1A4373804(&v8);
  return 0;
}

unint64_t sub_1A43737A0()
{
  result = qword_1EB138AF8;
  if (!qword_1EB138AF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB138AF8);
  }

  return result;
}

uint64_t sub_1A4373804(uint64_t a1)
{
  sub_1A4373860();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4373860()
{
  if (!qword_1EB138B00)
  {
    sub_1A43737A0();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138B00);
    }
  }
}

uint64_t sub_1A43738B8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = sub_1A43736C0(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1A4373910(uint64_t a1)
{
  sub_1A3D63AC0();
  sub_1A43737A0();
  v3 = v1;
  if (swift_dynamicCast())
  {
    if (*(&v8 + 1))
    {
      sub_1A3C34460(&v7, v10);
      v4 = v11;
      v5 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v5 + 8))(a1, v4, v5);
      sub_1A524D794();
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  sub_1A4373804(&v7);
  return 0;
}

uint64_t sub_1A4373A34(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = sub_1A4373910(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

uint64_t OneUpGroupActivityExitAction.description.getter()
{
  v1 = 0x657661656CLL;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573756170;
  }
}

uint64_t OneUpGroupActivityExitAction.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4373B60()
{
  v1 = 0x657661656CLL;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573756170;
  }
}

uint64_t OneUpGroupActivity.metadata.getter()
{
  v0 = sub_1A5241994();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1A5241974();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A52419D4();
  sub_1A5241964();
  sub_1A52419B4();
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  v4 = sub_1A524C674();
  v6 = v5;

  MEMORY[0x1A58FCD30](v4, v6);
  sub_1A5241984();
  return sub_1A52419A4();
}

void OneUpGroupActivity.version.getter(_DWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_DWORD *OneUpGroupActivity.version.setter(_DWORD *result)
{
  v2 = result[1];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

void OneUpGroupActivity.minimumCompatibleVersion.getter(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 12);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

_DWORD *OneUpGroupActivity.minimumCompatibleVersion.setter(_DWORD *result)
{
  v2 = result[1];
  *(v1 + 8) = *result;
  *(v1 + 12) = v2;
  return result;
}

uint64_t *sub_1A4373D54()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1BABE8) = *result;
  HIWORD(dword_1EB1BABE8) = v1;
  dword_1EB1BABEC = v2;
  return result;
}

uint64_t static OneUpGroupActivity.localMinimumCompatibleVersion.getter@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1BABE0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1BABEC;
  *a1 = dword_1EB1BABE8;
  a1[1] = v1;
  return result;
}

uint64_t type metadata accessor for OneUpGroupActivity()
{
  result = qword_1EB1BB180;
  if (!qword_1EB1BB180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OneUpGroupActivity.activeAssetMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OneUpGroupActivity() + 28);

  return sub_1A4373F00(a1, v3);
}

uint64_t sub_1A4373F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OneUpGroupActivity.isPaused.setter(char a1)
{
  result = type metadata accessor for OneUpGroupActivity();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t OneUpGroupActivity.init(initialDataSource:initialIndexPath:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for OneUpGroupActivity();
  *(a6 + *(v12 + 32)) = 0;
  v13 = sub_1A3F67960();
  v14 = *(v13 + 1);
  *a6 = *v13;
  *(a6 + 4) = v14;
  v15 = sub_1A3F67A3C();
  v16 = *(v15 + 1);
  *(a6 + 8) = *v15;
  *(a6 + 12) = v16;
  *(a6 + 16) = [a1 identifier];
  *&v22 = a2;
  *(&v22 + 1) = a3;
  v23 = a4;
  v24 = a5;
  v17 = [a1 assetAtItemIndexPath_];
  v18 = swift_unknownObjectRetain();
  OneUpSharePlayOverridableAsset.init(asset:)(v18, &v22);
  v21 = v22;
  v19 = sub_1A3C5A374();
  OneUpSharePlayAssetMetadata.init(asset:includingTitleInfo:)(&v21, v19 & 1, a6 + *(v12 + 28));

  return swift_unknownObjectRelease();
}

uint64_t OneUpGroupActivity.isCompatibleWithCurrentVersion.getter()
{
  sub_1A3F67960();
  sub_1A3DC4364();
  if (sub_1A524C534())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1EB1BABE0 != -1)
    {
      swift_once();
    }

    v0 = sub_1A524C534() ^ 1;
  }

  return v0 & 1;
}

unint64_t sub_1A437422C()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0xD00000000000001ELL;
  v4 = 0x6465737561507369;
  if (v1 == 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_1A43742D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A4378518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A43742FC(uint64_t a1)
{
  v2 = sub_1A43745D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4374338(uint64_t a1)
{
  v2 = sub_1A43745D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpGroupActivity.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A4374A3C(0, &qword_1EB138B08, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43745D8();
  sub_1A524ED34();
  v10 = v3[1];
  v14 = *v3;
  v15 = v10;
  HIBYTE(v13) = 0;
  sub_1A3DC41B0();
  sub_1A524E9D4();
  if (!v2)
  {
    v11 = v3[3];
    v14 = v3[2];
    v15 = v11;
    HIBYTE(v13) = 1;
    sub_1A524E9D4();
    LOBYTE(v14) = 2;
    sub_1A524E9C4();
    type metadata accessor for OneUpGroupActivity();
    LOBYTE(v14) = 3;
    type metadata accessor for OneUpSharePlayAssetMetadata(0);
    sub_1A4374AA0(&qword_1EB131B78, type metadata accessor for OneUpSharePlayAssetMetadata);
    sub_1A524E9D4();
    LOBYTE(v14) = 4;
    sub_1A524E9A4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A43745D8()
{
  result = qword_1EB1BABF0[0];
  if (!qword_1EB1BABF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BABF0);
  }

  return result;
}

uint64_t OneUpGroupActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4374A3C(0, &qword_1EB138B10, MEMORY[0x1E69E6F48]);
  v29 = v5;
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for OneUpGroupActivity();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43745D8();
  v11 = v30;
  sub_1A524ED14();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v8;
  v25 = v4;
  v30 = a1;
  v12 = v27;
  v13 = v10;
  v31 = 0;
  sub_1A3DC42BC();
  v14 = v29;
  sub_1A524E8E4();
  v15 = v33;
  *v13 = v32;
  *(v13 + 1) = v15;
  v31 = 1;
  sub_1A524E8E4();
  v16 = v33;
  *(v13 + 2) = v32;
  *(v13 + 3) = v16;
  LOBYTE(v32) = 2;
  v17 = v13;
  *(v13 + 2) = sub_1A524E8D4();
  LOBYTE(v32) = 3;
  sub_1A4374AA0(&qword_1EB131B98, type metadata accessor for OneUpSharePlayAssetMetadata);
  v18 = v25;
  sub_1A524E8E4();
  v19 = v24;
  sub_1A4374AE8(v18, v17 + *(v24 + 28));
  LOBYTE(v32) = 4;
  v20 = sub_1A524E8B4();
  v21 = v12;
  v22 = *(v19 + 32);
  (*(v21 + 8))(v7, v14);
  *(v17 + v22) = v20 & 1;
  sub_1A4378830(v17, v26, type metadata accessor for OneUpGroupActivity);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return sub_1A4374B4C(v17, type metadata accessor for OneUpGroupActivity);
}

void sub_1A4374A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A43745D8();
    v7 = a3(a1, &type metadata for OneUpGroupActivity.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A4374AA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4374AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4374B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4374BB0()
{
  sub_1A5241994();
  swift_task_alloc();
  sub_1A5241974();
  swift_task_alloc();
  sub_1A52419D4();
  sub_1A5241964();
  sub_1A52419B4();
  v1 = sub_1A524C634();
  v2 = PXLocalizedString(v1);

  v3 = sub_1A524C674();
  v5 = v4;

  MEMORY[0x1A58FCD30](v3, v5);
  sub_1A5241984();
  sub_1A52419A4();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A4374D08(uint64_t a1)
{
  v2 = sub_1A4374AA0(&unk_1EB1407E0, type metadata accessor for OneUpGroupActivity);

  return MEMORY[0x1EEDC7548](a1, v2);
}

void sub_1A4374D84(_DWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_1A4374D90(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 12);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t sub_1A4374D9C@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1BABE0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1BABEC;
  *a1 = dword_1EB1BABE8;
  a1[1] = v1;
  return result;
}

uint64_t sub_1A4374EA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A4374AA0(&unk_1EB1407E0, type metadata accessor for OneUpGroupActivity);
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return MEMORY[0x1EEDC7538](a1, a2, v6);
}

uint64_t sub_1A4374F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = sub_1A4374AA0(&unk_1EB1407E0, type metadata accessor for OneUpGroupActivity);
  *v7 = v3;
  v7[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDC7530](a1, a2, a3, v8);
}

uint64_t sub_1A4375080(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_1A4374AA0(&unk_1EB1407E0, type metadata accessor for OneUpGroupActivity);
  *v3 = v1;
  v3[1] = sub_1A437515C;

  return MEMORY[0x1EEDC7540](a1, v4);
}

uint64_t sub_1A437515C(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t GroupSession<>.currentState.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1A43754B4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1A5241B04();
  (*(v4 + 16))(v6, v9, v3);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 == *MEMORY[0x1E696B2C0])
  {
    (*(v4 + 8))(v9, v3);
    result = (*(v4 + 96))(v6, v3);
    v12 = *v6;
LABEL_7:
    *a1 = v12;
    return result;
  }

  if (v10 == *MEMORY[0x1E696B2D0])
  {
    result = (*(v4 + 8))(v9, v3);
    v12 = 0;
    goto LABEL_7;
  }

  if (v10 == *MEMORY[0x1E696B2C8])
  {
    result = (*(v4 + 8))(v9, v3);
    v12 = 1;
    goto LABEL_7;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t GroupSession<>.stateChangePublisher.getter()
{
  v1 = *v0;
  sub_1A437565C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241B14();
  *(swift_allocObject() + 16) = v1;
  sub_1A4374AA0(&qword_1EB138B28, sub_1A437565C);
  sub_1A5247A24();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A4375690@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1A43754B4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x1E696B2C0])
  {
    result = (*(v6 + 96))(v9, v5);
    v11 = *v9;
LABEL_7:
    *a2 = v11;
    return result;
  }

  if (result == *MEMORY[0x1E696B2D0])
  {
    v11 = 0;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x1E696B2C8])
  {
    v11 = 1;
    goto LABEL_7;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void (*sub_1A437584C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A5241B24();
  return sub_1A3D3D728;
}

uint64_t sub_1A43758C4()
{
  v1 = *v0;
  sub_1A437565C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241B14();
  *(swift_allocObject() + 16) = v1;
  sub_1A4374AA0(&qword_1EB138B28, sub_1A437565C);
  sub_1A5247A24();

  return (*(v4 + 8))(v6, v3);
}

uint64_t GroupSessionMessenger.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1A5241C04();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4375B34, 0, 0);
}

uint64_t sub_1A4375B34()
{
  (*(v0[8] + 104))(v0[9], *MEMORY[0x1E696B350], v0[7]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A4375BFC;
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x1EEDC7410](v6, v2, v4, v5, v3);
}

uint64_t sub_1A4375BFC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4375DA4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A4375DA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupSessionMessenger.messagesStream<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A5241BE4();
  swift_getTupleTypeMetadata2();
  v7 = sub_1A524CCE4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = sub_1A5241A54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  sub_1A5241A64();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = v13;
  swift_checkMetadataState();
  v14 = *MEMORY[0x1E69E8650];
  v15 = sub_1A524CCE4();
  (*(*(v15 - 8) + 104))(v9, v14, v15);
  sub_1A524CD64();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A4376004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v38 = a2;
  v34 = a1;
  sub_1A5241BE4();
  swift_getTupleTypeMetadata2();
  v35 = sub_1A524CD14();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v31 - v8;
  v32 = &v31 - v8;
  v33 = a3;
  v10 = a3;
  v11 = sub_1A5241A54();
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524CCB4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, v38, v11);
  v20 = v9;
  v21 = v35;
  (*(v7 + 16))(v20, a1, v35);
  v22 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v23 = (v13 + v22 + *(v7 + 80)) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v10;
  v26 = v36;
  v25 = v37;
  *(v24 + 5) = v36;
  *(v24 + 6) = v25;
  (*(v12 + 32))(&v24[v22], v15, v31);
  (*(v7 + 32))(&v24[v23], v32, v21);
  v27 = sub_1A3D4D930(0, 0, v18, &unk_1A5333A58, v24);
  v28 = sub_1A3EE1368(v27, MEMORY[0x1E69E7CA8] + 8);

  v29 = swift_allocObject();
  v29[2] = v33;
  v29[3] = v26;
  v29[4] = v25;
  v29[5] = v28;
  return sub_1A524CCD4();
}

uint64_t sub_1A4376370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = sub_1A5241BE4();
  v8[7] = v10;
  v8[8] = swift_getTupleTypeMetadata2();
  v8[9] = swift_task_alloc();
  v8[10] = *(v10 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = *(a6 - 8);
  v8[13] = swift_task_alloc();
  v11 = sub_1A524CCC4();
  v8[14] = v11;
  v8[15] = *(v11 - 8);
  v8[16] = swift_task_alloc();
  v12 = sub_1A5241A04();
  v8[17] = v12;
  v8[18] = *(v12 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_getTupleTypeMetadata2();
  sub_1A524DF24();
  v8[21] = swift_task_alloc();
  v13 = sub_1A5241A44();
  v8[22] = v13;
  v8[23] = *(v13 - 8);
  v8[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A437666C, 0, 0);
}

uint64_t sub_1A437666C()
{
  sub_1A5241A54();
  sub_1A5241A34();
  v1 = swift_task_alloc();
  v0[25] = v1;
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_1A4376754;
  v3 = v0[21];
  v4 = v0[22];

  return MEMORY[0x1EEE6D8E0](v3, 0, 0, v4, WitnessTable);
}

uint64_t sub_1A4376754()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4376864, 0, 0);
  }

  return result;
}

uint64_t sub_1A4376864()
{
  v1 = v0[21];
  if ((*(*(v0[20] - 8) + 48))(v1, 1, v0[20]) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    sub_1A524CD14();
    sub_1A524CD04();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v20 = v0[17];
    v21 = v0[16];
    v22 = v0[15];
    v23 = v0[14];
    v4 = v0[12];
    v5 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    v16 = v0[8];
    v17 = v0[7];
    v18 = v0[18];
    v9 = v0[4];
    v19 = v0[19];
    (*(v18 + 32))();
    v10 = *(v4 + 32);
    v10(v5, v1, v9);
    sub_1A52419F4();
    v11 = *(v16 + 48);
    v10(v8, v5, v9);
    (*(v7 + 32))(v8 + v11, v6, v17);
    sub_1A524CD14();
    sub_1A524CCF4();
    (*(v22 + 8))(v21, v23);
    (*(v18 + 8))(v19, v20);
    v12 = swift_task_alloc();
    v0[25] = v12;
    WitnessTable = swift_getWitnessTable();
    *v12 = v0;
    v12[1] = sub_1A4376754;
    v14 = v0[21];
    v15 = v0[22];

    return MEMORY[0x1EEE6D8E0](v14, 0, 0, v15, WitnessTable);
  }
}

uint64_t sub_1A4376B4C@<X0>(uint64_t *a1@<X8>)
{
  swift_allocObject();
  result = sub_1A5241A24();
  *a1 = result;
  return result;
}

uint64_t sub_1A4376BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return GroupSessionMessenger.send<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_1A4376C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDC7410](a1, a2, a3, a4, a5);
}

uint64_t GroupSessionJournal.attachmentsStream.getter()
{
  sub_1A4376F2C(0, &qword_1EB138B30, sub_1A4376F90, MEMORY[0x1E69E8658]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-v3];
  v5 = sub_1A5241914();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5241924();
  v11 = v8;
  sub_1A4376F90(0);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v1);
  sub_1A524CD64();
  return (*(v6 + 8))(v8, v5);
}

void sub_1A4376F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4376FC4(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  sub_1A4376F2C(0, &qword_1EB138BD0, sub_1A4376F90, MEMORY[0x1E69E8660]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v24 = &v23 - v6;
  v8 = sub_1A5241914();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524CCB4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, v26, v8);
  v16 = v7;
  v17 = v4;
  (*(v5 + 16))(v16, a1, v4);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v9 + 32))(v20 + v18, v11, v8);
  (*(v5 + 32))(v20 + v19, v24, v17);
  v21 = sub_1A3D4D930(0, 0, v14, &unk_1A5333A40, v20);
  sub_1A3EE1368(v21, MEMORY[0x1E69E7CA8] + 8);

  return sub_1A524CCD4();
}

unint64_t sub_1A43772EC()
{
  result = qword_1EB138B40;
  if (!qword_1EB138B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138B40);
  }

  return result;
}

void sub_1A43774A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for OneUpGroupActivity();
    v7 = sub_1A4374AA0(&unk_1EB1407E0, type metadata accessor for OneUpGroupActivity);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4377620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1A4376F2C(0, &qword_1EB138BD8, sub_1A4376F90, MEMORY[0x1E69E8638]);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_1A5241904();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A437776C, 0, 0);
}

uint64_t sub_1A437776C()
{
  sub_1A52418F4();
  v1 = sub_1A4374AA0(&qword_1EB138BE0, MEMORY[0x1E696B238]);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1A4377854;
  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v3, v1);
}

uint64_t sub_1A4377854()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1A4377B94;
  }

  else
  {
    v2 = sub_1A4377968;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A437798C()
{
  v1 = v0[15];
  if (v1)
  {
    v3 = v0[8];
    v2 = v0[9];
    v4 = v0[7];
    v0[4] = v1;
    sub_1A4376F2C(0, &qword_1EB138BD0, sub_1A4376F90, MEMORY[0x1E69E8660]);
    sub_1A524CCF4();
    (*(v3 + 8))(v2, v4);
    v5 = sub_1A4374AA0(&qword_1EB138BE0, MEMORY[0x1E696B238]);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1A4377854;
    v7 = v0[10];

    return MEMORY[0x1EEE6D8C8](v0 + 2, v7, v5);
  }

  else
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_1A4376F2C(0, &qword_1EB138BD0, sub_1A4376F90, MEMORY[0x1E69E8660]);
    sub_1A524CD04();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1A4377B94()
{
  *(v0 + 24) = *(v0 + 112);
  sub_1A3DBD9A0();
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1A4377C14()
{
  sub_1A4376F2C(0, &qword_1EB138B30, sub_1A4376F90, MEMORY[0x1E69E8658]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-v3];
  v5 = sub_1A5241914();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5241924();
  v11 = v8;
  sub_1A4376F90(0);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v1);
  sub_1A524CD64();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A4377DF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5241954();
  *a1 = result;
  return result;
}

uint64_t sub_1A4377E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDC7358](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1A4377F18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDC7360](a1);
}

uint64_t sub_1A4377FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDC7328](a1, a2, a3, a4);
}

uint64_t sub_1A4378078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3D60150;

  return MEMORY[0x1EEDC7318](a1, a2, a3, a4, a5);
}

uint64_t sub_1A4378144(uint64_t a1)
{
  result = sub_1A4374AA0(&qword_1EB138B88, MEMORY[0x1E696B228]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A43781D4()
{
  result = type metadata accessor for OneUpSharePlayAssetMetadata(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A437829C()
{
  if (!qword_1EB138BA8)
  {
    sub_1A437565C(255);
    sub_1A4374AA0(&qword_1EB138B28, sub_1A437565C);
    v0 = sub_1A52477F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138BA8);
    }
  }
}

void sub_1A437836C()
{
  if (!qword_1EB138BC0)
  {
    sub_1A5241BE4();
    sub_1A4374AA0(&qword_1EB138BC8, MEMORY[0x1E696B330]);
    v0 = sub_1A524CFA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138BC0);
    }
  }
}

unint64_t sub_1A4378414()
{
  result = qword_1EB1BB290[0];
  if (!qword_1EB1BB290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BB290);
  }

  return result;
}

unint64_t sub_1A437846C()
{
  result = qword_1EB1BB3A0;
  if (!qword_1EB1BB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BB3A0);
  }

  return result;
}

unint64_t sub_1A43784C4()
{
  result = qword_1EB1BB3A8[0];
  if (!qword_1EB1BB3A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BB3A8);
  }

  return result;
}

uint64_t sub_1A4378518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A53B70A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A53D3980 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A53D39A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465737561507369 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A43786D0()
{
  v2 = *(sub_1A5241914() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_1A4376F2C(0, &qword_1EB138BD0, sub_1A4376F90, MEMORY[0x1E69E8660]);
  v6 = (v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A4377620(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_1A4378830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4378898()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(sub_1A5241A54() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_1A5241BE4();
  swift_getTupleTypeMetadata2();
  v8 = *(sub_1A524CD14() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1A3CA8098;

  return sub_1A4376370(v10, v11, v12, v0 + v6, v0 + v9, v2, v3, v4);
}

uint64_t sub_1A4378A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a2;
  v30[0] = type metadata accessor for GenerativeStoryBasicPromptInputView(0);
  MEMORY[0x1EEE9AC00](v30[0]);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437BE6C(0, &qword_1EB138C80, MEMORY[0x1E697F948]);
  v30[2] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  sub_1A4379434(0, &qword_1EB138C88, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  sub_1A4379434(0, &qword_1EB138C00, MEMORY[0x1E697F960]);
  v30[3] = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v14 = type metadata accessor for GenerativeStorySystemPromptInputView();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C56110();
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 promptEntryViewType];

  if (v18 == 2)
  {
    v32 = 0;
  }

  else
  {
    if (v18 == 1)
    {
      sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
      sub_1A524BAA4();
      type metadata accessor for GenerativeStoryCreationViewModel(0);
      sub_1A437C0E0(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
      sub_1A524BAC4();
      v25 = &v4[*(v30[0] + 20)];
      *v25 = sub_1A5247C34() & 1;
      *(v25 + 1) = v26;
      v25[16] = v27 & 1;
      v23 = type metadata accessor for GenerativeStoryBasicPromptInputView;
      sub_1A437C018(v4, v10, type metadata accessor for GenerativeStoryBasicPromptInputView);
      swift_storeEnumTagMultiPayload();
      sub_1A437C0E0(&qword_1EB125240, type metadata accessor for GenerativeStorySystemPromptInputView);
      sub_1A437962C();
      sub_1A5249744();
      sub_1A437BF20(v13, v7);
      swift_storeEnumTagMultiPayload();
      sub_1A437B8F4(0, &qword_1EB138C08, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
      sub_1A4379560();
      sub_1A4379684();
      sub_1A5249744();
      sub_1A437BFA0(v13);
      v24 = v4;
      return sub_1A437C080(v24, v23);
    }

    if (!v18)
    {
      sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
      sub_1A524BAA4();
      v19 = a1 + *(type metadata accessor for GenerativeStoryPromptInputView(0) + 20);
      v20 = *(v19 + 8);
      v21 = *(v19 + 16);
      v22 = *v19;

      sub_1A42266F4(v22, v20, v21, v16);
      v23 = type metadata accessor for GenerativeStorySystemPromptInputView;
      sub_1A437C018(v16, v10, type metadata accessor for GenerativeStorySystemPromptInputView);
      swift_storeEnumTagMultiPayload();
      sub_1A437C0E0(&qword_1EB125240, type metadata accessor for GenerativeStorySystemPromptInputView);
      sub_1A437962C();
      sub_1A5249744();
      sub_1A437BF20(v13, v7);
      swift_storeEnumTagMultiPayload();
      sub_1A437B8F4(0, &qword_1EB138C08, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
      sub_1A4379560();
      sub_1A4379684();
      sub_1A5249744();
      sub_1A437BFA0(v13);
      v24 = v16;
      return sub_1A437C080(v24, v23);
    }

    v32 = 1;
  }

  v29 = MEMORY[0x1E6981E70];
  sub_1A5249744();
  *v7 = v31;
  swift_storeEnumTagMultiPayload();
  sub_1A437B8F4(0, &qword_1EB138C08, v29, v29, MEMORY[0x1E697F960]);
  sub_1A4379560();
  sub_1A4379684();
  return sub_1A5249744();
}

void sub_1A43790D8()
{
  v0 = sub_1A524C634();
  v1 = PXMemoryCreationLocalizedString(v0);

  v2 = sub_1A524C674();
  v4 = v3;

  qword_1EB1EAE30 = v2;
  *algn_1EB1EAE38 = v4;
}

uint64_t *sub_1A4379150()
{
  if (qword_1EB163DB0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EAE30;
}

uint64_t sub_1A43791A0@<X0>(char a1@<W1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  type metadata accessor for GenerativeStoryCreationViewModel(0);
  sub_1A437C0E0(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A524BAC4();
  result = type metadata accessor for GenerativeStoryPromptInputView(0);
  v9 = a4 + *(result + 20);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  return result;
}

void sub_1A437929C()
{
  sub_1A437AE40(319, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1A4222DB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4379350(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A43793C0()
{
  if (!qword_1EB138BF0)
  {
    sub_1A437BE6C(255, &qword_1EB138BF8, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138BF0);
    }
  }
}

void sub_1A4379434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for GenerativeStorySystemPromptInputView();
    v7 = type metadata accessor for GenerativeStoryBasicPromptInputView(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A43794C4()
{
  result = qword_1EB138C10;
  if (!qword_1EB138C10)
  {
    sub_1A437BE6C(255, &qword_1EB138BF8, MEMORY[0x1E697F960]);
    sub_1A4379560();
    sub_1A4379684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138C10);
  }

  return result;
}

unint64_t sub_1A4379560()
{
  result = qword_1EB138C18;
  if (!qword_1EB138C18)
  {
    sub_1A4379434(255, &qword_1EB138C00, MEMORY[0x1E697F960]);
    sub_1A437C0E0(&qword_1EB125240, type metadata accessor for GenerativeStorySystemPromptInputView);
    sub_1A437962C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138C18);
  }

  return result;
}

unint64_t sub_1A437962C()
{
  result = qword_1EB160C20[0];
  if (!qword_1EB160C20[0])
  {
    type metadata accessor for GenerativeStoryBasicPromptInputView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB160C20);
  }

  return result;
}

unint64_t sub_1A4379684()
{
  result = qword_1EB138C20;
  if (!qword_1EB138C20)
  {
    sub_1A437B8F4(255, &qword_1EB138C08, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138C20);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }
}

void sub_1A437992C()
{
  sub_1A437AE40(319, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1A437B8F4(319, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4379A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  sub_1A437B8F4(0, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v117 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v116 = v84 - v6;
  v7 = sub_1A5248524();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v112 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeStoryBasicPromptInputView(0);
  v10 = v9 - 8;
  v109 = *(v9 - 8);
  v124 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v107 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1A5247F04();
  v106 = *(v122 - 1);
  MEMORY[0x1EEE9AC00](v122);
  v102 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1A5249E14();
  v101 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v84 - v17;
  sub_1A437B8F4(0, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
  v20 = v19;
  v89 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v84 - v21;
  sub_1A437B7C0();
  v91 = v23;
  v92 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437B690();
  v93 = v26;
  v94 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v88 = v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437B528();
  v97 = v28;
  v98 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v90 = v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437B390();
  v103 = v30;
  v104 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v123 = v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437B1AC();
  v108 = v32;
  v110 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v99 = v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437AF40();
  v111 = v34 - 8;
  MEMORY[0x1EEE9AC00](v34 - 8);
  v113 = v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v105 = v84 - v37;
  sub_1A524BAB4();
  swift_getKeyPath();
  v96 = v15;
  sub_1A524BAD4();

  (*(v16 + 8))(v18, v15);
  sub_1A524BDD4();
  v38 = (a1 + *(v10 + 28));
  v87 = *v38;
  v86 = *(v38 + 1);
  v85 = v38[16];
  LOBYTE(v126) = v87;
  v127 = v86;
  LOBYTE(v128) = v85;
  sub_1A437B8F4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  v84[1] = v39;
  sub_1A5247C24();
  v40 = sub_1A437B870();
  sub_1A524B074();

  (*(v89 + 8))(v22, v20);
  v41 = v95;
  sub_1A5249E04();
  v126 = v20;
  v127 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80]);
  v44 = v88;
  v45 = v91;
  v46 = v100;
  sub_1A524AB44();
  v47 = v46;
  (*(v101 + 8))(v41, v46);
  (*(v92 + 8))(v25, v45);
  v48 = v102;
  sub_1A5247EF4();
  v126 = v45;
  v127 = v47;
  v128 = OpaqueTypeConformance2;
  v129 = v43;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v90;
  v51 = v93;
  sub_1A524A9D4();
  (*(v106 + 8))(v48, v122);
  (*(v94 + 8))(v44, v51);
  v121 = a1;
  v122 = type metadata accessor for GenerativeStoryBasicPromptInputView;
  v52 = v107;
  sub_1A437C018(a1, v107, type metadata accessor for GenerativeStoryBasicPromptInputView);
  v109 = *(v109 + 80);
  v53 = (v109 + 16) & ~v109;
  v54 = swift_allocObject();
  sub_1A437B948(v52, v54 + v53);
  v55 = v112;
  sub_1A5248514();
  v126 = v51;
  v127 = v49;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v97;
  sub_1A524B164();

  (*(v114 + 8))(v55, v115);
  (*(v98 + 8))(v50, v57);
  LOBYTE(v126) = v87;
  v127 = v86;
  LOBYTE(v128) = v85;
  sub_1A5247C04();
  v58 = v122;
  sub_1A437C018(a1, v52, v122);
  v59 = swift_allocObject();
  sub_1A437B948(v52, v59 + v53);
  v126 = v57;
  v127 = v56;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v99;
  v62 = v103;
  v63 = v123;
  sub_1A524B154();

  (*(v104 + 8))(v63, v62);
  v64 = v121;
  v65 = sub_1A524BAA4();
  LOBYTE(v51) = (*(*v126 + 584))(v65);

  LOBYTE(v125) = v51 & 1;
  sub_1A437C018(v64, v52, v58);
  v66 = swift_allocObject();
  sub_1A437B948(v52, v66 + v53);
  v126 = v62;
  v127 = MEMORY[0x1E69E6370];
  v128 = v60;
  v129 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v67 = v105;
  v68 = v108;
  sub_1A524B154();

  (*(v110 + 8))(v61, v68);
  v69 = v121;
  v70 = v122;
  sub_1A437C018(v121, v52, v122);
  v71 = swift_allocObject();
  sub_1A437B948(v52, v71 + v53);
  v72 = (v67 + *(v111 + 44));
  *v72 = sub_1A437C244;
  v72[1] = v71;
  v72[2] = 0;
  v72[3] = 0;
  sub_1A437C018(v69, v52, v70);
  v73 = swift_allocObject();
  sub_1A437B948(v52, v73 + v53);
  v74 = v116;
  sub_1A524B704();
  v75 = v113;
  sub_1A3CF4850(v67, v113);
  v77 = v117;
  v76 = v118;
  v78 = *(v118 + 16);
  v79 = v119;
  v78(v117, v74, v119);
  v80 = v120;
  sub_1A3CF4850(v75, v120);
  sub_1A437AEA4();
  v78((v80 + *(v81 + 48)), v77, v79);
  v82 = *(v76 + 8);
  v82(v74, v79);
  sub_1A3CF48B4(v67);
  v82(v77, v79);
  return sub_1A3CF48B4(v75);
}

uint64_t sub_1A437A9E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A437AAAC(uint64_t a1@<X8>)
{
  if (qword_1EB163DB0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v2 = *algn_1EB1EAE38;
  *a1 = qword_1EB1EAE30;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A437AB30()
{
  sub_1A437AE40(0, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v3 = v11;
  v4 = sub_1A524BAA4();
  v5 = (*(*v11 + 416))(v4);
  v7 = v6;

  v8 = sub_1A5244854();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  (*(*v3 + 1896))(v5, v7, v2);

  return sub_1A437BDE0(v2);
}

uint64_t sub_1A437AD18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A437AD60@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A437ADA8();
  return sub_1A4379A28(v1, a1 + *(v3 + 44));
}

void sub_1A437ADA8()
{
  if (!qword_1EB138C28)
  {
    sub_1A437AE40(255, &qword_1EB138C30, sub_1A437AEA4, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138C28);
    }
  }
}

void sub_1A437AE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A437AEA4()
{
  if (!qword_1EB138C38)
  {
    sub_1A437AF40();
    sub_1A437B8F4(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138C38);
    }
  }
}

void sub_1A437AF40()
{
  if (!qword_1EB138C40)
  {
    sub_1A437AFA0();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138C40);
    }
  }
}

void sub_1A437AFA0()
{
  if (!qword_1EB138C48)
  {
    sub_1A437B1AC();
    sub_1A437B390();
    sub_1A437B528();
    sub_1A437B690();
    sub_1A437B7C0();
    sub_1A5249E14();
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    swift_getOpaqueTypeConformance2();
    sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C48);
    }
  }
}

void sub_1A437B1AC()
{
  if (!qword_1EB138C50)
  {
    sub_1A437B390();
    sub_1A437B528();
    sub_1A437B690();
    sub_1A437B7C0();
    sub_1A5249E14();
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    swift_getOpaqueTypeConformance2();
    sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C50);
    }
  }
}

void sub_1A437B390()
{
  if (!qword_1EB138C58)
  {
    sub_1A437B528();
    sub_1A437B690();
    sub_1A437B7C0();
    sub_1A5249E14();
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    swift_getOpaqueTypeConformance2();
    sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C58);
    }
  }
}

void sub_1A437B528()
{
  if (!qword_1EB138C60)
  {
    sub_1A437B690();
    sub_1A437B7C0();
    sub_1A5249E14();
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    swift_getOpaqueTypeConformance2();
    sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C60);
    }
  }
}

void sub_1A437B690()
{
  if (!qword_1EB138C68)
  {
    sub_1A437B7C0();
    sub_1A5249E14();
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    swift_getOpaqueTypeConformance2();
    sub_1A437C0E0(&qword_1EB138C78, MEMORY[0x1E697CA80]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C68);
    }
  }
}

void sub_1A437B7C0()
{
  if (!qword_1EB138C70)
  {
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A437B870();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138C70);
    }
  }
}

unint64_t sub_1A437B870()
{
  result = qword_1EB141610;
  if (!qword_1EB141610)
  {
    sub_1A437B8F4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141610);
  }

  return result;
}

void sub_1A437B8F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A437B948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryBasicPromptInputView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A437B9AC()
{
  type metadata accessor for GenerativeStoryBasicPromptInputView(0);
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  sub_1A437B8F4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  sub_1A5247C04();
  (*(*v2 + 592))(v1);
}

uint64_t sub_1A437BB08()
{
  type metadata accessor for GenerativeStoryBasicPromptInputView(0);
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v0 = sub_1A524BAA4();
  (*(*v2 + 584))(v0);

  sub_1A437B8F4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  return sub_1A5247C14();
}

uint64_t objectdestroyTm_47()
{
  v1 = *(type metadata accessor for GenerativeStoryBasicPromptInputView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1A437AE40(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1A437BDE0(uint64_t a1)
{
  sub_1A437AE40(0, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A437BE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4379434(255, &qword_1EB138C00, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1A437B8F4(255, &qword_1EB138C08, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A437BF20(uint64_t a1, uint64_t a2)
{
  sub_1A4379434(0, &qword_1EB138C00, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A437BFA0(uint64_t a1)
{
  sub_1A4379434(0, &qword_1EB138C00, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A437C018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A437C080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A437C0E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A437C128()
{
  if (!qword_1EB138C98)
  {
    sub_1A437AE40(255, &qword_1EB138C30, sub_1A437AEA4, MEMORY[0x1E6981F40]);
    sub_1A437C1BC();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138C98);
    }
  }
}

unint64_t sub_1A437C1BC()
{
  result = qword_1EB138CA0;
  if (!qword_1EB138CA0)
  {
    sub_1A437AE40(255, &qword_1EB138C30, sub_1A437AEA4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CA0);
  }

  return result;
}

uint64_t sub_1A437C2C0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3F930BC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A437C32C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5243CC4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A437C3B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1A438EBD4(a1, a5, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  result = type metadata accessor for LemonadeFeedBodyStyle(0);
  *(a5 + *(result + 20)) = a2;
  v10 = a5 + *(result + 24);
  *v10 = a3;
  *(v10 + 8) = a4 & 1;
  return result;
}

uint64_t sub_1A437C42C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LemonadeFeedBodyStyle(0);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1A437C488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C47A98();
  v5 = *(v4 + 64);
  *a2 = sub_1A437C524;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_1A43A1960(a2 + v5);
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for LemonadeFeedBodyStyle(0);
  *(a2 + *(result + 20)) = 4;
  v7 = a2 + *(result + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_1A437C524(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F0])
  {
    return 13;
  }

  if (v7 == *MEMORY[0x1E69C2210])
  {
    return 3;
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

uint64_t sub_1A437C664()
{
  v0 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for LemonadeFeedBodyStyle(0);
  __swift_allocate_value_buffer(v3, qword_1EB1EBCE0);
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBCE0);
  v5 = sub_1A3C4ED50();
  v8[8] = 1;
  *v2 = xmmword_1A5333B70;
  v2[16] = 1;
  *(v2 + 3) = 1;
  v2[32] = 1;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  v2[88] = 2;
  v2[89] = v5;
  swift_storeEnumTagMultiPayload();
  result = sub_1A438EBD4(v2, v4, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  *(v4 + *(v3 + 20)) = 5;
  v7 = v4 + *(v3 + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_1A437C80C(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v24 = a1;
  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeFeedBodyStyle(0);
  __swift_allocate_value_buffer(v7, a3);
  v8 = __swift_project_value_buffer(v7, a3);
  sub_1A439027C(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v10 = sub_1A524A054();
  *(inited + 32) = v10;
  v11 = sub_1A524A074();
  *(inited + 33) = v11;
  v12 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v10)
  {
    v12 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v11)
  {
    v12 = sub_1A524A0A4();
  }

  v13 = sub_1A3C47918();
  v15 = v14;
  v16 = sub_1A3C47918();
  v18 = v17;
  v19 = sub_1A3C52D68();
  v25 = 1;
  *v6 = v24;
  v6[16] = 1;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = v13;
  *(v6 + 6) = v15;
  *(v6 + 7) = v16;
  *(v6 + 8) = v18;
  *(v6 + 9) = v19;
  *(v6 + 10) = v20;
  v6[88] = v21;
  v6[89] = v12;
  swift_storeEnumTagMultiPayload();
  result = sub_1A438EBD4(v6, v8, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  *(v8 + *(v7 + 20)) = 0;
  v23 = v8 + *(v7 + 24);
  *v23 = 1;
  *(v23 + 8) = 0;
  return result;
}

uint64_t sub_1A437CA3C(uint64_t a1, unint64_t a2)
{
  v2 = 0x6C6C4120656553;
  if (a2 != 1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  sub_1A437CA90(a1, a2);
  return v3;
}

void sub_1A437CA90(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A437CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A438DC04();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A437CB08()
{
  sub_1A437CB44();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A437CB44()
{
  result = qword_1EB15A710[0];
  if (!qword_1EB15A710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A710);
  }

  return result;
}

uint64_t sub_1A437CBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v103 = a7;
  v104 = a8;
  v106 = a6;
  v101 = a5;
  v99 = a4;
  v108 = a3;
  v105 = a2;
  v102 = a10;
  sub_1A43892B8(0, &qword_1EB138CA8, MEMORY[0x1E697DA80]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v107 = &v86 - v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v91 = sub_1A5242854();
  v92 = sub_1A5247CB4();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v86 - v17;
  v96 = MEMORY[0x1E69C28B0];
  v95 = MEMORY[0x1E69E6720];
  sub_1A437DD40(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  v94 = *(v18 - 8);
  v19 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v93 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v23 = type metadata accessor for LemonadeFeedContents();
  v24 = v23[13];
  v25 = swift_allocObject();
  *(v25 + 16) = a11;
  *(v25 + 24) = a12;
  v88 = v24;
  sub_1A437D838(sub_1A437DD38, v25, a11, a12);
  v26 = v23[15];
  sub_1A3E792C4(0, &qword_1EB1256B8, &qword_1EB1256C0);
  v98 = v26;
  v97 = v27;
  sub_1A5247C74();
  v28 = (a9 + v23[16]);
  *v28 = sub_1A437D968();
  v28[1] = v29;
  v30 = (a9 + v23[17]);
  *v30 = sub_1A437D9CC();
  v30[1] = v31;
  v32 = (a9 + v23[18]);
  *v32 = sub_1A437DA78();
  v32[1] = v33;
  v34 = a9 + v23[20];
  LOBYTE(v111[0]) = 0;
  sub_1A524B694();
  v35 = v114;
  *v34 = v113;
  *(v34 + 8) = v35;
  v36 = a9 + v23[21];
  LOBYTE(v111[0]) = 0;
  sub_1A524B694();
  v37 = v114;
  *v36 = v113;
  *(v36 + 8) = v37;
  v38 = v23[22];
  *(a9 + v38) = swift_getKeyPath();
  v39 = MEMORY[0x1E697DCB8];
  sub_1A437DD40(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v40 = a9 + v23[23];
  *v40 = swift_getKeyPath();
  *(v40 + 8) = 0;
  v41 = a9 + v23[24];
  *v41 = swift_getKeyPath();
  *(v41 + 8) = 0;
  v42 = a9 + v23[25];
  *v42 = swift_getKeyPath();
  *(v42 + 40) = 0;
  v43 = a9 + v23[26];
  *v43 = swift_getKeyPath();
  *(v43 + 8) = 0;
  v44 = a9 + v23[27];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  v45 = a9 + v23[28];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v46 = a9 + v23[29];
  *v46 = swift_getKeyPath();
  *(v46 + 8) = 0;
  v47 = v23[30];
  *(a9 + v47) = swift_getKeyPath();
  sub_1A437DD40(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v39);
  swift_storeEnumTagMultiPayload();
  v48 = a9 + v23[31];
  *v48 = swift_getKeyPath();
  *(v48 + 8) = 0;
  v49 = a9 + v23[32];
  *v49 = swift_getKeyPath();
  *(v49 + 8) = 0;
  v50 = a9 + v23[33];
  *v50 = swift_getKeyPath();
  *(v50 + 8) = 0;
  v51 = v23[34];
  *(a9 + v51) = swift_getKeyPath();
  sub_1A437DD40(0, &unk_1EB128A40, sub_1A3DC7D88, v39);
  swift_storeEnumTagMultiPayload();
  v52 = v23[35];
  *(a9 + v52) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v53 = a9 + v23[36];
  *v53 = swift_getKeyPath();
  *(v53 + 8) = 0;
  v54 = a9 + v23[37];
  *v54 = swift_getKeyPath();
  *(v54 + 8) = 0;
  v55 = a9 + v23[38];
  *v55 = swift_getKeyPath();
  *(v55 + 8) = 0;
  v56 = v23[39];
  *(a9 + v56) = swift_getKeyPath();
  sub_1A437DD40(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, v39);
  swift_storeEnumTagMultiPayload();
  v57 = a9 + v23[40];
  *v57 = swift_getKeyPath();
  *(v57 + 8) = 0;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  v58 = a9 + v23[41];
  *v58 = swift_getKeyPath();
  *(v58 + 8) = 0;
  v59 = v23[42];
  *(a9 + v59) = swift_getKeyPath();
  sub_1A437DD40(0, &qword_1EB128A50, MEMORY[0x1E697E730], v39);
  swift_storeEnumTagMultiPayload();
  v60 = a9 + v23[43];
  *v60 = swift_getKeyPath();
  *(v60 + 8) = 0;
  v61 = a9 + v23[44];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  v62 = v23[45];
  *(a9 + v62) = swift_getKeyPath();
  sub_1A437DD40(0, &qword_1EB12F3F8, MEMORY[0x1E69C2998], v39);
  swift_storeEnumTagMultiPayload();
  v63 = *(a11 - 8);
  (*(v63 + 16))(a9, a1, a11);
  *(a9 + v23[9]) = v105;
  v64 = (*(a12 + 72))(a11, a12);
  v66 = v65;
  (*(a12 + 144))(a11, a12);
  v67 = *(a12 + 112);
  v105 = a1;
  v87 = a12;
  v67(&v113, a11, a12);
  v100 = v22;
  v68 = v93;
  v69 = v95;
  sub_1A438EB64(v22, v93, &unk_1EB129000, v96, v95);
  v70 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  sub_1A437E3C0(v68, v71 + v70);
  sub_1A52434D4();
  sub_1A5247C74();
  sub_1A438EB64(v108, a9 + v23[10], &qword_1EB128FB0, MEMORY[0x1E69C2E30], v69);
  v72 = v99;
  if (v99)
  {
    v73 = swift_allocObject();
    v74 = v87;
    v73[2] = a11;
    v73[3] = v74;
    v73[4] = v72;

    v75 = v89;
    sub_1A5247C74();
    (*(v90 + 40))(a9 + v88, v75, v92);
  }

  v76 = a9 + v23[19];
  LOBYTE(v109[0]) = v101 & 1;
  sub_1A524B694();
  v77 = *(&v111[0] + 1);
  *v76 = v111[0];
  *(v76 + 8) = v77;
  v78 = (a9 + v23[11]);
  v79 = v104;
  *v78 = v103;
  v78[1] = v79;
  *(a9 + v23[12]) = v102 & 1;
  v80 = v106;
  sub_1A438EC3C(v106, v111, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, sub_1A3E792C4);
  sub_1A438EC3C(&v113, v109, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, sub_1A3E792C4);
  v81 = swift_allocObject();
  v82 = v111[1];
  *(v81 + 16) = v111[0];
  *(v81 + 32) = v82;
  *(v81 + 48) = v112;
  v83 = v109[1];
  *(v81 + 56) = v109[0];
  *(v81 + 72) = v83;
  *(v81 + 88) = v110;
  v84 = v107;
  sub_1A5247C74();

  sub_1A3EA8D18(v80, &qword_1EB1256B8, &qword_1EB1256C0);
  sub_1A438E9F8(v108, &qword_1EB128FB0, MEMORY[0x1E69C2E30]);
  (*(v63 + 8))(v105, a11);
  sub_1A3EA8D18(&v113, &qword_1EB1256B8, &qword_1EB1256C0);
  sub_1A438E9F8(v100, &unk_1EB129000, MEMORY[0x1E69C28B0]);
  return sub_1A437E5D0(v84, a9 + v98);
}

uint64_t sub_1A437D838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();

  return sub_1A5247C74();
}

uint64_t sub_1A437D968()
{
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A524B694();
  return v1;
}

uint64_t sub_1A437D9CC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B694();
  return v1;
}

uint64_t sub_1A437DA78()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B694();
  return AssociatedTypeWitness;
}

void sub_1A437DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69C28B0];
  v5 = MEMORY[0x1E69E6720];
  sub_1A437DD40(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A438EB64(a3, &v8 - v7, &unk_1EB129000, v4, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A437DC68()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  return sub_1A5242834();
}

void sub_1A437DD40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A437DDA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248C94();
  *a1 = result;
  return result;
}

uint64_t sub_1A437DDFC(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 112);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1A437DF50@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v21 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A437DD40(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A438EB64(v8, &v20 - v15, a1, a2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v21, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1A437E174@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v20 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A437DD40(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_1A438EB64(v8, &v19 - v15, a1, a2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A438EBD4(v16, v20, a3);
  }

  sub_1A524D254();
  v18 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A437E368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248D34();
  *a1 = result;
  return result;
}

uint64_t sub_1A437E3C0(uint64_t a1, uint64_t a2)
{
  sub_1A437DD40(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A437E454()
{
  sub_1A437DD40(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  sub_1A437DB70(v3, v4, v5);
}

uint64_t sub_1A437E4F8@<X0>(uint64_t a1@<X8>)
{
  sub_1A438EC3C(v1 + 16, &v4, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, sub_1A3E792C4);
  if (v5)
  {
    return sub_1A3C34460(&v4, a1);
  }

  result = sub_1A438EC3C(v1 + 56, a1, &qword_1EB1256B8, &qword_1EB1256C0, &protocol descriptor for LemonadeFeedContainerModel, sub_1A3E792C4);
  if (v5)
  {
    return sub_1A3EA8D18(&v4, &qword_1EB1256B8, &qword_1EB1256C0);
  }

  return result;
}

uint64_t sub_1A437E5D0(uint64_t a1, uint64_t a2)
{
  sub_1A43892B8(0, &qword_1EB138CA8, MEMORY[0x1E697DA80]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A437E650@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

uint64_t sub_1A437E680()
{
  v0 = sub_1A5242D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1A437DF50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], &v10 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2210], v0);
  v7 = sub_1A5242D04();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1A437E7F4(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5242D14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LemonadeFeedStyleOptions(0);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437DF50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v9);
  v12 = *(a1 + 144);
  v23 = v1;
  v13 = v1 + v12;
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    v24 = *v13;
  }

  else
  {

    sub_1A524D254();
    v15 = sub_1A524A014();
    v20 = v3;
    v16 = v15;
    sub_1A5246DF4();

    v17 = v21;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v14, 0);
    (*(v4 + 8))(v17, v20);
    LOBYTE(v14) = v24;
  }

  (*(v7 + 32))(v11, v9, v6);
  v11[*(v22 + 20)] = v14;
  (*(*(a1 + 24) + 120))(v11, *(a1 + 16));
  return sub_1A438EB04(v11, type metadata accessor for LemonadeFeedStyleOptions);
}

uint64_t sub_1A437EAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v30 = sub_1A52486A4();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437E174(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v15);
  sub_1A437E7F4(a1);
  v16 = v2 + *(a1 + 144);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v35 = *v16;
  }

  else
  {

    sub_1A524D254();
    v18 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v17, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v17) = v35;
  }

  v34 = v17;
  v19 = v3 + *(a1 + 148);
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    v33 = *v19;
  }

  else
  {

    sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v20, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v20) = v33;
  }

  v32 = v20;
  v22 = v27;
  sub_1A437DF50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v27);
  v23 = sub_1A3C5A374();
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v31);
  v24 = sub_1A3C5A374();
  sub_1A43A22CC(v12, &v34, v23, &v32, v22, &v31, v24 & 1, v29);
  (*(v28 + 8))(v22, v30);
  sub_1A438EB04(v15, type metadata accessor for LemonadeItemsLayoutSpec);
  return sub_1A438EB04(v12, type metadata accessor for LemonadeItemsLayoutSpec.Style);
}

void sub_1A437EF48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x1E69C2198];
  v10 = sub_1A5242C74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 104);
  v23 = a2;
  v13 = a2;
  v14 = v12;
  v12(v13, v9, v10);
  v15 = v2 + *(a1 + 128);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v17 = v16;
    if (!v16)
    {
      return;
    }
  }

  else
  {

    sub_1A524D254();
    v18 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v16, 0);
    v17 = (*(v6 + 8))(v8, v5);
    v16 = v25;
    if (!v25)
    {
      return;
    }
  }

  v19 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v16) + 0x1C8))(v17) == 2)
  {
    (*((*v19 & *v16) + 0x210))(&v24);

    v20 = v23;
    (*(v11 + 8))(v23, v10);
    if (v24)
    {
      v21 = MEMORY[0x1E69C2188];
    }

    else
    {
      v21 = MEMORY[0x1E69C2190];
    }

    v14(v20, *v21, v10);
  }

  else
  {
  }
}

uint64_t sub_1A437F1FC(uint64_t a1)
{
  v2 = sub_1A5243D54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for LemonadeFeedBodyStyle(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A437E7F4(a1);
  v13 = v12[*(v10 + 32) + 8];
  sub_1A438EB04(v12, type metadata accessor for LemonadeFeedBodyStyle);
  result = 0;
  if (v13 == 1)
  {
    sub_1A437EAFC(a1, v8);
    v15 = sub_1A5243D44();
    v16 = *(v3 + 8);
    v16(v8, v2);
    sub_1A437EAFC(a1, v5);
    v17 = sub_1A5243D34();
    result = (v16)(v5, v2);
    if (v17)
    {
      if (v15 != 0x8000000000000000 || v17 != -1)
      {
        return v15 / v17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A437F3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2 + *(a1 + 152);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v19[0] = v10;

  sub_1A524D254();
  v15 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();
  sub_1A3F1B54C(v14, 0);
  (*(v9 + 8))(v12, v19[0]);
  v16 = v19[1];
  sub_1A437E7F4(a1);
  v17 = v7[*(v5 + 20)];
  sub_1A438EB04(v7, type metadata accessor for LemonadeFeedBodyStyle);
  sub_1A40B1C00(v17, v16, a2);
}

uint64_t sub_1A437F5FC@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = sub_1A5249A94();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v23[0] = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  sub_1A437E174(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, v23 - v15);
  (*(v2 + 104))(v13, *MEMORY[0x1E697FF40], v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v17 = *(v5 + 56);
  sub_1A3F188F8(v16, v7);
  sub_1A3F188F8(v13, &v7[v17]);
  v18 = *(v2 + 48);
  if (v18(v7, 1, v1) != 1)
  {
    sub_1A3F188F8(v7, v10);
    if (v18(&v7[v17], 1, v1) != 1)
    {
      v20 = v23[0];
      (*(v2 + 32))(v23[0], &v7[v17], v1);
      sub_1A438DB60(&qword_1EB127B70, MEMORY[0x1E697FF50]);
      v21 = sub_1A524C594();
      v22 = *(v2 + 8);
      v22(v20, v1);
      sub_1A438EB04(v13, sub_1A3DC7D88);
      sub_1A438EB04(v16, sub_1A3DC7D88);
      v22(v10, v1);
      sub_1A438EB04(v7, sub_1A3DC7D88);
      if (v21)
      {
        return sub_1A5247F44();
      }

      return sub_1A5247F54();
    }

    sub_1A438EB04(v13, sub_1A3DC7D88);
    sub_1A438EB04(v16, sub_1A3DC7D88);
    (*(v2 + 8))(v10, v1);
LABEL_6:
    sub_1A438EB04(v7, sub_1A3DD0DCC);
    return sub_1A5247F54();
  }

  sub_1A438EB04(v13, sub_1A3DC7D88);
  sub_1A438EB04(v16, sub_1A3DC7D88);
  if (v18(&v7[v17], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_1A438EB04(v7, sub_1A3DC7D88);
  return sub_1A5247F44();
}

uint64_t sub_1A437FA48(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A437DDFC(a1))
  {
    v7 = 1;
    return v7 & 1;
  }

  v8 = v1 + *(a1 + 128);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v9, 0);
    v10 = (*(v4 + 8))(v6, v3);
    v9 = v15;
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = 0;
    return v7 & 1;
  }

  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_5:
  v11 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v9) + 0x1C8))(v10))
  {
    v7 = (*((*v11 & *v9) + 0x2A0))();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1A437FC48(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 132);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v16;
  }

  if (v8 != *sub_1A41D5618())
  {
    v10 = v1 + *(a1 + 128);
    v11 = *v10;
    if (*(v10 + 8) == 1)
    {
      v12 = v11;
      if (!v11)
      {
        return v8;
      }

      goto LABEL_8;
    }

    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v11, 0);
    v12 = (*(v4 + 8))(v6, v3);
    v11 = v16;
    if (v16)
    {
LABEL_8:
      v8 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x2B8))(v12);
    }
  }

  return v8;
}

uint64_t sub_1A437FEA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + *(a1 + 72));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *&v21 = AssociatedTypeWitness;
  *(&v21 + 1) = v8;
  *&v22 = AssociatedConformanceWitness;
  *(&v22 + 1) = v10;
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (!v21)
  {
    return 0;
  }

  v11 = sub_1A5243164();

  v12 = v2 + *(a1 + 164);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (*(v12 + 9) == 1)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }

    return v11;
  }

  sub_1A524D254();
  v16 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();
  sub_1A3F1B4C4(v13, v14, 0);
  (*(v18 + 8))(v6, v4);
  if (BYTE8(v21))
  {
    return v11;
  }

LABEL_8:
  *&v19 = v11;
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getWitnessTable();
  sub_1A524D084();
  v19 = v21;
  v20 = v22;
  sub_1A524E0F4();
  swift_getWitnessTable();
  return sub_1A524CB84();
}

uint64_t sub_1A43801DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v394 = a2;
  v3 = *(a1 + 16);
  v418 = *(a1 + 24);
  v4 = *(v418 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v393 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v392 = v298 - v5;
  v416 = a1;
  v6 = *(a1 - 8);
  v376 = a1 - 8;
  v412 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v415 = v8;
  v409 = v298 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = sub_1A5243D54();
  v388 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389);
  v387 = v298 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = sub_1A5247F64();
  v385 = *(v386 - 8);
  MEMORY[0x1EEE9AC00](v386);
  v384 = v298 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v383 = v298 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v413 = (v298 - v14);
  v15 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v414 = v298 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v411 = v298 - v18;
  v382 = sub_1A52434D4();
  v381 = *(v382 - 8);
  MEMORY[0x1EEE9AC00](v382);
  v380 = v298 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_1A5244084();
  v378 = *(v379 - 8);
  MEMORY[0x1EEE9AC00](v379);
  v377 = v298 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v404 = sub_1A5249234();
  v405 = *(v404 - 8);
  MEMORY[0x1EEE9AC00](v404);
  v406 = v298 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v410 = swift_getAssociatedTypeWitness();
  v400 = sub_1A5248804();
  v22 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v408 = *(AssociatedConformanceWitness + 16);
  v23 = swift_getAssociatedTypeWitness();
  v402 = sub_1A524CB74();
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  *&v425 = v24;
  *(&v425 + 1) = v3;
  v426 = v25;
  v427 = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v425 = v24;
  *(&v425 + 1) = v3;
  v417 = v3;
  v426 = v25;
  v427 = v4;
  v27 = v4;
  v407 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v425 = OpaqueTypeMetadata2;
  *(&v425 + 1) = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeMetadata2();
  *&v425 = OpaqueTypeMetadata2;
  *(&v425 + 1) = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  *&v425 = v29;
  *(&v425 + 1) = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  *&v425 = v29;
  *(&v425 + 1) = v30;
  v32 = swift_getOpaqueTypeConformance2();
  *&v425 = v3;
  *(&v425 + 1) = v31;
  v426 = v27;
  v427 = v32;
  v33 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  sub_1A5248804();
  v34 = sub_1A5249754();
  v35 = v402;
  WitnessTable = swift_getWitnessTable();
  v391 = v22;
  v37 = swift_getAssociatedConformanceWitness();
  v38 = swift_getWitnessTable();
  v433 = v38;
  v434 = MEMORY[0x1E697F568];
  v408 = MEMORY[0x1E697E858];
  v431 = swift_getWitnessTable();
  v432 = v38;
  v399 = MEMORY[0x1E697F968];
  v39 = swift_getWitnessTable();
  *&v425 = v35;
  *(&v425 + 1) = v23;
  v426 = v23;
  v427 = v34;
  v428 = WitnessTable;
  v429 = v37;
  v430 = v39;
  v397 = sub_1A5243E24();
  *&v425 = v35;
  *(&v425 + 1) = v23;
  v426 = v23;
  v427 = v33;
  v428 = WitnessTable;
  v429 = v37;
  v401 = v37;
  v430 = v38;
  v398 = sub_1A52420C4();
  sub_1A5249754();
  *&v425 = v35;
  *(&v425 + 1) = v23;
  v426 = v23;
  v427 = v34;
  v428 = WitnessTable;
  v429 = v37;
  v430 = v39;
  sub_1A5244124();
  *&v425 = v35;
  *(&v425 + 1) = v23;
  v426 = v23;
  v427 = v33;
  v428 = WitnessTable;
  v429 = v37;
  v430 = v38;
  sub_1A5242374();
  sub_1A5249754();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A5249754();
  sub_1A5249754();
  v40 = sub_1A5249754();
  v424[29] = swift_getAssociatedConformanceWitness();
  v424[30] = MEMORY[0x1E697EBF8];
  v41 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v424[27] = v42;
  v424[28] = v43;
  v44 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v424[25] = v44;
  v424[26] = v45;
  v424[23] = swift_getWitnessTable();
  v424[24] = MEMORY[0x1E6981138];
  v46 = swift_getWitnessTable();
  v424[21] = v41;
  v424[22] = v46;
  v47 = swift_getWitnessTable();
  v311 = v40;
  v298[5] = v47;
  v48 = sub_1A524B894();
  v304 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v301 = v298 - v49;
  v50 = MEMORY[0x1E6980A08];
  sub_1A439027C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v395 = sub_1A5248804();
  v302 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395);
  v299 = v298 - v51;
  sub_1A439027C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v50);
  v52 = sub_1A5248804();
  v303 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v300 = v298 - v53;
  v400 = MEMORY[0x1E69C2948];
  v54 = MEMORY[0x1E6980A08];
  sub_1A437DD40(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  v55 = sub_1A5248804();
  v312 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v310 = v298 - v56;
  sub_1A3F1B2AC();
  v57 = sub_1A5248804();
  v316 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v315 = v298 - v58;
  v399 = MEMORY[0x1E69C24E0];
  sub_1A437DD40(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], v54);
  v59 = sub_1A5248804();
  v342 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v339 = v298 - v60;
  sub_1A439027C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v50);
  v61 = sub_1A5248804();
  v356 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v410 = v298 - v62;
  v63 = sub_1A5248804();
  v359 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v357 = v298 - v64;
  v306 = v48;
  v65 = swift_getWitnessTable();
  v66 = sub_1A4383424(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
  v298[0] = v65;
  v424[19] = v65;
  v424[20] = v66;
  v67 = swift_getWitnessTable();
  v68 = sub_1A4383424(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v298[1] = v67;
  v424[17] = v67;
  v424[18] = v68;
  v305 = v52;
  v69 = swift_getWitnessTable();
  v70 = sub_1A4383488(&qword_1EB1279C8, &qword_1EB1279C0, v400);
  v298[2] = v69;
  v424[15] = v69;
  v424[16] = v70;
  v313 = v55;
  v71 = swift_getWitnessTable();
  v72 = sub_1A438DB60(&qword_1EB1279E8, sub_1A3F1B2AC);
  v298[3] = v71;
  v424[13] = v71;
  v424[14] = v72;
  v318 = v57;
  v73 = swift_getWitnessTable();
  v74 = sub_1A4383488(&qword_1EB1279F8, &qword_1EB1279F0, v399);
  v298[4] = v73;
  v424[11] = v73;
  v424[12] = v74;
  v345 = v59;
  v75 = swift_getWitnessTable();
  v76 = sub_1A4383424(&qword_1EB1279B0, &qword_1EB1279A8, MEMORY[0x1E69E7DE0]);
  v309 = v75;
  v424[9] = v75;
  v424[10] = v76;
  v358 = v61;
  v325 = swift_getWitnessTable();
  v424[7] = v325;
  v424[8] = v76;
  v77 = swift_getWitnessTable();
  *&v425 = v63;
  *(&v425 + 1) = v63;
  v426 = v77;
  v427 = v77;
  v400 = MEMORY[0x1E69C3078];
  v78 = swift_getOpaqueTypeMetadata2();
  v335 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v332 = v298 - v79;
  *&v425 = v63;
  *(&v425 + 1) = v63;
  v360 = v63;
  v426 = v77;
  v427 = v77;
  v330 = v77;
  v80 = swift_getOpaqueTypeConformance2();
  *&v425 = v78;
  *(&v425 + 1) = v80;
  v81 = swift_getOpaqueTypeMetadata2();
  v328 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v327 = v298 - v82;
  v331 = v83;
  v84 = sub_1A5248804();
  v338 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v334 = v298 - v85;
  v337 = v78;
  *&v425 = v78;
  *(&v425 + 1) = v80;
  v326 = v80;
  v321 = swift_getOpaqueTypeConformance2();
  v424[5] = v321;
  v424[6] = MEMORY[0x1E697E5D8];
  v86 = swift_getWitnessTable();
  *&v425 = v84;
  *(&v425 + 1) = v86;
  v87 = v86;
  v408 = v86;
  v88 = swift_getOpaqueTypeMetadata2();
  *&v425 = v84;
  *(&v425 + 1) = v87;
  v89 = swift_getOpaqueTypeConformance2();
  *&v425 = v88;
  *(&v425 + 1) = v89;
  v399 = swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  v90 = sub_1A524DF24();
  v424[4] = swift_getAssociatedConformanceWitness();
  v91 = swift_getWitnessTable();
  *&v425 = v90;
  *(&v425 + 1) = v91;
  v92 = swift_getOpaqueTypeMetadata2();
  *&v425 = v88;
  *(&v425 + 1) = v89;
  v93 = swift_getOpaqueTypeConformance2();
  *&v425 = v90;
  *(&v425 + 1) = v91;
  v94 = v406;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = v399;
  *&v425 = v399;
  *(&v425 + 1) = v92;
  v426 = v93;
  v427 = v95;
  v97 = swift_getOpaqueTypeMetadata2();
  *&v425 = v96;
  *(&v425 + 1) = v92;
  v426 = v93;
  v427 = v95;
  v98 = swift_getOpaqueTypeConformance2();
  *&v425 = v84;
  *(&v425 + 1) = v97;
  v99 = v408;
  v426 = v408;
  v427 = v98;
  v100 = swift_getOpaqueTypeMetadata2();
  v319 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v317 = v298 - v101;
  v340 = v84;
  *&v425 = v84;
  *(&v425 + 1) = v97;
  v307 = v97;
  v308 = v98;
  v426 = v99;
  v427 = v98;
  v102 = swift_getOpaqueTypeConformance2();
  *&v425 = v100;
  v103 = MEMORY[0x1E69E6530];
  *(&v425 + 1) = MEMORY[0x1E69E6530];
  v426 = v102;
  v427 = MEMORY[0x1E69E6550];
  v104 = MEMORY[0x1E69E6550];
  v105 = swift_getOpaqueTypeMetadata2();
  v333 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v329 = v298 - v106;
  sub_1A439027C(255, &qword_1EB126D60, v103, MEMORY[0x1E69E6720]);
  v108 = v107;
  v320 = v100;
  *&v425 = v100;
  *(&v425 + 1) = v103;
  v314 = v102;
  v426 = v102;
  v427 = v104;
  v109 = swift_getOpaqueTypeConformance2();
  v110 = sub_1A43834EC();
  *&v425 = v105;
  *(&v425 + 1) = v108;
  v426 = v109;
  v427 = v110;
  v111 = swift_getOpaqueTypeMetadata2();
  v349 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v396 = v298 - v112;
  v113 = sub_1A5243204();
  v336 = v105;
  *&v425 = v105;
  *(&v425 + 1) = v108;
  v322 = v108;
  v323 = v110;
  v324 = v109;
  v426 = v109;
  v427 = v110;
  v114 = swift_getOpaqueTypeConformance2();
  v115 = sub_1A438DB60(&unk_1EB129110, MEMORY[0x1E69C23C0]);
  *&v425 = v111;
  *(&v425 + 1) = v113;
  v426 = v114;
  v427 = v115;
  v116 = swift_getOpaqueTypeMetadata2();
  v350 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v348 = v298 - v117;
  v351 = v111;
  *&v425 = v111;
  *(&v425 + 1) = v113;
  v343 = v113;
  v346 = v114;
  v426 = v114;
  v427 = v115;
  v341 = v115;
  v118 = swift_getOpaqueTypeConformance2();
  v119 = AssociatedTypeWitness;
  v120 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v425 = v116;
  *(&v425 + 1) = v119;
  v121 = v119;
  v426 = v118;
  v427 = v120;
  v122 = swift_getOpaqueTypeMetadata2();
  v361 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v397 = v298 - v123;
  v124 = sub_1A524DF24();
  v352 = v116;
  *&v425 = v116;
  *(&v425 + 1) = v121;
  v347 = v118;
  v426 = v118;
  v427 = v120;
  v344 = v120;
  v125 = swift_getOpaqueTypeConformance2();
  v424[3] = *(v401 + 8);
  v424[2] = swift_getWitnessTable();
  v126 = swift_getWitnessTable();
  *&v425 = v122;
  *(&v425 + 1) = v124;
  v426 = v125;
  v427 = v126;
  v127 = swift_getOpaqueTypeMetadata2();
  v363 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v398 = v298 - v128;
  v362 = v122;
  *&v425 = v122;
  *(&v425 + 1) = v124;
  v354 = v125;
  v426 = v125;
  v427 = v126;
  v129 = swift_getOpaqueTypeConformance2();
  *&v425 = v127;
  *(&v425 + 1) = v124;
  v426 = v129;
  v427 = v126;
  v130 = swift_getOpaqueTypeMetadata2();
  v365 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v400 = (v298 - v131);
  v364 = v127;
  *&v425 = v127;
  *(&v425 + 1) = v124;
  v353 = v124;
  v355 = v129;
  v426 = v129;
  v427 = v126;
  v399 = v126;
  v132 = swift_getOpaqueTypeConformance2();
  v368 = v130;
  *&v425 = v130;
  *(&v425 + 1) = MEMORY[0x1E69E6530];
  v426 = v132;
  v401 = v132;
  v427 = MEMORY[0x1E69E6550];
  v133 = swift_getOpaqueTypeMetadata2();
  v366 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v402 = v298 - v134;
  v367 = v135;
  v136 = sub_1A5248804();
  v372 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v369 = v298 - v137;
  v373 = v138;
  v375 = sub_1A5248804();
  v374 = *(v375 - 8);
  MEMORY[0x1EEE9AC00](v375);
  v370 = v298 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v140);
  v371 = v298 - v142;
  v143 = v419 + *(v376 + 168);
  v144 = *(v143 + 8);
  v145 = v405;
  if ((*(v143 + 32) & 1) == 0)
  {
    v146 = *v143;
    v147 = *(v143 + 16);
    v148 = *(v143 + 24);

    sub_1A524D254();
    v149 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3F1D444(v146, v144, v147, v148, 0);
    v141 = (*(v145 + 8))(v94, v404);
  }

  MEMORY[0x1EEE9AC00](v141);
  v150 = v418;
  v298[-4] = v417;
  v298[-3] = v150;
  v151 = v419;
  v298[-2] = v419;
  sub_1A5249574();
  v152 = v301;
  sub_1A524B884();
  swift_getKeyPath();
  v153 = v416;
  LOBYTE(v425) = sub_1A437FA48(v416) & 1;
  v154 = v299;
  v155 = v306;
  sub_1A524A964();

  (*(v304 + 8))(v152, v155);
  swift_getKeyPath();
  *&v425 = sub_1A437FC48(v153);
  v156 = v300;
  v157 = v395;
  sub_1A524A964();

  (*(v302 + 8))(v154, v157);
  swift_getKeyPath();
  v158 = v377;
  sub_1A437F3E8(v153, v377);
  v159 = v310;
  v160 = v305;
  sub_1A524A964();

  (*(v378 + 8))(v158, v379);
  (*(v303 + 8))(v156, v160);
  swift_getKeyPath();
  v425 = *(v151 + *(v153 + 68));
  v161 = swift_getAssociatedTypeWitness();
  v162 = swift_getAssociatedConformanceWitness();
  v395 = v161;
  v379 = v162;
  v163 = sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  v164 = v424[0];
  v165 = v339;
  if (v424[0])
  {
    v427 = v163;
    v166 = swift_getWitnessTable();
  }

  else
  {
    v166 = 0;
    *(&v425 + 1) = 0;
    v426 = 0;
    v427 = 0;
  }

  *&v425 = v164;
  v428 = v166;
  v167 = v315;
  v168 = v313;
  sub_1A524A964();

  (*(v312 + 8))(v159, v168);
  sub_1A3EA8D18(&v425, &qword_1EB129078, &qword_1EB129080);
  swift_getKeyPath();
  v169 = v416;
  sub_1A437DD40(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  v170 = v419;
  v171 = v380;
  sub_1A5247C84();
  v172 = v318;
  sub_1A524A964();

  (*(v381 + 8))(v171, v382);
  (*(v316 + 8))(v167, v172);
  swift_getKeyPath();
  sub_1A437E174(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v411);
  sub_1A437E7F4(v169);
  v173 = v170 + *(v169 + 144);
  v174 = *v173;
  v175 = v405;
  if (*(v173 + 8) == 1)
  {
    LOBYTE(v425) = *v173;
  }

  else
  {

    sub_1A524D254();
    v176 = sub_1A524A014();
    sub_1A5246DF4();

    v177 = v406;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v174, 0);
    (*(v175 + 8))(v177, v404);
    LOBYTE(v174) = v425;
  }

  LOBYTE(v424[0]) = v174;
  v178 = v413;
  v179 = v411;
  v180 = sub_1A43A27C4(v413, v424);
  sub_1A438EB04(v179, type metadata accessor for LemonadeItemsLayoutSpec);
  sub_1A438EB04(v178, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  *&v425 = v180;
  v181 = v345;
  sub_1A524A964();

  (*(v342 + 8))(v165, v181);
  swift_getKeyPath();
  sub_1A437E174(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v414);
  v182 = v383;
  sub_1A437E7F4(v416);
  v183 = *v173;
  if (*(v173 + 8) == 1)
  {
    LOBYTE(v425) = *v173;
  }

  else
  {

    sub_1A524D254();
    v184 = sub_1A524A014();
    sub_1A5246DF4();

    v185 = v406;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v183, 0);
    (*(v175 + 8))(v185, v404);
    LOBYTE(v183) = v425;
  }

  LOBYTE(v424[0]) = v183;
  v186 = v414;
  sub_1A43A2984(v182, v424);
  v188 = v187;
  sub_1A438EB04(v186, type metadata accessor for LemonadeItemsLayoutSpec);
  sub_1A438EB04(v182, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  *&v425 = v188;
  v189 = v357;
  v190 = v358;
  v191 = v410;
  sub_1A524A964();

  v192 = (*(v356 + 8))(v191, v190);
  v193 = MEMORY[0x1A590D320](v192);
  MEMORY[0x1EEE9AC00](v193);
  v194 = v417;
  v195 = v418;
  v298[-2] = v417;
  v298[-1] = v195;
  v196 = v332;
  v197 = v360;
  sub_1A524A584();
  (*(v359 + 8))(v189, v197);
  v198 = v384;
  v199 = v416;
  v200 = v419;
  sub_1A437F5FC(v384);
  v201 = v327;
  v202 = v337;
  sub_1A524A9F4();
  (*(v385 + 8))(v198, v386);
  (*(v335 + 8))(v196, v202);
  sub_1A524A074();
  sub_1A4387C74(v199);
  v203 = v334;
  v204 = v331;
  sub_1A524B0D4();
  v205 = (*(v328 + 8))(v201, v204);
  MEMORY[0x1EEE9AC00](v205);
  v298[-4] = v194;
  v298[-3] = v195;
  v298[-2] = v200;
  swift_checkMetadataState();
  v206 = v317;
  v207 = v340;
  sub_1A524A584();
  (*(v338 + 8))(v203, v207);
  v208 = v387;
  sub_1A437EAFC(v199, v387);
  v209 = sub_1A5243D44();
  (*(v388 + 8))(v208, v389);
  *&v425 = v209;
  v210 = v412;
  v211 = *(v412 + 16);
  v212 = v409;
  v411 = v412 + 16;
  v410 = v211;
  (v211)(v409, v200, v199);
  v213 = (*(v210 + 80) + 32) & ~*(v210 + 80);
  v414 = *(v210 + 80);
  v214 = swift_allocObject();
  *(v214 + 16) = v194;
  *(v214 + 24) = v195;
  v215 = *(v210 + 32);
  v408 = v213;
  v412 = v210 + 32;
  v413 = v215;
  (v215)(v214 + v213, v212, v199);
  v216 = v329;
  v217 = v320;
  sub_1A524B144();

  (*(v319 + 8))(v206, v217);
  v218 = v200 + *(v199 + 164);
  v219 = *v218;
  v220 = *(v218 + 8);
  if (*(v218 + 9) == 1)
  {
    v221 = v405;
    v222 = v406;
  }

  else
  {

    sub_1A524D254();
    v223 = sub_1A524A014();
    sub_1A5246DF4();

    v222 = v406;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3F1B4C4(v219, v220, 0);
    v221 = v405;
    (*(v405 + 8))(v222, v404);
    v219 = v425;
    LOBYTE(v220) = BYTE8(v425);
  }

  *&v425 = v219;
  BYTE8(v425) = v220 & 1;
  v224 = v409;
  v225 = v419;
  v226 = v416;
  (v410)(v409, v419, v416);
  v227 = v408;
  v228 = swift_allocObject();
  v229 = v418;
  *(v228 + 16) = v417;
  *(v228 + 24) = v229;
  (v413)(v228 + v227, v224, v226);
  swift_checkMetadataState();
  v230 = v336;
  sub_1A524B144();

  (*(v333 + 8))(v216, v230);
  v231 = (v225 + *(v226 + 124));
  v232 = *v231;
  LOBYTE(v227) = *(v231 + 8);

  if ((v227 & 1) == 0)
  {
    sub_1A524D254();
    v233 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v221 + 8))(v222, v404);
    v232 = v425;
  }

  *&v425 = v232;
  v234 = v416;
  (v410)(v224, v419, v416);
  v235 = v408;
  v236 = swift_allocObject();
  v237 = v417;
  v238 = v418;
  *(v236 + 16) = v417;
  *(v236 + 24) = v238;
  (v413)(v236 + v235, v224, v234);
  swift_checkMetadataState();
  v239 = v348;
  v240 = v351;
  v241 = v396;
  sub_1A524B144();

  (*(v349 + 8))(v241, v240);
  v242 = v392;
  v243 = v419;
  (*(v407 + 88))(v237);
  (v410)(v224, v243, v234);
  v244 = swift_allocObject();
  v245 = v418;
  *(v244 + 16) = v237;
  *(v244 + 24) = v245;
  (v413)(v244 + v235, v224, v234);
  v246 = v352;
  v247 = AssociatedTypeWitness;
  sub_1A524B144();

  (*(v393 + 8))(v242, v247);
  (*(v350 + 8))(v239, v246);
  v248 = (v419 + *(v234 + 72));
  v250 = *v248;
  v249 = v248[1];
  v424[0] = *v248;
  v424[1] = v249;
  *&v425 = v395;
  *(&v425 + 1) = v391;
  v426 = v379;
  v427 = AssociatedConformanceWitness;
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v425)
  {
    v251 = sub_1A5243164();
  }

  else
  {
    v251 = 0;
  }

  *&v425 = v251;
  v252 = v409;
  v253 = v416;
  (v410)(v409, v419, v416);
  v254 = v408;
  v255 = swift_allocObject();
  v256 = v418;
  *(v255 + 16) = v417;
  *(v255 + 24) = v256;
  (v413)(v255 + v254, v252, v253);
  v257 = swift_checkMetadataState();
  v258 = v362;
  v407 = v257;
  v259 = v397;
  sub_1A524B144();

  (*(v361 + 8))(v259, v258);
  *&v425 = v250;
  *(&v425 + 1) = v249;
  sub_1A524B6A4();
  if (v424[0])
  {
    v260 = sub_1A5243164();
  }

  else
  {
    v260 = 0;
  }

  *&v425 = v260;
  v261 = v409;
  v262 = v419;
  v263 = v416;
  (v410)(v409);
  v264 = v408;
  v265 = swift_allocObject();
  v266 = v418;
  *(v265 + 16) = v417;
  *(v265 + 24) = v266;
  (v413)(v265 + v264, v261, v263);
  v267 = v364;
  v268 = v398;
  sub_1A524B144();

  (*(v363 + 8))(v268, v267);
  *&v425 = sub_1A4653A64();
  v269 = v261;
  v270 = v261;
  v271 = v410;
  (v410)(v270, v262, v263);
  v272 = swift_allocObject();
  v273 = v417;
  v274 = v418;
  *(v272 + 16) = v417;
  *(v272 + 24) = v274;
  (v413)(v272 + v264, v269, v263);
  v275 = v368;
  v276 = v400;
  sub_1A524B154();

  (*(v365 + 8))(v276, v275);
  v277 = v416;
  v271(v269, v419, v416);
  v278 = v408;
  v279 = swift_allocObject();
  v280 = v418;
  *(v279 + 16) = v273;
  *(v279 + 24) = v280;
  v281 = v277;
  (v413)(v279 + v278, v269, v277);
  *&v425 = v275;
  *(&v425 + 1) = MEMORY[0x1E69E6530];
  v426 = v401;
  v427 = MEMORY[0x1E69E6550];
  v282 = swift_getOpaqueTypeConformance2();
  v283 = v369;
  v284 = v367;
  v285 = v402;
  sub_1A524B134();

  (*(v366 + 8))(v285, v284);
  v286 = v409;
  (v410)(v409, v419, v281);
  v287 = swift_allocObject();
  *(v287 + 16) = v417;
  *(v287 + 24) = v280;
  (v413)(v287 + v278, v286, v281);
  v288 = MEMORY[0x1E69805D0];
  v422 = v282;
  v423 = MEMORY[0x1E69805D0];
  v289 = v373;
  v290 = swift_getWitnessTable();
  v291 = v370;
  sub_1A524A994();

  (*(v372 + 8))(v283, v289);
  v420 = v290;
  v421 = v288;
  v292 = v375;
  swift_getWitnessTable();
  v293 = v374;
  v294 = *(v374 + 16);
  v295 = v371;
  v294(v371, v291, v292);
  v296 = *(v293 + 8);
  v296(v291, v292);
  v294(v394, v295, v292);
  return (v296)(v295, v292);
}

uint64_t sub_1A4383424(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A439027C(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4383488(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A437DD40(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A43834EC()
{
  result = qword_1EB126D50;
  if (!qword_1EB126D50)
  {
    sub_1A439027C(255, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126D50);
  }

  return result;
}

uint64_t sub_1A4383580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v394 = a3;
  v383 = a1;
  v381 = a4;
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v397 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v391 = sub_1A524CB74();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v419 = v7;
  *(&v419 + 1) = a2;
  v420 = AssociatedConformanceWitness;
  v421 = v5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v419 = v7;
  *(&v419 + 1) = a2;
  v420 = AssociatedConformanceWitness;
  v421 = v5;
  v390 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v419 = OpaqueTypeMetadata2;
  *(&v419 + 1) = OpaqueTypeConformance2;
  v11 = swift_getOpaqueTypeMetadata2();
  *&v419 = OpaqueTypeMetadata2;
  *(&v419 + 1) = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeConformance2();
  *&v419 = v11;
  *(&v419 + 1) = v12;
  v13 = swift_getOpaqueTypeMetadata2();
  *&v419 = v11;
  *(&v419 + 1) = v12;
  v14 = swift_getOpaqueTypeConformance2();
  v396 = a2;
  *&v419 = a2;
  *(&v419 + 1) = v13;
  v420 = v5;
  v421 = v14;
  v15 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  sub_1A5248804();
  v16 = sub_1A5249754();
  v17 = v391;
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getAssociatedConformanceWitness();
  v427 = swift_getWitnessTable();
  v428 = MEMORY[0x1E697F568];
  v20 = v427;
  v425 = swift_getWitnessTable();
  v426 = v20;
  v384 = v20;
  v386 = v16;
  KeyPath = swift_getWitnessTable();
  *&v419 = v17;
  *(&v419 + 1) = AssociatedTypeWitness;
  v420 = AssociatedTypeWitness;
  v421 = v16;
  v388 = WitnessTable;
  v422 = WitnessTable;
  v423 = v19;
  v387 = v19;
  v424 = KeyPath;
  v21 = sub_1A5244124();
  *&v419 = v17;
  *(&v419 + 1) = AssociatedTypeWitness;
  v420 = AssociatedTypeWitness;
  v421 = v15;
  v422 = WitnessTable;
  v423 = v19;
  v424 = v20;
  v22 = sub_1A5242374();
  v23 = sub_1A5249754();
  v24 = swift_getAssociatedTypeWitness();
  v25 = sub_1A5248804();
  v26 = sub_1A5248804();
  v27 = sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  v397 = sub_1A524BE24();
  v350 = *(v397 - 8);
  MEMORY[0x1EEE9AC00](v397);
  v349 = &v299 - v28;
  v344 = v24;
  v327 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v326 = &v299 - v30;
  v364 = v25;
  v330 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v328 = &v299 - v32;
  v348 = v26;
  v343 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v331 = &v299 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v329 = &v299 - v36;
  v351 = v27;
  v346 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v347 = &v299 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v361 = &v299 - v40;
  v362 = v22;
  v322 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v321 = &v299 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v320 = &v299 - v44;
  v45 = sub_1A5242C74();
  MEMORY[0x1EEE9AC00](v45 - 8);
  v339 = &v299 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = v21;
  v325 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v324 = &v299 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v323 = &v299 - v50;
  v51 = sub_1A52440D4();
  v314 = *(v51 - 8);
  v315 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v312 = &v299 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v311 = &v299 - v54;
  v365 = v23;
  v372 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v345 = &v299 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v371 = &v299 - v58;
  v59 = v391;
  *&v419 = v391;
  *(&v419 + 1) = AssociatedTypeWitness;
  v420 = AssociatedTypeWitness;
  v421 = v15;
  v342 = v15;
  v60 = v388;
  v61 = v387;
  v422 = v388;
  v423 = v387;
  v424 = v384;
  v62 = sub_1A52420C4();
  v319 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v318 = &v299 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v317 = &v299 - v65;
  v66 = sub_1A5242C84();
  v353 = *(v66 - 8);
  v354 = v66;
  MEMORY[0x1EEE9AC00](v66);
  v313 = &v299 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v336 = &v299 - v69;
  v70 = sub_1A5244094();
  v309 = *(v70 - 8);
  v310 = v70;
  MEMORY[0x1EEE9AC00](v70);
  v316 = &v299 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for LemonadeFeedContents();
  v369 = *(v72 - 8);
  v359 = *(v369 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v360 = &v299 - v73;
  sub_1A437DD40(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v305 = &v299 - v75;
  v76 = sub_1A5243D54();
  MEMORY[0x1EEE9AC00](v76 - 8);
  v382 = &v299 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v419 = v59;
  *(&v419 + 1) = AssociatedTypeWitness;
  v341 = AssociatedTypeWitness;
  v420 = AssociatedTypeWitness;
  v421 = v386;
  v422 = v60;
  v423 = v61;
  v424 = KeyPath;
  v78 = sub_1A5243E24();
  v308 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v307 = &v299 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v306 = &v299 - v81;
  v358 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v358);
  v352 = &v299 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83);
  v335 = &v299 - v84;
  v395 = v78;
  v380 = v62;
  v85 = sub_1A5249754();
  v340 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v338 = &v299 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v337 = &v299 - v88;
  v357 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v357);
  v334 = &v299 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v333 = &v299 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v356 = &v299 - v93;
  v393 = v85;
  v94 = sub_1A5249754();
  v368 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v367 = &v299 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v96);
  v366 = &v299 - v97;
  v392 = v98;
  v99 = sub_1A5249754();
  v374 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v373 = &v299 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v101);
  v389 = &v299 - v102;
  v103 = swift_getAssociatedTypeWitness();
  v302 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v301 = &v299 - v104;
  v375 = v105;
  v106 = sub_1A5248804();
  v304 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v303 = &v299 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v108);
  v332 = &v299 - v109;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v110 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v110);
  v376 = v106;
  v379 = v99;
  v378 = sub_1A5249754();
  v377 = *(v378 - 8);
  MEMORY[0x1EEE9AC00](v378);
  v112 = &v299 - v111;
  v113 = v383;
  v419 = *(v383 + *(v72 + 64));
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v418[0])
  {
    v355 = v418[0];
    if ((*(v394 + 80))(v396))
    {
      sub_1A5245904();
    }

    swift_unknownObjectRelease();
  }

  v114 = sub_1A437FEA8(v72);
  v370 = v112;
  if (v114)
  {
    v115 = v114;
    v116 = v113;
    v117 = v356;
    sub_1A437E7F4(v72);
    v118 = v117 + *(v357 + 24);
    v119 = *v118;
    v120 = *(v118 + 8);
    sub_1A438EB04(v117, type metadata accessor for LemonadeFeedBodyStyle);
    if (v120)
    {
      v121 = v334;
      sub_1A437E7F4(v72);
      v122 = v352;
      sub_1A438EBD4(v121, v352, type metadata accessor for LemonadeItemsLayoutSpec.Style);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v124 = *v122;
      v125 = *(v122 + 8);
      v126 = v72;
      v127 = *(v122 + 16);
      v300 = v126;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1A3D6D890(v124, v125, v127);
        sub_1A3C4208C(*(v122 + 24), *(v122 + 32), *(v122 + 40));
        sub_1A3C47A98();
        v128 = v116;
        v386 = *(v129 + 64);
        v418[0] = v115;
        MEMORY[0x1EEE9AC00](v129);
        v130 = v396;
        v131 = v394;
        KeyPath = swift_getKeyPath();
        sub_1A437EAFC(v126, v382);
        v421 = v126;
        v422 = swift_getWitnessTable();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v419);
        v133 = v369;
        v134 = *(v369 + 16);
        v134(boxed_opaque_existential_1, v116, v126);
        v135 = v360;
        v134(v360, v128, v126);
        v136 = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v137 = swift_allocObject();
        *(v137 + 16) = v130;
        *(v137 + 24) = v131;
        (*(v133 + 32))(v137 + v136, v135, v126);
        v138 = v321;
        sub_1A5242364();
        v139 = v362;
        swift_getWitnessTable();
        v140 = v322;
        v141 = *(v322 + 16);
        v142 = v320;
        v141(v320, v138, v139);
        v143 = *(v140 + 8);
        v143(v138, v139);
        v141(v138, v142, v139);
        v144 = v363;
        swift_getWitnessTable();
        sub_1A3DF4890(v138, v144, v139);
        v143(v138, v139);
        v143(v142, v139);
        (*(v353 + 8))(v352 + v386, v354);
      }

      else
      {
        v184 = *(v122 + 24);
        LODWORD(v356) = *(v122 + 32);
        v185 = *(v122 + 40);
        v186 = *(v122 + 64);
        v384 = *(v122 + 56);
        v357 = v184;
        v358 = v186;
        sub_1A3C4208C(*(v122 + 72), *(v122 + 80), *(v122 + 88));
        sub_1A3F1BD68(v185);
        sub_1A3D6D890(v124, v125, v127);
        v187 = v311;
        sub_1A437DF50(&qword_1EB12F3F8, MEMORY[0x1E69C2998], MEMORY[0x1E69C2998], v311);
        v189 = v314;
        v188 = v315;
        v190 = v312;
        (*(v314 + 104))(v312, *MEMORY[0x1E69C2978], v315);
        v191 = sub_1A52440C4();
        v192 = *(v189 + 8);
        v192(v190, v188);
        v193 = (v192)(v187, v188);
        if ((v191 & 1) == 0)
        {
          sub_1A43A19D8(v384);
        }

        v418[0] = v115;
        MEMORY[0x1EEE9AC00](v193);
        v355 = swift_getKeyPath();
        sub_1A437EAFC(v126, v382);
        sub_1A437EF48(v126, v339);
        v421 = v126;
        v422 = swift_getWitnessTable();
        v194 = __swift_allocate_boxed_opaque_existential_1(&v419);
        v195 = *(v369 + 16);
        v195(v194, v116, v126);
        LOBYTE(v417[0]) = *(*(v116 + *(v126 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
        v429[0] = 3;
        if (static LemonadePresentationContext.== infix(_:_:)(v417, v429))
        {
          v354 = sub_1A524BC54();
        }

        else
        {
          v354 = 0;
        }

        v226 = v360;
        v227 = v300;
        v195(v360, v116, v300);
        v228 = v369;
        v229 = (*(v369 + 80) + 32) & ~*(v369 + 80);
        v230 = (v359 + v229 + 7) & 0xFFFFFFFFFFFFFFF8;
        v231 = swift_allocObject();
        v131 = v394;
        *(v231 + 16) = v396;
        *(v231 + 24) = v131;
        (*(v228 + 32))(v231 + v229, v226, v227);
        v232 = v231 + v230;
        *v232 = v357;
        *(v232 + 8) = v356;
        v233 = v324;
        sub_1A5244114();
        v234 = v363;
        swift_getWitnessTable();
        v235 = v325;
        v236 = *(v325 + 16);
        v237 = v323;
        v236(v323, v233, v234);
        v238 = *(v235 + 8);
        v238(v233, v234);
        v236(v233, v237, v234);
        swift_getWitnessTable();
        sub_1A3DF4798(v233, v234);
        sub_1A3F1BD68(v384);
        v238(v233, v234);
        v238(v237, v234);
      }

      v239 = v383;
      v240 = v396;
      v241 = (*(v131 + 88))(v396, v131);
      v242 = MEMORY[0x1E697EBF8];
      v243 = v348;
      if (v241)
      {
        v244 = v326;
        (*(v131 + 152))(*(v239 + *(v300 + 36)), v240, v131);
        sub_1A524BC74();
        v297 = v344;
        v298 = swift_getAssociatedConformanceWitness();
        v245 = v328;
        sub_1A524AFE4();
        (*(v327 + 8))(v244, v297);
        sub_1A524A074();
        v391 = v298;
        v402 = v298;
        v403 = v242;
        v246 = v364;
        v247 = swift_getWitnessTable();
        v248 = v331;
        sub_1A524B0D4();
        (*(v330 + 8))(v245, v246);
        v400 = v247;
        v401 = MEMORY[0x1E697E5D8];
        swift_getWitnessTable();
        v249 = v343;
        v250 = *(v343 + 16);
        v251 = v329;
        v250(v329, v248, v243);
        v252 = *(v249 + 8);
        v252(v248, v243);
        v250(v248, v251, v243);
        v252(v251, v243);
        v242 = MEMORY[0x1E697EBF8];
        v253 = v347;
        (*(v249 + 32))(v347, v248, v243);
        (*(v249 + 56))(v253, 0, 1, v243);
      }

      else
      {
        v253 = v347;
        (*(v343 + 56))(v347, 1, 1, v348);
        v391 = swift_getAssociatedConformanceWitness();
        v418[4] = v391;
        v418[5] = v242;
        v418[2] = swift_getWitnessTable();
        v418[3] = MEMORY[0x1E697E5D8];
        swift_getWitnessTable();
      }

      v254 = sub_1A524DF24();
      v255 = v361;
      (*(*(v254 - 8) + 16))(v361, v253, v254);
      v256 = v346;
      v388 = *(v346 + 8);
      v394 = v346 + 8;
      v257 = v351;
      v388(v253, v351);
      v258 = v372;
      v259 = v345;
      v260 = v365;
      (*(v372 + 16))(v345, v371);
      *&v419 = v259;
      (*(v256 + 16))(v253, v255, v257);
      *(&v419 + 1) = v253;
      v418[0] = v260;
      v418[1] = v257;
      v261 = swift_getWitnessTable();
      v262 = swift_getWitnessTable();
      v415 = v261;
      v416 = v262;
      v387 = MEMORY[0x1E697F968];
      v417[0] = swift_getWitnessTable();
      v413 = v391;
      v414 = v242;
      v411 = swift_getWitnessTable();
      v412 = MEMORY[0x1E697E5D8];
      v410 = swift_getWitnessTable();
      v417[1] = swift_getWitnessTable();
      v263 = v349;
      sub_1A3DF4988(&v419, 2uLL, v418);
      v264 = v388;
      v388(v253, v257);
      v265 = *(v258 + 8);
      v372 = v258 + 8;
      v265(v259, v260);
      v266 = swift_getWitnessTable();
      v267 = swift_getWitnessTable();
      v408 = v266;
      v409 = v267;
      v268 = v393;
      swift_getWitnessTable();
      v269 = v397;
      swift_getWitnessTable();
      v224 = v366;
      sub_1A3DF4890(v263, v268, v269);
      (*(v350 + 8))(v263, v269);
      v264(v361, v257);
      v265(v371, v365);
    }

    else
    {
      v372 = v119;
      v154 = v333;
      sub_1A437E7F4(v72);
      v155 = v154;
      v156 = v335;
      sub_1A438EBD4(v155, v335, type metadata accessor for LemonadeItemsLayoutSpec.Style);
      v157 = swift_getEnumCaseMultiPayload();
      v158 = *v156;
      v159 = *(v156 + 8);
      v160 = *(v156 + 16);
      if (v157 == 1)
      {
        sub_1A3D6D890(*v156, *(v156 + 8), *(v156 + 16));
        sub_1A3C4208C(*(v156 + 24), *(v156 + 32), *(v156 + 40));
        sub_1A3C47A98();
        v162 = v354;
        v163 = v353;
        v164 = v156 + *(v161 + 64);
        v165 = v336;
        v166 = (*(v353 + 32))(v336, v164, v354);
        v418[0] = v115;
        MEMORY[0x1EEE9AC00](v166);
        v167 = v396;
        v168 = v394;
        v386 = swift_getKeyPath();
        sub_1A437EAFC(v72, v382);
        (*(v163 + 16))(v313, v165, v162);
        sub_1A5242854();
        sub_1A5247CB4();
        v169 = v116;
        sub_1A5247C84();
        v387 = v419;
        v421 = v72;
        v422 = swift_getWitnessTable();
        v170 = __swift_allocate_boxed_opaque_existential_1(&v419);
        v171 = v369;
        v172 = *(v369 + 16);
        v172(v170, v169, v72);
        v173 = v360;
        v172(v360, v169, v72);
        v174 = (*(v171 + 80) + 32) & ~*(v171 + 80);
        v175 = swift_allocObject();
        *(v175 + 16) = v167;
        *(v175 + 24) = v168;
        (*(v171 + 32))(v175 + v174, v173, v72);
        v176 = v318;
        sub_1A52420B4();
        v177 = v380;
        swift_getWitnessTable();
        v178 = v319;
        v179 = *(v319 + 16);
        v180 = v317;
        v179(v317, v176, v177);
        v181 = *(v178 + 8);
        v181(v176, v177);
        v179(v176, v180, v177);
        v182 = v395;
        swift_getWitnessTable();
        v183 = v337;
        sub_1A3DF4890(v176, v182, v177);
        v181(v176, v177);
        v181(v180, v177);
        (*(v353 + 8))(v336, v354);
      }

      else
      {
        v371 = *(v156 + 24);
        LODWORD(v365) = *(v156 + 32);
        v364 = *(v156 + 40);
        v196 = v156;
        v197 = v113;
        v198 = *(v196 + 56);
        v199 = *(v196 + 72);
        v200 = *(v196 + 80);
        v201 = *(v196 + 88);
        LODWORD(v384) = *(v196 + 89);
        sub_1A3C4208C(v199, v200, v201);
        sub_1A3F1BD68(v198);
        sub_1A3F1BD68(v364);
        v202 = sub_1A3D6D890(v158, v159, v160);
        v418[0] = v115;
        MEMORY[0x1EEE9AC00](v202);
        v203 = v396;
        v364 = swift_getKeyPath();
        sub_1A437EAFC(v72, v382);
        sub_1A5242854();
        sub_1A5247CB4();
        sub_1A5247C84();
        v387 = v419;
        v421 = v72;
        v422 = swift_getWitnessTable();
        v204 = __swift_allocate_boxed_opaque_existential_1(&v419);
        v205 = v369;
        v206 = *(v369 + 16);
        v206(v204, v197, v72);
        sub_1A438EB64(v197 + *(v72 + 40), v305, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
        v207 = v360;
        v206(v360, v197, v72);
        v208 = (*(v205 + 80) + 32) & ~*(v205 + 80);
        v209 = (v359 + v208 + 7) & 0xFFFFFFFFFFFFFFF8;
        v210 = swift_allocObject();
        v211 = v394;
        *(v210 + 16) = v203;
        *(v210 + 24) = v211;
        (*(v205 + 32))(v210 + v208, v207, v72);
        v212 = v210 + v209;
        *v212 = v371;
        *(v212 + 8) = v365;
        (*(v309 + 104))(v316, *MEMORY[0x1E69C2960], v310);
        sub_1A524BC84();
        v213 = v307;
        sub_1A5243E14();
        v214 = v395;
        v394 = swift_getWitnessTable();
        v215 = v308;
        v216 = *(v308 + 16);
        v217 = v306;
        v216(v306, v213, v214);
        v218 = *(v215 + 8);
        v218(v213, v214);
        v216(v213, v217, v214);
        swift_getWitnessTable();
        v183 = v337;
        sub_1A3DF4798(v213, v214);
        v218(v213, v214);
        v218(v217, v214);
      }

      v219 = swift_getWitnessTable();
      v220 = swift_getWitnessTable();
      v398 = v219;
      v399 = v220;
      v221 = v393;
      swift_getWitnessTable();
      v222 = v340;
      v223 = v338;
      (*(v340 + 16))(v338, v183, v221);
      swift_getWitnessTable();
      v224 = v366;
      sub_1A3DF4798(v223, v221);
      v225 = *(v222 + 8);
      v225(v223, v221);
      v225(v183, v221);
    }

    v150 = v389;
    v270 = swift_getWitnessTable();
    v271 = swift_getWitnessTable();
    v406 = v270;
    v407 = v271;
    v272 = swift_getWitnessTable();
    v273 = swift_getWitnessTable();
    v404 = v272;
    v405 = v273;
    v274 = v392;
    swift_getWitnessTable();
    v275 = v368;
    v276 = v367;
    (*(v368 + 16))(v367, v224, v274);
    sub_1A3DF4798(v276, v274);
    v277 = *(v275 + 8);
    v277(v276, v274);
    v277(v224, v274);
    v152 = MEMORY[0x1E6981138];
    v153 = MEMORY[0x1E697EBF8];
    v151 = v379;
  }

  else
  {
    v419 = xmmword_1A5305860;
    LOBYTE(v420) = 0;
    v421 = MEMORY[0x1E69E7CC0];
    v145 = swift_getWitnessTable();
    v146 = swift_getWitnessTable();
    v418[26] = v145;
    v418[27] = v146;
    v147 = swift_getWitnessTable();
    v148 = swift_getWitnessTable();
    v418[24] = v147;
    v418[25] = v148;
    v149 = v392;
    swift_getWitnessTable();
    v150 = v389;
    sub_1A3DF4890(&v419, v149, MEMORY[0x1E6981148]);
    v151 = v379;
    v152 = MEMORY[0x1E6981138];
    v153 = MEMORY[0x1E697EBF8];
  }

  v278 = swift_getWitnessTable();
  v279 = swift_getWitnessTable();
  v418[22] = v278;
  v418[23] = v279;
  v280 = swift_getWitnessTable();
  v281 = swift_getWitnessTable();
  v418[20] = v280;
  v418[21] = v281;
  v418[18] = swift_getWitnessTable();
  v418[19] = v152;
  swift_getWitnessTable();
  v282 = v374;
  v283 = v373;
  (*(v374 + 16))(v373, v150, v151);
  v284 = swift_getAssociatedConformanceWitness();
  v418[16] = v284;
  v418[17] = v153;
  v285 = v376;
  swift_getWitnessTable();
  v286 = v370;
  sub_1A3DF4890(v283, v285, v151);
  v287 = *(v282 + 8);
  v287(v283, v151);
  v287(v389, v151);
  v418[14] = v284;
  v418[15] = MEMORY[0x1E697EBF8];
  v288 = swift_getWitnessTable();
  v289 = swift_getWitnessTable();
  v290 = swift_getWitnessTable();
  v418[12] = v289;
  v418[13] = v290;
  v291 = swift_getWitnessTable();
  v292 = swift_getWitnessTable();
  v418[10] = v291;
  v418[11] = v292;
  v418[8] = swift_getWitnessTable();
  v418[9] = v152;
  v293 = swift_getWitnessTable();
  v418[6] = v288;
  v418[7] = v293;
  v294 = v378;
  swift_getWitnessTable();
  v295 = v377;
  (*(v377 + 16))(v381, v286, v294);
  return (*(v295 + 8))(v286, v294);
}

uint64_t sub_1A4386624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v51 = a1;
  v55 = a3;
  v4 = *(a2 + 16);
  v54 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v6 + 24);
  v7 = *(v53 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = AssociatedTypeWitness;
  v63 = v4;
  v64 = AssociatedConformanceWitness;
  v65 = v7;
  v10 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = AssociatedTypeWitness;
  v63 = v4;
  v64 = AssociatedConformanceWitness;
  v65 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = OpaqueTypeMetadata2;
  v63 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v62 = OpaqueTypeMetadata2;
  v63 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v62 = v13;
  v63 = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  v47 = v15;
  v62 = v13;
  v63 = v14;
  v45 = swift_getOpaqueTypeConformance2();
  v62 = v4;
  v63 = v15;
  v43 = v10;
  v64 = v10;
  v65 = v45;
  v16 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v40 - v19;
  v40 = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedTypeWitness();
  v41 = v20;
  v42 = *(v20 - 8);
  v21 = v42;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - v25;
  v28 = v51;
  v27 = v52;
  v29 = sub_1A438B6EC();
  swift_checkMetadataState();
  sub_1A5242604();
  (*(v21 + 16))(v23, v26, v20);
  v30 = v46;
  v31 = v40;
  (*(v54 + 16))(v46, v27, v40);
  v32 = *(v27 + *(a2 + 36));
  v56 = v31;
  v57 = v53;
  v58 = v27;
  v59 = v29;
  v60 = v26;
  v61 = v28;

  swift_unknownObjectRetain();
  v33 = v44;
  sub_1A472B100(v23, v30, v32, sub_1A439026C, v31, v44, v47);
  swift_unknownObjectRelease();
  v34 = v50;
  swift_getWitnessTable();
  v36 = v48;
  v35 = v49;
  v37 = *(v49 + 16);
  v37(v48, v33, v34);
  v38 = *(v35 + 8);
  v38(v33, v34);
  v37(v55, v36, v34);
  v38(v36, v34);
  return (*(v42 + 8))(v26, v41);
}

uint64_t sub_1A4386BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v59 = a4;
  v53 = a1;
  v54 = a3;
  v57 = a7;
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A5249234();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5242D14();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = AssociatedTypeWitness;
  v66 = a5;
  v67 = AssociatedConformanceWitness;
  v68 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = AssociatedTypeWitness;
  v66 = a5;
  v67 = AssociatedConformanceWitness;
  v68 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = OpaqueTypeMetadata2;
  v66 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v65 = OpaqueTypeMetadata2;
  v66 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v65 = v21;
  v66 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v65 = v21;
  v66 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v65 = a5;
  v66 = v23;
  v67 = v16;
  v68 = v24;
  v25 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  v51 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - v26;
  v49 = sub_1A5248804();
  v28 = sub_1A5249754();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v50 = &v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v52 = &v46 - v32;
  v33 = type metadata accessor for LemonadeFeedContents();
  sub_1A4386624(v53, v33, v27);
  v53 = v15;
  sub_1A437DF50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v15);
  v34 = a2 + *(v33 + 144);
  v35 = *v34;
  if (*(v34 + 8) == 1)
  {
    LOBYTE(v65) = *v34;
  }

  else
  {

    sub_1A524D254();
    v36 = sub_1A524A014();
    sub_1A5246DF4();

    v37 = v46;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v35, 0);
    (*(v47 + 8))(v37, v48);
    LOBYTE(v35) = v65;
  }

  v64 = v35;
  v38 = v58;
  sub_1A437E174(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, v58);
  WitnessTable = swift_getWitnessTable();
  v40 = v50;
  v41 = v53;
  sub_1A43A3C04(v54, v59 & 1, v53, &v64, v25, WitnessTable, v50);
  sub_1A438EB04(v38, sub_1A3DC7D88);
  (*(v55 + 8))(v41, v56);
  (*(v51 + 8))(v27, v25);
  v62 = WitnessTable;
  v63 = MEMORY[0x1E697F568];
  v60 = swift_getWitnessTable();
  v61 = WitnessTable;
  swift_getWitnessTable();
  v42 = *(v29 + 16);
  v43 = v52;
  v42(v52, v40, v28);
  v44 = *(v29 + 8);
  v44(v40, v28);
  v42(v57, v43, v28);
  return (v44)(v43, v28);
}

uint64_t sub_1A4387284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v19[0] = a2;
  v19[1] = swift_getOpaqueTypeMetadata2();
  v19[2] = v7;
  v19[3] = swift_getOpaqueTypeConformance2();
  v8 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  v15 = type metadata accessor for LemonadeFeedContents();
  sub_1A4386624(a1, v15, v11);
  swift_getWitnessTable();
  v16 = *(v9 + 16);
  v16(v14, v11, v8);
  v17 = *(v9 + 8);
  v17(v11, v8);
  v16(a4, v14, v8);
  return (v17)(v14, v8);
}

uint64_t sub_1A4387544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  sub_1A5248804();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A5243E24();
  sub_1A52420C4();
  sub_1A5249754();
  sub_1A5244124();
  sub_1A5242374();
  sub_1A5249754();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5249754();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B894();
  v2 = MEMORY[0x1E6980A08];
  sub_1A439027C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A439027C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v2);
  sub_1A5248804();
  v3 = MEMORY[0x1E6980A08];
  sub_1A437DD40(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1B2AC();
  sub_1A5248804();
  sub_1A437DD40(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], v3);
  sub_1A5248804();
  sub_1A439027C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v2);
  sub_1A5248804();
  v4 = sub_1A5248804();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

void sub_1A4387C74(uint64_t a1)
{
  sub_1A437DD40(0, &qword_1EB12F3F8, MEMORY[0x1E69C2998], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  v6 = sub_1A52440D4();
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(a1 + 172);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = v13;
    v17 = *v14;
    if (!v15)
    {
      return;
    }
  }

  else
  {

    sub_1A524D254();
    v23 = a1;
    v18 = sub_1A524A014();
    v24 = v5;
    v19 = v18;
    a1 = v23;
    sub_1A5246DF4();

    v5 = v24;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v15, 0);
    v16 = v13;
    (*(v11 + 8))(v13, v10);
    v17 = v27;
    if (!v27)
    {
      return;
    }
  }

  if (v17 != 1)
  {
    sub_1A438EB64(v1 + *(a1 + 180), v5, &qword_1EB12F3F8, MEMORY[0x1E69C2998], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v26 + 32))(v9, v5, v25);
    }

    else
    {
      sub_1A524D254();
      v20 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v11 + 8))(v16, v10);
    }

    v21 = (*(v26 + 88))(v9, v25);
    if (v21 != *MEMORY[0x1E69C2990] && v21 != *MEMORY[0x1E69C2978] && v21 != *MEMORY[0x1E69C2980] && v21 != *MEMORY[0x1E69C2988])
    {
      sub_1A524E6E4();
      __break(1u);
    }
  }
}

uint64_t sub_1A43880E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a4;
  v84 = a2;
  v87 = a1;
  v89 = a5;
  v88 = sub_1A5249284();
  v86 = *(v88 - 1);
  MEMORY[0x1EEE9AC00](v88);
  v85 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = sub_1A5248804();
  v82 = swift_getAssociatedTypeWitness();
  v81 = *(swift_getAssociatedConformanceWitness() + 16);
  v9 = swift_getAssociatedTypeWitness();
  v10 = sub_1A524CB74();
  v11 = swift_getAssociatedTypeWitness();
  v12 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v120 = v11;
  v121 = a3;
  v122 = AssociatedConformanceWitness;
  v123 = v12;
  v14 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v120 = v11;
  v121 = a3;
  v16 = a3;
  v92 = a3;
  v122 = AssociatedConformanceWitness;
  v123 = v14;
  v80 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120 = OpaqueTypeMetadata2;
  v121 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v120 = OpaqueTypeMetadata2;
  v121 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v120 = v18;
  v121 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v120 = v18;
  v121 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v120 = v16;
  v121 = v20;
  v122 = v14;
  v123 = v21;
  v22 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  sub_1A5248804();
  v23 = sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = swift_getWitnessTable();
  v129 = v26;
  v130 = MEMORY[0x1E697F568];
  v81 = MEMORY[0x1E697E858];
  v127 = swift_getWitnessTable();
  v128 = v26;
  v82 = MEMORY[0x1E697F968];
  v27 = swift_getWitnessTable();
  v120 = v10;
  v121 = v9;
  v122 = v9;
  v123 = v23;
  v124 = WitnessTable;
  v125 = v25;
  v126 = v27;
  v78[1] = sub_1A5243E24();
  v120 = v10;
  v121 = v9;
  v122 = v9;
  v123 = v22;
  v124 = WitnessTable;
  v125 = v25;
  v126 = v26;
  v79 = sub_1A52420C4();
  v78[0] = sub_1A5249754();
  v120 = v10;
  v121 = v9;
  v122 = v9;
  v123 = v23;
  v124 = WitnessTable;
  v125 = v25;
  v126 = v27;
  sub_1A5244124();
  v120 = v10;
  v121 = v9;
  v122 = v9;
  v123 = v22;
  v124 = WitnessTable;
  v125 = v25;
  v126 = v26;
  sub_1A5242374();
  sub_1A5249754();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5249754();
  v118 = swift_getAssociatedConformanceWitness();
  v119 = MEMORY[0x1E697EBF8];
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v116 = v29;
  v117 = v30;
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v114 = v31;
  v115 = v32;
  v112 = swift_getWitnessTable();
  v113 = MEMORY[0x1E6981138];
  v33 = swift_getWitnessTable();
  v110 = v28;
  v111 = v33;
  swift_getWitnessTable();
  sub_1A524B894();
  v34 = MEMORY[0x1E6980A08];
  sub_1A439027C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A439027C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v34);
  sub_1A5248804();
  v35 = MEMORY[0x1E69C2948];
  v36 = MEMORY[0x1E6980A08];
  sub_1A437DD40(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1B2AC();
  sub_1A5248804();
  v83 = MEMORY[0x1E69C24E0];
  sub_1A437DD40(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], v36);
  sub_1A5248804();
  sub_1A439027C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v34);
  AssociatedTypeWitness = sub_1A5248804();
  v37 = sub_1A5248804();
  v38 = swift_getWitnessTable();
  v39 = sub_1A4383424(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
  v108 = v38;
  v109 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_1A4383424(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v106 = v40;
  v107 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_1A4383488(&qword_1EB1279C8, &qword_1EB1279C0, v35);
  v104 = v42;
  v105 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_1A438DB60(&qword_1EB1279E8, sub_1A3F1B2AC);
  v102 = v44;
  v103 = v45;
  v46 = swift_getWitnessTable();
  v47 = sub_1A4383488(&qword_1EB1279F8, &qword_1EB1279F0, v83);
  v100 = v46;
  v101 = v47;
  v48 = swift_getWitnessTable();
  v49 = sub_1A4383424(&qword_1EB1279B0, &qword_1EB1279A8, MEMORY[0x1E69E7DE0]);
  v98 = v48;
  v99 = v49;
  v96 = swift_getWitnessTable();
  v97 = v49;
  v50 = swift_getWitnessTable();
  v120 = v37;
  v121 = v37;
  v122 = v50;
  v123 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v120 = v37;
  v121 = v37;
  v122 = v50;
  v123 = v50;
  v52 = swift_getOpaqueTypeConformance2();
  v120 = v51;
  v121 = v52;
  swift_getOpaqueTypeMetadata2();
  v53 = sub_1A5248804();
  v120 = v51;
  v121 = v52;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = MEMORY[0x1E697E5D8];
  v54 = swift_getWitnessTable();
  v120 = v53;
  v121 = v54;
  v55 = swift_getOpaqueTypeMetadata2();
  v79 = *(v55 - 1);
  MEMORY[0x1EEE9AC00](v55);
  v57 = v78 - v56;
  v120 = v53;
  v121 = v54;
  v58 = swift_getOpaqueTypeConformance2();
  v83 = v55;
  v120 = v55;
  v121 = v58;
  v80 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v81 = *(v59 - 8);
  v82 = v59;
  MEMORY[0x1EEE9AC00](v59);
  AssociatedTypeWitness = v78 - v60;
  v61 = type metadata accessor for LemonadeFeedContents();
  v62 = v84;
  if ((sub_1A437E680() & 1) != 0 && (LOBYTE(v120) = *(*(v62 + *(v61 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext), v131[0] = 3, !static LemonadePresentationContext.== infix(_:_:)(&v120, v131)))
  {
    v63 = MEMORY[0x1E697C428];
  }

  else
  {
    v63 = MEMORY[0x1E697C438];
  }

  v64 = v85;
  v65 = v86;
  v66 = v88;
  (*(v86 + 104))(v85, *v63, v88);
  swift_checkMetadataState();
  sub_1A524AF34();
  (*(v65 + 8))(v64, v66);
  v67 = *(*(*(v62 + *(v61 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  type metadata accessor for LemonadeTransientCollectionSortingUtilities();
  v68 = sub_1A4A4C42C(v67);
  (*(*v68 + 120))(v68);

  v69 = v83;
  v70 = v80;
  sub_1A524AF24();
  v71 = (*(v79 + 8))(v57, v69);
  v88 = v78;
  MEMORY[0x1EEE9AC00](v71);
  v72 = v91;
  v78[-4] = v92;
  v78[-3] = v72;
  v78[-2] = v62;
  swift_getAssociatedTypeWitness();
  v73 = sub_1A524DF24();
  v93 = swift_getAssociatedConformanceWitness();
  v74 = swift_getWitnessTable();
  v120 = v73;
  v121 = v74;
  swift_getOpaqueTypeMetadata2();
  v120 = v69;
  v121 = v70;
  swift_getOpaqueTypeConformance2();
  v120 = v73;
  v121 = v74;
  swift_getOpaqueTypeConformance2();
  v75 = v82;
  v76 = AssociatedTypeWitness;
  sub_1A524B0E4();
  return (*(v81 + 8))(v76, v75);
}

uint64_t sub_1A4388F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5249234();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v30 = a2;
  v15 = type metadata accessor for LemonadeFeedContents();
  v28 = *(a1 + *(v15 + 36));
  sub_1A43892B8(0, &qword_1EB138CA8, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v16 = a1 + *(v15 + 176);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v18 = v17;
  }

  else
  {

    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    v20 = v25;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v17, 0);
    (*(v26 + 8))(v20, v27);
    v18 = v32;
    v17 = v32;
  }

  (*(a3 + 136))(v28, v33, v17, v30, a3);

  sub_1A3EA8D18(v33, &qword_1EB1256B8, &qword_1EB1256C0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  (*(v9 + 16))(v14, v11, v8);
  v22 = *(v9 + 8);
  v22(v11, v8);
  MEMORY[0x1A5904CD0](v14, v8, WitnessTable);
  return (v22)(v14, v8);
}

void sub_1A43892B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3E792C4(255, &qword_1EB1256B8, &qword_1EB1256C0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A4389330()
{
  v0 = type metadata accessor for LemonadeFeedContents();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (v2)
  {
    sub_1A437F1FC(v0);
    sub_1A5243784();
  }

  return result;
}

uint64_t sub_1A438945C(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeFeedContents();
  v13 = *(a1 + *(v6 + 68));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (v12[1])
  {
    v8 = a1 + *(v6 + 164);
    v9 = *(v8 + 8);
    if (*(v8 + 9) != 1)
    {
      v10 = *v8;

      sub_1A524D254();
      v11 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3F1B4C4(v10, v9, 0);
      (*(v3 + 8))(v5, v2);
    }

    sub_1A5243764();
  }

  return result;
}

uint64_t sub_1A438969C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for LemonadeFeedContents();
  v5 = *a1;
  v6 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (!AssociatedTypeWitness)
  {
    return sub_1A4389828(v4);
  }

  if (v5 != v6)
  {
    return sub_1A4389828(v4);
  }

  return result;
}

uint64_t sub_1A4389828(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 8);

  sub_1A3C66934(v1, v3, v4);

  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A524B6D4();
  swift_unknownObjectRetain();
  sub_1A524B6B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A52431C4();
  swift_unknownObjectRetain();
  sub_1A5243174();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6B4();
  sub_1A438A968(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1A43899F0()
{
  v0 = type metadata accessor for LemonadeFeedContents();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    return sub_1A4389828(v0);
  }

  return result;
}

uint64_t sub_1A4389AF0(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v23 - v8;
  v9 = type metadata accessor for LemonadeFeedContents();
  v10 = (a1 + v9[20]);
  v11 = *(v10 + 1);
  v25 = *v10;
  LOBYTE(v29) = v25;
  v30 = v11;
  sub_1A439027C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v13 = v12;
  result = sub_1A524B6A4();
  if ((v33 & 1) == 0)
  {
    v15 = *(a1 + v9[11]);
    if (v15)
    {
      v23 = v13;
      v24 = v15;
      v33 = *(a1 + v9[18]);
      v16 = swift_getAssociatedTypeWitness();
      v17 = swift_getAssociatedConformanceWitness();

      v29 = AssociatedTypeWitness;
      v30 = v16;
      v31 = AssociatedConformanceWitness;
      v32 = v17;
      sub_1A52431C4();
      sub_1A524DF24();
      sub_1A524B6D4();
      sub_1A524B6A4();
      if (v29)
      {
        sub_1A52431B4();

        v19 = v26;
        v18 = v27;
        v20 = v28;
        (*(v27 + 32))(v26, v6, v28);
        v21 = v24;
        v22 = v24(v19);
        LOBYTE(v29) = v25;
        v30 = v11;
        LOBYTE(v33) = v22 & 1;

        sub_1A524B6B4();
        sub_1A3C33378(v21);

        return (*(v18 + 8))(v19, v20);
      }

      else
      {
        return sub_1A3C33378(v24);
      }
    }
  }

  return result;
}

uint64_t sub_1A4389E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(type metadata accessor for LemonadeFeedContents() - 8);
  v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a3(v7, v4, v5);
}

uint64_t sub_1A4389EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedTypeWitness();
  v8 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v19 = a3;
  v14 = type metadata accessor for LemonadeFeedContents();
  sub_1A438A1B8(v14);
  v25 = *(a1 + *(v14 + 72));
  v15 = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v21 = AssociatedTypeWitness;
  v22 = v15;
  v23 = AssociatedConformanceWitness;
  v24 = v16;
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (v21)
  {
    sub_1A52431B4();

    v18 = v20;
    (*(v8 + 32))(v13, v10, v20);
    (*(v19 + 128))(v13, a2);
    return (*(v8 + 8))(v13, v18);
  }

  return result;
}

uint64_t sub_1A438A134()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for LemonadeFeedContents() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A4389EC8(v4, v1, v2);
}

uint64_t sub_1A438A1B8(uint64_t a1)
{
  v3 = sub_1A5249234();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v30 = a1;
  v15 = *(a1 + 72);
  v32 = v1;
  v37 = *(v1 + v15);
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v33 = AssociatedTypeWitness;
  v34 = v16;
  v35 = AssociatedConformanceWitness;
  v36 = v17;
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (v33)
  {
    sub_1A52431B4();

    v19 = v31;
    (*(v31 + 32))(v14, v11, v9);
    v20 = v32;
    (*(v6 + 160))(v14, v5, v6);
    v21 = v14;
    if (v22)
    {
      v23 = *(v20 + *(v30 + 116) + 8);

      if ((v23 & 1) == 0)
      {
        sub_1A524D254();
        v24 = v19;
        v25 = sub_1A524A014();
        sub_1A5246DF4();

        v19 = v24;
        v26 = v27;
        sub_1A5249224();
        swift_getAtKeyPath();

        (*(v28 + 8))(v26, v29);
      }

      sub_1A5243E04();
    }

    return (*(v19 + 8))(v21, v9);
  }

  return result;
}

uint64_t sub_1A438A548(uint64_t a1)
{
  v19 = a1;
  v1 = sub_1A5249234();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E697BF90];
  v5 = MEMORY[0x1E697DCB8];
  sub_1A437DD40(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeFeedContents();
  sub_1A438EB64(v19 + *(v13 + 88), v8, &unk_1EB128A60, v4, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v17 + 8))(v3, v18);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A438A80C()
{
  v1 = *(type metadata accessor for LemonadeFeedContents() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1A438A548(v2);
}

uint64_t sub_1A438A890()
{
  v0 = type metadata accessor for LemonadeFeedContents();
  sub_1A439027C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if (v2 == 1)
  {
    return sub_1A438A968(v0);
  }

  return result;
}

uint64_t sub_1A438A968(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5249234();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = *(v1 + *(a1 + 64));
  v11 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (v46)
  {
    v39 = v11;
    v40 = v6;
    v41 = v5;
    v42 = v46;
    v13 = (v1 + *(a1 + 108));
    v14 = *v13;
    v15 = *(v13 + 8);

    if ((v15 & 1) == 0)
    {
      sub_1A524D254();
      v16 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v43 + 8))(v10, v44);
    }

    v17 = (v1 + *(a1 + 68));
    v18 = *v17;
    v35 = v17[1];
    v36 = v18;
    *&v47[0] = v18;
    *(&v47[0] + 1) = v35;
    v38 = v4;
    v34[1] = swift_getAssociatedConformanceWitness();
    sub_1A5243794();
    sub_1A524DF24();
    v34[2] = sub_1A524B6D4();
    sub_1A524B6A4();
    sub_1A5242FB4();

    if ((v15 & 1) == 0)
    {
      sub_1A524D254();
      v19 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v43 + 8))(v10, v44);
      v14 = *&v47[0];
    }

    v37 = v14;
    sub_1A438B2A4(a1, v47);
    v20 = *(v1 + *(a1 + 104) + 8);

    if ((v20 & 1) == 0)
    {
      sub_1A524D254();
      v21 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v43 + 8))(v10, v44);
    }

    v34[0] = sub_1A437F1FC(a1);
    v22 = v2 + *(a1 + 164);
    v23 = *v22;
    v24 = *(v22 + 8);
    if (*(v22 + 9) != 1)
    {

      sub_1A524D254();
      v25 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3F1B4C4(v23, v24, 0);
      (*(v43 + 8))(v10, v44);
    }

    v26 = *(v2 + *(a1 + 36));
    v27 = v41;
    v28 = v38;
    (*(v41 + 16))(v7, v2, v38);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = (v40 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    v32 = v39;
    *(v31 + 16) = v28;
    *(v31 + 24) = v32;
    (*(v27 + 32))(v31 + v29, v7, v28);
    *(v31 + v30) = v26;

    v33 = sub_1A5242F84();

    sub_1A3D5FAFC(v47);
    *&v47[0] = v36;
    *(&v47[0] + 1) = v35;
    v46 = v33;

    sub_1A524B6B4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A438AF88(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeFeedContents();
  v14 = *(a1 + v6[17]);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (v13)
  {
    v8 = *(a1 + v6[27] + 8);

    if ((v8 & 1) == 0)
    {
      sub_1A524D254();
      v9 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
    }

    sub_1A5242FB4();

    v10 = a1 + v6[21];
    v11 = *(v10 + 8);
    LOBYTE(v14) = *v10;
    *(&v14 + 1) = v11;
    LOBYTE(v13) = 1;
    sub_1A439027C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

    sub_1A524B6B4();
  }

  return result;
}

uint64_t sub_1A438B220()
{
  v1 = *(type metadata accessor for LemonadeFeedContents() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1A438AF88(v2);
}

uint64_t sub_1A438B2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A438EA68(v2 + *(a1 + 100), &v17);
  if (v20 == 1)
  {
    v21 = v17;
    v22 = v18;
    v23 = v19;
    if (*(&v18 + 1))
    {
LABEL_3:
      v10 = v22;
      *a2 = v21;
      *(a2 + 16) = v10;
      *(a2 + 32) = v23;
      return result;
    }
  }

  else
  {
    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    result = (*(v6 + 8))(v8, v5);
    if (*(&v22 + 1))
    {
      goto LABEL_3;
    }
  }

  v12 = *(a1 + 16);
  v13 = *(*(a1 + 24) + 8);

  v14 = sub_1A3C66FE8(v2, v12, v13);
  v16 = v15;

  *&v17 = v14;
  *(&v17 + 1) = v16;
  result = sub_1A524E384();
  if (*(&v22 + 1))
  {
    return sub_1A3C2C7D8(&v21, &qword_1EB126538, MEMORY[0x1E69E69B8]);
  }

  return result;
}

BOOL sub_1A438B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A437DD40(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for LemonadeNavigationDestination();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a5 + 8);
  if ((*(v16 + 128))(a1, a4, v16, v13))
  {
    (*(v16 + 112))(a1, *(a3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext), a4, v16);
    v17 = sub_1A52434D4();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = sub_1A3C30368();
    v19 = sub_1A4657324(v15, 0, v18 & 1, 0, 0, v11, 0, 0);
    sub_1A438E9F8(v11, &qword_1EB1290B0, MEMORY[0x1E69C24E0]);
    v20 = sub_1A3E78D28(v19);
    sub_1A3E00630(v19);
    sub_1A438EB04(v15, type metadata accessor for LemonadeNavigationDestination);
  }

  else
  {
    return 0;
  }

  return v20;
}

uint64_t sub_1A438B6EC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (AssociatedTypeWitness)
  {
    v2 = sub_1A52431A4();

    if (v2)
    {
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A438B828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v57 = a6;
  v58 = a4;
  v56 = a3;
  v51 = a2;
  v59 = a7;
  v60 = a1;
  v8 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v43 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = AssociatedTypeWitness;
  v62 = a5;
  v63 = AssociatedConformanceWitness;
  v64 = v8;
  v13 = AssociatedConformanceWitness;
  v44 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v43 = &v43 - v15;
  v61 = AssociatedTypeWitness;
  v62 = a5;
  v63 = v13;
  v64 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = OpaqueTypeMetadata2;
  v62 = OpaqueTypeConformance2;
  v17 = OpaqueTypeMetadata2;
  v45 = OpaqueTypeMetadata2;
  v46 = OpaqueTypeConformance2;
  v18 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v53 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v49 = &v43 - v22;
  v61 = v17;
  v62 = v18;
  v52 = swift_getOpaqueTypeConformance2();
  v61 = v19;
  v62 = v52;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v48 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v50 = &v43 - v28;
  v29 = v51;
  (*(v8 + 104))(v51, a5, v8, v27);
  v30 = v43;
  sub_1A3D7194C(v29, a5, AssociatedTypeWitness, a5, v44);
  (*(v54 + 8))(v11, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedTypeWitness();
  v64 = v31;
  v32 = __swift_allocate_boxed_opaque_existential_1(&v61);
  (*(*(v31 - 8) + 16))(v32, v56, v31);
  v33 = v47;
  v34 = v45;
  sub_1A524A534();
  (*(v55 + 8))(v30, v34);
  sub_1A3C2C7D8(&v61, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  v35 = v49;
  sub_1A438BE20(v19, v49);
  v36 = *(v53 + 8);
  v36(v33, v19);
  v37 = type metadata accessor for LemonadeFeedContents();
  sub_1A438BF14(v58, v37, &v61);
  v38 = v48;
  sub_1A524A5D4();
  sub_1A3EA8D18(&v61, &qword_1EB124F38, &qword_1EB124F40);
  v36(v35, v19);
  v39 = *(v24 + 16);
  v40 = v50;
  v39(v50, v38, v23);
  v41 = *(v24 + 8);
  v41(v38, v23);
  v39(v59, v40, v23);
  return (v41)(v40, v23);
}

uint64_t sub_1A438BE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v7(v6);
  (v7)(a2, v6, a1);
  return (*(v4 + 8))(v6, a1);
}

uint64_t sub_1A438BF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_1A438C17C(a1, a2);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v9 + 8))(v11, v8);
    v17 = v19;
    *(v19 + 32) = 0;
    *v17 = 0u;
    v17[1] = 0u;
  }

  else
  {
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    (*(v6 + 144))(v15, v5, v6);
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1A438C17C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v6);
  v13 = *(v2 + *(a2 + 72));
  v11[0] = AssociatedTypeWitness;
  v11[1] = swift_getAssociatedTypeWitness();
  v11[2] = AssociatedConformanceWitness;
  v12 = swift_getAssociatedConformanceWitness();
  sub_1A52431C4();
  sub_1A524DF24();
  sub_1A524B6D4();
  result = sub_1A524B6A4();
  if (AssociatedTypeWitness)
  {
    sub_1A52431B4();

    v8 = swift_getAssociatedTypeWitness();
    v12 = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
    swift_getAssociatedConformanceWitness();
    sub_1A5246424();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A438C3FC(uint64_t a1, uint64_t a2, void (*a3)(char *, char *))
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20[-v11];
  v13 = (v3 + *(a2 + 76));
  v14 = *v13;
  v15 = *(v13 + 1);
  v21[0] = v14;
  v22 = v15;
  sub_1A439027C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v20[15] == 1)
  {
    v16 = sub_1A438C17C(a1, a2);
    MEMORY[0x1EEE9AC00](v16);
    *&v20[-32] = v7;
    *&v20[-24] = v8;
    *&v20[-16] = v3;
    sub_1A3C7BE04(a3, &v20[-48], MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v17, v21);
    (*(v10 + 8))(v12, v9);
    v18 = v21[0];
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1A438C62C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *))
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16[-v11];
  sub_1A438C17C(a1, a2);
  v17 = v7;
  v18 = v8;
  v19 = v3;
  sub_1A439027C(0, &qword_1EB120200, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6720]);
  sub_1A3C7BE04(a3, v16, MEMORY[0x1E69E73E0], v13, v14, &v20);
  (*(v10 + 8))(v12, v9);
  if (v20 == 1)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_1A438C7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v34 = a1;
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  v20 = (v3 + *(a3 + 76));
  v21 = *v20;
  v22 = *(v20 + 1);
  v37 = v21;
  v38 = v22;
  sub_1A439027C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v36 == 1)
  {
    v29 = v5;
    v30 = v6;
    sub_1A438C17C(v34, a3);
    v23 = v35[6];
    if (v23(v13, 1, AssociatedTypeWitness) == 1)
    {
      (*(v32 + 8))(v13, v33);
    }

    else
    {
      v24 = v13;
      v25 = v35[4];
      v25(v19, v24, AssociatedTypeWitness);
      sub_1A438C17C(v31, a3);
      if (v23(v10, 1, AssociatedTypeWitness) != 1)
      {
        v25(v16, v10, AssociatedTypeWitness);
        v26 = (*(v30 + 312))(v19, v16, v29);
        v28 = v35[1];
        v28(v16, AssociatedTypeWitness);
        v28(v19, AssociatedTypeWitness);
        return v26 & 1;
      }

      (v35[1])(v19, AssociatedTypeWitness);
      (*(v32 + 8))(v10, v33);
    }
  }

  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1A438CBA0(uint64_t a1, uint64_t a2)
{
  v10[1] = a1;
  v2 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = v10 - v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = AssociatedTypeWitness;
  v12 = AssociatedConformanceWitness;
  v10[0] = MEMORY[0x1E69C30F0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  sub_1A438B6EC();
  (*(v2 + 104))();
  swift_unknownObjectRelease();
  sub_1A524A674();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  v11 = AssociatedTypeWitness;
  v12 = AssociatedConformanceWitness;
  swift_getOpaqueTypeConformance2();
  return sub_1A524B8E4();
}

uint64_t sub_1A438CD9C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v5)
  {
    v0 = sub_1A5243774();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v2 = sub_1A524CAB4();
    if (sub_1A524CAF4())
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v0 = sub_1A3F163C0(v2, AssociatedTypeWitness, AssociatedConformanceWitness);
    }

    else
    {

      return MEMORY[0x1E69E7CD0];
    }
  }

  return v0;
}

id sub_1A438CF50(int *a1, uint64_t a2)
{
  v48 = a1;
  v47 = sub_1A5242334();
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = v4;
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v40 - v6;
  v7 = sub_1A5249234();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = *(*(a2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1A524DF24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = v48;
  v48 = a2;
  sub_1A438C17C(v20, a2);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v15, v12);
LABEL_15:
    v32 = v46;
    sub_1A5242324();
    v29 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    v33 = v43;
    v34 = v45;
    v35 = v47;
    (*(v43 + 16))(v45, v32, v47);
    v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v37 = swift_allocObject();
    (*(v33 + 32))(v37 + v36, v34, v35);
    sub_1A438DB60(&qword_1EB12E7B0, MEMORY[0x1E69C1DA8]);
    sub_1A524D274();

    (*(v33 + 8))(v32, v35);
    return v29;
  }

  (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
  if (!(*(v10 + 288))(v19, v9, v10))
  {
LABEL_14:
    (*(v16 + 8))(v19, AssociatedTypeWitness);
    goto LABEL_15;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v22 = v21;
  v23 = [v21 objectReference];
  if (!v23)
  {
    (*(v16 + 8))(v19, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v24 = v23;
  v25 = *(v2 + v48[24] + 8);

  if ((v25 & 1) == 0)
  {
    sub_1A524D254();
    v26 = sub_1A524A014();
    sub_1A5246DF4();

    v27 = v40;
    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v41 + 8))(v27, v42);
  }

  v28 = sub_1A5242344();

  if (v28)
  {
    v48 = v22;
    swift_unknownObjectRelease();
    v29 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

    if ((v25 & 1) == 0)
    {
      sub_1A524D254();
      v30 = sub_1A524A014();
      sub_1A5246DF4();

      v31 = v40;
      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v41 + 8))(v31, v42);
    }

    swift_unknownObjectRetain();
    sub_1A5242354();

    swift_unknownObjectRelease_n();
  }

  else
  {
    v39 = PXDragAndDropItemProviderForObject(v22);
    if (v39)
    {
      v29 = v39;
      (*(v16 + 8))(v19, AssociatedTypeWitness);

      swift_unknownObjectRelease();
      return v29;
    }

    v29 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

    swift_unknownObjectRelease();
  }

  (*(v16 + 8))(v19, AssociatedTypeWitness);
  return v29;
}

uint64_t sub_1A438D670(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-v9];
  sub_1A438C17C(a1, a2);
  v15 = v5;
  v16 = v6;
  v17 = v2;
  sub_1A437DD40(0, &qword_1EB126EE0, MEMORY[0x1E69E8450], MEMORY[0x1E69E62F8]);
  sub_1A3C7BE04(sub_1A3F18A68, v14, MEMORY[0x1E69E73E0], v11, v12, &v18);
  (*(v8 + 8))(v10, v7);
  if (v18)
  {
    return v18;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1A438D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(v4 + *(a4 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A40B3388(a1, v8, a2, a3);
}

uint64_t sub_1A438D8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-v11];
  sub_1A438C17C(a2, a3);
  v16 = v7;
  v17 = v8;
  v18 = v3;
  v19 = a1;
  sub_1A3C7BE04(sub_1A3F18A08, v15, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v13, &v20);
  (*(v10 + 8))(v12, v9);
  return v20 & 1;
}

uint64_t sub_1A438DB60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A438DBAC()
{
  result = qword_1EB138CB0;
  if (!qword_1EB138CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CB0);
  }

  return result;
}

unint64_t sub_1A438DC04()
{
  result = qword_1EB138CB8;
  if (!qword_1EB138CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CB8);
  }

  return result;
}

uint64_t sub_1A438DCC4()
{
  result = sub_1A5242D14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A438DD60()
{
  result = type metadata accessor for LemonadeItemsLayoutSpec.Style(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore26LemonadeFeedDisclosureTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A438DE0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A438DE60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1A438DEBC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_1A438DF14()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      sub_1A437DD40(319, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A437DD40(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          sub_1A5242854();
          sub_1A5247CB4();
          if (v4 <= 0x3F)
          {
            sub_1A437DD40(319, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
            if (v5 <= 0x3F)
            {
              sub_1A43892B8(319, &qword_1EB138CA8, MEMORY[0x1E697DA80]);
              if (v6 <= 0x3F)
              {
                swift_getAssociatedTypeWitness();
                sub_1A524DF24();
                sub_1A524B6D4();
                if (v7 <= 0x3F)
                {
                  swift_getAssociatedConformanceWitness();
                  sub_1A5243794();
                  sub_1A524DF24();
                  sub_1A524B6D4();
                  if (v8 <= 0x3F)
                  {
                    sub_1A52431C4();
                    sub_1A524DF24();
                    sub_1A524B6D4();
                    if (v9 <= 0x3F)
                    {
                      sub_1A439027C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        sub_1A437DD40(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
                        if (v11 <= 0x3F)
                        {
                          sub_1A437DD40(319, &qword_1EB124880, MEMORY[0x1E69C1D78], MEMORY[0x1E697DCC0]);
                          if (v12 <= 0x3F)
                          {
                            sub_1A437DD40(319, &qword_1EB124878, MEMORY[0x1E69C1DB0], MEMORY[0x1E697DCC0]);
                            if (v13 <= 0x3F)
                            {
                              sub_1A438E904(319, &unk_1EB124670, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E697DCC0]);
                              if (v14 <= 0x3F)
                              {
                                sub_1A437DD40(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
                                if (v15 <= 0x3F)
                                {
                                  sub_1A437DD40(319, &qword_1EB124868, MEMORY[0x1E69C2320], MEMORY[0x1E697DCC0]);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1A439027C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1A437DD40(319, &qword_1EB124848, MEMORY[0x1E69C28E8], MEMORY[0x1E697DCC0]);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1A437DD40(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1A437DD40(319, &qword_1EB124860, MEMORY[0x1E69C23C0], MEMORY[0x1E697DCC0]);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1A437DD40(319, &qword_1EB1247F8, sub_1A3F17950, MEMORY[0x1E697DCC0]);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1A439027C(319, &qword_1EB1246C0, MEMORY[0x1E69E6530], MEMORY[0x1E697DCC0]);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1A437DD40(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_1A439027C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_1A439027C(319, &qword_1EB1247F0, &type metadata for LemonadeFeedZoomLevel, MEMORY[0x1E697DCC0]);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_1A439027C(319, &unk_1EB124808, &type metadata for LemonadeCellSpec, MEMORY[0x1E697DCC0]);
                                                      if (v26 <= 0x3F)
                                                      {
                                                        sub_1A437DD40(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_1A439027C(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            sub_1A438E904(319, &qword_1EB1246B8, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E697DCC0]);
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_1A437DD40(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                                                              if (v30 <= 0x3F)
                                                              {
                                                                sub_1A439027C(319, &qword_1EB124758, &type metadata for LemonadeFeedContentsTopPaddingKind, MEMORY[0x1E697DCC0]);
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  sub_1A437DD40(319, &qword_1EB1246B0, sub_1A3E05E50, MEMORY[0x1E697DCC0]);
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    sub_1A437DD40(319, &qword_1EB12F438, MEMORY[0x1E69C2998], MEMORY[0x1E697DCC0]);
                                                                    if (v33 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_1A438E904(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A439027C(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A438E9F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A437DD40(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A438EA68(uint64_t a1, uint64_t a2)
{
  sub_1A438E904(0, &unk_1EB124888, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A438EB04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A438EB64(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A437DD40(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A438EBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A438EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t objectdestroy_74Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeFeedContents();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v2[10];
  v5 = sub_1A52442E4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  if (*(v3 + v2[11]))
  {
  }

  v7 = v3 + v2[13];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v8 = sub_1A524BD74();
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_1A524BD84();

  v9 = v3 + v2[14];
  v10 = MEMORY[0x1E69C24E0];
  sub_1A437DD40(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v11 - 8) + 8))(v9, v11);
  sub_1A437DD40(0, &qword_1EB127288, v10, MEMORY[0x1E6981E98]);

  v12 = v3 + v2[15];
  sub_1A43892B8(0, &qword_1EB121430, MEMORY[0x1E6981E90]);
  (*(*(v13 - 8) + 8))(v12, v13);
  sub_1A43892B8(0, &qword_1EB1213F0, MEMORY[0x1E6981E98]);

  swift_unknownObjectRelease();

  v14 = v2[22];
  sub_1A437DD40(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1A5248284();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
  }

  v16 = v3 + v2[25];
  if (*(v16 + 40))
  {
    if (*(v16 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(v16);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[28]), *(v3 + v2[28] + 8));

  v17 = v2[30];
  sub_1A437DD40(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1A5242D14();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  sub_1A3D35BAC(*(v3 + v2[32]), *(v3 + v2[32] + 8));
  sub_1A3C53AEC(*(v3 + v2[33]), *(v3 + v2[33] + 8));
  v19 = v2[34];
  sub_1A437DD40(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1A5249A94();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v3 + v19, 1, v20))
    {
      (*(v21 + 8))(v3 + v19, v20);
    }
  }

  else
  {
  }

  v22 = v2[35];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1A5249A94();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v3 + v22, 1, v23))
    {
      (*(v24 + 8))(v3 + v22, v23);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[36]), *(v3 + v2[36] + 8));
  sub_1A3C53AEC(*(v3 + v2[37]), *(v3 + v2[37] + 8));
  sub_1A3F1B54C(*(v3 + v2[38]), *(v3 + v2[38] + 8));
  v25 = v3 + v2[39];
  sub_1A437DD40(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
    v27 = sub_1A5242D14();
    (*(*(v27 - 8) + 8))(v25 + v26, v27);
  }

  else
  {
  }

  v28 = v3 + v2[40];
  sub_1A3F1D444(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32));
  sub_1A3F1B4C4(*(v3 + v2[41]), *(v3 + v2[41] + 8), *(v3 + v2[41] + 9));
  v29 = v2[42];
  sub_1A437DD40(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_1A52486A4();
    (*(*(v30 - 8) + 8))(v3 + v29, v30);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[43]), *(v3 + v2[43] + 8));
  sub_1A3D35BAC(*(v3 + v2[44]), *(v3 + v2[44] + 8));
  v31 = v2[45];
  sub_1A437DD40(0, &qword_1EB12F3F8, MEMORY[0x1E69C2998], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1A52440D4();
    (*(*(v32 - 8) + 8))(v3 + v31, v32);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A438F6DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  type metadata accessor for LemonadeFeedContents();
  return sub_1A4387284(a1, v5, v6, a2);
}

uint64_t objectdestroy_162Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeFeedContents();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v2[10];
  v5 = sub_1A52442E4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  if (*(v3 + v2[11]))
  {
  }

  v7 = v3 + v2[13];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v8 = sub_1A524BD74();
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_1A524BD84();

  v9 = v3 + v2[14];
  v10 = MEMORY[0x1E69C24E0];
  sub_1A437DD40(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v11 - 8) + 8))(v9, v11);
  sub_1A437DD40(0, &qword_1EB127288, v10, MEMORY[0x1E6981E98]);

  v12 = v3 + v2[15];
  sub_1A43892B8(0, &qword_1EB121430, MEMORY[0x1E6981E90]);
  (*(*(v13 - 8) + 8))(v12, v13);
  sub_1A43892B8(0, &qword_1EB1213F0, MEMORY[0x1E6981E98]);

  swift_unknownObjectRelease();

  v14 = v2[22];
  sub_1A437DD40(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1A5248284();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
  }

  v16 = v3 + v2[25];
  if (*(v16 + 40))
  {
    if (*(v16 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(v16);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[28]), *(v3 + v2[28] + 8));

  v17 = v2[30];
  sub_1A437DD40(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1A5242D14();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  sub_1A3D35BAC(*(v3 + v2[32]), *(v3 + v2[32] + 8));
  sub_1A3C53AEC(*(v3 + v2[33]), *(v3 + v2[33] + 8));
  v19 = v2[34];
  sub_1A437DD40(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1A5249A94();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v3 + v19, 1, v20))
    {
      (*(v21 + 8))(v3 + v19, v20);
    }
  }

  else
  {
  }

  v22 = v2[35];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1A5249A94();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v3 + v22, 1, v23))
    {
      (*(v24 + 8))(v3 + v22, v23);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[36]), *(v3 + v2[36] + 8));
  sub_1A3C53AEC(*(v3 + v2[37]), *(v3 + v2[37] + 8));
  sub_1A3F1B54C(*(v3 + v2[38]), *(v3 + v2[38] + 8));
  v25 = v3 + v2[39];
  sub_1A437DD40(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
    v27 = sub_1A5242D14();
    (*(*(v27 - 8) + 8))(v25 + v26, v27);
  }

  else
  {
  }

  v28 = v3 + v2[40];
  sub_1A3F1D444(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32));
  sub_1A3F1B4C4(*(v3 + v2[41]), *(v3 + v2[41] + 8), *(v3 + v2[41] + 9));
  v29 = v2[42];
  sub_1A437DD40(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_1A52486A4();
    (*(*(v30 - 8) + 8))(v3 + v29, v30);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[43]), *(v3 + v2[43] + 8));
  sub_1A3D35BAC(*(v3 + v2[44]), *(v3 + v2[44] + 8));
  v31 = v2[45];
  sub_1A437DD40(0, &qword_1EB12F3F8, MEMORY[0x1E69C2998], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1A52440D4();
    (*(*(v32 - 8) + 8))(v3 + v31, v32);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A4390188(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for LemonadeFeedContents() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = *(v8 + 8);

  return a2(a1, v2 + v7, v9, v10, v4, v5);
}

void sub_1A439027C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A43902D0()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1BB6B8);
  __swift_project_value_buffer(v6, qword_1EB1BB6B8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static CreateAlbumIntent.title.modify())()
{
  if (qword_1EB1BB6B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1BB6B8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A4390630()
{
  sub_1A4391338(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A5240BA4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A5240BB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A5240094();
  __swift_allocate_value_buffer(v10, qword_1EB1BB6D8);
  __swift_project_value_buffer(v10, qword_1EB1BB6D8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A5240BC4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A52400A4();
}

uint64_t (*static CreateAlbumIntent.description.modify())()
{
  if (qword_1EB1BB6D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240094();
  __swift_project_value_buffer(v0, qword_1EB1BB6D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static CreateAlbumIntent.parameterSummary.getter()
{
  sub_1A4392EC4(0, &qword_1EB138CC0, sub_1A4390C8C, &type metadata for CreateAlbumIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A4392EC4(0, &qword_1EB138CD0, sub_1A4390C8C, &type metadata for CreateAlbumIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4390C8C();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4390D04();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A4390C8C()
{
  result = qword_1EB138CC8;
  if (!qword_1EB138CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CC8);
  }

  return result;
}

void sub_1A4390D04()
{
  if (!qword_1EB138CD8)
  {
    sub_1A4392EC4(255, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158], MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138CD8);
    }
  }
}

uint64_t CreateAlbumIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v1 = sub_1A5240334();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4391338(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v23 - v4;
  sub_1A4391338(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = v23 - v6;
  sub_1A4391338(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v23 - v8;
  v9 = sub_1A5240BA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v23[0] = sub_1A5240BB4();
  v15 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  sub_1A4392EC4(0, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158], MEMORY[0x1E695A1A0]);
  v23[1] = v16;
  sub_1A524C5B4();
  sub_1A5241244();
  v17 = *MEMORY[0x1E6968DF0];
  v18 = *(v10 + 104);
  v18(v12, v17, v9);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v18(v12, v17, v9);
  v19 = v24;
  sub_1A5240BC4();
  (*(v15 + 56))(v19, 0, 1, v23[0]);
  v20 = sub_1A524C5A4();
  v31 = 0;
  v32 = 0;
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  v21 = sub_1A523FDB4();
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  (*(v28 + 104))(v27, *MEMORY[0x1E695A500], v29);
  result = sub_1A5240004();
  *v30 = result;
  return result;
}

void sub_1A4391338(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t CreateAlbumIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[3] = a1;
  v2[4] = v3;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4391428, v5, v4);
}

uint64_t sub_1A4391428()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  *(v0 + 96) = 0;
  v2 = AlbumEntity.CollectionType.rawValue.getter();
  v4 = v3;
  *(v0 + 64) = v3;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  sub_1A4390C8C();
  *v6 = v0;
  v6[1] = sub_1A4391558;
  v7 = *(v0 + 24);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v7, 0, 0, v2, v4, 0, 1, &unk_1A53344C8);
}

uint64_t sub_1A4391558()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1A439167C;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1A3DEB9FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A439167C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43916F4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 193) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a3;
  sub_1A524CC54();
  *(v3 + 136) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v3 + 144) = v5;
  *(v3 + 152) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4391790, v5, v4);
}

uint64_t sub_1A4391790()
{
  v1 = *(v0 + 128);
  *(v0 + 192) = *(v0 + 193) & 1;
  sub_1A523FF44();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 160) = v3;
  *(v0 + 104) = v1;
  sub_1A4390C8C();
  v4 = AppIntent.px_intentName.getter();
  v6 = v5;
  *(v0 + 168) = v5;
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_1A439189C;

  return sub_1A4391BB8(v0 + 16, v0 + 96, (v0 + 192), v2, v3, v4, v6);
}

uint64_t sub_1A439189C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1A3F58C88;
  }

  else
  {
    v5 = sub_1A43919D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A43919D0()
{

  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[12];
  v0[6] = v2;
  v0[7] = v1;
  v0[8] = v3;
  v0[9] = v4;
  v0[14] = v5;
  sub_1A3DB2FBC();
  sub_1A4392DB4();
  sub_1A523FDC4();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A4391AD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A43916F4(a1, v4, v5);
}

uint64_t sub_1A4391BB8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9 = sub_1A5246F24();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 216) = *a3;
  sub_1A524CC54();
  *(v7 + 96) = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  *(v7 + 104) = v11;
  *(v7 + 112) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A4391CCC, v11, v10);
}

void sub_1A4391CCC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A3CB648C();
  v0[15] = v4;
  v5 = *(v3 + 16);
  v0[16] = v5;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4391F10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);
  if (v1)
  {
    v7 = sub_1A4392650;
  }

  else
  {
    v7 = sub_1A4392054;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1A4392054()
{
  v1 = [*(v0 + 160) librarySpecificFetchOptions];
  *(v0 + 176) = v1;
  v2 = [objc_opt_self() fetchRootAlbumCollectionListWithOptions_];
  v3 = [v2 firstObject];
  *(v0 + 184) = v3;

  if (v3)
  {
    if (*(v0 + 216))
    {
      sub_1A524E6E4();
    }

    else
    {
      v4 = objc_allocWithZone(PXCreateAssetCollectionAction);
      v5 = v3;
      v6 = sub_1A524C634();
      v7 = [v4 initWithTitle:v6 parentCollectionList:v5 selectedAssets:0 keyAsset:0];
      *(v0 + 192) = v7;

      v8 = v7;
      v9 = swift_task_alloc();
      *(v0 + 200) = v9;
      *v9 = v0;
      v9[1] = sub_1A4392228;
      v10 = *(v0 + 48);
      v11 = *(v0 + 56);

      sub_1A4899AD4(v7, v10, v11);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4392228()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A43926D0;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A4392344;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

id sub_1A4392344()
{
  v8 = v0;
  result = [*(v0 + 192) createdAssetCollection];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 128);
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);

    AlbumEntity.init(_:)(v2, &v7);
    v7;

    PXAppIntentsDebugDescription(for:)(&v7);
    sub_1A3DB7808(v7);
    v3(v5, v4, v6);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4392650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43926D0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A4392770@<X0>(void *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void (*CreateAlbumIntent.title.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A43928A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1BB6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1BB6B8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A4392960()
{
  sub_1A4392EC4(0, &qword_1EB138CC0, sub_1A4390C8C, &type metadata for CreateAlbumIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A4392EC4(0, &qword_1EB138CD0, sub_1A4390C8C, &type metadata for CreateAlbumIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4390D04();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A4392B48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return CreateAlbumIntent.perform()(a1);
}

uint64_t sub_1A4392BE4(uint64_t a1)
{
  v2 = sub_1A4390C8C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A4392C24()
{
  result = qword_1EB138CE8;
  if (!qword_1EB138CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CE8);
  }

  return result;
}

unint64_t sub_1A4392C7C()
{
  result = qword_1EB138CF0;
  if (!qword_1EB138CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CF0);
  }

  return result;
}

unint64_t sub_1A4392CD4()
{
  result = qword_1EB138CF8;
  if (!qword_1EB138CF8)
  {
    sub_1A4392D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CF8);
  }

  return result;
}

void sub_1A4392D2C()
{
  if (!qword_1EB138D00)
  {
    sub_1A3DB2FBC();
    sub_1A4392DB4();
    v0 = sub_1A52402B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138D00);
    }
  }
}

unint64_t sub_1A4392DB4()
{
  result = qword_1EB138D08;
  if (!qword_1EB138D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138D08);
  }

  return result;
}

unint64_t sub_1A4392E34()
{
  result = qword_1EB138D10;
  if (!qword_1EB138D10)
  {
    sub_1A4392EC4(255, &qword_1EB138D18, sub_1A4390C8C, &type metadata for CreateAlbumIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138D10);
  }

  return result;
}

void sub_1A4392EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

id sub_1A4392F2C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v17 = sub_1A43939A8(a1, a2 & 1, a3, a4 & 1, a5, a6, a7);
  (*(*(*(v8 + 11) - 8) + 8))(a3);
  (*(*(*(v8 + 10) - 8) + 8))(a1);
  return v17;
}

id sub_1A43930BC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = objc_allocWithZone(off_1E7721940);
    type metadata accessor for HighlightsHeaderLayout();
    v5 = v0;
    v6 = [v4 initWithTarget:sub_1A524EA94() needsUpdateSelector:sel_setNeedsUpdate];

    swift_unknownObjectRelease();
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1A43931DC()
{
  v0 = sub_1A43930BC();
  [v0 setNeedsUpdateOf_];
}

void sub_1A4393228()
{
  [v0 referenceSize];
  [v0 setContentSize_];
  [v0 contentSize];
  sub_1A4393020();
}

id sub_1A4393340()
{
  v1 = sub_1A43930BC();
  [v1 updateIfNeeded];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HighlightsHeaderLayout();
  return objc_msgSendSuper2(&v3, sel_updateIfNeeded);
}

void sub_1A43933F0(void *a1)
{
  v1 = a1;
  sub_1A4393340();
}

void sub_1A4393438()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsHeaderLayout();
  objc_msgSendSuper2(&v2, sel_displayScaleDidChange);
  v1 = sub_1A43930BC();
  [v1 setNeedsUpdateOf_];
}

void sub_1A43934E4(void *a1)
{
  v1 = a1;
  sub_1A4393438();
}

uint64_t sub_1A439352C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v8 = sub_1A4393C08(v10, a5);

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

id sub_1A43935B0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a1;
  sub_1A43940A0();

  v7 = sub_1A524C634();

  return v7;
}

id sub_1A4393634(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a1;
  v7 = sub_1A43943A0();

  return v7;
}

id sub_1A4393698(void *a1)
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_1A4393784();

  v7 = sub_1A5241414();
  (*(v3 + 8))(v5, v2);

  return v7;
}

id sub_1A43937DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsHeaderLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4393860(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);
  (*(*(*((v4 & v3) + 0x58) - 8) + 8))(&a1[*((*v2 & *a1) + 0x78)]);

  v5 = *&a1[*((*v2 & *a1) + 0x88)];
}

id sub_1A43939A8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = MEMORY[0x1E69E7D40];
  v15 = *v7;
  v16 = *MEMORY[0x1E69E7D40];
  *&v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x88)] = 0;
  (*(*(*((v16 & v15) + 0x50) - 8) + 16))(&v7[*((*v14 & *v7) + 0x68)], a1, *((v16 & v15) + 0x50));
  v7[*((*v14 & *v7) + 0x70)] = a2 & 1;
  (*(*(*((v16 & v15) + 0x58) - 8) + 16))(&v7[*((*v14 & *v7) + 0x78)], a3, *((v16 & v15) + 0x58));
  v17 = &v7[*((*v14 & *v7) + 0x80)];
  *v17 = a4 & 1;
  *(v17 + 1) = a5;
  *(v17 + 2) = a6;
  *(v17 + 3) = a7;
  v21.receiver = v7;
  v21.super_class = type metadata accessor for HighlightsHeaderLayout();
  v18 = objc_msgSendSuper2(&v21, sel_init);
  v19 = sub_1A43930BC();
  [v19 addUpdateSelector:sel_updateContent needsUpdate:1];

  [v18 setContentSource_];
  [v18 addSpriteCount:1 withInitialState:0];

  return v18;
}

uint64_t sub_1A4393C08(void *a1, void *a2)
{
  v3 = v2;
  v25 = a2;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *((v6 & v5) + 0x50);
  v24[3] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24[4] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24[2] = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v24[1] = v24 - v11;
  v12 = sub_1A524DF24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - v14;
  v16 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1A524EA94();
  *v25 = v20;
  sub_1A3C2F0BC(a1, v26);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v15, 0, 1, v7);
    (*(v16 + 32))(v19, v15, v7);
    sub_1A5246224();
  }

  v22(v15, 1, 1, v7);
  (*(v13 + 8))(v15, v12);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1A43940A0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x60);
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  (*(v4 + 64))(&v1[*((v3 & v2) + 0x68)], v5, v4, v12);
  (*(v8 + 16))(v10, v14, v7);
  v15 = *(AssociatedTypeWitness - 8);
  if ((*(v15 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    v16 = *(v8 + 8);
    v16(v10, v7);
  }

  else
  {
    v17 = v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x70)];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = (*(AssociatedConformanceWitness + 16))(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
    v21 = v20;
    (*(v15 + 8))(v10, AssociatedTypeWitness);
    if (v21)
    {
      (*(v8 + 8))(v14, v7);
      return v19;
    }

    v16 = *(v8 + 8);
  }

  v16(v14, v7);

  return 4271950;
}

uint64_t sub_1A43943A0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x60);
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = sub_1A524DF24();
  v7 = *(v29 - 1);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v24 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  (*(v4 + 64))(&v1[*((v3 & v2) + 0x68)], v5, v4, v12);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v29);
    return 0;
  }

  (*(v10 + 32))(v14, v9, AssociatedTypeWitness);
  v15 = v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x70)];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 16);
  v28 = v15;
  v18 = v17(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v19)
  {
    (*(v10 + 8))(v14, AssociatedTypeWitness);
    return 0;
  }

  v25 = v14;
  v26 = v10;
  v27 = AssociatedTypeWitness;
  v30 = v18;
  v31 = v19;
  v32 = sub_1A524C674();
  v33 = v20;
  sub_1A3D5F9DC();
  v21 = sub_1A524DF84();

  v29 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  if (*(v21 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v22 = v29;
  [v29 copy];
  sub_1A524E0B4();

  swift_unknownObjectRelease();
  (*(v26 + 8))(v25, v27);
  sub_1A43700E0();
  swift_dynamicCast();
  return v32;
}

uint64_t sub_1A4394900()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A43949F0()
{
  Sprite.init(rect:mediaKind:)(3, &v11, v0[2], v0[3], v0[4], v0[5]);
  SpriteConfiguration.zPosition(_:)(&type metadata for Sprite, &protocol witness table for Sprite, 2.0);

  v1 = static SpriteBuilder.buildExpression(_:)(v12);
  __swift_destroy_boxed_opaque_existential_0(v12);
  sub_1A4394B00(0, &qword_1EB138D80, sub_1A42A59CC, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F8E10;
  *(v2 + 32) = v1;
  v9 = static SpriteBuilder.buildBlock(_:)(v2, v3, v4, v5, v6, v7, v8);

  return v9;
}

void sub_1A4394B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_1A4394B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 dynamicTextScaleFactorForCategory_];
  v7 = *(a3 + 24);
  v9 = v8 * v7(a2, a3);
  v7(a2, a3);
  return v9;
}

uint64_t PhotosAppTestLaunchConfiguration.init(launchArguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a2;
  v23 = sub_1A524C6F4();
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22[2] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4D23C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  v26 = *(v11 + 56);
  v27 = v10;
  v25 = v11 + 56;
  v26(v9, 1, 1);
  v12 = *(a1 + 16);
  if (v12)
  {
    v28 = 0;
    v29 = 0;
    v24 = 0;
    v22[1] = v3 + 8;
    v13 = a1 + 56;
    v14 = 1;
    while (1)
    {
      if (v14 - 1 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v16 = a1;
      a1 = *(v13 - 24);
      v3 = *(v13 - 16);
      v17 = a1 == 0x6F5468636E75616CLL && v3 == 0xEB000000004C5255;
      if (!v17 && (sub_1A524EAB4() & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      if (v14 < v12)
      {
        break;
      }

      sub_1A3C688C0(v9, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      v3 = v30;
      (v26)(v30, 1, 1, v27);
      sub_1A408A03C(v3, v9);
      a1 = v16;
      v15 = v14 + 1;
      v14 += 2;
      v13 += 32;
      if (v15 >= v12)
      {
        goto LABEL_15;
      }
    }

    if (v14 < *(v16 + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_17:
    __break(1u);
    __break(1u);
    __break(1u);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1A524E404();

    v31 = 0xD000000000000019;
    v32 = 0x80000001A53D3BD0;
    MEMORY[0x1A5907B60](a1, v3);
    sub_1A524E6E4();
    __break(1u);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v28 = 0;
    v29 = 0;
LABEL_15:

    v18 = v22[0];
    sub_1A408A03C(v9, v22[0]);
    result = type metadata accessor for PhotosAppTestLaunchConfiguration();
    v20 = v18 + *(result + 20);
    v21 = v28;
    *v20 = v29;
    *(v20 + 8) = v21;
    *(v20 + 16) = 0;
    *(v20 + 24) = -1;
  }

  return result;
}

id PhotosXCPTestUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosXCPTestUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosXCPTestUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosXCPTestUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosXCPTestUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PhotosAppTestLaunchConfiguration.shelvesOverride.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PhotosAppTestLaunchConfiguration() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(v3 + 24);
  *(a1 + 24) = v7;

  sub_1A4396980(v4, v5, v6, v7);
}

__n128 PhotosAppTestLaunchConfiguration.init(url:shelvesOverride:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a2;
  v4 = a2[1].n128_u64[0];
  v5 = a2[1].n128_u8[8];
  sub_1A408A03C(a1, a3);
  v6 = (a3 + *(type metadata accessor for PhotosAppTestLaunchConfiguration() + 20));
  result = v8;
  *v6 = v8;
  v6[1].n128_u64[0] = v4;
  v6[1].n128_u8[8] = v5;
  return result;
}

uint64_t PhotosAppTestLaunchConfiguration.launchArguments.getter()
{
  v1 = v0;
  v2 = sub_1A524C6F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = MEMORY[0x1E6968FB0];
  sub_1A3C4D23C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - v5;
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1E69E7CC0];
  sub_1A439768C(v1, v6, &unk_1EB12B250, v3);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1A3C688C0(v6, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1A3C4D634(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FC9F0;
    *(inited + 32) = 0x6F5468636E75616CLL;
    *(inited + 40) = 0xEB000000004C5255;
    *(inited + 48) = sub_1A5240CD4();
    *(inited + 56) = v12;
    sub_1A3D3A048(inited);
    (*(v8 + 8))(v10, v7);
  }

  v13 = v1 + *(type metadata accessor for PhotosAppTestLaunchConfiguration() + 20);
  v14 = *(v13 + 24);
  if (v14 == 255)
  {
    return v27;
  }

  v15 = *(v13 + 16);
  *v25 = *v13;
  sub_1A3C4D634(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1A52FC9F0;
  *(v16 + 32) = 0x4F7365766C656873;
  *(v16 + 40) = 0xEF65646972726576;
  *&v25[11] = *v25;
  v25[13] = v15;
  v26 = v14 & 1;
  sub_1A5240454();
  swift_allocObject();
  sub_1A5240444();
  sub_1A43969A0();
  v17 = sub_1A5240434();
  v19 = v18;
  sub_1A524C6D4();
  v20 = sub_1A524C694();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    sub_1A3C59280(v17, v19);

    *(v16 + 48) = v22;
    *(v16 + 56) = v23;
    sub_1A3D3A048(v16);
    return v27;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A43959C4()
{
  if (*v0)
  {
    return 0x6465746165706572;
  }

  else
  {
    return 0x6853656C676E6973;
  }
}

uint64_t sub_1A4395A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6853656C676E6973 && a2 == 0xEB00000000666C65;
  if (v6 || (sub_1A524EAB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465746165706572 && a2 == 0xED0000666C656853)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();

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