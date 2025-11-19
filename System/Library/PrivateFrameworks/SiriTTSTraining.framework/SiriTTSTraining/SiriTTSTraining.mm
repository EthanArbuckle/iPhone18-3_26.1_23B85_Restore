void sub_100001970(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a7;
  v16[3] = &type metadata for TTSTrainingFeatures;
  v16[4] = sub_100001B6C();
  _Block_copy(a7);
  v14 = isFeatureEnabled(_:)();
  sub_100001BC0(v16);
  if (v14)
  {
    SiriTTSTrainingAgent.uaf_installableTrainingAssets(language:mode:type:)(a1, a2, a3, a4, a5);
    sub_100002338();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (a7)[2](a7, isa);
  }

  else
  {
    SiriTTSTrainingAgent.tri_installableTrainingAssets(language:name:type:reply:)(a1, a2, a3, a4, a5, sub_10000237C, v13);
  }

  _Block_release(a7);
}

void SiriTTSTrainingAgent.installableTrainingAssets(language:name:type:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  sub_100002390();
  v15[3] = &type metadata for TTSTrainingFeatures;
  v15[4] = sub_100001B6C();
  v9 = isFeatureEnabled(_:)();
  sub_100001BC0(v15);
  v10 = sub_1000023A8();
  if (v9)
  {
    SiriTTSTrainingAgent.uaf_installableTrainingAssets(language:mode:type:)(v10, v11, v12, v13, v14);
    a6();
  }

  else
  {
    SiriTTSTrainingAgent.tri_installableTrainingAssets(language:name:type:reply:)(v10, v11, v12, v13, v14, a6, a7);
  }
}

unint64_t sub_100001B6C()
{
  result = qword_1000294B8;
  if (!qword_1000294B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000294B8);
  }

  return result;
}

uint64_t sub_100001BC0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_100001C24(uint64_t a1, uint64_t a2)
{
  sub_100002338();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_100001C90(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v15[3] = &type metadata for TTSTrainingFeatures;
  v15[4] = sub_100001B6C();
  v13 = isFeatureEnabled(_:)();
  sub_100001BC0(v15);
  if (v13)
  {
    SiriTTSTrainingAgent.uaf_installedTrainingAssets(language:mode:type:)(a1, a2, a3, a4, a5);
  }

  else
  {
    SiriTTSTrainingAgent.tri_installedTrainingAssetsSync(language:name:type:)(a1, a2, a3, a4, a5);
  }

  sub_100002338();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (a7)[2](a7, isa);

  _Block_release(a7);
}

uint64_t SiriTTSTrainingAgent.installedTrainingAssets(language:name:type:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  sub_100002390();
  v14[3] = &type metadata for TTSTrainingFeatures;
  v14[4] = sub_100001B6C();
  v7 = isFeatureEnabled(_:)();
  sub_100001BC0(v14);
  v8 = sub_1000023A8();
  if (v7)
  {
    SiriTTSTrainingAgent.uaf_installedTrainingAssets(language:mode:type:)(v8, v9, v10, v11, v12);
  }

  else
  {
    SiriTTSTrainingAgent.tri_installedTrainingAssetsSync(language:name:type:)(v8, v9, v10, v11, v12);
  }

  a6();
}

uint64_t sub_100001E34(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v12 = _Block_copy(aBlock);
  if (a3)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v14;
    if (a4)
    {
LABEL_3:
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a4 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v17 = a1;
  _Block_copy(v12);
  a7(v13, a3, v15, a4, a5, v17, v12);
  _Block_release(v12);
}

void sub_100001F90(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_100002000(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, const void *), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v15[3] = &type metadata for TTSTrainingFeatures;
  v15[4] = sub_100001B6C();
  _Block_copy(a3);
  v14 = isFeatureEnabled(_:)();
  sub_100001BC0(v15);
  if (v14)
  {
    _Block_copy(a3);
    a5(a1, a2, a3);
  }

  else
  {
    a7(a1, a6, v13);
  }

  _Block_release(a3);
}

uint64_t sub_100002110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v12[3] = &type metadata for TTSTrainingFeatures;
  v12[4] = sub_100001B6C();
  v10 = isFeatureEnabled(_:)();
  sub_100001BC0(v12);
  if (v10)
  {
    return a4(a1, a2, a3);
  }

  else
  {
    return a5(a1, a2, a3);
  }
}

void sub_1000021F4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, void (*a6)(uint64_t, uint64_t, const void *), uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  _Block_copy(v14);
  v15 = a3;
  v16 = a1;
  sub_100002000(v15, v16, v14, a5, a6, a7, a8);
  _Block_release(v14);
}

void type metadata accessor for SiriTTSTrainerAssetType()
{
  if (!qword_1000294C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000294C0);
    }
  }
}

uint64_t sub_1000022F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100002338()
{
  result = qword_1000294C8;
  if (!qword_1000294C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000294C8);
  }

  return result;
}

uint64_t TTSTrainingFeatures.isEnabled.getter()
{
  v2[3] = &type metadata for TTSTrainingFeatures;
  v2[4] = sub_100001B6C();
  v0 = isFeatureEnabled(_:)();
  sub_100001BC0(v2);
  return v0 & 1;
}

Swift::Int TTSTrainingFeatures.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000024B4()
{
  Hasher.init(_seed:)();
  TTSTrainingFeatures.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000024F4()
{
  result = qword_1000294D0;
  if (!qword_1000294D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000294D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTSTrainingFeatures(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for TTSTrainingFeatures(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x10000263CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void SiriTTSTrainingAgent.tri_installableTrainingAssets(language:name:type:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  ObjectType = swift_getObjectType();
  static os_log_type_t.default.getter();
  v13 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10001B980;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_100002D60();
  v16 = 7104878;
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    v17 = 7104878;
  }

  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  *(v14 + 32) = v17;
  *(v14 + 40) = v18;
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v15;
  if (a4)
  {
    v16 = a3;
    v19 = a4;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  *(v14 + 64) = v15;
  *(v14 + 72) = v16;
  *(v14 + 80) = v19;

  os_log(_:dso:log:_:_:)();

  v20 = ObjectType;

  v21 = [objc_opt_self() clientWithIdentifier:118];
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  v22[7] = a5;
  v22[8] = v20;

  v66 = v21;
  v23 = String._bridgeToObjectiveC()();
  v24 = [v66 rolloutIdentifiersWithNamespaceName:v23];

  if (v24)
  {

    sub_100003FB8(v66, a1, a2, a3, a4, a5);
    a6();

    sub_100004DB8();
  }

  else
  {
    v61 = v22;
    v62 = v20;
    static os_log_type_t.default.getter();
    v27 = SiriTTSTrainerGetLog();
    os_log(_:dso:log:_:_:)();

    v28 = String._bridgeToObjectiveC()();
    v29 = [v66 factorLevelsWithNamespaceName:v28];

    sub_100004B74(0, &qword_1000294E8, TRIFactorLevel_ptr);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock[0] = _swiftEmptyArrayStorage;
    v31 = sub_10000480C(v30);
    for (i = 0; v31 != i; ++i)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v33 = *(v30 + 8 * i + 32);
      }

      v34 = v33;
      if (__OFADD__(i, 1))
      {
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
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      v35 = [v33 factor];
      if (!v35)
      {
        goto LABEL_47;
      }

      sub_100004CEC(v35, &selRef_name);
      if (!v36)
      {
        goto LABEL_48;
      }

      v37._countAndFlagsBits = 0xD00000000000001CLL;
      v37._object = 0x80000001000196B0;
      v38 = String.hasPrefix(_:)(v37);

      if (v38)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v39 = *(aBlock[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }
    }

    v40 = aBlock[0];
    v41 = sub_10000480C(aBlock[0]);
    v42 = 0;
    v63 = _swiftEmptyArrayStorage;
    while (v41 != v42)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v42 >= *(v40 + 16))
        {
          goto LABEL_46;
        }

        v43 = *(v40 + 8 * v42 + 32);
      }

      v44 = v43;
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_45;
      }

      v46 = [v43 factor];
      if (!v46)
      {
        goto LABEL_49;
      }

      v47 = sub_100004CEC(v46, &selRef_name);
      v49 = v48;

      ++v42;
      if (v49)
      {
        v50 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_100004830(0, v63[2] + 1, 1, v63);
        }

        v53 = v50[2];
        v52 = v50[3];
        if (v53 >= v52 >> 1)
        {
          v50 = sub_100004830((v52 > 1), v53 + 1, 1, v50);
        }

        v50[2] = (v53 + 1);
        v63 = v50;
        v54 = &v50[2 * v53];
        v54[4] = v47;
        v54[5] = v49;
        v42 = v45;
      }
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v56 = String._bridgeToObjectiveC()();
    v57 = swift_allocObject();
    v57[2] = v66;
    v57[3] = sub_1000042F0;
    v57[4] = v61;
    v57[5] = a6;
    v57[6] = a7;
    v57[7] = v62;
    aBlock[4] = sub_100004B4C;
    aBlock[5] = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_100004D78();
    aBlock[2] = v58;
    aBlock[3] = &unk_100024C98;
    v59 = _Block_copy(aBlock);
    v60 = v66;

    [v60 removeLevelsForFactors:isa withNamespace:v56 queue:0 completion:v59];

    _Block_release(v59);
    sub_100004DB8();
  }
}

uint64_t sub_100002D18(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002D60()
{
  result = qword_1000294E0;
  if (!qword_1000294E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000294E0);
  }

  return result;
}

void SiriTTSTrainingAgent.tri_installedTrainingAssetsSync(language:name:type:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v39 = a5;
  static os_log_type_t.default.getter();
  v9 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001B980;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_100002D60();
  v12 = 7104878;
  v35 = a1;
  v36 = a2;
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = 7104878;
  }

  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  *(v10 + 32) = v13;
  *(v10 + 40) = v14;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v11;
  v37 = a3;
  if (a4)
  {
    v12 = a3;
    v15 = a4;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  *(v10 + 64) = v11;
  *(v10 + 72) = v12;
  *(v10 + 80) = v15;

  v38 = a4;

  os_log(_:dso:log:_:_:)();

  v16 = [objc_opt_self() clientWithIdentifier:118];
  v17 = sub_100004D8C();
  v18 = [v16 factorLevelsWithNamespaceName:v17];

  sub_100004B74(0, &qword_1000294E8, TRIFactorLevel_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_10000480C(v19);
  for (i = 0; v20 != i; ++i)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v22 = *(v19 + 8 * i + 32);
    }

    v23 = v22;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    if (![v22 hasLevel])
    {
      goto LABEL_21;
    }

    v24 = [v23 level];
    if (!v24)
    {
      goto LABEL_41;
    }

    v25 = v24;
    v26 = [v24 directoryValue];

    if (!v26)
    {
      goto LABEL_40;
    }

    v27 = [v26 hasPath];

    if (v27)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v28 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
LABEL_21:
    }
  }

  v29 = sub_10000480C(_swiftEmptyArrayStorage);
  v30 = 0;
  while (v29 != v30)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v30 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_39;
      }

      v31 = _swiftEmptyArrayStorage[v30 + 4];
    }

    v32 = v31;
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_38;
    }

    sub_100004B74(0, &qword_1000294C8, SiriTTSTrainingAsset_ptr);
    sub_100003C84(v32);
    ++v30;
    if (v34)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v30 = v33;
    }
  }

  sub_100003838(v35, v36, v37, v38, v39, _swiftEmptyArrayStorage);
}

void SiriTTSTrainingAgent.tri_install(trainingAsset:reply:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  static os_log_type_t.default.getter();
  v6 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10001B990;
  v8 = [a1 factor];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100002D60();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  os_log(_:dso:log:_:_:)();

  v12 = [a1 factor];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13._countAndFlagsBits = 0xD000000000000022;
  v13._object = 0x8000000100019740;
  LOBYTE(v12) = String.hasPrefix(_:)(v13);

  if (v12)
  {
    v14 = 1;
  }

  else
  {
    type metadata accessor for InternalSettings();
    static InternalSettings.shared.getter();
    v14 = dispatch thunk of InternalSettings.defaultToNonDiscretionaryDownloads.getter();
  }

  v15 = [objc_allocWithZone(TRIDownloadOptions) initWithAllowsCellular:v14 & 1 discretionaryBehavior:0];
  v16 = [objc_opt_self() clientWithIdentifier:118];
  sub_100002D18(&qword_1000294F0, &qword_10001BB10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10001B990;
  v18 = [a1 factor];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = sub_100004D8C();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = v4;
  v38 = sub_100004BF4;
  v39 = v24;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100004628;
  v37 = &unk_100024CE8;
  v25 = _Block_copy(&aBlock);
  v26 = v15;
  v27 = a1;
  v28 = v4;

  v29 = swift_allocObject();
  v29[2] = v27;
  v29[3] = a2;
  v29[4] = a3;
  v38 = sub_100004C00;
  v39 = v29;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100004430;
  v37 = &unk_100024D38;
  v30 = _Block_copy(&aBlock);
  v31 = v27;

  [v16 downloadLevelsForFactors:isa withNamespace:v23 queue:0 options:v26 progress:v25 completion:v30];
  _Block_release(v30);
  _Block_release(v25);
}

void SiriTTSTrainingAgent.tri_uninstall(trainingAsset:reply:)(void *a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  v6 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10001B990;
  v8 = [a1 factor];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100002D60();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  os_log(_:dso:log:_:_:)();

  v12 = [objc_opt_self() clientWithIdentifier:118];
  sub_100002D18(&qword_1000294F0, &qword_10001BB10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10001B990;
  v14 = [a1 factor];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = sub_100004D8C();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  aBlock[4] = sub_100004C6C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_100004D78();
  aBlock[2] = v21;
  aBlock[3] = &unk_100024D88;
  v22 = _Block_copy(aBlock);
  v23 = a1;

  [v12 removeLevelsForFactors:isa withNamespace:v19 queue:0 completion:v22];
  _Block_release(v22);
}

void sub_100003C84(void *a1)
{
  if (![a1 hasFactor])
  {
    goto LABEL_16;
  }

  v2 = [a1 factor];
  if (!v2)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = v2;
  v4 = [v2 hasName];

  if (!v4)
  {
LABEL_16:

    return;
  }

  v5 = [a1 factor];
  if (!v5)
  {
    goto LABEL_26;
  }

  sub_100004CEC(v5, &selRef_name);
  if (!v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7._object = 0x8000000100019800;
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  v8 = String.hasPrefix(_:)(v7);

  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = [a1 factor];
  if (!v9)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_100004CEC(v9, &selRef_name);
  if (!v10)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (![a1 hasLevel])
  {
    goto LABEL_17;
  }

  v11 = [a1 level];
  if (!v11)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = v11;
  v13 = [v11 directoryValue];

  if (!v13)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = [v13 hasPath];

  if (v14)
  {
    v15 = [a1 level];
    if (!v15)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v16 = v15;
    v17 = [v15 directoryValue];

    if (!v17)
    {
LABEL_34:
      __break(1u);
      return;
    }

    sub_100004CEC(v17, &selRef_path);
    v19 = v18;
  }

  else
  {
LABEL_17:
    v19 = 0;
  }

  v20 = [a1 level];
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = v20;
  v22 = [v20 metadata];

  if (v22)
  {
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v23 = String._bridgeToObjectiveC()();

  if (v19)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFactor:v23 path:v24 metadata:0];
}

void sub_100003FB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 factorLevelsWithNamespaceName:v7];

  sub_100004B74(0, &qword_1000294E8, TRIFactorLevel_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_10000480C(v9);
  for (i = 0; v10 != i; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    if (![v12 hasLevel])
    {
      goto LABEL_12;
    }

    v14 = [v13 level];
    if (!v14)
    {
      goto LABEL_32;
    }

    v15 = v14;
    v16 = [v14 directoryValue];

    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = [v16 hasAsset];

    if (v17)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
LABEL_12:
    }
  }

  v19 = sub_10000480C(_swiftEmptyArrayStorage);
  v20 = 0;
  while (v19 != v20)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_30;
      }

      v21 = _swiftEmptyArrayStorage[v20 + 4];
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_29;
    }

    sub_100004B74(0, &qword_1000294C8, SiriTTSTrainingAsset_ptr);
    sub_100003C84(v22);
    ++v20;
    if (v24)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v20 = v23;
    }
  }

  sub_100003838(a2, a3, a4, a5, a6, _swiftEmptyArrayStorage);
}

