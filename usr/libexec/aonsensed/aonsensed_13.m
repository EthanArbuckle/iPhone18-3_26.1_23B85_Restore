uint64_t sub_10014DF48()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime, &qword_10041CA30, &qword_100374460);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID + 8);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace, &qword_10041CAE0, &qword_100374510);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState, &qword_10041CAE8, &qword_100374518);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_10014E058()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10014D3C4(v6);
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
        case 2:
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v14 = &qword_10041C7B8;
          goto LABEL_16;
        case 4:
        case 7:
        case 8:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_17;
        case 5:
        case 6:
        case 9:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 12:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_17;
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_17;
        case 14:
        case 15:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 16:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace;
          v14 = &qword_10041DCD0;
          goto LABEL_16;
        case 23:
          swift_beginAccess();
          sub_100197F80();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 24:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState;
          v14 = &qword_10041DCE8;
LABEL_16:
          sub_100015EDC(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
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

uint64_t sub_10014E4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0) + 20));
  result = sub_10014E958(v8, a1, a2, a3);
  if (!v4)
  {
    sub_10014EB80(v8, a1, a2, a3);
    sub_10014EDA8(v8, a1, a2, a3);
    v10 = (v8 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count);
    swift_beginAccess();
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM);
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended, 7, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended, 8, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime);
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID, 12, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    sub_10014EFD0(v8);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace);
    sub_10014F074(v8, a1, a2, a3);
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount, 17, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType, 18, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState, 19, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm, 20, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm, 21, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F29C(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed, 22, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_10014F33C(v8);
    sub_10014F3E0(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10014E958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
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

uint64_t sub_10014EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
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

uint64_t sub_10014EDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
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

uint64_t sub_10014EFD0(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  result = swift_beginAccess();
  if (v1[1])
  {
    v3 = *v1;
    v4 = v1[1];

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10014F074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAE0, &qword_100374510);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAE0, &qword_100374510);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAE0, &qword_100374510);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  sub_100015EDC(&qword_10041DCD0, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
}

uint64_t sub_10014F29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

uint64_t sub_10014F33C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  result = swift_beginAccess();
  if (*(a1 + v2) != 10)
  {
    v4 = *(a1 + v2);
    sub_100197F80();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10014F3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAE8, &qword_100374518);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAE8, &qword_100374518);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAE8, &qword_100374518);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_100015EDC(&qword_10041DCE8, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
}

