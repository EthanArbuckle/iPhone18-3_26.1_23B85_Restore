uint64_t sub_1000151F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void **a5, _BYTE *a6)
{
  v82 = a6;
  v84 = a5;
  v87 = a1;
  v8 = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v81 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v80 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v80 - v16;
  __chkstk_darwin(v15);
  v19 = &v80 - v18;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v25 = *(v86 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v86);
  v85 = &v80 - v27;
  v28 = dispatch thunk of InternalSettings.forceAlpine.getter();
  if (v28 == 2 || (v28 & 1) == 0)
  {
    v31 = dispatch thunk of InternalSettings.disableInlineStreamTTS.getter();
    if (v31 == 2 || (v31 & 1) == 0)
    {
      type metadata accessor for InlineStreamingStorage();
      dispatch thunk of ObjectPool.find<A>()();
      swift_getObjectType();
      SynthesizingRequestProtocol.text.getter();
      v41 = dispatch thunk of InlineStreamingStorage.findSignal(matchingText:)();

      if (v41)
      {

        v88 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
        if (swift_dynamicCastObjCProtocolConditional())
        {
          sub_100013F94(1, v19);
          v42 = v84;
          v43 = *v84;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v42 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = sub_100017790(0, v43[2] + 1, 1, v43);
            *v84 = v43;
          }

          v46 = v43[2];
          v45 = v43[3];
          if (v46 >= v45 >> 1)
          {
            v43 = sub_100017790(v45 > 1, v46 + 1, 1, v43);
            *v84 = v43;
          }

          v43[2] = v46 + 1;
          v47 = (*(v83 + 80) + 32) & ~*(v83 + 80);
          v48 = *(v83 + 72);
          sub_100022750(v19, v43 + v47 + v48 * v46);
          sub_100014318(1, v17);
          v49 = v84;
          v50 = *v84;
          v51 = swift_isUniquelyReferenced_nonNull_native();
          *v49 = v50;
          if ((v51 & 1) == 0)
          {
            v50 = sub_100017790(0, v50[2] + 1, 1, v50);
            *v84 = v50;
          }

          v53 = v50[2];
          v52 = v50[3];
          if (v53 >= v52 >> 1)
          {
            v50 = sub_100017790(v52 > 1, v53 + 1, 1, v50);
            *v84 = v50;
          }

          v50[2] = v53 + 1;
          sub_100022750(v17, v50 + v47 + v53 * v48);
          v29 = v85;
        }

        else
        {
          sub_100013F94(0, v19);
          v72 = v84;
          v73 = *v84;
          v74 = swift_isUniquelyReferenced_nonNull_native();
          *v72 = v73;
          v29 = v85;
          if ((v74 & 1) == 0)
          {
            v73 = sub_100017790(0, v73[2] + 1, 1, v73);
            *v84 = v73;
          }

          v76 = v73[2];
          v75 = v73[3];
          if (v76 >= v75 >> 1)
          {
            v73 = sub_100017790(v75 > 1, v76 + 1, 1, v73);
            *v84 = v73;
          }

          v73[2] = v76 + 1;
          sub_100022750(v19, v73 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v76);
        }

        v40 = sub_100013DDC();
        goto LABEL_52;
      }
    }

    else
    {
      static Logger.service.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Disable inline streaming due to internal settings", v34, 2u);
      }

      (*(v21 + 8))(v24, v20);
    }

    swift_getObjectType();
    v35 = sub_100019728();
    if (sub_10001A778(a4, v35, a3))
    {
      if (v35)
      {

        v36 = VoiceAsset.voice.getter();

        v37 = v36;
        dispatch thunk of SynthesisVoice.footprint.getter();

        v38 = SynthesisVoice.Footprint.rawValue.getter();
        if (v38 == SynthesisVoice.Footprint.rawValue.getter() || (dispatch thunk of SynthesisVoice.type.getter(), v39 = SynthesisVoice.VoiceType.rawValue.getter(), v39 == SynthesisVoice.VoiceType.rawValue.getter()))
        {
          if (sub_100015BA4())
          {
            dispatch thunk of OspreyBuiltInConfig.timeout.getter();
            dispatch thunk of OspreyBuiltInConfig.timeout.setter();
          }
        }
      }

      else
      {
        v37 = 0;
      }

      v89 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        sub_100013F94(1, v14);
        v54 = v84;
        v55 = *v84;
        v56 = swift_isUniquelyReferenced_nonNull_native();
        *v54 = v55;
        if ((v56 & 1) == 0)
        {
          v55 = sub_100017790(0, v55[2] + 1, 1, v55);
          *v84 = v55;
        }

        v58 = v55[2];
        v57 = v55[3];
        if (v58 >= v57 >> 1)
        {
          v55 = sub_100017790(v57 > 1, v58 + 1, 1, v55);
          *v84 = v55;
        }

        v55[2] = v58 + 1;
        v59 = (*(v83 + 80) + 32) & ~*(v83 + 80);
        v60 = *(v83 + 72);
        sub_100022750(v14, v55 + v59 + v60 * v58);
        v61 = v81;
        sub_100014318(1, v81);
        v62 = v84;
        v63 = *v84;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        *v62 = v63;
        if ((v64 & 1) == 0)
        {
          v63 = sub_100017790(0, v63[2] + 1, 1, v63);
          *v84 = v63;
        }

        v66 = v63[2];
        v65 = v63[3];
        if (v66 >= v65 >> 1)
        {
          v63 = sub_100017790(v65 > 1, v66 + 1, 1, v63);
          *v84 = v63;
        }

        v63[2] = v66 + 1;
        sub_100022750(v61, v63 + v59 + v66 * v60);
        v29 = v85;
      }

      else
      {
        sub_100013F94(0, v14);
        v67 = v84;
        v68 = *v84;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *v67 = v68;
        v29 = v85;
        if ((v69 & 1) == 0)
        {
          v68 = sub_100017790(0, v68[2] + 1, 1, v68);
          *v84 = v68;
        }

        v71 = v68[2];
        v70 = v68[3];
        if (v71 >= v70 >> 1)
        {
          v68 = sub_100017790(v70 > 1, v71 + 1, 1, v68);
          *v84 = v68;
        }

        v68[2] = v71 + 1;
        sub_100022750(v14, v68 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v71);
      }

      v30 = sub_100013BA0(v29, a3, &type metadata accessor for OspreyTTSAction, &OspreyTTSAction.init(pool:));

      goto LABEL_53;
    }

    *v82 = 1;
    v29 = v85;
    v40 = sub_1000091B0();
LABEL_52:
    v30 = v40;
LABEL_53:

    goto LABEL_54;
  }

  v29 = v85;
  v30 = sub_100013BA0(v85, a3, &type metadata accessor for AlpineTTSAction, &AlpineTTSAction.init(pool:));
LABEL_54:
  v78 = v86;
  v77 = v87;
  (*(v25 + 32))(v87, v29, v86);
  (*(v25 + 56))(v77, 0, 1, v78);
  return v30;
}

uint64_t sub_100015BA4()
{
  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.find<A>()();
  sub_1000053A0(&v4, v5);
  sub_1000227B4(v5, &v4);
  type metadata accessor for OspreyChainedConfigs();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v0 = OspreyChainedConfigs.configs.getter();
  v1 = *(v0 + 16);
  if (!v1)
  {

LABEL_6:
    sub_100004474(v5);
    return 0;
  }

  sub_1000227B4(v0 + 40 * v1 - 8, &v4);

  sub_100004474(v5);
  type metadata accessor for OspreyBuiltInConfig();
  if (swift_dynamicCast())
  {
    return v3;
  }

  return 0;
}

uint64_t sub_100015D78(void *a1, uint64_t a2, uint64_t a3)
{
  v85 = a2;
  v88 = a3;
  v4 = type metadata accessor for UUID();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  __chkstk_darwin(v4);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v89 = &v81 - v9;
  v10 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = *(v93 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v81 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138543362;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received #PreviewRequest %{public}@", v24, 0xCu);
    sub_100001E9C(v25, &qword_1000353F8, &qword_100027B40);
  }

  (*(v17 + 8))(v20, v16);
  v27 = type metadata accessor for ObjectPool();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = ObjectPool.init()();
  v31 = [objc_allocWithZone(NSNotificationCenter) init];
  aBlock[0] = v31;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for InternalSettings();
  aBlock[0] = static InternalSettings.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v32 = type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode);
  v33 = v92;
  DirectedAcyclicGraph.init()();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100027E10;
  v35 = type metadata accessor for RequestParsingAction();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();

  v38 = RequestParsingAction.init(pool:)();
  v96 = v35;
  v97 = &protocol witness table for RequestParsingAction;
  aBlock[0] = v38;
  v39 = *(v32 + 48);
  v40 = *(v32 + 52);
  swift_allocObject();
  *(v34 + 32) = WorkflowNode.init(action:)();
  v41 = type metadata accessor for AudioPlaybackAction();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();

  v87 = v30;
  v44 = AudioPlaybackAction.init(pool:)();
  v96 = v41;
  v97 = &protocol witness table for AudioPlaybackAction;
  aBlock[0] = v44;
  v45 = *(v32 + 48);
  v46 = *(v32 + 52);
  swift_allocObject();
  *(v34 + 40) = WorkflowNode.init(action:)();
  v47 = v94;
  DirectedAcyclicGraph.chain(nodes:)(v34);

  (*(v93 + 16))(v14, v33, v47);
  v48 = type metadata accessor for Workflow();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = v31;
  v52 = Workflow.init(graph:notification:errorHandlers:)();
  v53 = *(v86 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate);
  v54 = type metadata accessor for DelegateHandler();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = v21;
  swift_unknownObjectRetain_n();
  v57;
  v58 = v51;
  v59 = DelegateHandler.init(notificationCenter:delegate:request:)();
  v60 = type metadata accessor for AudioHandler();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v83 = v58;
  v63 = AudioHandler.init(notificationCenter:)();
  v64 = swift_allocObject();
  sub_10000AEF4(&unk_100035A70, &unk_100027F60);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100027E40;
  *(v65 + 32) = v59;
  *(v65 + 88) = v60;
  *(v65 + 56) = v54;
  *(v65 + 64) = v63;
  *(v64 + 16) = v65;
  v66 = objc_allocWithZone(type metadata accessor for TaskOperation());
  swift_retain_n();
  v84 = v59;

  v86 = v52;
  v67 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v68 = swift_allocObject();
  v69 = v88;
  v68[2] = v85;
  v68[3] = v69;
  v68[4] = v67;
  v68[5] = v64;
  v97 = sub_100007260;
  v98 = v68;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  v96 = &unk_100031B50;
  v70 = _Block_copy(aBlock);
  v71 = v67;

  sub_1000067AC(sub_100007260);

  [v71 setCompletionBlock:v70];
  _Block_release(v70);

  v72 = v89;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v74 = v90;
  v73 = v91;
  if ((*(v90 + 48))(v72, 1, v91))
  {
    sub_100001E9C(v72, &qword_100035810, &qword_100027D68);
    v75 = 0xED00006575657551;
    v76 = 0x6B7361546E69614DLL;
  }

  else
  {
    v77 = v82;
    (*(v74 + 16))(v82, v72, v73);
    sub_100001E9C(v72, &qword_100035810, &qword_100027D68);
    v78 = UUID.uuidString.getter();
    v75 = v79;
    (*(v74 + 8))(v77, v73);
    v76 = v78;
  }

  sub_100007504(v76, v75);

  sub_100007914(v71);

  (*(v93 + 8))(v92, v94);
}

uint64_t sub_100016710(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = static NSNotificationName.taskCompletion.getter();
  NSNotificationCenter.post(event:)(v9);

  v10 = *(a2 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate);
  sub_100005734();
  v11 = dispatch thunk of TaskOperation.error.getter();
  a3();

  swift_beginAccess();
  v12 = *(a6 + 16);
  *(a6 + 16) = _swiftEmptyArrayStorage;
}

uint64_t sub_100016838(uint64_t a1, const char *a2)
{
  v24 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for OSSignpostID();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignposter();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Signpost.signposter.getter();
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v22 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v16 = v23;
    if ((*(v23 + 88))(v5, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v5, v2);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v22, v19, v24, v17, v18, 2u);
  }

  (*(v6 + 8))(v9, v25);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100016B24(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = static NSNotificationName.taskCompletion.getter();
  NSNotificationCenter.post(event:)(v12);

  v13 = *(a2 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate);
  sub_100005734();
  v14 = dispatch thunk of TaskOperation.error.getter();
  a3();

  swift_beginAccess();
  v15 = *(a6 + 16);
  *(a6 + 16) = _swiftEmptyArrayStorage;

  if ((a8 & 1) == 0)
  {
    return sandbox_extension_release();
  }

  return result;
}