uint64_t sub_100004304(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id), uint64_t a5, void (*a6)(void))
{
  sub_100004938(&off_100024AA0);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v14 = 0;
  v10 = [a3 immediateDownloadForNamespaceNames:isa allowExpensiveNetworking:1 error:&v14];

  if (v10)
  {
    v11 = v14;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  a4(v11);
  a6();
}

void sub_100004430(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_1000044A8(unint64_t a1, void *a2, void *a3)
{
  static os_log_type_t.info.getter();
  v6 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10001B980;
  v8 = [a2 factor];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v7 + 56) = &type metadata for String;
  v12 = sub_100002D60();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  *(v7 + 96) = &type metadata for UInt;
  *(v7 + 104) = &protocol witness table for UInt;
  *(v7 + 64) = v12;
  *(v7 + 72) = a1;
  os_log(_:dso:log:_:_:)();

  result = [a3 delegate];
  if (result)
  {
    *&v14 = a1;
    [result installingTrainingAsset:a2 progress:v14];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100004628(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10000467C(char a1, uint64_t a2, void *a3, uint64_t (*a4)(void, uint64_t))
{
  static os_log_type_t.default.getter();
  v6 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10001B980;
  v8 = [a3 factor];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v7 + 56) = &type metadata for String;
  v12 = sub_100002D60();
  v13 = v12;
  *(v7 + 64) = v12;
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  if (!a2)
  {
    v16 = (v7 + 72);
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v12;
    goto LABEL_5;
  }

  swift_getErrorValue();
  v14 = Error.localizedDescription.getter();
  v16 = (v7 + 72);
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v13;
  if (!v15)
  {
LABEL_5:
    *v16 = 0x73736563637573;
    v15 = 0xE700000000000000;
    goto LABEL_6;
  }

  *v16 = v14;
LABEL_6:
  *(v7 + 80) = v15;
  os_log(_:dso:log:_:_:)();

  return a4(a1 & 1, a2);
}

uint64_t sub_10000480C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

id *sub_100004830(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002D18(&qword_1000294F0, &qword_10001BB10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 16));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100004938(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_100002D18(&qword_100029500, &qword_10001B9A8);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = v3[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (v3[6] + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (v3[6] + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v3[2] = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100004AE4(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));
  a1(*(v2 + 48));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100004B4C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  return sub_100004304(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t sub_100004B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004B74(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100004BB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004C2C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100004C98()
{
  result = qword_1000294F8;
  if (!qword_1000294F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000294F8);
  }

  return result;
}

uint64_t sub_100004CEC(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

NSString sub_100004D8C()
{

  return String._bridgeToObjectiveC()();
}

uint64_t type metadata accessor for TTSTrainingUAFAsset()
{
  result = qword_100029560;
  if (!qword_100029560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id *sub_100004E30(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  type metadata accessor for TTSTrainingUAFAsset();
  v12 = sub_1000062FC(a5, a1, a2, a3, a4, a6);
  v13 = sub_10000480C(v12);
  if (v13)
  {
    v14 = v13;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v14 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_100004B74(0, &qword_1000294C8, SiriTTSTrainingAsset_ptr);
      v16 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(v12 + 8 * v16 + 32);
        }

        ++v16;
        sub_100005CF4(v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v19 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v14 != v16);

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_100004F8C(void *a1, void *a2, const void *a3)
{
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  _Block_copy(a3);
  static os_log_type_t.default.getter();
  v8 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v9 = sub_10000BF6C();
  *(v9 + 16) = xmmword_10001B990;
  v34 = a1;
  v10 = [a1 factor];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000BEEC();

  *(v9 + 56) = &type metadata for String;
  v11 = sub_100002D60();
  sub_10000BF28(v11);
  sub_10000BEC8();

  if (qword_1000294A8 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  sub_100004808(qword_100029520);
  sub_10000BDAC();
  while (v3 != v4)
  {
    if (v33)
    {
      v8 = sub_10000BF84();
    }

    else
    {
      sub_10000BF1C();
      if (v12)
      {
        goto LABEL_38;
      }

      sub_10000BE38();
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      sub_10000BD8C();
      goto LABEL_2;
    }

    v14 = v8[2];
    v13 = v8[3];
    v15 = [v34 factor];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000BF10();

    if (v14 == v9 && v13 == v5)
    {
LABEL_30:
      v21 = v32;
      v22 = a2;

LABEL_32:
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v34;
      sub_10000BE10();
      v24 = swift_allocObject();
      v24[2] = v34;
      v24[3] = sub_10000238C;
      v24[4] = v21;
      v25 = v34;

      v26 = v22;

      sub_100008C58(sub_10000BD68, v23, sub_10000BD4C, v24);

      goto LABEL_33;
    }

    sub_10000BE1C();
    sub_10000BFB4();
    if (v9)
    {
LABEL_31:
      v21 = v32;
      v22 = a2;
      goto LABEL_32;
    }

    ++v4;
  }

  if (qword_1000294B0 != -1)
  {
    sub_10000BD6C();
  }

  sub_100004808(qword_100029528);
  sub_10000BDAC();
  while (v3 != v4)
  {
    if (v33)
    {
      v8 = sub_10000BF84();
    }

    else
    {
      sub_10000BF1C();
      if (v12)
      {
        goto LABEL_40;
      }

      sub_10000BE38();
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_39;
    }

    v17 = v8[2];
    v18 = v8[3];
    v19 = [v34 factor];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000BF10();

    if (v17 == v9 && v18 == v5)
    {
      goto LABEL_30;
    }

    sub_10000BE1C();
    sub_10000BFB4();
    if (v9)
    {
      goto LABEL_31;
    }

    ++v4;
  }

  v29 = sub_10000BE8C();
  v30(v29);
LABEL_33:

  sub_10000BF50();

  _Block_release(v27);
}

void SiriTTSTrainingAgent.uaf_install(trainingAsset:reply:)(void *a1, void (*a2)(void, void), uint64_t a3)
{
  static os_log_type_t.default.getter();
  v7 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v8 = sub_10000BF6C();
  *(v8 + 16) = xmmword_10001B990;
  v32 = a1;
  v9 = [a1 factor];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000BEEC();

  *(v8 + 56) = &type metadata for String;
  v10 = sub_100002D60();
  sub_10000BF28(v10);
  sub_10000BEC8();

  if (qword_1000294A8 != -1)
  {
    goto LABEL_40;
  }

LABEL_2:
  sub_100004808(qword_100029520);
  sub_10000BDAC();
  while (v3 != v4)
  {
    if (v31)
    {
      v7 = sub_10000BF84();
    }

    else
    {
      sub_10000BF1C();
      if (v11)
      {
        goto LABEL_37;
      }

      sub_10000BE38();
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_10000BD8C();
      goto LABEL_2;
    }

    v13 = v7[2];
    v12 = v7[3];
    v14 = [v32 factor];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000BF10();

    if (v13 == v8 && v12 == v5)
    {
LABEL_30:
      v21 = a2;
      v20 = a3;
      v22 = v28;

LABEL_32:
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v32;
      sub_10000BE10();
      v24 = swift_allocObject();
      v24[2] = v32;
      v24[3] = v21;
      v24[4] = v20;
      v25 = v32;

      v26 = v22;

      sub_100008C58(sub_10000A620, v23, sub_10000A628, v24);

      sub_10000BF50();

      return;
    }

    sub_10000BE1C();
    sub_10000BFB4();
    if (v8)
    {
LABEL_31:
      v21 = a2;
      v20 = a3;
      v22 = v28;
      goto LABEL_32;
    }

    ++v4;
  }

  if (qword_1000294B0 != -1)
  {
    sub_10000BD6C();
  }

  sub_100004808(qword_100029528);
  sub_10000BDAC();
  while (v3 != v4)
  {
    if (v31)
    {
      v7 = sub_10000BF84();
    }

    else
    {
      sub_10000BF1C();
      if (v11)
      {
        goto LABEL_39;
      }

      sub_10000BE38();
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_38;
    }

    v16 = v7[2];
    v17 = v7[3];
    v18 = [v32 factor];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000BF10();

    if (v16 == v8 && v17 == v5)
    {
      goto LABEL_30;
    }

    sub_10000BE1C();
    sub_10000BFB4();
    if (v8)
    {
      goto LABEL_31;
    }

    ++v4;
  }

  a2(0, 0);
  sub_10000BF50();
}

void sub_10000569C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000BF34();
  v27 = v26;
  v29 = v28;
  v51 = swift_allocObject();
  *(v51 + 16) = v27;
  _Block_copy(v27);
  static os_log_type_t.default.getter();
  v30 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v31 = sub_10000BF6C();
  *(v31 + 16) = xmmword_10001B990;
  v32 = [v29 factor];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000BEEC();

  *(v31 + 56) = &type metadata for String;
  v33 = sub_100002D60();
  sub_10000BF28(v33);
  sub_10000BEA4();

  if (qword_1000294A8 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v34 = qword_100029520;
  sub_100004808(qword_100029520);
  sub_10000BDC4();
  while (v32 != v24)
  {
    if (a11)
    {
      v30 = sub_10000BFE4();
    }

    else
    {
      if (v24 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      sub_10000BE54();
    }

    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      sub_10000BD8C();
      goto LABEL_2;
    }

    v35 = v30[2];
    v36 = v30[3];
    v37 = [v29 factor];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000BF04();

    if (v35 == v31 && v36 == v25)
    {
LABEL_30:
      v44 = v51;

LABEL_32:
      sub_10000BE10();
      v45 = swift_allocObject();
      v45[2] = v29;
      v45[3] = sub_100002330;
      v45[4] = v44;

      v46 = v29;

      sub_100009AC4(sub_10000BD48, v45);

      goto LABEL_33;
    }

    sub_10000BDD8();
    sub_10000BFCC();
    if (v31)
    {
LABEL_31:
      v44 = v51;
      goto LABEL_32;
    }

    ++v24;
  }

  if (qword_1000294B0 != -1)
  {
    sub_10000BD6C();
  }

  v39 = qword_100029528;
  sub_100004808(qword_100029528);
  sub_10000BDC4();
  while (v32 != v24)
  {
    if (a11)
    {
      v30 = sub_10000BFE4();
    }

    else
    {
      if (v24 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      sub_10000BE54();
    }

    if (__OFADD__(v24, 1))
    {
      goto LABEL_39;
    }

    v40 = v30[2];
    v41 = v30[3];
    v42 = [v29 factor];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000BF04();

    if (v40 == v31 && v41 == v25)
    {
      goto LABEL_30;
    }

    sub_10000BDD8();
    sub_10000BFCC();
    if (v31)
    {
      goto LABEL_31;
    }

    ++v24;
  }

  v49 = sub_10000BE8C();
  v50(v49);
LABEL_33:

  sub_10000BE70();

  _Block_release(v47);
}

void SiriTTSTrainingAgent.uaf_uninstall(trainingAsset:reply:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000BF34();
  v49 = v26;
  v50 = v27;
  v29 = v28;
  static os_log_type_t.default.getter();
  v30 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v31 = sub_10000BF6C();
  *(v31 + 16) = xmmword_10001B990;
  v51 = v29;
  v32 = [v29 factor];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000BEEC();

  *(v31 + 56) = &type metadata for String;
  v33 = sub_100002D60();
  sub_10000BF28(v33);
  sub_10000BEA4();

  if (qword_1000294A8 != -1)
  {
    goto LABEL_40;
  }

LABEL_2:
  v34 = qword_100029520;
  sub_100004808(qword_100029520);
  sub_10000BDC4();
  while (v32 != v24)
  {
    if (a11)
    {
      v30 = sub_10000BFE4();
    }

    else
    {
      if (v24 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      sub_10000BE54();
    }

    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_10000BD8C();
      goto LABEL_2;
    }

    v35 = v30[2];
    v36 = v30[3];
    v37 = [v51 factor];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000BF04();

    if (v35 == v31 && v36 == v25)
    {
LABEL_30:
      v45 = v49;
      v44 = v50;

LABEL_32:
      sub_10000BE10();
      v46 = swift_allocObject();
      v46[2] = v51;
      v46[3] = v45;
      v46[4] = v44;

      v47 = v51;

      sub_100009AC4(sub_10000A654, v46);

      sub_10000BE70();

      return;
    }

    sub_10000BDD8();
    sub_10000BFCC();
    if (v31)
    {
LABEL_31:
      v45 = v49;
      v44 = v50;
      goto LABEL_32;
    }

    ++v24;
  }

  if (qword_1000294B0 != -1)
  {
    sub_10000BD6C();
  }

  v39 = qword_100029528;
  sub_100004808(qword_100029528);
  sub_10000BDC4();
  while (v32 != v24)
  {
    if (a11)
    {
      v30 = sub_10000BFE4();
    }

    else
    {
      if (v24 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      sub_10000BE54();
    }

    if (__OFADD__(v24, 1))
    {
      goto LABEL_38;
    }

    v40 = v30[2];
    v41 = v30[3];
    v42 = [v51 factor];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000BF04();

    if (v40 == v31 && v41 == v25)
    {
      goto LABEL_30;
    }

    sub_10000BDD8();
    sub_10000BFCC();
    if (v31)
    {
      goto LABEL_31;
    }

    ++v24;
  }

  v49(0, 0);
  sub_10000BE70();
}

id sub_100005CF4(uint64_t a1)
{
  v2 = *(*(sub_100002D18(&unk_100029578, &qword_10001BA80) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = (a1 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_path);

  os_unfair_lock_lock(v10);
  v11 = sub_100002D18(&qword_100029658, &qword_10001BAA0);
  sub_10000A91C(v10 + *(v11 + 28), v7);
  os_unfair_lock_unlock(v10);
  sub_100002D18(&qword_100029710, &qword_10001BB78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B990;
  *(inited + 32) = 0x7A69537465737361;
  *(inited + 40) = 0xE900000000000065;
  v28 = *(a1 + 80);
  *(inited + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 56) = v13;
  v14 = Dictionary.init(dictionaryLiteral:)();
  if ((*(a1 + 96) & 1) == 0)
  {
    v28 = *(a1 + 88);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v14;
    sub_10000B370(v15, v17, 0x657A69536B736964, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v14 = v28;
  }

  if (*(a1 + 104))
  {

    v14 = sub_10000602C(v19, v14);
  }

  v20 = String._bridgeToObjectiveC()();

  sub_10000A91C(v7, v5);
  v21 = type metadata accessor for URL();
  if (sub_10000A98C(v5, 1, v21) == 1)
  {
    sub_10000B658(v5, &unk_100029578, &qword_10001BA80);
    v22 = 0;
  }

  else
  {
    URL.path.getter();
    (*(*(v21 - 8) + 8))(v5, v21);
    v22 = String._bridgeToObjectiveC()();
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_1000060B0(v14);

  v25 = sub_10000B8F0(v20, v22, v24, v23);

  sub_10000B658(v7, &unk_100029578, &qword_10001BA80);
  return v25;
}

uint64_t sub_10000602C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_10000AD9C(a1, sub_10000BA78, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

unint64_t sub_1000060B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002D18(&qword_100029728, &qword_10001BB90);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v25 = *v15;
    v26 = v15[1];

    swift_dynamicCast();
    sub_10000BB00(&v27, v29);
    sub_10000BB00(v29, v30);
    sub_10000BB00(v30, &v28);
    result = sub_10000AAD8(v14, v13);
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v2[7] + 32 * v16);
      sub_100001BC0(v20);
      result = sub_10000BB00(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = sub_10000BB00(&v28, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000062FC(uint64_t a1, unint64_t i, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v6) = a6;
  v12 = static os_log_type_t.default.getter();
  v13 = SiriTTSTrainerGetLog();
  v40 = v6;
  v41 = a4;
  if (os_log_type_enabled(v13, v12))
  {
    v6 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v6 = 134218754;
    *(v6 + 4) = a1;
    *(v6 + 12) = 2080;
    if (a3)
    {
      v14 = i;
    }

    else
    {
      v14 = 7104878;
    }

    if (a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_10000A070(v14, v15, v42);

    *(v6 + 14) = v16;
    *(v6 + 22) = 2080;
    if (a5)
    {
      v17 = v41;
    }

    else
    {
      v17 = 7104878;
    }

    if (a5)
    {
      v18 = a5;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_10000A070(v17, v18, v42);

    *(v6 + 24) = v19;
    *(v6 + 32) = 2080;
    v20 = 1702195828;
    if ((v40 & 1) == 0)
    {
      v20 = 0x65736C6166;
    }

    v21 = 0xE500000000000000;
    if (v40)
    {
      v21 = 0xE400000000000000;
    }

    if (v40 == 2)
    {
      v22 = 7104878;
    }

    else
    {
      v22 = v20;
    }

    if (v40 == 2)
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = v21;
    }

    v24 = sub_10000A070(v22, v23, v42);

    *(v6 + 34) = v24;
    a4 = v41;
    _os_log_impl(&_mh_execute_header, v13, v12, "#UAF list type:%ld language:%s mode:%s local:%s", v6, 0x2Au);
    swift_arrayDestroy();

    LODWORD(v6) = v40;
  }

  v25 = _swiftEmptyArrayStorage;
  if (a1 == 1)
  {
    if (qword_1000294B0 != -1)
    {
      swift_once();
    }

    v27 = &qword_100029528;
    goto LABEL_32;
  }

  v26 = _swiftEmptyArrayStorage;
  if (a1)
  {
    goto LABEL_33;
  }

  if (qword_1000294A8 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v27 = &qword_100029520;
LABEL_32:
    v26 = *v27;

LABEL_33:
    if (!a3)
    {
      break;
    }

    v39 = a5;
    v42[0] = i;
    v42[1] = a3;
    sub_100004C98();
    a3 = v42;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v30 = v29;
    v42[0] = v25;
    v31 = sub_100004808(v26);
    v6 = 0;
    i = v26 & 0xC000000000000001;
    a5 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v31 == v6)
      {

        v26 = v42[0];
        LODWORD(v6) = v40;
        a5 = v39;
        v25 = _swiftEmptyArrayStorage;
        goto LABEL_50;
      }

      if (i)
      {
        a4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        a4 = *(v26 + 8 * v6 + 32);
      }

      if (__OFADD__(v6, 1))
      {
        break;
      }

      v32 = *(a4 + 48) == v28 && *(a4 + 56) == v30;
      if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = *(v42[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a3 = v42;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
      a4 = v41;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
  }

LABEL_50:
  if (a5)
  {
    v42[0] = v25;
    v33 = sub_100004808(v26);
    v34 = 0;
    v6 = v26 & 0xC000000000000001;
    i = v26 & 0xFFFFFFFFFFFFFF8;
    while (v33 != v34)
    {
      if (v6)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v35 = *(v26 + 8 * v34 + 32);
      }

      if (__OFADD__(v34, 1))
      {
        goto LABEL_83;
      }

      v36 = *(v35 + 64) == a4 && *(v35 + 72) == a5;
      if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = *(v42[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a3 = v42;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v34;
    }

    v26 = v42[0];
    LODWORD(v6) = v40;
    v25 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for TTSTrainingUAFAsset();
  sub_100007574(v26);
  if (v6 != 2)
  {
    v42[0] = v25;
    a5 = sub_100004808(v26);
    for (i = 0; a5 != i; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

        v37 = *(v26 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_85;
      }

      a3 = v37;
      if ((sub_100008694() ^ v6))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = *(v42[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a3 = v42;
        specialized ContiguousArray._endMutation()();
      }
    }

    return v42[0];
  }

  return v26;
}

id sub_1000068F0(void *a1, uint64_t a2, double a3)
{
  result = [a1 delegate];
  if (result)
  {
    *&v6 = a3;
    [result installingTrainingAsset:a2 progress:v6];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100006970(uint64_t a1, void *a2, uint64_t (*a3)(BOOL, uint64_t))
{
  static os_log_type_t.default.getter();
  v5 = SiriTTSTrainerGetLog();
  sub_100002D18(&qword_1000294D8, &qword_10001B9F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10001B980;
  v7 = [a2 factor];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 56) = &type metadata for String;
  v11 = sub_100002D60();
  v12 = v11;
  *(v6 + 64) = v11;
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  if (!a1)
  {
    v15 = (v6 + 72);
    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v11;
    goto LABEL_5;
  }

  swift_getErrorValue();
  v13 = Error.localizedDescription.getter();
  v15 = (v6 + 72);
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v12;
  if (!v14)
  {
LABEL_5:
    *v15 = 0x73736563637573;
    v14 = 0xE700000000000000;
    goto LABEL_6;
  }

  *v15 = v13;
LABEL_6:
  *(v6 + 80) = v14;
  os_log(_:dso:log:_:_:)();

  return a3(a1 == 0, a1);
}

id sub_100006AFC()
{
  sub_100004B74(0, &qword_1000296B8, NSBundle_ptr);
  result = sub_100006B60();
  if (result)
  {
    qword_100029CE0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100006B60()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier:v0];

  return v1;
}

void sub_100006BC4()
{
  sub_10000BF34();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_100004C98();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = v6[2];
  if (v7 < 5)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 == 5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 >= 7)
  {
    v9 = v6[12];
    v8 = v6[13];
    v11 = v6[14];
    v10 = v6[15];
    v13 = v6[16];
    v12 = v6[17];

    *v5 = v3;
    v5[1] = v1;
    v5[2] = v9;
    v5[3] = v8;
    v5[4] = v11;
    v5[5] = v10;
    v5[6] = v13;
    v5[7] = v12;
    sub_10000BE70();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100006C98()
{
  sub_100002D18(&qword_100029710, &qword_10001BB78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B980;
  v2 = *(v0 + 32);
  v10 = *(v0 + 16);
  v3 = v10;
  v11 = v2;
  *(inited + 48) = v2;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000100019AE0;
  v9 = v3;
  sub_10000BA1C(&v11, v8);
  sub_10000BA1C(&v10, v8);
  v4._countAndFlagsBits = 0x65646F6D2ELL;
  v4._object = 0xE500000000000000;
  String.append(_:)(v4);
  v5 = *(&v9 + 1);
  *(inited + 64) = v9;
  *(inited + 72) = v5;
  v6 = *(v0 + 56);
  *(inited + 80) = *(v0 + 48);
  *(inited + 88) = v6;

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100006D80(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  v49 = a1;
  v50 = a2;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100002D18(&unk_100029578, &qword_10001BA80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v41 - v14;
  *(v3 + 104) = 0;
  v16 = (v3 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_path);
  v17 = type metadata accessor for URL();
  sub_10000AAB0(v15, 1, 1, v17);
  *v16 = 0;
  v18 = *(sub_100002D18(&qword_100029658, &qword_10001BAA0) + 28);
  v19 = sub_100002D18(&qword_100029678, &qword_10001BB28);
  bzero(v16 + v18, *(*(v19 - 8) + 64));
  v42 = v18;
  v43 = v16;
  sub_10000B5E8(v15, v16 + v18);
  v20 = v3 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_isDirty;
  *v20 = 0;
  *(v20 + 4) = 1;
  v44 = OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_progressQueue;
  sub_100004B74(0, &qword_100029680, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  *&v51[0] = _swiftEmptyArrayStorage;
  sub_10000B7EC(&qword_100029688, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002D18(&qword_100029690, &qword_10001BB30);
  sub_10000B834(&qword_100029698, &qword_100029690, &qword_10001BB30);
  v21 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v46 + 104))(v45, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v47);
  v22 = v44;
  *(v3 + v22) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = sub_1000072C0(0x7A69537465737361, 0xE900000000000065, v21);
  if (v24)
  {
    v26 = v49;
    v25 = v50;

    v27 = static os_log_type_t.default.getter();
    v28 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v51[0] = v30;
      *v29 = 136315138;
      v31 = sub_10000A070(v26, v25, v51);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v28, v27, "Unavailable UAF asset for that device %s.", v29, 0xCu);
      sub_100001BC0(v30);
    }

    else
    {
    }

    v37 = *(v4 + 104);

    sub_10000B658(v43 + v42, &unk_100029578, &qword_10001BA80);

    type metadata accessor for TTSTrainingUAFAsset();
    v38 = *(*v4 + 48);
    v39 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v3 + 80) = v23;
    v32 = sub_1000072C0(0x657A69536B736964, 0xE800000000000000, v21);
    v34 = v33;

    *(v4 + 88) = v32;
    *(v4 + 96) = v34 & 1;
    sub_100006BC4();
    v35 = v51[1];
    *(v4 + 16) = v51[0];
    *(v4 + 32) = v35;
    v36 = v51[3];
    *(v4 + 48) = v51[2];
    *(v4 + 64) = v36;
  }

  return v4;
}

uint64_t sub_1000072C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000294A0 != -1)
  {
    swift_once();
  }

  v6 = sub_100007478(1, qword_100029518);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    v10 = a1;

    v7._countAndFlagsBits = 0x6267385F3331682DLL;
    v7._object = 0xE800000000000000;
    String.append(_:)(v7);
    sub_1000074C8(a1, a2, a3, &v11);

    if (v12)
    {
      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
      sub_10000B658(&v11, &qword_1000296A0, &qword_10001BB38);
    }
  }

  v10 = a1;

  v8._countAndFlagsBits = 0x636972656E65672DLL;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  sub_1000074C8(a1, a2, a3, &v11);

  if (v12)
  {
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    sub_10000B658(&v11, &qword_1000296A0, &qword_10001BB38);
  }

  return 0;
}

uint64_t sub_100007478(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_10000AB50(a1 & 1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

double sub_1000074C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10000AAD8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000AA54(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_10000752C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10000AAD8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void sub_100007574(uint64_t a1)
{
  type metadata accessor for TTSTrainingUAFAsset();
  sub_100007B5C();
  *&v18[0] = _swiftEmptyArrayStorage;
  v3 = sub_100004808(a1);
  v4 = a1 & 0xC000000000000001;
  for (i = 0; v3 != i; ++i)
  {
    if (v4)
    {
      v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v1 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
      v12 = v11[2];
      v18[0] = v11[1];
      v18[1] = v12;
      v13 = v11[4];
      v18[2] = v11[3];
      v18[3] = v13;
      sub_10000B888(v18, v17);

      sub_100006C98();
      sub_10000B8C0(v18);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v15 = [i retrieveAssetSet:v1 usages:isa];

      if (!v15)
      {

        return;
      }

LABEL_24:
      v16 = v15;
      for (i = 0; v3 != i; ++i)
      {
        if (v4)
        {
          v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(a1 + 16))
          {
            goto LABEL_37;
          }

          v1 = *(a1 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_36;
        }

        v17[0] = v1;
        sub_100007FB0(v17, a1, v16);
      }

      return;
    }

    v6 = &v1[OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_isDirty];
    os_unfair_lock_lock(&v1[OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_isDirty]);
    os_unfair_lock_opaque = v6[1]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v6);
    if (os_unfair_lock_opaque)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = *(*&v18[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  a1 = *&v18[0];
  v9 = sub_100004808(*&v18[0]);
  if (v9)
  {
    v3 = v9;
    v10 = sub_10000480C(*&v18[0]);
    i = [objc_opt_self() sharedManager];
    v1 = String._bridgeToObjectiveC()();
    if (v10 == 1)
    {
      v4 = *&v18[0] & 0xC000000000000001;
      if ((*&v18[0] & 0xC000000000000001) != 0)
      {
        goto LABEL_38;
      }

      if (*((*&v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(*&v18[0] + 32);

        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      v15 = [i retrieveAssetSet:v1 usages:0];

      if (v15)
      {
        v4 = *&v18[0] & 0xC000000000000001;
        goto LABEL_24;
      }
    }

    __break(1u);
    return;
  }
}

uint64_t sub_1000078E8()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100004B74(0, &qword_100029680, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10000B7EC(&qword_100029688, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002D18(&qword_100029690, &qword_10001BB30);
  sub_10000B834(&qword_100029698, &qword_100029690, &qword_10001BB30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100029CE8 = result;
  return result;
}

void sub_100007B5C()
{
  if (qword_100029498 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100029508);
  sub_100007BEC(&qword_100029510, v0);

  os_unfair_lock_unlock(&dword_100029508);
}

void sub_100007BEC(void *a1, uint64_t a2)
{
  if (!*a1)
  {
    v4 = [objc_opt_self() sharedManager];
    v5 = String._bridgeToObjectiveC()();
    if (qword_100029490 != -1)
    {
      swift_once();
    }

    v6 = qword_100029CE8;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v10[4] = sub_10000BA14;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10000BD2C;
    v10[3] = &unk_100025130;
    v8 = _Block_copy(v10);

    v9 = [v4 observeAssetSet:v5 queue:v6 handler:v8];
    _Block_release(v8);

    *a1 = v9;
  }
}

uint64_t sub_100007D74()
{
  static os_log_type_t.info.getter();
  v0 = SiriTTSTrainerGetLog();
  os_log(_:dso:log:_:_:)();

  if (qword_1000294A8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v1 = qword_100029520;
  v2 = sub_100004808(qword_100029520);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v5 = v4 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_isDirty;
    os_unfair_lock_lock((v4 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_isDirty));
    *(v5 + 4) = 1;
    os_unfair_lock_unlock(v5);
  }

  if (qword_1000294B0 != -1)
  {
    swift_once();
  }

  v6 = qword_100029528;
  v7 = sub_100004808(qword_100029528);
  for (j = 0; v7 != j; ++j)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v9 = *(v6 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_25;
    }

    v10 = v9 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_isDirty;
    os_unfair_lock_lock((v9 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_isDirty));
    *(v10 + 4) = 1;
    os_unfair_lock_unlock(v10);
  }

  return notify_post("com.apple.SiriTTSTrainingAgent.notification.asset-update");
}

void sub_100007FB0(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  if (sub_10000480C(a2) == 1)
  {
    v6 = sub_10000B984(a3);
    if (!v6)
    {
      goto LABEL_4;
    }

    v7 = v6;
    String.append(_:)(*(v5 + 32));
    v8 = sub_10000752C(0xD000000000000013, 0x8000000100019A40, v7);

    if (!v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    String.append(_:)(*(v5 + 32));
    v13 = String._bridgeToObjectiveC()();

    v21 = *(v5 + 16);
    v22 = *(v5 + 32);
    v23 = *(v5 + 48);
    v24 = *(v5 + 64);
    sub_100006C98();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = [a3 assetNamed:v13 withUsage:{isa, v21, v22, v23, v24}];

    if (!v8)
    {
LABEL_4:
      v9 = (v5 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_path);
      os_unfair_lock_lock((v5 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_path));
      v10 = *(sub_100002D18(&qword_100029658, &qword_10001BAA0) + 28);
      sub_10000B658(v9 + v10, &unk_100029578, &qword_10001BA80);
      v11 = type metadata accessor for URL();
      sub_10000AAB0(v9 + v10, 1, 1, v11);
      os_unfair_lock_unlock(v9);
      v12 = 0;
LABEL_8:
      v20 = v5 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_isDirty;
      os_unfair_lock_lock((v5 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_isDirty));
      *(v20 + 4) = 0;
      os_unfair_lock_unlock(v20);

      return;
    }
  }

  v12 = v8;
  v15 = [v12 metadata];
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *(v5 + 104);
  *(v5 + 104) = v16;

  v18 = (v5 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_path);
  os_unfair_lock_lock((v5 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_path));
  v19 = sub_100002D18(&qword_100029658, &qword_10001BAA0);
  sub_100008250(v18 + *(v19 + 28), v12);
  if (!v3)
  {
    os_unfair_lock_unlock(v18);

    goto LABEL_8;
  }

  os_unfair_lock_unlock(v18);
  __break(1u);
}

uint64_t sub_100008250(uint64_t a1, void *a2)
{
  v4 = sub_100002D18(&unk_100029578, &qword_10001BA80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  sub_10000B658(a1, &unk_100029578, &qword_10001BA80);
  v8 = [a2 location];
  if (v8)
  {
    v9 = v8;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for URL();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = 1;
  }

  sub_10000AAB0(v7, v11, 1, v10);
  return sub_10000B5E8(v7, a1);
}

uint64_t sub_100008358()
{
  result = sub_100008378();
  qword_100029518 = result;
  return result;
}

uint64_t sub_100008378()
{
  sub_100002D18(&qword_1000296A8, &qword_10001BB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B980;
  *(inited + 32) = 256;
  *(inited + 34) = 1;
  if (static MobileGestalt.isVirtualDevice.getter() & 1) != 0 || (static MobileGestalt.isNaturalDevice.getter() & 1) == 0 || (static MobileGestalt.isAppleTV.getter() & 1) != 0 || (static MobileGestalt.isAppleHomePod.getter() & 1) != 0 || (static MobileGestalt.isAppleWatch.getter())
  {
    v1 = 0;
  }

  else
  {
    v1 = static MobileGestalt.isAppleVision.getter() ^ 1;
  }

  *(inited + 35) = v1 & 1;
  sub_10000B6B8();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100008438(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100024AD0, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000848C(char a1)
{
  if (a1)
  {
    return 0x6267385F333168;
  }

  else
  {
    return 0x636972656E6567;
  }
}

uint64_t sub_1000084C8(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x6267385F333168;
  }

  else
  {
    v2 = 0x636972656E6567;
  }

  if (a2)
  {
    v3 = 0x6267385F333168;
  }

  else
  {
    v3 = 0x636972656E6567;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_100008564()
{
  String.hash(into:)();
}

Swift::Int sub_1000085C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100008638@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100008438(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100008668@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000848C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_100008694()
{
  v1 = sub_100002D18(&unk_100029578, &qword_10001BA80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = (v0 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_path);
  os_unfair_lock_lock(v5);
  v6 = sub_100002D18(&qword_100029658, &qword_10001BAA0);
  sub_10000A91C(v5 + *(v6 + 28), v4);
  v7 = type metadata accessor for URL();
  v8 = sub_10000A98C(v4, 1, v7) != 1;
  sub_10000B658(v4, &unk_100029578, &qword_10001BA80);
  os_unfair_lock_unlock(v5);
  return v8;
}

uint64_t sub_10000878C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  if (qword_100029488 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = sub_10000B510(a1, a2, 0x7473696C70, 0xE500000000000000, qword_100029CE0);
    if (!v12)
    {
      __break(1u);
    }

    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v11, v9, v4);
    v14 = Data.init(contentsOf:options:)();
    v16 = v15;
    v39 = v11;
    v40 = v5;
    v41 = v4;
    v17 = objc_opt_self();
    v37 = v16;
    v38 = v14;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v44[0] = 0;
    v9 = [v17 propertyListWithData:isa options:0 format:0 error:v44];

    v19 = v44[0];
    if (!v9)
    {
      break;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000AA54(v44, v43);
    sub_100002D18(&qword_100029670, &qword_10001BB20);
    swift_dynamicCast();
    a1 = v42;
    v20 = _swiftEmptyArrayStorage;
    v43[0] = _swiftEmptyArrayStorage;
    a2 = v42 + 64;
    v21 = 1 << *(v42 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v4 = v22 & *(v42 + 64);
    v11 = ((v21 + 63) >> 6);

    v5 = 0;
    while (v4)
    {
LABEL_12:
      v24 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v25 = v24 | (v5 << 6);
      v26 = (*(a1 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(*(a1 + 56) + 8 * v25);
      v30 = type metadata accessor for TTSTrainingUAFAsset();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      v33 = swift_allocObject();

      v34 = v27;
      v9 = v33;
      if (sub_100006D80(v34, v28, v29))
      {
        v9 = v43;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v20 = v43[0];
      }
    }

    while (1)
    {
      v23 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v23 >= v11)
      {

        sub_10000B590(v38, v37);
        sub_100001BC0(v44);
        (*(v40 + 8))(v39, v41);

        return v20;
      }

      v4 = *(a2 + 8 * v23);
      ++v5;
      if (v4)
      {
        v5 = v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v36 = v19;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_100008BB8()
{
  type metadata accessor for TTSTrainingUAFAsset();
  result = sub_10000878C(0x6172547465737341, 0xED0000676E696E69);
  qword_100029520 = result;
  return result;
}

uint64_t sub_100008C0C()
{
  type metadata accessor for TTSTrainingUAFAsset();
  result = sub_10000878C(0xD000000000000013, 0x8000000100019940);
  qword_100029528 = result;
  return result;
}

void sub_100008C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = *v4;
  v9 = static os_log_type_t.default.getter();
  v10 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    *&v35[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10000A070(v5[2], v5[3], v35);
    *(v11 + 12) = 2080;
    v12 = sub_10000BEF8();
    *(v11 + 14) = sub_10000A070(v12, v13, v14);
    _os_log_impl(&_mh_execute_header, v10, v9, "#UAF updating %s subscription for %s", v11, 0x16u);
    swift_arrayDestroy();
    sub_10000BF9C();
    sub_10000BF9C();
  }

  v15 = v5[2];
  v16 = v5[3];
  sub_100002D18(&qword_1000296C0, &qword_10001BB48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B990;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000001000199F0;
  v18 = *(v5 + 2);
  v35[0] = *(v5 + 1);
  v35[1] = v18;
  v19 = *(v5 + 4);
  v35[2] = *(v5 + 3);
  v35[3] = v19;

  *(inited + 48) = sub_100006C98();
  sub_100002D18(&qword_1000296C8, &qword_10001BB50);
  v20 = Dictionary.init(dictionaryLiteral:)();
  v21 = objc_allocWithZone(UAFAssetSetSubscription);
  v22 = sub_100009F34(v15, v16, v20, 0);
  if (v22)
  {
    v23 = v22;
    v24 = [objc_opt_self() sharedManager];
    sub_10000BEF8();
    v25 = String._bridgeToObjectiveC()();
    sub_100002D18(&qword_1000296D0, &qword_10001BB58);
    sub_10000BE10();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10001B9B0;
    *(v26 + 32) = v23;
    sub_100004B74(0, &qword_1000296D8, UAFAssetSetSubscription_ptr);
    v31 = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v28 = swift_allocObject();
    v28[2] = v5;
    v28[3] = a3;
    v28[4] = a4;
    v28[5] = a1;
    v28[6] = a2;
    v28[7] = v32;
    aBlock[4] = sub_10000B764;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_10000BDFC();
    aBlock[2] = v29;
    aBlock[3] = &unk_100024FF0;
    v30 = _Block_copy(aBlock);

    sub_10000B774(a3);
    sub_10000B774(a1);

    [v24 subscribe:v25 subscriptions:isa queue:0 completion:v30];
    _Block_release(v30);
  }

  else
  {
    __break(1u);
  }
}

void sub_100009028(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_100008694() || a1)
  {
    if (a3)
    {
      a3(a1);
    }
  }

  else
  {
    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v14._countAndFlagsBits = 0xD000000000000022;
    v14._object = 0x8000000100019740;
    if (String.hasPrefix(_:)(v14) || (type metadata accessor for InternalSettings(), static InternalSettings.shared.getter(), v15 = dispatch thunk of InternalSettings.defaultToNonDiscretionaryDownloads.getter(), , v16 = 0, (v15 & 1) != 0))
    {
      sub_100002D18(&qword_1000294F0, &qword_10001BB10);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10001B990;
      *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v16 + 40) = v17;
    }

    v27 = [objc_opt_self() sharedManager];
    sub_100002D18(&qword_1000296E0, &qword_10001BB60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10001B990;
    *(inited + 32) = 0xD00000000000001ELL;
    *(inited + 40) = 0x80000001000198E0;
    sub_100002D18(&qword_1000294F0, &qword_10001BB10);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10001B990;
    *(v19 + 32) = v13;
    *(v19 + 40) = v12;
    *(inited + 48) = v19;

    sub_100002D18(&qword_1000296E8, &qword_10001BB68);
    Dictionary.init(dictionaryLiteral:)();
    v26.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (v16)
    {
      v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v20.super.isa = 0;
    }

    if (qword_100029490 != -1)
    {
      swift_once();
    }

    v25 = qword_100029CE8;
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a5;
    v21[4] = a6;
    v32 = sub_10000B784;
    v33 = v21;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100009570;
    v31 = &unk_100025040;
    v22 = _Block_copy(&aBlock);

    sub_10000B774(a5);

    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = a4;
    v32 = sub_10000B790;
    v33 = v23;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_10000BD2C;
    v31 = &unk_100025090;
    v24 = _Block_copy(&aBlock);

    sub_10000B774(a3);

    [v27 updateAssetsForSubscribers:v26.super.isa policies:v20.super.isa queue:v25 detailedProgress:v22 completion:v24];
    _Block_release(v24);
    _Block_release(v22);
  }
}

void sub_100009438(void *a1, uint64_t a2, void (*a3)(double))
{
  [a1 completedPercent];
  v6 = v5 / 100.0;
  v7 = static os_log_type_t.info.getter();
  v8 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_10000A070(*(a2 + 16), *(a2 + 24), &v11);
    *(v9 + 12) = 2048;
    *(v9 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v8, v7, "#UAF download %s progress %f", v9, 0x16u);
    sub_100001BC0(v10);
  }

  if (a3)
  {
    a3(v6);
  }
}

void sub_100009570(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000095D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static os_log_type_t.default.getter();
  v16 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v24 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10000A070(*(a1 + 16), *(a1 + 24), aBlock);
    _os_log_impl(&_mh_execute_header, v16, v15, "#UAF download %s completion", v18, 0xCu);
    sub_100001BC0(v19);

    v7 = v24;
  }

  v20 = *(a1 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_progressQueue);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  aBlock[4] = sub_10000B7E0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BD2C;
  aBlock[3] = &unk_1000250E0;
  v22 = _Block_copy(aBlock);

  sub_10000B774(a2);
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10000B7EC(&qword_1000296F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D18(&qword_1000296F8, &qword_10001BB70);
  sub_10000B834(&qword_100029700, &qword_1000296F8, &qword_10001BB70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v7 + 8))(v10, v6);
  (*(v25 + 8))(v14, v26);
}

uint64_t sub_100009968(uint64_t a1, uint64_t (*a2)(void))
{
  result = sub_100008694();
  if ((result & 1) == 0)
  {
    type metadata accessor for TTSTrainingUAFAsset();
    sub_100002D18(&qword_1000296D0, &qword_10001BB58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10001B9B0;
    *(inited + 32) = a1;

    sub_100007574(inited);
    swift_setDeallocating();
    result = sub_10000A028();
  }

  if (a2)
  {
    return a2(0);
  }

  return result;
}

uint64_t sub_100009A14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100009A58(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100009AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = static os_log_type_t.default.getter();
  v7 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_10000A070(*(v3 + 16), *(v3 + 24), v19);
    *(v8 + 12) = 2080;
    v9 = sub_10000BEF8();
    *(v8 + 14) = sub_10000A070(v9, 0x80000001000198E0, v10);
    _os_log_impl(&_mh_execute_header, v7, v6, "#UAF removing %s subscriptions for %s", v8, 0x16u);
    swift_arrayDestroy();
    sub_10000BF9C();
    sub_10000BF9C();
  }

  else
  {
  }

  v11 = [objc_opt_self() sharedManager];
  sub_10000BEF8();
  v12 = String._bridgeToObjectiveC()();
  sub_100002D18(&qword_1000294F0, &qword_10001BB10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10001B990;
  v14 = *(v3 + 24);
  *(v13 + 32) = *(v3 + 16);
  *(v13 + 40) = v14;

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10000BE10();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v19[4] = sub_10000AA30;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  sub_10000BDFC();
  v19[2] = v17;
  v19[3] = &unk_100024FA0;
  v18 = _Block_copy(v19);

  sub_10000B774(a1);

  [v11 unsubscribe:v12 subscriptionNames:isa queue:0 completion:v18];
  _Block_release(v18);
}

void sub_100009D54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = (a2 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_path);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_path));
  v7 = *(sub_100002D18(&qword_100029658, &qword_10001BAA0) + 28);
  sub_10000B658(v6 + v7, &unk_100029578, &qword_10001BA80);
  v8 = type metadata accessor for URL();
  sub_10000AAB0(v6 + v7, 1, 1, v8);
  os_unfair_lock_unlock(v6);
  v9 = a2 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_isDirty;
  os_unfair_lock_lock(v9);
  *(v9 + 4) = 1;
  os_unfair_lock_unlock(v9);
  if (a3)
  {
    a3(a1);
  }
}

void *sub_100009E34()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];

  v5 = v0[13];

  v6 = v0 + OBJC_IVAR____TtC20SiriTTSTrainingAgent19TTSTrainingUAFAsset_path;
  v7 = sub_100002D18(&qword_100029658, &qword_10001BAA0);
  sub_10000B658(&v6[*(v7 + 28)], &unk_100029578, &qword_10001BA80);

  return v0;
}

uint64_t sub_100009EDC()
{
  sub_100009E34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

id sub_100009F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (!a3)
  {
    v8.super.isa = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9.super.isa = 0;
    goto LABEL_6;
  }

  sub_100002D18(&qword_1000296C8, &qword_10001BB50);
  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v10 = [v4 initWithName:v7 assetSets:v8.super.isa usageAliases:v9.super.isa];

  return v10;
}

uint64_t sub_10000A028()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10000A070(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000A134(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000AA54(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100001BC0(v11);
  return v7;
}

unint64_t sub_10000A134(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000A234(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

id *sub_10000A234(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000A280(a1, a2);
  sub_10000A398(&off_100024A78);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

id *sub_10000A280(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000A47C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000A398(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_10000A4EC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *sub_10000A47C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100002D18(&qword_100029668, &qword_10001BB18);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

id *sub_10000A4EC(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002D18(&qword_100029668, &qword_10001BB18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000A5E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000A688()
{
  sub_10000A75C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000A75C()
{
  if (!qword_100029570)
  {
    sub_10000A7C0(&unk_100029578, &qword_10001BA80);
    v0 = type metadata accessor for Mutex();
    if (!v1)
    {
      atomic_store(v0, &qword_100029570);
    }
  }
}

uint64_t sub_10000A7C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_10000A808()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100002D18(&qword_100029658, &qword_10001BAA0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10000A838()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100002D18(&qword_100029660, &qword_10001BAA8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

__n128 sub_10000A868(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000A87C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_10000A8BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000A91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D18(&unk_100029578, &qword_10001BA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A9B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A9F0()
{
  v1 = *(v0 + 32);

  sub_10000BE10();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10000AA3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000AA54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000AAD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000ABE0(a1, a2, v6);
}

unint64_t sub_10000AB50(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1000085C4();

  return sub_10000AC94(a1 & 1, v4);
}

uint64_t sub_10000AB94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

unint64_t sub_10000ABE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10000AC94(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6267385F333168;
    }

    else
    {
      v6 = 0x636972656E6567;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x6267385F333168 : 0x636972656E6567;
      if (v7 == v6)
      {
        break;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

uint64_t sub_10000AD9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  sub_10000BABC(a1, a2, a3, v53);
  v6 = v53[1];
  v7 = v53[3];
  v8 = v53[4];
  v45 = v53[5];
  v46 = v53[0];
  v9 = (v53[2] + 64) >> 6;

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v52[0] = v14;
      v52[1] = v15;
      v52[2] = v17;
      v52[3] = v18;

      v45(&v48, v52);

      v19 = v48;
      v20 = v49;
      v21 = v50;
      v22 = v51;
      v23 = *v54;
      v25 = sub_10000AAD8(v48, v49);
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if ((v47 & 1) == 0)
        {
          sub_100002D18(&qword_100029718, &qword_10001BB80);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v30 = v54;
        sub_10000B058(v28, v47 & 1);
        v31 = *v30;
        v32 = sub_10000AAD8(v19, v20);
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v8 &= v8 - 1;
      v34 = *v54;
      if (v29)
      {

        v35 = (v34[7] + 16 * v25);
        v36 = v35[1];
        *v35 = v21;
        v35[1] = v22;
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v34[6] + 16 * v25);
        *v37 = v19;
        v37[1] = v20;
        v38 = (v34[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v34[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v34[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_10000BAF8();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10000B058(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002D18(&qword_100029720, &qword_10001BB88);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_10000B30C(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10000B30C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10001B9C0;
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

uint64_t sub_10000B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000AAD8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_100002D18(&qword_100029718, &qword_10001BB80);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_10000AAD8(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_10000B4C4(v18, a3, a4, a1, a2, v23);
  }
}

unint64_t sub_10000B4C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

id sub_10000B510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_10000B590(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000B5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D18(&unk_100029578, &qword_10001BA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B658(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000B6B8()
{
  result = qword_1000296B0;
  if (!qword_1000296B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000296B0);
  }

  return result;
}

uint64_t sub_10000B70C()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  if (v0[5])
  {
    v3 = v0[6];
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000B774(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000B79C()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  sub_10000BE10();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10000B7EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000B834(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A7C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10000B8F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [a4 initWithFactor:a1 path:a2 metadata:isa];

  return v8;
}

uint64_t sub_10000B984(void *a1)
{
  v1 = [a1 assets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100004B74(0, &qword_100029708, UAFAsset_ptr);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000BA78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10000AB94(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_10000BABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

_OWORD *sub_10000BB00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t getEnumTagSinglePayload for TTSTrainingUAFAsset.assetDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TTSTrainingUAFAsset.assetDeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000BC70);
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000BCC0()
{
  result = qword_100029730;
  if (!qword_100029730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029730);
  }

  return result;
}

uint64_t sub_10000BD6C()
{

  return swift_once();
}

uint64_t sub_10000BD8C()
{

  return swift_once();
}

uint64_t sub_10000BDD8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000BE1C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000BE38()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t sub_10000BE54()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t sub_10000BEA4()
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10000BEC8()
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10000BF28(uint64_t result)
{
  v1[8] = result;
  v1[4] = v2;
  v1[5] = v3;
  return result;
}

uint64_t sub_10000BF6C()
{

  return swift_allocObject();
}

uint64_t sub_10000BF84()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t sub_10000BF9C()
{
}

uint64_t sub_10000BFB4()
{
}

uint64_t sub_10000BFCC()
{
}

uint64_t sub_10000BFE4()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

void sub_10000C470(id a1)
{
  qword_100029C80 = objc_alloc_init(STTCoreAnalyticsService);

  _objc_release_x1();
}

void sub_10000C4AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = v6;
    v9 = AnalyticsSendEventLazy();
    v10 = SiriTTSTrainerGetLog();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = v5;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reported event '%@' with payload '%@'", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unable to report event '%@' with payload '%@'", buf, 0x16u);
    }
  }
}

void sub_10000CB6C()
{
  v0 = os_log_create("com.apple.siri.tts.trainer", "default");
  bzero(v3, 0x400uLL);
  if ((!_set_user_dir_suffix() || !confstr(65537, v3, 0x400uLL)) && os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = *__error();
    v2[0] = 67109120;
    v2[1] = v1;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "failed to initialize temporary directory: %{darwin.errno}d", v2, 8u);
  }
}

void sub_10000CE4C(id a1)
{
  v1 = +[NSFileManager defaultManager];
  v2 = [v1 URLsForDirectory:5 inDomains:1];

  v3 = [v2 firstObject];
  v4 = [v3 URLByAppendingPathComponent:@"Logs"];
  v5 = [v4 URLByAppendingPathComponent:@"SiriTTSTrainer"];

  v16 = 1;
  v6 = +[NSFileManager defaultManager];
  v7 = [v5 relativePath];
  v8 = [v6 fileExistsAtPath:v7 isDirectory:&v16];

  if ((v8 & 1) == 0)
  {
    v9 = +[NSFileManager defaultManager];
    v15 = 0;
    v10 = [v9 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v15];
    v11 = v15;

    if ((v10 & 1) == 0)
    {
      v12 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to create log directory, %@", buf, 0xCu);
      }
    }
  }

  v13 = [v5 relativePath];
  v14 = off_100029738;
  off_100029738 = v13;
}

void sub_10000D024(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100029C98 = v1 / v2 / 1000000000.0;
}

void sub_10000D2D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to collect tailspin, %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dumped tailspin to %@", &v8, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_10000D570(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v5 = NSLocalizedDescriptionKey;
    v6 = @"Unable to dump tailspin";
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    v3 = [NSError errorWithDomain:&stru_1000257B8 code:-1 userInfo:v4];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000DBD8(id a1)
{
  v1 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Invalidated connection", v2, 2u);
  }
}

id sub_10000E02C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (![v7 length])
    {
      v9 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "missing locale to download asset", buf, 2u);
      }
    }

    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = sub_10001076C;
    v22 = sub_10001077C;
    v23 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100010784;
    v12[3] = &unk_1000253D8;
    v16 = buf;
    v13 = v7;
    v17 = a4;
    v14 = v8;
    v15 = a1;
    [a1 installedTrainingAssetsForLanguage:v13 name:v14 type:a4 reply:v12];
    v10 = *(v19 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10000E2EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 count])
  {
    v26 = NSLocalizedDescriptionKey;
    v27 = @"No asset available";
    v14 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.SiriTTSTrainingAgent" code:1 userInfo:v14];

    (*(*(a1 + 32) + 16))();
LABEL_8:

    goto LABEL_9;
  }

  v4 = [v3 firstObject];
  v5 = [v4 qualityVersion];
  v6 = [v5 intValue];

  if (!v6)
  {
    v16 = *(a1 + 32);
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Asset has no version information";
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.SiriTTSTrainingAgent" code:1 userInfo:v15];
    (*(v16 + 16))(v16, v17, 0);

    goto LABEL_8;
  }

  v7 = [v3 firstObject];
  v8 = [v7 contentVersion];
  v9 = [v8 intValue];

  v10 = [v3 firstObject];
  v11 = [v10 compatibilityVersion];
  v12 = [v11 intValue];

  v13 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v19 = v9;
    v20 = 2048;
    v21 = v12;
    v22 = 2048;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "contentVersion=%ld, compatibilityVersion=%ld, assetQualityVersion=%ld", &v18, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_9:
}

void sub_10000EF00(uint64_t a1)
{
  v2 = os_transaction_create();
  sub_10000EF68(*(a1 + 32), *(a1 + 40));
}

void sub_10000EF68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if ([*(a1 + 64) tryLock])
    {
      getpid();
      if (proc_set_cpumon_params())
      {
        v4 = SiriTTSTrainerGetLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *v55 = 100;
          *&v55[4] = 1024;
          *&v55[6] = 36000;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to set cpumon limit, percentage: %d, interval: %d", buf, 0xEu);
        }
      }

      v5 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "trainingSession", buf, 2u);
      }

      if (v3)
      {
        v7 = +[TrainingTaskDatabase sharedInstance];
        v8 = [v3 taskId];
        v9 = [v7 isTaskInSubmittedQueue:v8];
        v10 = v9 == 0;

        if (v10)
        {
          v11 = SiriTTSTrainerGetLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v37 = [v3 taskId];
            *buf = 138412290;
            *v55 = v37;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Can't find task in Submitted queue, skip. taskId=%@", buf, 0xCu);
          }
        }

        else
        {
          v11 = sub_100013734(a1, v3);
          if (v11)
          {
            v12 = SiriTTSTrainerGetLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Get asset path error.", buf, 2u);
            }

            v13 = +[TrainingTaskDatabase sharedInstance];
            v14 = [v11 code];
            v15 = [v11 localizedDescription];
            [v13 addFailedTaskToFinishQueue:v3 errorCode:v14 description:v15];
          }

          else
          {
            v38 = SiriTTSTrainerGetLog();
            v39 = os_signpost_id_generate(v38);
            mach_absolute_time();

            v40 = SiriTTSTrainerGetLog();
            v41 = v40;
            if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
            {
              v42 = [v3 taskId];
              *buf = 138412290;
              *v55 = v42;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "STT-Training-Interval", "%@", buf, 0xCu);
            }

            v43 = SiriTTSTrainerGetLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = [v3 taskId];
              *buf = 134218242;
              *v55 = v39;
              *&v55[8] = 2112;
              v56 = v44;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "#STTSP BEGIN [%lld]: STT-Training-Interval %@", buf, 0x16u);
            }

            sub_1000113B8(a1, v3);
            v45 = SiriTTSTrainerGetLog();
            v46 = os_signpost_id_generate(v45);
            mach_absolute_time();

            v47 = SiriTTSTrainerGetLog();
            v48 = v47;
            if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
            {
              v49 = [v3 taskId];
              *buf = 138412290;
              *v55 = v49;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_END, v46, "STT-Training-Interval", "%@", buf, 0xCu);
            }

            v13 = SiriTTSTrainerGetLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v50 = [v3 taskId];
              *buf = 134218242;
              *v55 = v46;
              *&v55[8] = 2112;
              v56 = v50;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#STTSP END [%lld]: STT-Training-Interval %@", buf, 0x16u);
            }
          }

LABEL_51:
        }
      }

      else
      {
        *&v6 = 138412290;
        v53 = v6;
        while (1)
        {
          v17 = +[TrainingTaskDatabase sharedInstance];
          v11 = [v17 getNextSubmittedTask];

          if (!v11)
          {
            break;
          }

          v18 = sub_100013734(a1, v11);
          if (v18)
          {
            v19 = SiriTTSTrainerGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Get asset path error.", buf, 2u);
            }

            v20 = +[TrainingTaskDatabase sharedInstance];
            v21 = [v18 code];
            v22 = [v18 localizedDescription];
            [v20 addFailedTaskToFinishQueue:v11 errorCode:v21 description:v22];
          }

          else
          {
            v23 = SiriTTSTrainerGetLog();
            v24 = os_signpost_id_generate(v23);
            mach_absolute_time();

            v25 = SiriTTSTrainerGetLog();
            v26 = v25;
            if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
            {
              v27 = [v11 taskId];
              *buf = v53;
              *v55 = v27;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "STT-Training-Interval", "%@", buf, 0xCu);
            }

            v28 = SiriTTSTrainerGetLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = [v11 taskId];
              *buf = 134218242;
              *v55 = v24;
              *&v55[8] = 2112;
              v56 = v29;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "#STTSP BEGIN [%lld]: STT-Training-Interval %@", buf, 0x16u);
            }

            sub_1000113B8(a1, v11);
            v30 = SiriTTSTrainerGetLog();
            v31 = os_signpost_id_generate(v30);
            mach_absolute_time();

            v32 = SiriTTSTrainerGetLog();
            v33 = v32;
            if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
            {
              v34 = [v11 taskId];
              *buf = v53;
              *v55 = v34;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v31, "STT-Training-Interval", "%@", buf, 0xCu);
            }

            v35 = SiriTTSTrainerGetLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = [v11 taskId];
              *buf = 134218242;
              *v55 = v31;
              *&v55[8] = 2112;
              v56 = v36;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "#STTSP END [%lld]: STT-Training-Interval %@", buf, 0x16u);
            }

            if (*(a1 + 24) == 1)
            {
              v13 = SiriTTSTrainerGetLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "trainingSession break due to AgentDeferred.", buf, 2u);
              }

              goto LABEL_51;
            }
          }
        }
      }

      v51 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "trainingSession end", buf, 2u);
      }

      getpid();
      if (proc_set_cpumon_defaults())
      {
        v52 = SiriTTSTrainerGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Unable to restore cpumon default", buf, 2u);
        }
      }

      [*(a1 + 64) unlock];
    }

    else
    {
      v16 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "trainingSession is unable to lock, skip.", buf, 2u);
      }
    }
  }
}

void sub_10000F9F0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  if (a1)
  {
    if (qword_100029CB8 != -1)
    {
      dispatch_once(&qword_100029CB8, &stru_1000253F8);
    }

    v6 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 taskId];
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scheduling %@", buf, 0xCu);
    }

    v8 = [v5 taskId];
    v9 = [NSString stringWithFormat:@"%@.%@", @"com.apple.SiriTTSTrainingAgent.voice-training", v8];
    v10 = _DASSchedulingPriorityUserInitiated;
    v11 = [NSDate dateWithTimeIntervalSinceNow:a3];
    v12 = [NSDate dateWithTimeIntervalSinceNow:a3 + 900.0];
    v13 = [_DASActivity activityWithName:v9 priority:v10 duration:14400 startingAfter:v11 startingBefore:v12];

    [v13 setHandlerQueue:*(a1 + 16)];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000141FC;
    v19[3] = &unk_100025448;
    v19[4] = a1;
    v14 = v5;
    v20 = v14;
    [v13 setStartHandler:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100014564;
    v17[3] = &unk_100025448;
    v17[4] = a1;
    v15 = v14;
    v18 = v15;
    [v13 setSuspendHandler:v17];
    [v13 setCpuIntensive:1];
    [v13 setMemoryIntensive:1];
    [v13 setRequiresPlugin:1];
    [v13 setAfterUserIsInactive:1];
    [qword_100029CB0 submitActivity:v13 inGroup:qword_100029CA8];
    v16 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v13;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Submitted DASActivity %@ for task %@", buf, 0x16u);
    }
  }
}

void sub_1000102E8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_10001076C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010784(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 firstObject];
    v6 = [v5 path];
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v10 = a1[5];
      v12 = [NSNumber numberWithInteger:a1[8]];
      v13 = *(*(a1[7] + 8) + 40);
      *buf = 138413058;
      v24 = v11;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "found installed asset for locale:%@, name:%@, type:%@, path:%@", buf, 0x2Au);
    }
  }

  else
  {
    v15 = a1[5];
    v14 = a1[6];
    v16 = a1[4];
    v17 = a1[8];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000109B0;
    v18[3] = &unk_1000253D8;
    v19 = v16;
    v20 = a1[5];
    v22 = a1[8];
    v21 = *(a1 + 3);
    [v14 installableTrainingAssetsForLanguage:v19 name:v15 type:v17 reply:v18];

    v9 = v19;
  }
}

void sub_1000109B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = [NSNumber numberWithInteger:*(a1 + 64)];
      *buf = 138412802;
      v35 = v7;
      v36 = 2112;
      v37 = v6;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "found installable asset for locale:%@, name:%@, type:%@", buf, 0x20u);
    }

    v9 = dispatch_semaphore_create(0);
    v10 = *(a1 + 48);
    v11 = [v4 firstObject];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100010D50;
    v29[3] = &unk_100025388;
    v30 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 64);
    v31 = v12;
    v33 = v13;
    v14 = v9;
    v32 = v14;
    [v10 installTrainingAsset:v11 reply:v29];

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = *(a1 + 32);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100010F10;
    v24[3] = &unk_1000253B0;
    v18 = *(a1 + 64);
    v27 = *(a1 + 56);
    v25 = v17;
    v19 = *(a1 + 40);
    v20 = *(a1 + 64);
    v26 = v19;
    v28 = v20;
    [v15 installedTrainingAssetsForLanguage:v25 name:v16 type:v18 reply:v24];
  }

  else
  {
    v14 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      v21 = *(a1 + 40);
      v23 = [NSNumber numberWithInteger:*(a1 + 64)];
      *buf = 138412802;
      v35 = v22;
      v36 = 2112;
      v37 = v21;
      v38 = 2112;
      v39 = v23;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "asset not found for locale:%@, name:%@, type:%@", buf, 0x20u);
    }
  }
}

void sub_100010D50(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = [NSNumber numberWithInteger:*(a1 + 56)];
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "install asset for locale:%@, name:%@, type:%@", &v13, 0x20u);
    }
  }

  else
  {
    v6 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = [NSNumber numberWithInteger:*(a1 + 56)];
      v13 = 138413058;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "install asset failed for locale:%@, name:%@, type:%@, error:%@", &v13, 0x2Au);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100010F10(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 firstObject];
    v6 = [v5 path];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v10 = a1[5];
      v12 = [NSNumber numberWithInteger:a1[7]];
      v13 = *(*(a1[6] + 8) + 40);
      v14 = 138413058;
      v15 = v11;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "install asset for locale:%@, name:%@, type:%@, path:%@", &v14, 0x2Au);
    }
  }
}

double sub_100011084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = 0.1;
  if (a5 == 1)
  {
    v6 = 0.1;
  }

  else
  {
    v6 = 1.0;
  }

  result = 0.0;
  if (a5 != 1)
  {
    v5 = 0.0;
  }

  v8 = 0.8;
  if (a5 != 1)
  {
    v8 = 0.0;
  }

  if (a4)
  {
    switch(a2)
    {
      case 3:
        *&result = v5 + (v6 + ((a3 / a4) * v8));
        break;
      case 2:
        *&result = v6 + ((a3 / a4) * v5);
        break;
      case 1:
        *&result = (a3 / a4) * v6;
        break;
    }
  }

  return result;
}

void sub_1000113B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v171 = a1;
  objc_storeWeak((a1 + 48), v3);
  if ([v3 taskStatus] != 6)
  {
    [v3 setRetryTimes:{objc_msgSend(v3, "retryTimes") + 1}];
  }

  [v3 setTrainingStartTime:mach_absolute_time()];
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 taskId];
    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 taskStatus]);
    v7 = [v3 agentTrainingAssetPath];
    v8 = [v3 dataAssetPath];
    v9 = [v3 agentInferenceAssetPath];
    v10 = [v3 inferenceAssetPath];
    *buf = 138413826;
    v178 = v5;
    v179 = 2112;
    v180 = v6;
    v181 = 2112;
    v182 = v7;
    v183 = 2112;
    v184 = v8;
    v185 = 2112;
    v186 = v9;
    v187 = 2112;
    v188 = v10;
    v189 = 2048;
    v190 = [v3 retryTimes];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Task begin: taskId=%@ taskStatus=%@ agentTrainingAssetPath=%@ dataAssetPath=%@ agentInferenceAssetPath=%@ inferenceAssetPath=%@, retryTimes=%ld", buf, 0x48u);
  }

  if ([v3 taskStatus] != 1 && objc_msgSend(v3, "taskStatus") != 6 && objc_msgSend(v3, "taskStatus") != 2 || objc_msgSend(v3, "taskStatus") == 2 && objc_msgSend(v3, "retryTimes") >= 11)
  {
    v11 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v155 = [v3 taskId];
      v156 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 taskStatus]);
      *buf = 138412546;
      v178 = v155;
      v179 = 2112;
      v180 = v156;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unexpected task status, exit training. taskId=%@, taskStatus=%@", buf, 0x16u);
    }

    v12 = +[TrainingTaskDatabase sharedInstance];
    [v12 addFailedTaskToFinishQueue:v3 errorCode:1001 description:@"Unexpected task status"];

    v13 = +[STTCoreAnalyticsService sharedInstance];
    [v13 reportTask:v3];

    v14 = SiriTTSTrainerGetLog();
    v15 = os_signpost_id_generate(v14);
    mach_absolute_time();

    v16 = SiriTTSTrainerGetLog();
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v18 = [v3 taskId];
      *buf = 138412290;
      v178 = v18;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v15, "STT-Training-Interval", "taskId=%@", buf, 0xCu);
    }

    v19 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v3 taskId];
      *buf = 134218242;
      v178 = v15;
      v179 = 2112;
      v180 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "#STTSP END [%lld]: STT-Training-Interval taskId=%@", buf, 0x16u);
    }

    goto LABEL_81;
  }

  if ([v3 taskStatus] != 1)
  {
    v26 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v3 taskId];
      v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 taskStatus]);
      v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 trainingStatus]);
      *buf = 138412802;
      v178 = v27;
      v179 = 2112;
      v180 = v28;
      v181 = 2112;
      v182 = v29;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Resume from pause state. taskId=%@, taskStatus=%@, trainingStatus=%@", buf, 0x20u);
    }

    v30 = +[TrainingTaskDatabase sharedInstance];
    [v30 updateTaskWithStatusToSubmittedQueue:v3 taskStatus:2];

    v31 = +[STTCoreAnalyticsService sharedInstance];
    [v31 reportTask:v3];

    goto LABEL_34;
  }

  v21 = +[TrainingTaskDatabase sharedInstance];
  [v21 updateTaskWithStatusToSubmittedQueue:v3 taskStatus:2];

  v170 = v3;
  v22 = +[NSFileManager defaultManager];
  v23 = [v170 inferenceAssetPath];
  v176 = 0;
  v169 = [v22 contentsOfDirectoryAtPath:v23 error:&v176];
  v24 = v176;

  if (v24)
  {
    v25 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v157 = [v170 taskId];
      v158 = [v170 inferenceAssetPath];
      *buf = 138412802;
      v178 = v157;
      v179 = 2112;
      v180 = v158;
      v181 = 2112;
      v182 = v24;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "CopyAsset: taskId=%@ inferenceAssetPath: %@, error: %@", buf, 0x20u);
    }

