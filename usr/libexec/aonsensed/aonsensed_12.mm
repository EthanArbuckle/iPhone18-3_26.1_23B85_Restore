uint64_t sub_100130478@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 3;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 5;
  v7 = a2 + v6;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_100130508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A40, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001305A8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D9F8, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100130614()
{
  sub_100015EDC(&qword_10041D9F8, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);

  return Message.hash(into:)();
}

uint64_t sub_100130720()
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
      v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0) + 20);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t sub_1001307AC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
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

uint64_t sub_100130890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 20)) = 2;
  return result;
}

uint64_t sub_1001308F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A38, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100130994(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA10, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100130A00()
{
  sub_100015EDC(&qword_10041DA10, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl);

  return Message.hash(into:)();
}

uint64_t sub_100130AA4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433560);
  sub_100005DF0(v0, qword_100433560);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10036D7D0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "confidence";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mounted_state";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "mounted_confidence";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_standing";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "tilt";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "timestamp_DEPRECATED";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_vehicle_connected";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "exit_state";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "est_exit_time";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "start_time_DEPRECATED";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "raw_type";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "raw_confidence";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "timestamp";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "start_time";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "vehicular_confidence";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100131030()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 67306568;
  *(v3 + 20) = 2;
  *(v3 + 24) = 0;
  *(v3 + 28) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 41) = 1026;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;
  *(v3 + 73) = 1096;
  v4 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  result = (v6)(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence) = 6;
  qword_100443E00 = v3;
  return result;
}

uint64_t sub_100131168()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1001745A0(v6);

    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 12:
          swift_beginAccess();
          sub_100198BF8();
          goto LABEL_16;
        case 2:
        case 4:
        case 13:
          swift_beginAccess();
          sub_100198418();
          goto LABEL_16;
        case 3:
          swift_beginAccess();
          sub_10019846C();
          goto LABEL_16;
        case 5:
        case 8:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 6:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_17;
        case 7:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 9:
          swift_beginAccess();
          sub_1001983C4();
          goto LABEL_16;
        case 14:
        case 15:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_17;
        case 16:
          swift_beginAccess();
          sub_100198370();
LABEL_16:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_17:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100131564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 72)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100198BF8();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(v9 + 17) != 4)
  {
    sub_100198418();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 18) != 3)
  {
    sub_10019846C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 19) != 4)
  {
    sub_100198418();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 20) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 28) & 1) == 0)
  {
    v11 = *(v9 + 24);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_1001318A8(v9);
  sub_10013192C(v9);
  sub_1001319B4(v9);
  sub_100131A50(v9);
  sub_100131AD4(v9);
  sub_100131B58(v9);
  sub_100131BF4(v9);
  sub_100131C90(v9, a1, a2, a3);
  sub_100131EB8(v9, a1, a2, a3);
  sub_1001320E0(v9);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001318A8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(a1 + 32);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013192C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 41) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001319B4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 42) != 4)
  {
    sub_1001983C4();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100131A50(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 48);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100131AD4(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 72) & 1) == 0)
  {
    v3 = *(a1 + 64);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100131B58(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 73) != 72)
  {
    sub_100198BF8();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100131BF4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 74) != 4)
  {
    sub_100198418();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100131C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100131EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_1001320E0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  result = swift_beginAccess();
  if (*(a1 + v2) != 6)
  {
    v4 = *(a1 + v2);
    sub_100198370();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

BOOL sub_1001321C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v80 = v4;
  v81 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v78 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v79 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  v14 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v75 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v75 - v23;
  __chkstk_darwin(v22);
  v26 = &v75 - v25;
  swift_beginAccess();
  v27 = *(a1 + 16);
  swift_beginAccess();
  v28 = *(a2 + 16);
  if (v27 == 72)
  {
    if (v28 != 72)
    {
      return 0;
    }
  }

  else if (v28 == 72 || qword_1003830C8[v27] != qword_1003830C8[v28])
  {
    return 0;
  }

  swift_beginAccess();
  v29 = *(a1 + 17);
  swift_beginAccess();
  v30 = *(a2 + 17);
  if (v29 == 4)
  {
    if (v30 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v30 == 4 || v29 != v30)
    {
      return result;
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 18);
  swift_beginAccess();
  v33 = *(a2 + 18);
  if (v32 == 3)
  {
    if (v33 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v33 == 3 || v32 != v33)
    {
      return result;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 19);
  swift_beginAccess();
  v35 = *(a2 + 19);
  if (v34 == 4)
  {
    if (v35 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v35 == 4 || v34 != v35)
    {
      return result;
    }
  }

  swift_beginAccess();
  v36 = *(a1 + 20);
  swift_beginAccess();
  v37 = *(a2 + 20);
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      return 0;
    }
  }

  else if (v37 == 2 || ((v36 ^ v37) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 24);
  v39 = *(a1 + 28);
  v77 = (a2 + 24);
  swift_beginAccess();
  v40 = *(a2 + 28);
  if (v39)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v38 != *v77)
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 32);
  v42 = *(a1 + 40);
  swift_beginAccess();
  v43 = *(a2 + 40);
  if (v42)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v41 != *(a2 + 32))
    {
      v43 = 1;
    }

    if (v43)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v44 = *(a1 + 41);
  swift_beginAccess();
  v45 = *(a2 + 41);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else if (v45 == 2 || ((v44 ^ v45) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v46 = *(a1 + 42);
  swift_beginAccess();
  v47 = *(a2 + 42);
  if (v46 == 4)
  {
    if (v47 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v47 == 4 || v46 != v47)
    {
      return result;
    }
  }

  swift_beginAccess();
  v48 = *(a1 + 48);
  v49 = *(a1 + 56);
  swift_beginAccess();
  v50 = *(a2 + 56);
  if (v49)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v48 != *(a2 + 48))
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v51 = *(a1 + 64);
  v52 = *(a1 + 72);
  swift_beginAccess();
  v53 = *(a2 + 72);
  if (v52)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v51 != *(a2 + 64))
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v54 = *(a1 + 73);
  swift_beginAccess();
  v55 = *(a2 + 73);
  if (v54 == 72)
  {
    if (v55 != 72)
    {
      return 0;
    }
  }

  else if (v55 == 72 || qword_1003830C8[v54] != qword_1003830C8[v55])
  {
    return 0;
  }

  swift_beginAccess();
  v56 = *(a1 + 74);
  swift_beginAccess();
  v57 = *(a2 + 74);
  if (v56 == 4)
  {
    if (v57 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v57 == 4 || v56 != v57)
    {
      return result;
    }
  }

  v58 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v58, v26, &qword_10041CA30, &qword_100374460);
  v77 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v59 = *(v8 + 48);
  sub_10000A0A4(v26, v13, &qword_10041CA30, &qword_100374460);
  v76 = v59;
  sub_10000A0A4(v77 + a2, &v13[v59], &qword_10041CA30, &qword_100374460);
  v60 = *(v81 + 48);
  v81 += 48;
  v77 = v60;
  if ((v60)(v13, 1, v80) == 1)
  {

    sub_1000059A8(v26, &qword_10041CA30, &qword_100374460);
    if ((v77)(&v13[v76], 1, v80) == 1)
    {
      sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
      goto LABEL_77;
    }

LABEL_75:
    v61 = v13;
LABEL_83:
    sub_1000059A8(v61, &qword_100423CE0, &qword_100393E90);
    goto LABEL_84;
  }

  sub_10000A0A4(v13, v24, &qword_10041CA30, &qword_100374460);
  if ((v77)(&v13[v76], 1, v80) == 1)
  {

    sub_1000059A8(v26, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_75;
  }

  v62 = v78;
  sub_1000112AC(&v13[v76], v78, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  LODWORD(v76) = sub_1001853C4(v24, v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v26, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v13, &qword_10041CA30, &qword_100374460);
  if ((v76 & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_77:
  v63 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v63, v21, &qword_10041CA30, &qword_100374460);
  v64 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v65 = *(v8 + 48);
  v66 = v79;
  sub_10000A0A4(v21, v79, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v64, v66 + v65, &qword_10041CA30, &qword_100374460);
  if ((v77)(v66, 1, v80) != 1)
  {
    v67 = v79;
    sub_10000A0A4(v79, v18, &qword_10041CA30, &qword_100374460);
    if ((v77)(v67 + v65, 1, v80) == 1)
    {
      sub_1000059A8(v21, &qword_10041CA30, &qword_100374460);
      sub_100015F24(v18, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      goto LABEL_82;
    }

    v68 = v78;
    v69 = v79;
    sub_1000112AC(v79 + v65, v78, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v70 = sub_1001853C4(v18, v68, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_100015F24(v68, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_1000059A8(v21, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v18, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_1000059A8(v69, &qword_10041CA30, &qword_100374460);
    if (v70)
    {
      goto LABEL_88;
    }

LABEL_84:

    return 0;
  }

  sub_1000059A8(v21, &qword_10041CA30, &qword_100374460);
  if ((v77)(v79 + v65, 1, v80) != 1)
  {
LABEL_82:
    v61 = v79;
    goto LABEL_83;
  }

  sub_1000059A8(v79, &qword_10041CA30, &qword_100374460);
LABEL_88:
  v71 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v72 = *(a1 + v71);

  v73 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v74 = *(a2 + v73);

  if (v72 == 6)
  {
    return v74 == 6;
  }

  result = 0;
  if (v74 != 6 && v72 == v74)
  {
    return 1;
  }

  return result;
}

uint64_t sub_100132E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A30, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100132ECC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA28, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100132F38()
{
  sub_100015EDC(&qword_10041DA28, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);

  return Message.hash(into:)();
}

uint64_t sub_100132FB4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433578);
  sub_100005DF0(v0, qword_100433578);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MO_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MO_NOT_MOUNTED";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "MO_MOUNTED";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100133230()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433590);
  sub_100005DF0(v0, qword_100433590);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "C_UNKNOWN";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "C_LOW";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "C_MEDIUM";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "C_HIGH";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001334E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004335A8);
  sub_100005DF0(v0, qword_1004335A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VE_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VE_NO_DETECTION";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VE_PREHEAT";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VE_DETECTED";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100133790()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004335C0);
  sub_100005DF0(v0, qword_1004335C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VC_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VC_NONE";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VC_LOW";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VC_HIGH_NOT_PED_ARM_CONSTRAINED";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "VC_HIGH_NOT_PED";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VC_HIGH_NOT_CYCLE";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100133AEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004335D8);
  sub_100005DF0(v0, qword_1004335D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "activity";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100133D54()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v7 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity;
    v7 = &qword_10041DA28;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100133F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041CA90, &qword_1003744C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA90, &qword_1003744C0);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  sub_100015EDC(&qword_10041DA28, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
}

uint64_t sub_1001341C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A28, type metadata accessor for CLP_LogEntry_PrivateData_MotionState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100134260(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA40, type metadata accessor for CLP_LogEntry_PrivateData_MotionState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001342CC()
{
  sub_100015EDC(&qword_10041DA40, type metadata accessor for CLP_LogEntry_PrivateData_MotionState);

  return Message.hash(into:)();
}

uint64_t sub_100134370()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004335F0);
  sub_100005DF0(v0, qword_1004335F0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activity_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_time_DEPRECATED";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start_time";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "predicted_workout_type";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100134600()
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
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 28);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 32);
LABEL_15:
          sub_100198BF8();
          v0 = v5;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v5 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 20);
          goto LABEL_15;
        }

        if (result == 2)
        {
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 24);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100134790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 72)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = *(v5 + *(result + 20));
    sub_100198BF8();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v11 = v5 + *(v10 + 24);
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_1001348C8(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 32)) != 72)
  {
    v14 = *(v5 + *(v10 + 32));
    sub_100198BF8();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001348C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100134B30@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 72;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  *(a2 + a1[8]) = 72;
  return result;
}