void sub_100016C28(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1)
  {
    v4 = a3.n128_u64[0];
    v5 = _convertErrorToNSError(_:)();
    a3.n128_u64[0] = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a2 + 16))(a2, a3);
}

uint64_t sub_100016C9C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v5 = *(a2 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
}

uint64_t sub_100016CFC(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [a1 removeObserver:a2];
  swift_beginAccess();
  v11 = *(a5 + 16);
  v10 = *(a5 + 24);

  v12 = dispatch thunk of TaskOperation.error.getter();
  a3(v11, v10, v12);

  swift_beginAccess();
  v13 = *(a7 + 16);
  *(a7 + 16) = _swiftEmptyArrayStorage;
}

void sub_100016DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_10001705C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SynthesisVoiceSubscription();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_100017108(void *a1, int a2, void *a3, void *aBlock, SEL *a5)
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  sub_100020DC4(v9, v8, a5);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_1000171D8(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, void *))
{
  v9 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v13 = _Block_copy(a4);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  _Block_copy(v13);
  v16 = a1;
  a5(v12, v13);
  _Block_release(v13);
  _Block_release(v13);

  return sub_100001E9C(v12, &qword_100035810, &qword_100027D68);
}

void sub_1000174C8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_1000175F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonXPCHandler(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100017630@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for DaemonXPCHandler(0));
  v3 = sub_10001BC6C();

  *a1 = v3;
  return result;
}

char *sub_100017684(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000AEF4(&unk_100035B50, &unk_100027FF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100017790(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000AEF4(&qword_100035B08, &qword_100027FD0);
  v10 = *(type metadata accessor for WorkflowFactory.TTSErrorHandler(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WorkflowFactory.TTSErrorHandler(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100017968(char *a1, int64_t a2, char a3)
{
  result = sub_1000179A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100017988(void *a1, int64_t a2, char a3)
{
  result = sub_100017AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000179A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000AEF4(&unk_100035B50, &unk_100027FF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100017AB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000AEF4(&qword_100035AE8, &qword_100027FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000AEF4(&qword_100035AF0, &qword_100027FB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100017BFC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_10001831C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100017D4C(Swift::Int *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v8 = SynthesisVoice.VoiceType.rawValue.getter();
  Hasher._combine(_:)(v8);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(*(v6 + 48) + 8 * v11);
      v14 = SynthesisVoice.VoiceType.rawValue.getter();
      if (v14 == SynthesisVoice.VoiceType.rawValue.getter())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v6 + 48) + 8 * v11);
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10001849C(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100017E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000AEF4(&qword_100035808, &qword_100027D60);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1000180C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000AEF4(&qword_100035AA0, &qword_100027F80);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = SynthesisVoice.VoiceType.rawValue.getter();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10001831C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100017E68(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100018608();
      goto LABEL_16;
    }

    sub_1000188A4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
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

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10001849C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000180C8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100018764();
      goto LABEL_12;
    }

    sub_100018ADC(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v11 = SynthesisVoice.VoiceType.rawValue.getter();
  Hasher._combine(_:)(v11);
  result = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = SynthesisVoice.VoiceType.rawValue.getter();
      result = SynthesisVoice.VoiceType.rawValue.getter();
      if (v15 == result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100018608()
{
  v1 = v0;
  sub_10000AEF4(&qword_100035808, &qword_100027D60);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *sub_100018764()
{
  v1 = v0;
  sub_10000AEF4(&qword_100035AA0, &qword_100027F80);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1000188A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000AEF4(&qword_100035808, &qword_100027D60);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_100018ADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000AEF4(&qword_100035AA0, &qword_100027F80);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      v19 = SynthesisVoice.VoiceType.rawValue.getter();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_100018D00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000675C(&qword_100035A88, &qword_100035A80, &qword_100027F70);
          for (i = 0; i != v6; ++i)
          {
            sub_10000AEF4(&qword_100035A80, &qword_100027F70);
            v9 = sub_100019390(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TaskOperation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100018EA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000675C(&qword_100035B68, &qword_100035B60, &qword_100028008);
          for (i = 0; i != v6; ++i)
          {
            sub_10000AEF4(&qword_100035B60, &qword_100028008);
            v9 = sub_100019418(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SynthesisVoiceSubscription();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100019048(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000675C(&unk_100035AB0, &qword_100035AA8, &unk_100027F88);
          for (i = 0; i != v6; ++i)
          {
            sub_10000AEF4(&qword_100035AA8, &unk_100027F88);
            v9 = sub_100019418(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SynthesisVoice();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000191EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000675C(&qword_100035BB0, &qword_100035BA8, &qword_100028028);
          for (i = 0; i != v6; ++i)
          {
            sub_10000AEF4(&qword_100035BA8, &qword_100028028);
            v9 = sub_100019498(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for VoiceAsset();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100019390(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    *v3 = v4;
    return sub_100019410;
  }

  __break(1u);
  return result;
}

void (*sub_100019418(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    *v3 = v4;
    return sub_100022AE4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100019498(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_100019518;
  }

  __break(1u);
  return result;
}

uint64_t sub_100019520()
{
  type metadata accessor for RequestPreprocessAction();
  dispatch thunk of static RequestPreprocessAction.processLanguage(for:)();
  type metadata accessor for VoiceSelectionAction();

  dispatch thunk of ObjectPool.find<A>()();

  type metadata accessor for SynthesisRequest();
  v0 = SynthesizingRequestProtocol.voice.getter();
  SynthesizingRequestProtocol.disableThermalFallback.getter();
  SynthesizingRequestProtocol.disableCompactVoice.getter();
  dispatch thunk of BaseRequest.requestCreatedTime.getter();
  v1 = dispatch thunk of VoiceSelectionAction.selectVoiceAsset(_:disableThermalFallback:disableCompactVoice:requestId:)();

  v2 = VoiceAsset.voice.getter();

  v3 = SynthesizingRequestProtocol.voice.getter();
  dispatch thunk of SynthesisVoice.name.getter();
  v5 = v4;

  if (v5)
  {
  }

  else
  {
    if (v2)
    {
      dispatch thunk of SynthesisVoice.footprint.getter();
      v6 = SynthesisVoice.Footprint.rawValue.getter();
      if (v6 == SynthesisVoice.Footprint.rawValue.getter() || (dispatch thunk of SynthesisVoice.footprint.getter(), v7 = SynthesisVoice.Footprint.rawValue.getter(), v7 == SynthesisVoice.Footprint.rawValue.getter()))
      {
        v8 = SynthesizingRequestProtocol.voice.getter();
        dispatch thunk of SynthesisVoice.name.getter();
        dispatch thunk of SynthesisVoice.name.setter();
      }

      else
      {
      }
    }
  }

  return v1;
}

uint64_t sub_100019728()
{
  type metadata accessor for RequestPreprocessAction();
  dispatch thunk of static RequestPreprocessAction.processLanguage(for:)();
  type metadata accessor for VoiceSelectionAction();

  dispatch thunk of ObjectPool.find<A>()();

  v0 = SynthesizingRequestProtocol.voice.getter();
  SynthesizingRequestProtocol.disableThermalFallback.getter();
  SynthesizingRequestProtocol.disableCompactVoice.getter();
  dispatch thunk of BaseRequest.requestCreatedTime.getter();
  v1 = dispatch thunk of VoiceSelectionAction.selectVoiceAsset(_:disableThermalFallback:disableCompactVoice:requestId:)();

  v2 = VoiceAsset.voice.getter();

  v3 = SynthesizingRequestProtocol.voice.getter();
  dispatch thunk of SynthesisVoice.name.getter();
  v5 = v4;

  if (v5)
  {
  }

  else
  {
    if (v2)
    {
      dispatch thunk of SynthesisVoice.footprint.getter();
      v6 = SynthesisVoice.Footprint.rawValue.getter();
      if (v6 == SynthesisVoice.Footprint.rawValue.getter() || (dispatch thunk of SynthesisVoice.footprint.getter(), v7 = SynthesisVoice.Footprint.rawValue.getter(), v7 == SynthesisVoice.Footprint.rawValue.getter()))
      {
        v8 = SynthesizingRequestProtocol.voice.getter();
        dispatch thunk of SynthesisVoice.name.getter();
        dispatch thunk of SynthesisVoice.name.setter();
      }

      else
      {
      }
    }
  }

  return v1;
}

uint64_t sub_10001992C(void *a1, uint64_t a2, uint64_t a3)
{
  v110 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v114 = v5;
  v115 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v108 = &v104 - v12;
  v13 = __chkstk_darwin(v11);
  v107 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v105 = &v104 - v16;
  v17 = __chkstk_darwin(v15);
  v106 = &v104 - v18;
  v19 = __chkstk_darwin(v17);
  v109 = &v104 - v20;
  v21 = __chkstk_darwin(v19);
  v112 = &v104 - v22;
  v23 = __chkstk_darwin(v21);
  v111 = &v104 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v104 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v104 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v104 - v32;
  __chkstk_darwin(v31);
  v35 = &v104 - v34;
  type metadata accessor for InternalSettings();
  v113 = a3;
  dispatch thunk of ObjectPool.find<A>()();
  v36 = dispatch thunk of InternalSettings.disableServerTTS.getter();
  if (v36 != 2 && (v36 & 1) != 0)
  {
    static Logger.service.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Disable Osprey since internal settings set disableServerTTS", v39, 2u);
    }

    goto LABEL_40;
  }

  v40 = dispatch thunk of InternalSettings.forceServerTTS.getter();
  if (v40 != 2 && (v40 & 1) != 0)
  {
    static Logger.service.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Prefer Osprey since internal settings set forceServerTTS", v43, 2u);
    }

    (*(v115 + 8))(v33, v114);
    return 1;
  }

  type metadata accessor for SynthesisRequest();
  if (SynthesizingRequestProtocol.forceOspreyTTS.getter())
  {
    static Logger.service.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Prefer Osprey since request set forceOspreyTTS", v46, 2u);
    }

    (*(v115 + 8))(v30, v114);
    return 1;
  }

  v48 = SynthesizingRequestProtocol.voice.getter();
  dispatch thunk of SynthesisVoice.name.getter();
  v50 = v49;

  if (v50)
  {
  }

  else
  {
    v51 = SynthesizingRequestProtocol.voice.getter();
    dispatch thunk of SynthesisVoice.gender.getter();

    v52 = SynthesisVoice.VoiceGender.rawValue.getter();
    if (v52 == SynthesisVoice.VoiceGender.rawValue.getter())
    {
      static Logger.service.getter();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Disable Osprey since unspecific voice parameter", v55, 2u);
      }

      (*(v115 + 8))(v10, v114);
      return 0;
    }
  }

  if (SynthesizingRequestProtocol.privacySensitive.getter())
  {
    return 0;
  }

  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.find<A>()();
  sub_1000053A0(&v116, v117);
  sub_10000535C(v117, v118);
  v56 = dispatch thunk of OspreyConfigProviding.allowedAppIdentifiers.getter();
  if (v56)
  {
    v57 = v56;
    *&v116 = dispatch thunk of BaseRequest.clientBundleId.getter();
    *(&v116 + 1) = v58;
    __chkstk_darwin(v116);
    *(&v104 - 2) = &v116;
    v59 = sub_100009A0C(sub_100022B08, (&v104 - 4), v57);

    if ((v59 & 1) == 0)
    {
      static Logger.service.getter();
      v73 = a1;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v116 = v77;
        *v76 = 136446210;
        v78 = dispatch thunk of BaseRequest.clientBundleId.getter();
        v80 = sub_100004240(v78, v79, &v116);

        *(v76 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v74, v75, "Client %{public}s is not allowed to use Osprey", v76, 0xCu);
        sub_100004474(v77);
      }

      (*(v115 + 8))(v27, v114);
      goto LABEL_69;
    }
  }

  sub_100004474(v117);
  type metadata accessor for PreinstalledAudioStorage();
  dispatch thunk of ObjectPool.find<A>()();
  v68 = dispatch thunk of PreinstalledAudioStorage.find(request:)();
  if (v68)
  {

    v35 = v111;
    static Logger.service.getter();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v69, v70))
    {
LABEL_39:

LABEL_40:

      (*(v115 + 8))(v35, v114);
      return 0;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Disable Osprey since preinstalled audio is found";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v69, v70, v72, v71, 2u);

    goto LABEL_39;
  }

  if (SynthesizingRequestProtocol.minimizeDeviceUsage.getter())
  {
    v60 = v112;
    static Logger.service.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Prefer Osprey since request set minimizeDeviceUsage", v63, 2u);
    }

LABEL_30:
    (*(v115 + 8))(v60, v114);
    return 1;
  }

  if (SynthesizingRequestProtocol.disableThermalFallback.getter())
  {
    v64 = v109;
    static Logger.service.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Prefer device synthesis, ignoring power and thermal conditions due to disableThermalFallback", v67, 2u);
    }

    (*(v115 + 8))(v64, v114);
    return 0;
  }

  dispatch thunk of ObjectPool.find<A>()();
  v81 = dispatch thunk of InternalSettings.ignorePowerAndThermalState.getter();
  v82 = v110;
  if (v81 != 2 && (v81 & 1) != 0)
  {
    v35 = v106;
    static Logger.service.getter();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_39;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Prefer device synthesis, ignoring power and thermal conditions due to internal settings";
    goto LABEL_38;
  }

  if (!v82)
  {
    return 1;
  }

  v83 = VoiceAsset.voice.getter();
  dispatch thunk of SynthesisVoice.type.getter();

  v84 = SynthesisVoice.VoiceType.rawValue.getter();
  if (v84 == SynthesisVoice.VoiceType.rawValue.getter())
  {
    type metadata accessor for NeuralUtils();
    if (static NeuralUtils.isH12Platform.getter())
    {
      v85 = [objc_opt_self() processInfo];
      v86 = [v85 thermalState];

      if (v86 == 3)
      {
        v60 = v105;
        static Logger.service.getter();
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&_mh_execute_header, v87, v88, "Prefer Osprey due thermal critical on H12 platform", v89, 2u);
        }

        goto LABEL_30;
      }
    }
  }

  v90 = VoiceAsset.voice.getter();
  dispatch thunk of SynthesisVoice.type.getter();

  v91 = SynthesisVoice.VoiceType.rawValue.getter();
  if (v91 != SynthesisVoice.VoiceType.rawValue.getter())
  {
    v92 = VoiceAsset.voice.getter();
    dispatch thunk of SynthesisVoice.type.getter();

    v93 = SynthesisVoice.VoiceType.rawValue.getter();
    if (v93 != SynthesisVoice.VoiceType.rawValue.getter())
    {

      return 1;
    }
  }

  sub_10000AEF4(&qword_100035B10, &qword_100027FD8);
  dispatch thunk of ObjectPool.find<A>()();
  sub_1000053A0(&v116, v117);
  sub_10000535C(v117, v118);
  VoiceAsset.path.getter();
  dispatch thunk of NeuralVoiceUtilities.currentSampleRate(voicePath:)();
  v95 = v94;

  if (v95 >= 16000.0)
  {
    v100 = v107;
    static Logger.service.getter();
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 134217984;
      *(v103 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v101, v102, "Prefer device synthesis due to high neural voice sampling rate: %f", v103, 0xCu);
    }

    (*(v115 + 8))(v100, v114);
LABEL_69:
    sub_100004474(v117);
    return 0;
  }

  v96 = v108;
  static Logger.service.getter();
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 134217984;
    *(v99 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v97, v98, "Prefer osprey synthesis due to low neural voice sampling rate: %f", v99, 0xCu);
  }

  (*(v115 + 8))(v96, v114);
  sub_100004474(v117);
  return 1;
}

uint64_t sub_10001A778(void *a1, uint64_t a2, uint64_t a3)
{
  v113 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v117 = v5;
  v118 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v110 = &v107 - v12;
  v13 = __chkstk_darwin(v11);
  v109 = &v107 - v14;
  v15 = __chkstk_darwin(v13);
  v107 = &v107 - v16;
  v17 = __chkstk_darwin(v15);
  v108 = &v107 - v18;
  v19 = __chkstk_darwin(v17);
  v112 = &v107 - v20;
  v21 = __chkstk_darwin(v19);
  v115 = &v107 - v22;
  v23 = __chkstk_darwin(v21);
  v114 = &v107 - v24;
  v25 = __chkstk_darwin(v23);
  v111 = &v107 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v107 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v107 - v31;
  __chkstk_darwin(v30);
  v34 = &v107 - v33;
  type metadata accessor for InternalSettings();
  v116 = a3;
  dispatch thunk of ObjectPool.find<A>()();
  v35 = dispatch thunk of InternalSettings.disableServerTTS.getter();
  if (v35 != 2 && (v35 & 1) != 0)
  {
    static Logger.service.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Disable Osprey since internal settings set disableServerTTS", v38, 2u);
    }

    (*(v118 + 8))(v34, v117);
    return 0;
  }

  v39 = dispatch thunk of InternalSettings.forceServerTTS.getter();
  if (v39 != 2 && (v39 & 1) != 0)
  {
    static Logger.service.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Prefer Osprey since internal settings set forceServerTTS", v42, 2u);
    }

    (*(v118 + 8))(v32, v117);
    return 1;
  }

  if (SynthesizingRequestProtocol.forceOspreyTTS.getter())
  {
    static Logger.service.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Prefer Osprey since request set forceOspreyTTS", v45, 2u);
    }

    (*(v118 + 8))(v29, v117);
    return 1;
  }

  v47 = SynthesizingRequestProtocol.voice.getter();
  dispatch thunk of SynthesisVoice.name.getter();
  v49 = v48;

  if (v49)
  {
  }

  else
  {
    v50 = SynthesizingRequestProtocol.voice.getter();
    dispatch thunk of SynthesisVoice.gender.getter();

    v51 = SynthesisVoice.VoiceGender.rawValue.getter();
    if (v51 == SynthesisVoice.VoiceGender.rawValue.getter())
    {
      static Logger.service.getter();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Disable Osprey since unspecific voice parameter", v54, 2u);
      }

      (*(v118 + 8))(v10, v117);
      return 0;
    }
  }

  if (SynthesizingRequestProtocol.privacySensitive.getter())
  {
    return 0;
  }

  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.find<A>()();
  sub_1000053A0(&v119, v120);
  sub_10000535C(v120, v121);
  v59 = dispatch thunk of OspreyConfigProviding.allowedAppIdentifiers.getter();
  if (v59)
  {
    v60 = v59;
    *&v119 = dispatch thunk of BaseRequest.clientBundleId.getter();
    *(&v119 + 1) = v61;
    __chkstk_darwin(v119);
    *(&v107 - 2) = &v119;
    v62 = sub_100009A0C(sub_100009B10, (&v107 - 4), v60);

    if ((v62 & 1) == 0)
    {
      v71 = v111;
      static Logger.service.getter();
      v72 = a1;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v119 = v76;
        *v75 = 136446210;
        v77 = dispatch thunk of BaseRequest.clientBundleId.getter();
        v79 = sub_100004240(v77, v78, &v119);

        *(v75 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v73, v74, "Client %{public}s is not allowed to use Osprey", v75, 0xCu);
        sub_100004474(v76);
      }

      (*(v118 + 8))(v71, v117);
      goto LABEL_71;
    }
  }

  sub_100004474(v120);
  type metadata accessor for PreinstalledAudioStorage();
  dispatch thunk of ObjectPool.find<A>()();
  v67 = dispatch thunk of PreinstalledAudioStorage.find(request:)();
  if (v67)
  {

    v63 = v114;
    static Logger.service.getter();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Disable Osprey since preinstalled audio is found", v70, 2u);
    }

LABEL_40:
    (*(v118 + 8))(v63, v117);
    return 0;
  }

  if (SynthesizingRequestProtocol.minimizeDeviceUsage.getter())
  {
    v55 = v115;
    static Logger.service.getter();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Prefer Osprey since request set minimizeDeviceUsage", v58, 2u);
    }

LABEL_28:
    (*(v118 + 8))(v55, v117);
    return 1;
  }

  if (SynthesizingRequestProtocol.disableThermalFallback.getter())
  {
    v63 = v112;
    static Logger.service.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Prefer device synthesis, ignoring power and thermal conditions due to disableThermalFallback", v66, 2u);
    }

    goto LABEL_40;
  }

  dispatch thunk of ObjectPool.find<A>()();
  v80 = dispatch thunk of InternalSettings.ignorePowerAndThermalState.getter();
  v81 = v113;
  if (v80 != 2 && (v80 & 1) != 0)
  {
    v82 = v108;
    static Logger.service.getter();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Prefer device synthesis, ignoring power and thermal conditions due to internal settings", v85, 2u);
    }

    (*(v118 + 8))(v82, v117);
    return 0;
  }

  if (!v81)
  {
    return 1;
  }

  v86 = VoiceAsset.voice.getter();
  dispatch thunk of SynthesisVoice.type.getter();

  v87 = SynthesisVoice.VoiceType.rawValue.getter();
  if (v87 == SynthesisVoice.VoiceType.rawValue.getter())
  {
    type metadata accessor for NeuralUtils();
    if (static NeuralUtils.isH12Platform.getter())
    {
      v88 = [objc_opt_self() processInfo];
      v89 = [v88 thermalState];

      if (v89 == 3)
      {
        v55 = v107;
        static Logger.service.getter();
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "Prefer Osprey due thermal critical on H12 platform", v92, 2u);
        }

        goto LABEL_28;
      }
    }
  }

  v93 = VoiceAsset.voice.getter();
  dispatch thunk of SynthesisVoice.type.getter();

  v94 = SynthesisVoice.VoiceType.rawValue.getter();
  if (v94 != SynthesisVoice.VoiceType.rawValue.getter())
  {
    v95 = VoiceAsset.voice.getter();
    dispatch thunk of SynthesisVoice.type.getter();

    v96 = SynthesisVoice.VoiceType.rawValue.getter();
    if (v96 != SynthesisVoice.VoiceType.rawValue.getter())
    {

      return 1;
    }
  }

  sub_10000AEF4(&qword_100035B10, &qword_100027FD8);
  dispatch thunk of ObjectPool.find<A>()();
  sub_1000053A0(&v119, v120);
  sub_10000535C(v120, v121);
  VoiceAsset.path.getter();
  dispatch thunk of NeuralVoiceUtilities.currentSampleRate(voicePath:)();
  v98 = v97;

  if (v98 >= 16000.0)
  {
    v103 = v109;
    static Logger.service.getter();
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 134217984;
      *(v106 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v104, v105, "Prefer device synthesis due to high neural voice sampling rate: %f", v106, 0xCu);
    }

    (*(v118 + 8))(v103, v117);
LABEL_71:
    sub_100004474(v120);
    return 0;
  }

  v99 = v110;
  static Logger.service.getter();
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134217984;
    *(v102 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v100, v101, "Prefer osprey synthesis due to low neural voice sampling rate: %f", v102, 0xCu);
  }

  (*(v118 + 8))(v99, v117);
  sub_100004474(v120);
  return 1;
}