LABEL_28:

LABEL_29:
    v19 = v24;
    goto LABEL_30;
  }

  if ([v169 count])
  {
    v32 = [NSError alloc];
    v192[0] = NSLocalizedDescriptionKey;
    v193[0] = &stru_1000257B8;
    v33 = [NSDictionary dictionaryWithObjects:v193 forKeys:v192 count:1];
    v24 = [v32 initWithDomain:@"com.apple.SiriTTSTrainingAgent" code:300 userInfo:v33];

    v25 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v170 taskId];
      v35 = [v170 inferenceAssetPath];
      *buf = 138412802;
      v178 = v34;
      v179 = 2112;
      v180 = v35;
      v181 = 2112;
      v182 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "CopyAsset: taskId=%@ folder is not empty: %@, error: %@", buf, 0x20u);
    }

    goto LABEL_28;
  }

  if ([v170 taskMode] == 2)
  {
    v109 = +[NSFileManager defaultManager];
    v110 = [v170 inferenceAssetPath];
    v111 = [v110 stringByAppendingString:@"/AssetData/prompts"];
    v175 = 0;
    [v109 createDirectoryAtPath:v111 withIntermediateDirectories:1 attributes:0 error:&v175];
    v24 = v175;

    v112 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      v113 = [v170 taskId];
      *buf = 138412546;
      v178 = v113;
      v179 = 2112;
      v180 = v24;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "CreateDirectory: taskId=%@ create prompts directory, error: %@", buf, 0x16u);
    }

    if (v24)
    {
      goto LABEL_29;
    }
  }

  if (![v170 taskMode] || objc_msgSend(v170, "taskMode") == 1)
  {
    v114 = +[NSFileManager defaultManager];
    v115 = [v170 inferenceAssetPath];
    v116 = [v115 stringByAppendingString:@"/AssetData/fastspeech2"];
    v174 = 0;
    [v114 createDirectoryAtPath:v116 withIntermediateDirectories:1 attributes:0 error:&v174];
    v24 = v174;

    v117 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v118 = [v170 taskId];
      *buf = 138412546;
      v178 = v118;
      v179 = 2112;
      v180 = v24;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "CreateDirectory: taskId=%@ create fastspeech2 directory, error: %@", buf, 0x16u);
    }

    if (v24)
    {
      goto LABEL_29;
    }
  }

  if ([v170 taskMode] == 1)
  {
    v119 = +[NSFileManager defaultManager];
    v120 = [v170 inferenceAssetPath];
    v121 = [v120 stringByAppendingString:@"/AssetData/wavernn"];
    v173 = 0;
    [v119 createDirectoryAtPath:v121 withIntermediateDirectories:1 attributes:0 error:&v173];
    v24 = v173;

    v122 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v123 = [v170 taskId];
      *buf = 138412546;
      v178 = v123;
      v179 = 2112;
      v180 = v24;
      _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "CreateDirectory: taskId=%@ create wavernn directory, error: %@", buf, 0x16u);
    }

    if (v24)
    {
      goto LABEL_29;
    }
  }

  v124 = +[NSFileManager defaultManager];
  v125 = [v170 agentInferenceAssetPath];
  v168 = [v124 enumeratorAtPath:v125];

  v126 = 0;
  while (1)
  {
    v127 = [v168 nextObject];

    v126 = v127;
    if (!v127)
    {
      break;
    }

    v128 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v178 = v127;
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Copying: %@", buf, 0xCu);
    }

    v129 = +[NSFileManager defaultManager];
    v130 = [v170 inferenceAssetPath];
    v193[0] = v130;
    v193[1] = v127;
    v131 = [NSArray arrayWithObjects:v193 count:2];
    v132 = [NSString pathWithComponents:v131];
    v133 = [v129 fileExistsAtPath:v132];

    if ((v133 & 1) == 0 && ([v170 taskMode] != 1 || (objc_msgSend(v126, "hasPrefix:", @"AssetData/wavernn/") & 1) == 0))
    {
      v134 = +[NSFileManager defaultManager];
      v135 = [v170 agentInferenceAssetPath];
      v192[0] = v135;
      v192[1] = v126;
      v136 = [NSArray arrayWithObjects:v192 count:2];
      v137 = [NSString pathWithComponents:v136];
      v138 = [v170 inferenceAssetPath];
      v191[0] = v138;
      v191[1] = v126;
      v139 = [NSArray arrayWithObjects:v191 count:2];
      v140 = [NSString pathWithComponents:v139];
      v172 = 0;
      [v134 copyItemAtPath:v137 toPath:v140 error:&v172];
      v141 = v172;

      if (v141)
      {
        v142 = SiriTTSTrainerGetLog();
        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
        {
          v143 = [v170 taskId];
          v144 = [v170 agentInferenceAssetPath];
          v145 = [v170 inferenceAssetPath];
          *buf = 138413058;
          v178 = v143;
          v179 = 2112;
          v180 = v144;
          v181 = 2112;
          v182 = v145;
          v183 = 2112;
          v184 = v141;
          _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "Copy Items Error: taskId=%@ copied existing output asset from %@ to %@ error: %@", buf, 0x2Au);
        }

        v19 = v141;
        goto LABEL_139;
      }
    }
  }

  v160 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
  {
    v161 = [v170 taskId];
    v162 = [v170 agentInferenceAssetPath];
    v163 = [v170 inferenceAssetPath];
    *buf = 138413058;
    v178 = v161;
    v179 = 2112;
    v180 = v162;
    v181 = 2112;
    v182 = v163;
    v183 = 2112;
    v184 = 0;
    _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "CopyAsset: taskId=%@ copied existing output asset from %@ to %@ error: %@", buf, 0x2Au);
  }

  v19 = 0;
