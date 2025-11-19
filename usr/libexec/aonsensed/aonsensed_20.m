uint64_t sub_1001F1BFC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433EE0);
  sub_100005DF0(v0, qword_100433EE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100374430;
  v4 = v53 + v3;
  v5 = v53 + v3 + v1[14];
  *(v53 + v3) = 0;
  *v5 = "EndCause_PROTOBUF_DEFAULT";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "EndCause_kNone";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "EndCause_kUnspecified";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "EndCause_kSystemFailure";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "EndCause_kProtocolError";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "EndCause_kDataMissing";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "EndCause_kUnexpectedDataValue";
  *(v19 + 1) = 29;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "EndCause_kPosMethodFailure";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "EndCause_kPosMethodMismatch";
  *(v22 + 8) = 27;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "EndCause_kPosProtocolMismatch";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "EndCause_kTargetSETnotReachable";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "EndCause_kVersionNotSupported";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "EndCause_kResourceShortage";
  *(v30 + 1) = 26;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "EndCause_kInvalidSessionId";
  *(v32 + 1) = 26;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "EndCause_kUnexpectedMessage";
  *(v34 + 1) = 27;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "EndCause_kNonProxyModeNotSupported";
  *(v36 + 1) = 34;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "EndCause_kProxyModeNotSupported";
  *(v37 + 8) = 31;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "EndCause_kPositioningNotPermitted";
  *(v39 + 1) = 33;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "EndCause_kAuthNetFailure";
  *(v41 + 1) = 24;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "EndCause_kAuthSuplinitFailure";
  *(v43 + 1) = 29;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "EndCause_kServiceNotSupported";
  *(v45 + 1) = 29;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "EndCause_kIncompatibleProtectionLevel";
  *(v47 + 1) = 37;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "EndCause_kInsufficientInterval";
  *(v49 + 1) = 30;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "EndCause_kNoSUPLCoverage";
  *(v51 + 1) = 24;
  v51[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F2364()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433EF8);
  sub_100005DF0(v0, qword_100433EF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ConnectionStatus_PROTOBUF_DEFAULT";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ConnectionStatus_kNone";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ConnectionStatus_kConnSuccess";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ConnectionStatus_kSocketErr";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ConnectionStatus_kInputErr";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ConnectionStatus_kSslFailed";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F2698()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433F10);
  sub_100005DF0(v0, qword_100433F10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "CellType_PROTOBUF_DEFAULT";
  *(v4 + 8) = 25;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "CellType_kUnavailable";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CellType_kGSM";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CellType_kWCDMA";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CellType_kCDMA";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CellType_kHRPD";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CellType_kLTE";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F2A00()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433F28);
  sub_100005DF0(v0, qword_100433F28);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FreqMode_PROTOBUF_DEFAULT";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FreqMode_kUnknown";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FreqMode_kFDD";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FreqMode_kTDD";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F2CB4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433F40);
  sub_100005DF0(v0, qword_100433F40);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "SLPAddressType_PROTOBUF_DEFAULT";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SLPAddressType_kUnknown";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SLPAddressType_kIpV4";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "SLPAddressType_kIpV6";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "SLPAddressType_kFQDN";
  *(v14 + 8) = 20;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F2FA4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433F58);
  sub_100005DF0(v0, qword_100433F58);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "ErrorCodes_PROTOBUF_DEFAULT";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ErrorCodes_kSuccess";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ErrorCodes_kErrorUndefined";
  *(v11 + 1) = 26;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ErrorCodes_kErrorNotEnoughSats";
  *(v13 + 1) = 30;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ErrorCodes_kErrorAssdataMissing";
  *(v15 + 1) = 31;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ErrorCodes_kErrorMethodNotSupported";
  *(v17 + 1) = 35;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ErrorCodes_kErrorNotAccomplishedGpsTimingCell";
  *(v19 + 1) = 45;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ErrorCodes_kErrorNotEnoughGanssSats";
  *(v21 + 1) = 35;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ErrorCodes_kErrorGanssAssdataMissing";
  *(v22 + 8) = 36;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F338C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433F70);
  sub_100005DF0(v0, qword_100433F70);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ClsModemState_PROTOBUF_DEFAULT";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ClsModemState_kUnknown";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ClsModemState_kClsCellDch";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ClsModemState_kClsCellFach";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "ClsModemState_kClsInvalidState";
  *(v15 + 8) = 30;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F3688()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433F88);
  sub_100005DF0(v0, qword_100433F88);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "SessionProtocol_PROTOBUF_DEFAULT";
  *(v4 + 8) = 32;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "SessionProtocol_kUnknown";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "SessionProtocol_kSessionCplane";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SessionProtocol_kSessionUplane";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SessionProtocol_kSessionUser";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "SessionProtocol_kSessionModem";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F39B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433FA0);
  sub_100005DF0(v0, qword_100433FA0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "PosProtocol_PROTOBUF_DEFAULT";
  *(v4 + 8) = 28;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "PosProtocol_kUnknown";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PosProtocol_kRrlp";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PosProtocol_kRrc";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PosProtocol_kLpp";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PosProtocol_kCdma";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PosProtocol_kNrLpp";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F3D1C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433FB8);
  sub_100005DF0(v0, qword_100433FB8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MethodType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MethodType_kUnknown";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MethodType_kMethodMsassisted";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MethodType_kMethodMsbased";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "MethodType_kMethodStandalone";
  *(v15 + 8) = 28;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F4018()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433FD0);
  sub_100005DF0(v0, qword_100433FD0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Environment_PROTOBUF_DEFAULT";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Environment_kBadArea";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Environment_kNotBadArea";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Environment_kMixedArea";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "Environment_kEnvInvalid";
  *(v15 + 8) = 23;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F4314()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433FE8);
  sub_100005DF0(v0, qword_100433FE8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AdditionalInfo_PROTOBUF_DEFAULT";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AdditionalInfo_kOnlyReturnInfoRequested";
  *(v10 + 8) = 39;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AdditionalInfo_kMayReturnAdditionalInfo";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AdditionalInfo_kAdditionalInfoInvalid";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F45C8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434000);
  sub_100005DF0(v0, qword_100434000);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10036C820;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 0;
  *v5 = "GnssId_kGnssInvalid";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "GnssId_kGnssGps";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "GnssId_kGnssGalileo";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "GnssId_kGnssSbs";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 8;
  *v15 = "GnssId_kGnssModGps";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 16;
  *v17 = "GnssId_kGnssQzss";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 32;
  *v19 = "GnssId_kGnssGlonass";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F4930()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434018);
  sub_100005DF0(v0, qword_100434018);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D790;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SupportedGADShapes_kSupportGadShapesNoLocation";
  *(v6 + 8) = 46;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SupportedGADShapes_kSupportGadShapesEllipsoidPoint";
  *(v10 + 8) = 50;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SupportedGADShapes_kSupportGadShapesPointUncertainCircle";
  *(v12 + 1) = 56;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SupportedGADShapes_kSupportGadShapesPointUncertainEllipse";
  *(v14 + 1) = 57;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "SupportedGADShapes_kSupportGadShapesPolygon";
  *(v16 + 1) = 43;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "SupportedGADShapes_kSupportGadShapesPointAltitude";
  *(v18 + 1) = 49;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "SupportedGADShapes_kSupportGadShapesPointAltitudeUncertainEllipsoid";
  *(v20 + 1) = 67;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "SupportedGADShapes_kSupportGadShapesEllipsoidArc";
  *(v22 + 1) = 48;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F4CEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434030);
  sub_100005DF0(v0, qword_100434030);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FixType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FixType_kUnknown";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FixType_kFixType2d";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FixType_kFixType3d";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F4FA0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434048);
  sub_100005DF0(v0, qword_100434048);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "ClsNetworkType_PROTOBUF_DEFAULT";
  *(v4 + 8) = 31;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "ClsNetworkType_kClsGeranNetwork";
  *(v8 + 8) = 31;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ClsNetworkType_kClsUtranNetwork";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ClsNetworkType_kClsEutranNetwork";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ClsNetworkType_kClsInvalidNetwork";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ClsNetworkType_kClsCdmaNetwork";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F52C8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434060);
  sub_100005DF0(v0, qword_100434060);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10036C7E0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 0;
  *v5 = "GnssTimeId_PROTOBUF_DEFAULT";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "GnssTimeId_kGnssTimeIdGps";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "GnssTimeId_kGnssTimeIdQzss";
  *(v11 + 1) = 26;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "GnssTimeId_kGnssTimeIdGlonass";
  *(v13 + 1) = 29;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "GnssTimeId_kGnssTimeIdGalileo";
  *(v15 + 1) = 29;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "GnssTimeId_kGnssTimeInvalid";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F55F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434078);
  sub_100005DF0(v0, qword_100434078);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "ShapeType_PROTOBUF_DEFAULT";
  *(v5 + 8) = 26;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ShapeType_kShapeTypeEllipsoidPoint";
  *(v9 + 8) = 34;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ShapeType_kShapeTypePointUncertainCircle";
  *(v11 + 1) = 40;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ShapeType_kShapeTypePointUncertainEllipse";
  *(v13 + 1) = 41;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ShapeType_kShapeTypePolygon";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ShapeType_kShapeTypePointAltitude";
  *(v17 + 1) = 33;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ShapeType_kShapeTypePointAltitudeUncertainEllipsoid";
  *(v19 + 1) = 51;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ShapeType_kShapeTypeEllipsoidArc";
  *(v21 + 1) = 32;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ShapeType_kShapeTypeNoLocation";
  *(v22 + 8) = 30;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F59E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434090);
  sub_100005DF0(v0, qword_100434090);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VelocityType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VelocityType_kVelocityTypeHorizontalVelocity";
  *(v10 + 8) = 44;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VelocityType_kVelocityTypeHorizontalWithVerticalVelocity";
  *(v12 + 1) = 56;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VelocityType_kVelocityTypeHorizontalVelocityWithUncertainty";
  *(v14 + 1) = 59;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "VelocityType_kVelocityTypeHorizontalWithVerticalVelocityAndUncertainty";
  *(v16 + 1) = 70;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VelocityType_kVelocityTypeInvalid";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F5D14()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004340A8);
  sub_100005DF0(v0, qword_1004340A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MultipathIndicator_PROTOBUF_DEFAULT";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MultipathIndicator_kMultiPathNotMeasured";
  *(v10 + 8) = 40;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MultipathIndicator_kMultiPathLow";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MultipathIndicator_kMultiPathMedium";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "MultipathIndicator_kMultiPathHigh";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "MultipathIndicator_kMultiPathInvalid";
  *(v18 + 1) = 36;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F6048()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004340C0);
  sub_100005DF0(v0, qword_1004340C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "GanssId_PROTOBUF_DEFAULT";
  *(v4 + 8) = 24;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "GanssId_kGanssIdSbas";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "GanssId_kGanssIdModernisedGps";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "GanssId_kGanssIdQzss";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GanssId_kGanssIdGlonass";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "GanssId_kGanssIdGalileo";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "GanssId_kGanssIdInvalid";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F63A8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004340D8);
  sub_100005DF0(v0, qword_1004340D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MeasurementsResult_kMeasurementsResultNone";
  *(v6 + 8) = 42;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MeasurementsResult_kMeasurementsResultGps";
  *(v10 + 8) = 41;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MeasurementsResult_kMeasurementsResultGanss";
  *(v12 + 1) = 43;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "MeasurementsResult_kMeasurementsResultError";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F665C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004340F0);
  sub_100005DF0(v0, qword_1004340F0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LcsGanssId_PROTOBUF_DEFAULT";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LcsGanssId_kLcsGanssIdGalileo";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LcsGanssId_kLcsGanssIdSbas";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LcsGanssId_kLcsGanssIdModGps";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "LcsGanssId_kLcsGanssIdQzss";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "LcsGanssId_kLcsGanssIdGlonass";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "LcsGanssId_kLcsGanssIdInvalid";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F69C8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434108);
  sub_100005DF0(v0, qword_100434108);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10036C7F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "AidMask_kAidmaskNone";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "AidMask_kAidmaskAlmanac";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "AidMask_kAidmaskUtcmodel";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "AidMask_kAidmaskIonosmodel";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 8;
  *v15 = "AidMask_kAidmaskNavigation";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 16;
  *v17 = "AidMask_kAidmaskDgpsCorrections";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 32;
  *v19 = "AidMask_kAidmaskRefloc";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 64;
  *v21 = "AidMask_kAidmaskReftime";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 128;
  *v22 = "AidMask_kAidmaskAcqassistance";
  *(v22 + 8) = 29;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 256;
  *v24 = "AidMask_kAidmaskTimeintegrity";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F6DF0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434120);
  sub_100005DF0(v0, qword_100434120);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GanssCommonAidMask_kNone";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GanssCommonAidMask_kRefTime";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GanssCommonAidMask_kRefLocation";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GanssCommonAidMask_kAddIonosModel";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F70A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434138);
  sub_100005DF0(v0, qword_100434138);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10036C7F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "GanssGenericAidMask_kNone";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "GanssGenericAidMask_kRealTimeIntegrity";
  *(v9 + 8) = 38;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "GanssGenericAidMask_kAlmanac";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "GanssGenericAidMask_kNavigationModel";
  *(v13 + 1) = 36;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 8;
  *v15 = "GanssGenericAidMask_kRefMeasInfo";
  *(v15 + 1) = 32;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 16;
  *v17 = "GanssGenericAidMask_kUtcModel";
  *(v17 + 1) = 29;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 32;
  *v19 = "GanssGenericAidMask_kTimeModelGnss";
  *(v19 + 1) = 34;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 64;
  *v21 = "GanssGenericAidMask_kDataBitAssist";
  *(v21 + 1) = 34;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 128;
  *v22 = "GanssGenericAidMask_kAuxillaryInfo";
  *(v22 + 8) = 34;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 256;
  *v24 = "GanssGenericAidMask_kAddAssistDataChoices";
  *(v24 + 1) = 41;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F74C4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434150);
  sub_100005DF0(v0, qword_100434150);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GanssSignalIdMask_kGanssSignalIdNone";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GanssSignalIdMask_kGanssSignalId1";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GanssSignalIdMask_kGanssSignalId2";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GanssSignalIdMask_kGanssSignalId3";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F7774()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434168);
  sub_100005DF0(v0, qword_100434168);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AssistanceRequest_kAssistanceRequestNone";
  *(v6 + 8) = 40;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AssistanceRequest_kAssistanceRequestGps";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "AssistanceRequest_kAssistanceRequestGanss";
  *(v11 + 8) = 41;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F79F0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434180);
  sub_100005DF0(v0, qword_100434180);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UtranSfnGpsUncertainty_PROTOBUF_DEFAULT";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UtranSfnGpsUncertainty_kUtranSfnGpsUncertaintyLessThan10ms";
  *(v10 + 8) = 58;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UtranSfnGpsUncertainty_kUtranSfnGpsUncertaintyMoreThan10ms";
  *(v12 + 1) = 58;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UtranSfnGpsUncertainty_kUtranSfnGpsUncertaintyNotPresent";
  *(v14 + 1) = 56;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F7CA4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434198);
  sub_100005DF0(v0, qword_100434198);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "GpsDopplerUncMpsExt_PROTOBUF_DEFAULT";
  *(v4 + 8) = 36;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "GpsDopplerUncMpsExt_k60";
  *(v8 + 8) = 23;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "GpsDopplerUncMpsExt_k80";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "GpsDopplerUncMpsExt_k100";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GpsDopplerUncMpsExt_k120";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "GpsDopplerUncMpsExt_kNoInfo";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "GpsDopplerUncMpsExt_kNotPresent";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F8008()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004341B0);
  sub_100005DF0(v0, qword_1004341B0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MeasurementAndEstimateResponseType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 51;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MeasurementAndEstimateResponseType_kInvalid";
  *(v10 + 8) = 43;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MeasurementAndEstimateResponseType_kGpsMeasAvailable";
  *(v12 + 1) = 52;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MeasurementAndEstimateResponseType_kLocationEstimateAvailable";
  *(v14 + 1) = 61;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F82B8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004341C8);
  sub_100005DF0(v0, qword_1004341C8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AfltAction_PROTOBUF_DEFAULT";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AfltAction_kInvalid";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AfltAction_kDoNotSend";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AfltAction_kSend";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F8568()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004341E0);
  sub_100005DF0(v0, qword_1004341E0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "WlanMeasurementResult_PROTOBUF_DEFAULT";
  *(v4 + 8) = 38;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "WlanMeasurementResult_kUnknown";
  *(v8 + 8) = 30;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "WlanMeasurementResult_kSuccess";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "WlanMeasurementResult_kRequestInvalid";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "WlanMeasurementResult_kRequestTimeout";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "WlanMeasurementResult_kRequestFailed";
  *(v16 + 1) = 36;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F88B8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004341F8);
  sub_100005DF0(v0, qword_1004341F8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "helo_enabled";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "early_return_enabled";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "target_vertical_uncertainty_m";
  *(v11 + 8) = 29;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001F8B14()
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
        v1 = *(type metadata accessor for Proto_Gnss_Emergency_Configuration(0) + 28);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 2:
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_Configuration(0) + 24);
LABEL_10:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 1:
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_Configuration(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_1001F8BEC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
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

  v4 = (v0 + *(v3 + 28));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001F8D20@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a2 + a1[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_1001F8D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A7B8, type metadata accessor for Proto_Gnss_Emergency_Configuration);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001F8E3C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424A80, type metadata accessor for Proto_Gnss_Emergency_Configuration);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F8EA8()
{
  sub_100256CB4(&qword_100424A80, type metadata accessor for Proto_Gnss_Emergency_Configuration);

  return Message.hash(into:)();
}

