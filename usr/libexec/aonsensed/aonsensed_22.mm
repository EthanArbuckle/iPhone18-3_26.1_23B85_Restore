uint64_t sub_10022EA20@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[6];
  result = UnknownStorage.init()();
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[4] = 1;
  v12 = a2 + a1[11];
  *v12 = 0;
  v12[4] = 1;
  return result;
}

uint64_t sub_10022EAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5A8, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022EB78(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425068, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022EBE4()
{
  sub_100256CB4(&qword_100425068, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);

  return Message.hash(into:)();
}

uint64_t sub_10022EC8C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434840);
  sub_100005DF0(v0, qword_100434840);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "result";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_type";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "session_info";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "assistance_request";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ganss_assistance_request";
  *(v15 + 8) = 24;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022EF74()
{
  v0 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 9;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v5 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  qword_1004613A8 = v3;
  return result;
}

uint64_t sub_10022F09C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100424070, &qword_100383540);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v28 = &v28 - v5;
  v6 = sub_100024A2C(&qword_100424068, &qword_100383538);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - v12;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v14 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v15 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  v19 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v20;
  swift_beginAccess();
  v21 = *(a1 + 20);
  v22 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v21;
  *(v1 + 24) = v22;
  v23 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v23, v13, &qword_100423FF8, &qword_1003834C8);
  swift_beginAccess();
  sub_10000AD64(v13, v1 + v14, &qword_100423FF8, &qword_1003834C8);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(a1 + v24, v9, &qword_100424068, &qword_100383538);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v16, &qword_100424068, &qword_100383538);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  v26 = v28;
  sub_10000A0A4(a1 + v25, v28, &qword_100424070, &qword_100383540);

  swift_beginAccess();
  sub_10000AD64(v26, v1 + v18, &qword_100424070, &qword_100383540);
  swift_endAccess();
  return v1;
}

uint64_t sub_10022F490()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &qword_100423FF8, &qword_1003834C8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest, &qword_100424068, &qword_100383538);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest, &qword_100424070, &qword_100383540);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10022F544()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10022F09C(v6);
    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          swift_beginAccess();
          sub_100268B28();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_8;
        }

        if (result == 2)
        {
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_8;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
            v15 = &qword_100424C40;
LABEL_7:
            sub_100256CB4(v15, v14);
            v1 = v13;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
            swift_endAccess();
            break;
          case 4:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest;
            v15 = &qword_100424FD0;
            goto LABEL_7;
          case 5:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest;
            v15 = &qword_100425068;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10022F818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *(v9 + 16);
    sub_100268B28();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 20);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10022F96C(v9, a1, a2, a3);
  sub_10022FB94(v9, a1, a2, a3);
  sub_10022FDBC(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022F96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423FF8, &qword_1003834C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FF8, &qword_1003834C8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t sub_10022FB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424068, &qword_100383538);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424068, &qword_100383538);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424068, &qword_100383538);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  sub_100256CB4(&qword_100424FD0, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
}

uint64_t sub_10022FDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424070, &qword_100383540);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424070, &qword_100383540);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424070, &qword_100383540);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  sub_100256CB4(&qword_100425068, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
}

BOOL sub_100230028(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v93 = *(v85 - 8);
  v4 = *(v93 + 64);
  __chkstk_darwin(v85);
  v82 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_100024A2C(&qword_10042A980, &qword_100390C98);
  v6 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v8 = &v77 - v7;
  v9 = sub_100024A2C(&qword_100424070, &qword_100383540);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v92 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v91 = &v77 - v13;
  v89 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v88 = *(v89 - 8);
  v14 = *(v88 + 64);
  __chkstk_darwin(v89);
  v83 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_100024A2C(&qword_10042A988, &qword_100390CA0);
  v16 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v90 = &v77 - v17;
  v18 = sub_100024A2C(&qword_100424068, &qword_100383538);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v86 = (&v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v94 = &v77 - v22;
  v23 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v95 = *(v23 - 8);
  v24 = *(v95 + 64);
  __chkstk_darwin(v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100024A2C(&qword_10042A908, &qword_100390C20);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v77 - v29;
  v31 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v77 - v36;
  swift_beginAccess();
  v38 = *(a1 + 16);
  swift_beginAccess();
  v39 = *(a2 + 16);
  if (v38 == 9)
  {
    if (v39 != 9)
    {
      return 0;
    }

LABEL_6:
    v79 = v8;
    swift_beginAccess();
    v41 = *(a1 + 20);
    v81 = a1;
    v42 = *(a1 + 24);
    swift_beginAccess();
    v43 = *(a2 + 24);
    if (v42)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v41 != *(a2 + 20))
      {
        v43 = 1;
      }

      if (v43)
      {
        return 0;
      }
    }

    v78 = v26;
    v80 = a2;
    v44 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v45 = v81;
    swift_beginAccess();
    sub_10000A0A4(v45 + v44, v37, &qword_100423FF8, &qword_1003834C8);
    v46 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v47 = v80;
    swift_beginAccess();
    v48 = *(v27 + 48);
    sub_10000A0A4(v37, v30, &qword_100423FF8, &qword_1003834C8);
    sub_10000A0A4(v47 + v46, &v30[v48], &qword_100423FF8, &qword_1003834C8);
    v49 = *(v95 + 48);
    if (v49(v30, 1, v23) == 1)
    {

      sub_1000059A8(v37, &qword_100423FF8, &qword_1003834C8);
      if (v49(&v30[v48], 1, v23) == 1)
      {
        sub_1000059A8(v30, &qword_100423FF8, &qword_1003834C8);
LABEL_19:
        v53 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
        swift_beginAccess();
        v54 = v94;
        sub_10000A0A4(v45 + v53, v94, &qword_100424068, &qword_100383538);
        v55 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
        swift_beginAccess();
        v56 = *(v87 + 48);
        v57 = v90;
        sub_10000A0A4(v54, v90, &qword_100424068, &qword_100383538);
        sub_10000A0A4(v80 + v55, v57 + v56, &qword_100424068, &qword_100383538);
        v58 = *(v88 + 48);
        v59 = v89;
        if (v58(v57, 1, v89) == 1)
        {
          sub_1000059A8(v54, &qword_100424068, &qword_100383538);
          v60 = v58(v57 + v56, 1, v59);
          v61 = v93;
          v62 = v92;
          v63 = v91;
          if (v60 == 1)
          {
            sub_1000059A8(v57, &qword_100424068, &qword_100383538);
LABEL_30:
            v69 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
            swift_beginAccess();
            sub_10000A0A4(v45 + v69, v63, &qword_100424070, &qword_100383540);
            v70 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
            swift_beginAccess();
            v71 = *(v84 + 48);
            v72 = v79;
            sub_10000A0A4(v63, v79, &qword_100424070, &qword_100383540);
            sub_10000A0A4(v80 + v70, v72 + v71, &qword_100424070, &qword_100383540);
            v73 = *(v61 + 48);
            v74 = v85;
            if (v73(v72, 1, v85) == 1)
            {

              sub_1000059A8(v63, &qword_100424070, &qword_100383540);
              if (v73(v72 + v71, 1, v74) == 1)
              {
                sub_1000059A8(v72, &qword_100424070, &qword_100383540);
                return 1;
              }

              goto LABEL_35;
            }

            sub_10000A0A4(v72, v62, &qword_100424070, &qword_100383540);
            if (v73(v72 + v71, 1, v74) == 1)
            {

              sub_1000059A8(v63, &qword_100424070, &qword_100383540);
              sub_100246490(v62, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
LABEL_35:
              sub_1000059A8(v72, &qword_10042A980, &qword_100390C98);
              return 0;
            }

            v75 = v82;
            sub_1002463C0(v72 + v71, v82, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            v76 = sub_10024A28C(v62, v75);

            sub_100246490(v75, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            sub_1000059A8(v63, &qword_100424070, &qword_100383540);
            sub_100246490(v62, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            sub_1000059A8(v72, &qword_100424070, &qword_100383540);
            return (v76 & 1) != 0;
          }
        }

        else
        {
          v64 = v86;
          sub_10000A0A4(v57, v86, &qword_100424068, &qword_100383538);
          v65 = v58(v57 + v56, 1, v59);
          v61 = v93;
          v66 = v92;
          v63 = v91;
          if (v65 != 1)
          {
            v67 = v57 + v56;
            v68 = v83;
            sub_1002463C0(v67, v83, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            LODWORD(v95) = sub_10024B244(v64, v68);
            sub_100246490(v68, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            sub_1000059A8(v94, &qword_100424068, &qword_100383538);
            sub_100246490(v64, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            v45 = v81;
            sub_1000059A8(v57, &qword_100424068, &qword_100383538);
            v62 = v66;
            if (v95)
            {
              goto LABEL_30;
            }

            goto LABEL_25;
          }

          sub_1000059A8(v94, &qword_100424068, &qword_100383538);
          sub_100246490(v64, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
        }

        sub_1000059A8(v57, &qword_10042A988, &qword_100390CA0);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      sub_10000A0A4(v30, v35, &qword_100423FF8, &qword_1003834C8);
      if (v49(&v30[v48], 1, v23) != 1)
      {
        v50 = v78;
        sub_1002463C0(&v30[v48], v78, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v51 = v81;

        v52 = sub_1002540CC(v35, v50);
        sub_100246490(v50, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v37, &qword_100423FF8, &qword_1003834C8);
        v45 = v51;
        sub_100246490(v35, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v30, &qword_100423FF8, &qword_1003834C8);
        if ((v52 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }

      sub_1000059A8(v37, &qword_100423FF8, &qword_1003834C8);
      sub_100246490(v35, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    sub_1000059A8(v30, &qword_10042A908, &qword_100390C20);

LABEL_26:

    return 0;
  }

  result = 0;
  if (v39 != 9 && v38 == v39)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100230DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5A0, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100230E5C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425080, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100230EC8()
{
  sub_100256CB4(&qword_100425080, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);

  return Message.hash(into:)();
}

uint64_t sub_100230F6C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434858);
  sub_100005DF0(v0, qword_100434858);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "no_of_cells";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "eutran_cell_info";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023117C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
        sub_100256CB4(&qword_100424340, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023128C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
    sub_100256CB4(&qword_100424340, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v6 = v0 + *(v3 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1002313F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  v6[4] = 1;
  return result;
}

uint64_t sub_100231478(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A598, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100231518(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425098, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100231584()
{
  sub_100256CB4(&qword_100425098, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime);

  return Message.hash(into:)();
}

uint64_t sub_100231628()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434870);
  sub_100005DF0(v0, qword_100434870);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bsic";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_slot";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bit_number";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "bcch_carrier";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ref_frame";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "timing_advance";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "obit_number";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100231984()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 20);
            break;
          case 2:
            v3 = v0;
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 24);
            break;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 28);
            break;
          default:
            goto LABEL_19;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          v3 = v0;
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 40);
        }

        else
        {
          if (result != 7)
          {
            goto LABEL_19;
          }

          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 44);
        }
      }

      else
      {
        v3 = v0;
        if (result == 4)
        {
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 32);
        }

        else
        {
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 36);
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_19:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100231ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[7]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100231CC8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_100231D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A590, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100231E28(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004250B0, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100231E94()
{
  sub_100256CB4(&qword_1004250B0, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime);

  return Message.hash(into:)();
}

uint64_t sub_100231F38()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434888);
  sub_100005DF0(v0, qword_100434888);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "int_part";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "frac_part";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100232240(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A588, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002322E0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004250C8, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023234C()
{
  sub_100256CB4(&qword_1004250C8, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);

  return Message.hash(into:)();
}

uint64_t sub_1002323F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004348A0);
  sub_100005DF0(v0, qword_1004348A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "physical_cell_id";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "earfcn";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "sfnk";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023272C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A580, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002327CC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004250E0, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100232838()
{
  sub_100256CB4(&qword_1004250E0, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);

  return Message.hash(into:)();
}

uint64_t sub_1002328E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004348B8);
  sub_100005DF0(v0, qword_1004348B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cdma_tow";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "week_num";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "absolute_rms_acc";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100232B3C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 24);
LABEL_5:
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 20);
        type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
        sub_100256CB4(&qword_1004250C8, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v6 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 28);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_100232C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100232D64(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
    v7 = (v3 + *(v6 + 24));
    if ((v7[1] & 1) == 0)
    {
      v8 = v6;
      v9 = *v7;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
      v6 = v8;
    }

    v10 = (v3 + *(v6 + 28));
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100232D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100424078, &qword_100383548);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100424078, &qword_100383548);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424078, &qword_100383548);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  sub_100256CB4(&qword_1004250C8, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
}

uint64_t sub_100232FCC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_100233090(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A578, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100233130(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004250F8, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023319C()
{
  sub_100256CB4(&qword_1004250F8, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);

  return Message.hash(into:)();
}

uint64_t sub_100233240()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004348D0);
  sub_100005DF0(v0, qword_1004348D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "eutran_time";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cdma_time";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100233450()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
        v5 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime;
        v6 = &qword_1004250F8;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 20);
    type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
    v5 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime;
    v6 = &qword_1004250E0;
LABEL_5:
    sub_100256CB4(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1002335DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100424080, &qword_100383550);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100424080, &qword_100383550);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424080, &qword_100383550);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  sub_100256CB4(&qword_1004250E0, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
}

uint64_t sub_1002337F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100424088, &qword_100383558);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100424088, &qword_100383558);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424088, &qword_100383558);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  sub_100256CB4(&qword_1004250F8, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
}

uint64_t sub_100233A8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 24);
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4 + v10, 1, 1, v11);
}

uint64_t sub_100233B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A570, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100233C20(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100233C8C()
{
  sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);

  return Message.hash(into:)();
}

uint64_t sub_100233D30()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004348E8);
  sub_100005DF0(v0, qword_1004348E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cell_time_assistance_type";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cell_time_data";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100233F40()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 20);
        sub_1002687E0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
        sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002340D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  result = a4(0);
  if (*(v11 + *(result + 20)) == 6)
  {
    if (v8)
    {
      return result;
    }
  }

  else
  {
    v16 = *(v11 + *(result + 20));
    a5();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v8)
    {
      return result;
    }
  }

  a7(v11, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1002341B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100424090, &qword_100383560);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100424090, &qword_100383560);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424090, &qword_100383560);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
}