LABEL_139:

LABEL_30:
  if (v19)
  {
    v36 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v159 = [v170 taskId];
      *buf = 138412546;
      v178 = v159;
      v179 = 2112;
      v180 = v19;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Copy asset error. taskId=%@, error=%@", buf, 0x16u);
    }

    v37 = +[TrainingTaskDatabase sharedInstance];
    v38 = [v19 localizedDescription];
    v39 = [NSString stringWithFormat:@"Copy asset error, %@", v38];
    [v37 addFailedTaskToFinishQueue:v170 errorCode:1002 description:v39];

    v40 = +[STTCoreAnalyticsService sharedInstance];
    [v40 reportTask:v170];

    goto LABEL_81;
  }

LABEL_34:
  v41 = [SiriTTSTrainer alloc];
  v42 = [v3 agentTrainingAssetPath];
  v43 = [v3 dataAssetPath];
  v44 = [v3 inferenceAssetPath];
  v45 = [v3 taskId];
  v19 = [v41 initWithPaths:v42 dataAssetPath:v43 inferenceAssetPath:v44 taskId:v45];

  WeakRetained = objc_loadWeakRetained((v171 + 48));
  [WeakRetained setCurrentTrainer:v19];

  v47 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [v3 taskId];
    *buf = 138412290;
    v178 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ start_preprocess", buf, 0xCu);
  }

  if (*(v171 + 24))
  {
    goto LABEL_47;
  }

  v49 = objc_loadWeakRetained((v171 + 48));
  if ([v49 trainingStatus] <= 0)
  {
  }

  else
  {
    v50 = objc_loadWeakRetained((v171 + 48));
    if ([v50 trainingStatus] != 1)
    {

LABEL_47:
      v58 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [v3 taskId];
        *buf = 138412290;
        v178 = v59;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ skip start_preprocess", buf, 0xCu);
      }

      goto LABEL_50;
    }

    v51 = objc_loadWeakRetained((v171 + 48));
    v52 = [v51 isCurrentTrainingStageDone];

    if (v52)
    {
      goto LABEL_47;
    }
  }

  v53 = objc_loadWeakRetained((v171 + 48));
  [v53 setTrainingStatus:1];

  v54 = [v19 start_preprocess:v171];
  if (v54)
  {
    v55 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v164 = [v3 taskId];
      *buf = 138412546;
      v178 = v164;
      v179 = 2048;
      v180 = v54;
      _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "TaskError: taskId=%@ start_preprocess error, errorCode=%ld", buf, 0x16u);
    }

    v56 = +[TrainingTaskDatabase sharedInstance];
    [v56 addFailedTaskToFinishQueue:v3 errorCode:1003 description:@"Error in starting preprocess"];

    v57 = +[STTCoreAnalyticsService sharedInstance];
    [v57 reportTask:v3];

    goto LABEL_81;
  }