uint64_t sub_1001F8F50()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434210);
  sub_100005DF0(v0, qword_100434210);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100374410;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "latitude_degrees";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "longitude_degrees";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "altitude_meters";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "achieved_horizontal_uncertainty_meters";
  *(v13 + 1) = 38;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "achieved_vertical_uncertainty_meters";
  *(v15 + 1) = 36;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "ttff_seconds";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "technology_source";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "method_type";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "session_type";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "protocol_type";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "requested_response_timeout_seconds";
  *(v26 + 1) = 34;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "requested_horizontal_accuracy_meters";
  *(v28 + 1) = 36;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "requested_vertical_accuracy_meters";
  *(v30 + 1) = 34;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "pos_req_type";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "error_code";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "helo_enabled";
  *(v36 + 1) = 12;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "helo_injected";
  *(v37 + 8) = 13;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "assistance_used";
  *(v39 + 1) = 15;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "session_id";
  *(v41 + 1) = 10;
  v41[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

double sub_1001F957C()
{
  type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 108) = 0;
  *(v0 + 112) = 1;
  *(v0 + 113) = 1042;
  *(v0 + 115) = 7;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *&result = 33689864;
  *(v0 + 161) = 33689864;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 180) = 0;
  *(v0 + 184) = 1;
  qword_1004610F8 = v0;
  return result;
}