uint64_t sub_100134BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A20, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100134C98(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA58, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100134D04()
{
  sub_100015EDC(&qword_10041DA58, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);

  return Message.hash(into:)();
}

uint64_t sub_100134E08()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v7 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate;
    v7 = &qword_10041DA58;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100134FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  result = sub_100168420(v10, a1, a2, a3, a4);
  if (!v7)
  {
    v15 = (v10 + *(a5(0) + 24));
    if ((v15[1] & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    a6(v10, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001350B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA98, &qword_1003744C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041CA98, &qword_1003744C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA98, &qword_1003744C8);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  sub_100015EDC(&qword_10041DA58, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
}

uint64_t sub_100135338@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = a1[5];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = a1[6];
  v9 = a1[7];
  v10 = a3 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a3 + v9, 1, 1, v11);
}

uint64_t sub_100135434(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A18, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001354D4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA70, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100135540()
{
  sub_100015EDC(&qword_10041DA70, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver);

  return Message.hash(into:)();
}

uint64_t sub_1001355E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433620);
  sub_100005DF0(v0, qword_100433620);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "session_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "overview_id";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "workout_type";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "workout_location_type";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "workout_mode";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001358C0()
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
          v6 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 24);
        }

        v0 = v6;
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 28);
            sub_10019831C();
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            v3 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 32);
            sub_1001982C8();
            goto LABEL_5;
          case 5:
            v3 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 36);
            sub_100198274();
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100135A38()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + v3[6]);
  if (v6[1])
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v0 + v3[7]) != 67)
  {
    v8 = *(v0 + v3[7]);
    sub_10019831C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 5)
  {
    v9 = *(v0 + v3[8]);
    sub_1001982C8();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_100135BA8(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100135BA8(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  if (*(a1 + *(result + 36)) != 3)
  {
    v3 = *(a1 + *(result + 36));
    sub_100198274();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100135C80@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 67;
  *(a2 + v8) = 5;
  *(a2 + a1[9]) = 3;
  return result;
}

uint64_t sub_100135D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A10, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100135DAC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA88, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100135E18()
{
  sub_100015EDC(&qword_10041DA88, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);

  return Message.hash(into:)();
}

uint64_t sub_100135E98()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433638);
  sub_100005DF0(v0, qword_100433638);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_100374400;
  v4 = v137 + v3;
  v5 = v137 + v3 + v1[14];
  *(v137 + v3) = 0;
  *v5 = "WT_PROTOBUF_DEFAULT";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v137 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "WT_NoWorkout";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v137 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "WT_Walking";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v137 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "WT_Running";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v137 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "WT_Cycling";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v137 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "WT_OutdoorCycling";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v137 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "WT_IndoorCycling";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v137 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "WT_Yoga";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v137 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "WT_Dancing";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v137 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "WT_CrossTraining";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v137 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "WT_Elliptical";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v137 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "WT_Climbing";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v137 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "WT_StairClimbing";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  v31 = (v137 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "WT_Rowing";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v137 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "WT_ResistanceTraining";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v8();
  v35 = (v137 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "WT_GenericWorkout";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v8();
  v37 = v137 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "WT_OutdoorWalking";
  *(v37 + 8) = 17;
  *(v37 + 16) = 2;
  v8();
  v38 = (v137 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "WT_IndoorWalking";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v137 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "WT_OutdoorRunning";
  *(v41 + 1) = 17;
  v41[16] = 2;
  v8();
  v42 = (v137 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "WT_IndoorRunning";
  *(v43 + 1) = 16;
  v43[16] = 2;
  v8();
  v44 = (v137 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "WT_Swimming";
  *(v45 + 1) = 11;
  v45[16] = 2;
  v8();
  v46 = (v137 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "WT_OutdoorWheelchairWalk";
  *(v47 + 1) = 24;
  v47[16] = 2;
  v8();
  v48 = (v137 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "WT_OutdoorWheelchairRun";
  *(v49 + 1) = 23;
  v49[16] = 2;
  v8();
  v50 = (v137 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "WT_Calisthenics";
  *(v51 + 1) = 15;
  v51[16] = 2;
  v8();
  v52 = (v137 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "WT_DownhillSkiing";
  *(v53 + 1) = 17;
  v53[16] = 2;
  v8();
  v54 = (v137 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "WT_Hiking";
  *(v55 + 1) = 9;
  v55[16] = 2;
  v8();
  v56 = (v137 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "WT_UndeterminedWorkout";
  *(v57 + 1) = 22;
  v57[16] = 2;
  v8();
  v58 = (v137 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "WT_Unknown";
  *(v59 + 1) = 10;
  v59[16] = 2;
  v8();
  v60 = (v137 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "WT_Golfing";
  *(v61 + 1) = 10;
  v61[16] = 2;
  v8();
  v62 = (v137 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "WT_FunctionalStrength";
  *(v63 + 1) = 21;
  v63[16] = 2;
  v8();
  v64 = (v137 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "WT_CoolDown";
  *(v65 + 1) = 11;
  v65[16] = 2;
  v8();
  v66 = (v137 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "WT_CoreTraining";
  *(v67 + 1) = 15;
  v67[16] = 2;
  v8();
  v68 = v137 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "WT_TaiChi";
  *(v68 + 8) = 9;
  *(v68 + 16) = 2;
  v8();
  v69 = (v137 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "WT_Pilates";
  *(v70 + 1) = 10;
  v70[16] = 2;
  v8();
  v71 = (v137 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "WT_MultiSportTransition";
  *(v72 + 1) = 23;
  v72[16] = 2;
  v8();
  v73 = (v137 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "WT_Kickboxing";
  *(v74 + 1) = 13;
  v74[16] = 2;
  v8();
  v75 = (v137 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "WT_OutdoorRowing";
  *(v76 + 1) = 16;
  v76[16] = 2;
  v8();
  v77 = (v137 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "WT_CrossCountrySkiing";
  *(v78 + 1) = 21;
  v78[16] = 2;
  v8();
  v79 = (v137 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "WT_Snowboarding";
  *(v80 + 1) = 15;
  v80[16] = 2;
  v8();
  v81 = (v137 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "WT_PaddleSports";
  *(v82 + 1) = 15;
  v82[16] = 2;
  v8();
  v83 = (v137 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "WT_OutdoorSoccer";
  *(v84 + 1) = 16;
  v84[16] = 2;
  v8();
  v85 = (v137 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "WT_IndoorSoccer";
  *(v86 + 1) = 15;
  v86[16] = 2;
  v8();
  v87 = (v137 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "WT_AustralianFootball";
  *(v88 + 1) = 21;
  v88[16] = 2;
  v8();
  v89 = (v137 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "WT_AmericanFootball";
  *(v90 + 1) = 19;
  v90[16] = 2;
  v8();
  v91 = (v137 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "WT_DiscSports";
  *(v92 + 1) = 13;
  v92[16] = 2;
  v8();
  v93 = (v137 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "WT_Rugby";
  *(v94 + 1) = 8;
  v94[16] = 2;
  v8();
  v95 = (v137 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "WT_Lacrosse";
  *(v96 + 1) = 11;
  v96[16] = 2;
  v8();
  v97 = (v137 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "WT_OutdoorSkatingSports";
  *(v98 + 1) = 23;
  v98[16] = 2;
  v8();
  v99 = (v137 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "WT_IndoorSkatingSports";
  *(v100 + 1) = 22;
  v100[16] = 2;
  v8();
  v101 = (v137 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "WT_IndoorHockey";
  *(v102 + 1) = 15;
  v102[16] = 2;
  v8();
  v103 = (v137 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "WT_OutdoorHockey";
  *(v104 + 1) = 16;
  v104[16] = 2;
  v8();
  v105 = (v137 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "WT_Basketball";
  *(v106 + 1) = 13;
  v106[16] = 2;
  v8();
  v107 = (v137 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "WT_Tennis";
  *(v108 + 1) = 9;
  v108[16] = 2;
  v8();
  v109 = (v137 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "WT_Badminton";
  *(v110 + 1) = 12;
  v110[16] = 2;
  v8();
  v111 = (v137 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "WT_Racquetball";
  *(v112 + 1) = 14;
  v112[16] = 2;
  v8();
  v113 = (v137 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "WT_Pickleball";
  *(v114 + 1) = 13;
  v114[16] = 2;
  v8();
  v115 = (v137 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "WT_Volleyball";
  *(v116 + 1) = 13;
  v116[16] = 2;
  v8();
  v117 = (v137 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "WT_Squash";
  *(v118 + 1) = 9;
  v118[16] = 2;
  v8();
  v119 = (v137 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "WT_Handball";
  *(v120 + 1) = 11;
  v120[16] = 2;
  v8();
  v121 = (v137 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "WT_TrackAndField";
  *(v122 + 1) = 16;
  v122[16] = 2;
  v8();
  v123 = (v137 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "WT_Softball";
  *(v124 + 1) = 11;
  v124[16] = 2;
  v8();
  v125 = (v137 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "WT_Baseball";
  *(v126 + 1) = 11;
  v126[16] = 2;
  v8();
  v127 = (v137 + v3 + 62 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "WT_Cricket";
  *(v128 + 1) = 10;
  v128[16] = 2;
  v8();
  v129 = (v137 + v3 + 63 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "WT_TableTennis";
  *(v130 + 1) = 14;
  v130[16] = 2;
  v8();
  v131 = v137 + v3 + (v2 << 6) + v1[14];
  *(v4 + (v2 << 6)) = 64;
  *v131 = "WT_JumpRope";
  *(v131 + 8) = 11;
  *(v131 + 16) = 2;
  v8();
  v132 = (v137 + v3 + 65 * v2);
  v133 = v132 + v1[14];
  *v132 = 65;
  *v133 = "WT_Boxing";
  *(v133 + 1) = 9;
  v133[16] = 2;
  v8();
  v134 = (v137 + v3 + 66 * v2);
  v135 = v134 + v1[14];
  *v134 = 66;
  *v135 = "WT_StepTraining";
  *(v135 + 1) = 15;
  v135[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100136FF4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433650);
  sub_100005DF0(v0, qword_100433650);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WLT_PROTOBUF_DEFAULT";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WLT_Unknown";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WLT_Indoor";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WLT_Outdoor";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "WLT_Tbd";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001372F0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433668);
  sub_100005DF0(v0, qword_100433668);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "WM_PROTOBUF_DEFAULT";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WM_NORMAL";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "WM_TYPE_2";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100137590()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433680);
  sub_100005DF0(v0, qword_100433680);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "start_time";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "end_time";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "event_type";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "event_time";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "workout_settings";
  *(v14 + 8) = 16;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100137868()
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
          v4 = v0;
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v4 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 24);
        }
      }

      else
      {
        if (result == 3)
        {
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 28);
          sub_100198220();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result != 4)
        {
          if (result != 5)
          {
            goto LABEL_5;
          }

          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
          type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
          v6 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings;
          v7 = &qword_10041DA88;
          goto LABEL_18;
        }

        v4 = v0;
        v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 32);
      }

      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
      v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
      v7 = &qword_10041C7B8;
LABEL_18:
      sub_100015EDC(v7, v6);
      v0 = v4;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100137A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  if (!v4)
  {
    sub_100137B68(v5, a1, a2, a3);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
    if (*(v5 + *(v10 + 28)) != 19)
    {
      v11 = *(v5 + *(v10 + 28));
      sub_100198220();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_100151A8C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, 4);
    sub_100137D84(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100137B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100137D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  sub_10000A0A4(a1 + *(v14 + 36), v8, &qword_10041CAA0, &qword_1003744D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAA0, &qword_1003744D0);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  sub_100015EDC(&qword_10041DA88, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
}

uint64_t sub_100137FEC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[6], 1, 1, v5);
  v7 = a1[8];
  *(a2 + a1[7]) = 19;
  v6(a2 + v7, 1, 1, v5);
  v8 = a1[9];
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_100138134(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A08, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001381D4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DAA0, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100138240()
{
  sub_100015EDC(&qword_10041DAA0, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);

  return Message.hash(into:)();
}

uint64_t sub_1001382BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433698);
  sub_100005DF0(v0, qword_100433698);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100374410;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "ET_PROTOBUF_DEFAULT";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ET_WorkoutDidStart";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ET_WorkoutDidStop";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ET_WorkoutWillPause";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ET_WorkoutWillResume";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ET_WorkoutSuggestedStop";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ET_WorkoutPredictionStartDidMute";
  *(v19 + 1) = 32;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ET_WorkoutLocationUpdate";
  *(v21 + 1) = 24;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ET_WorkoutPredictedWorkoutDetected";
  *(v22 + 8) = 34;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ET_WorkoutPredictedWorkoutLabelUpdate";
  *(v24 + 1) = 37;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ET_WorkoutPredictedWorkoutEnded";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ET_WorkoutShouldAlertUserForPredictedWorkout";
  *(v28 + 1) = 44;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ET_WorkoutRetractStopAlert";
  *(v30 + 1) = 26;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ET_WorkoutSessionDidBegin";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ET_WorkoutSessionDidSetCurrentWorkoutType";
  *(v34 + 1) = 41;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ET_WorkoutSessionDidEnd";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ET_WorkoutSessionDidManuallyPause";
  *(v37 + 8) = 33;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "ET_WorkoutSessionDidManuallyResume";
  *(v39 + 1) = 34;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "ET_WorkoutSessionDetectedChangeInWorkoutType";
  *(v41 + 1) = 44;
  v41[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100138998()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  result = (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  qword_100443E80 = v3;
  return result;
}

uint64_t sub_100138A84(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - v9;
  v11 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v16, v10, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v10, v1 + v11, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v17 = (a1 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v18 = *v17;
  LOBYTE(v11) = *(v17 + 4);
  swift_beginAccess();
  *v13 = v18;
  *(v13 + 4) = v11;
  v19 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(a1 + v19, v6, &qword_10041CAA8, &qword_1003744D8);

  swift_beginAccess();
  sub_10000AD64(v6, v1 + v14, &qword_10041CAA8, &qword_1003744D8);
  swift_endAccess();
  return v1;
}

uint64_t sub_100138D54(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000059A8(v4 + *a1, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v4 + *a2, a3, a4);
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 52);

  return _swift_deallocClassInstance(v4, v8, v9);
}

uint64_t sub_100138DF4()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100138A84(v6);
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_7;
      }

      if (result == 1)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v15 = &qword_10041C7B8;
        goto LABEL_15;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
    v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent;
    v15 = &qword_10041DAA0;
LABEL_15:
    sub_100015EDC(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10013906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100139294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAA8, &qword_1003744D8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAA8, &qword_1003744D8);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  sub_100015EDC(&qword_10041DAA0, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
}

BOOL sub_100139500(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v58 = *(v59 - 8);
  v3 = *(v58 + 64);
  __chkstk_darwin(v59);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100024A2C(&qword_100423DA8, &qword_100383010);
  v5 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v60 = &v55 - v6;
  v7 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v55 - v11;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  v21 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v64 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v55 - v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v28 = a1 + v27;
  v29 = v65;
  sub_10000A0A4(v28, v26, &qword_10041CA30, &qword_100374460);
  v30 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v31 = *(v17 + 56);
  sub_10000A0A4(v26, v20, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v29 + v30, &v20[v31], &qword_10041CA30, &qword_100374460);
  v32 = *(v13 + 48);
  if (v32(v20, 1, v12) == 1)
  {

    sub_1000059A8(v26, &qword_10041CA30, &qword_100374460);
    v33 = v32(&v20[v31], 1, v12);
    v34 = a1;
    if (v33 == 1)
    {
      sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    sub_1000059A8(v20, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  v35 = a1;
  v36 = v64;
  sub_10000A0A4(v20, v64, &qword_10041CA30, &qword_100374460);
  if (v32(&v20[v31], 1, v12) == 1)
  {

    sub_1000059A8(v26, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v36, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v38 = v61;
  sub_1000112AC(&v20[v31], v61, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v39 = sub_1001853C4(v36, v38, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v38, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v26, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v36, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v34 = v35;
  sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
  if ((v39 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v40 = (v34 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v41 = *v40;
  v42 = *(v40 + 4);
  v43 = v29 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v44 = *(v43 + 4);
  if ((v42 & 1) == 0)
  {
    v45 = v63;
    v46 = v62;
    if ((*(v43 + 4) & 1) == 0 && v41 == *v43)
    {
      goto LABEL_16;
    }

LABEL_7:

    return 0;
  }

  v45 = v63;
  v46 = v62;
  if ((*(v43 + 4) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v47 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(v34 + v47, v46, &qword_10041CAA8, &qword_1003744D8);
  v48 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  v49 = *(v57 + 48);
  v50 = v60;
  sub_10000A0A4(v46, v60, &qword_10041CAA8, &qword_1003744D8);
  sub_10000A0A4(v29 + v48, v50 + v49, &qword_10041CAA8, &qword_1003744D8);
  v51 = *(v58 + 48);
  v52 = v59;
  if (v51(v50, 1, v59) == 1)
  {

    sub_1000059A8(v46, &qword_10041CAA8, &qword_1003744D8);
    if (v51(v50 + v49, 1, v52) == 1)
    {
      sub_1000059A8(v50, &qword_10041CAA8, &qword_1003744D8);
      return 1;
    }

    goto LABEL_21;
  }

  sub_10000A0A4(v50, v45, &qword_10041CAA8, &qword_1003744D8);
  if (v51(v50 + v49, 1, v52) == 1)
  {

    sub_1000059A8(v46, &qword_10041CAA8, &qword_1003744D8);
    sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
LABEL_21:
    sub_1000059A8(v50, &qword_100423DA8, &qword_100383010);
    return 0;
  }

  v53 = v56;
  sub_1000112AC(v50 + v49, v56, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  v54 = sub_10017C968(v45, v53);

  sub_100015F24(v53, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  sub_1000059A8(v46, &qword_10041CAA8, &qword_1003744D8);
  sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  sub_1000059A8(v50, &qword_10041CAA8, &qword_1003744D8);
  return (v54 & 1) != 0;
}

uint64_t sub_100139E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A00, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100139EA0(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DAB8, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100139F0C()
{
  sub_100015EDC(&qword_10041DAB8, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator);

  return Message.hash(into:)();
}

uint64_t sub_100139FB0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004336C8);
  sub_100005DF0(v0, qword_1004336C8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start_time_cfat_sec";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "activity";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "is_historical_record";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013A214()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
          sub_100015EDC(&qword_10041DA28, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 20);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10013A364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
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

  sub_10013A43C(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10013A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CA90, &qword_1003744C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA90, &qword_1003744C0);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  sub_100015EDC(&qword_10041DA28, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
}

uint64_t sub_10013A6A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_10013A764(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239F8, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013A804(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DAD0, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013A870()
{
  sub_100015EDC(&qword_10041DAD0, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity);

  return Message.hash(into:)();
}

uint64_t sub_10013A914()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004336E0);
  sub_100005DF0(v0, qword_1004336E0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10036D7C0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "gender";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "height_m";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "weight_kg";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "vo2max";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "age";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "hrmin";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hrmax";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "hronset";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "pal";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "condition";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "run_vo2max";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013AD68()
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

      if (result <= 5)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v4 = v0;
            v13 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 28);
          }

          else
          {
            v4 = v0;
            if (result == 4)
            {
              v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 32);
            }

            else
            {
              v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 36);
            }
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v9 = v0;
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 20);
          sub_1001981CC();
LABEL_27:
          v0 = v9;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v4 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        if (result <= 8)
        {
          if (result == 6)
          {
            v4 = v0;
            v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 40);
          }

          else
          {
            v4 = v0;
            if (result == 7)
            {
              v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 44);
            }

            else
            {
              v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 48);
            }
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 9:
            v4 = v0;
            v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 52);
            goto LABEL_5;
          case 10:
            v9 = v0;
            v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 56);
            sub_100198178();
            goto LABEL_27;
          case 11:
            v4 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 60);
LABEL_5:
            v0 = v4;
            dispatch thunk of Decoder.decodeSingularFloatField(value:)();
            break;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10013AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 3)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v17 = *(v5 + *(result + 20));
    sub_1001981CC();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v11 = v5 + v10[6];
  if ((*(v11 + 4) & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v13 = v5 + v10[7];
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v15 = v5 + v10[8];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_10013B19C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_10001677C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_10015A9E4(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_10015AA60(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_10013B218(v5);
  sub_10013B290(v5);
  sub_10013B31C(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10013B19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013B218(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013B290(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  if (*(a1 + *(result + 56)) != 8)
  {
    v3 = *(a1 + *(result + 56));
    sub_100198178();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013B31C(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v3 = (a1 + *(result + 60));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013B3E0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 3;
  v6 = a2 + v5;
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
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1[14];
  v17 = a2 + a1[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  *(a2 + v16) = 8;
  v18 = a2 + a1[15];
  *v18 = 0;
  *(v18 + 4) = 1;
  return result;
}

uint64_t sub_10013B4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239F0, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013B570(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DAE8, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013B5DC()
{
  sub_100015EDC(&qword_10041DAE8, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);

  return Message.hash(into:)();
}

uint64_t sub_10013B658()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004336F8);
  sub_100005DF0(v0, qword_1004336F8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NG_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NG_MALE";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "NG_FEMALE";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013B8D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433710);
  sub_100005DF0(v0, qword_100433710);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D790;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UC_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UC_ABLE_BODIED";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UC_AMPUTATION";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UC_SPINA_BIFIDA";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "UC_SPINAL_CORD_INJURY_HIGH";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "UC_SPINAL_CORD_INJURY_MID";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "UC_SPINAL_CORD_INJURY_LOW";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "UC_OTHER";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013BD10()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v7 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics;
    v7 = &qword_10041DAE8;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10013BEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CAB0, &qword_1003744E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041CAB0, &qword_1003744E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAB0, &qword_1003744E0);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_100015EDC(&qword_10041DAE8, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
}

uint64_t sub_10013C17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239E8, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013C21C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB00, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013C288()
{
  sub_100015EDC(&qword_10041DB00, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry);

  return Message.hash(into:)();
}

uint64_t sub_10013C464(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239E0, type metadata accessor for CLP_LogEntry_PrivateData_Timer);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013C504(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB18, type metadata accessor for CLP_LogEntry_PrivateData_Timer);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013C570()
{
  sub_100015EDC(&qword_10041DB18, type metadata accessor for CLP_LogEntry_PrivateData_Timer);

  return Message.hash(into:)();
}

uint64_t sub_10013C614()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433758);
  sub_100005DF0(v0, qword_100433758);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicable_time";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ground_altitude_above_wgs84_m";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ground_altitude_above_wgs84_unc_m";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "undulation_m";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "slope_in_direction_of_travel";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "max_abs_slope";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "client";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013C968()
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
        if (result == 1)
        {
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else
        {
          if (result == 2)
          {
            v6 = v0;
            v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 24);
          }

          else
          {
            if (result != 3)
            {
              goto LABEL_6;
            }

            v6 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 28);
          }

          v0 = v6;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else
      {
        if (result <= 5)
        {
          v4 = v0;
          if (result == 4)
          {
            v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 32);
          }

          else
          {
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 36);
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v4 = v0;
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 40);
LABEL_5:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_6;
        }

        if (result == 7)
        {
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 44);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10013CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
    v11 = v5 + v10[6];
    if ((*(v11 + 8) & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v13 = v5 + v10[7];
    if ((*(v13 + 8) & 1) == 0)
    {
      v14 = *v13;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v15 = v5 + v10[8];
    if ((*(v15 + 4) & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    sub_10013B19C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
    sub_10001677C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
    sub_100144E04(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10013CD38@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_10013CE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239D8, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013CED4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB30, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013CF40()
{
  sub_100015EDC(&qword_10041DB30, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);

  return Message.hash(into:)();
}

uint64_t sub_10013CFE4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433770);
  sub_100005DF0(v0, qword_100433770);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10036D7E0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "applicable_time";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "latitude_deg";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "longitude_deg";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "course_deg";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "course_unc_deg";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "road_width_m";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "start_latitude_deg";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "start_longitude_deg";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "road_length_m";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "speed_mps";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "is_one_way";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "is_rail_way";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "is_tunnel";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "is_bridge";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013D4D8()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 24);
          goto LABEL_5;
        case 3:
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 28);
          goto LABEL_5;
        case 4:
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 32);
          goto LABEL_5;
        case 5:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 36);
          goto LABEL_5;
        case 6:
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 40);
          goto LABEL_5;
        case 7:
          v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 44);
          goto LABEL_5;
        case 8:
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 48);
          goto LABEL_5;
        case 9:
          v16 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 52);
          goto LABEL_5;
        case 10:
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 56);
LABEL_5:
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 11:
          v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 60);
          goto LABEL_21;
        case 12:
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 64);
          goto LABEL_21;
        case 13:
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 68);
          goto LABEL_21;
        case 14:
          v13 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 72);
LABEL_21:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10013D6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
    v11 = v5 + v10[6];
    if ((*(v11 + 8) & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v13 = v5 + v10[7];
    if ((*(v13 + 8) & 1) == 0)
    {
      v14 = *v13;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v15 = v5 + v10[8];
    if ((*(v15 + 8) & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100143020(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    sub_10015BE7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    sub_10015BEF8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    sub_1001615D4(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    sub_10013D938(v5);
    sub_10013D9B0(v5);
    sub_10013DA28(v5);
    sub_10013DAA0(v5);
    sub_10013DB18(v5);
    sub_10013DB90(v5);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10013D938(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013D9B0(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013DA28(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013DAA0(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 64)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013DB18(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 68)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013DB90(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  if (*(a1 + *(result + 72)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013DC54@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1[13];
  v17 = a2 + a1[12];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a1[15];
  v20 = a2 + a1[14];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(a2 + v19) = 2;
  v21 = a1[17];
  *(a2 + a1[16]) = 2;
  *(a2 + v21) = 2;
  *(a2 + a1[18]) = 2;
  return result;
}

uint64_t sub_10013DD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239D0, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013DE38(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB48, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013DEA4()
{
  sub_100015EDC(&qword_10041DB48, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);

  return Message.hash(into:)();
}

uint64_t sub_10013DFAC()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  result = (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  qword_100443ED8 = v3;
  return result;
}

uint64_t sub_10013E098(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - v9;
  v11 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v16, v10, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v10, v1 + v11, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v17 = (a1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v18 = *v17;
  LOBYTE(v11) = *(v17 + 4);
  swift_beginAccess();
  *v13 = v18;
  *(v13 + 4) = v11;
  v19 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000A0A4(a1 + v19, v6, &qword_10041CAB8, &qword_1003744E8);

  swift_beginAccess();
  sub_10000AD64(v6, v1 + v14, &qword_10041CAB8, &qword_1003744E8);
  swift_endAccess();
  return v1;
}

uint64_t sub_10013E368()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10013E098(v6);
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_7;
      }

      if (result == 1)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v15 = &qword_10041C7B8;
        goto LABEL_15;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
    v14 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel;
    v15 = &qword_10041DB48;
LABEL_15:
    sub_100015EDC(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10013E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = *(v7 + *(a4(0) + 20));
  result = a5(v15, a1, a2, a3);
  if (!v8)
  {
    v17 = (v15 + *a6);
    swift_beginAccess();
    if ((v17[1] & 1) == 0)
    {
      v18 = *v17;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    a7(v15, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10013E6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10013E920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAB8, &qword_1003744E8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAB8, &qword_1003744E8);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  sub_100015EDC(&qword_10041DB48, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
}

BOOL sub_10013EB8C(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v58 = *(v59 - 8);
  v3 = *(v58 + 64);
  __chkstk_darwin(v59);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100024A2C(&qword_100423D90, &qword_100382FF8);
  v5 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v60 = &v55 - v6;
  v7 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v55 - v11;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  v21 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v64 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v55 - v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v28 = a1 + v27;
  v29 = v65;
  sub_10000A0A4(v28, v26, &qword_10041CA30, &qword_100374460);
  v30 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v31 = *(v17 + 56);
  sub_10000A0A4(v26, v20, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v29 + v30, &v20[v31], &qword_10041CA30, &qword_100374460);
  v32 = *(v13 + 48);
  if (v32(v20, 1, v12) == 1)
  {

    sub_1000059A8(v26, &qword_10041CA30, &qword_100374460);
    v33 = v32(&v20[v31], 1, v12);
    v34 = a1;
    if (v33 == 1)
    {
      sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    sub_1000059A8(v20, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  v35 = a1;
  v36 = v64;
  sub_10000A0A4(v20, v64, &qword_10041CA30, &qword_100374460);
  if (v32(&v20[v31], 1, v12) == 1)
  {

    sub_1000059A8(v26, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v36, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v38 = v61;
  sub_1000112AC(&v20[v31], v61, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v39 = sub_1001853C4(v36, v38, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v38, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v26, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v36, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v34 = v35;
  sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
  if ((v39 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v40 = (v34 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v41 = *v40;
  v42 = *(v40 + 4);
  v43 = v29 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v44 = *(v43 + 4);
  if ((v42 & 1) == 0)
  {
    v45 = v63;
    v46 = v62;
    if ((*(v43 + 4) & 1) == 0 && v41 == *v43)
    {
      goto LABEL_16;
    }

LABEL_7:

    return 0;
  }

  v45 = v63;
  v46 = v62;
  if ((*(v43 + 4) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v47 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000A0A4(v34 + v47, v46, &qword_10041CAB8, &qword_1003744E8);
  v48 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  v49 = *(v57 + 48);
  v50 = v60;
  sub_10000A0A4(v46, v60, &qword_10041CAB8, &qword_1003744E8);
  sub_10000A0A4(v29 + v48, v50 + v49, &qword_10041CAB8, &qword_1003744E8);
  v51 = *(v58 + 48);
  v52 = v59;
  if (v51(v50, 1, v59) == 1)
  {

    sub_1000059A8(v46, &qword_10041CAB8, &qword_1003744E8);
    if (v51(v50 + v49, 1, v52) == 1)
    {
      sub_1000059A8(v50, &qword_10041CAB8, &qword_1003744E8);
      return 1;
    }

    goto LABEL_21;
  }

  sub_10000A0A4(v50, v45, &qword_10041CAB8, &qword_1003744E8);
  if (v51(v50 + v49, 1, v52) == 1)
  {

    sub_1000059A8(v46, &qword_10041CAB8, &qword_1003744E8);
    sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
LABEL_21:
    sub_1000059A8(v50, &qword_100423D90, &qword_100382FF8);
    return 0;
  }

  v53 = v56;
  sub_1000112AC(v50 + v49, v56, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  v54 = sub_10018134C(v45, v53);

  sub_100015F24(v53, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  sub_1000059A8(v46, &qword_10041CAB8, &qword_1003744E8);
  sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  sub_1000059A8(v50, &qword_10041CAB8, &qword_1003744E8);
  return (v54 & 1) != 0;
}

uint64_t sub_10013F48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239C8, type metadata accessor for CLP_LogEntry_PrivateData_MapVector);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013F52C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB60, type metadata accessor for CLP_LogEntry_PrivateData_MapVector);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013F598()
{
  sub_100015EDC(&qword_10041DB60, type metadata accessor for CLP_LogEntry_PrivateData_MapVector);

  return Message.hash(into:)();
}

uint64_t sub_10013F63C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004337A0);
  sub_100005DF0(v0, qword_1004337A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "applicable_time";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "search_point_latitude_deg";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "search_point_longitude_deg";
  *(v11 + 1) = 26;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "search_radius_m";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_close_to_tunnel";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "is_close_to_bridge";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_tunnel";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_bridge";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013F9C4()
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
          v6 = v0;
          if (result == 5)
          {
            v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 36);
          }

          else
          {
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          v6 = v0;
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 44);
          goto LABEL_5;
        }

        if (result == 8)
        {
          v6 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 48);
LABEL_5:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          v4 = v0;
          if (result == 3)
          {
            v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 28);
          }

          else
          {
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 32);
          }
        }

        else
        {
          if (result == 1)
          {
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 20);
            type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
            sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_6;
          }

          if (result != 2)
          {
            goto LABEL_6;
          }

          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 24);
        }

        v0 = v4;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10013FBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
    v11 = v5 + v10[6];
    if ((*(v11 + 8) & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v13 = v5 + v10[7];
    if ((*(v13 + 8) & 1) == 0)
    {
      v14 = *v13;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v15 = v5 + v10[8];
    if ((*(v15 + 8) & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    sub_10014C694(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    sub_1000167F8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10013FD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013FE44@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a2 + v10) = 2;
  v12 = a1[11];
  *(a2 + a1[10]) = 2;
  *(a2 + v12) = 2;
  *(a2 + a1[12]) = 2;
  return result;
}

uint64_t sub_10013FF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239C0, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013FFD4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB78, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100140040()
{
  sub_100015EDC(&qword_10041DB78, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);

  return Message.hash(into:)();
}

uint64_t sub_100140144()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v7 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance;
    v7 = &qword_10041DB78;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100140318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CAC0, &qword_1003744F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041CAC0, &qword_1003744F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAC0, &qword_1003744F0);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  sub_100015EDC(&qword_10041DB78, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
}

uint64_t sub_1001405B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239B8, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100140650(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB90, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001406BC()
{
  sub_100015EDC(&qword_10041DB90, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification);

  return Message.hash(into:)();
}

uint64_t sub_100140760()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004337D0);
  sub_100005DF0(v0, qword_1004337D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1003743D0;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v5 = "applicable_time";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "latitude_deg";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "longitude_deg";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "horizontal_unc_m";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "altitude_m";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "vertical_unc_m";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "reference_frame";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "course_at_exit_deg";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "course_at_exit_unc_deg";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "tunnel_width_at_exit_m";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "is_tunnel_curved";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "start_latitude_deg";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "start_longitude_deg";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "tunnel_length_m";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "end_point_distance_from_current_solution_m";
  *(v34 + 1) = 42;
  v34[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100140C90()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved) = 2;
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v3 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  *v18 = 0;
  *(v18 + 8) = 1;
  qword_100443F00 = v3;
  return result;
}

uint64_t sub_100140E30()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime, &qword_10041CA30, &qword_100374460);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100140EA4()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100174D8C(v6);

    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    v13 = &qword_100444000;
    v14 = &qword_100444000;
    v15 = &qword_100444000;
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v16 = v14;
          v17 = v13;
          v18 = v13[140];
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          swift_endAccess();
          v13 = v17;
          v14 = v16;
          v15 = &qword_100444000;
          break;
        case 2:
          v20 = v14[141];
          goto LABEL_13;
        case 3:
          v19 = v15[142];
          goto LABEL_13;
        case 4:
        case 5:
        case 6:
        case 8:
        case 9:
        case 10:
        case 12:
        case 13:
        case 14:
        case 15:
LABEL_13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_14;
        case 7:
          swift_beginAccess();
          sub_100198EEC();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_14;
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_14:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001411A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20));
  result = sub_100141538(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v16 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
    swift_beginAccess();
    if ((*(v16 + 8) & 1) == 0)
    {
      v17 = *v16;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v18 = v8 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
    swift_beginAccess();
    if ((*(v18 + 8) & 1) == 0)
    {
      v19 = *v18;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100141760(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame, sub_100198EEC);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100141538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100141760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 3)
  {
    v10 = *(a1 + v8);
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100141864(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v103 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(v103 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v103);
  v100 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v99 - v9;
  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v101 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v99 - v15;
  v17 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  v18 = a1 + v17;
  v19 = v102;
  sub_10000A0A4(v18, v16, &qword_10041CA30, &qword_100374460);
  v20 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  v21 = *(v7 + 56);
  sub_10000A0A4(v16, v10, &qword_10041CA30, &qword_100374460);
  v22 = v19 + v20;
  v23 = v103;
  sub_10000A0A4(v22, &v10[v21], &qword_10041CA30, &qword_100374460);
  v24 = *(v3 + 48);
  if (v24(v10, 1, v23) == 1)
  {

    sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
    v25 = a1;
    if (v24(&v10[v21], 1, v23) == 1)
    {
      sub_1000059A8(v10, &qword_10041CA30, &qword_100374460);
      goto LABEL_10;
    }

LABEL_6:
    sub_1000059A8(v10, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  v25 = a1;
  v26 = v101;
  sub_10000A0A4(v10, v101, &qword_10041CA30, &qword_100374460);
  if (v24(&v10[v21], 1, v23) == 1)
  {

    sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v26, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v28 = v100;
  sub_1000112AC(&v10[v21], v100, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  LODWORD(v103) = sub_1001853C4(v26, v28, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v28, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v26, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v10, &qword_10041CA30, &qword_100374460);
  if ((v103 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v29 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  v33 = *(v32 + 8);
  if (v31)
  {
    if ((*(v32 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v32 + 8) & 1) != 0 || v30 != *v32)
  {
    goto LABEL_7;
  }

  v34 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  v38 = *(v37 + 8);
  if (v36)
  {
    if ((*(v37 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v37 + 8) & 1) != 0 || v35 != *v37)
  {
    goto LABEL_7;
  }

  v39 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  v40 = *v39;
  v41 = *(v39 + 8);
  v42 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  v43 = *(v42 + 8);
  if (v41)
  {
    if ((*(v42 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v42 + 8) & 1) != 0 || v40 != *v42)
  {
    goto LABEL_7;
  }

  v44 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  v48 = *(v47 + 8);
  if (v46)
  {
    if ((*(v47 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v47 + 8) & 1) != 0 || v45 != *v47)
  {
    goto LABEL_7;
  }

  v49 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  swift_beginAccess();
  v50 = *v49;
  v51 = *(v49 + 8);
  v52 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  swift_beginAccess();
  v53 = *(v52 + 8);
  if (v51)
  {
    if ((*(v52 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v52 + 8) & 1) != 0 || v50 != *v52)
  {
    goto LABEL_7;
  }

  v54 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v55 = *(v25 + v54);
  v56 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v57 = *(v19 + v56);
  if (v55 == 3)
  {
    if (v57 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v57 == 3 || v55 != v57)
  {
    goto LABEL_7;
  }

  v58 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  swift_beginAccess();
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  swift_beginAccess();
  v62 = *(v61 + 8);
  if (v60)
  {
    if ((*(v61 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v61 + 8) & 1) != 0 || v59 != *v61)
  {
    goto LABEL_7;
  }

  v63 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  swift_beginAccess();
  v64 = *v63;
  v65 = *(v63 + 8);
  v66 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  swift_beginAccess();
  v67 = *(v66 + 8);
  if (v65)
  {
    if ((*(v66 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v66 + 8) & 1) != 0 || v64 != *v66)
  {
    goto LABEL_7;
  }

  v68 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  swift_beginAccess();
  v69 = *v68;
  v70 = *(v68 + 8);
  v71 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  swift_beginAccess();
  v72 = *(v71 + 8);
  if (v70)
  {
    if (*(v71 + 8))
    {
      goto LABEL_55;
    }

LABEL_7:

    return 0;
  }

  if ((*(v71 + 8) & 1) != 0 || v69 != *v71)
  {
    goto LABEL_7;
  }

LABEL_55:
  v73 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  v74 = *(v25 + v73);
  v75 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  v76 = *(v19 + v75);
  if (v74 == 2)
  {
    if (v76 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v76 == 2 || ((v74 ^ v76) & 1) != 0)
  {
    goto LABEL_7;
  }

  v77 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  swift_beginAccess();
  v78 = *v77;
  v79 = *(v77 + 8);
  v80 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  swift_beginAccess();
  v81 = *(v80 + 8);
  if (v79)
  {
    if ((*(v80 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v80 + 8) & 1) != 0 || v78 != *v80)
  {
    goto LABEL_7;
  }

  v82 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  swift_beginAccess();
  v83 = *v82;
  v84 = *(v82 + 8);
  v85 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  swift_beginAccess();
  v86 = *(v85 + 8);
  if (v84)
  {
    if ((*(v85 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v85 + 8) & 1) != 0 || v83 != *v85)
  {
    goto LABEL_7;
  }

  v87 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  swift_beginAccess();
  v88 = *v87;
  v89 = *(v87 + 8);
  v90 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  swift_beginAccess();
  v91 = *(v90 + 8);
  if (v89)
  {
    if ((*(v90 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v90 + 8) & 1) != 0 || v88 != *v90)
  {
    goto LABEL_7;
  }

  v92 = v25 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  swift_beginAccess();
  v93 = *v92;
  v94 = *(v92 + 8);

  v95 = v19 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 8);

  if (v94)
  {
    if (!v97)
    {
      return 0;
    }
  }

  else
  {
    if (v93 == v96)
    {
      v98 = v97;
    }

    else
    {
      v98 = 1;
    }

    if (v98)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1001422C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239B0, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100142364(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DBA8, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001423D0()
{
  sub_100015EDC(&qword_10041DBA8, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);

  return Message.hash(into:)();
}

uint64_t sub_1001424D4()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v7 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance;
    v7 = &qword_10041DBA8;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1001426A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CAC8, &qword_1003744F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041CAC8, &qword_1003744F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAC8, &qword_1003744F8);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  sub_100015EDC(&qword_10041DBA8, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
}

uint64_t sub_100142940(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239A8, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001429E0(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DBC0, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100142A4C()
{
  sub_100015EDC(&qword_10041DBC0, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint);

  return Message.hash(into:)();
}

uint64_t sub_100142AF0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433800);
  sub_100005DF0(v0, qword_100433800);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "road_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_latitude_deg";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start_longitude_deg";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "end_latitude_deg";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "end_longitude_deg";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100142DCC()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 20);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 32);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 5:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 36);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_100142EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
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
    result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
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

  sub_100143020(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100143020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100143118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239A0, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001431B8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CCE8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100143224()
{
  sub_100015EDC(&qword_10041CCE8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);

  return Message.hash(into:)();
}

uint64_t sub_1001432C8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433818);
  sub_100005DF0(v0, qword_100433818);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "applicable_time";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "route_type";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "step_type";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "route_hint_data";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001435A4()
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
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 24);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 28);
        }

        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        v0 = v5;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 32);
LABEL_5:
            sub_100198124();
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 36);
            goto LABEL_5;
          case 5:
            type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
            sub_100015EDC(&qword_10041CCE8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014378C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100143940(v3, a1, a2, a3);
  if (!v4)
  {
    sub_100143B5C(v3, a1, a2, a3);
    v9 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
    v10 = v9;
    if (*(v3 + *(v9 + 32)) != 7)
    {
      v12 = *(v3 + *(v9 + 32));
      sub_100198124();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v3 + *(v10 + 36)) != 7)
    {
      v13 = *(v3 + *(v10 + 36));
      sub_100198124();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
      sub_100015EDC(&qword_10041CCE8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v11 = v3 + *(v10 + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100143940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100143B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100143DC4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a2[v5], 1, 1, v6);
  result = (v7)(&a2[a1[7]], 1, 1, v6);
  v9 = a1[9];
  a2[a1[8]] = 7;
  a2[v9] = 7;
  return result;
}

uint64_t sub_100143EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423998, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100143F58(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DBE8, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100143FC4()
{
  sub_100015EDC(&qword_10041DBE8, type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint);

  return Message.hash(into:)();
}

uint64_t sub_100144040()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433830);
  sub_100005DF0(v0, qword_100433830);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "RT_UNKNOWN";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "RT_PEDESTRIAN";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "RT_VEHICLE";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "RT_TRANSIT";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "RT_BICYCLE";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "RT_FERRY";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "RT_RIDESHARE";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001443D0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433848);
  sub_100005DF0(v0, qword_100433848);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "event_receipt_time";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "applicable_time";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "client";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "transmission_state";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sample_count";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "time_offset_sec";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "speed_mps";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "slip_detected";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "sensor_type";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001447A4()
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
          if (result != 3)
          {
            v4 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 40);
            sub_1001980D0();
            goto LABEL_19;
          }

          v10 = v0;
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 36);
LABEL_27:
          v0 = v10;
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 1)
        {
          v6 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 28);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 32);
        }

        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        v0 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        if (result <= 6)
        {
          if (result != 5)
          {
LABEL_25:
            dispatch thunk of Decoder.decodeRepeatedDoubleField(value:)();
            goto LABEL_5;
          }

          v10 = v0;
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 44);
          goto LABEL_27;
        }

        switch(result)
        {
          case 7:
            goto LABEL_25;
          case 8:
            v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 48);
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 9:
            v4 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 52);
            sub_10019807C();
LABEL_19:
            v0 = v4;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001449F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144BE8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_100151A8C(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification, 2);
    v9 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
    v10 = (v3 + v9[9]);
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + v9[10]) != 5)
    {
      v13 = *(v3 + v9[10]);
      sub_1001980D0();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_100144E04(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
    }

    sub_1000167F8(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);
    sub_100144E88(v3);
    v12 = v3 + v9[6];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100144BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100144E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 44));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100144E88(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    sub_10019807C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100144F64@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 1) = &_swiftEmptyArrayStorage;
  v4 = &a2[a1[6]];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a2[v5], 1, 1, v6);
  result = (v7)(&a2[a1[8]], 1, 1, v6);
  v9 = a1[10];
  v10 = &a2[a1[9]];
  *v10 = 0;
  v10[4] = 1;
  a2[v9] = 5;
  v11 = a1[12];
  v12 = &a2[a1[11]];
  *v12 = 0;
  v12[4] = 1;
  a2[v11] = 2;
  a2[a1[13]] = 2;
  return result;
}

uint64_t sub_10014508C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423990, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014512C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC00, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100145198()
{
  sub_100015EDC(&qword_10041DC00, type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification);

  return Message.hash(into:)();
}

uint64_t sub_100145214()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433860);
  sub_100005DF0(v0, qword_100433860);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TS_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TS_PARK";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TS_REVERSE";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TS_DRIVE";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "TS_NEUTRAL";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100145510()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433878);
  sub_100005DF0(v0, qword_100433878);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ST_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ST_COMBINED";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014576C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433890);
  sub_100005DF0(v0, qword_100433890);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "previous";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "current";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "about_to_sleep";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "recently_woke";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100145A08()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 32);
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v5 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 24);
        }

        sub_100198BA4();
        v0 = v5;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100145B2C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 5)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v0 + *(result + 20));
    sub_100198BA4();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + v3[6]) != 5)
  {
    v5 = *(v0 + v3[6]);
    sub_100198BA4();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
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

uint64_t sub_100145CC0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 5;
  *(a2 + v5) = 5;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  return result;
}

uint64_t sub_100145D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423988, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100145DD8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC18, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100145E44()
{
  sub_100015EDC(&qword_10041DC18, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);

  return Message.hash(into:)();
}

uint64_t sub_100145EEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004338A8);
  sub_100005DF0(v0, qword_1004338A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "level";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "charged";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "connected";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "charger_type";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "was_connected";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "charger_family";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014620C()
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 32);
            sub_100198B50();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 36);
            goto LABEL_5;
          case 6:
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 40);
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 20);
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 2:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 24);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 28);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100146398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
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

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 5)
  {
    v13 = *(v5 + v10[8]);
    sub_100198B50();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  sub_100146510(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100146510(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001465D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + v5) = 2;
  v7 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v7) = 5;
  v8 = a1[10];
  *(a2 + a1[9]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_10014666C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423980, type metadata accessor for CLP_LogEntry_PrivateData_Battery);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014670C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC30, type metadata accessor for CLP_LogEntry_PrivateData_Battery);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100146778()
{
  sub_100015EDC(&qword_10041DC30, type metadata accessor for CLP_LogEntry_PrivateData_Battery);

  return Message.hash(into:)();
}

uint64_t sub_10014681C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004338C0);
  sub_100005DF0(v0, qword_1004338C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10036D7A0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "event_receipt_time";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "client";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "notification_data";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "reachability";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "battery";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "airplane_mode";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "display_on";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lock_screen";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "is_battery_saver_mode_enabled";
  *(v22 + 8) = 29;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "push_service_connected";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "wireless_modem_clients";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "thermal_level";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "restricted_mode";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100146CE0()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData) = 20;
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  result = (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected) = 2;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  *v13 = 0;
  *(v13 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode) = 2;
  qword_100443F60 = v3;
  return result;
}

uint64_t sub_100146E98()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability, &qword_10041CAD0, &qword_100374500);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery, &qword_10041CAD8, &qword_100374508);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100146F4C()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1001754E0(v6);

    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v14 = &qword_10041C7B8;
          goto LABEL_11;
        case 2:
        case 11:
        case 12:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_14;
        case 3:
          swift_beginAccess();
          sub_100198028();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_14;
        case 4:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState;
          v14 = &qword_10041DC18;
          goto LABEL_11;
        case 5:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_Battery;
          v14 = &qword_10041DC30;
LABEL_11:
          sub_100015EDC(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_14;
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_14:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001472AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  result = sub_1001475AC(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = (v8 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
    swift_beginAccess();
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
    swift_beginAccess();
    if (*(v8 + v12) != 20)
    {
      sub_100198028();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_1001477D4(v8, a1, a2, a3);
    sub_1001479FC(v8, a1, a2, a3);
    v13 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
    swift_beginAccess();
    if (*(v8 + v13) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected);
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients, 11, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel, 12, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001475AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_1001477D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAD0, &qword_100374500);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAD0, &qword_100374500);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAD0, &qword_100374500);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  sub_100015EDC(&qword_10041DC18, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
}

uint64_t sub_1001479FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAD8, &qword_100374508);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAD8, &qword_100374508);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAD8, &qword_100374508);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  sub_100015EDC(&qword_10041DC30, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
}

uint64_t sub_100147C68(uint64_t a1, uint64_t a2)
{
  v135 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v122 = *(v3 - 8);
  v123 = v3;
  v4 = *(v122 + 64);
  __chkstk_darwin(v3);
  v118 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100024A2C(&qword_100423D70, &qword_100382FD8);
  v6 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v124 = &v117 - v7;
  v8 = sub_100024A2C(&qword_10041CAD8, &qword_100374508);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v119 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v131 = &v117 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v127 = *(v13 - 8);
  v128 = v13;
  v14 = *(v127 + 64);
  __chkstk_darwin(v13);
  v120 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_100024A2C(&qword_100423D78, &qword_100382FE0);
  v16 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v129 = &v117 - v17;
  v18 = sub_100024A2C(&qword_10041CAD0, &qword_100374500);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v125 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v132 = &v117 - v22;
  v134 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v23 = *(v134 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v134);
  v130 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v30 = &v117 - v29;
  v31 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v133 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v117 - v35;
  v37 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v37, v36, &qword_10041CA30, &qword_100374460);
  v38 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v39 = v135;
  swift_beginAccess();
  v40 = *(v27 + 56);
  sub_10000A0A4(v36, v30, &qword_10041CA30, &qword_100374460);
  v41 = v39 + v38;
  v42 = v134;
  sub_10000A0A4(v41, &v30[v40], &qword_10041CA30, &qword_100374460);
  v43 = *(v23 + 48);
  if (v43(v30, 1, v42) == 1)
  {

    sub_1000059A8(v36, &qword_10041CA30, &qword_100374460);
    if (v43(&v30[v40], 1, v42) == 1)
    {
      sub_1000059A8(v30, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v45 = &qword_100423CE0;
    v46 = &qword_100393E90;
    v47 = v30;
LABEL_7:
    sub_1000059A8(v47, v45, v46);
    goto LABEL_8;
  }

  v44 = v133;
  sub_10000A0A4(v30, v133, &qword_10041CA30, &qword_100374460);
  if (v43(&v30[v40], 1, v42) == 1)
  {

    sub_1000059A8(v36, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v49 = v130;
  sub_1000112AC(&v30[v40], v130, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v50 = sub_1001853C4(v44, v49, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v36, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v30, &qword_10041CA30, &qword_100374460);
  if ((v50 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v51 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v52 = *v51;
  v53 = *(v51 + 4);
  v54 = v39 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v55 = *(v54 + 4);
  if (v53)
  {
    v57 = v131;
    v56 = v132;
    if ((*(v54 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v57 = v131;
    v56 = v132;
    if ((*(v54 + 4) & 1) != 0 || v52 != *v54)
    {
      goto LABEL_8;
    }
  }

  v58 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  v59 = *(a1 + v58);
  v60 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  v61 = *(v39 + v60);
  if (v59 == 20)
  {
    if (v61 != 20)
    {
      goto LABEL_8;
    }
  }

  else if (v61 == 20 || v59 != v61)
  {
    goto LABEL_8;
  }

  v62 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  sub_10000A0A4(a1 + v62, v56, &qword_10041CAD0, &qword_100374500);
  v63 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  v64 = *(v126 + 48);
  v65 = v129;
  sub_10000A0A4(v56, v129, &qword_10041CAD0, &qword_100374500);
  v66 = v65;
  sub_10000A0A4(v39 + v63, v65 + v64, &qword_10041CAD0, &qword_100374500);
  v67 = v128;
  v68 = *(v127 + 48);
  if (v68(v65, 1, v128) == 1)
  {
    sub_1000059A8(v56, &qword_10041CAD0, &qword_100374500);
    if (v68(v65 + v64, 1, v67) == 1)
    {
      sub_1000059A8(v65, &qword_10041CAD0, &qword_100374500);
      goto LABEL_28;
    }

LABEL_26:
    v45 = &qword_100423D78;
    v46 = &qword_100382FE0;
LABEL_34:
    v47 = v66;
    goto LABEL_7;
  }

  v69 = v125;
  sub_10000A0A4(v65, v125, &qword_10041CAD0, &qword_100374500);
  if (v68(v65 + v64, 1, v67) == 1)
  {
    sub_1000059A8(v132, &qword_10041CAD0, &qword_100374500);
    sub_100015F24(v69, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
    goto LABEL_26;
  }

  v70 = v65 + v64;
  v71 = v120;
  sub_1000112AC(v70, v120, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  v72 = sub_10017D8D0(v69, v71);
  sub_100015F24(v71, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  sub_1000059A8(v132, &qword_10041CAD0, &qword_100374500);
  sub_100015F24(v69, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  sub_1000059A8(v65, &qword_10041CAD0, &qword_100374500);
  if ((v72 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_28:
  v73 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  sub_10000A0A4(a1 + v73, v57, &qword_10041CAD8, &qword_100374508);
  v74 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  v75 = *(v121 + 48);
  v76 = v124;
  sub_10000A0A4(v57, v124, &qword_10041CAD8, &qword_100374508);
  v66 = v76;
  sub_10000A0A4(v39 + v74, v76 + v75, &qword_10041CAD8, &qword_100374508);
  v77 = v123;
  v78 = *(v122 + 48);
  if (v78(v76, 1, v123) == 1)
  {
    sub_1000059A8(v57, &qword_10041CAD8, &qword_100374508);
    if (v78(v76 + v75, 1, v77) == 1)
    {
      sub_1000059A8(v76, &qword_10041CAD8, &qword_100374508);
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v79 = v119;
  sub_10000A0A4(v76, v119, &qword_10041CAD8, &qword_100374508);
  if (v78(v76 + v75, 1, v77) == 1)
  {
    sub_1000059A8(v57, &qword_10041CAD8, &qword_100374508);
    sub_100015F24(v79, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
LABEL_33:
    v45 = &qword_100423D70;
    v46 = &qword_100382FD8;
    goto LABEL_34;
  }

  v80 = v76 + v75;
  v81 = v118;
  sub_1000112AC(v80, v118, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  v82 = sub_10018221C(v79, v81);
  sub_100015F24(v81, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  sub_1000059A8(v57, &qword_10041CAD8, &qword_100374508);
  sub_100015F24(v79, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  sub_1000059A8(v76, &qword_10041CAD8, &qword_100374508);
  if ((v82 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_36:
  v83 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  v84 = *(a1 + v83);
  v85 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  v86 = *(v39 + v85);
  if (v84 == 2)
  {
    if (v86 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v86 == 2 || ((v84 ^ v86) & 1) != 0)
  {
    goto LABEL_8;
  }

  v87 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  v88 = *(a1 + v87);
  v89 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  v90 = *(v39 + v89);
  if (v88 == 2)
  {
    if (v90 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v90 == 2 || ((v88 ^ v90) & 1) != 0)
  {
    goto LABEL_8;
  }

  v91 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  v92 = *(a1 + v91);
  v93 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  v94 = *(v39 + v93);
  if (v92 == 2)
  {
    if (v94 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v94 == 2 || ((v92 ^ v94) & 1) != 0)
  {
    goto LABEL_8;
  }

  v95 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  v96 = *(a1 + v95);
  v97 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  v98 = *(v39 + v97);
  if (v96 == 2)
  {
    if (v98 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v98 == 2 || ((v96 ^ v98) & 1) != 0)
  {
    goto LABEL_8;
  }

  v99 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  v100 = *(a1 + v99);
  v101 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  v102 = *(v39 + v101);
  if (v100 == 2)
  {
    if (v102 == 2)
    {
      goto LABEL_61;
    }

LABEL_8:

    return 0;
  }

  if (v102 == 2 || ((v100 ^ v102) & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_61:
  v103 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients);
  swift_beginAccess();
  v104 = *v103;
  v105 = *(v103 + 4);
  v106 = v39 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  swift_beginAccess();
  v107 = *(v106 + 4);
  if (v105)
  {
    if ((*(v106 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v106 + 4) & 1) != 0 || v104 != *v106)
  {
    goto LABEL_8;
  }

  v108 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel);
  swift_beginAccess();
  v109 = *v108;
  v110 = *(v108 + 4);
  v111 = v39 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  swift_beginAccess();
  v112 = *(v111 + 4);
  if (v110)
  {
    if ((*(v111 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v111 + 4) & 1) != 0 || v109 != *v111)
  {
    goto LABEL_8;
  }

  v113 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  v114 = *(a1 + v113);

  v115 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  v116 = *(v39 + v115);

  if (v114 == 2)
  {
    if (v116 != 2)
    {
      return 0;
    }
  }

  else if (v116 == 2 || ((v114 ^ v116) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100148C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423978, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100148CA4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC48, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100148D10()
{
  sub_100015EDC(&qword_10041DC48, type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus);

  return Message.hash(into:)();
}

uint64_t sub_100148D8C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004338D8);
  sub_100005DF0(v0, qword_1004338D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100374420;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 0;
  *v5 = "NT_UNKNOWN";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v45 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "NT_INIT";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v45 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "NT_SHUTDOWN";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v45 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "NT_SLEEP";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v45 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "NT_WAKE";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v45 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "NT_LINGER";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v45 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "NT_PENALTY_FREE";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v45 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "NT_REACHABILITY";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v45 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "NT_BATTERY";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v45 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "NT_AIRPLANE_MODE";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v45 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "NT_MIGRATION";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v45 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "NT_DISPLAY";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v8();
  v29 = (v45 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "NT_LOCKSCREEN";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v45 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "NT_PUSH_SERVICE";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v45 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "NT_WIRELESS_MODEM";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v45 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "NT_THERMAL";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v8();
  v37 = v45 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "NT_RESTRICTED_POWER_MODE";
  *(v37 + 8) = 24;
  *(v37 + 16) = 2;
  v8();
  v38 = (v45 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "NT_BATTERY_SAVER_MODE";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v45 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "NT_METRIC_HEARTBEAT";
  *(v41 + 1) = 19;
  v41[16] = 2;
  v8();
  v42 = (v45 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "NT_BOOT_AFTER_UNCLEAN_SHUTDOWN";
  *(v43 + 1) = 30;
  v43[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100149434()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004338F0);
  sub_100005DF0(v0, qword_1004338F0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicable_time";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "coarse_signal_environment";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "high_resolution_signal_environment";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "client";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001496CC()
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
          v4 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 28);
          goto LABEL_15;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 32);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 24);
LABEL_15:
          sub_100197FD4();
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014985C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100168420(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
    v7 = v6;
    if (*(v3 + *(v6 + 24)) != 8)
    {
      v10 = *(v3 + *(v6 + 24));
      sub_100197FD4();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v3 + *(v7 + 28)) != 8)
    {
      v11 = *(v3 + *(v7 + 28));
      sub_100197FD4();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v8 = (v3 + *(v7 + 32));
    if ((v8[1] & 1) == 0)
    {
      v9 = *v8;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100149A10@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 8;
  *(a2 + v7) = 8;
  v8 = a2 + a1[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_100149AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423970, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100149B78(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC60, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100149BE4()
{
  sub_100015EDC(&qword_10041DC60, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment);

  return Message.hash(into:)();
}

uint64_t sub_100149C60()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433908);
  sub_100005DF0(v0, qword_100433908);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = -1;
  *v5 = "SE_UNKNOWN";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 0;
  *v9 = "SE_UNAVAILABLE";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 1;
  *v11 = "SE_RURAL";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "SE_URBAN";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "SE_DENSE_URBAN";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "SE_DENSE_URBAN_CANYON";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 5;
  *v19 = "SE_MARINE";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 6;
  *v21 = "SE_FOLIAGE";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014A038()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433920);
  sub_100005DF0(v0, qword_100433920);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fidelity_level";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014A250()
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
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0) + 24);
        sub_100198AFC();
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0) + 20);
    sub_100197FD4();
LABEL_5:
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10014A334()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 8)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v0 + *(result + 20));
    sub_100197FD4();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 4)
  {
    v5 = *(v0 + *(v3 + 24));
    sub_100198AFC();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10014A4B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423968, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014A554(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DC78, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014A5C0()
{
  sub_100015EDC(&qword_10041DC78, type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo);

  return Message.hash(into:)();
}

uint64_t sub_10014A664()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433938);
  sub_100005DF0(v0, qword_100433938);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicable_time";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "x_uT";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "y_uT";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "z_uT";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014A920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v8 = v4;
          v9 = *(a4(0) + 28);
LABEL_5:
          v4 = v8;
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v8 = v4;
          v11 = *(a4(0) + 32);
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        v12 = *(a4(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v8 = v4;
        v10 = *(a4(0) + 24);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014AB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423960, type metadata accessor for CLP_LogEntry_PrivateData_MagSample);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014ABF4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CD30, type metadata accessor for CLP_LogEntry_PrivateData_MagSample);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014AC60()
{
  sub_100015EDC(&qword_10041CD30, type metadata accessor for CLP_LogEntry_PrivateData_MagSample);

  return Message.hash(into:)();
}

uint64_t sub_10014AD04()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433950);
  sub_100005DF0(v0, qword_100433950);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sample";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014AF1C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
        sub_100015EDC(&qword_10041CD30, type metadata accessor for CLP_LogEntry_PrivateData_MagSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014B080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_10014B17C(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
      sub_100015EDC(&qword_10041CD30, type metadata accessor for CLP_LogEntry_PrivateData_MagSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10014B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10014B468(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423958, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014B508(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DCA0, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014B574()
{
  sub_100015EDC(&qword_10041DCA0, type metadata accessor for CLP_LogEntry_PrivateData_Magnetometer);

  return Message.hash(into:)();
}

uint64_t sub_10014B6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v7 & 1) == 0)
    {
      if (result == 1)
      {
        v8 = *(a4(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_100168420(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10014B8C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_10014B948(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423950, type metadata accessor for CLP_LogEntry_PrivateData_Reset);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014B9E8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DCB8, type metadata accessor for CLP_LogEntry_PrivateData_Reset);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014BA54()
{
  sub_100015EDC(&qword_10041DCB8, type metadata accessor for CLP_LogEntry_PrivateData_Reset);

  return Message.hash(into:)();
}

uint64_t sub_10014BAF8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433980);
  sub_100005DF0(v0, qword_100433980);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "calibrated";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lower_bound";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "upper_bound";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014BE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423948, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014BECC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DCD0, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014BF38()
{
  sub_100015EDC(&qword_10041DCD0, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);

  return Message.hash(into:)();
}

uint64_t sub_10014BFE0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433998);
  sub_100005DF0(v0, qword_100433998);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "accel_pose_x_high";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "accel_var_xyz_low";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "gyro_num_samples_sufficient";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gyro_var_x_high";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "consecutive_requirement";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "is_vehicular_low_confidence";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_vehicular_high_confidence";
  *(v19 + 1) = 28;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "consistent_steps_protection";
  *(v21 + 1) = 27;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014C368()
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
        if (result > 6)
        {
          if (result == 7)
          {
            v3 = v0;
            v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 44);
          }

          else
          {
            if (result != 8)
            {
              goto LABEL_21;
            }

            v3 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 48);
          }
        }

        else
        {
          v3 = v0;
          if (result == 5)
          {
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 36);
          }

          else
          {
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 40);
          }
        }
      }

      else if (result > 2)
      {
        v3 = v0;
        if (result == 3)
        {
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 28);
        }

        else
        {
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_21;
        }

        v3 = v0;
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0) + 24);
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_21:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10014C4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
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

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_10014C694(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_1000167F8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10014C694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10014C75C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  v7 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v7) = 2;
  v8 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v8) = 2;
  return result;
}

uint64_t sub_10014C7E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423940, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10014C888(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DCE8, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10014C8F4()
{
  sub_100015EDC(&qword_10041DCE8, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);

  return Message.hash(into:)();
}

uint64_t sub_10014C998()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004339B0);
  sub_100005DF0(v0, qword_1004339B0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100374430;
  v4 = v53 + v3;
  v5 = v53 + v3 + v1[14];
  *(v53 + v3) = 1;
  *v5 = "timestamp";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v53 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "start_time";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v53 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "first_step_time";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v53 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "count";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v53 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "distance_m";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v53 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "raw_distance_m";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v53 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "floors_ascended";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v53 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "floors_descended";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v53 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "current_pace_spm";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v53 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "current_cadence";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v53 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "active_time";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v53 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "record_id";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v53 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "source_id";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v53 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "is_odometer_distance";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v53 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "is_odometer_pace";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v53 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "accelerometer_pace";
  *(v36 + 1) = 18;
  v36[16] = 2;
  v8();
  v37 = v53 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "push_count";
  *(v37 + 8) = 10;
  *(v37 + 16) = 2;
  v8();
  v38 = (v53 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "workout_type";
  *(v39 + 1) = 12;
  v39[16] = 2;
  v8();
  v40 = (v53 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "pedometer_arm_constrainted_state";
  *(v41 + 1) = 32;
  v41[16] = 2;
  v8();
  v42 = (v53 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "elevation_ascended_cm";
  *(v43 + 1) = 21;
  v43[16] = 2;
  v8();
  v44 = (v53 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "elevation_descended_cm";
  *(v45 + 1) = 22;
  v45[16] = 2;
  v8();
  v46 = (v53 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "false_steps_suppressed";
  *(v47 + 1) = 22;
  v47[16] = 2;
  v8();
  v48 = (v53 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "distance_source";
  *(v49 + 1) = 15;
  v49[16] = 2;
  v8();
  v50 = (v53 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "false_step_detector_state";
  *(v51 + 1) = 25;
  v51[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10014D0E8()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = (v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  *v16 = 0;
  v16[1] = 0;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace) = 2;
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  v19 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  *v22 = 0;
  *(v22 + 4) = 1;
  v23 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  *v23 = 0;
  *(v23 + 4) = 1;
  v24 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  *v24 = 0;
  *(v24 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource) = 10;
  v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  result = (*(*(v26 - 8) + 56))(v3 + v25, 1, 1, v26);
  qword_100443FC0 = v3;
  return result;
}

uint64_t sub_10014D3C4(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CAE8, &qword_100374518);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v115 = &v93 - v5;
  v6 = sub_100024A2C(&qword_10041CAE0, &qword_100374510);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v112 = &v93 - v8;
  v9 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v93 - v11;
  v13 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v94 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v14);
  v95 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, 1, 1, v14);
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  v96 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  v97 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  v98 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  v99 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  v100 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  v101 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = (v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  v102 = (v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  *v25 = 0;
  v25[1] = 0;
  v103 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance) = 2;
  v26 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace) = 2;
  v27 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v104 = v26;
  v105 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  v28 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  v106 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  *v29 = 0;
  *(v29 + 4) = 1;
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  v107 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  *v30 = 0;
  *(v30 + 4) = 1;
  v31 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  v108 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  *v31 = 0;
  *(v31 + 4) = 1;
  v32 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  v109 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  *v32 = 0;
  *(v32 + 4) = 1;
  v33 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  v110 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  *v33 = 0;
  *(v33 + 4) = 1;
  v34 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  v111 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  *v34 = 0;
  *(v34 + 4) = 1;
  v35 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource) = 10;
  v36 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v113 = v35;
  v114 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  (*(*(v37 - 8) + 56))(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v38, v12, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v13, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v39, v12, &qword_10041CA30, &qword_100374460);
  v40 = v94;
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v40, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v41, v12, &qword_10041CA30, &qword_100374460);
  v42 = v95;
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v42, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v43 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  swift_beginAccess();
  LODWORD(v42) = *v43;
  LOBYTE(v43) = *(v43 + 4);
  swift_beginAccess();
  *v16 = v42;
  *(v16 + 4) = v43;
  v44 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM);
  swift_beginAccess();
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  swift_beginAccess();
  *v17 = v45;
  *(v17 + 8) = v44;
  v46 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM);
  swift_beginAccess();
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  swift_beginAccess();
  *v18 = v47;
  *(v18 + 8) = v46;
  v48 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  swift_beginAccess();
  LODWORD(v47) = *v48;
  LOBYTE(v48) = *(v48 + 4);
  v49 = v96;
  swift_beginAccess();
  *v49 = v47;
  *(v49 + 4) = v48;
  v50 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  swift_beginAccess();
  LODWORD(v47) = *v50;
  LOBYTE(v50) = *(v50 + 4);
  v51 = v97;
  swift_beginAccess();
  *v51 = v47;
  *(v51 + 4) = v50;
  v52 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm);
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  v54 = v98;
  swift_beginAccess();
  *v54 = v53;
  *(v54 + 8) = v52;
  v55 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence);
  swift_beginAccess();
  v56 = *v55;
  LOBYTE(v55) = *(v55 + 8);
  v57 = v99;
  swift_beginAccess();
  *v57 = v56;
  *(v57 + 8) = v55;
  v58 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime);
  swift_beginAccess();
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  v60 = v100;
  swift_beginAccess();
  *v60 = v59;
  *(v60 + 8) = v58;
  v61 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  swift_beginAccess();
  LODWORD(v59) = *v61;
  LOBYTE(v61) = *(v61 + 4);
  v62 = v101;
  swift_beginAccess();
  *v62 = v59;
  *(v62 + 4) = v61;
  v63 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  swift_beginAccess();
  v65 = *v63;
  v64 = v63[1];
  v66 = v102;
  swift_beginAccess();
  v67 = v66[1];
  *v66 = v65;
  v66[1] = v64;

  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v103;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  LOBYTE(v70) = *(a1 + v70);
  v71 = v104;
  swift_beginAccess();
  *(v1 + v71) = v70;
  v72 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v73 = v112;
  sub_10000A0A4(a1 + v72, v112, &qword_10041CAE0, &qword_100374510);
  v74 = v105;
  swift_beginAccess();
  sub_10000AD64(v73, v1 + v74, &qword_10041CAE0, &qword_100374510);
  swift_endAccess();
  v75 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  swift_beginAccess();
  LODWORD(v71) = *v75;
  LOBYTE(v75) = *(v75 + 4);
  v76 = v106;
  swift_beginAccess();
  *v76 = v71;
  *(v76 + 4) = v75;
  v77 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  swift_beginAccess();
  LODWORD(v71) = *v77;
  LOBYTE(v77) = *(v77 + 4);
  v78 = v107;
  swift_beginAccess();
  *v78 = v71;
  *(v78 + 4) = v77;
  v79 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  swift_beginAccess();
  LODWORD(v71) = *v79;
  LOBYTE(v79) = *(v79 + 4);
  v80 = v108;
  swift_beginAccess();
  *v80 = v71;
  *(v80 + 4) = v79;
  v81 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  swift_beginAccess();
  LODWORD(v71) = *v81;
  LOBYTE(v81) = *(v81 + 4);
  v82 = v109;
  swift_beginAccess();
  *v82 = v71;
  *(v82 + 4) = v81;
  v83 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  swift_beginAccess();
  LODWORD(v71) = *v83;
  LOBYTE(v83) = *(v83 + 4);
  v84 = v110;
  swift_beginAccess();
  *v84 = v71;
  *(v84 + 4) = v83;
  v85 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  swift_beginAccess();
  LODWORD(v71) = *v85;
  LOBYTE(v85) = *(v85 + 4);
  v86 = v111;
  swift_beginAccess();
  *v86 = v71;
  *(v86 + 4) = v85;
  v87 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  LOBYTE(v87) = *(a1 + v87);
  v88 = v113;
  swift_beginAccess();
  *(v1 + v88) = v87;
  v89 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v90 = v115;
  sub_10000A0A4(a1 + v89, v115, &qword_10041CAE8, &qword_100374518);

  v91 = v114;
  swift_beginAccess();
  sub_10000AD64(v90, v1 + v91, &qword_10041CAE8, &qword_100374518);
  swift_endAccess();
  return v1;
}