LABEL_50:
  v60 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [v3 taskId];
    *buf = 138412290;
    v178 = v61;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ start_train", buf, 0xCu);
  }

  if (![v3 taskMode])
  {
    v68 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = [v3 taskId];
      *buf = 138412290;
      v178 = v69;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ running partial task mode", buf, 0xCu);
    }

    if (*(v171 + 24))
    {
      goto LABEL_66;
    }

    v91 = objc_loadWeakRetained((v171 + 48));
    if ([v91 trainingStatus] <= 1)
    {

LABEL_84:
      v92 = objc_loadWeakRetained((v171 + 48));
      [v92 setTrainingStatus:2];

      v93 = +[STTCoreAnalyticsService sharedInstance];
      [v93 reportTask:v3];

      v94 = [v19 start_train:1 delegate:v171];
      if (!v94)
      {
        goto LABEL_72;
      }

      v95 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v165 = [v3 taskId];
        *buf = 138412546;
        v178 = v165;
        v179 = 2048;
        v180 = v94;
        _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "TaskError: taskId=%@ AcousticModel training error, errorCode=%ld", buf, 0x16u);
      }

      goto LABEL_87;
    }

    v146 = objc_loadWeakRetained((v171 + 48));
    if ([v146 trainingStatus] == 2)
    {
      v147 = objc_loadWeakRetained((v171 + 48));
      v148 = [v147 isCurrentTrainingStageDone];

      if ((v148 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
    }

LABEL_66:
    v66 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v70 = [v3 taskId];
      *buf = 138412290;
      v178 = v70;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ skip AcousticModel training", buf, 0xCu);
    }

    goto LABEL_71;
  }

  if ([v3 taskMode] != 1)
  {
    if ([v3 taskMode] != 2)
    {
LABEL_72:
      v72 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = [v3 taskId];
        v74 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 taskStatus]);
        v75 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 trainingStatus]);
        *buf = 138412802;
        v178 = v73;
        v179 = 2112;
        v180 = v74;
        v181 = 2112;
        v182 = v75;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ end_train, taskStatus=%@, trainingStatus=%@", buf, 0x20u);
      }

      [v3 timeIntervalSinceTrainingStart];
      v77 = v76;
      [v3 totalTrainingTime];
      [v3 setTotalTrainingTime:v77 + v78];
      if (*(v171 + 24) == 1)
      {
        v79 = +[TrainingTaskDatabase sharedInstance];
        [v79 updateTaskWithStatusToSubmittedQueue:v3 taskStatus:6];

        v80 = +[STTCoreAnalyticsService sharedInstance];
        [v80 reportTask:v3];

        v81 = SiriTTSTrainerGetLog();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v82 = [v3 taskId];
          *buf = 138412290;
          v178 = v82;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ is in pause status, wait for next cycle to continue.", buf, 0xCu);
        }
      }

      else
      {
        v83 = +[TrainingTaskDatabase sharedInstance];
        [v83 addTaskToFinishedQueueWithStatus:v3 status:5];

        v81 = +[STTCoreAnalyticsService sharedInstance];
        [v81 reportTask:v3];
      }

      [v3 timeIntervalSinceTrainingStart];
      v85 = v84;
      v86 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v87 = [v3 taskId];
        v88 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 taskStatus]);
        v89 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 trainingStatus]);
        [v3 totalTrainingTime];
        *buf = 138413314;
        v178 = v87;
        v179 = 2112;
        v180 = v88;
        v181 = 2112;
        v182 = v89;
        v183 = 2048;
        v184 = v85;
        v185 = 2048;
        v186 = v90;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Task done: taskId=%@, taskStatus=%@, trainingStatus=%@, currentTrainingTime=%f, totalTrainingTime=%f", buf, 0x34u);
      }

      objc_storeWeak((v171 + 48), 0);
      goto LABEL_81;
    }

    v66 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [v3 taskId];
      *buf = 138412290;
      v178 = v71;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ skip training since P2A doesn't require training", buf, 0xCu);
    }