uint64_t sub_1001F9640()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v7 = swift_allocObject();
    sub_100245CC4(v6);

    *(v2 + v3) = v7;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while ((v9 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 11:
        case 12:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_18;
        case 7:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_18;
        case 8:
          swift_beginAccess();
          sub_100268F18();
          goto LABEL_17;
        case 9:
          swift_beginAccess();
          sub_100268E70();
          goto LABEL_17;
        case 10:
          swift_beginAccess();
          sub_100268E1C();
          goto LABEL_17;
        case 14:
          swift_beginAccess();
          sub_100268EC4();
          goto LABEL_17;
        case 15:
          swift_beginAccess();
          sub_100268DC8();
LABEL_17:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_18;
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_18;
        case 18:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_18;
        case 19:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_18:
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

uint64_t sub_1001F9A3C()
{
  v2 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  result = swift_beginAccess();
  if (*(v2 + 24))
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v2 + 16);
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v2 + 40) & 1) == 0)
  {
    v5 = *(v2 + 32);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 56) & 1) == 0)
  {
    v6 = *(v2 + 48);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 72) & 1) == 0)
  {
    v7 = *(v2 + 64);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 88) & 1) == 0)
  {
    v8 = *(v2 + 80);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 104) & 1) == 0)
  {
    v9 = *(v2 + 96);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_1001F9D58(v2);
  sub_1001F9DDC(v2);
  sub_1001F9E78(v2);
  sub_1001F9F14(v2);
  sub_100205D60(v2);
  sub_1001F9FB0(v2);
  sub_1001FA034(v2);
  sub_1001FA0B8(v2);
  sub_1001FA154(v2);
  sub_1001FA1F0(v2);
  sub_1001FA278(v2);
  sub_1001FA300(v2);
  sub_1001FA384(v2);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001F9D58(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    v3 = *(a1 + 108);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001F9DDC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 113) != 18)
  {
    sub_100268F18();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001F9E78(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 114) != 4)
  {
    sub_100268E70();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001F9F14(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 115) != 7)
  {
    sub_100268E1C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001F9FB0(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 144) & 1) == 0)
  {
    v3 = *(a1 + 136);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FA034(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 160) & 1) == 0)
  {
    v3 = *(a1 + 152);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FA0B8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 161) != 8)
  {
    sub_100268EC4();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FA154(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 162) != 17)
  {
    sub_100268DC8();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FA1F0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 163) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FA278(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 164) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FA300(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 176) & 1) == 0)
  {
    v3 = *(a1 + 168);
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FA384(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 184) & 1) == 0)
  {
    v3 = *(a1 + 180);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FA434(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!*(a2 + 24))
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
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v7 != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 48))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  swift_beginAccess();
  v15 = *(a2 + 72);
  if (v14)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 64))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  swift_beginAccess();
  v18 = *(a2 + 88);
  if (v17)
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 80))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  swift_beginAccess();
  v21 = *(a2 + 104);
  if (v20)
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 96))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 108);
  v23 = *(a1 + 112);
  swift_beginAccess();
  v24 = *(a2 + 112);
  if (v23)
  {
    if (!*(a2 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 108))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 113);
  swift_beginAccess();
  v26 = *(a2 + 113);
  if (v25 == 18)
  {
    if (v26 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v26 == 18 || v25 != v26)
    {
      return result;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 114);
  swift_beginAccess();
  v29 = *(a2 + 114);
  if (v28 == 4)
  {
    if (v29 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v29 == 4 || v28 != v29)
    {
      return result;
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 115);
  swift_beginAccess();
  v31 = *(a2 + 115);
  if (v30 == 7)
  {
    if (v31 != 7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v31 == 7 || v30 != v31)
    {
      return result;
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 120);
  v33 = *(a1 + 128);
  swift_beginAccess();
  v34 = *(a2 + 128);
  if (v33)
  {
    if (!*(a2 + 128))
    {
      return 0;
    }
  }

  else
  {
    if (v32 != *(a2 + 120))
    {
      v34 = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 136);
  v36 = *(a1 + 144);
  swift_beginAccess();
  v37 = *(a2 + 144);
  if (v36)
  {
    if (!*(a2 + 144))
    {
      return 0;
    }
  }

  else
  {
    if (v35 != *(a2 + 136))
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 152);
  v39 = *(a1 + 160);
  swift_beginAccess();
  v40 = *(a2 + 160);
  if (v39)
  {
    if (!*(a2 + 160))
    {
      return 0;
    }
  }

  else
  {
    if (v38 != *(a2 + 152))
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 161);
  swift_beginAccess();
  v42 = *(a2 + 161);
  if (v41 == 8)
  {
    if (v42 != 8)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v42 == 8 || v41 != v42)
    {
      return result;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 162);
  swift_beginAccess();
  v44 = *(a2 + 162);
  if (v43 == 17)
  {
    if (v44 != 17)
    {
      return 0;
    }

    goto LABEL_86;
  }

  result = 0;
  if (v44 != 17 && v43 == v44)
  {
LABEL_86:
    swift_beginAccess();
    v45 = *(a1 + 163);
    swift_beginAccess();
    v46 = *(a2 + 163);
    if (v45 == 2)
    {
      if (v46 != 2)
      {
        return 0;
      }
    }

    else if (v46 == 2 || ((v45 ^ v46) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v47 = *(a1 + 164);
    swift_beginAccess();
    v48 = *(a2 + 164);
    if (v47 == 2)
    {
      if (v48 != 2)
      {
        return 0;
      }
    }

    else if (v48 == 2 || ((v47 ^ v48) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v49 = *(a1 + 168);
    v50 = *(a1 + 176);
    swift_beginAccess();
    v51 = *(a2 + 176);
    if ((v50 & 1) == 0)
    {
      if (v49 != *(a2 + 168))
      {
        v51 = 1;
      }

      if (v51)
      {
        return 0;
      }

LABEL_102:
      swift_beginAccess();
      v52 = *(a1 + 180);
      v53 = *(a1 + 184);
      swift_beginAccess();
      v54 = *(a2 + 184);
      if (v53)
      {
        if (!*(a2 + 184))
        {
          return 0;
        }
      }

      else
      {
        if (v52 != *(a2 + 180))
        {
          v54 = 1;
        }

        if (v54)
        {
          return 0;
        }
      }

      return 1;
    }

    if (*(a2 + 176))
    {
      goto LABEL_102;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001FAB3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A7B0, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FABDC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424A98, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FAC48()
{
  sub_100256CB4(&qword_100424A98, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);

  return Message.hash(into:)();
}

uint64_t sub_1001FAD04()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434228);
  sub_100005DF0(v0, qword_100434228);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "supl_port";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "supl_server";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "enable_msa";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "enable_lpp_rel13_wlan_meas";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "supports_lpp_rel13_wlan_meas_type_rssi";
  *(v16 + 1) = 38;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "supports_lpp_rel13_location_source";
  *(v18 + 1) = 34;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001FB018()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 32);
          goto LABEL_3;
        case 5:
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 36);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 6:
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 40);
          goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 20);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 2:
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 24);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 3:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1001FB168()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
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

  v6 = (v0 + v3[6]);
  if (v6[1])
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v0 + v3[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  sub_1001FB2A8(v0);
  sub_1001FB320(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001FB2A8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FB320(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FB3E4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v9) = 2;
  return result;
}

uint64_t sub_1001FB474(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A7A8, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FB514(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424AB0, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FB580()
{
  sub_100256CB4(&qword_100424AB0, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);

  return Message.hash(into:)();
}

uint64_t sub_1001FB624()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434240);
  sub_100005DF0(v0, qword_100434240);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10036C7F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "is_serving_cell";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mcc";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mnc";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tac";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "cellid";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "pci";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "rsrp";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "rsrq";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "ta";
  *(v22 + 8) = 2;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "dlearfcn";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001FBA2C()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 5)
    {
      if (result <= 7)
      {
        if (result == 6)
        {
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 40);
        }

        else
        {
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 44);
        }

LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else
      {
        switch(result)
        {
          case 8:
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 48);
            goto LABEL_3;
          case 9:
            v12 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 52);
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
          case 10:
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 56);
            goto LABEL_3;
        }
      }
    }

    else
    {
      if (result > 2)
      {
        if (result == 3)
        {
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 28);
        }

        else if (result == 4)
        {
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 32);
        }

        else
        {
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 36);
        }

        goto LABEL_3;
      }

      if (result == 1)
      {
        v8 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 20);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        v6 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 24);
        goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1001FBBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
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

  v11 = (v5 + v10[6]);
  if ((v11[1] & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v13 = (v5 + v10[7]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[8]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100210B54(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001FBE8C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
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
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 4) = 1;
  return result;
}

uint64_t sub_1001FBF70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A7A0, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FC010(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424108, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FC07C()
{
  sub_100256CB4(&qword_100424108, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);

  return Message.hash(into:)();
}

uint64_t sub_1001FC124()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434258);
  sub_100005DF0(v0, qword_100434258);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "is_serving_cell";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mcc";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mnc";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "lac";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "cellid";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001FC468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v11 = (a1 + *(result + 36));
  if ((v11[1] & 1) == 0)
  {
    return a6(*v11, 5, a3, a4);
  }

  return result;
}

uint64_t sub_1001FC564(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A798, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FC604(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424110, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FC670()
{
  sub_100256CB4(&qword_100424110, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);

  return Message.hash(into:)();
}

uint64_t sub_1001FC714()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434270);
  sub_100005DF0(v0, qword_100434270);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "is_serving_cell";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mcc";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mnc";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "lac";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "cellid";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "psc";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "freq_mode";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dluarfcn";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001FCAB4()
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
          v4 = v0;
          if (result == 5)
          {
            v3 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 36);
          }

          else
          {
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 44);
          sub_100268BD0();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 8)
        {
          v4 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 48);
          goto LABEL_5;
        }
      }

      else
      {
        if (result > 2)
        {
          v4 = v0;
          if (result == 3)
          {
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 28);
          }

          else
          {
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 32);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 20);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 2)
        {
          v4 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 24);
LABEL_5:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001FCC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
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

  v11 = (v5 + v10[6]);
  if ((v11[1] & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v13 = (v5 + v10[7]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[8]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);
  sub_1001FCEB8(v5);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001FCE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FCEB8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  if (*(a1 + *(result + 44)) != 4)
  {
    v3 = *(a1 + *(result + 44));
    sub_100268BD0();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FCF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 48));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001FD00C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
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
  *(a2 + a1[11]) = 4;
  v14 = a2 + v13;
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_1001FD0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A790, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FD170(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424118, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FD1DC()
{
  sub_100256CB4(&qword_100424118, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);

  return Message.hash(into:)();
}

uint64_t sub_1001FD280()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434288);
  sub_100005DF0(v0, qword_100434288);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cell_type";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lte_cell_info_vect";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "gsm_cell_info_vect";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "wcdma_cell_info_vect";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001FD518()
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
        break;
      }

      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationId(0) + 32);
        sub_100268C24();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_5;
      }

      if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
        sub_100256CB4(&qword_100424108, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
LABEL_16:
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 3)
    {
      v4 = v0;
      type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
      sub_100256CB4(&qword_100424110, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_5;
      }

      v4 = v0;
      type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
      sub_100256CB4(&qword_100424118, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);
    }

    v0 = v4;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001FD708()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v3 = result;
  if (*(v0 + *(result + 32)) != 7)
  {
    v5 = *(v0 + *(result + 32));
    sub_100268C24();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (!v1)
  {
    if (*(*v0 + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
      sub_100256CB4(&qword_100424108, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v0[1] + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
      sub_100256CB4(&qword_100424110, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v0[2] + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
      sub_100256CB4(&qword_100424118, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v4 = v0 + *(v3 + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001FD988@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  a2[2] = &_swiftEmptyArrayStorage;
  v4 = a2 + *(a1 + 28);
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 32)) = 7;
  return result;
}

uint64_t sub_1001FDA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A788, type metadata accessor for Proto_Gnss_Emergency_LocationId);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FDAA4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424AF8, type metadata accessor for Proto_Gnss_Emergency_LocationId);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FDB10()
{
  sub_100256CB4(&qword_100424AF8, type metadata accessor for Proto_Gnss_Emergency_LocationId);

  return Message.hash(into:)();
}

uint64_t sub_1001FDBB4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004342A0);
  sub_100005DF0(v0, qword_1004342A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "response_time_seconds";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_rssi_requested";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001FDDC4()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0) + 24);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t sub_1001FDE80()
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
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

  if (*(v0 + *(v3 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001FDF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_1001FE000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A780, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FE0A0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424B10, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FE10C()
{
  sub_100256CB4(&qword_100424B10, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);

  return Message.hash(into:)();
}

uint64_t sub_1001FE1B0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004342B8);
  sub_100005DF0(v0, qword_1004342B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bssid";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_serving_flag_present";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "serving_flag";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ap_channel_frequency_number";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "rssi_dbm";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001FE498()
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
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 20);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 24);
        goto LABEL_14;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 28);
LABEL_14:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 4:
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 32);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 36);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
      }
    }
  }
}