BOOL sub_10014F64C(_BYTE *a1, uint64_t a2)
{
  v233 = a2;
  v215 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
  v213 = *(v215 - 8);
  v3 = *(v213 + 64);
  __chkstk_darwin(v215);
  v214 = &v208[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v210 = sub_100024A2C(&qword_100423D60, &qword_100382FC8);
  v5 = *(*(v210 - 8) + 64);
  __chkstk_darwin(v210);
  v216 = &v208[-v6];
  v7 = sub_100024A2C(&qword_10041CAE8, &qword_100374518);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v212 = &v208[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v211 = &v208[-v11];
  v222 = type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace(0);
  v220 = *(v222 - 8);
  v12 = *(v220 + 64);
  __chkstk_darwin(v222);
  v217 = &v208[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v219 = sub_100024A2C(&qword_100423D68, &qword_100382FD0);
  v14 = *(*(v219 - 8) + 64);
  __chkstk_darwin(v219);
  v223 = &v208[-v15];
  v16 = sub_100024A2C(&qword_10041CAE0, &qword_100374510);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v218 = &v208[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v221 = &v208[-v20];
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v22 = *(v21 - 8);
  v234 = v21;
  v235 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v229 = &v208[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v225 = &v208[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __chkstk_darwin(v27);
  v228 = &v208[-v30];
  __chkstk_darwin(v29);
  v32 = &v208[-v31];
  v33 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v224 = &v208[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __chkstk_darwin(v35);
  v227 = &v208[-v38];
  v39 = __chkstk_darwin(v37);
  v226 = &v208[-v40];
  v41 = __chkstk_darwin(v39);
  v232 = &v208[-v42];
  v43 = __chkstk_darwin(v41);
  v230 = &v208[-v44];
  __chkstk_darwin(v43);
  v46 = &v208[-v45];
  v47 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v48 = a1;
  sub_10000A0A4(&a1[v47], v46, &qword_10041CA30, &qword_100374460);
  v49 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v50 = v233;
  swift_beginAccess();
  v231 = v25;
  v51 = *(v25 + 48);
  sub_10000A0A4(v46, v32, &qword_10041CA30, &qword_100374460);
  v52 = v234;
  v53 = v235;
  sub_10000A0A4(v50 + v49, &v32[v51], &qword_10041CA30, &qword_100374460);
  v56 = *(v53 + 48);
  v55 = v53 + 48;
  v54 = v56;
  if (v56(v32, 1, v52) == 1)
  {

    sub_1000059A8(v46, &qword_10041CA30, &qword_100374460);
    if (v54(&v32[v51], 1, v52) == 1)
    {
      sub_1000059A8(v32, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v59 = v32;
LABEL_14:
    sub_1000059A8(v59, &qword_100423CE0, &qword_100393E90);
    goto LABEL_15;
  }

  v57 = v48;
  v58 = v230;
  sub_10000A0A4(v32, v230, &qword_10041CA30, &qword_100374460);
  v235 = v55;
  if (v54(&v32[v51], 1, v52) == 1)
  {

    sub_1000059A8(v46, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v58, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v60 = v229;
  sub_1000112AC(&v32[v51], v229, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v209 = sub_1001853C4(v58, v60, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v60, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v46, &qword_10041CA30, &qword_100374460);
  v61 = v58;
  v48 = v57;
  sub_100015F24(v61, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v32, &qword_10041CA30, &qword_100374460);
  v55 = v235;
  if ((v209 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_8:
  v62 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v230 = v48;
  v63 = &v48[v62];
  v64 = v232;
  sub_10000A0A4(v63, v232, &qword_10041CA30, &qword_100374460);
  v65 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v66 = *(v231 + 48);
  v67 = v228;
  sub_10000A0A4(v64, v228, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v50 + v65, &v67[v66], &qword_10041CA30, &qword_100374460);
  v68 = v234;
  if (v54(v67, 1, v234) == 1)
  {
    sub_1000059A8(v64, &qword_10041CA30, &qword_100374460);
    v69 = v54(&v67[v66], 1, v68);
    v70 = v230;
    if (v69 == 1)
    {
      v235 = v55;
      sub_1000059A8(v67, &qword_10041CA30, &qword_100374460);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v71 = v226;
  sub_10000A0A4(v67, v226, &qword_10041CA30, &qword_100374460);
  if (v54(&v67[v66], 1, v68) == 1)
  {
    sub_1000059A8(v232, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v71, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_13:
    v59 = v67;
    goto LABEL_14;
  }

  v235 = v55;
  v73 = &v67[v66];
  v74 = v67;
  v75 = v229;
  sub_1000112AC(v73, v229, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v76 = sub_1001853C4(v71, v75, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v75, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v232, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v71, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v74, &qword_10041CA30, &qword_100374460);
  v70 = v230;
  if ((v76 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v77 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  swift_beginAccess();
  v78 = v227;
  sub_10000A0A4(&v70[v77], v227, &qword_10041CA30, &qword_100374460);
  v79 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__firstStepTime;
  v80 = v233;
  swift_beginAccess();
  v81 = *(v231 + 48);
  v82 = v225;
  sub_10000A0A4(v78, v225, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v80 + v79, &v82[v81], &qword_10041CA30, &qword_100374460);
  v83 = v234;
  if (v54(v82, 1, v234) == 1)
  {
    sub_1000059A8(v78, &qword_10041CA30, &qword_100374460);
    if (v54(&v82[v81], 1, v83) == 1)
    {
      sub_1000059A8(v82, &qword_10041CA30, &qword_100374460);
      v84 = v233;
      goto LABEL_26;
    }

LABEL_23:
    sub_1000059A8(v82, &qword_100423CE0, &qword_100393E90);
    goto LABEL_15;
  }

  v85 = v224;
  sub_10000A0A4(v82, v224, &qword_10041CA30, &qword_100374460);
  if (v54(&v82[v81], 1, v83) == 1)
  {
    sub_1000059A8(v227, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v85, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_23;
  }

  v86 = v229;
  sub_1000112AC(&v82[v81], v229, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v87 = sub_1001853C4(v85, v86, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v86, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v227, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v85, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v82, &qword_10041CA30, &qword_100374460);
  v84 = v233;
  if ((v87 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_26:
  v88 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count];
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[4];
  v91 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__count;
  swift_beginAccess();
  v92 = *(v91 + 4);
  if (v90)
  {
    if ((*(v91 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v91 + 4) & 1) != 0 || v89 != *v91)
  {
    goto LABEL_15;
  }

  v93 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM];
  swift_beginAccess();
  v94 = *v93;
  v95 = *(v93 + 8);
  v96 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceM;
  swift_beginAccess();
  v97 = *(v96 + 8);
  if (v95)
  {
    if ((*(v96 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v96 + 8) & 1) != 0 || v94 != *v96)
  {
    goto LABEL_15;
  }

  v98 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM];
  swift_beginAccess();
  v99 = *v98;
  v100 = *(v98 + 8);
  v101 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawDistanceM;
  swift_beginAccess();
  v102 = *(v101 + 8);
  if (v100)
  {
    if ((*(v101 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v101 + 8) & 1) != 0 || v99 != *v101)
  {
    goto LABEL_15;
  }

  v103 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended];
  swift_beginAccess();
  v104 = *v103;
  v105 = v103[4];
  v106 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsAscended;
  swift_beginAccess();
  v107 = *(v106 + 4);
  if (v105)
  {
    if ((*(v106 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v106 + 4) & 1) != 0 || v104 != *v106)
  {
    goto LABEL_15;
  }

  v108 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended];
  swift_beginAccess();
  v109 = *v108;
  v110 = v108[4];
  v111 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floorsDescended;
  swift_beginAccess();
  v112 = *(v111 + 4);
  if (v110)
  {
    if ((*(v111 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v111 + 4) & 1) != 0 || v109 != *v111)
  {
    goto LABEL_15;
  }

  v113 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm];
  swift_beginAccess();
  v114 = *v113;
  v115 = *(v113 + 8);
  v116 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentPaceSpm;
  swift_beginAccess();
  v117 = *(v116 + 8);
  if (v115)
  {
    if ((*(v116 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v116 + 8) & 1) != 0 || v114 != *v116)
  {
    goto LABEL_15;
  }

  v118 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence];
  swift_beginAccess();
  v119 = *v118;
  v120 = *(v118 + 8);
  v121 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__currentCadence;
  swift_beginAccess();
  v122 = *(v121 + 8);
  if (v120)
  {
    if ((*(v121 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v121 + 8) & 1) != 0 || v119 != *v121)
  {
    goto LABEL_15;
  }

  v123 = v70;
  v124 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime];
  swift_beginAccess();
  v125 = *v124;
  v126 = *(v124 + 8);
  v127 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__activeTime;
  swift_beginAccess();
  v128 = *(v127 + 8);
  if (v126)
  {
    if ((*(v127 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v127 + 8) & 1) != 0 || v125 != *v127)
  {
    goto LABEL_15;
  }

  v129 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID];
  swift_beginAccess();
  v130 = *v129;
  v131 = v129[4];
  v132 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__recordID;
  swift_beginAccess();
  v133 = *(v132 + 4);
  if (v131)
  {
    if ((*(v132 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v132 + 4) & 1) != 0 || v130 != *v132)
  {
    goto LABEL_15;
  }

  v134 = &v70[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID];
  swift_beginAccess();
  v135 = *v134;
  v136 = v134[1];
  v137 = (v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__sourceID);
  swift_beginAccess();
  v138 = v137[1];
  if (v136)
  {
    if (!v138 || (v135 != *v137 || v136 != v138) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v138)
  {
    goto LABEL_15;
  }

  v139 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  v140 = v70[v139];
  v141 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerDistance;
  swift_beginAccess();
  v142 = *(v84 + v141);
  if (v140 == 2)
  {
    if (v142 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v142 == 2 || ((v140 ^ v142) & 1) != 0)
  {
    goto LABEL_15;
  }

  v143 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  v144 = v70[v143];
  v145 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isOdometerPace;
  swift_beginAccess();
  v146 = *(v84 + v145);
  if (v144 == 2)
  {
    if (v146 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v146 == 2 || ((v144 ^ v146) & 1) != 0)
  {
    goto LABEL_15;
  }

  v147 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v148 = &v70[v147];
  v149 = v221;
  sub_10000A0A4(v148, v221, &qword_10041CAE0, &qword_100374510);
  v150 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accelerometerPace;
  swift_beginAccess();
  v151 = *(v219 + 48);
  v152 = v149;
  v153 = v223;
  sub_10000A0A4(v152, v223, &qword_10041CAE0, &qword_100374510);
  sub_10000A0A4(v84 + v150, &v153[v151], &qword_10041CAE0, &qword_100374510);
  v154 = *(v220 + 48);
  if (v154(v153, 1, v222) == 1)
  {
    sub_1000059A8(v221, &qword_10041CAE0, &qword_100374510);
    if (v154(&v223[v151], 1, v222) == 1)
    {
      sub_1000059A8(v223, &qword_10041CAE0, &qword_100374510);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  v155 = v223;
  sub_10000A0A4(v223, v218, &qword_10041CAE0, &qword_100374510);
  if (v154(&v155[v151], 1, v222) == 1)
  {
    sub_1000059A8(v221, &qword_10041CAE0, &qword_100374510);
    sub_100015F24(v218, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
LABEL_94:
    sub_1000059A8(v223, &qword_100423D68, &qword_100382FD0);
    goto LABEL_15;
  }

  v156 = v223;
  v157 = &v223[v151];
  v158 = v217;
  sub_1000112AC(v157, v217, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  v159 = v218;
  v160 = sub_1001853C4(v218, v158, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  sub_100015F24(v158, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  sub_1000059A8(v221, &qword_10041CAE0, &qword_100374510);
  sub_100015F24(v159, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace);
  sub_1000059A8(v156, &qword_10041CAE0, &qword_100374510);
  if ((v160 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_96:
  v161 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount];
  swift_beginAccess();
  v162 = *v161;
  v163 = v161[4];
  v164 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushCount;
  swift_beginAccess();
  v165 = *(v164 + 4);
  if (v163)
  {
    if ((*(v164 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v164 + 4) & 1) != 0 || v162 != *v164)
  {
    goto LABEL_15;
  }

  v166 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType];
  swift_beginAccess();
  v167 = *v166;
  v168 = v166[4];
  v169 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutType;
  swift_beginAccess();
  v170 = *(v169 + 4);
  if (v168)
  {
    if ((*(v169 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v169 + 4) & 1) != 0 || v167 != *v169)
  {
    goto LABEL_15;
  }

  v171 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState];
  swift_beginAccess();
  v172 = *v171;
  v173 = v171[4];
  v174 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pedometerArmConstraintedState;
  swift_beginAccess();
  v175 = *(v174 + 4);
  if (v173)
  {
    if ((*(v174 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v174 + 4) & 1) != 0 || v172 != *v174)
  {
    goto LABEL_15;
  }

  v176 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm];
  swift_beginAccess();
  v177 = *v176;
  v178 = v176[4];
  v179 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationAscendedCm;
  swift_beginAccess();
  v180 = *(v179 + 4);
  if (v178)
  {
    if ((*(v179 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v179 + 4) & 1) != 0 || v177 != *v179)
  {
    goto LABEL_15;
  }

  v181 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm];
  swift_beginAccess();
  v182 = *v181;
  v183 = v181[4];
  v184 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__elevationDescendedCm;
  swift_beginAccess();
  v185 = *(v184 + 4);
  if (v183)
  {
    if ((*(v184 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v184 + 4) & 1) != 0 || v182 != *v184)
  {
    goto LABEL_15;
  }

  v186 = &v123[OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed];
  swift_beginAccess();
  v187 = *v186;
  v188 = v186[4];
  v189 = v84 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepsSuppressed;
  swift_beginAccess();
  v190 = *(v189 + 4);
  if (v188)
  {
    if ((*(v189 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v189 + 4) & 1) != 0 || v187 != *v189)
  {
    goto LABEL_15;
  }

  v191 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  v192 = v123[v191];
  v193 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__distanceSource;
  swift_beginAccess();
  v194 = *(v84 + v193);
  if (v192 == 10)
  {
    if (v194 != 10)
    {
      goto LABEL_15;
    }
  }

  else if (v194 == 10 || v192 != v194)
  {
    goto LABEL_15;
  }

  v195 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v196 = v211;
  sub_10000A0A4(&v123[v195], v211, &qword_10041CAE8, &qword_100374518);
  v197 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_StepCountEntryP33_993346AF53650622B255AB1E3C41340D13_StorageClass__falseStepDetectorState;
  swift_beginAccess();
  v198 = *(v210 + 48);
  v199 = v196;
  v200 = v216;
  sub_10000A0A4(v199, v216, &qword_10041CAE8, &qword_100374518);
  sub_10000A0A4(v84 + v197, &v200[v198], &qword_10041CAE8, &qword_100374518);
  v201 = *(v213 + 48);
  if (v201(v200, 1, v215) == 1)
  {

    sub_1000059A8(v211, &qword_10041CAE8, &qword_100374518);
    if (v201(&v216[v198], 1, v215) == 1)
    {
      sub_1000059A8(v216, &qword_10041CAE8, &qword_100374518);
      return 1;
    }

LABEL_137:
    sub_1000059A8(v216, &qword_100423D60, &qword_100382FC8);
    return 0;
  }

  v202 = v216;
  sub_10000A0A4(v216, v212, &qword_10041CAE8, &qword_100374518);
  if (v201(&v202[v198], 1, v215) == 1)
  {

    sub_1000059A8(v211, &qword_10041CAE8, &qword_100374518);
    sub_100015F24(v212, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
    goto LABEL_137;
  }

  v203 = v216;
  v204 = &v216[v198];
  v205 = v214;
  sub_1000112AC(v204, v214, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  v206 = v212;
  v207 = sub_1001795E8(v212, v205);

  sub_100015F24(v205, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_1000059A8(v211, &qword_10041CAE8, &qword_100374518);
  sub_100015F24(v206, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState);
  sub_1000059A8(v203, &qword_10041CAE8, &qword_100374518);
  return (v207 & 1) != 0;
}

uint64_t sub_100150F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423938, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015103C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD00, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001510A8()
{
  sub_100015EDC(&qword_10041DD00, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);

  return Message.hash(into:)();
}

uint64_t sub_100151124()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004339C8);
  sub_100005DF0(v0, qword_1004339C8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DS_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DS_GPS";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DS_ENERGY_BASED_CALIBRATED";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DS_ENERGY_BASED_UNCALIBRATED";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DS_CADENCE_BASED_CALIBRATED";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DS_CADENCE_BASED_UNCALIBRATED";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "DS_ENERGY_BASED_CALIBRATED_PED_WITH_GPS";
  *(v20 + 1) = 39;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "DS_ENERGY_BASED_UNCALIBRATED_PED_WITH_GPS";
  *(v22 + 1) = 41;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v2 + v1[14];
  *(v5 + 8 * v2) = 8;
  *v23 = "DS_CADENCE_BASED_CALIBRATED_PED_WITH_GPS";
  *(v23 + 8) = 40;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "DS_CADENCE_BASED_UNCALIBRATED_PED_WITH_GPS";
  *(v25 + 1) = 42;
  v25[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100151578()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004339E0);
  sub_100005DF0(v0, qword_1004339E0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicability_timestamp";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "straightness_metric";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "confidence";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "start_timestamp";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100151810()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0) + 32);
LABEL_16:
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0) + 20);
          goto LABEL_16;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
    v11 = v5 + *(v10 + 24);
    if ((*(v11 + 8) & 1) == 0)
    {
      v12 = v10;
      v13 = *v11;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      v10 = v12;
    }

    v14 = v5 + *(v10 + 28);
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100151A8C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness, 4);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100151A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_10000A0A4(a1 + *(v17 + 32), v11, &qword_10041CA30, &qword_100374460);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000059A8(v11, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v11, v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100151CFC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v11 = *(*(v5 - 8) + 56);
  (v11)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + a1[8];

  return v11(v9, 1, 1, v5);
}

uint64_t sub_100151E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423930, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100151EAC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD18, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100151F18()
{
  sub_100015EDC(&qword_10041DD18, type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness);

  return Message.hash(into:)();
}

uint64_t sub_100151FD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _NameMap();
  sub_100036108(v5, a2);
  sub_100005DF0(v5, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v6 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10036C800;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "event_receipt_time";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.standard(_:);
  v13 = type metadata accessor for _NameMap.NameDescription();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "client";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v14();
  v16 = v10 + 2 * v7 + v6[14];
  *(v10 + 2 * v7) = 3;
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = 2;
  v14();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100152230()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0) + 20);
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
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry;
    v7 = &qword_10041DD00;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100152404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CAF0, &qword_100374520);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041CAF0, &qword_100374520);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAF0, &qword_100374520);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  sub_100015EDC(&qword_10041DD00, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
}

uint64_t sub_10015269C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423928, type metadata accessor for CLP_LogEntry_PrivateData_StepCount);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015273C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD30, type metadata accessor for CLP_LogEntry_PrivateData_StepCount);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001527A8()
{
  sub_100015EDC(&qword_10041DD30, type metadata accessor for CLP_LogEntry_PrivateData_StepCount);

  return Message.hash(into:)();
}

uint64_t sub_10015284C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A10);
  sub_100005DF0(v0, qword_100433A10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "z";
  *(v11 + 8) = 1;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100152AA0()
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
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0) + 28);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        break;
      case 2:
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_100152B64()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
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
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v8 = (v0 + *(v3 + 28));
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100152CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423920, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100152D68(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100152DD4()
{
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  return Message.hash(into:)();
}

uint64_t sub_100152E7C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A28);
  sub_100005DF0(v0, qword_100433A28);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "w";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "x";
  *(v10 + 8) = 1;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "y";
  *(v12 + 1) = 1;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "z";
  *(v14 + 1) = 1;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
          v12 = *(a4(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v8 = v4;
          v10 = *(a4(0) + 32);
        }
      }

      else if (result == 1)
      {
        v8 = v4;
        v11 = *(a4(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v8 = v4;
        v9 = *(a4(0) + 24);
      }

      v4 = v8;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100153268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  v8 = (v4 + *(result + 20));
  if (v8[1])
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v9 = *v8;
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  v10 = (v4 + v7[6]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v12 = (v4 + v7[7]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v14 = (v4 + v7[8]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001533F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423918, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100153494(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD60, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100153500()
{
  sub_100015EDC(&qword_10041DD60, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  return Message.hash(into:)();
}

uint64_t sub_1001535A8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A40);
  sub_100005DF0(v0, qword_100433A40);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10036D7C0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "magnetic_field";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "unassisted_magnetic_field";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "magnetic_heading";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "true_heading";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "accuracy";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "calibration_level";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "using_database_bias";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "magnitude";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "inclination";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "horizontal";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "quaternion";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001539EC()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel) = 8;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias) = 2;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  result = (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  qword_100444000 = v3;
  return result;
}

uint64_t sub_100153B8C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v50 = &v42 - v5;
  v6 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v42 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v1 + v10, 1, 1, v11);
  v43 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  v12(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, 1, 1, v11);
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  *v15 = 0;
  *(v15 + 4) = 1;
  v45 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel) = 8;
  v16 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias) = 2;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  v44 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  v46 = v16;
  v47 = v18;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  v48 = v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v49 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v22, v9, &qword_10041CAF8, &qword_100374528);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v10, &qword_10041CAF8, &qword_100374528);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v23, v9, &qword_10041CAF8, &qword_100374528);
  v24 = v43;
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v24, &qword_10041CAF8, &qword_100374528);
  swift_endAccess();
  v25 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  swift_beginAccess();
  LODWORD(v23) = *v25;
  LOBYTE(v25) = *(v25 + 4);
  swift_beginAccess();
  *v13 = v23;
  *(v13 + 4) = v25;
  v26 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  swift_beginAccess();
  LODWORD(v13) = *v26;
  LOBYTE(v26) = *(v26 + 4);
  swift_beginAccess();
  *v14 = v13;
  *(v14 + 4) = v26;
  v27 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  swift_beginAccess();
  LODWORD(v13) = *v27;
  LOBYTE(v27) = *(v27 + 4);
  swift_beginAccess();
  *v15 = v13;
  *(v15 + 4) = v27;
  v28 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + v28);
  v29 = v45;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  LOBYTE(v30) = *(a1 + v30);
  v31 = v46;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  swift_beginAccess();
  LODWORD(v31) = *v32;
  LOBYTE(v32) = *(v32 + 4);
  v33 = v44;
  swift_beginAccess();
  *v33 = v31;
  *(v33 + 4) = v32;
  v34 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  swift_beginAccess();
  LODWORD(v31) = *v34;
  LOBYTE(v34) = *(v34 + 4);
  v35 = v47;
  swift_beginAccess();
  *v35 = v31;
  *(v35 + 4) = v34;
  v36 = a1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  swift_beginAccess();
  LODWORD(v31) = *v36;
  LOBYTE(v36) = *(v36 + 4);
  v37 = v48;
  swift_beginAccess();
  *v37 = v31;
  *(v37 + 4) = v36;
  v38 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v39 = v50;
  sub_10000A0A4(a1 + v38, v50, &qword_10041CB00, &qword_100374530);

  v40 = v49;
  swift_beginAccess();
  sub_10000AD64(v39, v1 + v40, &qword_10041CB00, &qword_100374530);
  swift_endAccess();
  return v1;
}

uint64_t sub_10015415C()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, &qword_10041CAF8, &qword_100374528);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField, &qword_10041CAF8, &qword_100374528);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion, &qword_10041CB00, &qword_100374530);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100154220()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100153B8C(v6);
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

      if (result > 5)
      {
        break;
      }

      if (result > 2)
      {
        goto LABEL_24;
      }

      if (result == 1 || result == 2)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3;
        v15 = &qword_10041DD48;
        goto LABEL_20;
      }

LABEL_26:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 8)
    {
      if (result == 9 || result == 10)
      {
        goto LABEL_24;
      }

      if (result != 11)
      {
        goto LABEL_26;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
      v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
      v15 = &qword_10041DD60;
LABEL_20:
      sub_100015EDC(v15, v14);
      v1 = v13;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 6)
    {
      swift_beginAccess();
      sub_100198AA8();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else
    {
      if (result != 7)
      {
LABEL_24:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_25;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }

LABEL_25:
    swift_endAccess();
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_100154568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0) + 20));
  result = sub_100154820(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100154A48(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
    swift_beginAccess();
    if ((*(v12 + 4) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
    swift_beginAccess();
    if ((*(v14 + 4) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v16 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
    swift_beginAccess();
    if (*(v8 + v16) != 8)
    {
      sub_100198AA8();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal);
    sub_100154C70(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100154820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAF8, &qword_100374528);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAF8, &qword_100374528);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t sub_100154A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAF8, &qword_100374528);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAF8, &qword_100374528);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t sub_100154C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CB00, &qword_100374530);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB00, &qword_100374530);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  sub_100015EDC(&qword_10041DD60, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
}

BOOL sub_100154EDC(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v118 = *(v4 - 8);
  v119 = v4;
  v5 = *(v118 + 64);
  __chkstk_darwin(v4);
  v115 = &v113[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = sub_100024A2C(&qword_100423D48, &qword_100382FB0);
  v7 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v121 = &v113[-v8];
  v9 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v116 = &v113[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v120 = &v113[-v13];
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v15 = *(v14 - 8);
  v128 = v14;
  v129 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v123 = &v113[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100024A2C(&qword_100423D40, &qword_100382FA8);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v125 = &v113[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v23 = &v113[-v22];
  v24 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v122 = &v113[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v127 = &v113[-v29];
  v30 = __chkstk_darwin(v28);
  v126 = &v113[-v31];
  __chkstk_darwin(v30);
  v33 = &v113[-v32];
  v34 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v34, v33, &qword_10041CAF8, &qword_100374528);
  v35 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v124 = v18;
  v36 = *(v18 + 48);
  sub_10000A0A4(v33, v23, &qword_10041CAF8, &qword_100374528);
  v37 = &a2[v35];
  v39 = v128;
  v38 = v129;
  sub_10000A0A4(v37, &v23[v36], &qword_10041CAF8, &qword_100374528);
  v42 = *(v38 + 48);
  v41 = v38 + 48;
  v40 = v42;
  if (v42(v23, 1, v39) == 1)
  {

    sub_1000059A8(v33, &qword_10041CAF8, &qword_100374528);
    v43 = v40(&v23[v36], 1, v39);
    v44 = a1;
    if (v43 == 1)
    {
      v129 = v41;
      sub_1000059A8(v23, &qword_10041CAF8, &qword_100374528);
      goto LABEL_9;
    }

LABEL_6:
    sub_1000059A8(v23, &qword_100423D40, &qword_100382FA8);
    goto LABEL_15;
  }

  v45 = a1;
  v46 = v126;
  sub_10000A0A4(v23, v126, &qword_10041CAF8, &qword_100374528);
  if (v40(&v23[v36], 1, v39) == 1)
  {

    sub_1000059A8(v33, &qword_10041CAF8, &qword_100374528);
    sub_100015F24(v46, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_6;
  }

  v129 = v41;
  v47 = &v23[v36];
  v48 = v123;
  sub_1000112AC(v47, v123, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);

  v114 = sub_100181958(v46, v48);
  v49 = v48;
  v44 = v45;
  sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v33, &qword_10041CAF8, &qword_100374528);
  sub_100015F24(v46, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v23, &qword_10041CAF8, &qword_100374528);
  if ((v114 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v126 = a2;
  v50 = v39;
  v51 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  v52 = v127;
  sub_10000A0A4(v44 + v51, v127, &qword_10041CAF8, &qword_100374528);
  v53 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__unassistedMagneticField;
  swift_beginAccess();
  v54 = v125;
  v55 = *(v124 + 48);
  sub_10000A0A4(v52, v125, &qword_10041CAF8, &qword_100374528);
  v56 = &v126[v53];
  v57 = v126;
  sub_10000A0A4(v56, &v54[v55], &qword_10041CAF8, &qword_100374528);
  if (v40(v54, 1, v50) == 1)
  {
    sub_1000059A8(v52, &qword_10041CAF8, &qword_100374528);
    if (v40(&v54[v55], 1, v50) == 1)
    {
      sub_1000059A8(v54, &qword_10041CAF8, &qword_100374528);
      goto LABEL_18;
    }

LABEL_14:
    sub_1000059A8(v54, &qword_100423D40, &qword_100382FA8);
    goto LABEL_15;
  }

  v58 = v122;
  sub_10000A0A4(v54, v122, &qword_10041CAF8, &qword_100374528);
  if (v40(&v54[v55], 1, v50) == 1)
  {
    sub_1000059A8(v127, &qword_10041CAF8, &qword_100374528);
    sub_100015F24(v58, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_14;
  }

  v60 = v123;
  sub_1000112AC(&v54[v55], v123, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v61 = sub_100181958(v58, v60);
  sub_100015F24(v60, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v127, &qword_10041CAF8, &qword_100374528);
  sub_100015F24(v58, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v54, &qword_10041CAF8, &qword_100374528);
  if ((v61 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v62 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading;
  swift_beginAccess();
  v63 = *v62;
  v64 = *(v62 + 4);
  v65 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticHeading];
  swift_beginAccess();
  v66 = *(v65 + 4);
  if (v64)
  {
    if ((v65[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v65[1] & 1) != 0 || v63 != *v65)
  {
    goto LABEL_15;
  }

  v67 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading;
  swift_beginAccess();
  v68 = *v67;
  v69 = *(v67 + 4);
  v70 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__trueHeading];
  swift_beginAccess();
  v71 = *(v70 + 4);
  if (v69)
  {
    if ((v70[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v70[1] & 1) != 0 || v68 != *v70)
  {
    goto LABEL_15;
  }

  v72 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy;
  swift_beginAccess();
  v73 = *v72;
  v74 = *(v72 + 4);
  v75 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__accuracy];
  swift_beginAccess();
  v76 = *(v75 + 4);
  if (v74)
  {
    if ((v75[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v75[1] & 1) != 0 || v73 != *v75)
  {
    goto LABEL_15;
  }

  v77 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  v78 = *(v44 + v77);
  v79 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__calibrationLevel;
  swift_beginAccess();
  v80 = v57[v79];
  if (v78 == 8)
  {
    if (v80 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v80 == 8 || v78 != v80)
  {
    goto LABEL_15;
  }

  v81 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  v82 = *(v44 + v81);
  v83 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__usingDatabaseBias;
  swift_beginAccess();
  v84 = v57[v83];
  if (v82 == 2)
  {
    if (v84 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v84 == 2 || ((v82 ^ v84) & 1) != 0)
  {
    goto LABEL_15;
  }

  v85 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude;
  swift_beginAccess();
  v86 = *v85;
  v87 = *(v85 + 4);
  v88 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magnitude];
  swift_beginAccess();
  v89 = *(v88 + 4);
  if (v87)
  {
    if ((v88[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v88[1] & 1) != 0 || v86 != *v88)
  {
    goto LABEL_15;
  }

  v90 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination;
  swift_beginAccess();
  v91 = *v90;
  v92 = *(v90 + 4);
  v93 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__inclination];
  swift_beginAccess();
  v94 = *(v93 + 4);
  if (v92)
  {
    if ((v93[1] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v93[1] & 1) != 0 || v91 != *v93)
  {
    goto LABEL_15;
  }

  v95 = v44 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal;
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 4);
  v98 = &v57[OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontal];
  swift_beginAccess();
  v99 = *(v98 + 4);
  if (v97)
  {
    if (v98[1])
    {
      goto LABEL_58;
    }

LABEL_15:

    return 0;
  }

  if ((v98[1] & 1) != 0 || v96 != *v98)
  {
    goto LABEL_15;
  }

LABEL_58:
  v100 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v101 = v120;
  sub_10000A0A4(v44 + v100, v120, &qword_10041CB00, &qword_100374530);
  v102 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  v103 = *(v117 + 48);
  v104 = v101;
  v105 = v121;
  sub_10000A0A4(v104, v121, &qword_10041CB00, &qword_100374530);
  sub_10000A0A4(&v57[v102], &v105[v103], &qword_10041CB00, &qword_100374530);
  v106 = v119;
  v107 = *(v118 + 48);
  if (v107(v105, 1, v119) != 1)
  {
    sub_10000A0A4(v105, v116, &qword_10041CB00, &qword_100374530);
    if (v107(&v105[v103], 1, v106) == 1)
    {

      sub_1000059A8(v120, &qword_10041CB00, &qword_100374530);
      sub_100015F24(v116, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
      goto LABEL_63;
    }

    v108 = v121;
    v109 = &v121[v103];
    v110 = v115;
    sub_1000112AC(v109, v115, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    v111 = v116;
    v112 = sub_100183B70(v116, v110, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

    sub_100015F24(v110, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    sub_1000059A8(v120, &qword_10041CB00, &qword_100374530);
    sub_100015F24(v111, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    sub_1000059A8(v108, &qword_10041CB00, &qword_100374530);
    return (v112 & 1) != 0;
  }

  sub_1000059A8(v120, &qword_10041CB00, &qword_100374530);
  if (v107(&v105[v103], 1, v106) != 1)
  {
LABEL_63:
    sub_1000059A8(v121, &qword_100423D48, &qword_100382FB0);
    return 0;
  }

  sub_1000059A8(v121, &qword_10041CB00, &qword_100374530);
  return 1;
}

uint64_t sub_100155D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423910, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100155DC8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DD78, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100155E34()
{
  sub_100015EDC(&qword_10041DD78, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);

  return Message.hash(into:)();
}

uint64_t sub_100155ED8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A58);
  sub_100005DF0(v0, qword_100433A58);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "compass";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "compass_cal_quality";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "gyro_magnitude";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "is_location_available";
  *(v15 + 8) = 21;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001561C0()
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
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v9 = &qword_10041C7B8;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
          v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass;
          v9 = &qword_10041DD78;
        }

        sub_100015EDC(v9, v8);
        v0 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularFloatField(value:)();
            break;
          case 4:
            v3 = v0;
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0) + 32);
            goto LABEL_5;
          case 5:
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0) + 36);
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100156398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
  if (!v4)
  {
    sub_1001564CC(v5, a1, a2, a3);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
    v11 = v5 + *(v10 + 28);
    if ((*(v11 + 4) & 1) == 0)
    {
      v12 = v10;
      v13 = *v11;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
      v10 = v12;
    }

    v14 = v5 + *(v10 + 32);
    if ((*(v14 + 4) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001564CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB08, &qword_100374538);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CB08, &qword_100374538);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB08, &qword_100374538);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
  sub_100015EDC(&qword_10041DD78, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
}

uint64_t sub_100156734@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a1[8];
  v10 = a2 + a1[7];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_100156848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423908, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001568E8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CD90, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100156954()
{
  sub_100015EDC(&qword_10041CD90, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);

  return Message.hash(into:)();
}

uint64_t sub_1001569FC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A70);
  sub_100005DF0(v0, qword_100433A70);
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

uint64_t sub_100156C14()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Compass(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
        sub_100015EDC(&qword_10041CD90, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100156D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100156E74(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
      sub_100015EDC(&qword_10041CD90, type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_Compass(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100156E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Compass(0);
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

uint64_t sub_100157174(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423900, type metadata accessor for CLP_LogEntry_PrivateData_Compass);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100157214(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DDA0, type metadata accessor for CLP_LogEntry_PrivateData_Compass);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100157280()
{
  sub_100015EDC(&qword_10041DDA0, type metadata accessor for CLP_LogEntry_PrivateData_Compass);

  return Message.hash(into:)();
}

uint64_t sub_100157324()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433A88);
  sub_100005DF0(v0, qword_100433A88);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "quaternion";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "user_acceleration";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "rotation_rate";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "magnetic_field";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "magnetic_field_calibration_level";
  *(v15 + 1) = 32;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "doing_yaw_correction";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "doing_bias_estimation";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_initialized";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "heading";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001576FC()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3 + v6, 1, 1, v7);
  v8(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate, 1, 1, v7);
  result = (v8)(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel) = 8;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p) = 2;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  *v10 = 0;
  *(v10 + 4) = 1;
  qword_100444028 = v3;
  return result;
}

uint64_t sub_100157874()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion, &qword_10041CB00, &qword_100374530);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration, &qword_10041CAF8, &qword_100374528);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate, &qword_10041CAF8, &qword_100374528);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, &qword_10041CAF8, &qword_100374528);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100157950()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100175E04(v6);

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

      if (result <= 4)
      {
        break;
      }

      if (result > 6)
      {
        if (result != 7 && result != 8)
        {
          if (result != 9)
          {
            goto LABEL_26;
          }

          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_25;
        }

LABEL_24:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_25;
      }

      if (result != 5)
      {
        goto LABEL_24;
      }

      swift_beginAccess();
      sub_100198AA8();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_25:
      swift_endAccess();
LABEL_26:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4;
        v15 = &qword_10041DD60;
LABEL_21:
        sub_100015EDC(v15, v14);
        v1 = v13;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_25;
      }

      if (result != 2)
      {
        goto LABEL_26;
      }
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
    v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3;
    v15 = &qword_10041DD48;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100157C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0) + 20));
  result = sub_100157E08(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100158030(v8, a1, a2, a3);
    sub_100158258(v8, a1, a2, a3);
    sub_100158480(v8, a1, a2, a3);
    sub_1001586A8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel, sub_100198AA8);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100157E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CB00, &qword_100374530);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB00, &qword_100374530);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  sub_100015EDC(&qword_10041DD60, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
}

uint64_t sub_100158030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAF8, &qword_100374528);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAF8, &qword_100374528);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t sub_100158258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAF8, &qword_100374528);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAF8, &qword_100374528);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t sub_100158480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CAF8, &qword_100374528);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CAF8, &qword_100374528);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_100015EDC(&qword_10041DD48, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
}

uint64_t sub_1001586A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 8)
  {
    v10 = *(a1 + v8);
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001587AC(uint64_t a1, uint64_t a2)
{
  v135 = a2;
  v132 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v129 = *(v132 - 8);
  v3 = *(v129 + 64);
  __chkstk_darwin(v132);
  v124 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100024A2C(&qword_100423D40, &qword_100382FA8);
  v5 = *(*(v131 - 8) + 64);
  v6 = __chkstk_darwin(v131);
  v120 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v123 = &v119 - v9;
  __chkstk_darwin(v8);
  v128 = &v119 - v10;
  v11 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v119 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v122 = &v119 - v16;
  v17 = __chkstk_darwin(v15);
  v121 = &v119 - v18;
  v19 = __chkstk_darwin(v17);
  v126 = &v119 - v20;
  v21 = __chkstk_darwin(v19);
  v125 = &v119 - v22;
  __chkstk_darwin(v21);
  v130 = &v119 - v23;
  v133 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  v24 = *(v133 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v133);
  v127 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100024A2C(&qword_100423D48, &qword_100382FB0);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v31 = &v119 - v30;
  v32 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v134 = (&v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v37 = &v119 - v36;
  v38 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v38, v37, &qword_10041CB00, &qword_100374530);
  v39 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v40 = v135;
  swift_beginAccess();
  v41 = *(v28 + 56);
  sub_10000A0A4(v37, v31, &qword_10041CB00, &qword_100374530);
  v42 = v40;
  v43 = v133;
  v44 = v42 + v39;
  v45 = v42;
  sub_10000A0A4(v44, &v31[v41], &qword_10041CB00, &qword_100374530);
  v46 = *(v24 + 48);
  if (v46(v31, 1, v43) == 1)
  {

    sub_1000059A8(v37, &qword_10041CB00, &qword_100374530);
    v47 = v45;
    if (v46(&v31[v41], 1, v43) == 1)
    {
      sub_1000059A8(v31, &qword_10041CB00, &qword_100374530);
      goto LABEL_8;
    }

LABEL_6:
    v48 = &qword_100423D48;
    v49 = &qword_100382FB0;
    v50 = v31;
LABEL_14:
    sub_1000059A8(v50, v48, v49);
    goto LABEL_15;
  }

  sub_10000A0A4(v31, v134, &qword_10041CB00, &qword_100374530);
  if (v46(&v31[v41], 1, v43) == 1)
  {

    sub_1000059A8(v37, &qword_10041CB00, &qword_100374530);
    sub_100015F24(v134, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
    goto LABEL_6;
  }

  v51 = v127;
  sub_1000112AC(&v31[v41], v127, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);

  v47 = v45;

  v52 = v134;
  v53 = sub_100183B70(v134, v51, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  sub_1000059A8(v37, &qword_10041CB00, &qword_100374530);
  sub_100015F24(v52, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4);
  sub_1000059A8(v31, &qword_10041CB00, &qword_100374530);
  if ((v53 & 1) == 0)
  {
LABEL_15:

LABEL_16:

    return 0;
  }

LABEL_8:
  v54 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  v55 = v130;
  sub_10000A0A4(a1 + v54, v130, &qword_10041CAF8, &qword_100374528);
  v56 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  v57 = *(v131 + 48);
  v58 = v128;
  sub_10000A0A4(v55, v128, &qword_10041CAF8, &qword_100374528);
  sub_10000A0A4(v47 + v56, v58 + v57, &qword_10041CAF8, &qword_100374528);
  v59 = *(v129 + 48);
  v60 = v132;
  if ((v59)(v58, 1, v132) == 1)
  {
    sub_1000059A8(v55, &qword_10041CAF8, &qword_100374528);
    if ((v59)(v58 + v57, 1, v60) == 1)
    {
      v134 = v59;
      sub_1000059A8(v58, &qword_10041CAF8, &qword_100374528);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v61 = v125;
  sub_10000A0A4(v58, v125, &qword_10041CAF8, &qword_100374528);
  if ((v59)(v58 + v57, 1, v60) == 1)
  {
    sub_1000059A8(v130, &qword_10041CAF8, &qword_100374528);
    sub_100015F24(v61, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
LABEL_13:
    v48 = &qword_100423D40;
    v49 = &qword_100382FA8;
    v50 = v58;
    goto LABEL_14;
  }

  v134 = v59;
  v63 = v58 + v57;
  v64 = v124;
  sub_1000112AC(v63, v124, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v65 = sub_100181958(v61, v64);
  sub_100015F24(v64, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v130, &qword_10041CAF8, &qword_100374528);
  sub_100015F24(v61, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v58, &qword_10041CAF8, &qword_100374528);
  if ((v65 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v66 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  v67 = v126;
  sub_10000A0A4(a1 + v66, v126, &qword_10041CAF8, &qword_100374528);
  v68 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  v69 = *(v131 + 48);
  v70 = v123;
  sub_10000A0A4(v67, v123, &qword_10041CAF8, &qword_100374528);
  sub_10000A0A4(v47 + v68, v70 + v69, &qword_10041CAF8, &qword_100374528);
  v71 = v132;
  v72 = v134;
  if ((v134)(v70, 1, v132) == 1)
  {
    sub_1000059A8(v67, &qword_10041CAF8, &qword_100374528);
    v73 = v72(v70 + v69, 1, v71);
    v74 = v135;
    if (v73 == 1)
    {
      v134 = v72;
      sub_1000059A8(v70, &qword_10041CAF8, &qword_100374528);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v75 = v121;
  sub_10000A0A4(v70, v121, &qword_10041CAF8, &qword_100374528);
  if (v72(v70 + v69, 1, v71) == 1)
  {
    sub_1000059A8(v126, &qword_10041CAF8, &qword_100374528);
    sub_100015F24(v75, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
LABEL_24:
    sub_1000059A8(v70, &qword_100423D40, &qword_100382FA8);
    goto LABEL_15;
  }

  v134 = v72;
  v76 = v70 + v69;
  v77 = v124;
  sub_1000112AC(v76, v124, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v78 = v70;
  v79 = sub_100181958(v75, v77);
  sub_100015F24(v77, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v126, &qword_10041CAF8, &qword_100374528);
  sub_100015F24(v75, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v78, &qword_10041CAF8, &qword_100374528);
  v74 = v135;
  if ((v79 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_27:
  v80 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v81 = v122;
  sub_10000A0A4(a1 + v80, v122, &qword_10041CAF8, &qword_100374528);
  v82 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  v83 = *(v131 + 48);
  v84 = v120;
  sub_10000A0A4(v81, v120, &qword_10041CAF8, &qword_100374528);
  v85 = v74 + v82;
  v86 = v83;
  v87 = v84;
  sub_10000A0A4(v85, v84 + v83, &qword_10041CAF8, &qword_100374528);
  v88 = v132;
  v89 = v134;
  if ((v134)(v84, 1, v132) == 1)
  {
    sub_1000059A8(v81, &qword_10041CAF8, &qword_100374528);
    if (v89(v84 + v86, 1, v88) == 1)
    {
      sub_1000059A8(v84, &qword_10041CAF8, &qword_100374528);
      v90 = v135;
      goto LABEL_34;
    }

LABEL_32:
    sub_1000059A8(v87, &qword_100423D40, &qword_100382FA8);

    goto LABEL_16;
  }

  v91 = v84;
  v92 = v119;
  sub_10000A0A4(v91, v119, &qword_10041CAF8, &qword_100374528);
  if (v89(v87 + v86, 1, v88) == 1)
  {
    sub_1000059A8(v122, &qword_10041CAF8, &qword_100374528);
    sub_100015F24(v92, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
    goto LABEL_32;
  }

  v93 = v124;
  sub_1000112AC(v87 + v86, v124, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  v94 = v87;
  v95 = sub_100181958(v92, v93);
  sub_100015F24(v93, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v122, &qword_10041CAF8, &qword_100374528);
  sub_100015F24(v92, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3);
  sub_1000059A8(v94, &qword_10041CAF8, &qword_100374528);
  v90 = v135;
  if ((v95 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:
  v96 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  v97 = *(a1 + v96);
  v98 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  v99 = *(v90 + v98);
  if (v97 == 8)
  {
    if (v99 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v99 == 8 || v97 != v99)
  {
    goto LABEL_15;
  }

  v100 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  v101 = *(a1 + v100);
  v102 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  v103 = *(v90 + v102);
  if (v101 == 2)
  {
    if (v103 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v103 == 2 || ((v101 ^ v103) & 1) != 0)
  {
    goto LABEL_15;
  }

  v104 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  v105 = *(a1 + v104);
  v106 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  v107 = *(v90 + v106);
  if (v105 == 2)
  {
    if (v107 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v107 == 2 || ((v105 ^ v107) & 1) != 0)
  {
    goto LABEL_15;
  }

  v108 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  v109 = *(a1 + v108);
  v110 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  v111 = *(v90 + v110);
  if (v109 == 2)
  {
    if (v111 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v111 == 2 || ((v109 ^ v111) & 1) != 0)
  {
    goto LABEL_15;
  }

  v112 = a1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  v113 = *v112;
  v114 = *(v112 + 4);

  v115 = v90 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  v116 = *v115;
  v117 = *(v115 + 4);

  if (v114)
  {
    if (!v117)
    {
      return 0;
    }
  }

  else
  {
    if (v113 == v116)
    {
      v118 = v117;
    }

    else
    {
      v118 = 1;
    }

    if (v118)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100159788(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238F8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100159828(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DDB8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100159894()
{
  sub_100015EDC(&qword_10041DDB8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);

  return Message.hash(into:)();
}

uint64_t sub_1001599A0()
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
      v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t sub_100159A2C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  v3 = (v0 + *(result + 20));
  if (v3[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *v3;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100159B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_100159B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238F0, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100159C1C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DDD0, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100159C88()
{
  sub_100015EDC(&qword_10041DDD0, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);

  return Message.hash(into:)();
}

uint64_t sub_100159D2C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433AB8);
  sub_100005DF0(v0, qword_100433AB8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "timestamp";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "device_motion";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "fsync";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "client_id";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mode";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "status";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "accuracy";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "vision_compass_bias";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015A0C4()
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
            v10 = v0;
            v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 44);
          }

          else
          {
            if (result != 8)
            {
              goto LABEL_5;
            }

            v10 = v0;
            v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 48);
          }

          v0 = v10;
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }

        else
        {
          if (result != 5)
          {
            v4 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 40);
            type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
            v6 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus;
            v7 = &qword_10041DDD0;
            goto LABEL_15;
          }

          v13 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 36);
          sub_100198A54();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 20);
            type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
            sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_5;
            }

            v4 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 24);
            type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
            v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion;
            v7 = &qword_10041DDB8;
LABEL_15:
            sub_100015EDC(v7, v6);
            v0 = v4;
          }

          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 3)
        {
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else
        {
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0) + 32);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015A390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
  if (!v4)
  {
    sub_10015A520(v5, a1, a2, a3);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
    if (*(v5 + *(v10 + 28)) != 2)
    {
      v11 = v10;
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      v10 = v11;
    }

    v12 = (v5 + *(v10 + 32));
    if ((v12[1] & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    sub_10015A73C(v5);
    sub_10015A7C8(v5, a1, a2, a3);
    sub_10015A9E4(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
    sub_10015AA60(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10015A520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB10, &qword_100374540);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CB10, &qword_100374540);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB10, &qword_100374540);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  sub_100015EDC(&qword_10041DDB8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
}

uint64_t sub_10015A73C(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  if (*(a1 + *(result + 36)) != 5)
  {
    v3 = *(a1 + *(result + 36));
    sub_100198A54();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10015A7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB18, &qword_100374548);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  sub_10000A0A4(a1 + *(v14 + 40), v8, &qword_10041CB18, &qword_100374548);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB18, &qword_100374548);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
  sub_100015EDC(&qword_10041DDD0, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
}

uint64_t sub_10015A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 44));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10015AA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 48));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10015AB28@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  *(a2 + a1[9]) = 5;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_10015AC94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238E8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015AD34(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CDB8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015ADA0()
{
  sub_100015EDC(&qword_10041CDB8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);

  return Message.hash(into:)();
}

uint64_t sub_10015AE48()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433AD0);
  sub_100005DF0(v0, qword_100433AD0);
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

uint64_t sub_10015B060()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
        sub_100015EDC(&qword_10041CDB8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015B1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_10015B2C0(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
      sub_100015EDC(&qword_10041CDB8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10015B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion(0);
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

uint64_t sub_10015B5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238E0, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015B660(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DDF8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015B6CC()
{
  sub_100015EDC(&qword_10041DDF8, type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotion);

  return Message.hash(into:)();
}

uint64_t sub_10015B770()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433AE8);
  sub_100005DF0(v0, qword_100433AE8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "x";
  *(v5 + 8) = 1;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "y";
  *(v9 + 8) = 1;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "z";
  *(v11 + 1) = 1;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "magnitude";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "horizontal";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "declination";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "inclination";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "timestamp";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015BAF4()
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
          v3 = v0;
          if (result == 5)
          {
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 36);
          }

          else
          {
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          v3 = v0;
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 44);
          goto LABEL_5;
        }

        if (result == 8)
        {
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 48);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          v3 = v0;
          if (result == 3)
          {
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 28);
          }

          else
          {
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 32);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 20);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
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

  sub_100143020(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_10015BE7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_10015BEF8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_10015BF74(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10015BE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10015BEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 44));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10015BF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  sub_10000A0A4(a1 + *(v14 + 48), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10015C1DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[11];
  v14 = a1[12];
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v17 = *(*(v16 - 8) + 56);

  return v17(a2 + v14, 1, 1, v16);
}

uint64_t sub_10015C2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238D8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015C388(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DE10, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015C3F4()
{
  sub_100015EDC(&qword_10041DE10, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);

  return Message.hash(into:)();
}

uint64_t sub_10015C4BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = type metadata accessor for _NameMap();
  sub_100036108(v9, a2);
  sub_100005DF0(v9, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v10 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100374440;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015C674()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
        sub_100015EDC(&qword_10041DE10, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015C760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10015C7B8(v3, a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10015C7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB20, &qword_100374550);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_10041CB20, &qword_100374550);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB20, &qword_100374550);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_100015EDC(&qword_10041DE10, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
}

uint64_t sub_10015CA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238D0, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015CB08(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DE28, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015CB74()
{
  sub_100015EDC(&qword_10041DE28, type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData);

  return Message.hash(into:)();
}

uint64_t sub_10015CC18()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B18);
  sub_100005DF0(v0, qword_100433B18);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10036C7F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "mac";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ssid";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "rssi_db";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "mode";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "channel";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "age_s";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_apple_personal_hotspot";
  *(v19 + 1) = 25;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_moving";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "band";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "frequency_khz";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015D040()
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

      if (result > 5)
      {
        break;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 28);
          dispatch thunk of Decoder.decodeSingularSInt32Field(value:)();
          goto LABEL_5;
        }

        if (result != 4)
        {
          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 36);
LABEL_17:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        v13 = v0;
        v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 32);
        sub_100198A00();
LABEL_29:
        v0 = v13;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 20);
        dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
      }

      else if (result == 2)
      {
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 24);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 7)
    {
      if (result == 6)
      {
        v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 40);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_5;
      }

      v8 = v0;
      v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 44);
      goto LABEL_26;
    }

    if (result == 8)
    {
      v8 = v0;
      v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 48);
LABEL_26:
      v0 = v8;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      goto LABEL_5;
    }

    if (result != 9)
    {
      if (result != 10)
      {
        goto LABEL_5;
      }

      v4 = v0;
      v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 56);
      goto LABEL_17;
    }

    v13 = v0;
    v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0) + 52);
    sub_100016F4C();
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_10015D2F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  *(a2 + v8) = 4;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v13) = 2;
  v14 = a1[14];
  *(a2 + a1[13]) = 4;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_10015D3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238C8, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015D44C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015D4B8()
{
  sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);

  return Message.hash(into:)();
}

uint64_t sub_10015D560()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B30);
  sub_100005DF0(v0, qword_100433B30);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_associated";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ap";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015D774()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0) + 20);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
        sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015D8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  *(a2 + v4) = 2;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_10015D974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238C0, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015DA14(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DE50, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015DA80()
{
  sub_100015EDC(&qword_10041DE50, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);

  return Message.hash(into:)();
}

uint64_t sub_10015DB28()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B48);
  sub_100005DF0(v0, qword_100433B48);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "scan_timestamp";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "access_point";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015DD38()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
        sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015DF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238B8, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015E008(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041C790, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015E074()
{
  sub_100015EDC(&qword_10041C790, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);

  return Message.hash(into:)();
}

uint64_t sub_10015E118()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B60);
  sub_100005DF0(v0, qword_100433B60);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10036D7C0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
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
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "scan_type";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "power";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "associated_state";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "scan";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "simulated";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "available";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "is_involuntary_link_down";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "is_ap_awake";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015E560()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 15;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType) = 15;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power) = 2;
  v7 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  result = (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake) = 2;
  qword_100444080 = v3;
  return result;
}

uint64_t sub_10015E6F0()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10000FF80(v6);

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

      if (result <= 5)
      {
        break;
      }

      if (result <= 8)
      {
        if (result == 6)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState;
          v15 = &qword_10041DE50;
        }

        else
        {
          if (result != 7)
          {
            goto LABEL_30;
          }

          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult;
          v15 = &qword_10041C790;
        }

LABEL_29:
        sub_100015EDC(v15, v14);
        v1 = v13;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_31;
      }

      if (result == 9 || result == 10 || result == 11)
      {
        goto LABEL_30;
      }

LABEL_32:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v15 = &qword_10041C7B8;
        goto LABEL_29;
      }

      if (result != 2)
      {
        goto LABEL_32;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }

    else
    {
      if (result == 3)
      {
        v16 = v1;
        swift_beginAccess();
        sub_100015F84();
      }

      else
      {
        if (result != 4)
        {
LABEL_30:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_31;
        }

        v16 = v1;
        swift_beginAccess();
        sub_1001989AC();
      }

      v1 = v16;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

LABEL_31:
    swift_endAccess();
    goto LABEL_32;
  }

  return result;
}

BOOL sub_10015EB00(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = *(v120 + 64);
  __chkstk_darwin(v3);
  v116 = (&v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = sub_100024A2C(&qword_100423D10, &qword_100382F78);
  v6 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v122 = &v115 - v7;
  v8 = sub_100024A2C(&qword_10041CB38, &qword_100374568);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v117 = (&v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v129 = &v115 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v124 = *(v13 - 8);
  v125 = v13;
  v14 = *(v124 + 64);
  __chkstk_darwin(v13);
  v118 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_100024A2C(&qword_100423D18, &qword_100382F80);
  v16 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v126 = &v115 - v17;
  v18 = sub_100024A2C(&qword_10041CB30, &qword_100374560);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v128 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v130 = &v115 - v22;
  v132 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v23 = *(v132 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v132);
  v127 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v30 = &v115 - v29;
  v31 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v131 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v115 - v35;
  v37 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v37, v36, &qword_10041CA30, &qword_100374460);
  v38 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v39 = v133;
  swift_beginAccess();
  v40 = *(v27 + 56);
  sub_10000A0A4(v36, v30, &qword_10041CA30, &qword_100374460);
  v41 = v39 + v38;
  v42 = v132;
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

  v44 = v131;
  sub_10000A0A4(v30, v131, &qword_10041CA30, &qword_100374460);
  if (v43(&v30[v40], 1, v42) == 1)
  {

    sub_1000059A8(v36, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v49 = v127;
  sub_1000112AC(&v30[v40], v127, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

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
  v51 = (a1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v52 = *v51;
  v53 = *(v51 + 4);
  v54 = v133 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v55 = *(v54 + 4);
  if (v53)
  {
    v56 = v128;
    v57 = v129;
    v58 = v130;
    if ((*(v54 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v56 = v128;
    v57 = v129;
    v58 = v130;
    if ((*(v54 + 4) & 1) != 0 || v52 != *v54)
    {
      goto LABEL_8;
    }
  }

  v59 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  v60 = *(a1 + v59);
  v61 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  v62 = v133;
  swift_beginAccess();
  v63 = *(v62 + v61);
  if (v60 == 15)
  {
    if (v63 != 15)
    {
      goto LABEL_8;
    }
  }

  else if (v63 == 15 || v60 != v63)
  {
    goto LABEL_8;
  }

  v64 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  swift_beginAccess();
  v65 = *(a1 + v64);
  v66 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  v67 = v133;
  swift_beginAccess();
  v68 = *(v67 + v66);
  if (v65 == 15)
  {
    if (v68 != 15)
    {
      goto LABEL_8;
    }
  }

  else if (v68 == 15 || v65 != v68)
  {
    goto LABEL_8;
  }

  v69 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  swift_beginAccess();
  v70 = *(a1 + v69);
  v71 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  v72 = v133;
  swift_beginAccess();
  v73 = *(v72 + v71);
  if (v70 == 2)
  {
    if (v73 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v73 == 2 || ((v70 ^ v73) & 1) != 0)
  {
    goto LABEL_8;
  }

  v74 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v74, v58, &qword_10041CB30, &qword_100374560);
  v75 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v76 = v133;
  swift_beginAccess();
  v77 = *(v123 + 48);
  v78 = v58;
  v79 = v126;
  sub_10000A0A4(v78, v126, &qword_10041CB30, &qword_100374560);
  v80 = v79;
  sub_10000A0A4(v76 + v75, v79 + v77, &qword_10041CB30, &qword_100374560);
  v81 = v125;
  v82 = *(v124 + 48);
  if (v82(v79, 1, v125) == 1)
  {
    sub_1000059A8(v130, &qword_10041CB30, &qword_100374560);
    if (v82(v79 + v77, 1, v81) == 1)
    {
      sub_1000059A8(v79, &qword_10041CB30, &qword_100374560);
      goto LABEL_38;
    }

LABEL_36:
    v45 = &qword_100423D18;
    v46 = &qword_100382F80;
LABEL_44:
    v47 = v80;
    goto LABEL_7;
  }

  sub_10000A0A4(v79, v56, &qword_10041CB30, &qword_100374560);
  if (v82(v79 + v77, 1, v81) == 1)
  {
    sub_1000059A8(v130, &qword_10041CB30, &qword_100374560);
    sub_100015F24(v56, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
    goto LABEL_36;
  }

  v83 = v118;
  sub_1000112AC(v79 + v77, v118, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  v84 = sub_10017B31C(v56, v83);
  sub_100015F24(v83, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  sub_1000059A8(v130, &qword_10041CB30, &qword_100374560);
  sub_100015F24(v56, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  sub_1000059A8(v79, &qword_10041CB30, &qword_100374560);
  if ((v84 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_38:
  v85 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  sub_10000A0A4(a1 + v85, v57, &qword_10041CB38, &qword_100374568);
  v86 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v87 = v133;
  swift_beginAccess();
  v88 = *(v119 + 48);
  v89 = v122;
  sub_10000A0A4(v57, v122, &qword_10041CB38, &qword_100374568);
  v80 = v89;
  sub_10000A0A4(v87 + v86, v89 + v88, &qword_10041CB38, &qword_100374568);
  v90 = v121;
  v91 = *(v120 + 48);
  if (v91(v89, 1, v121) == 1)
  {
    sub_1000059A8(v57, &qword_10041CB38, &qword_100374568);
    if (v91(v89 + v88, 1, v90) == 1)
    {
      sub_1000059A8(v89, &qword_10041CB38, &qword_100374568);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v92 = v117;
  sub_10000A0A4(v80, v117, &qword_10041CB38, &qword_100374568);
  if (v91(v80 + v88, 1, v90) == 1)
  {
    sub_1000059A8(v57, &qword_10041CB38, &qword_100374568);
    sub_100015F24(v92, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
LABEL_43:
    v45 = &qword_100423D10;
    v46 = &qword_100382F78;
    goto LABEL_44;
  }

  v93 = v116;
  sub_1000112AC(v80 + v88, v116, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  v94 = sub_10017E5AC(v92, v93, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, sub_10017B7A0);
  sub_100015F24(v93, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  sub_1000059A8(v57, &qword_10041CB38, &qword_100374568);
  sub_100015F24(v92, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  sub_1000059A8(v80, &qword_10041CB38, &qword_100374568);
  if ((v94 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_46:
  v95 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  swift_beginAccess();
  v96 = *(a1 + v95);
  v97 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  v98 = v133;
  swift_beginAccess();
  v99 = *(v98 + v97);
  if (v96 == 2)
  {
    if (v99 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v99 == 2 || ((v96 ^ v99) & 1) != 0)
  {
    goto LABEL_8;
  }

  v100 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  swift_beginAccess();
  v101 = *(a1 + v100);
  v102 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  v103 = v133;
  swift_beginAccess();
  v104 = *(v103 + v102);
  if (v101 == 2)
  {
    if (v104 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v104 == 2 || ((v101 ^ v104) & 1) != 0)
  {
    goto LABEL_8;
  }

  v105 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  swift_beginAccess();
  v106 = *(a1 + v105);
  v107 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  v108 = v133;
  swift_beginAccess();
  v109 = *(v108 + v107);
  if (v106 == 2)
  {
    if (v109 == 2)
    {
      goto LABEL_61;
    }

LABEL_8:

    return 0;
  }

  if (v109 == 2 || ((v106 ^ v109) & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_61:
  v110 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  swift_beginAccess();
  v111 = *(a1 + v110);

  v112 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  v113 = v133;
  swift_beginAccess();
  v114 = *(v113 + v112);

  if (v111 != 2)
  {
    return v114 != 2 && ((v111 ^ v114) & 1) == 0;
  }

  return v114 == 2;
}

uint64_t sub_10015FA24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238B0, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015FAC4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_1004183D8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015FB30()
{
  sub_100015EDC(&qword_1004183D8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);

  return Message.hash(into:)();
}

uint64_t sub_10015FBD4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B78);
  sub_100005DF0(v0, qword_100433B78);
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
  *v10 = "state";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "state_probability";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "measurement_source";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015FE6C()
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
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 28);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          v4 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 32);
          sub_100197ED8();
LABEL_14:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 24);
          sub_100197F2C();
          goto LABEL_14;
        }

        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100160010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100168420(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
    v7 = v6;
    if (*(v3 + *(v6 + 24)) != 4)
    {
      v10 = *(v3 + *(v6 + 24));
      sub_100197F2C();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v8 = v3 + *(v7 + 28);
    if ((*(v8 + 8) & 1) == 0)
    {
      v9 = *v8;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (*(v3 + *(v7 + 32)) != 4)
    {
      v11 = *(v3 + *(v7 + 32));
      sub_100197ED8();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001601C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 4;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a2 + a1[8]) = 4;
  return result;
}

uint64_t sub_10016028C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238A8, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016032C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DE80, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100160398()
{
  sub_100015EDC(&qword_10041DE80, type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction);

  return Message.hash(into:)();
}

uint64_t sub_100160414()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433B90);
  sub_100005DF0(v0, qword_100433B90);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GA_PROTOBUF_DEFAULT";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GA_UNKNOWN";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GA_LOW";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GA_HIGH";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001606C4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433BA8);
  sub_100005DF0(v0, qword_100433BA8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MS_PROTOBUF_DEFAULT";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MS_AMBIENT_LIGHT";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MS_PROXIMITY";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MS_FUSED_MULTIPLE";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016099C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433BC0);
  sub_100005DF0(v0, qword_100433BC0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "latitude_deg";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude_deg";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100160C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004238A0, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100160D1C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100160D88()
{
  sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);

  return Message.hash(into:)();
}

uint64_t sub_100160E2C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433BD8);
  sub_100005DF0(v0, qword_100433BD8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "coordinates";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "base_height_above_ground_m";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "height_above_base_m";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "has_terrain_elevation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "terrain_elevation_m";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "min_base_height_m";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "max_base_height_m";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "top_height_m";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001611C4()
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
          v3 = v0;
          if (result == 5)
          {
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 36);
          }

          else
          {
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 44);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        if (result == 8)
        {
          v3 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 48);
          goto LABEL_5;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 28);
          goto LABEL_5;
        }

        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 32);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
        sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v3 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0) + 24);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001613AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0), sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
    v9 = result;
    v10 = v3 + *(result + 24);
    if (*(v10 + 8))
    {
      if (v4)
      {
        return result;
      }
    }

    else
    {
      v11 = *v10;
      result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }
    }

    v12 = v3 + v9[7];
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (*(v3 + v9[8]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    v14 = v3 + v9[9];
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_10015BE7C(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    sub_10015BEF8(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    sub_1001615D4(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
    v16 = v3 + v9[5];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001615D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 48));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016169C@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  v9 = a1[9];
  *(a2 + a1[8]) = 2;
  v10 = a2 + v9;
  *v10 = 0;
  v10[8] = 1;
  v11 = a1[11];
  v12 = a2 + a1[10];
  *v12 = 0;
  v12[8] = 1;
  v13 = a2 + v11;
  *v13 = 0;
  v13[8] = 1;
  v14 = a2 + a1[12];
  *v14 = 0;
  v14[8] = 1;
  return result;
}

uint64_t sub_10016176C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423898, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016180C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CE18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100161878()
{
  sub_100015EDC(&qword_10041CE18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);

  return Message.hash(into:)();
}

uint64_t sub_100161920()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433BF0);
  sub_100005DF0(v0, qword_100433BF0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sections";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "building_hash";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "building_id";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100161B88()
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
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0) + 24);
LABEL_5:
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
        sub_100015EDC(&qword_10041CE18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0) + 28);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_100161CB4()
{
  if (!*(*v0 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0), sub_100015EDC(&qword_10041CE18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
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
      result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }
    }

    v6 = (v0 + *(v3 + 28));
    if ((v6[1] & 1) == 0)
    {
      v7 = *v6;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v8 = v0 + *(v3 + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100161E4C@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t sub_100161ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423890, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100161F78(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CE28, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100161FE4()
{
  sub_100015EDC(&qword_10041CE28, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);

  return Message.hash(into:)();
}

uint64_t sub_100162088()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C08);
  sub_100005DF0(v0, qword_100433C08);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "receipt_time";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "buildings";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "building_hashes_in_previous_query_but_not_current_query";
  *(v12 + 1) = 55;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query_location_coordinate";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100162320()
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
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0) + 32);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D;
          v6 = &qword_10041CE08;
LABEL_15:
          sub_100015EDC(v6, v5);
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0) + 28);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v6 = &qword_10041C7B8;
          goto LABEL_15;
        }

        if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
          sub_100015EDC(&qword_10041CE28, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100162504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100162640(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
      sub_100015EDC(&qword_10041CE28, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v5[1] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedUInt64Field(value:fieldNumber:)();
    }

    sub_10016285C(v5, a1, a2, a3);
    v11 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100162640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
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

uint64_t sub_10016285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB40, &qword_100374570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_10041CB40, &qword_100374570);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB40, &qword_100374570);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
  sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
}

uint64_t sub_100162AC4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 1) = &_swiftEmptyArrayStorage;
  v4 = &a2[a1[6]];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_100162BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100162C18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100162CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423888, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100162D5C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DEC8, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100162DC8()
{
  sub_100015EDC(&qword_10041DEC8, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData);

  return Message.hash(into:)();
}

uint64_t sub_100162E6C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C20);
  sub_100005DF0(v0, qword_100433C20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "branch_coordinates";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "branch_type";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "branch_number";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "branch_width_mm";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "branch_length_mm";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100163148()
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
          type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
          sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 24);
          sub_100197E84();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 32);
            goto LABEL_5;
          case 5:
            v3 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0) + 36);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001632E0()
{
  if (!*(*v0 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0), sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
    v3 = result;
    if (*(v0 + *(result + 24)) == 4)
    {
      if (v1)
      {
        return result;
      }
    }

    else
    {
      v11 = *(v0 + *(result + 24));
      sub_100197E84();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }
    }

    v4 = (v0 + v3[7]);
    if ((v4[1] & 1) == 0)
    {
      v5 = *v4;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v6 = (v0 + v3[8]);
    if ((v6[1] & 1) == 0)
    {
      v7 = *v6;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v8 = (v0 + v3[9]);
    if ((v8[1] & 1) == 0)
    {
      v9 = *v8;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v10 = v0 + v3[5];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001634E4@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  *(a2 + a1[6]) = 4;
  v7 = a2 + v6;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[4] = 1;
  return result;
}

uint64_t sub_100163588(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423880, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100163628(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CE48, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100163694()
{
  sub_100015EDC(&qword_10041CE48, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);

  return Message.hash(into:)();
}

uint64_t sub_100163710()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C38);
  sub_100005DF0(v0, qword_100433C38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "BranchType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BranchType_UNKNOWN";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BranchType_LEAFY";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BranchType_NON_LEAFY";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001639E8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C50);
  sub_100005DF0(v0, qword_100433C50);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "north_latitude_deg";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "west_longitude_deg";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "south_latitude_deg";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "east_longitude_deg";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "vertex";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100163CC8()
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
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 24);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 28);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 32);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 4:
            v3 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0) + 36);
            goto LABEL_5;
          case 5:
            type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
            sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100163E34()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
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
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + v3[7]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v8 = (v0 + v3[8]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v10 = (v0 + v3[9]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
    sub_100015EDC(&qword_10041CE08, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v12 = v0 + v3[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100164024@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  v9 = a1[9];
  v10 = a2 + a1[8];
  *v10 = 0;
  v10[8] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[8] = 1;
  return result;
}

uint64_t sub_1001640CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423878, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016416C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DEF0, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001641D8()
{
  sub_100015EDC(&qword_10041DEF0, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);

  return Message.hash(into:)();
}

uint64_t sub_100164280()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C68);
  sub_100005DF0(v0, qword_100433C68);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bounding_box";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "branches";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tree_id";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tree_type";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "reliability_score_DEPRECATED";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "tree_features";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "branch_count";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001645D8()
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
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
          sub_100015EDC(&qword_10041DEF0, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
LABEL_21:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 28);
LABEL_18:
          v0 = v5;
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_5;
        }

        type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
        sub_100015EDC(&qword_10041CE48, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else
      {
        if (result > 5)
        {
          if (result != 6)
          {
            if (result != 7)
            {
              goto LABEL_5;
            }

            v5 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 44);
            goto LABEL_18;
          }

          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 40);
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
          sub_100015EDC(&qword_10041DF18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
          goto LABEL_21;
        }

        if (result == 4)
        {
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 32);
          sub_100197E30();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else
        {
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0) + 36);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100164880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100164A5C(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
      sub_100015EDC(&qword_10041CE48, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v11 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
    v12 = v5 + v11[7];
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (*(v5 + v11[8]) != 4)
    {
      v17 = *(v5 + v11[8]);
      sub_100197E30();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v14 = (v5 + v11[9]);
    if ((v14[1] & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    sub_100164C78(v5, a1, a2, a3);
    sub_100164E94(v5);
    v16 = v5 + v11[5];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100164A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB48, &qword_100374578);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CB48, &qword_100374578);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB48, &qword_100374578);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  sub_100015EDC(&qword_10041DEF0, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
}

uint64_t sub_100164C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB50, &qword_100374580);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  sub_10000A0A4(a1 + *(v14 + 40), v8, &qword_10041CB50, &qword_100374580);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB50, &qword_100374580);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  sub_100015EDC(&qword_10041DF18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
}

uint64_t sub_100164E94(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100164F58@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = &a2[a1[7]];
  *v8 = 0;
  v8[8] = 1;
  a2[v7] = 4;
  v9 = a1[10];
  v10 = &a2[a1[9]];
  *v10 = 0;
  v10[4] = 1;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  result = (*(*(v11 - 8) + 56))(&a2[v9], 1, 1, v11);
  v13 = &a2[a1[11]];
  *v13 = 0;
  v13[8] = 1;
  return result;
}

uint64_t sub_10016508C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423870, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016512C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CE60, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100165198()
{
  sub_100015EDC(&qword_10041CE60, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);

  return Message.hash(into:)();
}

uint64_t sub_100165218()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433C80);
  sub_100005DF0(v0, qword_100433C80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TreeType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TreeType_UNKNOWN";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TreeType_STANDARD_ACACIA";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TreeType_NONSTANDARD_ACACIA";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_1001654C8()
{
  v0._countAndFlagsBits = 0x616546656572542ELL;
  v0._object = 0xED00007365727574;
  String.append(_:)(v0);
  qword_100433C98 = 0xD000000000000035;
  unk_100433CA0 = 0x80000001003A0300;
}

uint64_t *sub_100165540()
{
  if (qword_1004440E8 != -1)
  {
    swift_once();
  }

  return &qword_100433C98;
}

uint64_t sub_1001655B8(void *a1, void *a2, void *a3)
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

uint64_t sub_100165614()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433CA8);
  sub_100005DF0(v0, qword_100433CA8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "has_branch_widths";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "has_branch_lengths";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100165824()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0) + 24);
LABEL_3:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }
}

uint64_t sub_1001658CC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
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

  if (*(v0 + *(v3 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100165A0C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_100165A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423868, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100165B3C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100165BA8()
{
  sub_100015EDC(&qword_10041DF18, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);

  return Message.hash(into:)();
}

uint64_t sub_100165C4C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433CC0);
  sub_100005DF0(v0, qword_100433CC0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "receipt_time";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trees";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "contains_branch_geometry";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100165EB0()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
          sub_100015EDC(&qword_10041CE60, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100166048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100166180(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
      sub_100015EDC(&qword_10041CE60, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
    if (*(v5 + *(v8 + 28)) != 2)
    {
      v9 = v8;
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      v8 = v9;
    }

    v10 = v5 + *(v8 + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100166180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
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

uint64_t sub_1001663E8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  a2[a1[7]] = 2;
  return result;
}

uint64_t sub_1001664AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423860, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016654C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF30, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001665B8()
{
  sub_100015EDC(&qword_10041DF30, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData);

  return Message.hash(into:)();
}

uint64_t sub_10016665C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433CD8);
  sub_100005DF0(v0, qword_100433CD8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "wrist_orientation";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "crown_orientation";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016686C()
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
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 24);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0) + 20);
LABEL_5:
    sub_100197DDC();
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100166938()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 4)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v0 + *(result + 20));
    sub_100197DDC();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 4)
  {
    v5 = *(v0 + *(v3 + 24));
    sub_100197DDC();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100166A88@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  result = UnknownStorage.init()();
  v9 = *(a1 + 24);
  *(a4 + *(a1 + 20)) = a2;
  *(a4 + v9) = a3;
  return result;
}

uint64_t sub_100166AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423858, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100166B9C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF48, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100166C08()
{
  sub_100015EDC(&qword_10041DF48, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);

  return Message.hash(into:)();
}

uint64_t sub_100166C88()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433CF0);
  sub_100005DF0(v0, qword_100433CF0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WatchOrientationType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 37;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WatchOrientationType_Unknown";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WatchOrientationType_Left";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WatchOrientationType_Right";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100166F60()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D08);
  sub_100005DF0(v0, qword_100433D08);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "applicable_time";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "on_wrist";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "on_wrist_sensor";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "on_wrist_confidence";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "is_on_charger";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "is_forced_on_wrist_enabled";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "is_wrist_detection_enabled";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001672A4()
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
        break;
      }

      if (result <= 5)
      {
        if (result != 4)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 36);
          goto LABEL_5;
        }

        v6 = v0;
        v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 32);
        sub_100197D34();
LABEL_23:
        v0 = v6;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_6;
      }

      if (result == 6)
      {
        v3 = v0;
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 40);
LABEL_5:
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_6;
      }

      if (result == 7)
      {
        v3 = v0;
        v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 44);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    switch(result)
    {
      case 1:
        v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_6;
      case 2:
        v6 = v0;
        v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 24);
        break;
      case 3:
        v6 = v0;
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WristState(0) + 28);
        break;
      default:
        goto LABEL_6;
    }

    sub_100197D88();
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1001674A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
    v11 = v10;
    if (*(v5 + *(v10 + 24)) != 4)
    {
      v12 = *(v5 + *(v10 + 24));
      sub_100197D88();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v5 + *(v11 + 28)) != 4)
    {
      v13 = *(v5 + *(v11 + 28));
      sub_100197D88();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v5 + *(v11 + 32)) != 4)
    {
      v14 = *(v5 + *(v11 + 32));
      sub_100197D34();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    sub_10014C694(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001676DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 4;
  *(a2 + v7) = 4;
  v8 = a1[9];
  *(a2 + a1[8]) = 4;
  *(a2 + v8) = 2;
  v9 = a1[11];
  *(a2 + a1[10]) = 2;
  *(a2 + v9) = 2;
  return result;
}

uint64_t sub_1001677AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423850, type metadata accessor for CLP_LogEntry_PrivateData_WristState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016784C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF60, type metadata accessor for CLP_LogEntry_PrivateData_WristState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001678B8()
{
  sub_100015EDC(&qword_10041DF60, type metadata accessor for CLP_LogEntry_PrivateData_WristState);

  return Message.hash(into:)();
}

uint64_t sub_100167934()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D20);
  sub_100005DF0(v0, qword_100433D20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WristStateType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WristStateType_Unknown";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WristStateType_On";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WristStateType_Off";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100167BE4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D38);
  sub_100005DF0(v0, qword_100433D38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WristStateConfidenceType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 41;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WristStateConfidenceType_None";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WristStateConfidenceType_Low";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WristStateConfidenceType_High";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100167EBC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D50);
  sub_100005DF0(v0, qword_100433D50);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
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
  *v10 = "client";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "watch_orientation";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "wrist_state";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100168154()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 28);
          type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation;
          v6 = &qword_10041DF48;
LABEL_5:
          sub_100015EDC(v6, v5);
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 32);
          type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_WristState;
          v6 = &qword_10041DF60;
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v6 = &qword_10041C7B8;
          goto LABEL_5;
        }

        if (result == 2)
        {
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 24);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100168334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WatchState);
  if (!v4)
  {
    v10 = (v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0) + 24));
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    sub_100168640(v5, a1, a2, a3);
    sub_10016885C(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100168420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_10000A0A4(a1 + *(v16 + 20), v10, &qword_10041CA30, &qword_100374460);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000059A8(v10, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100168640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB58, &qword_100374588);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041CB58, &qword_100374588);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB58, &qword_100374588);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  sub_100015EDC(&qword_10041DF48, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
}

uint64_t sub_10016885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB60, &qword_100374590);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_10041CB60, &qword_100374590);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB60, &qword_100374590);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  sub_100015EDC(&qword_10041DF60, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
}