LABEL_71:

    goto LABEL_72;
  }

  v62 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [v3 taskId];
    *buf = 138412290;
    v178 = v63;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ running full task mode", buf, 0xCu);
  }

  if (*(v171 + 24))
  {
    goto LABEL_57;
  }

  v98 = objc_loadWeakRetained((v171 + 48));
  if ([v98 trainingStatus] <= 1)
  {

LABEL_90:
    v99 = objc_loadWeakRetained((v171 + 48));
    [v99 setTrainingStatus:2];

    v100 = +[STTCoreAnalyticsService sharedInstance];
    [v100 reportTask:v3];

    v101 = [v19 start_train:1 delegate:v171];
    if (!v101)
    {
      goto LABEL_60;
    }

    v95 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      v166 = [v3 taskId];
      *buf = 138412546;
      v178 = v166;
      v179 = 2048;
      v180 = v101;
      _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "TaskError: taskId=%@ AcousticModel training error, errorCode=%ld", buf, 0x16u);
    }

LABEL_87:

    v96 = +[TrainingTaskDatabase sharedInstance];
    [v96 addFailedTaskToFinishQueue:v3 errorCode:1006 description:@"Error in AcousticModel training"];

    v97 = +[STTCoreAnalyticsService sharedInstance];
    [v97 reportTask:v3];

    goto LABEL_81;
  }

  v149 = objc_loadWeakRetained((v171 + 48));
  if ([v149 trainingStatus] == 2)
  {
    v150 = objc_loadWeakRetained((v171 + 48));
    v151 = [v150 isCurrentTrainingStageDone];

    if ((v151 & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

LABEL_57:
  v64 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = [v3 taskId];
    *buf = 138412290;
    v178 = v65;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ skip AcousticModel training", buf, 0xCu);
  }

LABEL_60:
  if (*(v171 + 24))
  {
    goto LABEL_61;
  }

  v102 = objc_loadWeakRetained((v171 + 48));
  if ([v102 trainingStatus] > 2)
  {
    v152 = objc_loadWeakRetained((v171 + 48));
    if ([v152 trainingStatus] == 3)
    {
      v153 = objc_loadWeakRetained((v171 + 48));
      v154 = [v153 isCurrentTrainingStageDone];

      if ((v154 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    else
    {
    }

LABEL_61:
    v66 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [v3 taskId];
      *buf = 138412290;
      v178 = v67;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Task: taskId=%@ skip WaveModel training", buf, 0xCu);
    }

    goto LABEL_71;
  }

LABEL_96:
  v103 = objc_loadWeakRetained((v171 + 48));
  [v103 setTrainingStatus:3];

  v104 = +[STTCoreAnalyticsService sharedInstance];
  [v104 reportTask:v3];

  v105 = [v19 start_train:2 delegate:v171];
  if (!v105)
  {
    goto LABEL_72;
  }

  v106 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
  {
    v167 = [v3 taskId];
    *buf = 138412546;
    v178 = v167;
    v179 = 2048;
    v180 = v105;
    _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "TaskError: taskId=%@ WaveModel training error, errorCode=%ld", buf, 0x16u);
  }

  v107 = +[TrainingTaskDatabase sharedInstance];
  [v107 addFailedTaskToFinishQueue:v3 errorCode:1006 description:@"Error in WaveModel training"];

  v108 = +[STTCoreAnalyticsService sharedInstance];
  [v108 reportTask:v3];

LABEL_81:
}

id sub_100013734(void *a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 trainingAssetPath];
    v6 = [v3 inferenceAssetPath];
    v7 = [v3 agentTrainingAssetPath];
    v8 = [v3 agentInferenceAssetPath];
    *buf = 138413058;
    v56 = v5;
    v57 = 2112;
    v58 = v6;
    v59 = 2112;
    v60 = v7;
    v61 = 2112;
    v62 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "trainingAssetPath=%@, inferenceAssetPath=%@, agentTrainingAssetPath=%@, agentInferenceAssetPath=%@", buf, 0x2Au);
  }

  v9 = [v3 agentTrainingAssetPath];
  if (v9)
  {
    v10 = [v3 agentTrainingAssetPath];
    if ([v10 length] && (objc_msgSend(v3, "agentInferenceAssetPath"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [v3 agentInferenceAssetPath];
      v13 = [v12 length] == 0;

      if (!v13)
      {
        v46 = 0;
        v14 = +[NSFileManager defaultManager];
        v15 = [v3 agentTrainingAssetPath];
        if ([v14 fileExistsAtPath:v15 isDirectory:&v46])
        {
          v16 = +[NSFileManager defaultManager];
          v17 = [v3 agentTrainingAssetPath];
          v18 = [v16 fileExistsAtPath:v17 isDirectory:&v46];

          if (v18)
          {
            v19 = SiriTTSTrainerGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Previous training asset exists, keep using the previous asset", buf, 2u);
            }

            v20 = 0;
LABEL_35:

            goto LABEL_28;
          }
        }

        else
        {
        }

        v44 = SiriTTSTrainerGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "agentTrainingAssetPath/agentInferenceAssetPath is set, but path doesn't exist, asset could be purged.", buf, 2u);
        }

        v45 = [NSError alloc];
        v53 = NSLocalizedDescriptionKey;
        v54 = @"Previous Training asset is not available.";
        v19 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v20 = [v45 initWithDomain:@"com.apple.SiriTTSTrainingAgent" code:1004 userInfo:v19];
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  v21 = [v3 trainingAssetPath];
  v22 = [v21 length] == 0;

  if (v22)
  {
    v24 = +[NSBundle mainBundle];
    v25 = [v24 resourcePath];
    v51 = v25;
    v26 = [NSArray arrayWithObjects:&v51 count:1];
    v27 = [NSString pathWithComponents:v26];
    v52[0] = v27;
    v52[1] = @"Asset";
    v28 = [NSArray arrayWithObjects:v52 count:2];
    v29 = [NSString pathWithComponents:v28];

    v46 = 0;
    v30 = +[NSFileManager defaultManager];
    v31 = [v30 fileExistsAtPath:v29 isDirectory:&v46];
    LODWORD(v25) = v46;

    if ((v31 & v25) != 0)
    {
      v23 = v29;
      v32 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v23;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Internal asset bundle is used here. path=%@", buf, 0xCu);
      }
    }

    else
    {
      v32 = [v3 assetLanguage];
      v33 = [v3 assetName];
      v23 = sub_10000E02C(a1, v32, v33, 0);
    }
  }

  else
  {
    v23 = [v3 trainingAssetPath];
  }

  if (v23)
  {
    v50[0] = v23;
    v50[1] = @"training_asset";
    v34 = [NSArray arrayWithObjects:v50 count:2];
    v35 = [NSString pathWithComponents:v34];
    [v3 setAgentTrainingAssetPath:v35];

    v49[0] = v23;
    v49[1] = @"inference_asset";
    v36 = [NSArray arrayWithObjects:v49 count:2];
    v37 = [NSString pathWithComponents:v36];
    [v3 setAgentInferenceAssetPath:v37];

    [v3 setAssetVersion:{+[SiriTTSTrainingAgentUtils getAssetQualityVersionFromAsset:](SiriTTSTrainingAgentUtils, "getAssetQualityVersionFromAsset:", v23)}];
    v38 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v3 agentTrainingAssetPath];
      v40 = [v3 agentInferenceAssetPath];
      *buf = 138412546;
      v56 = v39;
      v57 = 2112;
      v58 = v40;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "agentTrainingAssetPath=%@, agentInferenceAssetPath=%@", buf, 0x16u);
    }

    v20 = 0;
  }

  else
  {
    v41 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "assetBundlePath is invalid", buf, 2u);
    }

    v42 = [NSError alloc];
    v47 = NSLocalizedDescriptionKey;
    v48 = @"Training asset is not available.";
    v38 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v20 = [v42 initWithDomain:@"com.apple.SiriTTSTrainingAgent" code:1004 userInfo:v38];
  }