uint64_t sub_10001B620(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100017BFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001B6B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100022470();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100017D4C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10001B72C()
{
  v51 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v53 = *(v51 - 8);
  v0 = *(v53 + 64);
  v1 = __chkstk_darwin(v51);
  v60 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v50 - v3;
  v5 = type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  v6 = type metadata accessor for RequestPreprocessAction();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  swift_retain_n();
  v9 = RequestPreprocessAction.init(pool:)();
  v58 = v6;
  v59 = &protocol witness table for RequestPreprocessAction;
  v57 = v9;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  swift_allocObject();
  v12 = WorkflowNode.init(action:)();
  v13 = type metadata accessor for RequestParsingAction();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = RequestParsingAction.init(pool:)();
  v58 = v13;
  v59 = &protocol witness table for RequestParsingAction;
  v57 = v16;
  v17 = *(v5 + 48);
  v18 = *(v5 + 52);
  swift_allocObject();
  v19 = WorkflowNode.init(action:)();
  v20 = type metadata accessor for VoiceSelectionAction();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = VoiceSelectionAction.init(pool:)();
  v58 = v20;
  v59 = &protocol witness table for VoiceSelectionAction;
  v57 = v23;
  v24 = *(v5 + 48);
  v25 = *(v5 + 52);
  swift_allocObject();
  v26 = WorkflowNode.init(action:)();
  v27 = type metadata accessor for SynthesisEngineSelectionAction();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = SynthesisEngineSelectionAction.init(pool:)();
  v58 = v27;
  v59 = &protocol witness table for SynthesisEngineSelectionAction;
  v57 = v30;
  v31 = *(v5 + 48);
  v32 = *(v5 + 52);
  swift_allocObject();
  v33 = WorkflowNode.init(action:)();
  v34 = type metadata accessor for DeviceSynthesisAction();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = DeviceSynthesisAction.init(pool:)();
  v58 = v34;
  v59 = &protocol witness table for DeviceSynthesisAction;
  v57 = v37;
  v38 = *(v5 + 48);
  v39 = *(v5 + 52);
  swift_allocObject();
  v40 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100027E50;
  *(v41 + 32) = v12;
  *(v41 + 40) = v19;
  *(v41 + 48) = v26;
  *(v41 + 56) = v33;
  *(v41 + 64) = v40;
  v55 = v12;

  v54 = v19;

  v52 = v26;

  v42 = v51;
  DirectedAcyclicGraph.chain(nodes:)(v41);

  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  v43 = v56;
  dispatch thunk of ObjectPool.find<A>()();
  if (v43)
  {
  }

  v44 = v53;
  (*(v53 + 16))(v60, v4, v42);
  v45 = type metadata accessor for Workflow();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = Workflow.init(graph:notification:errorHandlers:)();
  (*(v44 + 8))(v4, v42);

  return v48;
}

uint64_t sub_10001BBA8()
{
  result = type metadata accessor for Entitlements();
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

id sub_10001BC6C()
{
  v1 = type metadata accessor for Entitlements();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession] = 0;
  sub_10000AEF4(&unk_100035A40, &unk_100027F40);
  dispatch thunk of ObjectPool.find<A>()();
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate] = v9;
  type metadata accessor for Preferences();
  dispatch thunk of ObjectPool.find<A>()();
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_preferences] = v9;
  dispatch thunk of ObjectPool.find<A>()();
  (*(v2 + 32))(&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_entitlements], v5, v1);
  type metadata accessor for TTSAssetUAFAssetProvider();
  dispatch thunk of ObjectPool.find<A>()();
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_uafAssetProvider] = v9;
  type metadata accessor for TrialAssetProvider();
  dispatch thunk of ObjectPool.find<A>()();
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_trialAssetProvider] = v9;
  type metadata accessor for SubscriptionService();
  dispatch thunk of ObjectPool.find<A>()();
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_subscriptionService] = v9;
  v6 = type metadata accessor for DaemonXPCHandler(0);
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "init");
}