uint64_t sub_100234454(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A568, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002344F4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425128, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100234560()
{
  sub_100256CB4(&qword_100425128, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);

  return Message.hash(into:)();
}

uint64_t sub_100234608()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434900);
  sub_100005DF0(v0, qword_100434900);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tlm_msg";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sat_id";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "anti_spoof";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "alert";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "tlm_reserved";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002348E8()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v3 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_15;
          }

          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 24);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 28);
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 32);
            break;
          case 5:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 36);
            break;
          default:
            goto LABEL_15;
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_15:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002349F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[7]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100234B8C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_100234C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A560, type metadata accessor for Proto_Gnss_Emergency_TowAssist);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100234CD0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424388, type metadata accessor for Proto_Gnss_Emergency_TowAssist);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100234D3C()
{
  sub_100256CB4(&qword_100424388, type metadata accessor for Proto_Gnss_Emergency_TowAssist);

  return Message.hash(into:)();
}

uint64_t sub_100234DE0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434918);
  sub_100005DF0(v0, qword_100434918);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "gps_tow";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "gps_week";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "gps_time_uncertainty";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "nr_of_sats";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "tow_assist";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "gps_week_cycle_number";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "session_protocol";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "pos_protocol";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "session_id";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002351B4()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          v3 = v0;
          if (result == 3)
          {
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 32);
          }

          else
          {
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 36);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 24);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 28);
          goto LABEL_5;
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          v3 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 40);
          goto LABEL_5;
        }

        type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
        sub_100256CB4(&qword_100424388, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 7:
            v10 = v0;
            v11 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 44);
            sub_100268A80();
LABEL_26:
            v0 = v10;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 8:
            v10 = v0;
            v12 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 48);
            sub_100268A2C();
            goto LABEL_26;
          case 9:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 52);
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002353EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v9 = result;
  v10 = (v3 + *(result + 24));
  if (v10[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *v10;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v12 = (v3 + v9[7]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v14 = (v3 + v9[8]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v16 = (v3 + v9[9]);
  if ((v16[1] & 1) == 0)
  {
    v17 = *v16;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
    sub_100256CB4(&qword_100424388, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  sub_1001FCE34(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  sub_100235660(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, sub_100268A80);
  sub_100235704(v3);
  sub_100210AD0(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  v18 = v3 + v9[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100235660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 6)
  {
    v9 = *(a1 + *(result + 44));
    a6();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100235704(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  if (*(a1 + *(result + 48)) != 7)
  {
    v3 = *(a1 + *(result + 48));
    sub_100268A2C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002357DC@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  v9 = a1[9];
  v10 = a2 + a1[8];
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[4] = 1;
  v12 = a1[11];
  v13 = a2 + a1[10];
  *v13 = 0;
  v13[4] = 1;
  *(a2 + v12) = 6;
  v14 = a1[13];
  *(a2 + a1[12]) = 7;
  v15 = a2 + v14;
  *v15 = 0;
  v15[4] = 1;
  return result;
}

uint64_t sub_1002358B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A558, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100235954(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425150, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002359C0()
{
  sub_100256CB4(&qword_100425150, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);

  return Message.hash(into:)();
}

uint64_t sub_100235A64()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434930);
  sub_100005DF0(v0, qword_100434930);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10036D7E0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "shape_type";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "hemisphere";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "altitude";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "latitude";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "longitude";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "direction_of_alt";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "semi_major_uncert";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "semi_minor_uncert";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "major_axis";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "alt_uncert";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "confidence";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "session_protocol";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "pos_protocol";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "session_id";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100235F84()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 20);
          goto LABEL_5;
        case 2:
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 24);
          goto LABEL_5;
        case 3:
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 28);
          goto LABEL_5;
        case 4:
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 32);
          goto LABEL_5;
        case 5:
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 36);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 6:
          v12 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 40);
          goto LABEL_5;
        case 7:
          v14 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 44);
          goto LABEL_5;
        case 8:
          v10 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 48);
          goto LABEL_5;
        case 9:
          v16 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 52);
          goto LABEL_5;
        case 10:
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 56);
          goto LABEL_5;
        case 11:
          v15 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 60);
          goto LABEL_5;
        case 12:
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 64);
          sub_100268A80();
          goto LABEL_13;
        case 13:
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 68);
          sub_100268A2C();
LABEL_13:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 14:
          v13 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 72);
LABEL_5:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100236170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[7]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100210B54(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_10023645C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1002364D8(v5);
  sub_10023CA1C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, sub_100268A2C);
  sub_100236564(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 60));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002364D8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  if (*(a1 + *(result + 64)) != 6)
  {
    v3 = *(a1 + *(result + 64));
    sub_100268A80();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100236564(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v3 = (a1 + *(result + 72));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023665C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A550, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002366FC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425168, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100236768()
{
  sub_100256CB4(&qword_100425168, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);

  return Message.hash(into:)();
}

uint64_t sub_10023680C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434948);
  sub_100005DF0(v0, qword_100434948);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_100383390;
  v4 = v72 + v3;
  v5 = v72 + v3 + v1[14];
  *(v72 + v3) = 1;
  *v5 = "ephem_af0";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ephem_m0";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ephem_e";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "ephem_apower_half";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ephem_omega_a0";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "ephem_i0";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "ephem_w";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "ephem_omega_dot";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "ephem_iodc";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "ephem_toc";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "ephem_af1";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "ephem_crs";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "ephem_delta_n";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "ephem_cuc";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "ephem_cus";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "toe";
  *(v36 + 1) = 3;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "ephem_cic";
  *(v37 + 8) = 9;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "ephem_cis";
  *(v39 + 1) = 9;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "ephem_crc";
  *(v41 + 1) = 9;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "ephem_idot";
  *(v43 + 1) = 10;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "sat_id";
  *(v45 + 1) = 6;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "ephem_ura";
  *(v47 + 1) = 9;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "ephem_sv_health";
  *(v49 + 1) = 15;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "ephem_af2";
  *(v51 + 1) = 9;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "sat_status";
  *(v53 + 1) = 10;
  v53[16] = 2;
  v8();
  v54 = (v4 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "ephem_code_on_l2";
  *(v55 + 1) = 16;
  v55[16] = 2;
  v8();
  v56 = (v4 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "ephem_l2_pflag";
  *(v57 + 1) = 14;
  v57[16] = 2;
  v8();
  v58 = (v4 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "ephem_tgd";
  *(v59 + 1) = 9;
  v59[16] = 2;
  v8();
  v60 = (v4 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "ephem_fit_flag";
  *(v61 + 1) = 14;
  v61[16] = 2;
  v8();
  v62 = (v4 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "ephem_aodo";
  *(v63 + 1) = 10;
  v63[16] = 2;
  v8();
  v64 = (v4 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "reserved1";
  *(v65 + 1) = 9;
  v65[16] = 2;
  v8();
  v66 = (v4 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "reserved2";
  *(v67 + 1) = 9;
  v67[16] = 2;
  v8();
  v68 = v4 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v68 = "reserved3";
  *(v68 + 8) = 9;
  *(v68 + 16) = 2;
  v8();
  v69 = (v4 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "reserved4";
  *(v70 + 1) = 9;
  v70[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002371E0()
{
  type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 20) = 1;
  *(result + 24) = 0;
  *(result + 28) = 1;
  *(result + 32) = 0;
  *(result + 36) = 1;
  *(result + 40) = 0;
  *(result + 44) = 1;
  *(result + 48) = 0;
  *(result + 52) = 1;
  *(result + 56) = 0;
  *(result + 60) = 1;
  *(result + 64) = 0;
  *(result + 68) = 1;
  *(result + 72) = 0;
  *(result + 76) = 1;
  *(result + 80) = 0;
  *(result + 84) = 1;
  *(result + 88) = 0;
  *(result + 92) = 1;
  *(result + 96) = 0;
  *(result + 100) = 1;
  *(result + 104) = 0;
  *(result + 108) = 1;
  *(result + 112) = 0;
  *(result + 116) = 1;
  *(result + 120) = 0;
  *(result + 124) = 1;
  *(result + 128) = 0;
  *(result + 132) = 1;
  *(result + 136) = 0;
  *(result + 140) = 1;
  *(result + 144) = 0;
  *(result + 148) = 1;
  *(result + 152) = 0;
  *(result + 156) = 1;
  *(result + 160) = 0;
  *(result + 164) = 1;
  *(result + 168) = 0;
  *(result + 172) = 1;
  *(result + 176) = 0;
  *(result + 180) = 1;
  *(result + 184) = 0;
  *(result + 188) = 1;
  *(result + 192) = 0;
  *(result + 196) = 1;
  *(result + 200) = 0;
  *(result + 204) = 1;
  *(result + 208) = 0;
  *(result + 212) = 1;
  *(result + 216) = 0;
  *(result + 220) = 1;
  *(result + 224) = 0;
  *(result + 228) = 1;
  *(result + 232) = 0;
  *(result + 236) = 1;
  *(result + 240) = 0;
  *(result + 244) = 1;
  *(result + 248) = 0;
  *(result + 252) = 1;
  *(result + 256) = 0;
  *(result + 260) = 1;
  *(result + 264) = 0;
  *(result + 268) = 1;
  *(result + 272) = 0;
  *(result + 276) = 1;
  *(result + 280) = 0;
  *(result + 284) = 1;
  qword_100461410 = result;
  return result;
}

uint64_t sub_100237330()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v3) = v7;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v1 || (v9 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 5:
      case 6:
      case 7:
      case 8:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 17:
      case 18:
      case 19:
      case 20:
      case 24:
      case 28:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_8;
      case 3:
      case 4:
      case 9:
      case 10:
      case 16:
      case 21:
      case 22:
      case 23:
      case 25:
      case 26:
      case 27:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_8:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_10023780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 20))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 28) & 1) == 0)
  {
    v12 = *(v9 + 24);
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 36) & 1) == 0)
  {
    v13 = *(v9 + 32);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 44) & 1) == 0)
  {
    v14 = *(v9 + 40);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100237D10(v9);
  sub_100237D94(v9, a1, a2, a3, 6, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100237E30(v9, a1, a2, a3, 7, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100237ECC(v9, a1, a2, a3, 8, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100237F68(v9);
  sub_100237FF4(v9);
  sub_100238080(v9, a1, a2, a3, 11, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_10023811C(v9, a1, a2, a3, 12, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_1002381B8(v9, a1, a2, a3, 13, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100238254(v9, a1, a2, a3, 14, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_1002382F0(v9, a1, a2, a3, 15, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_10023838C(v9);
  sub_100238410(v9);
  sub_100238494(v9);
  sub_100238518(v9);
  sub_10023859C(v9);
  sub_100238620(v9);
  sub_1002386A4(v9);
  sub_100238728(v9);
  sub_1002387AC(v9);
  sub_100238830(v9);
  sub_1002388B4(v9);
  sub_100238938(v9);
  sub_1002389BC(v9);
  sub_100238A40(v9);
  sub_100238AC4(v9);
  sub_100238B48(v9);
  sub_100238BD0(v9);
  sub_100238C58(v9);
  sub_100238CE0(v9);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100237D10(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = *(a1 + 48);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100237D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 60) & 1) == 0)
  {
    return a6(*(a1 + 56), a5, a3, a4);
  }

  return result;
}

uint64_t sub_100237E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 68) & 1) == 0)
  {
    return a6(*(a1 + 64), a5, a3, a4);
  }

  return result;
}

uint64_t sub_100237ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 76) & 1) == 0)
  {
    return a6(*(a1 + 72), a5, a3, a4);
  }

  return result;
}