uint64_t sub_1001FE5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  v10 = result;
  v11 = v5 + *(result + 20);
  v12 = *(v11 + 8);
  if (v12 >> 60 != 15)
  {
    v13 = *v11;
    sub_1000150EC(*v11, *(v11 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    result = sub_10000CA64(v13, v12);
  }

  if (!v4)
  {
    if (*(v5 + v10[6]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v5 + v10[7]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    v14 = (v5 + v10[8]);
    if ((v14[1] & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

double sub_1001FE7AC@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_10036D770;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  v7 = a2 + v6;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + a1[9];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_1001FE844(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A778, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FE8E4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424138, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FE950()
{
  sub_100256CB4(&qword_100424138, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement);

  return Message.hash(into:)();
}

uint64_t sub_1001FE9F8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004342D0);
  sub_100005DF0(v0, qword_1004342D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
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
  *v10 = "meas";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001FEC08()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0) + 24);
        sub_1002682A0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
        sub_100256CB4(&qword_100424138, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001FED2C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v3 = result;
  if (*(v0 + *(result + 24)) == 6)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *(v0 + *(result + 24));
    sub_1002682A0();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
    sub_100256CB4(&qword_100424138, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v4 = v0 + *(v3 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001FEEB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 24)) = 6;
  return result;
}

uint64_t sub_1001FEF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A770, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FEFCC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424B38, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FF038()
{
  sub_100256CB4(&qword_100424B38, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);

  return Message.hash(into:)();
}

uint64_t sub_1001FF0DC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004342E8);
  sub_100005DF0(v0, qword_1004342E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_valid";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_accuracy";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "vertical_accuracy";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "max_location_age";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "delay";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001FF3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v12 = *(a4(0) + 20);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        v10 = *(a4(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v6 = *(a4(0) + 28);
          goto LABEL_3;
        case 4:
          v11 = *(a4(0) + 32);
LABEL_3:
          v4 = 0;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          v9 = *(a4(0) + 36);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1001FF558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = v5;
  result = a4(0);
  v13 = result;
  if (*(v8 + *(result + 20)) == 2)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v6)
    {
      return result;
    }
  }

  v14 = (v8 + v13[6]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v16 = (v8 + v13[7]);
  if ((v16[1] & 1) == 0)
  {
    v17 = *v16;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v18 = (v8 + v13[8]);
  if ((v18[1] & 1) == 0)
  {
    v19 = *v18;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v8, a1, a2, a3, a5, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001FF724@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
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
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1001FF794(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A768, type metadata accessor for Proto_Gnss_Emergency_QoP);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FF834(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424B50, type metadata accessor for Proto_Gnss_Emergency_QoP);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FF8A0()
{
  sub_100256CB4(&qword_100424B50, type metadata accessor for Proto_Gnss_Emergency_QoP);

  return Message.hash(into:)();
}

uint64_t sub_1001FF944()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434300);
  sub_100005DF0(v0, qword_100434300);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_valid";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "slp_address_type";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "f_qdn";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "_ipaddress";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001FFBD4()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0) + 32);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        }
      }

      else if (result == 1)
      {
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0) + 24);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0) + 28);
        sub_100268B7C();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001FFD14()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v3 = result;
  if (*(v0 + *(result + 24)) == 2)
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

  if (*(v0 + v3[7]) != 5)
  {
    v7 = *(v0 + v3[7]);
    sub_100268B7C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v4 = (v0 + v3[8]);
  if (v4[1])
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  v6 = v0 + v3[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001FFEA0@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  *(a2 + a1[6]) = 2;
  *(a2 + v6) = 5;
  v7 = (a2 + a1[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1001FFF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A760, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001FFFCC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424B68, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100200038()
{
  sub_100256CB4(&qword_100424B68, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);

  return Message.hash(into:)();
}

uint64_t sub_1002000E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434318);
  sub_100005DF0(v0, qword_100434318);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_valid";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "emergency_call_location_present";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002002F0()
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
      v1 = *(type metadata accessor for Proto_Gnss_Emergency_Notification(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for Proto_Gnss_Emergency_Notification(0) + 24);
LABEL_3:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }
}

uint64_t sub_100200398()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
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

uint64_t sub_1002004A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 2;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_10020050C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A758, type metadata accessor for Proto_Gnss_Emergency_Notification);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002005AC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424B80, type metadata accessor for Proto_Gnss_Emergency_Notification);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100200618()
{
  sub_100256CB4(&qword_100424B80, type metadata accessor for Proto_Gnss_Emergency_Notification);

  return Message.hash(into:)();
}

uint64_t sub_1002006BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434330);
  sub_100005DF0(v0, qword_100434330);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "e_slpaddress";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trigger_type";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002008CC()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0) + 20);
        type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
        sub_100256CB4(&qword_100424B68, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0) + 24);
        sub_100268D74();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100200A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100200ACC(v3, a1, a2, a3);
  if (!v4)
  {
    inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
    if (*(v3 + *(inited + 24)) != 4)
    {
      v7 = *(v3 + *(inited + 24));
      sub_100268D74();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100200ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423EF0, &qword_1003833C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  sub_10000A0A4(a1 + *(inited + 20), v8, &qword_100423EF0, &qword_1003833C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423EF0, &qword_1003833C0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  sub_100256CB4(&qword_100424B68, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
}

uint64_t sub_100200D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + *(a1 + 24)) = 4;
  return result;
}

uint64_t sub_100200DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A750, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100200E84(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424B98, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100200EF0()
{
  sub_100256CB4(&qword_100424B98, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);

  return Message.hash(into:)();
}

uint64_t sub_100200F94()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434348);
  sub_100005DF0(v0, qword_100434348);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "pos_method";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "qop";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "slp_address";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "notification";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "supl_initv2_extension";
  *(v14 + 8) = 21;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100201280()
{
  v0 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 18;
  v4 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  v5 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  v7 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  result = (*(*(inited - 8) + 56))(v3 + v10, 1, 1, inited);
  qword_100461170 = v3;
  return result;
}

uint64_t sub_1002013E4(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100423F08, &qword_1003833D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v34 = &v33 - v5;
  v6 = sub_100024A2C(&qword_100423F00, &qword_1003833D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v33 = &v33 - v8;
  v9 = sub_100024A2C(&qword_100423EF0, &qword_1003833C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = sub_100024A2C(&qword_100423EF8, &qword_1003833C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v33 - v15;
  *(v1 + 16) = 18;
  v17 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  v18 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  v20 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  v22 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  (*(*(inited - 8) + 56))(v1 + v23, 1, 1, inited);
  swift_beginAccess();
  v25 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v25;
  v26 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  sub_10000A0A4(a1 + v26, v16, &qword_100423EF8, &qword_1003833C8);
  swift_beginAccess();
  sub_10000AD64(v16, v1 + v17, &qword_100423EF8, &qword_1003833C8);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  sub_10000A0A4(a1 + v27, v12, &qword_100423EF0, &qword_1003833C0);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v19, &qword_100423EF0, &qword_1003833C0);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  v29 = v33;
  sub_10000A0A4(a1 + v28, v33, &qword_100423F00, &qword_1003833D0);
  swift_beginAccess();
  sub_10000AD64(v29, v1 + v21, &qword_100423F00, &qword_1003833D0);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  v31 = v34;
  sub_10000A0A4(a1 + v30, v34, &qword_100423F08, &qword_1003833D8);

  swift_beginAccess();
  sub_10000AD64(v31, v1 + v23, &qword_100423F08, &qword_1003833D8);
  swift_endAccess();
  return v1;
}

uint64_t sub_1002018A4()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop, &qword_100423EF8, &qword_1003833C8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress, &qword_100423EF0, &qword_1003833C0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification, &qword_100423F00, &qword_1003833D0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension, &qword_100423F08, &qword_1003833D8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100201978()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1002013E4(v6);
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
          sub_100268F18();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_8;
        }

        if (result == 2)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_QoP(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_QoP;
          v15 = &qword_100424B50;
          goto LABEL_7;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress;
            v15 = &qword_100424B68;
            goto LABEL_7;
          case 4:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_Notification(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_Notification;
            v15 = &qword_100424B80;
LABEL_7:
            sub_100256CB4(v15, v14);
            v1 = v13;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
            swift_endAccess();
            break;
          case 5:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension;
            v15 = &qword_100424B98;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100201C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 18)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    sub_100268F18();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_100201DA0(v9, a1, a2, a3);
  sub_100201FC8(v9, a1, a2, a3);
  sub_1002021F0(v9, a1, a2, a3);
  sub_100202418(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100201DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423EF8, &qword_1003833C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423EF8, &qword_1003833C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423EF8, &qword_1003833C8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_QoP);
  sub_100256CB4(&qword_100424B50, type metadata accessor for Proto_Gnss_Emergency_QoP);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_QoP);
}

uint64_t sub_100201FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423EF0, &qword_1003833C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423EF0, &qword_1003833C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423EF0, &qword_1003833C0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  sub_100256CB4(&qword_100424B68, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
}

uint64_t sub_1002021F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423F00, &qword_1003833D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423F00, &qword_1003833D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F00, &qword_1003833D0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Notification);
  sub_100256CB4(&qword_100424B80, type metadata accessor for Proto_Gnss_Emergency_Notification);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Notification);
}