LABEL_28:

  return v20;
}

void sub_10001402C(uint64_t a1)
{
  if (a1)
  {
    v1 = +[NSProcessInfo processInfo];
    v2 = [v1 thermalState];

    if (v2 > 1)
    {
      if (v2 != 2)
      {
        if (v2 != 3)
        {
          return;
        }

        v3 = SiriTTSTrainerGetLog();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        v6 = 0;
        v4 = "NSProcessInfoThermalStateCritical";
        v5 = &v6;
        goto LABEL_15;
      }

      v3 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v4 = "NSProcessInfoThermalStateSerious";
        v5 = buf;
        goto LABEL_15;
      }
    }

    else
    {
      if (v2)
      {
        if (v2 != 1)
        {
          return;
        }

        v3 = SiriTTSTrainerGetLog();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        v8 = 0;
        v4 = "NSProcessInfoThermalStateFair";
        v5 = &v8;
        goto LABEL_15;
      }

      v3 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v4 = "NSProcessInfoThermalStateNominal";
        v5 = &v9;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      }
    }

LABEL_16:
  }
}

void sub_100014188(id a1)
{
  v1 = +[_DASScheduler sharedScheduler];
  v2 = qword_100029CB0;
  qword_100029CB0 = v1;

  qword_100029CA8 = [_DASActivityGroup groupWithName:@"com.apple.SiriTTSTrainingAgent.voice-training" maxConcurrent:1];

  _objc_release_x1();
}