uint64_t sub_100237F68(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 84) & 1) == 0)
  {
    v3 = *(a1 + 80);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100237FF4(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 92) & 1) == 0)
  {
    v3 = *(a1 + 88);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 100) & 1) == 0)
  {
    return a6(*(a1 + 96), a5, a3, a4);
  }

  return result;
}

uint64_t sub_10023811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 108) & 1) == 0)
  {
    return a6(*(a1 + 104), a5, a3, a4);
  }

  return result;
}

uint64_t sub_1002381B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 116) & 1) == 0)
  {
    return a6(*(a1 + 112), a5, a3, a4);
  }

  return result;
}

uint64_t sub_100238254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 124) & 1) == 0)
  {
    return a6(*(a1 + 120), a5, a3, a4);
  }

  return result;
}

uint64_t sub_1002382F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 132) & 1) == 0)
  {
    return a6(*(a1 + 128), a5, a3, a4);
  }

  return result;
}

uint64_t sub_10023838C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 140) & 1) == 0)
  {
    v3 = *(a1 + 136);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238410(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 148) & 1) == 0)
  {
    v3 = *(a1 + 144);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238494(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 156) & 1) == 0)
  {
    v3 = *(a1 + 152);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238518(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 164) & 1) == 0)
  {
    v3 = *(a1 + 160);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023859C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 172) & 1) == 0)
  {
    v3 = *(a1 + 168);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238620(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 180) & 1) == 0)
  {
    v3 = *(a1 + 176);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002386A4(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 188) & 1) == 0)
  {
    v3 = *(a1 + 184);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238728(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 196) & 1) == 0)
  {
    v3 = *(a1 + 192);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002387AC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 204) & 1) == 0)
  {
    v3 = *(a1 + 200);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238830(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 212) & 1) == 0)
  {
    v3 = *(a1 + 208);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002388B4(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 220) & 1) == 0)
  {
    v3 = *(a1 + 216);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238938(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 228) & 1) == 0)
  {
    v3 = *(a1 + 224);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002389BC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 236) & 1) == 0)
  {
    v3 = *(a1 + 232);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238A40(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 244) & 1) == 0)
  {
    v3 = *(a1 + 240);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238AC4(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 252) & 1) == 0)
  {
    v3 = *(a1 + 248);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238B48(uint64_t a1)
{
  v2 = (a1 + 256);
  result = swift_beginAccess();
  if ((*(a1 + 260) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238BD0(uint64_t a1)
{
  v2 = (a1 + 264);
  result = swift_beginAccess();
  if ((*(a1 + 268) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238C58(uint64_t a1)
{
  v2 = (a1 + 272);
  result = swift_beginAccess();
  if ((*(a1 + 276) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238CE0(uint64_t a1)
{
  v2 = (a1 + 280);
  result = swift_beginAccess();
  if ((*(a1 + 284) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100238D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  if (*(a1 + *(v7 + 20)) != *(a2 + *(v7 + 20)) && (a4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100238E54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  swift_beginAccess();
  v6 = *(a2 + 20);
  if (v5)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  swift_beginAccess();
  v9 = *(a2 + 28);
  if (v8)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v7 != *(a2 + 24))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 32);
  v11 = *(a1 + 36);
  swift_beginAccess();
  v12 = *(a2 + 36);
  if (v11)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 32))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 40);
  v14 = *(a1 + 44);
  swift_beginAccess();
  v15 = *(a2 + 44);
  if (v14)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 40))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 48);
  v17 = *(a1 + 52);
  swift_beginAccess();
  v18 = *(a2 + 52);
  if (v17)
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 48))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 56);
  v20 = *(a1 + 60);
  swift_beginAccess();
  v21 = *(a2 + 60);
  if (v20)
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 56))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 64);
  v23 = *(a1 + 68);
  swift_beginAccess();
  v24 = *(a2 + 68);
  if (v23)
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 64))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 72);
  v26 = *(a1 + 76);
  swift_beginAccess();
  v27 = *(a2 + 76);
  if (v26)
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 72))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 80);
  v29 = *(a1 + 84);
  swift_beginAccess();
  v30 = *(a2 + 84);
  if (v29)
  {
    if (!*(a2 + 84))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 80))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 88);
  v32 = *(a1 + 92);
  swift_beginAccess();
  v33 = *(a2 + 92);
  if (v32)
  {
    if (!*(a2 + 92))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 88))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 96);
  v35 = *(a1 + 100);
  swift_beginAccess();
  v36 = *(a2 + 100);
  if (v35)
  {
    if (!*(a2 + 100))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 96))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 104);
  v38 = *(a1 + 108);
  swift_beginAccess();
  v39 = *(a2 + 108);
  if (v38)
  {
    if (!*(a2 + 108))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 104))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 112);
  v41 = *(a1 + 116);
  swift_beginAccess();
  v42 = *(a2 + 116);
  if (v41)
  {
    if (!*(a2 + 116))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 112))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 120);
  v44 = *(a1 + 124);
  swift_beginAccess();
  v45 = *(a2 + 124);
  if (v44)
  {
    if (!*(a2 + 124))
    {
      return 0;
    }
  }

  else
  {
    if (v43 != *(a2 + 120))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 128);
  v47 = *(a1 + 132);
  swift_beginAccess();
  v48 = *(a2 + 132);
  if (v47)
  {
    if (!*(a2 + 132))
    {
      return 0;
    }
  }

  else
  {
    if (v46 != *(a2 + 128))
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v49 = *(a1 + 136);
  v50 = *(a1 + 140);
  swift_beginAccess();
  v51 = *(a2 + 140);
  if (v50)
  {
    if (!*(a2 + 140))
    {
      return 0;
    }
  }

  else
  {
    if (v49 != *(a2 + 136))
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v52 = *(a1 + 144);
  v53 = *(a1 + 148);
  swift_beginAccess();
  v54 = *(a2 + 148);
  if (v53)
  {
    if (!*(a2 + 148))
    {
      return 0;
    }
  }

  else
  {
    if (v52 != *(a2 + 144))
    {
      v54 = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v55 = *(a1 + 152);
  v56 = *(a1 + 156);
  swift_beginAccess();
  v57 = *(a2 + 156);
  if (v56)
  {
    if (!*(a2 + 156))
    {
      return 0;
    }
  }

  else
  {
    if (v55 != *(a2 + 152))
    {
      v57 = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v58 = *(a1 + 160);
  v59 = *(a1 + 164);
  swift_beginAccess();
  v60 = *(a2 + 164);
  if (v59)
  {
    if (!*(a2 + 164))
    {
      return 0;
    }
  }

  else
  {
    if (v58 != *(a2 + 160))
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v61 = *(a1 + 168);
  v62 = *(a1 + 172);
  swift_beginAccess();
  v63 = *(a2 + 172);
  if (v62)
  {
    if (!*(a2 + 172))
    {
      return 0;
    }
  }

  else
  {
    if (v61 != *(a2 + 168))
    {
      v63 = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v64 = *(a1 + 176);
  v65 = *(a1 + 180);
  swift_beginAccess();
  v66 = *(a2 + 180);
  if (v65)
  {
    if (!*(a2 + 180))
    {
      return 0;
    }
  }

  else
  {
    if (v64 != *(a2 + 176))
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v67 = *(a1 + 184);
  v68 = *(a1 + 188);
  swift_beginAccess();
  v69 = *(a2 + 188);
  if (v68)
  {
    if (!*(a2 + 188))
    {
      return 0;
    }
  }

  else
  {
    if (v67 != *(a2 + 184))
    {
      v69 = 1;
    }

    if (v69)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v70 = *(a1 + 192);
  v71 = *(a1 + 196);
  swift_beginAccess();
  v72 = *(a2 + 196);
  if (v71)
  {
    if (!*(a2 + 196))
    {
      return 0;
    }
  }

  else
  {
    if (v70 != *(a2 + 192))
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v73 = *(a1 + 200);
  v74 = *(a1 + 204);
  swift_beginAccess();
  v75 = *(a2 + 204);
  if (v74)
  {
    if (!*(a2 + 204))
    {
      return 0;
    }
  }

  else
  {
    if (v73 != *(a2 + 200))
    {
      v75 = 1;
    }

    if (v75)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v76 = *(a1 + 208);
  v77 = *(a1 + 212);
  swift_beginAccess();
  v78 = *(a2 + 212);
  if (v77)
  {
    if (!*(a2 + 212))
    {
      return 0;
    }
  }

  else
  {
    if (v76 != *(a2 + 208))
    {
      v78 = 1;
    }

    if (v78)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v79 = *(a1 + 216);
  v80 = *(a1 + 220);
  swift_beginAccess();
  v81 = *(a2 + 220);
  if (v80)
  {
    if (!*(a2 + 220))
    {
      return 0;
    }
  }

  else
  {
    if (v79 != *(a2 + 216))
    {
      v81 = 1;
    }

    if (v81)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v82 = *(a1 + 224);
  v83 = *(a1 + 228);
  swift_beginAccess();
  v84 = *(a2 + 228);
  if (v83)
  {
    if (!*(a2 + 228))
    {
      return 0;
    }
  }

  else
  {
    if (v82 != *(a2 + 224))
    {
      v84 = 1;
    }

    if (v84)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v85 = *(a1 + 232);
  v86 = *(a1 + 236);
  swift_beginAccess();
  v87 = *(a2 + 236);
  if (v86)
  {
    if (!*(a2 + 236))
    {
      return 0;
    }
  }

  else
  {
    if (v85 != *(a2 + 232))
    {
      v87 = 1;
    }

    if (v87)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v88 = *(a1 + 240);
  v89 = *(a1 + 244);
  swift_beginAccess();
  v90 = *(a2 + 244);
  if (v89)
  {
    if (!*(a2 + 244))
    {
      return 0;
    }
  }

  else
  {
    if (v88 != *(a2 + 240))
    {
      v90 = 1;
    }

    if (v90)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v91 = *(a1 + 248);
  v92 = *(a1 + 252);
  swift_beginAccess();
  v93 = *(a2 + 252);
  if (v92)
  {
    if (!*(a2 + 252))
    {
      return 0;
    }
  }

  else
  {
    if (v91 != *(a2 + 248))
    {
      v93 = 1;
    }

    if (v93)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v94 = *(a1 + 256);
  v95 = *(a1 + 260);
  swift_beginAccess();
  v96 = *(a2 + 260);
  if (v95)
  {
    if (!*(a2 + 260))
    {
      return 0;
    }
  }

  else
  {
    if (v94 != *(a2 + 256))
    {
      v96 = 1;
    }

    if (v96)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v97 = *(a1 + 264);
  v98 = *(a1 + 268);
  swift_beginAccess();
  v99 = *(a2 + 268);
  if (v98)
  {
    if (!*(a2 + 268))
    {
      return 0;
    }
  }

  else
  {
    if (v97 != *(a2 + 264))
    {
      v99 = 1;
    }

    if (v99)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v100 = *(a1 + 272);
  v101 = *(a1 + 276);
  swift_beginAccess();
  v102 = *(a2 + 276);
  if (v101)
  {
    if (*(a2 + 276))
    {
      goto LABEL_199;
    }

    return 0;
  }

  if (v100 != *(a2 + 272))
  {
    v102 = 1;
  }

  if (v102)
  {
    return 0;
  }

LABEL_199:
  swift_beginAccess();
  v103 = *(a1 + 280);
  v104 = *(a1 + 284);
  swift_beginAccess();
  v105 = *(a2 + 284);
  if (v104)
  {
    if (!*(a2 + 284))
    {
      return 0;
    }
  }

  else
  {
    if (v103 != *(a2 + 280))
    {
      v105 = 1;
    }

    if (v105)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1002399E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A548, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100239A84(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004243A8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100239AF0()
{
  sub_100256CB4(&qword_1004243A8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);

  return Message.hash(into:)();
}

uint64_t sub_100239B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)) && (a5() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100239C5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434960);
  sub_100005DF0(v0, qword_100434960);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "nr_of_sats";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ephemeris";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "session_protocol";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pos_protocol";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "session_id";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100239F40()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v5 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 24);
          goto LABEL_18;
        }

        if (result == 2)
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
          sub_100256CB4(&qword_1004243A8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 28);
            sub_100268A80();
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 32);
            sub_100268A2C();
            goto LABEL_5;
          case 5:
            v5 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 36);
LABEL_18:
            v0 = v5;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023A0F8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
    sub_100256CB4(&qword_1004243A8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  if (*(v0 + v3[7]) != 6)
  {
    v9 = *(v0 + v3[7]);
    sub_100268A80();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 7)
  {
    v10 = *(v0 + v3[8]);
    sub_100268A2C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v6 = (v0 + v3[9]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v8 = v0 + v3[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023A330@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[4] = 1;
  *(a2 + v6) = 6;
  v8 = a1[9];
  *(a2 + a1[8]) = 7;
  v9 = a2 + v8;
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t sub_10023A3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A540, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023A470(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425190, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023A4DC()
{
  sub_100256CB4(&qword_100425190, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);

  return Message.hash(into:)();
}

uint64_t sub_10023A5E0()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0) + 20);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t sub_10023A66C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  if (*(v0 + *(result + 20)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023A780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A538, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023A820(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004251A8, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023A88C()
{
  sub_100256CB4(&qword_1004251A8, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);

  return Message.hash(into:)();
}

uint64_t sub_10023A930()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434990);
  sub_100005DF0(v0, qword_100434990);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cdma_context";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023AB48()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
        v5 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext;
        v6 = &qword_1004252F0;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 20);
    type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
    v5 = type metadata accessor for Proto_Gnss_Emergency_Configuration;
    v6 = &qword_100424A80;
LABEL_5:
    sub_100256CB4(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10023ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10023AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F10, &qword_1003833E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100423F10, &qword_1003833E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F10, &qword_1003833E0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  sub_100256CB4(&qword_100424A80, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Configuration);
}

uint64_t sub_10023AF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100424098, &qword_100383568);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100424098, &qword_100383568);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424098, &qword_100383568);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  sub_100256CB4(&qword_1004252F0, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
}

uint64_t sub_10023B21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A530, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023B2BC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004251C0, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023B328()
{
  sub_100256CB4(&qword_1004251C0, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);

  return Message.hash(into:)();
}

uint64_t sub_10023B3CC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004349A8);
  sub_100005DF0(v0, qword_1004349A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "helo_enabled";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "imsi";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cplane_config";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supl_config";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023B664()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v5 = v0;
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 28);
          type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig;
          v8 = &qword_1004251A8;
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

          v5 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 32);
          type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig;
          v8 = &qword_100424AB0;
        }

        sub_100256CB4(v8, v7);
        v0 = v5;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 20);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 24);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023B820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v11 = (v5 + *(v10 + 24));
  if (v11[1])
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  sub_10023B910(v5, a1, a2, a3);
  sub_10023BB2C(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023B910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_1004240A0, &qword_100383570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_1004240A0, &qword_100383570);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_1004240A0, &qword_100383570);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  sub_100256CB4(&qword_1004251A8, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
}

uint64_t sub_10023BB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_1004240A8, &qword_100383578);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_1004240A8, &qword_100383578);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_1004240A8, &qword_100383578);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  sub_100256CB4(&qword_100424AB0, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
}

uint64_t sub_10023BD94@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 2;
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1[7];
  v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_10023BE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A528, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023BF3C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004251D8, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023BFA8()
{
  sub_100256CB4(&qword_1004251D8, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);

  return Message.hash(into:)();
}

uint64_t sub_10023C04C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004349C0);
  sub_100005DF0(v0, qword_1004349C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10036D7A0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "code_phase";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "doppler0";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "doppler1";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "doppler_uncer";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "int_code_phase";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "gps_bit_number";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "code_phase_search_window";
  *(v19 + 1) = 24;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "azimuth";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "elevation";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "sat_id";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "azimuth_lsb";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "elevation_lsb";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "doppler_uncer_ext";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023C524()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 20);
          goto LABEL_18;
        case 2:
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 24);
          goto LABEL_18;
        case 3:
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 28);
          goto LABEL_18;
        case 4:
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 32);
          goto LABEL_18;
        case 5:
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 36);
          goto LABEL_18;
        case 6:
          v12 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 40);
          goto LABEL_18;
        case 7:
          v13 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 44);
          goto LABEL_18;
        case 8:
          v10 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 48);
          goto LABEL_18;
        case 9:
          v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 52);
          goto LABEL_18;
        case 10:
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 56);
          goto LABEL_18;
        case 11:
          v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 60);
          goto LABEL_18;
        case 12:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 64);