uint64_t sub_100168AC4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  (*(*(v8 - 8) + 56))(a2 + v6, 1, 1, v8);
  v9 = a1[8];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t sub_100168C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423848, type metadata accessor for CLP_LogEntry_PrivateData_WatchState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100168CAC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF78, type metadata accessor for CLP_LogEntry_PrivateData_WatchState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100168D18()
{
  sub_100015EDC(&qword_10041DF78, type metadata accessor for CLP_LogEntry_PrivateData_WatchState);

  return Message.hash(into:)();
}

uint64_t sub_100168DBC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D68);
  sub_100005DF0(v0, qword_100433D68);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "user_specific_place_type";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "place_type";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "preferred_name";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "loi_uuid_identifier";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016904C()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 32);
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v5 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 20);
          sub_100197CE0();
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0) + 24);
          sub_100197C8C();
        }

        v0 = v5;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100169188()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
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
    v8 = *(v0 + *(result + 20));
    sub_100197CE0();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + v3[6]) != 3)
  {
    v9 = *(v0 + v3[6]);
    sub_100197C8C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v4 = (v0 + v3[7]);
  if (v4[1])
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  v6 = (v0 + v3[8]);
  if (v6[1])
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10016931C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 5;
  *(a2 + v5) = 3;
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_10016939C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423840, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016943C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DF90, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001694A8()
{
  sub_100015EDC(&qword_10041DF90, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);

  return Message.hash(into:)();
}

uint64_t sub_100169528()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D80);
  sub_100005DF0(v0, qword_100433D80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "USPT_UNKNOWN";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "USPT_HOME";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "USPT_WORK";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "USPT_SCHOOL";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "USPT_GYM";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016981C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433D98);
  sub_100005DF0(v0, qword_100433D98);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PIPT_AREA_OF_INTEREST";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PIPT_POINT_OF_INTEREST";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "PIPT_ADDRESS";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100169AC0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433DB0);
  sub_100005DF0(v0, qword_100433DB0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "receipt_time";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "arrival_time";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "departure_time";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "detection_time";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "place_inference";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "coordinate";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "horizontal_accuracy_m";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100169E0C()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime, 1, 1, v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  result = (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM[0];
  *v12 = 0;
  *(v12 + 8) = 1;
  qword_100444158 = v3;
  return result;
}

uint64_t sub_100169FB8()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference, &qword_10041CB68, &qword_100374598);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate, &qword_10041CA38, &qword_100374468);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10016A0CC()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1001765AC(v6);

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

      if (result > 3)
      {
        break;
      }

      if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_20;
      }