uint64_t sub_100202418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423F08, &qword_1003833D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v10 = *(inited - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(inited);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423F08, &qword_1003833D8);
  if ((*(v10 + 48))(v8, 1, inited) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F08, &qword_1003833D8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  sub_100256CB4(&qword_100424B98, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
}

BOOL sub_100202684(uint64_t a1, uint64_t a2)
{
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v105 = *(inited - 8);
  v5 = *(v105 + 64);
  __chkstk_darwin(inited);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100024A2C(&qword_10042AAC0, &qword_100390DD8);
  v8 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v10 = &v98 - v9;
  v11 = sub_100024A2C(&qword_100423F08, &qword_1003833D8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v102 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v98 - v15;
  v109 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v108 = *(v109 - 8);
  v16 = *(v108 + 64);
  __chkstk_darwin(v109);
  v103 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100024A2C(&qword_10042AAC8, &qword_100390DE0);
  v18 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v110 = &v98 - v19;
  v20 = sub_100024A2C(&qword_100423F00, &qword_1003833D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v117 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v119 = &v98 - v24;
  v115 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v114 = *(v115 - 8);
  v25 = *(v114 + 64);
  __chkstk_darwin(v115);
  v106 = (&v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = sub_100024A2C(&qword_10042AAD0, &qword_100390DE8);
  v27 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v116 = &v98 - v28;
  v29 = sub_100024A2C(&qword_100423EF0, &qword_1003833C0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v111 = (&v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v121 = &v98 - v33;
  v122 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v34 = *(v122 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v122);
  v112 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100024A2C(&qword_10042AAD8, &unk_100390DF0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = &v98 - v39;
  v41 = sub_100024A2C(&qword_100423EF8, &qword_1003833C8);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v120 = &v98 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v98 - v45;
  swift_beginAccess();
  v47 = *(a1 + 16);
  swift_beginAccess();
  v48 = *(a2 + 16);
  if (v47 == 18)
  {
    if (v48 != 18)
    {
      return 0;
    }

LABEL_6:
    v99 = v7;
    v100 = inited;
    v101 = v10;
    v50 = a2;
    v51 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
    swift_beginAccess();
    sub_10000A0A4(a1 + v51, v46, &qword_100423EF8, &qword_1003833C8);
    v52 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
    swift_beginAccess();
    v53 = *(v37 + 48);
    sub_10000A0A4(v46, v40, &qword_100423EF8, &qword_1003833C8);
    sub_10000A0A4(v50 + v52, &v40[v53], &qword_100423EF8, &qword_1003833C8);
    v54 = *(v34 + 48);
    v55 = v122;
    if (v54(v40, 1, v122) == 1)
    {

      sub_1000059A8(v46, &qword_100423EF8, &qword_1003833C8);
      if (v54(&v40[v53], 1, v55) == 1)
      {
        sub_1000059A8(v40, &qword_100423EF8, &qword_1003833C8);
LABEL_13:
        v61 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
        swift_beginAccess();
        v62 = v121;
        sub_10000A0A4(a1 + v61, v121, &qword_100423EF0, &qword_1003833C0);
        v63 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
        swift_beginAccess();
        v64 = *(v113 + 48);
        v40 = v116;
        sub_10000A0A4(v62, v116, &qword_100423EF0, &qword_1003833C0);
        sub_10000A0A4(v50 + v63, &v40[v64], &qword_100423EF0, &qword_1003833C0);
        v65 = *(v114 + 48);
        v66 = v115;
        if (v65(v40, 1, v115) == 1)
        {
          sub_1000059A8(v62, &qword_100423EF0, &qword_1003833C0);
          v67 = v65(&v40[v64], 1, v66);
          v68 = v118;
          v69 = v117;
          v70 = v119;
          if (v67 == 1)
          {
            sub_1000059A8(v40, &qword_100423EF0, &qword_1003833C0);
LABEL_25:
            v77 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
            swift_beginAccess();
            sub_10000A0A4(a1 + v77, v70, &qword_100423F00, &qword_1003833D0);
            v78 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
            swift_beginAccess();
            v79 = *(v107 + 48);
            v80 = v70;
            v81 = v70;
            v82 = v110;
            sub_10000A0A4(v80, v110, &qword_100423F00, &qword_1003833D0);
            sub_10000A0A4(v50 + v78, v82 + v79, &qword_100423F00, &qword_1003833D0);
            v83 = *(v108 + 48);
            v84 = v109;
            if (v83(v82, 1, v109) == 1)
            {
              sub_1000059A8(v81, &qword_100423F00, &qword_1003833D0);
              if (v83(v82 + v79, 1, v84) == 1)
              {
                sub_1000059A8(v82, &qword_100423F00, &qword_1003833D0);
LABEL_32:
                v88 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
                swift_beginAccess();
                sub_10000A0A4(a1 + v88, v68, &qword_100423F08, &qword_1003833D8);
                v89 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
                swift_beginAccess();
                v90 = *(v104 + 48);
                v91 = v101;
                sub_10000A0A4(v68, v101, &qword_100423F08, &qword_1003833D8);
                sub_10000A0A4(v50 + v89, v91 + v90, &qword_100423F08, &qword_1003833D8);
                v92 = *(v105 + 48);
                v93 = v100;
                if (v92(v91, 1, v100) == 1)
                {

                  sub_1000059A8(v68, &qword_100423F08, &qword_1003833D8);
                  if (v92(v91 + v90, 1, v93) == 1)
                  {
                    sub_1000059A8(v91, &qword_100423F08, &qword_1003833D8);
                    return 1;
                  }

                  goto LABEL_37;
                }

                v94 = v102;
                sub_10000A0A4(v91, v102, &qword_100423F08, &qword_1003833D8);
                if (v92(v91 + v90, 1, v93) == 1)
                {

                  sub_1000059A8(v68, &qword_100423F08, &qword_1003833D8);
                  sub_100246490(v94, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
LABEL_37:
                  sub_1000059A8(v91, &qword_10042AAC0, &qword_100390DD8);
                  return 0;
                }

                v95 = v91 + v90;
                v96 = v99;
                sub_1002463C0(v95, v99, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
                v97 = sub_10024A458(v94, v96);

                sub_100246490(v96, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
                sub_1000059A8(v68, &qword_100423F08, &qword_1003833D8);
                sub_100246490(v94, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
                sub_1000059A8(v91, &qword_100423F08, &qword_1003833D8);
                return (v97 & 1) != 0;
              }

              goto LABEL_30;
            }

            sub_10000A0A4(v82, v69, &qword_100423F00, &qword_1003833D0);
            if (v83(v82 + v79, 1, v84) == 1)
            {
              sub_1000059A8(v119, &qword_100423F00, &qword_1003833D0);
              sub_100246490(v69, type metadata accessor for Proto_Gnss_Emergency_Notification);
LABEL_30:
              v57 = &qword_10042AAC8;
              v58 = &qword_100390DE0;
              v74 = v82;
              goto LABEL_20;
            }

            v85 = v82 + v79;
            v86 = v103;
            sub_1002463C0(v85, v103, type metadata accessor for Proto_Gnss_Emergency_Notification);
            v87 = sub_100252AB4(v69, v86);
            sub_100246490(v86, type metadata accessor for Proto_Gnss_Emergency_Notification);
            sub_1000059A8(v119, &qword_100423F00, &qword_1003833D0);
            sub_100246490(v69, type metadata accessor for Proto_Gnss_Emergency_Notification);
            sub_1000059A8(v82, &qword_100423F00, &qword_1003833D0);
            if (v87)
            {
              goto LABEL_32;
            }

LABEL_21:

            return 0;
          }
        }

        else
        {
          v71 = v111;
          sub_10000A0A4(v40, v111, &qword_100423EF0, &qword_1003833C0);
          v72 = v65(&v40[v64], 1, v66);
          v73 = v118;
          v69 = v117;
          v70 = v119;
          if (v72 != 1)
          {
            v75 = &v40[v64];
            v76 = v106;
            sub_1002463C0(v75, v106, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
            LODWORD(v122) = sub_10025602C(v71, v76);
            sub_100246490(v76, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
            sub_1000059A8(v121, &qword_100423EF0, &qword_1003833C0);
            sub_100246490(v71, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
            sub_1000059A8(v40, &qword_100423EF0, &qword_1003833C0);
            v68 = v73;
            if ((v122 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_25;
          }

          sub_1000059A8(v121, &qword_100423EF0, &qword_1003833C0);
          sub_100246490(v71, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
        }

        v57 = &qword_10042AAD0;
        v58 = &qword_100390DE8;
LABEL_19:
        v74 = v40;
LABEL_20:
        sub_1000059A8(v74, v57, v58);
        goto LABEL_21;
      }
    }

    else
    {
      v56 = v120;
      sub_10000A0A4(v40, v120, &qword_100423EF8, &qword_1003833C8);
      if (v54(&v40[v53], 1, v55) != 1)
      {
        v59 = v112;
        sub_1002463C0(&v40[v53], v112, type metadata accessor for Proto_Gnss_Emergency_QoP);

        v60 = sub_10025618C(v56, v59, type metadata accessor for Proto_Gnss_Emergency_QoP);
        sub_100246490(v59, type metadata accessor for Proto_Gnss_Emergency_QoP);
        sub_1000059A8(v46, &qword_100423EF8, &qword_1003833C8);
        sub_100246490(v56, type metadata accessor for Proto_Gnss_Emergency_QoP);
        sub_1000059A8(v40, &qword_100423EF8, &qword_1003833C8);
        if ((v60 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }

      sub_1000059A8(v46, &qword_100423EF8, &qword_1003833C8);
      sub_100246490(v56, type metadata accessor for Proto_Gnss_Emergency_QoP);
    }

    v57 = &qword_10042AAD8;
    v58 = &unk_100390DF0;
    goto LABEL_19;
  }

  result = 0;
  if (v48 != 18 && v47 == v48)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10020374C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A748, type metadata accessor for Proto_Gnss_Emergency_Init);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002037EC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424BB0, type metadata accessor for Proto_Gnss_Emergency_Init);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100203858()
{
  sub_100256CB4(&qword_100424BB0, type metadata accessor for Proto_Gnss_Emergency_Init);

  return Message.hash(into:)();
}

uint64_t sub_1002038FC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434360);
  sub_100005DF0(v0, qword_100434360);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "supl_port";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "supl_server";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "enable_msa";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "imsi";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "config";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "nsuuid";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "enable_lpp_rel13_wlan_meas";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "supports_lpp_rel13_wlan_meas_type_rssi";
  *(v21 + 1) = 38;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "supports_lpp_rel13_location_source";
  *(v22 + 8) = 34;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100203CE4()
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
          if (result == 3)
          {
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            goto LABEL_6;
          }

          v6 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 32);
          goto LABEL_22;
        }

        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v6 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 24);
          goto LABEL_22;
        }

        v10 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          v6 = v0;
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 40);
LABEL_22:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_6;
        }

        v12 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 36);
        type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
        sub_100256CB4(&qword_100424A80, type metadata accessor for Proto_Gnss_Emergency_Configuration);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 7:
            v3 = v0;
            v11 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 44);
            goto LABEL_5;
          case 8:
            v3 = v0;
            v13 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 48);
            goto LABEL_5;
          case 9:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 52);
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100203F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
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
  if (v13[1])
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  v15 = (v5 + v10[8]);
  if (v15[1])
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  sub_1002040BC(v5, a1, a2, a3);
  sub_1002042D8(v5);
  sub_1002415D0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  sub_100204350(v5);
  sub_100241868(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1002040BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  sub_10000A0A4(a1 + *(v14 + 36), v8, &qword_100423F10, &qword_1003833E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F10, &qword_1003833E0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  sub_100256CB4(&qword_100424A80, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Configuration);
}

uint64_t sub_1002042D8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100204350(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100204414@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  *(a2 + a1[7]) = 2;
  v8 = (a2 + v7);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[9];
  v10 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  result = (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v12 = a1[11];
  v13 = (a2 + a1[10]);
  *v13 = 0;
  v13[1] = 0;
  *(a2 + v12) = 2;
  v14 = a1[13];
  *(a2 + a1[12]) = 2;
  *(a2 + v14) = 2;
  return result;
}

uint64_t sub_100204504(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A740, type metadata accessor for Proto_Gnss_Emergency_SuplContext);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002045A4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424BC8, type metadata accessor for Proto_Gnss_Emergency_SuplContext);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100204610()
{
  sub_100256CB4(&qword_100424BC8, type metadata accessor for Proto_Gnss_Emergency_SuplContext);

  return Message.hash(into:)();
}

uint64_t sub_1002046B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434378);
  sub_100005DF0(v0, qword_100434378);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10036D7D0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "session_id";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "pos_method";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "status";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "end_cause";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "horz_accuracy_requested";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "lat";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lon";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "alt";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "unc_semi_major";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "unc_semi_minor";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "unc_alt";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "eph_provided";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "reference_time_provided";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "reference_location_provided";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "nw_ref_location";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "nw_ref_time";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100204C4C()
{
  v0 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 20) = 1;
  *(v3 + 21) = 8466;
  *(v3 + 23) = 24;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 1;
  *(v3 + 88) = 0;
  *(v3 + 96) = 1;
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 120) = 0;
  *(v3 + 128) = 1;
  *(v3 + 129) = 514;
  *(v3 + 131) = 2;
  v4 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  v5 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  v7 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  result = (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  qword_100461190 = v3;
  return result;
}

uint64_t sub_100204D7C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100423F20, &qword_1003833F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v35 - v5;
  v6 = sub_100024A2C(&qword_100423F18, &qword_1003833E8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v35 - v8;
  *(v1 + 16) = 0;
  *(v1 + 21) = 8466;
  *(v1 + 23) = 24;
  *(v1 + 24) = 0;
  *(v1 + 20) = 1;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  v36 = (v1 + 56);
  *(v1 + 72) = 0;
  v37 = (v1 + 72);
  *(v1 + 64) = 1;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  v38 = (v1 + 88);
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  v39 = (v1 + 104);
  *(v1 + 120) = 0;
  v40 = (v1 + 120);
  *(v1 + 112) = 1;
  *(v1 + 128) = 1;
  *(v1 + 129) = 514;
  v41 = (v1 + 129);
  *(v1 + 131) = 2;
  v9 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  v42 = (v1 + 131);
  v43 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  v10 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  v44 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  v12 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  swift_beginAccess();
  LODWORD(v11) = *(a1 + 16);
  v13 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 20) = v13;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 21);
  swift_beginAccess();
  *(v1 + 21) = v11;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 22);
  swift_beginAccess();
  *(v1 + 22) = v11;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 23);
  swift_beginAccess();
  *(v1 + 23) = v11;
  swift_beginAccess();
  v14 = *(a1 + 24);
  LOBYTE(v11) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v14;
  *(v1 + 32) = v11;
  swift_beginAccess();
  v15 = *(a1 + 40);
  LOBYTE(v14) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v15;
  *(v1 + 48) = v14;
  swift_beginAccess();
  v16 = *(a1 + 56);
  LOBYTE(v14) = *(a1 + 64);
  v17 = v36;
  swift_beginAccess();
  *v17 = v16;
  *(v1 + 64) = v14;
  swift_beginAccess();
  v18 = *(a1 + 72);
  LOBYTE(v14) = *(a1 + 80);
  v19 = v37;
  swift_beginAccess();
  *v19 = v18;
  *(v1 + 80) = v14;
  swift_beginAccess();
  v20 = *(a1 + 88);
  LOBYTE(v14) = *(a1 + 96);
  v21 = v38;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 96) = v14;
  swift_beginAccess();
  v22 = *(a1 + 104);
  LOBYTE(v14) = *(a1 + 112);
  v23 = v39;
  swift_beginAccess();
  *v23 = v22;
  *(v1 + 112) = v14;
  swift_beginAccess();
  v24 = *(a1 + 120);
  LOBYTE(v14) = *(a1 + 128);
  v25 = v40;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 128) = v14;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 129);
  v26 = v41;
  swift_beginAccess();
  *v26 = v24;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 130);
  swift_beginAccess();
  *(v1 + 130) = v24;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 131);
  v27 = v42;
  swift_beginAccess();
  *v27 = v24;
  v28 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  v29 = v45;
  sub_10000A0A4(a1 + v28, v45, &qword_100423F18, &qword_1003833E8);
  v30 = v43;
  swift_beginAccess();
  sub_10000AD64(v29, v1 + v30, &qword_100423F18, &qword_1003833E8);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  v32 = v46;
  sub_10000A0A4(a1 + v31, v46, &qword_100423F20, &qword_1003833F0);

  v33 = v44;
  swift_beginAccess();
  sub_10000AD64(v32, v1 + v33, &qword_100423F20, &qword_1003833F0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1002053A4()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation, &qword_100423F18, &qword_1003833E8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime, &qword_100423F20, &qword_1003833F0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100205438()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100204D7C(v6);
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
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_17;
        case 2:
          swift_beginAccess();
          sub_100268F18();
          goto LABEL_14;
        case 3:
          swift_beginAccess();
          sub_100268D20();
          goto LABEL_14;
        case 4:
          swift_beginAccess();
          sub_100268CCC();
LABEL_14:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 12:
        case 13:
        case 14:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 15:
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation;
          v14 = &unk_100425248;
          goto LABEL_11;
        case 16:
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime;
          v14 = &unk_100425260;
LABEL_11:
          sub_100256CB4(v14, v13);
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

uint64_t sub_100205834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(v9 + 21) != 18)
  {
    sub_100268F18();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 22) != 33)
  {
    sub_100268D20();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 23) != 24)
  {
    sub_100268CCC();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 32) & 1) == 0)
  {
    v12 = *(v9 + 24);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 48) & 1) == 0)
  {
    v13 = *(v9 + 40);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_100205B50(v9);
  sub_100205BD4(v9);
  sub_100205C58(v9);
  sub_100205CDC(v9);
  sub_100205D60(v9);
  sub_100205DE4(v9);
  sub_100205E6C(v9);
  sub_100205EF4(v9);
  sub_100205F7C(v9, a1, a2, a3);
  sub_1002061A4(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100205B50(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 64) & 1) == 0)
  {
    v3 = *(a1 + 56);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205BD4(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 80) & 1) == 0)
  {
    v3 = *(a1 + 72);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205C58(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 96) & 1) == 0)
  {
    v3 = *(a1 + 88);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205CDC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    v3 = *(a1 + 104);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205D60(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    v3 = *(a1 + 120);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205DE4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 129) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205E6C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 130) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205EF4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 131) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100205F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423F18, &qword_1003833E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423F18, &qword_1003833E8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F18, &qword_1003833E8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  sub_100256CB4(&qword_100425248, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
}