LABEL_18:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 13:
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 68);
          sub_10026839C();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023C6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[7]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100210B54(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  sub_10023645C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  sub_10023C9A4(v5);
  sub_10023CA1C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, sub_10026839C);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023C9A4(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v3 = (a1 + *(result + 64));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 68)) != 7)
  {
    v9 = *(a1 + *(result + 68));
    a6();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023CB0C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1[12];
  v15 = a2 + a1[11];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + v14;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1[14];
  v18 = a2 + a1[13];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a2 + v17;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = a1[16];
  v21 = a2 + a1[15];
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = a2 + v20;
  *v22 = 0;
  *(v22 + 4) = 1;
  *(a2 + a1[17]) = 7;
  return result;
}

uint64_t sub_10023CC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A520, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023CCBC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004243D8, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023CD28()
{
  sub_100256CB4(&qword_1004243D8, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);

  return Message.hash(into:)();
}

uint64_t sub_10023CDCC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004349D8);
  sub_100005DF0(v0, qword_1004349D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "gps_tow";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "nr_of_sats";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "cell_time_assistance";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "acquisition";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "confidence";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "session_protocol";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "pos_protocol";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "session_id";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023D16C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            v8 = v0;
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 36);
LABEL_23:
            v0 = v8;
LABEL_6:
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            goto LABEL_7;
          }

          v6 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 40);
          sub_100268A80();
          goto LABEL_26;
        }

        if (result == 7)
        {
          v6 = v0;
          v12 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 44);
          sub_100268A2C();
LABEL_26:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_7;
        }

        if (result == 8)
        {
          v8 = v0;
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 48);
          goto LABEL_23;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 32);
          type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
          sub_100256CB4(&qword_100425128, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
          sub_100256CB4(&qword_1004243D8, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 24);
LABEL_5:
          v0 = v3;
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 28);
          goto LABEL_5;
        }
      }

LABEL_7:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023D3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v9 = result;
  v10 = (v3 + *(result + 24));
  if (v10[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *v10;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v12 = (v3 + v9[7]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10023D5DC(v3, a1, a2, a3);
  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
    sub_100256CB4(&qword_1004243D8, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v14 = (v3 + v9[9]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10023D7F8(v3);
  sub_10023D884(v3);
  sub_1001FCF44(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  v16 = v3 + v9[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023D5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_1004240B0, &qword_100383580);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_1004240B0, &qword_100383580);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_1004240B0, &qword_100383580);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  sub_100256CB4(&qword_100425128, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
}

uint64_t sub_10023D7F8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  if (*(a1 + *(result + 40)) != 6)
  {
    v3 = *(a1 + *(result + 40));
    sub_100268A80();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023D884(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  if (*(a1 + *(result + 44)) != 7)
  {
    v3 = *(a1 + *(result + 44));
    sub_100268A2C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023D95C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = &a2[a1[6]];
  *v6 = 0;
  v6[4] = 1;
  v7 = &a2[v5];
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[8];
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  result = (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v11 = a1[10];
  v12 = &a2[a1[9]];
  *v12 = 0;
  v12[4] = 1;
  a2[v11] = 6;
  v13 = a1[12];
  a2[a1[11]] = 7;
  v14 = &a2[v13];
  *v14 = 0;
  v14[4] = 1;
  return result;
}

uint64_t sub_10023DA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A518, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023DB04(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425200, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023DB70()
{
  sub_100256CB4(&qword_100425200, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);

  return Message.hash(into:)();
}

uint64_t sub_10023DC2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  sub_100036108(v7, a2);
  sub_100005DF0(v7, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v8 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100374440;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = enum case for _NameMap.NameDescription.standard(_:);
  v14 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023DDE0()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0) + 20);
        sub_1002687E0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023DE94()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  if (*(v0 + *(result + 20)) == 6)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v3 = *(v0 + *(result + 20));
    sub_1002687E0();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023DF48(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 6)
  {
    if (v6 != 6)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10023E04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 20)) = 6;
  return result;
}

uint64_t sub_10023E0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A510, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023E150(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425218, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023E1BC()
{
  sub_100256CB4(&qword_100425218, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);

  return Message.hash(into:)();
}

uint64_t sub_10023E238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 6)
  {
    if (v5 != 6)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10023E314()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A08);
  sub_100005DF0(v0, qword_100434A08);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "result";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "network_type";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "cell_time";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023E57C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 28);
          type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
          sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 24);
          sub_1002687E0();
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 20);
          sub_1000361C0();
          break;
        default:
          goto LABEL_5;
      }

      v0 = v4;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10023E6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 10)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v5 + *(result + 20));
    sub_1000361C0();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + *(v10 + 24)) != 6)
  {
    v12 = *(v5 + *(v10 + 24));
    sub_1002687E0();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_10023E7F4(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023E7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100424090, &qword_100383560);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_100424090, &qword_100383560);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424090, &qword_100383560);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_100256CB4(&qword_100425110, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
}