void (*sub_10001BF60(char a1, char *a2, uint64_t a3))(_BYTE *, void)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession;
  v15 = *&a2[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession];
  if ((a1 & 1) == 0)
  {
    if (v15)
    {
      v41 = a3;
      type metadata accessor for EngineCachingService();
      static EngineCachingService.shared.getter();
      result = dispatch thunk of EngineCachingService.activeSessionCount.modify();
      v29 = *v28 - 1;
      if (!__OFSUB__(*v28, 1))
      {
        v40 = v7;
        *v28 = v29;
        result(v43, 0);

        static Logger.service.getter();
        v30 = a2;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v42 = v6;
          v34 = v33;
          v35 = swift_slowAlloc();
          *v34 = 138412546;
          *(v34 + 4) = v30;
          *v35 = v30;
          *(v34 + 12) = 2048;
          v36 = v30;
          static EngineCachingService.shared.getter();
          v37 = dispatch thunk of EngineCachingService.activeSessionCount.getter();

          *(v34 + 14) = v37;
          _os_log_impl(&_mh_execute_header, v31, v32, "DaemonXPCHandler %@ sets inactive, total active session count: %ld", v34, 0x16u);
          sub_100001E9C(v35, &qword_1000353F8, &qword_100027B40);

          v6 = v42;
        }

        (*(v40 + 8))(v11, v6);
        v38 = *&a2[v14];
        *&a2[v14] = 0;
        swift_unknownObjectRelease();
        a3 = v41;
        return (*(a3 + 16))(a3, 0);
      }

      __break(1u);
      goto LABEL_14;
    }

    return (*(a3 + 16))(a3, 0);
  }

  if (v15)
  {
    return (*(a3 + 16))(a3, 0);
  }

  v42 = v6;
  v16 = os_transaction_create();
  v17 = *&a2[v14];
  *&a2[v14] = v16;
  swift_unknownObjectRelease();
  type metadata accessor for EngineCachingService();
  static EngineCachingService.shared.getter();
  result = dispatch thunk of EngineCachingService.activeSessionCount.modify();
  if (!__OFADD__(*v19, 1))
  {
    ++*v19;
    result(v43, 0);

    static Logger.service.getter();
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v7;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      *(v24 + 4) = v20;
      *v25 = v20;
      *(v24 + 12) = 2048;
      v26 = v20;
      static EngineCachingService.shared.getter();
      v27 = dispatch thunk of EngineCachingService.activeSessionCount.getter();

      *(v24 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "DaemonXPCHandler %@ sets active, total active session count: %ld", v24, 0x16u);
      sub_100001E9C(v25, &qword_1000353F8, &qword_100027B40);

      v7 = v23;
    }

    (*(v7 + 8))(v13, v42);
    return (*(a3 + 16))(a3, 0);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10001C394(char *a1, char *a2, const void *a3)
{
  v147 = a1;
  v141 = type metadata accessor for UUID();
  v140 = *(v141 - 8);
  v5 = *(v140 + 64);
  __chkstk_darwin(v141);
  v138 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v139 = &v133 - v9;
  v10 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v153 = *(v10 - 8);
  v154 = v10;
  v11 = *(v153 + 64);
  v12 = __chkstk_darwin(v10);
  v150 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v133 - v14;
  v149 = type metadata accessor for Logger();
  v148 = *(v149 - 8);
  v16 = *(v148 + 64);
  __chkstk_darwin(v149);
  v146 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for OSSignpostID();
  v18 = *(v145 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v145);
  v22 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v133 - v23;
  v144 = type metadata accessor for OSSignposter();
  v25 = *(v144 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v144);
  v28 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = swift_allocObject();
  *(v152 + 16) = a3;
  v142 = a3;
  _Block_copy(a3);
  static Signpost.signposter.getter();
  static OSSignpostID.exclusive.getter();
  v29 = OSSignposter.logHandle.getter();
  v30 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v31 = swift_slowAlloc();
    v143 = a2;
    v32 = v15;
    v33 = v31;
    *v31 = 0;
    v34 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v34, "TTS enqueue audio task", "", v33, 2u);
    v15 = v32;
    a2 = v143;
  }

  v35 = v145;
  (*(v18 + 16))(v22, v24, v145);
  v36 = type metadata accessor for OSSignpostIntervalState();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v151 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v18 + 8))(v24, v35);
  (*(v25 + 8))(v28, v144);
  v39 = v146;
  static Logger.service.getter();
  v40 = v147;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138543362;
    *(v43 + 4) = v40;
    *v44 = v40;
    v45 = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "Received #AudioRequest %{public}@", v43, 0xCu);
    sub_100001E9C(v44, &qword_1000353F8, &qword_100027B40);
  }

  v147 = v40;

  (*(v148 + 8))(v39, v149);
  v46 = type metadata accessor for ObjectPool();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = ObjectPool.init()();
  v50 = [objc_allocWithZone(NSNotificationCenter) init];
  *&aBlock = v50;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for Entitlements();
  dispatch thunk of ObjectPool.inject<A>(object:)();
  v51 = type metadata accessor for InternalSettings();
  *&aBlock = static InternalSettings.shared.getter();
  v149 = v51;
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v52 = type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100027E10;
  v54 = type metadata accessor for RequestParsingAction();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();

  v57 = RequestParsingAction.init(pool:)();
  *(&v156 + 1) = v54;
  v157 = &protocol witness table for RequestParsingAction;
  *&aBlock = v57;
  v58 = *(v52 + 48);
  v59 = *(v52 + 52);
  swift_allocObject();
  *(v53 + 32) = WorkflowNode.init(action:)();
  v60 = type metadata accessor for AudioPlaybackAction();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();

  v63 = AudioPlaybackAction.init(pool:)();
  *(&v156 + 1) = v60;
  v157 = &protocol witness table for AudioPlaybackAction;
  *&aBlock = v63;
  v64 = *(v52 + 48);
  v65 = *(v52 + 52);
  swift_allocObject();
  *(v53 + 40) = WorkflowNode.init(action:)();
  v66 = v154;
  DirectedAcyclicGraph.chain(nodes:)(v53);

  (*(v153 + 16))(v150, v15, v66);
  v67 = type metadata accessor for Workflow();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  v70 = a2;
  v71 = v15;
  v72 = v50;
  v150 = v50;
  v146 = Workflow.init(graph:notification:errorHandlers:)();
  v144 = v49;
  v145 = v71;
  v143 = v70;
  v73 = *&v70[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate];
  v142 = type metadata accessor for DelegateHandler();
  v74 = *(v142 + 48);
  v75 = *(v142 + 52);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v76 = v147;
  v77 = v72;
  v135 = v73;
  v134 = v76;
  v148 = DelegateHandler.init(notificationCenter:delegate:request:)();
  v78 = type metadata accessor for CoreAnalyticsSynthesisHandler();
  aBlock = 0u;
  v156 = 0u;
  v157 = 0;
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  swift_allocObject();
  v81 = v77;
  v82 = CoreAnalyticsSynthesisHandler.init(notificationCenter:coreAnalyticsService:)();
  v83 = type metadata accessor for SignpostHandler();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  v86 = v81;
  v87 = SignpostHandler.init(notificationCenter:)();
  v88 = type metadata accessor for SiriAnalyticsHandler();
  v89 = v86;
  v90 = SiriAnalyticsHandler.__allocating_init(notificationCenter:logSynthesisEvents:)();
  v91 = type metadata accessor for AudioHandler();
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  swift_allocObject();
  v147 = v89;
  v94 = AudioHandler.init(notificationCenter:)();
  v95 = swift_allocObject();
  sub_10000AEF4(&unk_100035A70, &unk_100027F60);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_100027950;
  *(v96 + 32) = v148;
  *(v96 + 56) = v142;
  *(v96 + 64) = v82;
  *(v96 + 88) = v78;
  *(v96 + 96) = v87;
  *(v96 + 120) = v83;
  *(v96 + 128) = v90;
  *(v96 + 184) = v91;
  *(v96 + 152) = v88;
  *(v96 + 160) = v94;
  *(v95 + 16) = v96;

  v142 = v82;

  v137 = v87;

  v136 = v90;

  v97 = os_transaction_create();
  v98 = v152;
  if (v97)
  {
    v99 = v97;
    *(&v156 + 1) = swift_getObjectType();
    *&aBlock = v99;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v95 + 16) = v96;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v96 = sub_10000663C(0, *(v96 + 16) + 1, 1, v96);
      *(v95 + 16) = v96;
    }

    v102 = *(v96 + 16);
    v101 = *(v96 + 24);
    if (v102 >= v101 >> 1)
    {
      v96 = sub_10000663C((v101 > 1), v102 + 1, 1, v96);
      *(v95 + 16) = v96;
    }

    swift_unknownObjectRelease();
    *(v96 + 16) = v102 + 1;
    sub_10000674C(&aBlock, (v96 + 32 * v102 + 32));
    *(v95 + 16) = v96;
  }

  static InternalSettings.shared.getter();
  v103 = dispatch thunk of InternalSettings.enableDiagnostic.getter();

  if (v103 != 2 && (v103 & 1) != 0)
  {
    v104 = type metadata accessor for DiagnosticService();
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    swift_allocObject();
    v107 = v147;
    v108 = DiagnosticService.init(notification:)();
    *(&v156 + 1) = v104;
    *&aBlock = v108;
    v109 = *(v95 + 16);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    *(v95 + 16) = v109;
    if ((v110 & 1) == 0)
    {
      v109 = sub_10000663C(0, *(v109 + 2) + 1, 1, v109);
      *(v95 + 16) = v109;
    }

    v112 = *(v109 + 2);
    v111 = *(v109 + 3);
    if (v112 >= v111 >> 1)
    {
      v109 = sub_10000663C((v111 > 1), v112 + 1, 1, v109);
    }

    *(v109 + 2) = v112 + 1;
    sub_10000674C(&aBlock, &v109[32 * v112 + 32]);
    *(v95 + 16) = v109;
  }

  v113 = objc_allocWithZone(type metadata accessor for TaskOperation());
  v114 = v134;

  v149 = v94;
  v115 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v116 = swift_allocObject();
  v117 = v147;
  v118 = v143;
  v116[2] = v147;
  v116[3] = v118;
  v116[4] = sub_100022B24;
  v116[5] = v98;
  v116[6] = v115;
  v116[7] = v95;
  v157 = sub_10002287C;
  v158 = v116;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v156 = sub_100002B68;
  *(&v156 + 1) = &unk_100031E98;
  v119 = _Block_copy(&aBlock);
  v120 = v115;
  v150 = v117;
  v121 = v120;
  v122 = v118;

  sub_1000067AC(sub_10002287C);

  [v121 setCompletionBlock:v119];
  _Block_release(v119);

  v123 = v139;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v124 = v140;
  v125 = v141;
  if ((*(v140 + 48))(v123, 1, v141))
  {
    sub_100001E9C(v123, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    v126 = v138;
    (*(v124 + 16))(v138, v123, v125);
    sub_100001E9C(v123, &qword_100035810, &qword_100027D68);
    v127 = UUID.uuidString.getter();
    v129 = v128;
    (*(v124 + 8))(v126, v125);
    sub_100007504(v127, v129);
  }

  v131 = v153;
  v130 = v154;
  sub_100007914(v121);

  (*(v131 + 8))(v145, v130);

  sub_100016838(v151, "TTS enqueue audio task");
}