uint64_t sub_1002061A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423F20, &qword_1003833F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423F20, &qword_1003833F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F20, &qword_1003833F0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  sub_100256CB4(&qword_100425260, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
}

BOOL sub_100206410(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v89 = *(v91 - 8);
  v4 = *(v89 + 64);
  __chkstk_darwin(v91);
  v86 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100024A2C(&qword_10042AAB0, &qword_100390DC8);
  v6 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v93 = &v84 - v7;
  v8 = sub_100024A2C(&qword_100423F20, &qword_1003833F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v87 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v84 - v12;
  v13 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v92 = *(v13 - 8);
  v14 = *(v92 + 64);
  __chkstk_darwin(v13);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100024A2C(&qword_10042AAB8, &qword_100390DD0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v94 = &v84 - v19;
  v20 = sub_100024A2C(&qword_100423F18, &qword_1003833E8);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v84 - v25;
  swift_beginAccess();
  v27 = *(a1 + 16);
  v28 = *(a1 + 20);
  swift_beginAccess();
  v29 = *(a2 + 20);
  if (v28)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v27 != *(a2 + 16))
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 21);
  swift_beginAccess();
  v31 = *(a2 + 21);
  if (v30 == 18)
  {
    if (v31 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v31 == 18 || v30 != v31)
    {
      return result;
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 22);
  swift_beginAccess();
  v34 = *(a2 + 22);
  if (v33 == 33)
  {
    if (v34 != 33)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v34 == 33 || v33 != v34)
    {
      return result;
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 23);
  swift_beginAccess();
  v36 = *(a2 + 23);
  if (v35 == 24)
  {
    if (v36 != 24)
    {
      return 0;
    }

LABEL_22:
    swift_beginAccess();
    v37 = *(a1 + 24);
    v38 = *(a1 + 32);
    swift_beginAccess();
    v39 = *(a2 + 32);
    if (v38)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v37 != *(a2 + 24))
      {
        v39 = 1;
      }

      if (v39)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v40 = *(a1 + 40);
    v41 = *(a1 + 48);
    swift_beginAccess();
    v42 = *(a2 + 48);
    if (v41)
    {
      if (!*(a2 + 48))
      {
        return 0;
      }
    }

    else
    {
      if (v40 != *(a2 + 40))
      {
        v42 = 1;
      }

      if (v42)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v43 = *(a1 + 56);
    v44 = *(a1 + 64);
    swift_beginAccess();
    v45 = *(a2 + 64);
    if (v44)
    {
      if (!*(a2 + 64))
      {
        return 0;
      }
    }

    else
    {
      if (v43 != *(a2 + 56))
      {
        v45 = 1;
      }

      if (v45)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v46 = *(a1 + 72);
    v47 = *(a1 + 80);
    swift_beginAccess();
    v48 = *(a2 + 80);
    if (v47)
    {
      if (!*(a2 + 80))
      {
        return 0;
      }
    }

    else
    {
      if (v46 != *(a2 + 72))
      {
        v48 = 1;
      }

      if (v48)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v49 = *(a1 + 88);
    v50 = *(a1 + 96);
    swift_beginAccess();
    v51 = *(a2 + 96);
    if (v50)
    {
      if (!*(a2 + 96))
      {
        return 0;
      }
    }

    else
    {
      if (v49 != *(a2 + 88))
      {
        v51 = 1;
      }

      if (v51)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v52 = *(a1 + 104);
    v53 = *(a1 + 112);
    swift_beginAccess();
    v54 = *(a2 + 112);
    if (v53)
    {
      if (!*(a2 + 112))
      {
        return 0;
      }
    }

    else
    {
      if (v52 != *(a2 + 104))
      {
        v54 = 1;
      }

      if (v54)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v55 = *(a1 + 120);
    v56 = *(a1 + 128);
    swift_beginAccess();
    v57 = *(a2 + 128);
    if (v56)
    {
      if (!*(a2 + 128))
      {
        return 0;
      }
    }

    else
    {
      if (v55 != *(a2 + 120))
      {
        v57 = 1;
      }

      if (v57)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v58 = *(a1 + 129);
    swift_beginAccess();
    v59 = *(a2 + 129);
    if (v58 == 2)
    {
      if (v59 != 2)
      {
        return 0;
      }
    }

    else if (v59 == 2 || ((v58 ^ v59) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v60 = *(a1 + 130);
    swift_beginAccess();
    v61 = *(a2 + 130);
    if (v60 == 2)
    {
      if (v61 != 2)
      {
        return 0;
      }
    }

    else if (v61 == 2 || ((v60 ^ v61) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v62 = *(a1 + 131);
    swift_beginAccess();
    v63 = *(a2 + 131);
    if (v62 == 2)
    {
      if (v63 != 2)
      {
        return 0;
      }
    }

    else if (v63 == 2 || ((v62 ^ v63) & 1) != 0)
    {
      return 0;
    }

    v64 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    sub_10000A0A4(a1 + v64, v26, &qword_100423F18, &qword_1003833E8);
    v65 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    v66 = *(v17 + 48);
    v67 = v94;
    sub_10000A0A4(v26, v94, &qword_100423F18, &qword_1003833E8);
    v85 = v66;
    sub_10000A0A4(a2 + v65, v67 + v66, &qword_100423F18, &qword_1003833E8);
    v68 = *(v92 + 48);
    if (v68(v67, 1, v13) == 1)
    {

      sub_1000059A8(v26, &qword_100423F18, &qword_1003833E8);
      if (v68(v94 + v85, 1, v13) == 1)
      {
        sub_1000059A8(v94, &qword_100423F18, &qword_1003833E8);
LABEL_87:
        v72 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
        swift_beginAccess();
        v73 = v90;
        sub_10000A0A4(a1 + v72, v90, &qword_100423F20, &qword_1003833F0);
        v74 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
        swift_beginAccess();
        v75 = *(v88 + 48);
        v76 = v73;
        v77 = v93;
        sub_10000A0A4(v76, v93, &qword_100423F20, &qword_1003833F0);
        sub_10000A0A4(a2 + v74, v77 + v75, &qword_100423F20, &qword_1003833F0);
        v78 = *(v89 + 48);
        if (v78(v77, 1, v91) == 1)
        {

          sub_1000059A8(v90, &qword_100423F20, &qword_1003833F0);
          if (v78(v93 + v75, 1, v91) == 1)
          {
            sub_1000059A8(v93, &qword_100423F20, &qword_1003833F0);
            return 1;
          }

          goto LABEL_92;
        }

        v79 = v93;
        sub_10000A0A4(v93, v87, &qword_100423F20, &qword_1003833F0);
        if (v78(v79 + v75, 1, v91) == 1)
        {

          sub_1000059A8(v90, &qword_100423F20, &qword_1003833F0);
          sub_100246490(v87, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
LABEL_92:
          sub_1000059A8(v93, &qword_10042AAB0, &qword_100390DC8);
          return 0;
        }

        v80 = v93;
        v81 = v86;
        sub_1002463C0(v93 + v75, v86, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        v82 = v87;
        v83 = sub_10024B114(v87, v81);

        sub_100246490(v81, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        sub_1000059A8(v90, &qword_100423F20, &qword_1003833F0);
        sub_100246490(v82, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        sub_1000059A8(v80, &qword_100423F20, &qword_1003833F0);
        return (v83 & 1) != 0;
      }
    }

    else
    {
      v69 = v94;
      sub_10000A0A4(v94, v24, &qword_100423F18, &qword_1003833E8);
      if (v68(v69 + v85, 1, v13) != 1)
      {
        v70 = v94;
        sub_1002463C0(v94 + v85, v16, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);

        v71 = sub_100250CCC(v24, v16);
        sub_100246490(v16, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
        sub_1000059A8(v26, &qword_100423F18, &qword_1003833E8);
        sub_100246490(v24, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
        sub_1000059A8(v70, &qword_100423F18, &qword_1003833E8);
        if (v71)
        {
          goto LABEL_87;
        }

LABEL_85:

        return 0;
      }

      sub_1000059A8(v26, &qword_100423F18, &qword_1003833E8);
      sub_100246490(v24, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    }

    sub_1000059A8(v94, &qword_10042AAB8, &qword_100390DD0);
    goto LABEL_85;
  }

  result = 0;
  if (v36 != 24 && v35 == v36)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100207114(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A738, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002071B4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424BE0, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100207220()
{
  sub_100256CB4(&qword_100424BE0, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);

  return Message.hash(into:)();
}

uint64_t sub_1002072C4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434390);
  sub_100005DF0(v0, qword_100434390);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ms_part";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ls_part";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002075D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A730, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100207670(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424BF8, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002076DC()
{
  sub_100256CB4(&qword_100424BF8, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);

  return Message.hash(into:)();
}

uint64_t sub_100207780()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004343A8);
  sub_100005DF0(v0, qword_1004343A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "utran_gps_timing_cell_frames";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ref_cell_sfn";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ref_cell_psc";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "round_trip_time";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "modem_state";
  *(v14 + 8) = 11;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100207A54()
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
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 20);
          type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
          sub_100256CB4(&qword_100424BF8, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 32);
            goto LABEL_5;
          case 5:
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 36);
            sub_100268AD4();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100207C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100207D18(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    v7 = (v3 + v6[6]);
    if ((v7[1] & 1) == 0)
    {
      v8 = *v7;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v9 = (v3 + v6[7]);
    if ((v9[1] & 1) == 0)
    {
      v10 = *v9;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v11 = (v3 + v6[8]);
    if ((v11[1] & 1) == 0)
    {
      v12 = *v11;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    sub_100207F34(v3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100207D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100423F28, &qword_1003833F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F28, &qword_1003833F8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  sub_100256CB4(&qword_100424BF8, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
}

uint64_t sub_100207F34(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  if (*(a1 + *(result + 36)) != 5)
  {
    v3 = *(a1 + *(result + 36));
    sub_100268AD4();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10020800C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + v10) = 5;
  return result;
}

uint64_t sub_1002080E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A728, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100208188(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C10, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002081F4()
{
  sub_100256CB4(&qword_100424C10, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);

  return Message.hash(into:)();
}

uint64_t sub_10020829C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004343C0);
  sub_100005DF0(v0, qword_1004343C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mcc";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mnc";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "three_digit_mnc";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002085D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A720, type metadata accessor for Proto_Gnss_Emergency_Plmn);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100208670(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002086DC()
{
  sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn);

  return Message.hash(into:)();
}

uint64_t sub_100208780()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004343D8);
  sub_100005DF0(v0, qword_1004343D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "session_protocol";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pos_protocol";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "session_id";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002089DC()
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
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 28);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 24);
          sub_100268A2C();
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 20);
          sub_100268A80();
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

uint64_t sub_100208AF4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 6)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v6 = *(v0 + *(result + 20));
    sub_100268A80();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 7)
  {
    v7 = *(v0 + *(v3 + 24));
    sub_100268A2C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v4 = (v0 + *(v3 + 28));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100208C60@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 6;
  *(a2 + v5) = 7;
  v6 = a2 + a1[7];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_100208CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A718, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100208D80(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100208DEC()
{
  sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);

  return Message.hash(into:)();
}

uint64_t sub_100208E90()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004343F0);
  sub_100005DF0(v0, qword_1004343F0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100383370;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "interval";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "method";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "response_time";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "horizontal_accuracy";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "velocity_requested";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "horizontal_confidence";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "vertical_accuracy";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "vertical_confidence";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "vertical_requested";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "assistance_availability";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "requested_gnss";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "loc_cordinate_type_allowed";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "velocity_types";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "report_amount";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "pos_protocol";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "session_id";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "horizontal_accuracy_meters";
  *(v37 + 8) = 26;
  *(v37 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100209450()
{
  type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 20) = 1281;
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
  *(result + 116) = 1793;
  *(result + 120) = 0;
  *(result + 124) = 1;
  *(result + 128) = 0;
  *(result + 132) = 1;
  qword_1004611C8 = result;
  return result;
}

uint64_t sub_100209510()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v7 = swift_allocObject();
    sub_100246654(v6);

    *(v2 + v3) = v7;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while ((v9 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_11;
        case 2:
          swift_beginAccess();
          sub_1002689D8();
          goto LABEL_9;
        case 15:
          swift_beginAccess();
          sub_100268A2C();
LABEL_9:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_11:
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

uint64_t sub_100209848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(v9 + 21) != 5)
  {
    sub_1002689D8();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 28) & 1) == 0)
  {
    v12 = *(v9 + 24);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
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

  swift_beginAccess();
  if ((*(v9 + 52) & 1) == 0)
  {
    v15 = *(v9 + 48);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100237D94(v9, a1, a2, a3, 7, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100237E30(v9, a1, a2, a3, 8, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100237ECC(v9, a1, a2, a3, 9, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100237F68(v9);
  sub_100237FF4(v9);
  sub_100238080(v9, a1, a2, a3, 12, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_10023811C(v9, a1, a2, a3, 13, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1002381B8(v9, a1, a2, a3, 14, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100209C14(v9);
  sub_100238254(v9, a1, a2, a3, 16, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1002382F0(v9, a1, a2, a3, 17, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100209C14(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 117) != 7)
  {
    sub_100268A2C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100209CDC(uint64_t a1, uint64_t a2)
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
  v7 = *(a1 + 21);
  swift_beginAccess();
  v8 = *(a2 + 21);
  if (v7 == 5)
  {
    if (v8 != 5)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 5 || v7 != v8)
    {
      return result;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  swift_beginAccess();
  v12 = *(a2 + 28);
  if (v11)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 24))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 32);
  v14 = *(a1 + 36);
  swift_beginAccess();
  v15 = *(a2 + 36);
  if (v14)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 32))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 40);
  v17 = *(a1 + 44);
  swift_beginAccess();
  v18 = *(a2 + 44);
  if (v17)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 40))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 48);
  v20 = *(a1 + 52);
  swift_beginAccess();
  v21 = *(a2 + 52);
  if (v20)
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 48))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 56);
  v23 = *(a1 + 60);
  swift_beginAccess();
  v24 = *(a2 + 60);
  if (v23)
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 56))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 64);
  v26 = *(a1 + 68);
  swift_beginAccess();
  v27 = *(a2 + 68);
  if (v26)
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 64))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 72);
  v29 = *(a1 + 76);
  swift_beginAccess();
  v30 = *(a2 + 76);
  if (v29)
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 72))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 80);
  v32 = *(a1 + 84);
  swift_beginAccess();
  v33 = *(a2 + 84);
  if (v32)
  {
    if (!*(a2 + 84))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 80))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 88);
  v35 = *(a1 + 92);
  swift_beginAccess();
  v36 = *(a2 + 92);
  if (v35)
  {
    if (!*(a2 + 92))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 88))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 96);
  v38 = *(a1 + 100);
  swift_beginAccess();
  v39 = *(a2 + 100);
  if (v38)
  {
    if (!*(a2 + 100))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 96))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 104);
  v41 = *(a1 + 108);
  swift_beginAccess();
  v42 = *(a2 + 108);
  if (v41)
  {
    if (!*(a2 + 108))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 104))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 112);
  v44 = *(a1 + 116);
  swift_beginAccess();
  v45 = *(a2 + 116);
  if (v44)
  {
    if (!*(a2 + 116))
    {
      return 0;
    }
  }

  else
  {
    if (v43 != *(a2 + 112))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 117);
  swift_beginAccess();
  v47 = *(a2 + 117);
  if (v46 == 7)
  {
    if (v47 != 7)
    {
      return 0;
    }

    goto LABEL_89;
  }

  result = 0;
  if (v47 != 7 && v46 == v47)
  {
LABEL_89:
    swift_beginAccess();
    v48 = *(a1 + 120);
    v49 = *(a1 + 124);
    swift_beginAccess();
    v50 = *(a2 + 124);
    if ((v49 & 1) == 0)
    {
      if (v48 != *(a2 + 120))
      {
        v50 = 1;
      }

      if (v50)
      {
        return 0;
      }

LABEL_95:
      swift_beginAccess();
      v51 = *(a1 + 128);
      v52 = *(a1 + 132);
      swift_beginAccess();
      v53 = *(a2 + 132);
      if (v52)
      {
        if (!*(a2 + 132))
        {
          return 0;
        }
      }

      else
      {
        if (v51 != *(a2 + 128))
        {
          v53 = 1;
        }

        if (v53)
        {
          return 0;
        }
      }

      return 1;
    }

    if (*(a2 + 124))
    {
      goto LABEL_95;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10020A31C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A710, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020A3BC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C58, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020A428()
{
  sub_100256CB4(&qword_100424C58, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);

  return Message.hash(into:)();
}

uint64_t sub_10020A4E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434408);
  sub_100005DF0(v0, qword_100434408);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ue_utran_cell_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_umts_time_difference";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020A6F4()
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
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
        v5 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime;
        v6 = &qword_100424BF8;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 20);
    type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    v5 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime;
    v6 = &qword_100424C10;