uint64_t sub_10023EA5C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 10;
  *(a2 + v4) = 6;
  v5 = a1[7];
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_10023EB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A508, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023EBB8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425230, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023EC24()
{
  sub_100256CB4(&qword_100425230, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);

  return Message.hash(into:)();
}

uint64_t sub_10023ECC8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A20);
  sub_100005DF0(v0, qword_100434A20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "latitude_degrees";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "longitude_degrees";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "altitude_meters";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ver_uncert_meters";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "horz_uncert_meters";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "horz_confidence";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "vert_confidence";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023F00C()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 20);
          goto LABEL_3;
        case 2:
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 24);
          goto LABEL_3;
        case 3:
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 28);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v8 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 40);
LABEL_19:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 7)
      {
        v6 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 44);
        goto LABEL_19;
      }
    }

    else
    {
      if (result == 4)
      {
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 32);
      }

      else
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 36);
      }

LABEL_3:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }
}

uint64_t sub_10023F168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v10 = result;
  v11 = v5 + *(result + 20);
  if (*(v11 + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = v5 + v10[6];
  if ((*(v13 + 8) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 8) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_10023F2F0(v5);
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023F2F0(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10023F3B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_10023F474(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A500, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023F514(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425248, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023F580()
{
  sub_100256CB4(&qword_100425248, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);

  return Message.hash(into:)();
}

uint64_t sub_10023F628()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A38);
  sub_100005DF0(v0, qword_100434A38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "gps_tow_seconds";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_week";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "gps_time_uncertainty";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023F884()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v1 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 28);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 2:
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 24);
LABEL_10:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
      case 1:
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_10023F95C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v8 = (v0 + *(v3 + 28));
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10023FA90@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_10023FB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4F8, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10023FBB8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425260, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10023FC24()
{
  sub_100256CB4(&qword_100425260, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);

  return Message.hash(into:)();
}

uint64_t sub_10023FCC8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A50);
  sub_100005DF0(v0, qword_100434A50);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "horz";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "heading";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "vertical";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10023FFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4F0, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100240094(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425278, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100240100()
{
  sub_100256CB4(&qword_100425278, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);

  return Message.hash(into:)();
}

uint64_t sub_1002401A8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A68);
  sub_100005DF0(v0, qword_100434A68);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bias";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "drift";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002404B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4E8, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100240550(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425290, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002405BC()
{
  sub_100256CB4(&qword_100425290, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);

  return Message.hash(into:)();
}

uint64_t sub_100240660()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A80);
  sub_100005DF0(v0, qword_100434A80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "altitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "altitude_unc";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100240970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1002409B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4E0, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100240A58(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004252A8, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100240AC4()
{
  sub_100256CB4(&qword_1004252A8, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);

  return Message.hash(into:)();
}

uint64_t sub_100240B68()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434A98);
  sub_100005DF0(v0, qword_100434A98);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1003833A0;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "latitude";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "longitude";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "loc_unc_ang";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "loc_unc_a";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "loc_unc_p";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "fix_type";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "velocity_included";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "velocity";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "clock_included";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "clock";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "altitude_included";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "altitude";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100240FF8()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while (1)
    {
      if (v3)
      {
        return result;
      }

      if (result > 6)
      {
        break;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v4 = v1;
          v15 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 32);
          goto LABEL_5;
        }

        if (result == 5)
        {
          v4 = v1;
          v19 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 36);
          goto LABEL_5;
        }

        v9 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 40);
        sub_100268834();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 1:
            v4 = v1;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 20);
LABEL_5:
            v1 = v4;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 2:
            v4 = v1;
            v17 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 24);
            goto LABEL_5;
          case 3:
            v4 = v1;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 28);
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 9)
    {
      if (result == 10)
      {
        v10 = v1;
        v16 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 56);
        type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
        v12 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo;
        v13 = &qword_100425290;
        goto LABEL_28;
      }

      if (result != 11)
      {
        if (result != 12)
        {
          goto LABEL_6;
        }

        v10 = v1;
        v11 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 64);
        type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
        v12 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo;
        v13 = &qword_1004252A8;
LABEL_28:
        sub_100256CB4(v13, v12);
        v1 = v10;
LABEL_31:
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_6;
      }

      v7 = v1;
      v20 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 60);
    }

    else
    {
      if (result == 7)
      {
        v14 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 44);
LABEL_35:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_6;
      }

      if (result == 8)
      {
        v18 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 48);
        type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
        sub_100256CB4(&qword_100425278, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
        goto LABEL_31;
      }

      v7 = v1;
      v8 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 52);
    }

    v1 = v7;
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_100241324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[7]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100241544(v5);
  sub_1002415D0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  sub_10024164C(v5, a1, a2, a3);
  sub_100241868(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  sub_1002418E4(v5, a1, a2, a3);
  sub_100241B00(v5);
  sub_100241B78(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100241544(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    v3 = *(a1 + *(result + 40));
    sub_100268834();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002415D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10024164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_1004240B8, &qword_100383588);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  sub_10000A0A4(a1 + *(v14 + 48), v8, &qword_1004240B8, &qword_100383588);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_1004240B8, &qword_100383588);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  sub_100256CB4(&qword_100425278, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
}

uint64_t sub_100241868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002418E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_1004240C0, &qword_100383590);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  sub_10000A0A4(a1 + *(v14 + 56), v8, &qword_1004240C0, &qword_100383590);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_1004240C0, &qword_100383590);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  sub_100256CB4(&qword_100425290, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
}

uint64_t sub_100241B00(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100241B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_1004240C8, &qword_100383598);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  sub_10000A0A4(a1 + *(v14 + 64), v8, &qword_1004240C8, &qword_100383598);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_1004240C8, &qword_100383598);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  sub_100256CB4(&qword_1004252A8, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
}

uint64_t sub_100241DE0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + v10) = 4;
  v12 = a1[12];
  *(a2 + a1[11]) = 2;
  v13 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = a1[14];
  *(a2 + a1[13]) = 2;
  v15 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  v16 = a1[15];
  v17 = a1[16];
  *(a2 + v16) = 2;
  v18 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v19 = *(*(v18 - 8) + 56);

  return v19(a2 + v17, 1, 1, v18);
}

uint64_t sub_100241F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4D8, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10024201C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004252C0, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100242088()
{
  sub_100256CB4(&qword_1004252C0, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);

  return Message.hash(into:)();
}

uint64_t sub_10024212C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434AB0);
  sub_100005DF0(v0, qword_100434AB0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "result";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_type";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "session_info";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "gps_measurements";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "location_indication";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "aflt_action";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "is_meas_in_cdma_time";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100242488()
{
  v0 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 9;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v5 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction) = 4;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  qword_100461498 = v3;
  return result;
}

uint64_t sub_1002425D0()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &qword_100423FF8, &qword_1003834C8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements, &qword_100424040, &qword_100383510);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication, &qword_1004240D0, &qword_1003835A0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100242684()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1002492C0(v6);

    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result <= 3)
      {
        break;
      }

      if (result <= 5)
      {
        v13 = v1;
        if (result == 4)
        {
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements;
          v15 = &qword_100424FA0;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd;
          v15 = &qword_1004252C0;
        }

LABEL_19:
        sub_100256CB4(v15, v14);
        v1 = v13;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_23;
      }

      if (result == 6)
      {
        v16 = v1;
        swift_beginAccess();
        sub_1002682F4();
        goto LABEL_21;
      }

      if (result != 7)
      {
        goto LABEL_24;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_23:
      swift_endAccess();
LABEL_24:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      v16 = v1;
      swift_beginAccess();
      sub_100268B28();
LABEL_21:
      v1 = v16;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      goto LABEL_23;
    }

    if (result == 2)
    {
      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      goto LABEL_23;
    }

    if (result != 3)
    {
      goto LABEL_24;
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
    v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
    v15 = &qword_100424C40;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002429EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *(v9 + 16);
    sub_100268B28();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 20);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100242B78(v9, a1, a2, a3);
  sub_100242DA0(v9, a1, a2, a3);
  sub_100242FC8(v9, a1, a2, a3);
  sub_1002431F0(v9);
  sub_100243294(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100242B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423FF8, &qword_1003834C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FF8, &qword_1003834C8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t sub_100242DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424040, &qword_100383510);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424040, &qword_100383510);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424040, &qword_100383510);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  sub_100256CB4(&qword_100424FA0, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
}

uint64_t sub_100242FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_1004240D0, &qword_1003835A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_1004240D0, &qword_1003835A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_1004240D0, &qword_1003835A0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  sub_100256CB4(&qword_1004252C0, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
}