uint64_t sub_10001D484(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v48 - v9;
  v51 = type metadata accessor for Logger();
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v51);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v50 = &v48 - v16;
  __chkstk_darwin(v15);
  v18 = &v48 - v17;
  static Logger.service.getter();
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v48 = v2;
    v24 = v3;
    v25 = v6;
    v26 = v11;
    v27 = v23;
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "Cancelling #Request %@", v22, 0xCu);
    sub_100001E9C(v27, &qword_1000353F8, &qword_100027B40);
    v11 = v26;
    v6 = v25;
    v3 = v24;
    v2 = v48;
  }

  v29 = *(v11 + 8);
  v30 = v51;
  v29(v18, v51);
  dispatch thunk of BaseRequest.accessoryId.getter();
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_100001E9C(v10, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_100001E9C(v10, &qword_100035810, &qword_100027D68);
    v31 = UUID.uuidString.getter();
    v33 = v32;
    (*(v3 + 8))(v6, v2);
    sub_100007504(v31, v33);
  }

  v34 = dispatch thunk of BaseRequest.requestCreatedTime.getter();
  v35 = sub_10000C708(v34);

  if (v35)
  {
    [v35 cancel];
    v36 = v50;
    static Logger.service.getter();
    v37 = v35;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v35;
      v42 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "Requested cancellation of task %@", v40, 0xCu);
      sub_100001E9C(v41, &qword_1000353F8, &qword_100027B40);
      v36 = v50;
    }

    else
    {

      v38 = v37;
    }
  }

  else
  {
    v43 = v49;
    static Logger.service.getter();
    v44 = v19;
    v38 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = dispatch thunk of BaseRequest.requestCreatedTime.getter();

      _os_log_impl(&_mh_execute_header, v38, v45, "No task found for request of id %llu", v46, 0xCu);
    }

    else
    {

      v38 = v44;
    }

    v36 = v43;
  }

  return (v29)(v36, v30);
}

uint64_t sub_10001DA3C(void *a1, char *a2, const void *a3)
{
  v174 = a2;
  v5 = type metadata accessor for UUID();
  v166 = *(v5 - 8);
  v167 = v5;
  v6 = *(v166 + 64);
  __chkstk_darwin(v5);
  v163 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v165 = &v153 - v10;
  v11 = type metadata accessor for Logger();
  v171 = *(v11 - 1);
  v172 = v11;
  v12 = v171[8];
  v13 = __chkstk_darwin(v11);
  v162 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v164 = &v153 - v16;
  __chkstk_darwin(v15);
  v170 = &v153 - v17;
  v18 = type metadata accessor for OSSignpostID();
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v153 - v24;
  v169 = type metadata accessor for OSSignposter();
  v26 = *(v169 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v169);
  v29 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = swift_allocObject();
  *(v173 + 16) = a3;
  v168 = a3;
  _Block_copy(a3);
  static Signpost.signposter.getter();
  static OSSignpostID.exclusive.getter();
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v32 = swift_slowAlloc();
    v161 = v18;
    v33 = a1;
    v34 = v32;
    *v32 = 0;
    v35 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v35, "TTS enqueue synthesis task", "", v34, 2u);
    a1 = v33;
    v18 = v161;
  }

  (*(v19 + 16))(v23, v25, v18);
  v36 = type metadata accessor for OSSignpostIntervalState();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v19 + 8))(v25, v18);
  (*(v26 + 8))(v29, v169);
  v40 = v170;
  static Logger.service.getter();
  v41 = a1;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&aBlock = v45;
    *v44 = 136446210;
    v46 = [v41 description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = sub_100004240(v47, v49, &aBlock);

    *(v44 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v42, v43, "Received #SynthesisRequest %{public}s", v44, 0xCu);
    sub_100004474(v45);
  }

  (v171[1])(v40, v172);
  v51 = type metadata accessor for ObjectPool();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = ObjectPool.init()();
  v55 = [objc_allocWithZone(NSNotificationCenter) init];
  *&aBlock = v55;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for Entitlements();
  dispatch thunk of ObjectPool.inject<A>(object:)();
  v56 = type metadata accessor for InternalSettings();
  *&aBlock = static InternalSettings.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for InlineStreamingStorage();
  *&aBlock = static InlineStreamingStorage.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v57 = type metadata accessor for TTSAssetUAFAssetProvider();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  *&aBlock = TTSAssetUAFAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v60 = type metadata accessor for TrialAssetProvider();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  *&aBlock = TrialAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v63 = type metadata accessor for LocalAssetProvider();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  *&aBlock = LocalAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v66 = type metadata accessor for VocalizerCustomVoiceProvider();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  *&aBlock = VocalizerCustomVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v69 = type metadata accessor for PreinstalledVoiceProvider();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  *&aBlock = PreinstalledVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v72 = type metadata accessor for BuiltInVoiceProvider();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  *&aBlock = BuiltInVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyClient();
  *&aBlock = static OspreyClient.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyChainedConfigs();
  v75 = dispatch thunk of BaseRequest.clientBundleId.getter();
  sub_1000051EC(v75, v76, &aBlock);

  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  sub_100004474(&aBlock);
  v77 = type metadata accessor for SiriSynthesisProfile();
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  *(v78 + 24) = 1;
  *(v78 + 28) = 0;
  *(v78 + 32) = 1;
  *(&v176 + 1) = v77;
  v177 = sub_1000041F8(&qword_100035AC8, type metadata accessor for SiriSynthesisProfile);
  *&aBlock = v78;
  sub_10000AEF4(&qword_100035AD0, &qword_100027FA0);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  sub_100004474(&aBlock);
  type metadata accessor for EngineCachingService();
  *&aBlock = static EngineCachingService.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for CacheStorage();
  v79 = static CacheStorage.sharedSynthesisCache.getter();
  if (v79)
  {
    *&aBlock = v79;
    dispatch thunk of ObjectPool.inject<A>(object:)();
  }

  type metadata accessor for PreinstalledAudioStorage();
  *&aBlock = static PreinstalledAudioStorage.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v80 = sub_1000149D4(v41, v54);

  v160 = v39;
  v81 = *&v174[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate];
  v82 = type metadata accessor for DelegateHandler();
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v85 = v41;
  v169 = v80;

  v86 = v55;
  v155 = v81;
  v154 = v85;
  v170 = DelegateHandler.init(notificationCenter:delegate:request:)();
  v87 = type metadata accessor for CoreAnalyticsSynthesisHandler();
  aBlock = 0u;
  v176 = 0u;
  v177 = 0;
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  v90 = v86;
  v91 = CoreAnalyticsSynthesisHandler.init(notificationCenter:coreAnalyticsService:)();
  v159 = type metadata accessor for SiriAnalyticsHandler();
  v92 = v90;
  v93 = SiriAnalyticsHandler.__allocating_init(notificationCenter:logSynthesisEvents:)();
  v157 = v56;
  v94 = v93;
  v95 = type metadata accessor for SignpostHandler();
  v96 = *(v95 + 48);
  v97 = *(v95 + 52);
  swift_allocObject();
  v161 = v92;
  v98 = SignpostHandler.init(notificationCenter:)();
  v99 = swift_allocObject();
  sub_10000AEF4(&unk_100035A70, &unk_100027F60);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_100027E60;
  *(v100 + 32) = v170;
  *(v100 + 56) = v82;
  *(v100 + 64) = v91;
  *(v100 + 88) = v87;
  *(v100 + 96) = v94;
  *(v100 + 152) = v95;
  *(v100 + 120) = v159;
  *(v100 + 128) = v98;
  *(v99 + 16) = v100;

  v159 = v91;

  v158 = v94;

  v156 = v98;

  v101 = os_transaction_create();
  v102 = v164;
  if (v101)
  {
    v103 = v101;
    *(&v176 + 1) = swift_getObjectType();
    *&aBlock = v103;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v99 + 16) = v100;
    v105 = v99;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v100 = sub_10000663C(0, *(v100 + 16) + 1, 1, v100);
      *(v99 + 16) = v100;
    }

    v107 = *(v100 + 16);
    v106 = *(v100 + 24);
    if (v107 >= v106 >> 1)
    {
      v100 = sub_10000663C((v106 > 1), v107 + 1, 1, v100);
      *(v105 + 16) = v100;
    }

    swift_unknownObjectRelease();
    *(v100 + 16) = v107 + 1;
    sub_10000674C(&aBlock, (v100 + 32 * v107 + 32));
    *(v105 + 16) = v100;
    v99 = v105;
  }

  v168 = v99;
  static InternalSettings.shared.getter();
  v108 = dispatch thunk of InternalSettings.enableDiagnostic.getter();

  v110 = v171;
  v109 = v172;
  v111 = v154;
  if (v108 != 2 && (v108 & 1) != 0)
  {
    v112 = type metadata accessor for DiagnosticService();
    v113 = *(v112 + 48);
    v114 = *(v112 + 52);
    swift_allocObject();
    v115 = v161;
    v116 = DiagnosticService.init(notification:)();
    *(&v176 + 1) = v112;
    *&aBlock = v116;
    v117 = v168;
    v118 = *(v168 + 16);
    v119 = swift_isUniquelyReferenced_nonNull_native();
    *(v117 + 16) = v118;
    if ((v119 & 1) == 0)
    {
      v118 = sub_10000663C(0, *(v118 + 2) + 1, 1, v118);
      *(v168 + 16) = v118;
    }

    v121 = *(v118 + 2);
    v120 = *(v118 + 3);
    if (v121 >= v120 >> 1)
    {
      v118 = sub_10000663C((v120 > 1), v121 + 1, 1, v118);
    }

    *(v118 + 2) = v121 + 1;
    sub_10000674C(&aBlock, &v118[32 * v121 + 32]);
    *(v168 + 16) = v118;
  }

  dispatch thunk of BaseRequest.sandboxToken.getter();
  if (v122)
  {
    static Logger.service.getter();
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "Consuming sandbox token", v125, 2u);
    }

    v126 = v110[1];
    v126(v102, v109);
    String.utf8CString.getter();

    v127 = sandbox_extension_consume();

    if (v127 != -1)
    {
      v128 = 0;
      goto LABEL_29;
    }

    v129 = v162;
    static Logger.service.getter();
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&_mh_execute_header, v130, v131, "Unable to consume sandbox extension", v132, 2u);
    }

    v126(v129, v109);
  }

  v127 = 0;
  v128 = 1;
LABEL_29:
  v133 = objc_allocWithZone(type metadata accessor for TaskOperation());
  v171 = v111;
  v134 = v161;
  v135 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v136 = swift_allocObject();
  v137 = v173;
  v138 = v174;
  *(v136 + 16) = v134;
  *(v136 + 24) = v138;
  *(v136 + 32) = sub_100022B24;
  *(v136 + 40) = v137;
  v139 = v168;
  *(v136 + 48) = v135;
  *(v136 + 56) = v139;
  *(v136 + 64) = v127;
  *(v136 + 72) = v128;
  v177 = sub_1000225A4;
  v178 = v136;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v176 = sub_100002B68;
  *(&v176 + 1) = &unk_100031D58;
  v140 = _Block_copy(&aBlock);
  v141 = v135;
  v172 = v134;
  v142 = v141;
  v143 = v138;

  sub_1000067AC(sub_1000225A4);

  [v142 setCompletionBlock:v140];
  _Block_release(v140);

  v144 = v165;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v146 = v166;
  v145 = v167;
  if ((*(v166 + 48))(v144, 1, v167))
  {
    sub_100001E9C(v144, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    v147 = v163;
    (*(v146 + 16))(v163, v144, v145);
    sub_100001E9C(v144, &qword_100035810, &qword_100027D68);
    v148 = UUID.uuidString.getter();
    v150 = v149;
    (*(v146 + 8))(v147, v145);
    sub_100007504(v148, v150);
  }

  v151 = v160;
  sub_100007914(v142);

  sub_100016838(v151, "TTS enqueue synthesis task");
}