LABEL_5:
    sub_100256CB4(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10020A880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F30, &qword_100383400);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100423F30, &qword_100383400);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F30, &qword_100383400);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  sub_100256CB4(&qword_100424C10, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
}

uint64_t sub_10020AA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100423F28, &qword_1003833F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F28, &qword_1003833F8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  sub_100256CB4(&qword_100424BF8, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
}

uint64_t sub_10020AD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A708, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020ADE8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C70, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020AE54()
{
  sub_100256CB4(&qword_100424C70, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);

  return Message.hash(into:)();
}

uint64_t sub_10020AEFC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434420);
  sub_100005DF0(v0, qword_100434420);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ref_frame_msb";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_tow_subms";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020B14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v11 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v11 = *(a4(0) + 24);
LABEL_3:
      v6 = 0;
      a5(v5 + v11, a2, a3);
    }
  }
}

uint64_t sub_10020B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  result = a4(0);
  v11 = result;
  v12 = (v5 + *(result + 20));
  if (v12[1])
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    result = a5(*v12, 1, a2, a3);
    if (v6)
    {
      return result;
    }
  }

  v13 = (v5 + *(v11 + 24));
  if ((v13[1] & 1) == 0)
  {
    a5(*v13, 2, a2, a3);
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020B3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A700, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020B440(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424C88, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020B4AC()
{
  sub_100256CB4(&qword_100424C88, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);

  return Message.hash(into:)();
}

uint64_t sub_10020B550()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434438);
  sub_100005DF0(v0, qword_100434438);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ref_frame_msb";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "delta_tow";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020B858(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6F8, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020B8F8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424CA0, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020B964()
{
  sub_100256CB4(&qword_100424CA0, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);

  return Message.hash(into:)();
}

uint64_t sub_10020BA08()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434450);
  sub_100005DF0(v0, qword_100434450);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "utran_time";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "geran_time_based";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "geran_time_assisted";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020BC64()
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
        v3 = v0;
        v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 28);
        type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
        v5 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted;
        v6 = &qword_100424CA0;
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v3 = v0;
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 20);
        type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
        v5 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured;
        v6 = &qword_100424C70;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 24);
    type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
    v5 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased;
    v6 = &qword_100424C88;