uint64_t sub_1002431F0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  result = swift_beginAccess();
  if (*(a1 + v2) != 4)
  {
    v4 = *(a1 + v2);
    sub_1002682F4();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100243294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

BOOL sub_100243364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v107 = *(v4 - 8);
  v108 = v4;
  v5 = *(v107 + 64);
  __chkstk_darwin(v4);
  v103 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100024A2C(&qword_10042A8F8, &qword_100390C10);
  v7 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v9 = &v100 - v8;
  v10 = sub_100024A2C(&qword_1004240D0, &qword_1003835A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v104 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v100 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v112 = *(v15 - 8);
  v113 = v15;
  v16 = *(v112 + 64);
  __chkstk_darwin(v15);
  v105 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100024A2C(&qword_10042A900, &qword_100390C18);
  v18 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v114 = &v100 - v19;
  v20 = sub_100024A2C(&qword_100424040, &qword_100383510);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v109 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v117 = &v100 - v24;
  v25 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v118 = *(v25 - 8);
  v26 = *(v118 + 64);
  __chkstk_darwin(v25);
  v110 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100024A2C(&qword_10042A908, &qword_100390C20);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v100 - v30;
  v32 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v100 - v37;
  swift_beginAccess();
  v39 = *(a1 + 16);
  swift_beginAccess();
  v40 = *(a2 + 16);
  if (v39 == 9)
  {
    if (v40 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v42 = *(a1 + 20);
    v102 = a1;
    v43 = *(a1 + 24);
    swift_beginAccess();
    v44 = *(a2 + 24);
    if (v43)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v42 != *(a2 + 20))
      {
        v44 = 1;
      }

      if (v44)
      {
        return 0;
      }
    }

    v101 = v9;
    v116 = a2;
    v45 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v46 = v102;
    swift_beginAccess();
    sub_10000A0A4(v46 + v45, v38, &qword_100423FF8, &qword_1003834C8);
    v47 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v48 = *(v28 + 48);
    sub_10000A0A4(v38, v31, &qword_100423FF8, &qword_1003834C8);
    v49 = v116 + v47;
    v50 = v116;
    sub_10000A0A4(v49, &v31[v48], &qword_100423FF8, &qword_1003834C8);
    v51 = *(v118 + 48);
    if (v51(v31, 1, v25) == 1)
    {

      sub_1000059A8(v38, &qword_100423FF8, &qword_1003834C8);
      if (v51(&v31[v48], 1, v25) == 1)
      {
        sub_1000059A8(v31, &qword_100423FF8, &qword_1003834C8);
        goto LABEL_20;
      }
    }

    else
    {
      sub_10000A0A4(v31, v36, &qword_100423FF8, &qword_1003834C8);
      if (v51(&v31[v48], 1, v25) != 1)
      {
        v52 = v110;
        sub_1002463C0(&v31[v48], v110, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v46 = v102;

        v53 = sub_1002540CC(v36, v52);
        sub_100246490(v52, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v38, &qword_100423FF8, &qword_1003834C8);
        sub_100246490(v36, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v31, &qword_100423FF8, &qword_1003834C8);
        if ((v53 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_20:
        v54 = v50;
        v55 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v56 = v117;
        sub_10000A0A4(v46 + v55, v117, &qword_100424040, &qword_100383510);
        v57 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v58 = *(v111 + 48);
        v59 = v114;
        sub_10000A0A4(v56, v114, &qword_100424040, &qword_100383510);
        sub_10000A0A4(v54 + v57, v59 + v58, &qword_100424040, &qword_100383510);
        v60 = v113;
        v61 = *(v112 + 48);
        if (v61(v59, 1, v113) == 1)
        {
          sub_1000059A8(v56, &qword_100424040, &qword_100383510);
          v62 = v61(v59 + v58, 1, v60);
          v63 = v115;
          if (v62 == 1)
          {
            sub_1000059A8(v59, &qword_100424040, &qword_100383510);
LABEL_29:
            v77 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
            swift_beginAccess();
            sub_10000A0A4(v46 + v77, v63, &qword_1004240D0, &qword_1003835A0);
            v78 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
            v79 = v116;
            swift_beginAccess();
            v80 = *(v106 + 48);
            v81 = v101;
            sub_10000A0A4(v63, v101, &qword_1004240D0, &qword_1003835A0);
            v82 = v79 + v78;
            v83 = v81;
            sub_10000A0A4(v82, v81 + v80, &qword_1004240D0, &qword_1003835A0);
            v84 = v108;
            v85 = *(v107 + 48);
            if (v85(v81, 1, v108) == 1)
            {
              sub_1000059A8(v63, &qword_1004240D0, &qword_1003835A0);
              if (v85(v81 + v80, 1, v84) == 1)
              {
                sub_1000059A8(v81, &qword_1004240D0, &qword_1003835A0);
                v86 = v116;
LABEL_36:
                v92 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
                swift_beginAccess();
                v93 = *(v46 + v92);
                v94 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
                swift_beginAccess();
                v95 = *(v86 + v94);
                if (v93 == 4)
                {
                  if (v95 == 4)
                  {
LABEL_46:
                    v96 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v97 = *(v46 + v96);

                    v98 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v99 = *(v86 + v98);

                    if (v97 != 2)
                    {
                      return v99 != 2 && ((v97 ^ v99) & 1) == 0;
                    }

                    return v99 == 2;
                  }
                }

                else if (v95 != 4 && v93 == v95)
                {
                  goto LABEL_46;
                }

LABEL_41:

                return 0;
              }
            }

            else
            {
              v87 = v81;
              v88 = v104;
              sub_10000A0A4(v87, v104, &qword_1004240D0, &qword_1003835A0);
              if (v85(v83 + v80, 1, v84) != 1)
              {
                v89 = v83 + v80;
                v90 = v103;
                sub_1002463C0(v89, v103, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                v91 = sub_10024D2B4(v88, v90);
                sub_100246490(v90, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                sub_1000059A8(v63, &qword_1004240D0, &qword_1003835A0);
                sub_100246490(v88, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                sub_1000059A8(v83, &qword_1004240D0, &qword_1003835A0);
                v86 = v116;
                if ((v91 & 1) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_36;
              }

              sub_1000059A8(v63, &qword_1004240D0, &qword_1003835A0);
              sub_100246490(v88, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
            }

            v66 = &qword_10042A8F8;
            v67 = &qword_100390C10;
            v68 = v83;
LABEL_40:
            sub_1000059A8(v68, v66, v67);
            goto LABEL_41;
          }
        }

        else
        {
          v64 = v109;
          sub_10000A0A4(v59, v109, &qword_100424040, &qword_100383510);
          v65 = v61(v59 + v58, 1, v60);
          v63 = v115;
          if (v65 != 1)
          {
            v69 = v59 + v58;
            v70 = v105;
            sub_1002463C0(v69, v105, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            v71 = *(v60 + 20);
            v72 = *(v64 + v71);
            v73 = *(v70 + v71);
            if (v72 != v73)
            {
              v74 = *(v64 + v71);

              v75 = sub_10022648C(v72, v73);

              if (!v75)
              {
                sub_100246490(v70, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                sub_1000059A8(v117, &qword_100424040, &qword_100383510);
                sub_100246490(v64, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                v68 = v59;
                v66 = &qword_100424040;
                v67 = &qword_100383510;
                goto LABEL_40;
              }
            }

            type metadata accessor for UnknownStorage();
            sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
            v76 = dispatch thunk of static Equatable.== infix(_:_:)();
            sub_100246490(v70, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            sub_1000059A8(v117, &qword_100424040, &qword_100383510);
            sub_100246490(v64, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            sub_1000059A8(v59, &qword_100424040, &qword_100383510);
            if ((v76 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          sub_1000059A8(v117, &qword_100424040, &qword_100383510);
          sub_100246490(v64, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
        }

        v66 = &qword_10042A900;
        v67 = &qword_100390C18;
        v68 = v59;
        goto LABEL_40;
      }

      sub_1000059A8(v38, &qword_100423FF8, &qword_1003834C8);
      sub_100246490(v36, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    sub_1000059A8(v31, &qword_10042A908, &qword_100390C20);
    goto LABEL_41;
  }

  result = 0;
  if (v40 != 9 && v39 == v40)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100244194(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4D0, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100244234(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004252D8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002442A0()
{
  sub_100256CB4(&qword_1004252D8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);

  return Message.hash(into:)();
}

uint64_t sub_100244344()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434AC8);
  sub_100005DF0(v0, qword_100434AC8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "include1x_msb";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "optimize_gnss_meas_with1x_msb";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "optimize_aflt_meas_with1x_msb";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "use_cdma_time_for_meas";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002445DC()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v6 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v3 = v0;
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 24);
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002446C8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + v3[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v0 + v3[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

Swift::Int sub_100244824(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100256CB4(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002448DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A4C8, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10024497C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004252F0, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002449E8()
{
  sub_100256CB4(&qword_1004252F0, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);

  return Message.hash(into:)();
}

uint64_t sub_100244A64(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100244AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_100246428(v14, v11, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      sub_100246428(v15, v8, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19)
      {
        v20 = *&v11[v17];

        v21 = sub_10022D378(v18, v19);

        if (!v21)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
    sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
  }

  return 0;
}

uint64_t sub_100244D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_100246428(v14, v11, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      sub_100246428(v15, v8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19 && (sub_100238E54(v18, v19) & 1) == 0)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
    sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris);
  }

  return 0;
}

uint64_t sub_100244F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v44 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_100246428(v14, v11, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        sub_100246428(v15, v8, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        v17 = v4[5];
        v18 = &v11[v17];
        v19 = v11[v17 + 4];
        v20 = &v8[v17];
        v21 = v8[v17 + 4];
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v18 != *v20)
          {
            LOBYTE(v21) = 1;
          }

          if (v21)
          {
LABEL_39:
            sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
            sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
            goto LABEL_40;
          }
        }

        v22 = v4[6];
        v23 = &v11[v22];
        v24 = v11[v22 + 4];
        v25 = &v8[v22];
        v26 = v8[v22 + 4];
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v23 != *v25)
          {
            LOBYTE(v26) = 1;
          }

          if (v26)
          {
            goto LABEL_39;
          }
        }

        v27 = v4[7];
        v28 = &v11[v27];
        v29 = v11[v27 + 4];
        v30 = &v8[v27];
        v31 = v8[v27 + 4];
        if (v29)
        {
          if (!v31)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v28 != *v30)
          {
            LOBYTE(v31) = 1;
          }

          if (v31)
          {
            goto LABEL_39;
          }
        }

        v32 = v4[8];
        v33 = &v11[v32];
        v34 = v11[v32 + 4];
        v35 = &v8[v32];
        v36 = v8[v32 + 4];
        if (v34)
        {
          if (!v36)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v33 != *v35)
          {
            LOBYTE(v36) = 1;
          }

          if (v36)
          {
            goto LABEL_39;
          }
        }

        v37 = v4[9];
        v38 = &v11[v37];
        v39 = v11[v37 + 4];
        v40 = &v8[v37];
        v41 = v8[v37 + 4];
        if (v39)
        {
          if (!v41)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v38 != *v40)
          {
            LOBYTE(v41) = 1;
          }

          if (v41)
          {
            goto LABEL_39;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_TowAssist);
        if (v42)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v42 & 1;
      }
    }

    v42 = 1;
  }

  else
  {
LABEL_40:
    v42 = 0;
  }

  return v42 & 1;
}

uint64_t sub_1002452BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v42 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_100246428(v14, v11, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        sub_100246428(v15, v8, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        v17 = v4[5];
        v18 = v11[v17];
        v19 = v8[v17];
        if (v18 == 2)
        {
          if (v19 != 2)
          {
            goto LABEL_38;
          }
        }

        else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
        {
          goto LABEL_38;
        }

        v20 = v4[6];
        v21 = &v11[v20];
        v22 = v11[v20 + 4];
        v23 = &v8[v20];
        v24 = v8[v20 + 4];
        if (v22)
        {
          if (!v24)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (*v21 != *v23)
          {
            LOBYTE(v24) = 1;
          }

          if (v24)
          {
LABEL_38:
            sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
            sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
            goto LABEL_39;
          }
        }

        v25 = v4[7];
        v26 = &v11[v25];
        v27 = v11[v25 + 4];
        v28 = &v8[v25];
        v29 = v8[v25 + 4];
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (*v26 != *v28)
          {
            LOBYTE(v29) = 1;
          }

          if (v29)
          {
            goto LABEL_38;
          }
        }

        v30 = v4[8];
        v31 = &v11[v30];
        v32 = v11[v30 + 4];
        v33 = &v8[v30];
        v34 = v8[v30 + 4];
        if (v32)
        {
          if (!v34)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (*v31 != *v33)
          {
            LOBYTE(v34) = 1;
          }

          if (v34)
          {
            goto LABEL_38;
          }
        }

        v35 = v4[9];
        v36 = &v11[v35];
        v37 = v11[v35 + 4];
        v38 = &v8[v35];
        v39 = v8[v35 + 4];
        if (v37)
        {
          if (!v39)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (*v36 != *v38)
          {
            LOBYTE(v39) = 1;
          }

          if (v39)
          {
            goto LABEL_38;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        if (v40)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v40 & 1;
      }
    }

    v40 = 1;
  }

  else
  {
LABEL_39:
    v40 = 0;
  }

  return v40 & 1;
}

uint64_t sub_1002455FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        sub_100246428(v19, v16, a4);
        sub_100246428(v20, v13, a4);
        v22 = a5(v16, v13);
        sub_100246490(v13, a4);
        sub_100246490(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_100245798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        sub_100246428(v19, v16, a4);
        sub_100246428(v20, v13, a4);
        v22 = a5(v16, v13);
        sub_100246490(v13, a4);
        sub_100246490(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_100245934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v14 = &v32 - v13;
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (v15 && a1 != a2)
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = a1 + v16;
      v18 = a2 + v16;
      v19 = *(v12 + 72);
      while (1)
      {
        sub_100246428(v17, v14, a4);
        sub_100246428(v18, v11, a4);
        v20 = *(v7 + 20);
        v21 = &v14[v20];
        v22 = v14[v20 + 4];
        v23 = &v11[v20];
        v24 = v11[v20 + 4];
        if (v22)
        {
          if (!v24)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v21 != *v23)
          {
            LOBYTE(v24) = 1;
          }

          if (v24)
          {
LABEL_21:
            sub_100246490(v11, a4);
            sub_100246490(v14, a4);
            goto LABEL_22;
          }
        }

        v25 = *(v7 + 24);
        v26 = &v14[v25];
        v27 = v14[v25 + 4];
        v28 = &v11[v25];
        v29 = v11[v25 + 4];
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v26 != *v28)
          {
            LOBYTE(v29) = 1;
          }

          if (v29)
          {
            goto LABEL_21;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100246490(v11, a4);
        sub_100246490(v14, a4);
        if (v30)
        {
          v18 += v19;
          v17 += v19;
          if (--v15)
          {
            continue;
          }
        }

        return v30 & 1;
      }
    }

    v30 = 1;
  }

  else
  {
LABEL_22:
    v30 = 0;
  }

  return v30 & 1;
}

unint64_t sub_100245B9C(unint64_t result)
{
  if (result >= 0x12)
  {
    return 18;
  }

  return result;
}

unint64_t sub_100245BAC(unint64_t result)
{
  if (result >= 0x11)
  {
    return 17;
  }

  return result;
}

unint64_t sub_100245BBC(unint64_t result)
{
  if (result >= 0x21)
  {
    return 33;
  }

  return result;
}

unint64_t sub_100245BCC(unint64_t result)
{
  if (result >= 0x18)
  {
    return 24;
  }

  return result;
}

uint64_t sub_100245BDC(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (!a1)
    {
      return 6;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1;
      }

      return 7;
    }

    return 0;
  }

  else if (a1 > 15)
  {
    if (a1 != 16)
    {
      if (a1 == 32)
      {
        return 5;
      }

      return 7;
    }

    return 4;
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return 3;
      }

      return 7;
    }

    return 2;
  }
}

uint64_t sub_100245CC4(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  *(v1 + 56) = 1;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  *(v1 + 108) = 0;
  *(v1 + 104) = 1;
  *(v1 + 113) = 1042;
  *(v1 + 115) = 7;
  *(v1 + 120) = 0;
  *(v1 + 112) = 1;
  *(v1 + 128) = 1;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1;
  *(v1 + 152) = 0;
  *(v1 + 161) = 33689864;
  *(v1 + 168) = 0;
  *(v1 + 160) = 1;
  *(v1 + 176) = 1;
  *(v1 + 180) = 0;
  *(v1 + 184) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  swift_beginAccess();
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  swift_beginAccess();
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v11;
  *(v1 + 88) = v12;
  swift_beginAccess();
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v13;
  *(v1 + 104) = v14;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 108);
  v15 = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 108) = v13;
  *(v1 + 112) = v15;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 113);
  swift_beginAccess();
  *(v1 + 113) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 114);
  swift_beginAccess();
  *(v1 + 114) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 115);
  swift_beginAccess();
  *(v1 + 115) = v13;
  swift_beginAccess();
  v16 = *(a1 + 120);
  v17 = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 120) = v16;
  *(v1 + 128) = v17;
  swift_beginAccess();
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 136) = v18;
  *(v1 + 144) = v19;
  swift_beginAccess();
  v20 = *(a1 + 152);
  v21 = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 152) = v20;
  *(v1 + 160) = v21;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 161);
  swift_beginAccess();
  *(v1 + 161) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 162);
  swift_beginAccess();
  *(v1 + 162) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 163);
  swift_beginAccess();
  *(v1 + 163) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 164);
  swift_beginAccess();
  *(v1 + 164) = v20;
  swift_beginAccess();
  v22 = *(a1 + 168);
  v23 = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 168) = v22;
  *(v1 + 176) = v23;
  swift_beginAccess();
  LODWORD(v22) = *(a1 + 180);
  LOBYTE(a1) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 180) = v22;
  *(v1 + 184) = a1;
  return v1;
}