uint64_t sub_10001EBDC(void *a1, uint64_t a2, const void *a3)
{
  v67 = type metadata accessor for UUID();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v67);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v65 = &v60 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = swift_allocObject();
  *(v68 + 16) = a3;
  _Block_copy(a3);
  static Logger.service.getter();
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v66 = v6;
  v64 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v62 = a2;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136446210;
    v24 = [v17 description];
    v61 = v12;
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_100004240(v26, v28, aBlock);

    *(v21 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Received #DurationEstimation %{public}s", v21, 0xCu);
    sub_100004474(v23);
    a2 = v62;

    (*(v13 + 8))(v16, v61);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v30 = type metadata accessor for ObjectPool();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  ObjectPool.init()();
  v33 = [objc_allocWithZone(NSNotificationCenter) init];
  aBlock[0] = v33;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  v34 = type metadata accessor for BuiltInVoiceProvider();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  aBlock[0] = BuiltInVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v37 = type metadata accessor for EngineCachingService();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  aBlock[0] = EngineCachingService.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v40 = sub_10001B72C();

  v41 = swift_allocObject();
  *(v41 + 16) = 0;

  v42 = static NSNotificationName.synthesisEnded.getter();

  v43 = NSNotificationCenter.addObserver<A>(event:callback:)();

  v44 = *(a2 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate);
  v45 = objc_allocWithZone(type metadata accessor for TaskOperation());
  v60 = v64;
  swift_unknownObjectRetain();
  v46 = v33;
  v64 = v40;
  v47 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v48 = swift_allocObject();
  v48[2] = v46;
  v48[3] = v43;
  v49 = v68;
  v48[4] = sub_1000224F0;
  v48[5] = v49;
  v48[6] = v41;
  aBlock[4] = sub_100022538;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_100031CE0;
  v50 = _Block_copy(aBlock);

  v61 = v46;
  v51 = v47;
  v62 = v43;
  swift_unknownObjectRetain();

  sub_1000067AC(sub_100022538);

  [v51 setCompletionBlock:v50];
  _Block_release(v50);

  v52 = v65;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v54 = v66;
  v53 = v67;
  if ((*(v66 + 48))(v52, 1, v67))
  {
    sub_100001E9C(v52, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    v55 = v63;
    (*(v54 + 16))(v63, v52, v53);
    sub_100001E9C(v52, &qword_100035810, &qword_100027D68);
    v56 = UUID.uuidString.getter();
    v58 = v57;
    (*(v54 + 8))(v55, v53);
    sub_100007504(v56, v58);
  }

  sub_100007914(v51);

  swift_unknownObjectRelease();
}

uint64_t sub_10001F348(void *a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v122 = a2;
  v5 = type metadata accessor for UUID();
  v124 = *(v5 - 8);
  v125 = v5;
  v6 = *(v124 + 64);
  __chkstk_darwin(v5);
  v120 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v120 - v10;
  v131 = type metadata accessor for TTSError.TTSErrorCode();
  v129 = *(v131 - 8);
  v12 = v129[8];
  __chkstk_darwin(v131);
  v127 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for TTSError();
  v128 = *(v130 - 1);
  v14 = *(v128 + 64);
  __chkstk_darwin(v130);
  v126 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v134 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v137 = &v120 - v21;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = swift_allocObject();
  *(v136 + 16) = a3;
  v132 = a3;
  _Block_copy(a3);
  static Logger.service.getter();
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v123 = v11;
  v121 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v135 = v22;
    v32 = v31;
    v33 = swift_slowAlloc();
    *&aBlock = v33;
    *v32 = 136446210;
    v34 = v17;
    v35 = v23;
    v36 = [v27 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v16;
    v38 = v37;
    v40 = v39;

    v41 = sub_100004240(v38, v40, &aBlock);

    *(v32 + 4) = v41;
    v16 = v133;
    _os_log_impl(&_mh_execute_header, v28, v29, "Received #TextToPhoneme %{public}s", v32, 0xCu);
    sub_100004474(v33);

    (*(v35 + 8))(v26, v135);
  }

  else
  {

    (*(v23 + 8))(v26, v22);
    v34 = v17;
  }

  v42 = type metadata accessor for ObjectPool();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  ObjectPool.init()();
  v45 = [objc_allocWithZone(NSNotificationCenter) init];
  *&aBlock = v45;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for InternalSettings();
  *&aBlock = static InternalSettings.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v46 = type metadata accessor for TTSAssetUAFAssetProvider();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  *&aBlock = TTSAssetUAFAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v49 = type metadata accessor for TrialAssetProvider();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  *&aBlock = TrialAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v52 = type metadata accessor for LocalAssetProvider();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  *&aBlock = LocalAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for EngineCachingService();
  *&aBlock = static EngineCachingService.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  v56 = static NSNotificationName.phonemesGenerated.getter();

  v135 = NSNotificationCenter.addObserver<A>(event:callback:)();

  v57 = type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode);
  v58 = v137;
  DirectedAcyclicGraph.init()();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100027E00;
  v60 = type metadata accessor for RequestPreprocessAction();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();

  v63 = RequestPreprocessAction.init(pool:)();
  ObjectType = v60;
  v141 = &protocol witness table for RequestPreprocessAction;
  *&aBlock = v63;
  v64 = *(v57 + 48);
  v65 = *(v57 + 52);
  swift_allocObject();
  *(v59 + 32) = WorkflowNode.init(action:)();
  v66 = type metadata accessor for RequestParsingAction();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();

  v69 = RequestParsingAction.init(pool:)();
  ObjectType = v66;
  v141 = &protocol witness table for RequestParsingAction;
  *&aBlock = v69;
  v70 = *(v57 + 48);
  v71 = *(v57 + 52);
  swift_allocObject();
  *(v59 + 40) = WorkflowNode.init(action:)();
  v72 = type metadata accessor for VoiceSelectionAction();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();

  v75 = VoiceSelectionAction.init(pool:)();
  ObjectType = v72;
  v141 = &protocol witness table for VoiceSelectionAction;
  *&aBlock = v75;
  v76 = *(v57 + 48);
  v77 = *(v57 + 52);
  swift_allocObject();
  *(v59 + 48) = WorkflowNode.init(action:)();
  v78 = type metadata accessor for TextToPhonemeAction();
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  swift_allocObject();

  v81 = TextToPhonemeAction.init(pool:)();
  ObjectType = v78;
  v141 = &protocol witness table for TextToPhonemeAction;
  *&aBlock = v81;
  v82 = *(v57 + 48);
  v83 = *(v57 + 52);
  swift_allocObject();
  *(v59 + 56) = WorkflowNode.init(action:)();
  DirectedAcyclicGraph.chain(nodes:)(v59);

  v84 = v34;
  v34[2](v134, v58, v16);
  v85 = type metadata accessor for Workflow();
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  v88 = _swiftEmptyArrayStorage;
  v89 = Workflow.init(graph:notification:errorHandlers:)();
  v133 = v16;
  v134 = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = _swiftEmptyArrayStorage;
  v91 = os_transaction_create();
  v92 = v45;
  v93 = v135;
  if (v91)
  {
    v94 = v91;
    v95 = v55;
    ObjectType = swift_getObjectType();
    *&aBlock = v94;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v90 + 16) = _swiftEmptyArrayStorage;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v88 = sub_10000663C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      *(v90 + 16) = v88;
    }

    v97 = v90;
    v99 = *(v88 + 2);
    v98 = *(v88 + 3);
    if (v99 >= v98 >> 1)
    {
      v88 = sub_10000663C((v98 > 1), v99 + 1, 1, v88);
      *(v97 + 16) = v88;
    }

    swift_unknownObjectRelease();
    *(v88 + 2) = v99 + 1;
    sub_10000674C(&aBlock, &v88[32 * v99 + 32]);
    v90 = v97;
    *(v97 + 16) = v88;
    v55 = v95;
  }

  v132 = v84;
  v100 = *(v122 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate);
  v101 = objc_allocWithZone(type metadata accessor for TaskOperation());
  v130 = v121;

  swift_unknownObjectRetain();
  v102 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v103 = swift_allocObject();
  v103[2] = v92;
  v103[3] = v93;
  v104 = v136;
  v103[4] = sub_1000224CC;
  v103[5] = v104;
  v103[6] = v55;
  v103[7] = v102;
  v103[8] = v90;
  v141 = sub_1000224DC;
  v142 = v103;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v139 = sub_100002B68;
  ObjectType = &unk_100031C40;
  v105 = _Block_copy(&aBlock);
  v129 = v142;
  v106 = v102;
  v131 = v55;

  v107 = v106;
  v108 = v92;
  swift_unknownObjectRetain();

  sub_1000067AC(sub_1000224DC);

  [v107 setCompletionBlock:v105];
  _Block_release(v105);

  v109 = v123;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v111 = v124;
  v110 = v125;
  if ((*(v124 + 48))(v109, 1, v125))
  {
    sub_100001E9C(v109, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    v112 = v120;
    (*(v111 + 16))(v120, v109, v110);
    sub_100001E9C(v109, &qword_100035810, &qword_100027D68);
    v113 = UUID.uuidString.getter();
    v115 = v114;
    (*(v111 + 8))(v112, v110);
    sub_100007504(v113, v115);
  }

  v117 = v132;
  v116 = v133;
  v118 = v137;
  sub_100007914(v107);

  swift_unknownObjectRelease();

  v117[1](v118, v116);
}

uint64_t sub_100020120(void *a1, const char *a2, void (*a3)(id))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, a2, v14, 0xCu);
    sub_100001E9C(v15, &qword_1000353F8, &qword_100027B40);
  }

  (*(v7 + 8))(v10, v6);
  type metadata accessor for InlineStreamingStorage();
  static InlineStreamingStorage.shared.getter();
  a3(v11);
}

void sub_1000202EC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void (**a7)(const void *, void *))
{
  v51 = a6;
  v52 = a2;
  v53 = a4;
  v54 = a5;
  v60 = a3;
  v9 = type metadata accessor for TTSError.TTSErrorCode();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTSError();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v59 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v50[3] = v50 - v18;
  v61 = type metadata accessor for Logger();
  v19 = *(v61 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v61);
  v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v50 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a7;
  v58 = a7;
  _Block_copy(a7);
  type metadata accessor for SynthesisVoice();
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_10000AEF4(&qword_100035AA8, &unk_100027F88);
  if (swift_dynamicCast())
  {
    v50[2] = v14;

    static Logger.service.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v27, v28);
    v50[1] = v13;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v50[0] = v26;
      v31 = v30;
      v32 = swift_slowAlloc();
      v55 = v12;
      isa = v32;
      *v31 = 136446466;
      v33 = Array.description.getter();
      v35 = sub_100004240(v33, v34, &isa);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v36 = v52;
      v37 = v60;
      *(v31 + 14) = sub_100004240(v52, v60, &isa);
      _os_log_impl(&_mh_execute_header, v27, v28, "Received #VoiceSubscription %{public}s for clientId: %{public}s", v31, 0x16u);
      swift_arrayDestroy();

      v26 = v50[0];

      (*(v19 + 8))(v25, v61);
      v38 = v37;
    }

    else
    {

      (*(v19 + 8))(v25, v61);
      v38 = v60;
      v36 = v52;
    }

    v49 = *(v51 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_subscriptionService);
    sub_10000F240(a1, v36, v38, v53, v54, sub_1000065D0, v26);
  }

  else
  {
    v55 = v12;
    static Logger.service.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v14;
      v43 = swift_slowAlloc();
      isa = v43;
      *v41 = 136315138;
      *(v41 + 4) = sub_100004240(0xD00000000000002DLL, 0x80000001000297D0, &isa);
      _os_log_impl(&_mh_execute_header, v39, v40, "Call to %s with invalid parameter", v41, 0xCu);
      sub_100004474(v43);
      v14 = v42;
    }

    (*(v19 + 8))(v23, v61);
    (*(v56 + 104))(v55, enum case for TTSError.TTSErrorCode.unknown(_:), v57);
    v44 = v59;
    TTSError.init(code:description:)();
    TTSError.nsError()(v45);
    v47 = v46;
    (*(v14 + 8))(v44, v13);
    v48 = _convertErrorToNSError(_:)();
    v58[2](v58, v48);
  }
}

uint64_t sub_100020A48(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTSError.TTSErrorCode();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TTSError();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  type metadata accessor for VoiceSelectionAction();
  static VoiceSelectionAction.defaultSetupAction()();
  dispatch thunk of VoiceSelectionAction.selectVoiceAsset(_:disableThermalFallback:disableCompactVoice:requestId:)();
  v8 = VoiceAsset.voice.getter();
  (*(a2 + 16))(a2, v8, 0);
}