LABEL_23:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 5)
    {
      if (result != 6)
      {
        if (result != 7)
        {
          goto LABEL_23;
        }

        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        goto LABEL_22;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
      v14 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate;
      v15 = &qword_10041D8B8;
    }

    else if (result == 4)
    {
LABEL_20:
      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
      v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
      v15 = &qword_10041C7B8;
    }

    else
    {
      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
      v14 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference;
      v15 = &qword_10041DF90;
    }

    sub_100015EDC(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_22:
    swift_endAccess();
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_10016A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit(0) + 20));
  result = sub_10016A4BC(v8, a1, a2, a3);
  if (!v4)
  {
    sub_10016A6E4(v8, a1, a2, a3);
    sub_10016A90C(v8, a1, a2, a3);
    sub_10016AB34(v8, a1, a2, a3);
    sub_10016AD5C(v8, a1, a2, a3);
    sub_10016AF84(v8, a1, a2, a3);
    sub_10009ACD8(v8, a1, a2, a3, OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10016A4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
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

uint64_t sub_10016A6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
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

uint64_t sub_10016A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
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

uint64_t sub_10016AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
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

uint64_t sub_10016AD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CB68, &qword_100374598);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CB68, &qword_100374598);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB68, &qword_100374598);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  sub_100015EDC(&qword_10041DF90, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
}