uint64_t sub_1002463C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100246428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100246490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100246654(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 20) = 1281;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 44) = 1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 60) = 1;
  *(v1 + 64) = 0;
  *(v1 + 68) = 1;
  *(v1 + 72) = 0;
  *(v1 + 76) = 1;
  *(v1 + 80) = 0;
  *(v1 + 84) = 1;
  *(v1 + 88) = 0;
  *(v1 + 92) = 1;
  *(v1 + 96) = 0;
  *(v1 + 100) = 1;
  *(v1 + 104) = 0;
  *(v1 + 108) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 116) = 1793;
  *(v1 + 124) = 1;
  *(v1 + 128) = 0;
  *(v1 + 132) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 20) = v4;
  swift_beginAccess();
  v5 = *(a1 + 21);
  swift_beginAccess();
  *(v1 + 21) = v5;
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v6;
  *(v1 + 28) = v7;
  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v8;
  *(v1 + 36) = v9;
  swift_beginAccess();
  v10 = *(a1 + 40);
  v11 = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 40) = v10;
  *(v1 + 44) = v11;
  swift_beginAccess();
  v12 = *(a1 + 48);
  v13 = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 48) = v12;
  *(v1 + 52) = v13;
  swift_beginAccess();
  v14 = *(a1 + 56);
  v15 = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 56) = v14;
  *(v1 + 60) = v15;
  swift_beginAccess();
  v16 = *(a1 + 64);
  v17 = *(a1 + 68);
  swift_beginAccess();
  *(v1 + 64) = v16;
  *(v1 + 68) = v17;
  swift_beginAccess();
  v18 = *(a1 + 72);
  v19 = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 72) = v18;
  *(v1 + 76) = v19;
  swift_beginAccess();
  v20 = *(a1 + 80);
  v21 = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 80) = v20;
  *(v1 + 84) = v21;
  swift_beginAccess();
  v22 = *(a1 + 88);
  v23 = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 88) = v22;
  *(v1 + 92) = v23;
  swift_beginAccess();
  v24 = *(a1 + 96);
  v25 = *(a1 + 100);
  swift_beginAccess();
  *(v1 + 96) = v24;
  *(v1 + 100) = v25;
  swift_beginAccess();
  v26 = *(a1 + 104);
  v27 = *(a1 + 108);
  swift_beginAccess();
  *(v1 + 104) = v26;
  *(v1 + 108) = v27;
  swift_beginAccess();
  v28 = *(a1 + 112);
  v29 = *(a1 + 116);
  swift_beginAccess();
  *(v1 + 112) = v28;
  *(v1 + 116) = v29;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + 117);
  swift_beginAccess();
  *(v1 + 117) = v28;
  swift_beginAccess();
  v30 = *(a1 + 120);
  v31 = *(a1 + 124);
  swift_beginAccess();
  *(v1 + 120) = v30;
  *(v1 + 124) = v31;
  swift_beginAccess();
  v32 = *(a1 + 128);
  LOBYTE(a1) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 128) = v32;
  *(v1 + 132) = a1;
  return v1;
}

uint64_t sub_100246E4C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v67 = &v58 - v5;
  v6 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v66 = &v58 - v8;
  v9 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v65 = &v58 - v11;
  v12 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v64 = &v58 - v14;
  v15 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v63 = &v58 - v17;
  v18 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v59 = &v58 - v20;
  v21 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v58 - v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  v26 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  v28 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  v30 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v30 - 8) + 56))(v1 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  v32 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v32 - 8) + 56))(v1 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  v60 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  v34 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  v61 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  v36 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  v62 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  v38 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v38 - 8) + 56))(v1 + v37, 1, 1, v38);
  v39 = v1 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  *v39 = 0;
  *(v39 + 4) = 1;
  v40 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(a1 + v40, v24, &qword_100423F98, &qword_100383468);
  swift_beginAccess();
  sub_10000AD64(v24, v1 + v25, &qword_100423F98, &qword_100383468);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v42 = v59;
  sub_10000A0A4(a1 + v41, v59, &qword_100423FA0, &qword_100383470);
  swift_beginAccess();
  sub_10000AD64(v42, v1 + v27, &qword_100423FA0, &qword_100383470);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  v44 = v63;
  sub_10000A0A4(a1 + v43, v63, &qword_100423FA8, &qword_100383478);
  swift_beginAccess();
  sub_10000AD64(v44, v1 + v29, &qword_100423FA8, &qword_100383478);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  v46 = v64;
  sub_10000A0A4(a1 + v45, v64, &qword_100423FB0, &qword_100383480);
  swift_beginAccess();
  sub_10000AD64(v46, v1 + v31, &qword_100423FB0, &qword_100383480);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v48 = v65;
  sub_10000A0A4(a1 + v47, v65, &qword_100423F90, &qword_100383460);
  v49 = v60;
  swift_beginAccess();
  sub_10000AD64(v48, v1 + v49, &qword_100423F90, &qword_100383460);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v51 = v66;
  sub_10000A0A4(a1 + v50, v66, &qword_100423FB8, &qword_100383488);
  v52 = v61;
  swift_beginAccess();
  sub_10000AD64(v51, v1 + v52, &qword_100423FB8, &qword_100383488);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v54 = v67;
  sub_10000A0A4(a1 + v53, v67, &qword_100423FC0, &qword_100383490);
  v55 = v62;
  swift_beginAccess();
  sub_10000AD64(v54, v1 + v55, &qword_100423FC0, &qword_100383490);
  swift_endAccess();
  v56 = a1 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  swift_beginAccess();
  LODWORD(v53) = *v56;
  LOBYTE(v56) = *(v56 + 4);
  swift_beginAccess();
  *v39 = v53;
  *(v39 + 4) = v56;
  return v1;
}

uint64_t sub_1002477BC(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100424018, &qword_1003834E8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v54 = &v47 - v5;
  v6 = sub_100024A2C(&qword_100424010, &qword_1003834E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v53 = &v47 - v8;
  v9 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v52 = &v47 - v11;
  v12 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v51 = &v47 - v14;
  v15 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v47 - v17;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v19 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v20 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  v22 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  v48 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  v24 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  v49 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  v26 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  v50 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  v28 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  *v29 = 0;
  *(v29 + 4) = 1;
  swift_beginAccess();
  v30 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v30;
  swift_beginAccess();
  v31 = *(a1 + 20);
  v32 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v31;
  *(v1 + 24) = v32;
  v33 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v33, v18, &qword_100423FF8, &qword_1003834C8);
  swift_beginAccess();
  sub_10000AD64(v18, v1 + v19, &qword_100423FF8, &qword_1003834C8);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  v35 = v51;
  sub_10000A0A4(a1 + v34, v51, &qword_100424000, &qword_1003834D0);
  swift_beginAccess();
  sub_10000AD64(v35, v1 + v21, &qword_100424000, &qword_1003834D0);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  v37 = v52;
  sub_10000A0A4(a1 + v36, v52, &qword_100424008, &qword_1003834D8);
  v38 = v48;
  swift_beginAccess();
  sub_10000AD64(v37, v1 + v38, &qword_100424008, &qword_1003834D8);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  v40 = v53;
  sub_10000A0A4(a1 + v39, v53, &qword_100424010, &qword_1003834E0);
  v41 = v49;
  swift_beginAccess();
  sub_10000AD64(v40, v1 + v41, &qword_100424010, &qword_1003834E0);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  v43 = v54;
  sub_10000A0A4(a1 + v42, v54, &qword_100424018, &qword_1003834E8);
  v44 = v50;
  swift_beginAccess();
  sub_10000AD64(v43, v1 + v44, &qword_100424018, &qword_1003834E8);
  swift_endAccess();
  v45 = a1 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  swift_beginAccess();
  LODWORD(v42) = *v45;
  LOBYTE(v45) = *(v45 + 4);
  swift_beginAccess();
  *v29 = v42;
  *(v29 + 4) = v45;
  return v1;
}