LABEL_5:
    sub_100256CB4(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10020BE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10020BE90(v3, a1, a2, a3);
  if (!v4)
  {
    sub_10020C0AC(v3, a1, a2, a3);
    sub_10020C2C8(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10020BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F38, &qword_100383408);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100423F38, &qword_100383408);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F38, &qword_100383408);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  sub_100256CB4(&qword_100424C70, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
}

uint64_t sub_10020C0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F40, &qword_100383410);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100423F40, &qword_100383410);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F40, &qword_100383410);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  sub_100256CB4(&qword_100424C88, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
}

uint64_t sub_10020C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F48, &qword_100383418);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_100423F48, &qword_100383418);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F48, &qword_100383418);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  sub_100256CB4(&qword_100424CA0, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
}

uint64_t sub_10020C530@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_10020C668(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6F0, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020C708(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424CB8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020C774()
{
  sub_100256CB4(&qword_100424CB8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);

  return Message.hash(into:)();
}

uint64_t sub_10020C818()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434468);
  sub_100005DF0(v0, qword_100434468);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "gps_time_measured_type";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_time_measured";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020CA28()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 20);
        sub_1002687E0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
        sub_100256CB4(&qword_100424CB8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10020CBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F50, &qword_100383420);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100423F50, &qword_100383420);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F50, &qword_100383420);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  sub_100256CB4(&qword_100424CB8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
}

uint64_t sub_10020CE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6E8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020CEF8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424CD0, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020CF64()
{
  sub_100256CB4(&qword_100424CD0, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);

  return Message.hash(into:)();
}

uint64_t sub_10020D008()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434480);
  sub_100005DF0(v0, qword_100434480);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "gps_todmsec";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_todfrac";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "gps_todunc";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020D290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v10 = *(a4(0) + 28);
LABEL_3:
        v4 = 0;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
      case 2:
        v6 = *(a4(0) + 24);
        goto LABEL_3;
      case 1:
        v9 = *(a4(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_10020D390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  v10 = (v4 + *(v7 + 24));
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v12 = (v4 + *(v7 + 28));
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020D4F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6E0, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020D594(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424CE8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020D600()
{
  sub_100256CB4(&qword_100424CE8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);

  return Message.hash(into:)();
}

uint64_t sub_10020D6A4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434498);
  sub_100005DF0(v0, qword_100434498);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "gps_tow";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gps_week";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "gps_time_uncertainty";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fix_type";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "gps_todpresent";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "gps_tod";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020D9B8()
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
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 32);
            sub_100268834();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 36);
            goto LABEL_5;
          case 6:
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 40);
            type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
            sub_100256CB4(&qword_100424CE8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 20);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 28);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10020DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
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

  if (*(v5 + v10[8]) != 4)
  {
    v17 = *(v5 + v10[8]);
    sub_100268834();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_10020DD0C(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020DD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  sub_10000A0A4(a1 + *(v14 + 40), v8, &qword_100423F58, &qword_100383428);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F58, &qword_100383428);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  sub_100256CB4(&qword_100424CE8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
}

uint64_t sub_10020DF74@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + v7) = 4;
  v9 = a1[9];
  v10 = a1[10];
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v10, 1, 1, v12);
}

uint64_t sub_10020E060(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6D8, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020E100(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D00, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020E16C()
{
  sub_100256CB4(&qword_100424D00, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);

  return Message.hash(into:)();
}

uint64_t sub_10020E210()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004344B0);
  sub_100005DF0(v0, qword_1004344B0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10036D7B0;
  v4 = v14 + v3 + v1[14];
  *(v14 + v3) = 1;
  *v4 = "cell_info_present";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v14 + v3 + v2 + v1[14];
  *(v14 + v3 + v2) = 2;
  *v8 = "lac";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v14 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "cell_id";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v14 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "plmn";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020E4AC()
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
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 32);
          type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
          sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 20);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10020E608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
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

  v13 = (v5 + *(v10 + 24));
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + *(v10 + 28));
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10020E708(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020E708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_100423F60, &qword_100383430);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F60, &qword_100383430);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
}

uint64_t sub_10020E970@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t sub_10020EA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6D0, type metadata accessor for Proto_Gnss_Emergency_CellInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020EAE4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020EB50()
{
  sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo);

  return Message.hash(into:)();
}

uint64_t sub_10020EBF4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004344C8);
  sub_100005DF0(v0, qword_1004344C8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utran_timing_of_cell_frames";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ref_sfn";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ref_psc";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "cell_info";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020EE8C()
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
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 28);
          goto LABEL_15;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 32);
          type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
          sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v4 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 24);
LABEL_15:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}