uint64_t sub_100020DC4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  type metadata accessor for VoiceSelectionAction();
  static VoiceSelectionAction.defaultSetupAction()();
  dispatch thunk of VoiceSelectionAction.selectVoiceAsset(_:disableThermalFallback:disableCompactVoice:requestId:)();
  v7 = objc_opt_self();
  VoiceAsset.path.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 *a3];

  (*(a2 + 16))(a2, v9);
}

uint64_t sub_100021078(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v20 - v6;
  sub_100009128(a1, v20 - v6, &qword_100035810, &qword_100027D68);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100001E9C(v7, &qword_100035810, &qword_100027D68);
    v10 = 0xED00006575657551;
    v11 = 0x6B7361546E69614DLL;
  }

  else
  {
    v12 = UUID.uuidString.getter();
    v10 = v13;
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  v14 = sub_100007504(v11, v10);

  v15 = *(v14 + 40);
  [v15 lock];
  v16 = *(v14 + 32);
  v17 = v16;
  [v15 unlock];
  if (!v16)
  {
    goto LABEL_8;
  }

  v18 = TaskOperation.request.getter();
  v20[1] = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
  if (!swift_dynamicCastObjCProtocolConditional())
  {

LABEL_8:
    (*(a2 + 16))(a2, 0);
  }

  (*(a2 + 16))(a2, 1);
}

uint64_t sub_10002128C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPower();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  sub_100009128(a1, &v30 - v11, &qword_100035810, &qword_100027D68);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100001E9C(v12, &qword_100035810, &qword_100027D68);
    v15 = 0xED00006575657551;
    v16 = 0x6B7361546E69614DLL;
  }

  else
  {
    v17 = UUID.uuidString.getter();
    v15 = v18;
    (*(v14 + 8))(v12, v13);
    v16 = v17;
  }

  v19 = sub_100007504(v16, v15);

  v20 = *(v19 + 40);
  [v20 lock];
  v21 = *(v19 + 32);
  v22 = v21;
  [v20 unlock];
  if (v21)
  {
    if (TaskOperation.audioHandler.getter())
    {
      AudioHandler.audioPower.getter();
      AudioPower.averagePower.getter();
      v24 = v23;
      AudioPower.peakPower.getter();
      (*(a2 + 16))(a2, v24, v25);

      return (*(v5 + 8))(v8, v4);
    }
  }

  static AudioPower.silenceAudioPower.getter();
  v28 = v27;
  static AudioPower.silenceAudioPower.getter();
  (*(a2 + 16))(a2, v28, v29);
}

void sub_100021568(uint64_t a1, uint64_t a2, Swift::Float a3, Swift::Double a4)
{
  v53 = a2;
  v51 = type metadata accessor for TTSError.TTSErrorCode();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v51);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTSError();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v50 - v20;
  sub_100009128(a1, &v50 - v20, &qword_100035810, &qword_100027D68);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100001E9C(v21, &qword_100035810, &qword_100027D68);
    v24 = 0xED00006575657551;
    v25 = 0x6B7361546E69614DLL;
  }

  else
  {
    v26 = UUID.uuidString.getter();
    v24 = v27;
    (*(v23 + 8))(v21, v22);
    v25 = v26;
  }

  v28 = sub_100007504(v25, v24);

  v29 = *(v28 + 40);
  [v29 lock];
  v30 = *(v28 + 32);
  v31 = v30;
  [v29 unlock];
  v32 = v11;
  if (!v30)
  {
    (*(v7 + 104))(v10, enum case for TTSError.TTSErrorCode.unknown(_:), v51);
    TTSError.init(code:description:)();
    TTSError.nsError()(v40);
    v42 = v41;
    (*(v52 + 8))(v17, v11);
    v43 = _convertErrorToNSError(_:)();
    (*(v53 + 16))(v53, v43);

LABEL_11:

    return;
  }

  if (!TaskOperation.audioHandler.getter())
  {
    (*(v7 + 104))(v10, enum case for TTSError.TTSErrorCode.unknown(_:), v51);
    TTSError.init(code:description:)();
    TTSError.nsError()(v44);
    v42 = v45;
    (*(v52 + 8))(v17, v11);
    v43 = _convertErrorToNSError(_:)();
    (*(v53 + 16))(v53, v43);

    goto LABEL_11;
  }

  v33 = v31;
  AudioHandler.adjust(volume:rampTime:)(a3, a4);
  if (v34)
  {
    v54 = v34;
    swift_errorRetain();
    sub_10000AEF4(&qword_100035A90, &qword_100027F78);
    if (swift_dynamicCast())
    {

      v35 = v52;
      (*(v52 + 32))(v17, v15, v32);
      TTSError.nsError()(v36);
      v38 = v37;
      v39 = _convertErrorToNSError(_:)();
      (*(v53 + 16))(v53, v39);

      (*(v35 + 8))(v17, v32);

      return;
    }

    (*(v7 + 104))(v10, enum case for TTSError.TTSErrorCode.unknown(_:), v51);
    swift_getErrorValue();
    Error.localizedDescription.getter();
    TTSError.init(code:description:)();
    TTSError.nsError()(v46);
    v48 = v47;
    (*(v52 + 8))(v17, v32);
    v49 = _convertErrorToNSError(_:)();
    (*(v53 + 16))(v53, v49);
  }

  else
  {
    (*(v53 + 16))(v53, 0);
  }
}

void sub_100021B74(void *a1, uint64_t a2)
{
  v29 = a2;
  v3 = type metadata accessor for TTSError.TTSErrorCode();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTSError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  type metadata accessor for VoiceSelectionAction();
  static VoiceSelectionAction.defaultSetupAction()();
  v13 = dispatch thunk of VoiceSelectionAction.selectVoiceAsset(_:disableThermalFallback:disableCompactVoice:requestId:)();
  v14 = sub_10001B6B8(&off_100031590);
  v27 = v13;
  v15 = VoiceAsset.voice.getter();
  v16 = dispatch thunk of SynthesisVoice.type.getter();

  LOBYTE(v15) = sub_1000134B4(v16, v14);

  if (v15)
  {
    type metadata accessor for NeuralUtils();
    VoiceAsset.path.getter();
    v17 = static NeuralUtils.isANEModelCompiled(voicePath:)();

    (*(v29 + 16))(v29, v17 & 1, 0);
  }

  else
  {
    (*(v4 + 104))(v28, enum case for TTSError.TTSErrorCode.unknown(_:), v3);
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v30 = 0xD00000000000002ELL;
    v31 = 0x8000000100029700;
    v18 = [a1 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    TTSError.init(code:description:)();
    TTSError.nsError()(v23);
    v25 = v24;
    (*(v8 + 8))(v12, v7);
    v26 = _convertErrorToNSError(_:)();
    (*(v29 + 16))(v29, 0, v26);
  }
}

uint64_t sub_100022068(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  type metadata accessor for CacheStorage();
  if (static CacheStorage.sharedSynthesisCache.getter())
  {
    dispatch thunk of CacheStorage.reset()();
    static Logger.service.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Synthesis Cache Cleared", v10, 2u);
    }

    (*(v3 + 8))(v7, v2);
  }

  return (*(a1 + 16))(a1, 0);
}

unint64_t sub_100022470()
{
  result = qword_100035A98;
  if (!qword_100035A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035A98);
  }

  return result;
}

uint64_t sub_1000224F8(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_100022538()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  [v1 removeObserver:v2];
  swift_beginAccess();
  return v4(0, *(v5 + 16));
}

uint64_t sub_1000225BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AEF4(&qword_100035AD8, &qword_100027FA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002262C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100022690(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000226F4(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000227B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100022818(uint64_t a1)
{
  v3 = *(v1 + 40);

  v4 = *(v1 + 56);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10002288C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000228D4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100022954()
{
  sub_1000229D8();
  if (v0 <= 0x3F)
  {
    sub_100022A6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000229D8()
{
  if (!qword_100035C20)
  {
    type metadata accessor for WorkflowNode();
    sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode);
    v0 = type metadata accessor for DirectedAcyclicGraph();
    if (!v1)
    {
      atomic_store(v0, &qword_100035C20);
    }
  }
}

void sub_100022A6C()
{
  if (!qword_100035C28)
  {
    type metadata accessor for TTSError.TTSErrorCode();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100035C28);
    }
  }
}

const char *sub_100022B28()
{
  v1 = sub_10000D908(_swiftEmptyArrayStorage);
  if ((*(v0 + 8) & 1) == 0)
  {
    v2 = xpc_int64_create(*v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    sub_10000D174(v2, XPC_ACTIVITY_DELAY, isUniquelyReferenced_nonNull_native);
  }

  v4 = *(v0 + 9);
  if (v4 == 2)
  {
    if (*(v0 + 24))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v25 = xpc_BOOL_create(v4 & 1);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    sub_10000D174(v25, XPC_ACTIVITY_REPEATING, v26);
    if (*(v0 + 24))
    {
LABEL_5:
      result = *(v0 + 32);
      if (!result)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v27 = xpc_int64_create(*(v0 + 16));
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v1;
  sub_10000D174(v27, XPC_ACTIVITY_GRACE_PERIOD, v28);
  result = *(v0 + 32);
  if (result)
  {
LABEL_6:
    v6 = xpc_string_create(result);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    result = sub_10000D174(v6, XPC_ACTIVITY_PRIORITY, v7);
  }

LABEL_7:
  if ((*(v0 + 48) & 1) == 0)
  {
    v8 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
    if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v9 = xpc_int64_create(*(v0 + 40));
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    result = sub_10000D174(v9, v8, v10);
  }

  v11 = *(v0 + 49);
  if (v11 != 2)
  {
    v12 = XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY;
    if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v13 = xpc_BOOL_create(v11 & 1);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    result = sub_10000D174(v13, v12, v14);
  }

  v15 = *(v0 + 50);
  if (v15 == 2)
  {
LABEL_16:
    v19 = v1[2];
    if (!v19)
    {

      v22 = 0;
      v20 = _swiftEmptyArrayStorage;
      v23 = _swiftEmptyArrayStorage;
      goto LABEL_26;
    }

    v20 = sub_100025368(v1[2], 0, &qword_100035CD8, &qword_1000280F0);
    v21 = sub_1000255EC(&v30, v20 + 4, v19, v1);
    swift_bridgeObjectRetain_n();
    result = sub_100002278();
    if (v21 == v19)
    {
      v22 = v1[2];
      if (!v22)
      {
        v23 = _swiftEmptyArrayStorage;
        goto LABEL_26;
      }

      v23 = sub_100025368(v1[2], 0, &qword_100035CD0, &qword_1000280E8);
      v24 = sub_100025498(&v30, v23 + 4, v22, v1);

      result = sub_100002278();
      if (v24 == v22)
      {
        v22 = v1[2];
LABEL_26:

        v29 = xpc_dictionary_create(v20 + 4, v23 + 4, v22);

        return v29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v16 = XPC_ACTIVITY_POST_INSTALL;
  if (XPC_ACTIVITY_POST_INSTALL)
  {
    v17 = xpc_BOOL_create(v15 & 1);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    sub_10000D174(v17, v16, v18);
    goto LABEL_16;
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Activity.checkIn()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_100004240(v7, v6, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "Checking in activity %{public}s", v16, 0xCu);
    sub_100004474(v17);

    v5 = v22;
  }

  (*(v9 + 8))(v12, v8);
  v18 = swift_allocObject();
  v18[2] = v7;
  v18[3] = v6;
  v18[4] = v5;
  v18[5] = v4;
  aBlock[4] = sub_10002531C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002371C;
  aBlock[3] = &unk_1000320C8;
  v19 = _Block_copy(aBlock);

  v20 = String.utf8CString.getter();
  xpc_activity_register((v20 + 32), XPC_ACTIVITY_CHECK_IN, v19);

  _Block_release(v19);
}

uint64_t sub_100023188(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, void (*a4)(_xpc_activity_s *))
{
  v46 = a2;
  v7 = type metadata accessor for Logger();
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v45 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v45 - v16;
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    static Logger.service.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v7;
      v32 = v31;
      v48 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_100004240(v46, a3, &v48);
      _os_log_impl(&_mh_execute_header, v28, v29, "Running activity %{public}s", v30, 0xCu);
      sub_100004474(v32);
      v7 = v45;
    }

    v33 = *(v47 + 8);
    v33(v17, v7);
    a4(a1);
    static Logger.service.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v7;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_100004240(v46, a3, &v48);
      _os_log_impl(&_mh_execute_header, v34, v35, "Finished activity %{public}s", v37, 0xCu);
      sub_100004474(v38);

      return (v33)(v14, v36);
    }

    else
    {

      return (v33)(v14, v7);
    }
  }

  else
  {
    v21 = state;
    if (state)
    {
      static Logger.service.getter();

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v7;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v48 = v44;
        *v43 = 134218242;
        *(v43 + 4) = v21;
        *(v43 + 12) = 2082;
        *(v43 + 14) = sub_100004240(v46, a3, &v48);
        _os_log_impl(&_mh_execute_header, v40, v41, "Unexpected activity state %ld for %{public}s", v43, 0x16u);
        sub_100004474(v44);

        return (*(v47 + 8))(v11, v42);
      }

      v26 = *(v47 + 8);
      v27 = v11;
    }

    else
    {
      static Logger.service.getter();

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v48 = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_100004240(v46, a3, &v48);
        _os_log_impl(&_mh_execute_header, v22, v23, "Checked in activity %{public}s", v24, 0xCu);
        sub_100004474(v25);
      }

      v26 = *(v47 + 8);
      v27 = v19;
    }

    return v26(v27, v7);
  }
}

uint64_t sub_10002371C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall Activity.registerOneOff()()
{
  v4 = v3;
  v34 = v2;
  v5 = v1;
  v6 = v0;
  v35 = type metadata accessor for Logger();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v35);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0x5F66664F656E6F5FLL;
  v38 = 0xE800000000000000;
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20 = v37;
  v21 = v38;
  v37 = v6;
  v38 = v5;

  v22._countAndFlagsBits = v20;
  v22._object = v21;
  String.append(_:)(v22);

  v24 = v37;
  v23 = v38;
  v51 = 0;
  v48 = 1;
  v46 = 1;
  v37 = 0;
  LOWORD(v38) = 512;
  *(&v38 + 2) = v49;
  HIWORD(v38) = v50;
  v39 = 0;
  v40 = 1;
  *v41 = *v47;
  *&v41[3] = *&v47[3];
  v42 = XPC_ACTIVITY_PRIORITY_UTILITY;
  v43 = 0;
  v44 = 1;
  v45 = 514;
  v25 = sub_100022B28();
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v23;
  v26[4] = v6;
  v26[5] = v5;
  v26[6] = v34;
  v26[7] = v4;
  aBlock[4] = sub_1000253E4;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002371C;
  aBlock[3] = &unk_100032118;
  v27 = _Block_copy(aBlock);

  v28 = String.utf8CString.getter();
  xpc_activity_register((v28 + 32), v25, v27);

  _Block_release(v27);
  static Logger.service.getter();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136446210;
    v33 = sub_100004240(v24, v23, aBlock);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Registered one-off activity %{public}s", v31, 0xCu);
    sub_100004474(v32);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v7 + 8))(v10, v35);
}

uint64_t sub_100023BA0(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v46 = a2;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v43 - v18;
  __chkstk_darwin(v17);
  v21 = v43 - v20;
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    v45 = v12;
    static Logger.service.getter();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v44 = v11;
      v26 = v25;
      v27 = swift_slowAlloc();
      v43[1] = a7;
      v28 = a6;
      v29 = v27;
      v47 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_100004240(v46, a3, &v47);
      _os_log_impl(&_mh_execute_header, v23, v24, "Running activity %{public}s", v26, 0xCu);
      sub_100004474(v29);
      a6 = v28;

      v11 = v44;
    }

    v30 = *(v45 + 8);
    v30(v21, v11);
    a6(a1);
    static Logger.service.getter();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v11;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_100004240(v46, a3, &v47);
      _os_log_impl(&_mh_execute_header, v31, v32, "Finished activity %{public}s", v34, 0xCu);
      sub_100004474(v35);

      return (v30)(v19, v33);
    }

    else
    {

      return (v30)(v19, v11);
    }
  }

  else
  {
    v37 = state;
    static Logger.service.getter();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v11;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v41 = 134218242;
      *(v41 + 4) = v37;
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_100004240(v46, a3, &v47);
      _os_log_impl(&_mh_execute_header, v38, v39, "Unexpected activity state %ld for %{public}s", v41, 0x16u);
      sub_100004474(v42);

      return (*(v12 + 8))(v16, v40);
    }

    else
    {

      return (*(v12 + 8))(v16, v11);
    }
  }
}