uint64_t sub_10016AF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA38, &qword_100374468);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA38, &qword_100374468);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

BOOL sub_10016B1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v149 = *(v4 - 8);
  v150 = v4;
  v5 = *(v149 + 64);
  __chkstk_darwin(v4);
  v146 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100024A2C(&qword_100423CD0, &qword_100382F38);
  v7 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v151 = &v146 - v8;
  v9 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v158 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v153 = &v146 - v13;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v155 = *(v14 - 8);
  v156 = v14;
  v15 = *(v155 + 64);
  __chkstk_darwin(v14);
  v147 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100024A2C(&qword_100423CD8, &unk_100382F40);
  v17 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v157 = &v146 - v18;
  v19 = sub_100024A2C(&qword_10041CB68, &qword_100374598);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v152 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v160 = &v146 - v23;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v25 = *(v24 - 8);
  v173 = v24;
  v174 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v168 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28);
  v161 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v163 = &v146 - v33;
  v34 = __chkstk_darwin(v32);
  v167 = &v146 - v35;
  __chkstk_darwin(v34);
  v37 = &v146 - v36;
  v38 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v159 = &v146 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v164 = &v146 - v43;
  v44 = __chkstk_darwin(v42);
  v162 = &v146 - v45;
  v46 = __chkstk_darwin(v44);
  v166 = &v146 - v47;
  v48 = __chkstk_darwin(v46);
  v165 = &v146 - v49;
  v50 = __chkstk_darwin(v48);
  v171 = &v146 - v51;
  v52 = __chkstk_darwin(v50);
  v170 = &v146 - v53;
  __chkstk_darwin(v52);
  v55 = &v146 - v54;
  v56 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v56, v55, &qword_10041CA30, &qword_100374460);
  v57 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  v172 = v28;
  v58 = *(v28 + 48);
  sub_10000A0A4(v55, v37, &qword_10041CA30, &qword_100374460);
  v59 = a2 + v57;
  v60 = a2;
  v61 = v173;
  v62 = v174;
  sub_10000A0A4(v59, &v37[v58], &qword_10041CA30, &qword_100374460);
  v65 = *(v62 + 48);
  v63 = v62 + 48;
  v64 = v65;
  if (v65(v37, 1, v61) == 1)
  {

    sub_1000059A8(v55, &qword_10041CA30, &qword_100374460);
    if (v64(&v37[v58], 1, v61) != 1)
    {
LABEL_7:
      v68 = &qword_100423CE0;
      v69 = &qword_100393E90;
      v70 = v37;
LABEL_23:
      sub_1000059A8(v70, v68, v69);
      goto LABEL_24;
    }

    v169 = v64;
    v174 = v63;
    sub_1000059A8(v37, &qword_10041CA30, &qword_100374460);
  }

  else
  {
    v66 = v170;
    sub_10000A0A4(v37, v170, &qword_10041CA30, &qword_100374460);
    if (v64(&v37[v58], 1, v61) == 1)
    {

      sub_1000059A8(v55, &qword_10041CA30, &qword_100374460);
      v67 = v66;
LABEL_6:
      sub_100015F24(v67, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      goto LABEL_7;
    }

    v169 = v64;
    v174 = v63;
    v71 = &v37[v58];
    v72 = v168;
    sub_1000112AC(v71, v168, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

    v73 = sub_1001853C4(v66, v72, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_100015F24(v72, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_1000059A8(v55, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v66, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v61 = v173;
    sub_1000059A8(v37, &qword_10041CA30, &qword_100374460);
    if ((v73 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v74 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  v75 = v171;
  sub_10000A0A4(a1 + v74, v171, &qword_10041CA30, &qword_100374460);
  v76 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  v77 = *(v172 + 48);
  v78 = v167;
  sub_10000A0A4(v75, v167, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v60 + v76, v78 + v77, &qword_10041CA30, &qword_100374460);
  v79 = v174;
  v80 = v169;
  v81 = v169(v78, 1, v61);
  v169 = v80;
  if (v81 == 1)
  {
    sub_1000059A8(v75, &qword_10041CA30, &qword_100374460);
    if (v80((v78 + v77), 1, v61) == 1)
    {
      sub_1000059A8(v78, &qword_10041CA30, &qword_100374460);
      goto LABEL_16;
    }

LABEL_14:
    v68 = &qword_100423CE0;
    v69 = &qword_100393E90;
    v70 = v78;
    goto LABEL_23;
  }

  v82 = v165;
  sub_10000A0A4(v78, v165, &qword_10041CA30, &qword_100374460);
  if (v80((v78 + v77), 1, v61) == 1)
  {
    sub_1000059A8(v171, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v82, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_14;
  }

  v83 = v168;
  sub_1000112AC(v78 + v77, v168, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  LODWORD(v170) = sub_1001853C4(v82, v83, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v83, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v171, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v82, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v78, &qword_10041CA30, &qword_100374460);
  if ((v170 & 1) == 0)
  {
LABEL_24:

    return 0;
  }

LABEL_16:
  v84 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  v171 = a1;
  v85 = a1 + v84;
  v86 = v166;
  sub_10000A0A4(v85, v166, &qword_10041CA30, &qword_100374460);
  v87 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  v88 = *(v172 + 48);
  v89 = v163;
  sub_10000A0A4(v86, v163, &qword_10041CA30, &qword_100374460);
  v90 = v89;
  sub_10000A0A4(v60 + v87, v89 + v88, &qword_10041CA30, &qword_100374460);
  v91 = v173;
  v92 = v169;
  v93 = v169(v89, 1, v173);
  v174 = v79;
  if (v93 == 1)
  {
    sub_1000059A8(v86, &qword_10041CA30, &qword_100374460);
    v94 = v92(v89 + v88, 1, v91);
    v95 = v164;
    v96 = v171;
    if (v94 == 1)
    {
      sub_1000059A8(v89, &qword_10041CA30, &qword_100374460);
      goto LABEL_27;
    }

LABEL_21:
    v68 = &qword_100423CE0;
    v69 = &qword_100393E90;
LABEL_22:
    v70 = v90;
    goto LABEL_23;
  }

  v97 = v89;
  v98 = v162;
  sub_10000A0A4(v97, v162, &qword_10041CA30, &qword_100374460);
  v99 = v92(v90 + v88, 1, v91);
  v95 = v164;
  if (v99 == 1)
  {
    sub_1000059A8(v166, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v98, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_21;
  }

  v101 = v90 + v88;
  v102 = v168;
  sub_1000112AC(v101, v168, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v103 = sub_1001853C4(v98, v102, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v102, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v166, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v98, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v90, &qword_10041CA30, &qword_100374460);
  v96 = v171;
  if ((v103 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v104 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  sub_10000A0A4(v96 + v104, v95, &qword_10041CA30, &qword_100374460);
  v105 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  v106 = *(v172 + 48);
  v107 = v95;
  v108 = v95;
  v37 = v161;
  sub_10000A0A4(v107, v161, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v60 + v105, &v37[v106], &qword_10041CA30, &qword_100374460);
  v109 = v173;
  v110 = v169;
  if (v169(v37, 1, v173) == 1)
  {
    sub_1000059A8(v108, &qword_10041CA30, &qword_100374460);
    if (v110(&v37[v106], 1, v109) == 1)
    {
      sub_1000059A8(v37, &qword_10041CA30, &qword_100374460);
      goto LABEL_33;
    }

    goto LABEL_7;
  }

  v111 = v159;
  sub_10000A0A4(v37, v159, &qword_10041CA30, &qword_100374460);
  if (v110(&v37[v106], 1, v109) == 1)
  {
    sub_1000059A8(v164, &qword_10041CA30, &qword_100374460);
    v67 = v111;
    goto LABEL_6;
  }

  v112 = &v37[v106];
  v113 = v168;
  sub_1000112AC(v112, v168, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v114 = sub_1001853C4(v111, v113, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v113, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v164, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v111, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v37, &qword_10041CA30, &qword_100374460);
  if ((v114 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_33:
  v115 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v116 = v160;
  sub_10000A0A4(v96 + v115, v160, &qword_10041CB68, &qword_100374598);
  v117 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v118 = *(v154 + 48);
  v119 = v157;
  sub_10000A0A4(v116, v157, &qword_10041CB68, &qword_100374598);
  v90 = v119;
  sub_10000A0A4(v60 + v117, v119 + v118, &qword_10041CB68, &qword_100374598);
  v120 = v156;
  v121 = *(v155 + 48);
  if (v121(v119, 1, v156) == 1)
  {
    sub_1000059A8(v116, &qword_10041CB68, &qword_100374598);
    v122 = v121(v119 + v118, 1, v120);
    v123 = v158;
    if (v122 == 1)
    {
      sub_1000059A8(v119, &qword_10041CB68, &qword_100374598);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v124 = v152;
  sub_10000A0A4(v119, v152, &qword_10041CB68, &qword_100374598);
  v125 = v121(v119 + v118, 1, v120);
  v123 = v158;
  if (v125 == 1)
  {
    sub_1000059A8(v160, &qword_10041CB68, &qword_100374598);
    sub_100015F24(v124, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
LABEL_38:
    v68 = &qword_100423CD8;
    v69 = &unk_100382F40;
    goto LABEL_22;
  }

  v126 = v119 + v118;
  v127 = v147;
  sub_1000112AC(v126, v147, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  v128 = sub_10017D3B4(v124, v127);
  sub_100015F24(v127, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  sub_1000059A8(v160, &qword_10041CB68, &qword_100374598);
  sub_100015F24(v124, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference);
  sub_1000059A8(v119, &qword_10041CB68, &qword_100374598);
  if ((v128 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_40:
  v129 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v130 = v153;
  sub_10000A0A4(v96 + v129, v153, &qword_10041CA38, &qword_100374468);
  v131 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v132 = *(v148 + 48);
  v133 = v151;
  sub_10000A0A4(v130, v151, &qword_10041CA38, &qword_100374468);
  v90 = v133;
  sub_10000A0A4(v60 + v131, v133 + v132, &qword_10041CA38, &qword_100374468);
  v134 = v150;
  v135 = *(v149 + 48);
  if (v135(v133, 1, v150) == 1)
  {
    sub_1000059A8(v130, &qword_10041CA38, &qword_100374468);
    if (v135(v133 + v132, 1, v134) == 1)
    {
      sub_1000059A8(v133, &qword_10041CA38, &qword_100374468);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  sub_10000A0A4(v133, v123, &qword_10041CA38, &qword_100374468);
  if (v135(v133 + v132, 1, v134) == 1)
  {
    sub_1000059A8(v153, &qword_10041CA38, &qword_100374468);
    sub_100015F24(v123, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
LABEL_45:
    v68 = &qword_100423CD0;
    v69 = &qword_100382F38;
    goto LABEL_22;
  }

  v136 = v133 + v132;
  v137 = v146;
  sub_1000112AC(v136, v146, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v138 = sub_100184D80(v123, v137, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015F24(v137, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_1000059A8(v153, &qword_10041CA38, &qword_100374468);
  sub_100015F24(v123, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_1000059A8(v133, &qword_10041CA38, &qword_100374468);
  if ((v138 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_47:
  v139 = v96 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM[0];
  swift_beginAccess();
  v140 = *v139;
  v141 = *(v139 + 8);

  v142 = v60 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM[0];
  swift_beginAccess();
  v143 = *v142;
  v144 = *(v142 + 8);

  if ((v141 & 1) == 0)
  {
    if (v140 == v143)
    {
      v145 = v144;
    }

    else
    {
      v145 = 1;
    }

    return (v145 & 1) == 0;
  }

  return v144 != 0;
}

uint64_t sub_10016C670(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423838, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016C710(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DFA8, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C77C()
{
  sub_100015EDC(&qword_10041DFA8, type metadata accessor for CLP_LogEntry_PrivateData_RoutineVisit);

  return Message.hash(into:)();
}

uint64_t sub_10016C820()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433DC8);
  sub_100005DF0(v0, qword_100433DC8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "start_time_cfat_sec";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mct_timestamp_sec";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "confidence";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "estimated_state_probability_outdoor";
  *(v15 + 1) = 35;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "daylight_confidence";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_astronomical_daytime";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "current_lux";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016CBCC()
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
            v3 = v0;
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 36);
            goto LABEL_5;
          }

          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 40);
LABEL_18:
          sub_10019885C();
          goto LABEL_24;
        }

        if (result == 7)
        {
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 44);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 8)
        {
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 48);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            v6 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 32);
            goto LABEL_18;
          }

          v6 = v0;
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 28);
          sub_1001988B0();
LABEL_24:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 20);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}