uint64_t sub_100247F54(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100424048, &qword_100383518);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v34 = &v31 - v5;
  v6 = sub_100024A2C(&qword_100424040, &qword_100383510);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v33 = &v31 - v8;
  v9 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v16 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  v31 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  v18 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  *v19 = 0;
  *(v19 + 4) = 1;
  v32 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  swift_beginAccess();
  v20 = *(a1 + 20);
  LOBYTE(v17) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v20;
  *(v1 + 24) = v17;
  v21 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v21, v12, &qword_100423FF8, &qword_1003834C8);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v13, &qword_100423FF8, &qword_1003834C8);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  v23 = v33;
  sub_10000A0A4(a1 + v22, v33, &qword_100424040, &qword_100383510);
  swift_beginAccess();
  sub_10000AD64(v23, v1 + v15, &qword_100424040, &qword_100383510);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  v25 = v34;
  sub_10000A0A4(a1 + v24, v34, &qword_100424048, &qword_100383518);
  v26 = v31;
  swift_beginAccess();
  sub_10000AD64(v25, v1 + v26, &qword_100424048, &qword_100383518);
  swift_endAccess();
  v27 = a1 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  swift_beginAccess();
  LODWORD(v13) = *v27;
  LOBYTE(v27) = *(v27 + 4);
  swift_beginAccess();
  *v19 = v13;
  *(v19 + 4) = v27;
  v28 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v28);
  v29 = v32;
  swift_beginAccess();
  *(v1 + v29) = a1;
  return v1;
}

uint64_t sub_1002486DC(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 36) = 1;
  *(v1 + 44) = 1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 60) = 1;
  *(v1 + 68) = 1;
  *(v1 + 72) = 0;
  *(v1 + 76) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 84) = 1;
  *(v1 + 92) = 1;
  *(v1 + 96) = 0;
  *(v1 + 100) = 1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 108) = 1;
  *(v1 + 116) = 1;
  *(v1 + 120) = 0;
  *(v1 + 124) = 1;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 132) = 1;
  *(v1 + 140) = 1;
  *(v1 + 144) = 0;
  *(v1 + 148) = 1;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 156) = 1;
  *(v1 + 164) = 1;
  *(v1 + 168) = 0;
  *(v1 + 172) = 1;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 180) = 1;
  *(v1 + 188) = 1;
  *(v1 + 192) = 0;
  *(v1 + 196) = 1;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 204) = 1;
  *(v1 + 212) = 1;
  *(v1 + 216) = 0;
  *(v1 + 220) = 1;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 228) = 1;
  *(v1 + 236) = 1;
  *(v1 + 244) = 1;
  *(v1 + 252) = 1;
  *(v1 + 260) = 1;
  *(v1 + 268) = 1;
  *(v1 + 276) = 1;
  *(v1 + 284) = 1;
  *(v1 + 240) = 0;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 20) = v4;
  swift_beginAccess();
  v5 = *(a1 + 24);
  LOBYTE(v3) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v5;
  *(v1 + 28) = v3;
  swift_beginAccess();
  v6 = *(a1 + 32);
  LOBYTE(v5) = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v6;
  *(v1 + 36) = v5;
  swift_beginAccess();
  v7 = *(a1 + 40);
  LOBYTE(v6) = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 40) = v7;
  *(v1 + 44) = v6;
  swift_beginAccess();
  v8 = *(a1 + 48);
  LOBYTE(v7) = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 48) = v8;
  *(v1 + 52) = v7;
  swift_beginAccess();
  v9 = *(a1 + 56);
  LOBYTE(v8) = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 56) = v9;
  *(v1 + 60) = v8;
  swift_beginAccess();
  v10 = *(a1 + 64);
  LOBYTE(v9) = *(a1 + 68);
  swift_beginAccess();
  *(v1 + 64) = v10;
  *(v1 + 68) = v9;
  swift_beginAccess();
  v11 = *(a1 + 72);
  LOBYTE(v9) = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 72) = v11;
  *(v1 + 76) = v9;
  swift_beginAccess();
  v12 = *(a1 + 80);
  LOBYTE(v9) = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 80) = v12;
  *(v1 + 84) = v9;
  swift_beginAccess();
  v13 = *(a1 + 88);
  LOBYTE(v9) = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 88) = v13;
  *(v1 + 92) = v9;
  swift_beginAccess();
  v14 = *(a1 + 96);
  LOBYTE(v9) = *(a1 + 100);
  swift_beginAccess();
  *(v1 + 96) = v14;
  *(v1 + 100) = v9;
  swift_beginAccess();
  v15 = *(a1 + 104);
  LOBYTE(v9) = *(a1 + 108);
  swift_beginAccess();
  *(v1 + 104) = v15;
  *(v1 + 108) = v9;
  swift_beginAccess();
  v16 = *(a1 + 112);
  LOBYTE(v9) = *(a1 + 116);
  swift_beginAccess();
  *(v1 + 112) = v16;
  *(v1 + 116) = v9;
  swift_beginAccess();
  v17 = *(a1 + 120);
  LOBYTE(v9) = *(a1 + 124);
  swift_beginAccess();
  *(v1 + 120) = v17;
  *(v1 + 124) = v9;
  swift_beginAccess();
  v18 = *(a1 + 128);
  LOBYTE(v9) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 128) = v18;
  *(v1 + 132) = v9;
  swift_beginAccess();
  v19 = *(a1 + 136);
  LOBYTE(v9) = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 136) = v19;
  *(v1 + 140) = v9;
  swift_beginAccess();
  v20 = *(a1 + 144);
  LOBYTE(v9) = *(a1 + 148);
  swift_beginAccess();
  *(v1 + 144) = v20;
  *(v1 + 148) = v9;
  swift_beginAccess();
  v21 = *(a1 + 152);
  LOBYTE(v9) = *(a1 + 156);
  swift_beginAccess();
  *(v1 + 152) = v21;
  *(v1 + 156) = v9;
  swift_beginAccess();
  v22 = *(a1 + 160);
  LOBYTE(v9) = *(a1 + 164);
  swift_beginAccess();
  *(v1 + 160) = v22;
  *(v1 + 164) = v9;
  swift_beginAccess();
  v23 = *(a1 + 168);
  LOBYTE(v9) = *(a1 + 172);
  swift_beginAccess();
  *(v1 + 168) = v23;
  *(v1 + 172) = v9;
  swift_beginAccess();
  v24 = *(a1 + 176);
  LOBYTE(v9) = *(a1 + 180);
  swift_beginAccess();
  *(v1 + 176) = v24;
  *(v1 + 180) = v9;
  swift_beginAccess();
  v25 = *(a1 + 184);
  LOBYTE(v9) = *(a1 + 188);
  swift_beginAccess();
  *(v1 + 184) = v25;
  *(v1 + 188) = v9;
  swift_beginAccess();
  v26 = *(a1 + 192);
  LOBYTE(v9) = *(a1 + 196);
  swift_beginAccess();
  *(v1 + 192) = v26;
  *(v1 + 196) = v9;
  swift_beginAccess();
  v27 = *(a1 + 200);
  LOBYTE(v9) = *(a1 + 204);
  swift_beginAccess();
  *(v1 + 200) = v27;
  *(v1 + 204) = v9;
  swift_beginAccess();
  v28 = *(a1 + 208);
  LOBYTE(v9) = *(a1 + 212);
  swift_beginAccess();
  *(v1 + 208) = v28;
  *(v1 + 212) = v9;
  swift_beginAccess();
  v29 = *(a1 + 216);
  LOBYTE(v9) = *(a1 + 220);
  swift_beginAccess();
  *(v1 + 216) = v29;
  *(v1 + 220) = v9;
  swift_beginAccess();
  v30 = *(a1 + 224);
  LOBYTE(v9) = *(a1 + 228);
  swift_beginAccess();
  *(v1 + 224) = v30;
  *(v1 + 228) = v9;
  swift_beginAccess();
  v31 = *(a1 + 232);
  LOBYTE(v9) = *(a1 + 236);
  swift_beginAccess();
  *(v1 + 232) = v31;
  *(v1 + 236) = v9;
  swift_beginAccess();
  v32 = *(a1 + 240);
  LOBYTE(v9) = *(a1 + 244);
  swift_beginAccess();
  *(v1 + 240) = v32;
  *(v1 + 244) = v9;
  swift_beginAccess();
  v33 = *(a1 + 248);
  LOBYTE(v9) = *(a1 + 252);
  swift_beginAccess();
  *(v1 + 248) = v33;
  *(v1 + 252) = v9;
  swift_beginAccess();
  v34 = *(a1 + 256);
  LOBYTE(v9) = *(a1 + 260);
  swift_beginAccess();
  *(v1 + 256) = v34;
  *(v1 + 260) = v9;
  swift_beginAccess();
  v35 = *(a1 + 264);
  LOBYTE(v9) = *(a1 + 268);
  swift_beginAccess();
  *(v1 + 264) = v35;
  *(v1 + 268) = v9;
  swift_beginAccess();
  v36 = *(a1 + 272);
  LOBYTE(v9) = *(a1 + 276);
  swift_beginAccess();
  *(v1 + 272) = v36;
  *(v1 + 276) = v9;
  swift_beginAccess();
  v37 = *(a1 + 280);
  LOBYTE(a1) = *(a1 + 284);
  swift_beginAccess();
  *(v1 + 280) = v37;
  *(v1 + 284) = a1;
  return v1;
}

uint64_t sub_1002492C0(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_1004240D0, &qword_1003835A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v5;
  v6 = sub_100024A2C(&qword_100424040, &qword_100383510);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v34 = &v32 - v8;
  v9 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v16 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  v18 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v32 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction) = 4;
  v33 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  swift_beginAccess();
  v19 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v19;
  swift_beginAccess();
  v20 = *(a1 + 20);
  v21 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v20;
  *(v1 + 24) = v21;
  v22 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v22, v12, &qword_100423FF8, &qword_1003834C8);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v13, &qword_100423FF8, &qword_1003834C8);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  v24 = v34;
  sub_10000A0A4(a1 + v23, v34, &qword_100424040, &qword_100383510);
  swift_beginAccess();
  sub_10000AD64(v24, v1 + v15, &qword_100424040, &qword_100383510);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  v26 = v35;
  sub_10000A0A4(a1 + v25, v35, &qword_1004240D0, &qword_1003835A0);
  swift_beginAccess();
  sub_10000AD64(v26, v1 + v17, &qword_1004240D0, &qword_1003835A0);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + v27);
  v28 = v32;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v29);
  v30 = v33;
  swift_beginAccess();
  *(v1 + v30) = a1;
  return v1;
}

uint64_t sub_100249750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024991C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v54 - v10;
  v12 = sub_100024A2C(&qword_10042AA28, &qword_100390D40);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v56 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v57 = a1;
  v17 = v56[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_100423F90, &qword_100383460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_100423F90, &qword_100383460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_100423F90, &qword_100383460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v55;
      sub_1002463C0(&v16[v18], v55, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      v23 = sub_100255534(v11, v22, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v22, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_1000059A8(v16, &qword_100423F90, &qword_100383460);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_6:
    sub_1000059A8(v16, &qword_10042AA28, &qword_100390D40);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v16, &qword_100423F90, &qword_100383460);
LABEL_10:
  v24 = v56[6];
  v25 = (v57 + v24);
  v26 = *(v57 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      goto LABEL_7;
    }
  }

  v29 = v56[7];
  v30 = (v57 + v29);
  v31 = *(v57 + v29 + 4);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 4);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      goto LABEL_7;
    }
  }

  v34 = v56[8];
  v35 = (v57 + v34);
  v36 = *(v57 + v34 + 4);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 4);
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      goto LABEL_7;
    }
  }

  v39 = v56[9];
  v40 = (v57 + v39);
  v41 = *(v57 + v39 + 4);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 4);
  if (v41)
  {
    if (!v43)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      goto LABEL_7;
    }
  }

  v44 = v56[10];
  v45 = (v57 + v44);
  v46 = *(v57 + v44 + 4);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 4);
  if (v46)
  {
    if (!v48)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if (v48)
    {
      goto LABEL_7;
    }
  }

  v49 = v56[11];
  v50 = (v57 + v49);
  v51 = *(v57 + v49 + 4);
  v52 = (a2 + v49);
  v53 = *(a2 + v49 + 4);
  if (v51)
  {
    if (v53)
    {
LABEL_46:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v50 != *v52)
    {
      LOBYTE(v53) = 1;
    }

    if ((v53 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}