uint64_t sub_100023FF8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10000B048();
  static DispatchQoS.utility.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_10000B8A0();
  sub_10000AEF4(&unk_100035B40, &qword_100027980);
  sub_10000B8F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100035D70 = result;
  return result;
}

uint64_t sub_100024200()
{
  if (qword_1000351C0 != -1)
  {
    swift_once();
  }

  return sub_100010478(0, 0);
}

uint64_t sub_1000242A0()
{
  v0 = type metadata accessor for Date();
  v32 = *(v0 - 8);
  v33 = v0;
  v1 = *(v32 + 64);
  v2 = __chkstk_darwin(v0);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v31 = &v30 - v4;
  v5 = sub_10000AEF4(&qword_100035190, &qword_100027960);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InternalSettings();
  static InternalSettings.shared.getter();
  v19 = dispatch thunk of InternalSettings.disableAssetCleaning.getter();

  if (v19 == 2 || (v19 & 1) == 0)
  {
    if (qword_1000351C0 != -1)
    {
      swift_once();
    }

    sub_100010B60();
  }

  else
  {
    static Logger.service.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "InternalSettings disableAssetCleaning is enabled, will skip asset cleanUp.", v22, 2u);
    }

    (*(v15 + 8))(v18, v14);
  }

  type metadata accessor for CacheStorage();
  if (static CacheStorage.sharedSynthesisCache.getter())
  {
    dispatch thunk of CacheStorage.trim(LRULimit:)();
  }

  type metadata accessor for AudioDumpAction();
  static AudioDumpAction.DiagnosticsDir.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000B240(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  v24 = [objc_opt_self() defaultManager];
  v25 = v30;
  static Date.now.getter();
  v26 = v31;
  static Date.- infix(_:_:)();
  v27 = *(v32 + 8);
  v28 = v25;
  v29 = v33;
  v27(v28, v33);
  NSFileManager.removeItems(inDirectory:olderThan:)();

  v27(v26, v29);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_10002477C(uint64_t a1)
{
  type metadata accessor for NeuralUtils();
  result = static NeuralUtils.isANECompilationPlatform.getter();
  if (result)
  {
    if (qword_1000351C8 != -1)
    {
      swift_once();
    }

    v3 = qword_100035D70;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1000256EC;
    *(v5 + 24) = v4;
    v8[4] = sub_1000071A8;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10000C5E8;
    v8[3] = &unk_100032210;
    v6 = _Block_copy(v8);
    swift_unknownObjectRetain();

    dispatch_sync(v3, v6);
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100024918(_xpc_activity_s *a1)
{
  v78 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v74 - v8;
  v10 = __chkstk_darwin(v7);
  v79 = &v74 - v11;
  v12 = __chkstk_darwin(v10);
  v75 = &v74 - v13;
  __chkstk_darwin(v12);
  v15 = &v74 - v14;
  v16 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v17 = SynthesisVoice.init(language:name:)();
  dispatch thunk of SynthesisVoice.type.setter();
  v92 = _swiftEmptyArrayStorage;
  type metadata accessor for InternalSettings();
  static InternalSettings.shared.getter();
  v18 = dispatch thunk of InternalSettings.enableLocalVoices.getter();

  v83 = v9;
  if (v18 != 2 && (v18 & 1) != 0)
  {
    v19 = type metadata accessor for LocalAssetProvider();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    LocalAssetProvider.init()();
    v22 = v17;
    v23 = dispatch thunk of LocalAssetProvider.listVoiceAssets(_:)();

    v24 = v23;
    v9 = v83;
    sub_100013268(v24);
  }

  v25 = type metadata accessor for TTSAssetUAFAssetProvider();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  TTSAssetUAFAssetProvider.init()();
  v28 = v17;
  v29 = dispatch thunk of TTSAssetUAFAssetProvider.listVoiceAssets(_:)();

  sub_100013268(v29);
  v30 = type metadata accessor for TrialAssetProvider();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  TrialAssetProvider.init()();
  v33 = dispatch thunk of TrialAssetProvider.listVoiceAssets(_:)();

  v76 = v28;

  sub_100013268(v33);
  v34 = v92;
  if (v92 >> 62)
  {
LABEL_32:
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v36 = v79;
    if (v35)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v35 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v79;
    if (v35)
    {
LABEL_6:
      v37 = type metadata accessor for NeuralUtils();
      v38 = 0;
      v84 = 0;
      v87 = v34 & 0xFFFFFFFFFFFFFF8;
      v89 = v37;
      v90 = (v2 + 8);
      *&v39 = 136446210;
      v80 = v39;
      v81 = v6;
      v82 = v1;
      v85 = v35;
      v86 = v34;
      v77 = v15;
      while (1)
      {
        if (v38 >= *(v87 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v2 = *(v34 + 8 * v38 + 32);

        VoiceAsset.path.getter();
        v40 = static NeuralUtils.isANEModelCompiled(voicePath:)();

        if (v40)
        {
          static Logger.service.getter();

          v41 = v15;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v91[0] = v45;
            *v44 = v80;
            v46 = VoiceAsset.path.getter();
            v48 = sub_100004240(v46, v47, v91);

            *(v44 + 4) = v48;
            v9 = v83;
            _os_log_impl(&_mh_execute_header, v42, v43, "Neural voice is already compiled: '%{public}s'", v44, 0xCu);
            sub_100004474(v45);
            v6 = v81;

            v1 = v82;
          }

          else
          {
          }

          (*v90)(v41, v1);
          v15 = v41;
          v34 = v86;
        }

        else
        {
          if (xpc_activity_should_defer(v78))
          {

            static Logger.service.getter();
            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              *v73 = 0;
              _os_log_impl(&_mh_execute_header, v71, v72, "com.apple.sirittsd.neuralCompiling is requested to be deferred.", v73, 2u);
            }

            (*v90)(v75, v1);
            xpc_activity_set_state(v78, 3);

            return;
          }

          static Logger.service.getter();

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v91[0] = v52;
            *v51 = v80;
            v53 = VoiceAsset.path.getter();
            v55 = sub_100004240(v53, v54, v91);

            *(v51 + 4) = v55;
            v6 = v81;
            _os_log_impl(&_mh_execute_header, v49, v50, "Triggered compiling neural voice '%{public}s'", v51, 0xCu);
            sub_100004474(v52);
            v1 = v82;

            v9 = v83;
          }

          v88 = *v90;
          v88(v36, v1);
          v56 = v84;
          VoiceAsset.path.getter();
          static NeuralUtils.compileANEModel(voicePath:)();
          v34 = v86;
          if (v56)
          {

            static Logger.service.getter();

            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v91[0] = v60;
              *v59 = v80;
              v61 = VoiceAsset.path.getter();
              v63 = sub_100004240(v61, v62, v91);

              *(v59 + 4) = v63;
              v6 = v81;
              _os_log_impl(&_mh_execute_header, v57, v58, "Error during compiling neural voice: %{public}s", v59, 0xCu);
              sub_100004474(v60);
              v1 = v82;

              v9 = v83;
            }

            v88(v6, v1);
          }

          else
          {

            notify_post("com.apple.voiceservices.notification.voice-update");
          }

          v84 = 0;
          static Logger.service.getter();

          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v91[0] = v67;
            *v66 = v80;
            v68 = VoiceAsset.path.getter();
            v70 = sub_100004240(v68, v69, v91);

            *(v66 + 4) = v70;
            v6 = v81;
            _os_log_impl(&_mh_execute_header, v64, v65, "Neural voice finished compiling '%{public}s'", v66, 0xCu);
            sub_100004474(v67);
            v1 = v82;

            v9 = v83;
          }

          else
          {
          }

          v88(v9, v1);
          v36 = v79;
          v15 = v77;
        }

        if (v85 == ++v38)
        {

          return;
        }
      }
    }
  }
}

uint64_t sub_100025284()
{
  if (qword_1000351C0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100035D38 + 120);
  dispatch thunk of TrialAssetProvider.downloadNamespace()();
  sub_100010478(0, 0);
  type metadata accessor for BNNSModelCache();
  static BNNSModelCache.sharedInstance.getter();
  dispatch thunk of BNNSModelCache.cleanStaleModels()();
}

void *sub_100025368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000AEF4(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

__n128 sub_1000253F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100025400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100025448(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_100025498(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1000255EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1000256FC()
{
  v0 = os_log_create("com.apple.siri.tts", "sandbox");
  bzero(v3, 0x400uLL);
  if ((!_set_user_dir_suffix() || !confstr(65537, v3, 0x400uLL)) && os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = *__error();
    v2[0] = 67109120;
    v2[1] = v1;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "failed to initialize temporary directory: %{darwin.errno}d", v2, 8u);
  }
}