void sub_1000141FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting DASActivity %@", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014368;
  block[3] = &unk_100025420;
  v11 = v3;
  v12 = v7;
  v13 = v6;
  v9 = v3;
  dispatch_async(v8, block);
}

void sub_100014368(uint64_t a1)
{
  v2 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Running DASActivity %@", &v11, 0xCu);
  }

  v4 = os_transaction_create();
  sub_10001402C(*(a1 + 40));
  v5 = *(a1 + 40);
  if (v5)
  {
    *(v5 + 24) = 0;
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  sub_10000EF68(v6, *(a1 + 48));
  [qword_100029CB0 activityCompleted:*(a1 + 32)];
  v7 = *(a1 + 40);
  if (v7 && *(v7 + 24) == 1)
  {
    v8 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) name];
      v10 = [*(a1 + 48) taskId];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Continue DASActivity %@, taskId=%@", &v11, 0x16u);
    }

    sub_10000F9F0(*(a1 + 40), *(a1 + 48), 600.0);
  }
}

void sub_100014564(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    v20 = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Suspending DASActivity %@", &v20, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    *(v6 + 24) = 1;
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  sub_10001402C(v7);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      v11 = IOPSDrawingUnlimitedPower();
      if ([v10 taskStatus] == 2)
      {
        v12 = SiriTTSTrainerGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v10 taskId];
          v20 = 138412546;
          v21 = v13;
          v22 = 1024;
          v23 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "pauseTask: taskId=%@ powerSourceIsUnlimited=%d", &v20, 0x12u);
        }

        v14 = [v10 currentTrainer];
        v15 = v14 == 0;

        if (!v15)
        {
          if (v11 && [v10 trainingStatus] == 2)
          {
            v16 = SiriTTSTrainerGetLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v20) = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "pauseTask: Not going to pause Acoustic model training stage, as power is still available.", &v20, 2u);
            }
          }

          else
          {
            v16 = [v10 currentTrainer];
            [v16 pause];
          }
        }

        v17 = SiriTTSTrainerGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v10 taskId];
          v20 = 138412290;
          v21 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "pauseTask: taskId=%@ pausing", &v20, 0xCu);
        }
      }

      else
      {
        v17 = SiriTTSTrainerGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v10 taskId];
          v20 = 138412290;
          v21 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "pauseTask: taskId=%@, no need to pause the task as it is not in running state.", &v20, 0xCu);
        }
      }
    }

    else
    {
      v17 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "pauseTask: task is nil", &v20, 2u);
      }
    }
  }
}

void sub_10001490C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  v4 = state;
  if (!state)
  {
    v10 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "com.apple.SiriTTSTrainingAgent.xpc_checkin check-in", &v14, 2u);
    }

    v6 = xpc_activity_copy_criteria(v2);
    if (v6)
    {
      v11 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v12 = "com.apple.SiriTTSTrainingAgent.xpc_checkin check-in resume";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v14, 2u);
      }
    }

    else
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v6, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_5_MIN);
      xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REPEATING, 1);
      xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_ALLOW_BATTERY, 0);
      xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_activity_set_criteria(v2, v6);
      v11 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v12 = "com.apple.SiriTTSTrainingAgent.xpc_checkin check-in done";
        goto LABEL_19;
      }
    }

    goto LABEL_21;
  }

  if (state != 2)
  {
    v6 = SiriTTSTrainerGetLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v14 = 134217984;
    v15 = v4;
    v7 = "Unexpected xpc_activity state, got: %ld";
    v8 = v6;
    v9 = 12;
    goto LABEL_16;
  }

  if (!xpc_activity_set_state(v2, 5))
  {
    v5 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "xpc activity com.apple.SiriTTSTrainingAgent.xpc_checkin, failed to set XPC_ACTIVITY_STATE_DONE.", &v14, 2u);
    }
  }

  v6 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    v7 = "xpc activity com.apple.SiriTTSTrainingAgent.xpc_checkin run";
    v8 = v6;
    v9 = 2;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
  }

LABEL_21:

  v13 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "xpc_checkin activity exit", &v14, 2u);
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SiriTTSTrainingAgent entering sandbox...", buf, 2u);
  }

  sub_10000CB6C();
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.accessibility.voicebanking"];

  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SiriTTSTrainingAgent started...", v11, 2u);
  }

  v5 = objc_alloc_init(SiriTTSTrainingAgent);
  v6 = v5;
  if (v5)
  {
    v5 = v5->_xpcListener;
  }

  [(SiriTTSTrainingAgent *)v5 resume];
  v7 = +[NSRunLoop currentRunLoop];
  [v7 run];

  v8 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SiriTTSTrainingAgent exit...", v10, 2u);
  }

  objc_autoreleasePoolPop(v0);
  return 0;
}

id sub_100014E7C()
{
  objc_opt_self();
  if (qword_100029CC8 != -1)
  {
    dispatch_once(&qword_100029CC8, &stru_1000254A8);
  }

  v0 = qword_100029CC0;

  return v0;
}

void sub_100014ED4(id a1)
{
  v1 = +[NSFileManager defaultManager];
  v10 = [v1 URLsForDirectory:5 inDomains:1];

  v2 = [v10 firstObject];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.SiriTTSTrainingAgent"];
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 relativePath];
  v6 = [v4 fileExistsAtPath:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[NSFileManager defaultManager];
    [v7 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v8 = [v3 URLByAppendingPathComponent:@"task_database.plist"];
  v9 = qword_100029CC0;
  qword_100029CC0 = v8;
}

void sub_1000150E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000151AC;
    block[3] = &unk_1000254D0;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_sync(v7, block);
  }
}

void sub_1000151AC(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  [v3 setObject:a1[5] forKey:a1[6]];
  v4 = a1[4];
  if (v4)
  {
    v4 = v4[1];
  }

  v5 = v4;
  v6 = sub_100014E7C();
  [v5 writeToURL:v6 atomically:1];
}

void *sub_100015244(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_100015364;
    v14 = sub_100015374;
    v15 = 0;
    v5 = a1[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001537C;
    block[3] = &unk_1000254F8;
    v9 = &v10;
    block[4] = a1;
    v8 = v3;
    dispatch_sync(v5, block);
    a1 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

uint64_t sub_100015364(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001537C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[1];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100015488(id a1)
{
  qword_100029CD0 = objc_alloc_init(TrainingTaskDatabase);

  _objc_release_x1();
}

uint64_t sub_100015634(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v23 = a3;
  if (a1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v21 = v5;
      v8 = 0;
      v9 = *v27;
      do
      {
        v10 = 0;
        v22 = &v7[v8];
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          v12 = objc_opt_class();
          v25 = 0;
          v13 = [NSKeyedUnarchiver unarchivedObjectOfClass:v12 fromData:v11 error:&v25];
          v14 = v25;
          if (v14)
          {
            v15 = 1;
          }

          else
          {
            v15 = v13 == 0;
          }

          if (v15)
          {
            v16 = v14;
          }

          else
          {
            v17 = [v13 taskId];
            v18 = [v23 taskId];
            v19 = [v17 isEqualToString:v18];

            if (v19)
            {
              goto LABEL_17;
            }
          }

          ++v8;
          ++v10;
        }

        while (v7 != v10);
        v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        v8 = v22;
      }

      while (v7);
      v8 = -1;
LABEL_17:
      v5 = v21;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}