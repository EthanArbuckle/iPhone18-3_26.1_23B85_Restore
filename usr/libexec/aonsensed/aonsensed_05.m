uint64_t sub_10007E000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C370, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10007E0A0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419350, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E10C()
{
  sub_1000A5BD8(&qword_100419350, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);

  return Message.hash(into:)();
}

uint64_t sub_10007E1B0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D00);
  sub_100005DF0(v0, qword_100432D00);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10036D7E0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sync_state";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "start_time_nanoseconds";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "end_time_nanoseconds";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "applicability_time_nanoseconds";
  *(v15 + 1) = 30;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sv_time";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "frequency_offset";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "phase_tracking";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "extension";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "cn0_dbHz";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "multipath_indicator";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "averaged_frequency_offset";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "is_usable";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "averaged_frequency_offset_from_phase_tracking";
  *(v32 + 1) = 45;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10007E6AC()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v3 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  v20 = v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  *v20 = 0;
  *(v20 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator) = 5;
  v15(v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset, 1, 1, v14);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable) = 2;
  v21 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  result = (*(*(v22 - 8) + 56))(v3 + v21, 1, 1, v22);
  qword_100437080 = v3;
  return result;
}

uint64_t sub_10007E98C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418D30, &qword_10036D8A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v97 = &v80 - v5;
  v6 = sub_100024A2C(&qword_100418D28, &qword_10036D898);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v96 = &v80 - v8;
  v9 = sub_100024A2C(&qword_100418D20, &qword_10036D890);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v95 = &v80 - v11;
  v12 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v94 = &v80 - v14;
  v15 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v92 = &v80 - v17;
  v18 = sub_100024A2C(&qword_100418D18, &qword_10036D888);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v84 = &v80 - v20;
  v21 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v81 = &v80 - v23;
  v24 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v80 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v25 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  v82 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  v85 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  v32 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v32 - 8) + 56))(v1 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  v86 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v35 = *(*(v34 - 8) + 56);
  v35(v1 + v33, 1, 1, v34);
  v36 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  v87 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  (*(*(v37 - 8) + 56))(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  v88 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  v39 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  (*(*(v39 - 8) + 56))(v1 + v38, 1, 1, v39);
  v40 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  v89 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  *v40 = 0;
  *(v40 + 4) = 1;
  v41 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator) = 5;
  v90 = v41;
  v91 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  v35(v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset, 1, 1, v34);
  v83 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable) = 2;
  v42 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v93 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v43 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  (*(*(v43 - 8) + 56))(v1 + v42, 1, 1, v43);
  v44 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v45 = v81;
  sub_10000A0A4(a1 + v44, v81, &qword_100418D10, &qword_10036D880);
  v46 = v80;
  swift_beginAccess();
  sub_10000AD64(v45, v1 + v46, &qword_100418D10, &qword_10036D880);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v48 = v84;
  sub_10000A0A4(a1 + v47, v84, &qword_100418D18, &qword_10036D888);
  v49 = v82;
  swift_beginAccess();
  sub_10000AD64(v48, v1 + v49, &qword_100418D18, &qword_10036D888);
  swift_endAccess();
  v50 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  swift_beginAccess();
  *v28 = v51;
  *(v28 + 8) = v50;
  v52 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds);
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  swift_beginAccess();
  *v29 = v53;
  *(v29 + 8) = v52;
  v54 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds);
  swift_beginAccess();
  v55 = *v54;
  LOBYTE(v54) = *(v54 + 8);
  swift_beginAccess();
  *v30 = v55;
  *(v30 + 8) = v54;
  v56 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  v57 = v92;
  sub_10000A0A4(a1 + v56, v92, &qword_100418CF0, &qword_10036D860);
  v58 = v85;
  swift_beginAccess();
  sub_10000AD64(v57, v1 + v58, &qword_100418CF0, &qword_10036D860);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  v60 = v94;
  sub_10000A0A4(a1 + v59, v94, &qword_100418CF8, &qword_10036D868);
  v61 = v86;
  swift_beginAccess();
  sub_10000AD64(v60, v1 + v61, &qword_100418CF8, &qword_10036D868);
  swift_endAccess();
  v62 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  v63 = v95;
  sub_10000A0A4(a1 + v62, v95, &qword_100418D20, &qword_10036D890);
  v64 = v87;
  swift_beginAccess();
  sub_10000AD64(v63, v1 + v64, &qword_100418D20, &qword_10036D890);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  v66 = v96;
  sub_10000A0A4(a1 + v65, v96, &qword_100418D28, &qword_10036D898);
  v67 = v88;
  swift_beginAccess();
  sub_10000AD64(v66, v1 + v67, &qword_100418D28, &qword_10036D898);
  swift_endAccess();
  v68 = a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  LODWORD(v55) = *v68;
  LOBYTE(v68) = *(v68 + 4);
  v69 = v89;
  swift_beginAccess();
  *v69 = v55;
  *(v69 + 4) = v68;
  v70 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  swift_beginAccess();
  LOBYTE(v70) = *(a1 + v70);
  v71 = v90;
  swift_beginAccess();
  *(v1 + v71) = v70;
  v72 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(a1 + v72, v60, &qword_100418CF8, &qword_10036D868);
  v73 = v91;
  swift_beginAccess();
  sub_10000AD64(v60, v1 + v73, &qword_100418CF8, &qword_10036D868);
  swift_endAccess();
  v74 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  LOBYTE(v74) = *(a1 + v74);
  v75 = v83;
  swift_beginAccess();
  *(v1 + v75) = v74;
  v76 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  v77 = v97;
  sub_10000A0A4(a1 + v76, v97, &qword_100418D30, &qword_10036D8A0);

  v78 = v93;
  swift_beginAccess();
  sub_10000AD64(v77, v1 + v78, &qword_100418D30, &qword_10036D8A0);
  swift_endAccess();
  return v1;
}

uint64_t sub_10007F40C()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id, &qword_100418D10, &qword_10036D880);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState, &qword_100418D18, &qword_10036D888);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime, &qword_100418CF0, &qword_10036D860);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset, &qword_100418CF8, &qword_10036D868);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking, &qword_100418D20, &qword_10036D890);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension, &qword_100418D28, &qword_10036D898);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset, &qword_100418CF8, &qword_10036D868);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking, &qword_100418D30, &qword_10036D8A0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10007F570()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10007E98C(v6);
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
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvId;
          v14 = &qword_1004191A0;
          goto LABEL_18;
        case 2:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState;
          v14 = &qword_100419290;
          goto LABEL_18;
        case 3:
        case 4:
        case 5:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_19;
        case 6:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime;
          v14 = &qword_1004192A8;
          goto LABEL_18;
        case 7:
        case 12:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset;
          v14 = &qword_1004192C0;
          goto LABEL_18;
        case 8:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking;
          v14 = &qword_1004192F0;
          goto LABEL_18;
        case 9:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension;
          v14 = &qword_100419350;
          goto LABEL_18;
        case 10:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_19;
        case 11:
          swift_beginAccess();
          sub_1000AE938();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_19;
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_19;
        case 14:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking;
          v14 = &qword_1004192D8;
LABEL_18:
          sub_1000A5BD8(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_19:
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

uint64_t sub_10007FA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  result = sub_10007FCF8(v8, a1, a2, a3);
  if (!v4)
  {
    sub_10007FF20(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    sub_100080148(v8, a1, a2, a3);
    sub_100080370(v8, a1, a2, a3);
    sub_100080598(v8, a1, a2, a3);
    sub_1000807C0(v8, a1, a2, a3);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator, sub_1000AE938);
    sub_1000809E8(v8, a1, a2, a3);
    sub_100080C10(v8);
    sub_100080CA0(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10007FCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D10, &qword_10036D880);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D10, &qword_10036D880);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t sub_10007FF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D18, &qword_10036D888);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D18, &qword_10036D888);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D18, &qword_10036D888);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  sub_1000A5BD8(&qword_100419290, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
}

uint64_t sub_100080148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CF0, &qword_10036D860);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CF0, &qword_10036D860);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_1000A5BD8(&qword_1004192A8, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
}

uint64_t sub_100080370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CF8, &qword_10036D868);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CF8, &qword_10036D868);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000A5BD8(&qword_1004192C0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t sub_100080598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D20, &qword_10036D890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D20, &qword_10036D890);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D20, &qword_10036D890);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  sub_1000A5BD8(&qword_1004192F0, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
}

uint64_t sub_1000807C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D28, &qword_10036D898);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D28, &qword_10036D898);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D28, &qword_10036D898);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  sub_1000A5BD8(&qword_100419350, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
}

uint64_t sub_1000809E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CF8, &qword_10036D868);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CF8, &qword_10036D868);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000A5BD8(&qword_1004192C0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t sub_100080C10(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  result = swift_beginAccess();
  if (*(a1 + v2) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100080CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D30, &qword_10036D8A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D30, &qword_10036D8A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D30, &qword_10036D8A0);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  sub_1000A5BD8(&qword_1004192D8, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
}

BOOL sub_100080F0C(uint64_t a1, uint64_t a2)
{
  v274 = a2;
  v231 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v229 = *(v231 - 8);
  v3 = *(v229 + 64);
  __chkstk_darwin(v231);
  v226 = &v226 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_100024A2C(&qword_10041C4A8, &qword_100373C98);
  v5 = *(*(v227 - 8) + 64);
  __chkstk_darwin(v227);
  v232 = &v226 - v6;
  v7 = sub_100024A2C(&qword_100418D30, &qword_10036D8A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v228 = &v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v230 = &v226 - v11;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v240 = *(v12 - 8);
  v241 = v12;
  v13 = *(v240 + 64);
  __chkstk_darwin(v12);
  v236 = &v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_100024A2C(&qword_10041C4B0, &qword_100373CA0);
  v15 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v242 = &v226 - v16;
  v17 = sub_100024A2C(&qword_100418D28, &qword_10036D898);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v237 = &v226 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v268 = &v226 - v21;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v246 = *(v22 - 8);
  v247 = v22;
  v23 = *(v246 + 64);
  __chkstk_darwin(v22);
  v238 = &v226 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_100024A2C(&qword_10041C4B8, &qword_100373CA8);
  v25 = *(*(v245 - 8) + 64);
  __chkstk_darwin(v245);
  v248 = &v226 - v26;
  v27 = sub_100024A2C(&qword_100418D20, &qword_10036D890);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v243 = &v226 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v264 = &v226 - v31;
  v32 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v33 = *(v32 - 8);
  v253 = v32;
  v254 = v33;
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v244 = &v226 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_100024A2C(&qword_10041C4C0, &qword_100373CB0);
  v36 = *(*(v252 - 8) + 64);
  v37 = __chkstk_darwin(v252);
  v235 = &v226 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v251 = &v226 - v39;
  v40 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v233 = &v226 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v234 = &v226 - v45;
  v46 = __chkstk_darwin(v44);
  v250 = &v226 - v47;
  __chkstk_darwin(v46);
  v269 = &v226 - v48;
  v49 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v257 = *(v49 - 8);
  v258 = v49;
  v50 = *(v257 + 64);
  __chkstk_darwin(v49);
  v249 = &v226 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_100024A2C(&qword_10041C4C8, &qword_100373CB8);
  v52 = *(*(v255 - 8) + 64);
  __chkstk_darwin(v255);
  v259 = &v226 - v53;
  v54 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v256 = &v226 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v260 = &v226 - v58;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v266 = *(v59 - 8);
  v267 = v59;
  v60 = *(v266 + 64);
  __chkstk_darwin(v59);
  v261 = &v226 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_100024A2C(&qword_10041C4D0, &qword_100373CC0);
  v62 = *(*(v265 - 8) + 64);
  __chkstk_darwin(v265);
  v270 = &v226 - v63;
  v64 = sub_100024A2C(&qword_100418D18, &qword_10036D888);
  v65 = *(*(v64 - 8) + 64);
  v66 = __chkstk_darwin(v64 - 8);
  v262 = &v226 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v272 = &v226 - v68;
  v273 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v69 = *(v273 - 8);
  v70 = *(v69 + 64);
  __chkstk_darwin(v273);
  v263 = &v226 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100024A2C(&qword_10041C4D8, &qword_100373CC8);
  v73 = v72 - 8;
  v74 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v76 = &v226 - v75;
  v77 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v78 = *(*(v77 - 8) + 64);
  v79 = __chkstk_darwin(v77 - 8);
  v271 = &v226 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v82 = &v226 - v81;
  v83 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v84 = a1 + v83;
  v85 = v274;
  sub_10000A0A4(v84, v82, &qword_100418D10, &qword_10036D880);
  v86 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v87 = *(v73 + 56);
  sub_10000A0A4(v82, v76, &qword_100418D10, &qword_10036D880);
  v88 = v85 + v86;
  v89 = v273;
  sub_10000A0A4(v88, &v76[v87], &qword_100418D10, &qword_10036D880);
  v90 = *(v69 + 48);
  if (v90(v76, 1, v89) == 1)
  {

    sub_1000059A8(v82, &qword_100418D10, &qword_10036D880);
    if (v90(&v76[v87], 1, v89) == 1)
    {
      sub_1000059A8(v76, &qword_100418D10, &qword_10036D880);
      goto LABEL_8;
    }

LABEL_6:
    v92 = &qword_10041C4D8;
    v93 = &qword_100373CC8;
    v94 = v76;
LABEL_14:
    sub_1000059A8(v94, v92, v93);
    goto LABEL_15;
  }

  v91 = v271;
  sub_10000A0A4(v76, v271, &qword_100418D10, &qword_10036D880);
  if (v90(&v76[v87], 1, v89) == 1)
  {

    sub_1000059A8(v82, &qword_100418D10, &qword_10036D880);
    sub_10009E7F4(v91, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  v95 = v263;
  sub_10009E724(&v76[v87], v263, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  v96 = sub_1000A5750(v91, v95);
  sub_10009E7F4(v95, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000059A8(v82, &qword_100418D10, &qword_10036D880);
  sub_10009E7F4(v91, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000059A8(v76, &qword_100418D10, &qword_10036D880);
  if ((v96 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_8:
  v97 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v98 = v272;
  sub_10000A0A4(a1 + v97, v272, &qword_100418D18, &qword_10036D888);
  v99 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v100 = *(v265 + 48);
  v101 = v270;
  sub_10000A0A4(v98, v270, &qword_100418D18, &qword_10036D888);
  v102 = v101;
  sub_10000A0A4(v85 + v99, v101 + v100, &qword_100418D18, &qword_10036D888);
  v103 = v267;
  v104 = *(v266 + 48);
  if (v104(v101, 1, v267) == 1)
  {
    sub_1000059A8(v98, &qword_100418D18, &qword_10036D888);
    v105 = v104(v101 + v100, 1, v103);
    v107 = v268;
    v106 = v269;
    v108 = v264;
    if (v105 == 1)
    {
      sub_1000059A8(v102, &qword_100418D18, &qword_10036D888);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v109 = v101;
  v110 = v262;
  sub_10000A0A4(v109, v262, &qword_100418D18, &qword_10036D888);
  v111 = v104(v102 + v100, 1, v103);
  v107 = v268;
  v106 = v269;
  if (v111 == 1)
  {
    sub_1000059A8(v272, &qword_100418D18, &qword_10036D888);
    sub_10009E7F4(v110, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
LABEL_13:
    v92 = &qword_10041C4D0;
    v93 = &qword_100373CC0;
    v94 = v102;
    goto LABEL_14;
  }

  v113 = v102 + v100;
  v114 = v261;
  sub_10009E724(v113, v261, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  v115 = *(v103 + 20);
  v116 = *(v110 + v115);
  v117 = *(v114 + v115);
  if (v116 != v117)
  {
    v118 = *(v110 + v115);

    v119 = sub_100074F60(v116, v117);

    if (!v119)
    {
      sub_10009E7F4(v114, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
      sub_1000059A8(v272, &qword_100418D18, &qword_10036D888);
      sub_10009E7F4(v110, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
      v94 = v270;
      v92 = &qword_100418D18;
      v93 = &qword_10036D888;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v120 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10009E7F4(v114, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  sub_1000059A8(v272, &qword_100418D18, &qword_10036D888);
  sub_10009E7F4(v110, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  v108 = v264;
  sub_1000059A8(v270, &qword_100418D18, &qword_10036D888);
  if ((v120 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_20:
  v121 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds);
  swift_beginAccess();
  v122 = *v121;
  v123 = *(v121 + 8);
  v124 = v85 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  swift_beginAccess();
  v125 = *(v124 + 8);
  if (v123)
  {
    if ((*(v124 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v124 + 8) & 1) != 0 || v122 != *v124)
  {
    goto LABEL_15;
  }

  v126 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds);
  swift_beginAccess();
  v127 = *v126;
  v128 = *(v126 + 8);
  v129 = v85 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  swift_beginAccess();
  v130 = *(v129 + 8);
  if (v128)
  {
    if ((*(v129 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v129 + 8) & 1) != 0 || v127 != *v129)
  {
    goto LABEL_15;
  }

  v131 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds);
  swift_beginAccess();
  v132 = *v131;
  v133 = *(v131 + 8);
  v134 = v85 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  swift_beginAccess();
  v135 = *(v134 + 8);
  if (v133)
  {
    if ((*(v134 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v134 + 8) & 1) != 0 || v132 != *v134)
  {
    goto LABEL_15;
  }

  v136 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  v137 = v260;
  sub_10000A0A4(a1 + v136, v260, &qword_100418CF0, &qword_10036D860);
  v138 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  v139 = *(v255 + 48);
  v140 = v259;
  sub_10000A0A4(v137, v259, &qword_100418CF0, &qword_10036D860);
  v273 = v139;
  sub_10000A0A4(v85 + v138, v140 + v139, &qword_100418CF0, &qword_10036D860);
  v141 = v258;
  v272 = *(v257 + 48);
  if ((v272)(v140, 1, v258) == 1)
  {
    sub_1000059A8(v137, &qword_100418CF0, &qword_10036D860);
    if ((v272)(v140 + v273, 1, v141) == 1)
    {
      sub_1000059A8(v140, &qword_100418CF0, &qword_10036D860);
      goto LABEL_43;
    }

LABEL_41:
    v92 = &qword_10041C4C8;
    v93 = &qword_100373CB8;
LABEL_49:
    v94 = v140;
    goto LABEL_14;
  }

  sub_10000A0A4(v140, v256, &qword_100418CF0, &qword_10036D860);
  if ((v272)(v140 + v273, 1, v141) == 1)
  {
    sub_1000059A8(v260, &qword_100418CF0, &qword_10036D860);
    sub_10009E7F4(v256, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    goto LABEL_41;
  }

  v142 = v249;
  sub_10009E724(v140 + v273, v249, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v143 = v256;
  LODWORD(v273) = sub_1000A423C(v256, v142, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_10009E7F4(v142, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_1000059A8(v260, &qword_100418CF0, &qword_10036D860);
  sub_10009E7F4(v143, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_1000059A8(v140, &qword_100418CF0, &qword_10036D860);
  if ((v273 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_43:
  v144 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(a1 + v144, v106, &qword_100418CF8, &qword_10036D868);
  v145 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  v146 = *(v252 + 48);
  v147 = v106;
  v148 = v251;
  sub_10000A0A4(v147, v251, &qword_100418CF8, &qword_10036D868);
  v140 = v148;
  sub_10000A0A4(v85 + v145, v148 + v146, &qword_100418CF8, &qword_10036D868);
  v149 = v253;
  v151 = v254 + 48;
  v150 = *(v254 + 48);
  if (v150(v140, 1, v253) == 1)
  {
    sub_1000059A8(v269, &qword_100418CF8, &qword_10036D868);
    if (v150(v140 + v146, 1, v149) == 1)
    {
      v273 = v150;
      v254 = v151;
      sub_1000059A8(v140, &qword_100418CF8, &qword_10036D868);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  sub_10000A0A4(v140, v250, &qword_100418CF8, &qword_10036D868);
  v273 = v150;
  if (v150(v140 + v146, 1, v149) == 1)
  {
    sub_1000059A8(v269, &qword_100418CF8, &qword_10036D868);
    sub_10009E7F4(v250, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
LABEL_48:
    v92 = &qword_10041C4C0;
    v93 = &qword_100373CB0;
    goto LABEL_49;
  }

  v254 = v151;
  v152 = v140 + v146;
  v153 = v244;
  sub_10009E724(v152, v244, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v154 = v250;
  LODWORD(v272) = sub_1000A423C(v250, v153, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_10009E7F4(v153, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000059A8(v269, &qword_100418CF8, &qword_10036D868);
  sub_10009E7F4(v154, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000059A8(v140, &qword_100418CF8, &qword_10036D868);
  if ((v272 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_51:
  v155 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  sub_10000A0A4(a1 + v155, v108, &qword_100418D20, &qword_10036D890);
  v156 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  v157 = *(v245 + 48);
  v158 = v248;
  sub_10000A0A4(v108, v248, &qword_100418D20, &qword_10036D890);
  sub_10000A0A4(v85 + v156, v158 + v157, &qword_100418D20, &qword_10036D890);
  v159 = v247;
  v160 = *(v246 + 48);
  if (v160(v158, 1, v247) == 1)
  {
    sub_1000059A8(v108, &qword_100418D20, &qword_10036D890);
    if (v160(v158 + v157, 1, v159) == 1)
    {
      sub_1000059A8(v158, &qword_100418D20, &qword_10036D890);
      goto LABEL_58;
    }

LABEL_56:
    v92 = &qword_10041C4B8;
    v93 = &qword_100373CA8;
    v94 = v158;
    goto LABEL_14;
  }

  v161 = v243;
  sub_10000A0A4(v158, v243, &qword_100418D20, &qword_10036D890);
  if (v160(v158 + v157, 1, v159) == 1)
  {
    sub_1000059A8(v264, &qword_100418D20, &qword_10036D890);
    sub_10009E7F4(v161, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
    goto LABEL_56;
  }

  v162 = v158 + v157;
  v163 = v238;
  sub_10009E724(v162, v238, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  v164 = sub_1000A2D24(v161, v163);
  sub_10009E7F4(v163, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  sub_1000059A8(v264, &qword_100418D20, &qword_10036D890);
  sub_10009E7F4(v161, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  sub_1000059A8(v158, &qword_100418D20, &qword_10036D890);
  if ((v164 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_58:
  v165 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  sub_10000A0A4(a1 + v165, v107, &qword_100418D28, &qword_10036D898);
  v166 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  v167 = *(v239 + 48);
  v168 = v107;
  v169 = v107;
  v170 = v242;
  sub_10000A0A4(v168, v242, &qword_100418D28, &qword_10036D898);
  v140 = v170;
  sub_10000A0A4(v85 + v166, v170 + v167, &qword_100418D28, &qword_10036D898);
  v171 = v241;
  v172 = *(v240 + 48);
  if (v172(v170, 1, v241) == 1)
  {
    sub_1000059A8(v169, &qword_100418D28, &qword_10036D898);
    if (v172(v170 + v167, 1, v171) == 1)
    {
      sub_1000059A8(v170, &qword_100418D28, &qword_10036D898);
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  v173 = v237;
  sub_10000A0A4(v140, v237, &qword_100418D28, &qword_10036D898);
  if (v172(v140 + v167, 1, v171) == 1)
  {
    sub_1000059A8(v268, &qword_100418D28, &qword_10036D898);
    sub_10009E7F4(v173, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
LABEL_63:
    v92 = &qword_10041C4B0;
    v93 = &qword_100373CA0;
    goto LABEL_49;
  }

  v174 = v171;
  v175 = v236;
  sub_10009E724(v140 + v167, v236, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  v176 = *(v174 + 20);
  v177 = *(v173 + v176);
  v178 = *(v175 + v176);
  if (v177 != v178)
  {
    v179 = *(v173 + v176);

    v180 = sub_10007CC70(v177, v178);

    if ((v180 & 1) == 0)
    {
      sub_10009E7F4(v175, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
      sub_1000059A8(v268, &qword_100418D28, &qword_10036D898);
      sub_10009E7F4(v173, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
      v94 = v242;
      v92 = &qword_100418D28;
      v93 = &qword_10036D898;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v181 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10009E7F4(v175, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  sub_1000059A8(v268, &qword_100418D28, &qword_10036D898);
  sub_10009E7F4(v173, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  sub_1000059A8(v242, &qword_100418D28, &qword_10036D898);
  if ((v181 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_67:
  v182 = a1;
  v183 = a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  v184 = *v183;
  v185 = *(v183 + 4);
  v186 = v85 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  v187 = *(v186 + 4);
  if (v185)
  {
    if ((*(v186 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v186 + 4) & 1) != 0 || v184 != *v186)
  {
    goto LABEL_15;
  }

  v188 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  swift_beginAccess();
  v189 = *(a1 + v188);
  v190 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  v191 = v274;
  swift_beginAccess();
  v192 = *(v191 + v190);
  if (v189 == 5)
  {
    if (v192 != 5)
    {
      goto LABEL_15;
    }
  }

  else if (v192 == 5 || v189 != v192)
  {
    goto LABEL_15;
  }

  v193 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  v194 = a1 + v193;
  v195 = v234;
  sub_10000A0A4(v194, v234, &qword_100418CF8, &qword_10036D868);
  v196 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  v197 = v274;
  swift_beginAccess();
  v198 = *(v252 + 48);
  v199 = v195;
  v200 = v235;
  sub_10000A0A4(v199, v235, &qword_100418CF8, &qword_10036D868);
  sub_10000A0A4(v197 + v196, v200 + v198, &qword_100418CF8, &qword_10036D868);
  if ((v273)(v200, 1, v253) == 1)
  {
    sub_1000059A8(v234, &qword_100418CF8, &qword_10036D868);
    if ((v273)(v235 + v198, 1, v253) == 1)
    {
      sub_1000059A8(v235, &qword_100418CF8, &qword_10036D868);
      goto LABEL_86;
    }

LABEL_83:
    sub_1000059A8(v235, &qword_10041C4C0, &qword_100373CB0);
    goto LABEL_15;
  }

  v201 = v235;
  sub_10000A0A4(v235, v233, &qword_100418CF8, &qword_10036D868);
  if ((v273)(v201 + v198, 1, v253) == 1)
  {
    sub_1000059A8(v234, &qword_100418CF8, &qword_10036D868);
    sub_10009E7F4(v233, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    goto LABEL_83;
  }

  v202 = v235;
  v203 = v235 + v198;
  v204 = v244;
  sub_10009E724(v203, v244, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v205 = v233;
  v206 = sub_1000A423C(v233, v204, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_10009E7F4(v204, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000059A8(v234, &qword_100418CF8, &qword_10036D868);
  sub_10009E7F4(v205, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000059A8(v202, &qword_100418CF8, &qword_10036D868);
  if ((v206 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_86:
  v207 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  v208 = *(v182 + v207);
  v209 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  v210 = v274;
  swift_beginAccess();
  v211 = *(v210 + v209);
  if (v208 == 2)
  {
    if (v211 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v211 == 2 || ((v208 ^ v211) & 1) != 0)
  {
    goto LABEL_15;
  }

  v212 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  v213 = v230;
  sub_10000A0A4(v182 + v212, v230, &qword_100418D30, &qword_10036D8A0);
  v214 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v215 = v274;
  swift_beginAccess();
  v216 = *(v227 + 48);
  v217 = v213;
  v218 = v232;
  sub_10000A0A4(v217, v232, &qword_100418D30, &qword_10036D8A0);
  sub_10000A0A4(v215 + v214, v218 + v216, &qword_100418D30, &qword_10036D8A0);
  v219 = *(v229 + 48);
  if (v219(v218, 1, v231) == 1)
  {

    sub_1000059A8(v230, &qword_100418D30, &qword_10036D8A0);
    if (v219(v232 + v216, 1, v231) == 1)
    {
      sub_1000059A8(v232, &qword_100418D30, &qword_10036D8A0);
      return 1;
    }

LABEL_96:
    sub_1000059A8(v232, &qword_10041C4A8, &qword_100373C98);
    return 0;
  }

  v220 = v232;
  sub_10000A0A4(v232, v228, &qword_100418D30, &qword_10036D8A0);
  if (v219(v220 + v216, 1, v231) == 1)
  {

    sub_1000059A8(v230, &qword_100418D30, &qword_10036D8A0);
    sub_10009E7F4(v228, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
    goto LABEL_96;
  }

  v221 = v232;
  v222 = v232 + v216;
  v223 = v226;
  sub_10009E724(v222, v226, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  v224 = v228;
  v225 = sub_10009FAB0(v228, v223);

  sub_10009E7F4(v223, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  sub_1000059A8(v230, &qword_100418D30, &qword_10036D8A0);
  sub_10009E7F4(v224, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  sub_1000059A8(v221, &qword_100418D30, &qword_10036D8A0);
  return (v225 & 1) != 0;
}

uint64_t sub_100083030(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C368, type metadata accessor for CLP_LogEntry_PrivateData_Measurement);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000830D0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419368, type metadata accessor for CLP_LogEntry_PrivateData_Measurement);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008313C()
{
  sub_1000A5BD8(&qword_100419368, type metadata accessor for CLP_LogEntry_PrivateData_Measurement);

  return Message.hash(into:)();
}

uint64_t sub_1000831E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D18);
  sub_100005DF0(v0, qword_100432D18);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "frequency_noise_ppb_per_second_per_rtHz";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "phase_noise_ppb_per_rtHz";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "frequency_variance_ppb2";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "phase_variance_nanoseconds2";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "clock_jump_detected";
  *(v15 + 8) = 19;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000834BC()
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
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 20);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 32);
          goto LABEL_3;
        case 5:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 36);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
      }
    }
  }
}

uint64_t sub_1000835D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v10 = result;
  v11 = v5 + *(result + 20);
  if (*(v11 + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = v5 + v10[6];
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 4) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_10006FBFC(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100083760@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_100083800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C360, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000838A0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419380, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008390C()
{
  sub_1000A5BD8(&qword_100419380, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);

  return Message.hash(into:)();
}

uint64_t sub_1000839B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D30);
  sub_100005DF0(v0, qword_100432D30);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "frequency_correction_ppb";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cummulative_phase_correction_nanoseconds";
  *(v10 + 8) = 40;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "current_temperature_degrees_celsius";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "current_temperature_rate_degrees_per_second";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "avg_temperature_over_last_epoch_degrees_celsius";
  *(v15 + 8) = 47;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100083C90()
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
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_15;
          }

          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 24);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 28);
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 32);
            break;
          case 5:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 36);
            break;
          default:
            goto LABEL_15;
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
LABEL_15:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100083D98()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v3 = result;
  v4 = v0 + *(result + 20);
  if (*(v4 + 8))
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

  v6 = v0 + v3[6];
  if ((*(v6 + 8) & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v8 = v0 + v3[7];
  if ((*(v8 + 8) & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v10 = v0 + v3[8];
  if ((*(v10 + 8) & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_100083EC0(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100083EC0(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100083F84@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_100084028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C358, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000840C8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419398, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100084134()
{
  sub_1000A5BD8(&qword_100419398, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);

  return Message.hash(into:)();
}

uint64_t sub_1000841D8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D48);
  sub_100005DF0(v0, qword_100432D48);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "offset_nanoseconds";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sub_nanosecond_offset_nanoseconds";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "offset_uncertainty_nanoseconds";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "drift_ppb";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "drift_uncertainty_ppb";
  *(v15 + 8) = 21;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000844B4()
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
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 20);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 24);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 32);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 5:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 36);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1000845E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
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
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_100097484(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008476C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_100084810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C350, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000848B0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004193B0, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008491C()
{
  sub_1000A5BD8(&qword_1004193B0, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);

  return Message.hash(into:)();
}

uint64_t sub_1000849C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D60);
  sub_100005DF0(v0, qword_100432D60);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "clock_nanoseconds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "corrections";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "receiver_to_gps_time";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100084C68()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 28);
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections;
          v6 = &qword_100419398;
LABEL_5:
          sub_1000A5BD8(v6, v5);
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 32);
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
          v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion;
          v6 = &qword_1004193B0;
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 2)
      {
        v3 = v0;
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
        v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel;
        v6 = &qword_100419380;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100084E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v10 = v5 + *(result + 20);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_100084F24(v5, a1, a2, a3);
  sub_100085140(v5, a1, a2, a3);
  sub_10008535C(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100084F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D38, &qword_10036D8A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100418D38, &qword_10036D8A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D38, &qword_10036D8A8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  sub_1000A5BD8(&qword_100419380, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
}

uint64_t sub_100085140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D40, &qword_10036D8B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_100418D40, &qword_10036D8B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D40, &qword_10036D8B0);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  sub_1000A5BD8(&qword_100419398, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
}

uint64_t sub_10008535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D48, &qword_10036D8B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_100418D48, &qword_10036D8B8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D48, &qword_10036D8B8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  sub_1000A5BD8(&qword_1004193B0, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
}

uint64_t sub_1000855C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t sub_10008570C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C348, type metadata accessor for CLP_LogEntry_PrivateData_Clock);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000857AC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004193C8, type metadata accessor for CLP_LogEntry_PrivateData_Clock);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100085818()
{
  sub_1000A5BD8(&qword_1004193C8, type metadata accessor for CLP_LogEntry_PrivateData_Clock);

  return Message.hash(into:)();
}

uint64_t sub_1000858BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D78);
  sub_100005DF0(v0, qword_100432D78);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "clock";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "measurements";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100085ACC()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements) = &_swiftEmptyArrayStorage;
  qword_1004370B8 = v3;
  return result;
}

uint64_t sub_100085B64(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418D50, &qword_10036D8C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements) = &_swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  sub_10000A0A4(a1 + v10, v6, &qword_100418D50, &qword_10036D8C0);
  swift_beginAccess();
  sub_10000AD64(v6, v1 + v7, &qword_100418D50, &qword_10036D8C0);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
  swift_beginAccess();
  v12 = *(a1 + v11);

  swift_beginAccess();
  v13 = *(v1 + v9);
  *(v1 + v9) = v12;

  return v1;
}

uint64_t sub_100085D08()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock, &qword_100418D50, &qword_10036D8C0);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_100085D8C()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100085B64(v6);
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0);
        sub_1000A5BD8(&qword_100419368, type metadata accessor for CLP_LogEntry_PrivateData_Measurement);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
    sub_1000A5BD8(&qword_1004193C8, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100085F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20));
  result = sub_1000860D0(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
    swift_beginAccess();
    if (*(*(v8 + v10) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0);
      sub_1000A5BD8(&qword_100419368, type metadata accessor for CLP_LogEntry_PrivateData_Measurement);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000860D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D50, &qword_10036D8C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D50, &qword_10036D8C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D50, &qword_10036D8C0);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  sub_1000A5BD8(&qword_1004193C8, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
}

uint64_t sub_10008633C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041C4A0, &qword_100373C90);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = sub_100024A2C(&qword_100418D50, &qword_10036D8C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  v19 = a1 + v18;
  v20 = a1;
  v21 = v41;
  sub_10000A0A4(v19, v17, &qword_100418D50, &qword_10036D8C0);
  v22 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  v23 = *(v8 + 56);
  sub_10000A0A4(v17, v11, &qword_100418D50, &qword_10036D8C0);
  v24 = a2 + v22;
  v25 = a2;
  sub_10000A0A4(v24, &v11[v23], &qword_100418D50, &qword_10036D8C0);
  v26 = *(v21 + 48);
  if (v26(v11, 1, v4) == 1)
  {

    sub_1000059A8(v17, &qword_100418D50, &qword_10036D8C0);
    if (v26(&v11[v23], 1, v4) == 1)
    {
      sub_1000059A8(v11, &qword_100418D50, &qword_10036D8C0);
LABEL_9:
      v31 = v25;
      v32 = v20;
      v33 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
      swift_beginAccess();
      v34 = *(v32 + v33);
      v35 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
      swift_beginAccess();
      v36 = *(v31 + v35);

      v28 = sub_10009DB60(v34, v36, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, sub_100080F0C);

      return v28 & 1;
    }

    goto LABEL_6;
  }

  v27 = v40;
  sub_10000A0A4(v11, v40, &qword_100418D50, &qword_10036D8C0);
  if (v26(&v11[v23], 1, v4) == 1)
  {

    sub_1000059A8(v17, &qword_100418D50, &qword_10036D8C0);
    sub_10009E7F4(v27, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
LABEL_6:
    sub_1000059A8(v11, &qword_10041C4A0, &qword_100373C90);
    goto LABEL_7;
  }

  v29 = v39;
  sub_10009E724(&v11[v23], v39, type metadata accessor for CLP_LogEntry_PrivateData_Clock);

  v30 = sub_1000A45FC(v27, v29);
  sub_10009E7F4(v29, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  sub_1000059A8(v17, &qword_100418D50, &qword_10036D8C0);
  sub_10009E7F4(v27, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  sub_1000059A8(v11, &qword_100418D50, &qword_10036D8C0);
  if (v30)
  {
    goto LABEL_9;
  }

LABEL_7:

  v28 = 0;
  return v28 & 1;
}

uint64_t sub_100086890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C340, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100086930(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004193E0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008699C()
{
  sub_1000A5BD8(&qword_1004193E0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);

  return Message.hash(into:)();
}

uint64_t sub_100086A40()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D90);
  sub_100005DF0(v0, qword_100432D90);
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

uint64_t sub_100086D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C338, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100086E18(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004193F8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100086E84()
{
  sub_1000A5BD8(&qword_1004193F8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);

  return Message.hash(into:)();
}

uint64_t sub_100086F28()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432DA8);
  sub_100005DF0(v0, qword_100432DA8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "band";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tropospheric_nanoseconds";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ionospheric_nanoseconds";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tx_group_delay_nanoseconds";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ionospheric_model";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100087210()
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
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 20);
          sub_1000AEA34();
          goto LABEL_18;
        }

        if (result == 2)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 4:
            v3 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 32);
            goto LABEL_5;
          case 5:
            v5 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 36);
            sub_1000AE83C();
LABEL_18:
            v0 = v5;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100087368()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 13)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v10 = *(v0 + *(result + 20));
    sub_1000AEA34();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v4 = v0 + v3[6];
  if ((*(v4 + 8) & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v6 = v0 + v3[7];
  if ((*(v6 + 8) & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v8 = v0 + v3[8];
  if ((*(v8 + 8) & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_1000874AC(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1000874AC(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  if (*(a1 + *(result + 36)) != 3)
  {
    v3 = *(a1 + *(result + 36));
    sub_1000AE83C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100087584@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 13;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a2 + a1[9]) = 3;
  return result;
}

uint64_t sub_100087620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C330, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000876C0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419410, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008772C()
{
  sub_1000A5BD8(&qword_100419410, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);

  return Message.hash(into:)();
}

uint64_t sub_1000877D0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432DC0);
  sub_100005DF0(v0, qword_100432DC0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "applicable_time_nanoseconds";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "position";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000879E8()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 20);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
        sub_1000A5BD8(&qword_1004193F8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100087B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v10 = v5 + *(result + 20);
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

  sub_100087BB0(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100087BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D58, &qword_10036D8C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100418D58, &qword_10036D8C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D58, &qword_10036D8C8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  sub_1000A5BD8(&qword_1004193F8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
}

uint64_t sub_100087E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v5, 1, 1, v7);
}

uint64_t sub_100087ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C328, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100087F70(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419428, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100087FDC()
{
  sub_1000A5BD8(&qword_100419428, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);

  return Message.hash(into:)();
}

uint64_t sub_100088080()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432DD8);
  sub_100005DF0(v0, qword_100432DD8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "fit_validity_start_time_ns";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "fit_validity_end_time_ns";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "x_position_ecef_coefficients";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "y_position_ecef_coefficients";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "z_position_ecef_coefficients";
  *(v15 + 8) = 28;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100088360()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 32);
LABEL_15:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 3)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 36);
        goto LABEL_15;
      }
    }

    else if (result == 4 || result == 5 || result == 6)
    {
      dispatch thunk of Decoder.decodeRepeatedDoubleField(value:)();
    }
  }
}

uint64_t sub_10008844C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v3 = result;
  v4 = v0 + *(result + 32);
  if (v4[8])
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

  v6 = v0 + *(v3 + 36);
  if ((v6[8] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  if (*(v0[1] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  if (*(v0[2] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  v8 = v0 + *(v3 + 28);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1000885D8@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  a2[2] = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[7];
  result = UnknownStorage.init()();
  v6 = a1[9];
  v7 = a2 + a1[8];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t sub_100088668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C320, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100088708(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419440, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100088774()
{
  sub_1000A5BD8(&qword_100419440, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);

  return Message.hash(into:)();
}

uint64_t sub_100088818()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432DF0);
  sub_100005DF0(v0, qword_100432DF0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10036D7F0;
  v4 = v51 + v3;
  v5 = v51 + v3 + v1[14];
  *(v51 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v51 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "reference_time_nanoseconds";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "position_source";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "anchor_positions";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "clock_bias_correction_nanoseconds";
  *(v15 + 1) = 33;
  v15[16] = 2;
  v8();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "clock_frequency_correction_ppb";
  *(v17 + 1) = 30;
  v17[16] = 2;
  v8();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "clock_frequency_change_correction_ppb_per_sec";
  *(v19 + 1) = 45;
  v19[16] = 2;
  v8();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "range_accuracy_position_m";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = v51 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "range_accuracy_clock_nanoseconds";
  *(v22 + 8) = 32;
  *(v22 + 16) = 2;
  v8();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "over_the_air_from_sv_health_l1";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v8();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "over_the_air_from_other_sv_health_l1";
  *(v26 + 1) = 36;
  v26[16] = 2;
  v8();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "assistance_file_health_l1";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v8();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "ms_based_health_l1";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v8();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "integrity_health_l1";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v8();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "sv_band_corrections";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v8();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "polynomial_orbit";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v8();
  v37 = v51 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "over_the_air_from_sv_health_l5";
  *(v37 + 8) = 30;
  *(v37 + 16) = 2;
  v8();
  v38 = (v51 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "over_the_air_from_other_sv_health_l5";
  *(v39 + 1) = 36;
  v39[16] = 2;
  v8();
  v40 = (v51 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "assistance_file_health_l5";
  *(v41 + 1) = 25;
  v41[16] = 2;
  v8();
  v42 = (v51 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "ms_based_health_l5";
  *(v43 + 1) = 18;
  v43[16] = 2;
  v8();
  v44 = (v51 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "integrity_health_l5";
  *(v45 + 1) = 19;
  v45[16] = 2;
  v8();
  v46 = (v51 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "clock_frequency_accel_correction_ppb_per_sec_per_sec";
  *(v47 + 1) = 52;
  v47[16] = 2;
  v8();
  v48 = (v51 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "sv_reference_point";
  *(v49 + 1) = 18;
  v49[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100088F44()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource) = 7;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions) = &_swiftEmptyArrayStorage;
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  *v11 = 0;
  *(v11 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections) = &_swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  result = (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5) = 5;
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint) = 4;
  qword_1004370F0 = v3;
  return result;
}

uint64_t sub_100089164()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id, &qword_100418D10, &qword_10036D880);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions);

  v2 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit, &qword_100418D60, &qword_10036D8D0);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100089218()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10009ECB4(v6);

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
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvId;
          v15 = &qword_1004191A0;
          goto LABEL_15;
        case 2:
        case 5:
        case 6:
        case 7:
        case 23:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_19;
        case 3:
          v16 = v1;
          swift_beginAccess();
          sub_1000AE8E4();
          goto LABEL_18;
        case 4:
          v17 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
          v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime;
          v19 = &qword_100419428;
          goto LABEL_13;
        case 8:
        case 9:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_19;
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
          v16 = v1;
          swift_beginAccess();
          sub_1000AE890();
          goto LABEL_18;
        case 15:
          v17 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
          v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections;
          v19 = &qword_100419410;
LABEL_13:
          sub_1000A5BD8(v19, v18);
          v1 = v17;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_19;
        case 16:
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit;
          v15 = &qword_100419440;
LABEL_15:
          sub_1000A5BD8(v15, v14);
          v1 = v13;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_19;
        case 24:
          v16 = v1;
          swift_beginAccess();
          sub_1000AE740();
LABEL_18:
          v1 = v16;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_19:
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

uint64_t sub_1000896D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  result = sub_100089DB8(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
    swift_beginAccess();
    if (*(v8 + v12) != 7)
    {
      sub_1000AE8E4();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v13 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
    swift_beginAccess();
    if (*(*(v8 + v13) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
      sub_1000A5BD8(&qword_100419428, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v16 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
    swift_beginAccess();
    if ((*(v16 + 8) & 1) == 0)
    {
      v17 = *v16;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v18 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
    swift_beginAccess();
    if ((*(v18 + 8) & 1) == 0)
    {
      v19 = *v18;
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1, sub_1000AE890);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1, sub_1000AE890);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1, sub_1000AE890);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1, sub_1000AE890);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1, sub_1000AE890);
    v20 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
    swift_beginAccess();
    if (*(*(v8 + v20) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
      sub_1000A5BD8(&qword_100419410, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    sub_10008A070(v8, a1, a2, a3);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5, sub_1000AE890);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5, sub_1000AE890);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5, sub_1000AE890);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5, sub_1000AE890);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5, sub_1000AE890);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec);
    sub_10008A358(v8);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100089DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D10, &qword_10036D880);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D10, &qword_10036D880);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t sub_100089FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10008A070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D60, &qword_10036D8D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D60, &qword_10036D8D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D60, &qword_10036D8D0);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  sub_1000A5BD8(&qword_100419440, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
}

uint64_t sub_10008A298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 5)
  {
    v10 = *(a1 + v8);
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10008A358(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  result = swift_beginAccess();
  if (*(a1 + v2) != 4)
  {
    v4 = *(a1 + v2);
    sub_1000AE740();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

BOOL sub_10008A440(uint64_t a1, uint64_t a2)
{
  v155 = a2;
  v150 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v148 = *(v150 - 8);
  v3 = *(v148 + 64);
  __chkstk_darwin(v150);
  v145 = (&v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = sub_100024A2C(&qword_10041C570, &qword_100373D60);
  v5 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v151 = &v145 - v6;
  v7 = sub_100024A2C(&qword_100418D60, &qword_10036D8D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v146 = (&v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v149 = &v145 - v11;
  v154 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v12 = *(v154 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v154);
  v152 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100024A2C(&qword_10041C4D8, &qword_100373CC8);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v145 - v18;
  v20 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v153 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v145 - v24;
  v26 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v27 = a1 + v26;
  v28 = v155;
  sub_10000A0A4(v27, v25, &qword_100418D10, &qword_10036D880);
  v29 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v30 = *(v16 + 56);
  sub_10000A0A4(v25, v19, &qword_100418D10, &qword_10036D880);
  v31 = v154;
  sub_10000A0A4(v28 + v29, &v19[v30], &qword_100418D10, &qword_10036D880);
  v32 = *(v12 + 48);
  if (v32(v19, 1, v31) == 1)
  {

    sub_1000059A8(v25, &qword_100418D10, &qword_10036D880);
    if (v32(&v19[v30], 1, v31) == 1)
    {
      sub_1000059A8(v19, &qword_100418D10, &qword_10036D880);
      goto LABEL_11;
    }

LABEL_6:
    sub_1000059A8(v19, &qword_10041C4D8, &qword_100373CC8);
    goto LABEL_7;
  }

  v33 = v153;
  sub_10000A0A4(v19, v153, &qword_100418D10, &qword_10036D880);
  if (v32(&v19[v30], 1, v31) == 1)
  {

    sub_1000059A8(v25, &qword_100418D10, &qword_10036D880);
    sub_10009E7F4(v33, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  v35 = v152;
  sub_10009E724(&v19[v30], v152, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  v36 = sub_1000A5750(v33, v35);
  sub_10009E7F4(v35, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000059A8(v25, &qword_100418D10, &qword_10036D880);
  sub_10009E7F4(v33, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000059A8(v19, &qword_100418D10, &qword_10036D880);
  if ((v36 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v37 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  swift_beginAccess();
  v38 = *v37;
  v39 = *(v37 + 8);
  v40 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  swift_beginAccess();
  v41 = *(v40 + 8);
  if (v39)
  {
    if ((*(v40 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v40 + 8) & 1) != 0 || v38 != *v40)
  {
    goto LABEL_7;
  }

  v42 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  v43 = *(a1 + v42);
  v44 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  v45 = *(v28 + v44);
  if (v43 == 7)
  {
    if (v45 != 7)
    {
      goto LABEL_7;
    }
  }

  else if (v45 == 7 || v43 != v45)
  {
    goto LABEL_7;
  }

  v46 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v49 = *(v28 + v48);

  v50 = sub_10009D130(v47, v49);

  if ((v50 & 1) == 0)
  {
    goto LABEL_7;
  }

  v51 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  swift_beginAccess();
  v52 = *v51;
  v53 = *(v51 + 8);
  v54 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  swift_beginAccess();
  v55 = *(v54 + 8);
  if (v53)
  {
    if ((*(v54 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v54 + 8) & 1) != 0 || v52 != *v54)
  {
    goto LABEL_7;
  }

  v56 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  swift_beginAccess();
  v57 = *v56;
  v58 = *(v56 + 8);
  v59 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  swift_beginAccess();
  v60 = *(v59 + 8);
  if (v58)
  {
    if ((*(v59 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v59 + 8) & 1) != 0 || v57 != *v59)
  {
    goto LABEL_7;
  }

  v61 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  swift_beginAccess();
  v62 = *v61;
  v63 = *(v61 + 8);
  v64 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  swift_beginAccess();
  v65 = *(v64 + 8);
  if (v63)
  {
    if ((*(v64 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v64 + 8) & 1) != 0 || v62 != *v64)
  {
    goto LABEL_7;
  }

  v66 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  v67 = *v66;
  v68 = *(v66 + 4);
  v69 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  v70 = *(v69 + 4);
  if (v68)
  {
    if ((*(v69 + 4) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v69 + 4) & 1) != 0 || v67 != *v69)
  {
    goto LABEL_7;
  }

  v71 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  v72 = *v71;
  v73 = *(v71 + 4);
  v74 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  v75 = *(v74 + 4);
  if (v73)
  {
    if ((*(v74 + 4) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v74 + 4) & 1) != 0 || v72 != *v74)
  {
    goto LABEL_7;
  }

  v76 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  v77 = *(a1 + v76);
  v78 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  v79 = *(v28 + v78);
  if (v77 == 5)
  {
    if (v79 == 5)
    {
      goto LABEL_52;
    }

LABEL_7:

    return 0;
  }

  if (v79 == 5 || v77 != v79)
  {
    goto LABEL_7;
  }

LABEL_52:
  v80 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  v81 = a1;
  v82 = *(a1 + v80);
  v83 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  v84 = *(v28 + v83);
  if (v82 == 5)
  {
    if (v84 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v84 == 5 || v82 != v84)
  {
    goto LABEL_7;
  }

  v85 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  v88 = *(v28 + v87);
  if (v86 == 5)
  {
    if (v88 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v88 == 5 || v86 != v88)
  {
    goto LABEL_7;
  }

  v89 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  v90 = *(a1 + v89);
  v91 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  v92 = *(v28 + v91);
  if (v90 == 5)
  {
    if (v92 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v92 == 5 || v90 != v92)
  {
    goto LABEL_7;
  }

  v93 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  v94 = *(a1 + v93);
  v95 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  v96 = *(v28 + v95);
  if (v94 == 5)
  {
    if (v96 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v96 == 5 || v94 != v96)
  {
    goto LABEL_7;
  }

  v97 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v98 = *(a1 + v97);
  v99 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v100 = *(v28 + v99);

  v101 = sub_10009D834(v98, v100);

  if ((v101 & 1) == 0)
  {
    goto LABEL_7;
  }

  v102 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v103 = a1 + v102;
  v104 = v149;
  sub_10000A0A4(v103, v149, &qword_100418D60, &qword_10036D8D0);
  v105 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v106 = *(v147 + 48);
  v107 = v104;
  v108 = v151;
  sub_10000A0A4(v107, v151, &qword_100418D60, &qword_10036D8D0);
  sub_10000A0A4(v28 + v105, v108 + v106, &qword_100418D60, &qword_10036D8D0);
  v109 = *(v148 + 48);
  if (v109(v108, 1, v150) == 1)
  {
    sub_1000059A8(v149, &qword_100418D60, &qword_10036D8D0);
    if (v109(v151 + v106, 1, v150) == 1)
    {
      sub_1000059A8(v151, &qword_100418D60, &qword_10036D8D0);
      goto LABEL_81;
    }

LABEL_78:
    sub_1000059A8(v151, &qword_10041C570, &qword_100373D60);
    goto LABEL_7;
  }

  v110 = v151;
  sub_10000A0A4(v151, v146, &qword_100418D60, &qword_10036D8D0);
  if (v109(v110 + v106, 1, v150) == 1)
  {
    sub_1000059A8(v149, &qword_100418D60, &qword_10036D8D0);
    sub_10009E7F4(v146, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    goto LABEL_78;
  }

  v111 = v151;
  v112 = v151 + v106;
  v113 = v145;
  sub_10009E724(v112, v145, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  v114 = v146;
  v115 = sub_1000A1B50(v146, v113);
  sub_10009E7F4(v113, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  sub_1000059A8(v149, &qword_100418D60, &qword_10036D8D0);
  sub_10009E7F4(v114, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  sub_1000059A8(v111, &qword_100418D60, &qword_10036D8D0);
  if ((v115 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_81:
  v116 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  v117 = *(v81 + v116);
  v118 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  v119 = *(v28 + v118);
  if (v117 == 5)
  {
    if (v119 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v119 == 5 || v117 != v119)
  {
    goto LABEL_7;
  }

  v120 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  v121 = *(v81 + v120);
  v122 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  v123 = *(v28 + v122);
  if (v121 == 5)
  {
    if (v123 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v123 == 5 || v121 != v123)
  {
    goto LABEL_7;
  }

  v124 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  v125 = *(v81 + v124);
  v126 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  v127 = *(v28 + v126);
  if (v125 == 5)
  {
    if (v127 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v127 == 5 || v125 != v127)
  {
    goto LABEL_7;
  }

  v128 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  v129 = *(v81 + v128);
  v130 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  v131 = *(v28 + v130);
  if (v129 == 5)
  {
    if (v131 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v131 == 5 || v129 != v131)
  {
    goto LABEL_7;
  }

  v132 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  v133 = *(v81 + v132);
  v134 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  v135 = *(v28 + v134);
  if (v133 == 5)
  {
    if (v135 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v135 == 5 || v133 != v135)
  {
    goto LABEL_7;
  }

  v136 = v81 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  swift_beginAccess();
  v137 = *v136;
  v138 = *(v136 + 8);
  v139 = v28 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  swift_beginAccess();
  v140 = *(v139 + 8);
  if (v138)
  {
    if ((*(v139 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v139 + 8) & 1) != 0 || v137 != *v139)
  {
    goto LABEL_7;
  }

  v141 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  v142 = *(v81 + v141);

  v143 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  v144 = *(v28 + v143);

  if (v142 == 4)
  {
    return v144 == 4;
  }

  result = 0;
  if (v144 != 4 && v142 == v144)
  {
    return 1;
  }

  return result;
}

uint64_t sub_10008B4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C318, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008B54C(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419458, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008B5B8()
{
  sub_1000A5BD8(&qword_100419458, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo);

  return Message.hash(into:)();
}

uint64_t sub_10008B65C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E08);
  sub_100005DF0(v0, qword_100432E08);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "band";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rf_time_bias_nanoseconds";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rf_time_bias_uncertainty_nanoseconds";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "automatic_gain_control_db";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008B8F8()
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
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

          v5 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 32);
        }

        v0 = v5;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 20);
        sub_1000AEA34();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 24);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10008BA34()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 13)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v10 = *(v0 + *(result + 20));
    sub_1000AEA34();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v4 = (v0 + v3[6]);
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v6 = (v0 + v3[7]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v8 = (v0 + v3[8]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008BBAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 13;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_10008BC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C310, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008BCDC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419470, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008BD48()
{
  sub_1000A5BD8(&qword_100419470, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

  return Message.hash(into:)();
}

uint64_t sub_10008BDEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E20);
  sub_100005DF0(v0, qword_100432E20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "time_of_change";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "new_leap_second";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008BFFC()
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
      v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0) + 24);
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t sub_10008C0B8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008C1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_10008C23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C308, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008C2DC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419488, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008C348()
{
  sub_1000A5BD8(&qword_100419488, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);

  return Message.hash(into:)();
}

uint64_t sub_10008C3F0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E38);
  sub_100005DF0(v0, qword_100432E38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "current_leap_second";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "change_knowledge";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "new_leap_second";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008C64C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 28);
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
          sub_1000A5BD8(&qword_100419488, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 24);
          sub_1000AE7E8();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 20);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10008C7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
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

  if (*(v5 + *(v10 + 24)) != 5)
  {
    v13 = *(v5 + *(v10 + 24));
    sub_1000AE7E8();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_10008C8B4(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D68, &qword_10036D8D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_100418D68, &qword_10036D8D8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D68, &qword_10036D8D8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  sub_1000A5BD8(&qword_100419488, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
}

uint64_t sub_10008CB1C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a2 + v4) = 5;
  v6 = a1[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_10008CBE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C300, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008CC80(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004194A0, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008CCEC()
{
  sub_1000A5BD8(&qword_1004194A0, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  return Message.hash(into:)();
}

uint64_t sub_10008CD94()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E50);
  sub_100005DF0(v0, qword_100432E50);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicable_time_nanoseconds";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset_nanoseconds";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "drift_ppb";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "accel_ppb_per_second";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008D024()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 32);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t sub_10008D120()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + v3[6]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v8 = (v0 + v3[7]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v10 = (v0 + v3[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008D27C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  return result;
}

uint64_t sub_10008D310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2F8, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008D3B0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004194B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008D41C()
{
  sub_1000A5BD8(&qword_1004194B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);

  return Message.hash(into:)();
}

uint64_t sub_10008D4C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E68);
  sub_100005DF0(v0, qword_100432E68);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "week";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "leap_second";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "conversion";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008D724()
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
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
        v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v6 = &qword_1004194A0;
LABEL_5:
        sub_1000A5BD8(v6, v5);
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
    v5 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion;
    v6 = &qword_1004194B8;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10008D8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v10 = (v5 + *(result + 20));
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

  sub_10008D968(v5, a1, a2, a3);
  sub_10008DB84(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008D968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100418D70, &qword_10036D8E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D70, &qword_10036D8E0);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_1000A5BD8(&qword_1004194A0, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t sub_10008DB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D78, &qword_10036D8E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_100418D78, &qword_10036D8E8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D78, &qword_10036D8E8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  sub_1000A5BD8(&qword_1004194B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
}

uint64_t sub_10008DDEC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_10008DEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2F0, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008DF90(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004194D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008DFFC()
{
  sub_1000A5BD8(&qword_1004194D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  return Message.hash(into:)();
}

uint64_t sub_10008E0A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E80);
  sub_100005DF0(v0, qword_100432E80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "collection_time_nanoseconds";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset_time_nanoseconds";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008E2B0()
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
      v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0) + 24);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t sub_10008E36C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008E478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_10008E4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008E590(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004194E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008E5FC()
{
  sub_1000A5BD8(&qword_1004194E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);

  return Message.hash(into:)();
}

uint64_t sub_10008E6A4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E98);
  sub_100005DF0(v0, qword_100432E98);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "four_week_period";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "day";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "leap_second_deprecated";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gps_time_conversion";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "utc_conversion_deprecated";
  *(v14 + 8) = 25;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008E980()
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
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 24);
        }

        v0 = v6;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 28);
            sub_1000AE794();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            goto LABEL_5;
          case 4:
            v4 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 32);
            break;
          case 5:
            v4 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
            break;
          default:
            goto LABEL_5;
        }

        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
        sub_1000A5BD8(&qword_1004194E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10008EB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
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

  if (*(v5 + *(v10 + 28)) != 6)
  {
    v15 = *(v5 + *(v10 + 28));
    sub_1000AE794();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_10008EC68(v5, a1, a2, a3);
  sub_10008EE84(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008EC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_100418D80, &qword_10036D8F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D80, &qword_10036D8F0);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  sub_1000A5BD8(&qword_1004194E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
}

uint64_t sub_10008EE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  sub_10000A0A4(a1 + *(v14 + 36), v8, &qword_100418D80, &qword_10036D8F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D80, &qword_10036D8F0);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  sub_1000A5BD8(&qword_1004194E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
}

uint64_t sub_10008F0EC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + a1[7]) = 6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + a1[9];

  return v11(v9, 1, 1, v8);
}

uint64_t sub_10008F1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2E0, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008F29C(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419500, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008F308()
{
  sub_1000A5BD8(&qword_100419500, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);

  return Message.hash(into:)();
}

uint64_t sub_10008F3AC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432EB0);
  sub_100005DF0(v0, qword_100432EB0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "applicable_time_nanoSeconds";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset_nanoSeconds";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "drift_ppb";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008F648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v15 = *(a4(0) + 28);
LABEL_3:
        v6 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 2:
        v11 = *(a4(0) + 24);
        goto LABEL_3;
      case 1:
        v14 = a4(0);
        a5(v5 + *(v14 + 20), a2, a3);
        break;
    }
  }
}

uint64_t sub_10008F744()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v8 = (v0 + *(v3 + 28));
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008F890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2D8, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008F930(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008F99C()
{
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);

  return Message.hash(into:)();
}

uint64_t sub_10008FA44()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432EC8);
  sub_100005DF0(v0, qword_100432EC8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "week";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "leap_second_deprecated";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "gps_time_conversion";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "glonass_time_conversion";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "galileo_time_conversion";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "utc_time_conversion_deprecated";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008FD58()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 20) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3 + v6, 1, 1, v7);
  v8(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, 1, 1, v7);
  v8(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, 1, 1, v7);
  result = (v8)(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, 1, 1, v7);
  qword_100437148 = v3;
  return result;
}

uint64_t sub_10008FEB0(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  v11 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v26 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, 1, 1, v14);
  v27 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, 1, 1, v14);
  v28 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, 1, 1, v14);
  swift_beginAccess();
  v16 = *(a1 + 16);
  LOBYTE(v15) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v16;
  *(v1 + 20) = v15;
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  sub_10000A0A4(a1 + v17, v10, &qword_100418D70, &qword_10036D8E0);
  swift_beginAccess();
  sub_10000AD64(v10, v1 + v11, &qword_100418D70, &qword_10036D8E0);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v18, v6, &qword_100418D88, &qword_10036D8F8);
  swift_beginAccess();
  sub_10000AD64(v6, v1 + v13, &qword_100418D88, &qword_10036D8F8);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v19, v6, &qword_100418D88, &qword_10036D8F8);
  v20 = v26;
  swift_beginAccess();
  sub_10000AD64(v6, v1 + v20, &qword_100418D88, &qword_10036D8F8);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v21, v6, &qword_100418D88, &qword_10036D8F8);
  v22 = v27;
  swift_beginAccess();
  sub_10000AD64(v6, v1 + v22, &qword_100418D88, &qword_10036D8F8);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  sub_10000A0A4(a1 + v23, v6, &qword_100418D88, &qword_10036D8F8);

  v24 = v28;
  swift_beginAccess();
  sub_10000AD64(v6, v1 + v24, &qword_100418D88, &qword_10036D8F8);
  swift_endAccess();
  return v1;
}

uint64_t sub_100090318()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated, &qword_100418D70, &qword_10036D8E0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion, &qword_100418D88, &qword_10036D8F8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, &qword_100418D88, &qword_10036D8F8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, &qword_100418D88, &qword_10036D8F8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, &qword_100418D88, &qword_10036D8F8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10009040C()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10008FEB0(v6);
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

      if (result == 4 || result == 5 || result == 6)
      {
        goto LABEL_18;
      }

LABEL_21:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else
    {
      if (result == 2)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v15 = &qword_1004194A0;
      }

      else
      {
        if (result != 3)
        {
          goto LABEL_21;
        }

LABEL_18:
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion;
        v15 = &qword_100419518;
      }

      sub_1000A5BD8(v15, v14);
      v1 = v13;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    swift_endAccess();
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100090664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
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

  sub_10009078C(v9, a1, a2, a3);
  sub_1000909B4(v9, a1, a2, a3);
  sub_100090BDC(v9, a1, a2, a3);
  sub_100090E04(v9, a1, a2, a3);
  sub_10009102C(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10009078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D70, &qword_10036D8E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D70, &qword_10036D8E0);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_1000A5BD8(&qword_1004194A0, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t sub_1000909B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D88, &qword_10036D8F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_100090BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D88, &qword_10036D8F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_100090E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D88, &qword_10036D8F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_10009102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D88, &qword_10036D8F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

BOOL sub_100091298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v138 = *(v4 - 8);
  v5 = *(v138 + 64);
  __chkstk_darwin(v4);
  v130 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_100024A2C(&qword_10041C560, &qword_100373D50);
  v7 = *(*(v137 - 8) + 64);
  v8 = __chkstk_darwin(v137);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v127 = &v121 - v12;
  v13 = __chkstk_darwin(v11);
  v129 = &v121 - v14;
  __chkstk_darwin(v13);
  v135 = &v121 - v15;
  v16 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v124 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v126 = &v121 - v21;
  v22 = __chkstk_darwin(v20);
  v125 = &v121 - v23;
  v24 = __chkstk_darwin(v22);
  v131 = &v121 - v25;
  v26 = __chkstk_darwin(v24);
  v128 = &v121 - v27;
  v28 = __chkstk_darwin(v26);
  v133 = &v121 - v29;
  v30 = __chkstk_darwin(v28);
  v132 = &v121 - v31;
  __chkstk_darwin(v30);
  v141 = &v121 - v32;
  v33 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v139 = *(v33 - 8);
  v140 = v33;
  v34 = *(v139 + 8);
  __chkstk_darwin(v33);
  v134 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100024A2C(&qword_10041C568, &qword_100373D58);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = &v121 - v38;
  v40 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v136 = &v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v45 = &v121 - v44;
  swift_beginAccess();
  v46 = *(a1 + 16);
  v47 = *(a1 + 20);
  swift_beginAccess();
  v48 = *(a2 + 20);
  if (v47)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v46 != *(a2 + 16))
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  v122 = v10;
  v123 = v4;
  v49 = a1;
  v50 = a2;
  v51 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  v52 = v49 + v51;
  v53 = v50;
  sub_10000A0A4(v52, v45, &qword_100418D70, &qword_10036D8E0);
  v54 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  v55 = *(v36 + 48);
  sub_10000A0A4(v45, v39, &qword_100418D70, &qword_10036D8E0);
  sub_10000A0A4(v50 + v54, &v39[v55], &qword_100418D70, &qword_10036D8E0);
  v56 = v140;
  v57 = *(v139 + 6);
  if (v57(v39, 1, v140) == 1)
  {

    sub_1000059A8(v45, &qword_100418D70, &qword_10036D8E0);
    v58 = v57(&v39[v55], 1, v56);
    v59 = v49;
    v60 = v123;
    v61 = v141;
    if (v58 == 1)
    {
      sub_1000059A8(v39, &qword_100418D70, &qword_10036D8E0);
      goto LABEL_15;
    }

LABEL_12:
    sub_1000059A8(v39, &qword_10041C568, &qword_100373D58);
    goto LABEL_29;
  }

  v62 = v50;
  v63 = v136;
  sub_10000A0A4(v39, v136, &qword_100418D70, &qword_10036D8E0);
  v64 = v57(&v39[v55], 1, v56);
  v61 = v141;
  if (v64 == 1)
  {

    sub_1000059A8(v45, &qword_100418D70, &qword_10036D8E0);
    sub_10009E7F4(v63, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    goto LABEL_12;
  }

  v65 = v134;
  sub_10009E724(&v39[v55], v134, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  LODWORD(v140) = sub_1000A3478(v63, v65);
  sub_10009E7F4(v65, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_1000059A8(v45, &qword_100418D70, &qword_10036D8E0);
  v66 = v63;
  v53 = v62;
  sub_10009E7F4(v66, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v59 = v49;
  sub_1000059A8(v39, &qword_100418D70, &qword_10036D8E0);
  v60 = v123;
  if ((v140 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v67 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  v140 = v59;
  sub_10000A0A4(v59 + v67, v61, &qword_100418D88, &qword_10036D8F8);
  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  v69 = *(v137 + 48);
  v70 = v135;
  sub_10000A0A4(v61, v135, &qword_100418D88, &qword_10036D8F8);
  sub_10000A0A4(v53 + v68, v70 + v69, &qword_100418D88, &qword_10036D8F8);
  v72 = v138 + 48;
  v71 = *(v138 + 48);
  if (v71(v70, 1, v60) == 1)
  {
    sub_1000059A8(v61, &qword_100418D88, &qword_10036D8F8);
    if (v71(v70 + v69, 1, v60) == 1)
    {
      v139 = v71;
      sub_1000059A8(v70, &qword_100418D88, &qword_10036D8F8);
      goto LABEL_22;
    }

LABEL_20:
    v74 = v70;
LABEL_28:
    sub_1000059A8(v74, &qword_10041C560, &qword_100373D50);
    goto LABEL_29;
  }

  v73 = v132;
  sub_10000A0A4(v70, v132, &qword_100418D88, &qword_10036D8F8);
  if (v71(v70 + v69, 1, v60) == 1)
  {
    sub_1000059A8(v141, &qword_100418D88, &qword_10036D8F8);
    sub_10009E7F4(v73, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    goto LABEL_20;
  }

  v139 = v71;
  v75 = v70 + v69;
  v76 = v130;
  sub_10009E724(v75, v130, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v77 = sub_1000A2EBC(v73, v76);
  sub_10009E7F4(v76, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v141, &qword_100418D88, &qword_10036D8F8);
  sub_10009E7F4(v73, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v60 = v123;
  sub_1000059A8(v70, &qword_100418D88, &qword_10036D8F8);
  if ((v77 & 1) == 0)
  {
LABEL_29:

    return 0;
  }

LABEL_22:
  v138 = v72;
  v78 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  v79 = v140;
  swift_beginAccess();
  v80 = v79 + v78;
  v81 = v133;
  sub_10000A0A4(v80, v133, &qword_100418D88, &qword_10036D8F8);
  v82 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  v83 = *(v137 + 48);
  v84 = v129;
  sub_10000A0A4(v81, v129, &qword_100418D88, &qword_10036D8F8);
  v85 = v84;
  sub_10000A0A4(v53 + v82, v84 + v83, &qword_100418D88, &qword_10036D8F8);
  v86 = v139;
  if (v139(v84, 1, v60) == 1)
  {
    sub_1000059A8(v81, &qword_100418D88, &qword_10036D8F8);
    v87 = v86(v84 + v83, 1, v60);
    v88 = v131;
    if (v87 == 1)
    {
      v89 = v86;
      sub_1000059A8(v85, &qword_100418D88, &qword_10036D8F8);
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v90 = v84;
  v91 = v86;
  v92 = v128;
  sub_10000A0A4(v90, v128, &qword_100418D88, &qword_10036D8F8);
  v89 = v91;
  v93 = v91(v85 + v83, 1, v60);
  v88 = v131;
  if (v93 == 1)
  {
    sub_1000059A8(v133, &qword_100418D88, &qword_10036D8F8);
    sub_10009E7F4(v92, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_27:
    v74 = v85;
    goto LABEL_28;
  }

  v95 = v85 + v83;
  v96 = v130;
  sub_10009E724(v95, v130, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v97 = sub_1000A2EBC(v92, v96);
  sub_10009E7F4(v96, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v133, &qword_100418D88, &qword_10036D8F8);
  sub_10009E7F4(v92, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v85, &qword_100418D88, &qword_10036D8F8);
  if ((v97 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v98 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  v99 = v140;
  swift_beginAccess();
  sub_10000A0A4(v99 + v98, v88, &qword_100418D88, &qword_10036D8F8);
  v100 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  v101 = *(v137 + 48);
  v102 = v127;
  sub_10000A0A4(v88, v127, &qword_100418D88, &qword_10036D8F8);
  sub_10000A0A4(v53 + v100, v102 + v101, &qword_100418D88, &qword_10036D8F8);
  if (v89(v102, 1, v60) == 1)
  {
    sub_1000059A8(v88, &qword_100418D88, &qword_10036D8F8);
    v103 = v89(v102 + v101, 1, v60);
    v104 = v140;
    if (v103 == 1)
    {
      sub_1000059A8(v102, &qword_100418D88, &qword_10036D8F8);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v105 = v125;
  sub_10000A0A4(v102, v125, &qword_100418D88, &qword_10036D8F8);
  if (v89(v102 + v101, 1, v60) == 1)
  {
    sub_1000059A8(v131, &qword_100418D88, &qword_10036D8F8);
    sub_10009E7F4(v105, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_37:
    sub_1000059A8(v102, &qword_10041C560, &qword_100373D50);
    goto LABEL_29;
  }

  v106 = v130;
  sub_10009E724(v102 + v101, v130, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v107 = sub_1000A2EBC(v105, v106);
  sub_10009E7F4(v106, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v131, &qword_100418D88, &qword_10036D8F8);
  sub_10009E7F4(v105, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v102, &qword_100418D88, &qword_10036D8F8);
  v104 = v140;
  if ((v107 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_39:
  v108 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  v109 = v126;
  sub_10000A0A4(v104 + v108, v126, &qword_100418D88, &qword_10036D8F8);
  v110 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  v111 = *(v137 + 48);
  v112 = v122;
  sub_10000A0A4(v109, v122, &qword_100418D88, &qword_10036D8F8);
  v113 = v53 + v110;
  v114 = v112;
  v115 = v123;
  v141 = v111;
  sub_10000A0A4(v113, v114 + v111, &qword_100418D88, &qword_10036D8F8);
  if (v89(v114, 1, v115) != 1)
  {
    v116 = v124;
    sub_10000A0A4(v114, v124, &qword_100418D88, &qword_10036D8F8);
    v117 = v141;
    if (v89(v114 + v141, 1, v115) == 1)
    {

      sub_1000059A8(v126, &qword_100418D88, &qword_10036D8F8);
      sub_10009E7F4(v116, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      goto LABEL_44;
    }

    v118 = v130;
    sub_10009E724(v114 + v117, v130, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v119 = v116;
    v120 = sub_1000A2EBC(v116, v118);

    sub_10009E7F4(v118, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    sub_1000059A8(v126, &qword_100418D88, &qword_10036D8F8);
    sub_10009E7F4(v119, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    sub_1000059A8(v114, &qword_100418D88, &qword_10036D8F8);
    return (v120 & 1) != 0;
  }

  sub_1000059A8(v109, &qword_100418D88, &qword_10036D8F8);
  if (v89(v114 + v141, 1, v115) != 1)
  {
LABEL_44:
    sub_1000059A8(v114, &qword_10041C560, &qword_100373D50);
    return 0;
  }

  sub_1000059A8(v114, &qword_100418D88, &qword_10036D8F8);
  return 1;
}

uint64_t sub_1000923B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2D0, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100092450(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419530, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000924BC()
{
  sub_1000A5BD8(&qword_100419530, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);

  return Message.hash(into:)();
}

uint64_t sub_100092560()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432EE0);
  sub_100005DF0(v0, qword_100432EE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "week";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "leap_second_deprecated";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "gps_time_conversion";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "utc_time_conversion_deprecated";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000927FC()
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
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 2)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
        v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v7 = &qword_1004194A0;
LABEL_16:
        sub_1000A5BD8(v7, v6);
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 3)
    {
      v4 = v0;
      v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 28);
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_5;
      }

      v4 = v0;
      v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 32);
    }

    type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion;
    v7 = &qword_100419518;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000929A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v10 = (v5 + *(result + 20));
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

  sub_100092A7C(v5, a1, a2, a3);
  sub_100092C98(v5, a1, a2, a3);
  sub_100092EB4(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100092A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100418D70, &qword_10036D8E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D70, &qword_10036D8E0);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_1000A5BD8(&qword_1004194A0, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t sub_100092C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_100418D88, &qword_10036D8F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_100092EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_100418D88, &qword_10036D8F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_10009311C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + a1[8];

  return v11(v9, 1, 1, v8);
}

uint64_t sub_100093258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2C8, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000932F8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419548, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100093364()
{
  sub_1000A5BD8(&qword_100419548, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);

  return Message.hash(into:)();
}

uint64_t sub_100093408()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432EF8);
  sub_100005DF0(v0, qword_100432EF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "gps_time_conversion";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "week";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100093620()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
        sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10009373C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000937E8(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = (v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24));
    if ((v6[1] & 1) == 0)
    {
      v7 = *v6;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000937E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100418D88, &qword_10036D8F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_100093A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_100093B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2C0, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100093BA8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419560, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100093C14()
{
  sub_1000A5BD8(&qword_100419560, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);

  return Message.hash(into:)();
}

uint64_t sub_100093CB8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F10);
  sub_100005DF0(v0, qword_100432F10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "gps";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "glonass";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "beidou";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "galileo";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "navic";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100093F90()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  result = (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  qword_100437170 = v3;
  return result;
}

uint64_t sub_100094134(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v44 = &v40 - v5;
  v6 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v43 = &v40 - v8;
  v9 = sub_100024A2C(&qword_100418DA0, &qword_10036D910);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v42 = &v40 - v11;
  v12 = sub_100024A2C(&qword_100418D98, &qword_10036D908);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v40 - v14;
  v16 = sub_100024A2C(&qword_100418D90, &qword_10036D900);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v40 - v18;
  v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  v25 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v41 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v29 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v29 - 8) + 56))(v1 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000A0A4(a1 + v30, v19, &qword_100418D90, &qword_10036D900);
  swift_beginAccess();
  sub_10000AD64(v19, v1 + v20, &qword_100418D90, &qword_10036D900);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  sub_10000A0A4(a1 + v31, v15, &qword_100418D98, &qword_10036D908);
  swift_beginAccess();
  sub_10000AD64(v15, v1 + v22, &qword_100418D98, &qword_10036D908);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  v33 = v42;
  sub_10000A0A4(a1 + v32, v42, &qword_100418DA0, &qword_10036D910);
  swift_beginAccess();
  sub_10000AD64(v33, v1 + v24, &qword_100418DA0, &qword_10036D910);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v35 = v43;
  sub_10000A0A4(a1 + v34, v43, &qword_100418DA8, &qword_10036D918);
  swift_beginAccess();
  sub_10000AD64(v35, v1 + v26, &qword_100418DA8, &qword_10036D918);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  v37 = v44;
  sub_10000A0A4(a1 + v36, v44, &qword_100418DB0, &qword_10036D920);

  v38 = v41;
  swift_beginAccess();
  sub_10000AD64(v37, v1 + v38, &qword_100418DB0, &qword_10036D920);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000946C0()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps, &qword_100418D90, &qword_10036D900);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass, &qword_100418D98, &qword_10036D908);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou, &qword_100418DA0, &qword_10036D910);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo, &qword_100418DA8, &qword_10036D918);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic, &qword_100418DB0, &qword_10036D920);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000947B4()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100094134(v6);
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
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo;
          v15 = &qword_1004194D0;
          goto LABEL_7;
        }

        if (result == 2)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo;
          v15 = &qword_100419500;
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
            type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
            v14 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo;
            v15 = &qword_100419530;
LABEL_7:
            sub_1000A5BD8(v15, v14);
            v1 = v13;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            swift_endAccess();
            break;
          case 4:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
            v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo;
            v15 = &qword_100419548;
            goto LABEL_7;
          case 5:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
            v14 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo;
            v15 = &qword_100419560;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100094AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  result = sub_100094BA8(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100094DD0(v8, a1, a2, a3);
    sub_100094FF8(v8, a1, a2, a3);
    sub_100095220(v8, a1, a2, a3);
    sub_100095448(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100094BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D90, &qword_10036D900);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D90, &qword_10036D900);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D90, &qword_10036D900);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  sub_1000A5BD8(&qword_1004194D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
}

uint64_t sub_100094DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D98, &qword_10036D908);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D98, &qword_10036D908);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D98, &qword_10036D908);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  sub_1000A5BD8(&qword_100419500, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
}

uint64_t sub_100094FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418DA0, &qword_10036D910);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418DA0, &qword_10036D910);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418DA0, &qword_10036D910);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  sub_1000A5BD8(&qword_100419530, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
}

uint64_t sub_100095220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418DA8, &qword_10036D918);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418DA8, &qword_10036D918);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  sub_1000A5BD8(&qword_100419548, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
}

uint64_t sub_100095448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418DB0, &qword_10036D920);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418DB0, &qword_10036D920);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  sub_1000A5BD8(&qword_100419560, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
}

BOOL sub_1000956B4(uint64_t a1, uint64_t a2)
{
  v151 = a2;
  v125 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v124 = *(v125 - 8);
  v3 = *(v124 + 64);
  __chkstk_darwin(v125);
  v121 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_100024A2C(&qword_10041C538, &qword_100373D28);
  v5 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v126 = &v121 - v6;
  v7 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v148 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v140 = &v121 - v11;
  v131 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v130 = *(v131 - 8);
  v12 = *(v130 + 64);
  __chkstk_darwin(v131);
  v122 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_100024A2C(&qword_10041C540, &qword_100373D30);
  v14 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v132 = &v121 - v15;
  v16 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v127 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v133 = &v121 - v20;
  v138 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v137 = *(v138 - 8);
  v21 = *(v137 + 64);
  __chkstk_darwin(v138);
  v128 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_100024A2C(&qword_10041C548, &qword_100373D38);
  v23 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v139 = &v121 - v24;
  v25 = sub_100024A2C(&qword_100418DA0, &qword_10036D910);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v135 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v147 = &v121 - v29;
  v145 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v144 = *(v145 - 8);
  v30 = *(v144 + 64);
  __chkstk_darwin(v145);
  v134 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_100024A2C(&qword_10041C550, &qword_100373D40);
  v32 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v146 = &v121 - v33;
  v34 = sub_100024A2C(&qword_100418D98, &qword_10036D908);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v141 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v150 = &v121 - v38;
  v39 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v142 = &v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100024A2C(&qword_10041C558, &qword_100373D48);
  v44 = v43 - 8;
  v45 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v47 = &v121 - v46;
  v48 = sub_100024A2C(&qword_100418D90, &qword_10036D900);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48 - 8);
  v149 = &v121 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v53 = &v121 - v52;
  v54 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000A0A4(a1 + v54, v53, &qword_100418D90, &qword_10036D900);
  v55 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v56 = v151;
  swift_beginAccess();
  v57 = *(v44 + 56);
  sub_10000A0A4(v53, v47, &qword_100418D90, &qword_10036D900);
  sub_10000A0A4(v56 + v55, &v47[v57], &qword_100418D90, &qword_10036D900);
  v58 = *(v40 + 48);
  if (v58(v47, 1, v39) == 1)
  {

    sub_1000059A8(v53, &qword_100418D90, &qword_10036D900);
    if (v58(&v47[v57], 1, v39) == 1)
    {
      sub_1000059A8(v47, &qword_100418D90, &qword_10036D900);
      goto LABEL_8;
    }

LABEL_6:
    v60 = &qword_10041C558;
    v61 = &qword_100373D48;
    v62 = v47;
LABEL_22:
    sub_1000059A8(v62, v60, v61);
    goto LABEL_23;
  }

  v59 = v149;
  sub_10000A0A4(v47, v149, &qword_100418D90, &qword_10036D900);
  if (v58(&v47[v57], 1, v39) == 1)
  {

    sub_1000059A8(v53, &qword_100418D90, &qword_10036D900);
    sub_10009E7F4(v59, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    goto LABEL_6;
  }

  v63 = v142;
  sub_10009E724(&v47[v57], v142, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  v64 = sub_1000A382C(v59, v63);
  sub_10009E7F4(v63, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  sub_1000059A8(v53, &qword_100418D90, &qword_10036D900);
  sub_10009E7F4(v59, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  sub_1000059A8(v47, &qword_100418D90, &qword_10036D900);
  if ((v64 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v65 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  v66 = v150;
  sub_10000A0A4(a1 + v65, v150, &qword_100418D98, &qword_10036D908);
  v67 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  v68 = *(v143 + 48);
  v69 = v146;
  sub_10000A0A4(v66, v146, &qword_100418D98, &qword_10036D908);
  sub_10000A0A4(v56 + v67, v69 + v68, &qword_100418D98, &qword_10036D908);
  v70 = *(v144 + 48);
  v71 = v145;
  if (v70(v69, 1, v145) == 1)
  {
    sub_1000059A8(v66, &qword_100418D98, &qword_10036D908);
    v72 = v70(v69 + v68, 1, v71);
    v73 = v148;
    v74 = v147;
    if (v72 == 1)
    {
      sub_1000059A8(v69, &qword_100418D98, &qword_10036D908);
      goto LABEL_15;
    }

LABEL_13:
    v60 = &qword_10041C550;
    v61 = &qword_100373D40;
LABEL_21:
    v62 = v69;
    goto LABEL_22;
  }

  v75 = v141;
  sub_10000A0A4(v69, v141, &qword_100418D98, &qword_10036D908);
  v76 = v70(v69 + v68, 1, v71);
  v77 = v148;
  v74 = v147;
  if (v76 == 1)
  {
    sub_1000059A8(v150, &qword_100418D98, &qword_10036D908);
    sub_10009E7F4(v75, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    goto LABEL_13;
  }

  v78 = v69 + v68;
  v79 = v134;
  sub_10009E724(v78, v134, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  v80 = sub_1000A1F10(v75, v79);
  sub_10009E7F4(v79, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  sub_1000059A8(v150, &qword_100418D98, &qword_10036D908);
  sub_10009E7F4(v75, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  sub_1000059A8(v69, &qword_100418D98, &qword_10036D908);
  v73 = v77;
  if ((v80 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v81 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  sub_10000A0A4(a1 + v81, v74, &qword_100418DA0, &qword_10036D910);
  v82 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  v83 = *(v136 + 48);
  v69 = v139;
  sub_10000A0A4(v74, v139, &qword_100418DA0, &qword_10036D910);
  sub_10000A0A4(v56 + v82, v69 + v83, &qword_100418DA0, &qword_10036D910);
  v84 = *(v137 + 48);
  v85 = v138;
  if (v84(v69, 1, v138) == 1)
  {
    sub_1000059A8(v74, &qword_100418DA0, &qword_10036D910);
    v86 = v84(v69 + v83, 1, v85);
    v87 = v140;
    if (v86 == 1)
    {
      sub_1000059A8(v69, &qword_100418DA0, &qword_10036D910);
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v88 = v135;
  sub_10000A0A4(v69, v135, &qword_100418DA0, &qword_10036D910);
  v89 = v84(v69 + v83, 1, v85);
  v87 = v140;
  if (v89 == 1)
  {
    sub_1000059A8(v74, &qword_100418DA0, &qword_10036D910);
    sub_10009E7F4(v88, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
LABEL_20:
    v60 = &qword_10041C548;
    v61 = &qword_100373D38;
    goto LABEL_21;
  }

  v91 = v85;
  v92 = v128;
  sub_10009E724(v69 + v83, v128, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  v93 = *(v91 + 20);
  v94 = *(v88 + v93);
  v95 = *(v92 + v93);
  if (v94 != v95)
  {
    v96 = *(v88 + v93);

    v97 = sub_100091298(v94, v95);

    if (!v97)
    {
      sub_10009E7F4(v92, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      sub_1000059A8(v74, &qword_100418DA0, &qword_10036D910);
      sub_10009E7F4(v135, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      v62 = v69;
      v60 = &qword_100418DA0;
      v61 = &qword_10036D910;
      goto LABEL_22;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v98 = v74;
  v99 = v135;
  LODWORD(v150) = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10009E7F4(v92, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  sub_1000059A8(v98, &qword_100418DA0, &qword_10036D910);
  sub_10009E7F4(v99, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  sub_1000059A8(v69, &qword_100418DA0, &qword_10036D910);
  v73 = v148;
  if ((v150 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_29:
  v100 = v87;
  v101 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v102 = v133;
  sub_10000A0A4(a1 + v101, v133, &qword_100418DA8, &qword_10036D918);
  v103 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v104 = *(v129 + 48);
  v105 = v132;
  sub_10000A0A4(v102, v132, &qword_100418DA8, &qword_10036D918);
  sub_10000A0A4(v56 + v103, v105 + v104, &qword_100418DA8, &qword_10036D918);
  v106 = *(v130 + 48);
  v107 = v131;
  if (v106(v105, 1, v131) != 1)
  {
    v108 = v127;
    sub_10000A0A4(v105, v127, &qword_100418DA8, &qword_10036D918);
    if (v106(v105 + v104, 1, v107) == 1)
    {
      sub_1000059A8(v133, &qword_100418DA8, &qword_10036D918);
      sub_10009E7F4(v108, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
      goto LABEL_34;
    }

    v109 = v105 + v104;
    v110 = v122;
    sub_10009E724(v109, v122, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    v111 = sub_1000A2500(v108, v110);
    sub_10009E7F4(v110, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    sub_1000059A8(v133, &qword_100418DA8, &qword_10036D918);
    sub_10009E7F4(v108, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    sub_1000059A8(v105, &qword_100418DA8, &qword_10036D918);
    if (v111)
    {
      goto LABEL_36;
    }

LABEL_23:

    return 0;
  }

  sub_1000059A8(v102, &qword_100418DA8, &qword_10036D918);
  if (v106(v105 + v104, 1, v107) != 1)
  {
LABEL_34:
    v60 = &qword_10041C540;
    v61 = &qword_100373D30;
    v62 = v105;
    goto LABEL_22;
  }

  sub_1000059A8(v105, &qword_100418DA8, &qword_10036D918);
LABEL_36:
  v112 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000A0A4(a1 + v112, v100, &qword_100418DB0, &qword_10036D920);
  v113 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  v114 = *(v123 + 48);
  v115 = v126;
  sub_10000A0A4(v100, v126, &qword_100418DB0, &qword_10036D920);
  sub_10000A0A4(v56 + v113, v115 + v114, &qword_100418DB0, &qword_10036D920);
  v116 = *(v124 + 48);
  v117 = v125;
  if (v116(v115, 1, v125) == 1)
  {

    sub_1000059A8(v100, &qword_100418DB0, &qword_10036D920);
    if (v116(v115 + v114, 1, v117) == 1)
    {
      sub_1000059A8(v115, &qword_100418DB0, &qword_10036D920);
      return 1;
    }

    goto LABEL_42;
  }

  sub_10000A0A4(v115, v73, &qword_100418DB0, &qword_10036D920);
  if (v116(v115 + v114, 1, v117) == 1)
  {

    sub_1000059A8(v140, &qword_100418DB0, &qword_10036D920);
    sub_10009E7F4(v73, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
LABEL_42:
    sub_1000059A8(v115, &qword_10041C538, &qword_100373D28);
    return 0;
  }

  v118 = v115 + v114;
  v119 = v121;
  sub_10009E724(v118, v121, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  v120 = sub_1000A2FEC(v73, v119);

  sub_10009E7F4(v119, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  sub_1000059A8(v140, &qword_100418DB0, &qword_10036D920);
  sub_10009E7F4(v73, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  sub_1000059A8(v115, &qword_100418DB0, &qword_10036D920);
  return (v120 & 1) != 0;
}

uint64_t sub_100096BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100096C64(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419578, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100096CD0()
{
  sub_1000A5BD8(&qword_100419578, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);

  return Message.hash(into:)();
}

uint64_t sub_100096D74()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F28);
  sub_100005DF0(v0, qword_100432F28);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "decode_time_full_gps_ns";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "alpha0";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "alpha1";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "alpha2";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "alpha3";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "beta0";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "beta1";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "beta2";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "beta3";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100097148()
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
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 28);
          }

          else
          {
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 32);
          }
        }

        else
        {
          if (result == 1)
          {
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 20);
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            goto LABEL_23;
          }

          if (result != 2)
          {
            goto LABEL_23;
          }

          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 24);
        }
      }

      else if (result <= 6)
      {
        v3 = v0;
        if (result == 5)
        {
          v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 36);
        }

        else
        {
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
        }
      }

      else
      {
        switch(result)
        {
          case 7:
            v3 = v0;
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
            break;
          case 8:
            v3 = v0;
            v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
            break;
          case 9:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
            break;
          default:
            goto LABEL_23;
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
LABEL_23:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1000972E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = v5 + v10[6];
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 4) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_100097484(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  sub_100097500(v5);
  sub_100097578(v5);
  sub_1000975F0(v5);
  sub_100097668(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100097484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t sub_100097500(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100097578(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000975F0(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100097668(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10009772C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
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
  v17 = a2 + a1[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  return result;
}

uint64_t sub_100097808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2B0, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000978A8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419590, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100097914()
{
  sub_1000A5BD8(&qword_100419590, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);

  return Message.hash(into:)();
}

uint64_t sub_1000979B8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F40);
  sub_100005DF0(v0, qword_100432F40);
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

uint64_t sub_100097C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

  v10 = (v4 + *(v7 + 24));
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v12 = (v4 + *(v7 + 28));
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100097DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2A8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100097E80(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004195A8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100097EEC()
{
  sub_1000A5BD8(&qword_1004195A8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);

  return Message.hash(into:)();
}

uint64_t sub_100097F90()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F58);
  sub_100005DF0(v0, qword_100432F58);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "band";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sv_reference_point";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "offset_xyz_m";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100098228()
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
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 28);
          sub_1000AE740();
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 32);
          type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
          sub_1000A5BD8(&qword_1004195A8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
LABEL_16:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
          goto LABEL_16;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 24);
          sub_1000AEA34();
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100098404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100098530(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
    if (*(v5 + *(v10 + 24)) != 13)
    {
      v11 = v10;
      v12 = *(v5 + *(v10 + 24));
      sub_1000AEA34();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      v10 = v11;
    }

    if (*(v5 + *(v10 + 28)) != 4)
    {
      v13 = *(v5 + *(v10 + 28));
      sub_1000AE740();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_10009874C(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100098530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100418D10, &qword_10036D880);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D10, &qword_10036D880);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t sub_10009874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418DB8, &qword_10036D928);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_100418DB8, &qword_10036D928);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418DB8, &qword_10036D928);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  sub_1000A5BD8(&qword_1004195A8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
}

uint64_t sub_1000989B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  *(a2 + a1[6]) = 13;
  *(a2 + v6) = 4;
  v7 = a1[8];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_100098ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2A0, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100098B5C(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004195C0, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100098BC8()
{
  sub_1000A5BD8(&qword_1004195C0, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

  return Message.hash(into:)();
}

uint64_t sub_100098C6C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F70);
  sub_100005DF0(v0, qword_100432F70);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ios_absolute_sec";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mach_absolute_sec";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mach_continuous_sec";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100098FAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_100099004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C298, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000990A4(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004195D8, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100099110()
{
  sub_1000A5BD8(&qword_1004195D8, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  return Message.hash(into:)();
}

uint64_t sub_1000991B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F88);
  sub_100005DF0(v0, qword_100432F88);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "received_timestamp";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "meas_report";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sv_info";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "rx_band_corrections";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "time_conversion";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "meas_applicability_time_mach_continuous_sec";
  *(v17 + 1) = 43;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "meas_applicability_time_uncertainty_sec";
  *(v19 + 1) = 39;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "klobuchar_model";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "apc_sv_offset";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100099580()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo) = &_swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections) = &_swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  result = (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset) = &_swiftEmptyArrayStorage;
  qword_1004371A8 = v3;
  return result;
}

uint64_t sub_10009973C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v62 = &v54 - v5;
  v6 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v61 = &v54 - v8;
  v9 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v56 = &v54 - v11;
  v12 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v54 - v14;
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v55 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo) = &_swiftEmptyArrayStorage;
  v21 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections) = &_swiftEmptyArrayStorage;
  v22 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v57 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  v58 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v59 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v60 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset) = &_swiftEmptyArrayStorage;
  v28 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v28, v15, &qword_100418DC0, &qword_10036D930);
  swift_beginAccess();
  sub_10000AD64(v15, v1 + v16, &qword_100418DC0, &qword_10036D930);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v30 = v56;
  sub_10000A0A4(a1 + v29, v56, &qword_100418DC8, &qword_10036D938);
  v31 = v55;
  swift_beginAccess();
  sub_10000AD64(v30, v1 + v31, &qword_100418DC8, &qword_10036D938);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v33 = *(a1 + v32);
  swift_beginAccess();
  v34 = *(v1 + v20);
  *(v1 + v20) = v33;

  v35 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v36 = *(a1 + v35);
  swift_beginAccess();
  v37 = *(v1 + v21);
  *(v1 + v21) = v36;

  v38 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v39 = v61;
  sub_10000A0A4(a1 + v38, v61, &qword_100418DD0, &qword_10036D940);
  v40 = v57;
  swift_beginAccess();
  sub_10000AD64(v39, v1 + v40, &qword_100418DD0, &qword_10036D940);
  swift_endAccess();
  v41 = (a1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  swift_beginAccess();
  *v24 = v42;
  *(v24 + 8) = v41;
  v43 = (a1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v58;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v43;
  v46 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  v47 = v62;
  sub_10000A0A4(a1 + v46, v62, &qword_100418DD8, &qword_10036D948);
  v48 = v59;
  swift_beginAccess();
  sub_10000AD64(v47, v1 + v48, &qword_100418DD8, &qword_10036D948);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  swift_beginAccess();
  v50 = *(a1 + v49);

  v51 = v60;
  swift_beginAccess();
  v52 = *(v1 + v51);
  *(v1 + v51) = v50;

  return v1;
}

uint64_t sub_100099DA4()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp, &qword_100418DC0, &qword_10036D930);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport, &qword_100418DC8, &qword_10036D938);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo);

  v2 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion, &qword_100418DD0, &qword_10036D940);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel, &qword_100418DD8, &qword_10036D948);
  v3 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_100099EA8()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10009973C(v6);
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
        if (result <= 2)
        {
          if (result == 1)
          {
            v16 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp;
            v18 = &qword_1004195D8;
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_28;
            }

            v16 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport;
            v18 = &qword_1004193E0;
          }

          goto LABEL_26;
        }

        v13 = v1;
        if (result == 3)
        {
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo;
          v15 = &qword_100419458;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections;
          v15 = &qword_100419470;
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            v16 = v1;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo;
            v18 = &qword_100419578;
LABEL_26:
            sub_1000A5BD8(v18, v17);
            v1 = v16;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_27;
          }

LABEL_23:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_27;
        }

        if (result == 7)
        {
          goto LABEL_23;
        }

        if (result == 8)
        {
          v16 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
          v17 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters;
          v18 = &qword_100419590;
          goto LABEL_26;
        }

        if (result != 9)
        {
          goto LABEL_28;
        }

        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset;
        v15 = &qword_1004195C0;
      }

      sub_1000A5BD8(v15, v14);
      v1 = v13;
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_27:
      swift_endAccess();
LABEL_28:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10009A320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  result = sub_10009A660(v8, a1, a2, a3);
  if (!v4)
  {
    sub_10009A888(v8, a1, a2, a3);
    v10 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
    swift_beginAccess();
    if (*(*(v8 + v10) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0);
      sub_1000A5BD8(&qword_100419458, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
    swift_beginAccess();
    if (*(*(v8 + v11) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
      sub_1000A5BD8(&qword_100419470, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    sub_10009AAB0(v8, a1, a2, a3);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec);
    sub_10009AD68(v8, a1, a2, a3);
    v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
    swift_beginAccess();
    if (*(*(v8 + v12) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
      sub_1000A5BD8(&qword_1004195C0, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10009A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418DC0, &qword_10036D930);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418DC0, &qword_10036D930);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  sub_1000A5BD8(&qword_1004195D8, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
}

uint64_t sub_10009A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418DC8, &qword_10036D938);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418DC8, &qword_10036D938);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  sub_1000A5BD8(&qword_1004193E0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
}

uint64_t sub_10009AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418DD0, &qword_10036D940);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418DD0, &qword_10036D940);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  sub_1000A5BD8(&qword_100419578, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
}

uint64_t sub_10009ACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10009AD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418DD8, &qword_10036D948);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418DD8, &qword_10036D948);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  sub_1000A5BD8(&qword_100419590, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
}

uint64_t sub_10009AFD4(uint64_t a1, uint64_t a2)
{
  v170 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v148 = *(v3 - 8);
  v149 = v3;
  v4 = *(v148 + 64);
  __chkstk_darwin(v3);
  v146 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_100024A2C(&qword_10041C480, &qword_100373C70);
  v6 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v150 = &v146 - v7;
  v8 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v152 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v166 = &v146 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v155 = *(v13 - 8);
  v156 = v13;
  v14 = *(v155 + 64);
  __chkstk_darwin(v13);
  v151 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100024A2C(&qword_10041C488, &qword_100373C78);
  v16 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v157 = &v146 - v17;
  v18 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v153 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v158 = &v146 - v22;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v163 = *(v23 - 8);
  v164 = v23;
  v24 = *(v163 + 64);
  __chkstk_darwin(v23);
  v159 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_100024A2C(&qword_10041C490, &qword_100373C80);
  v26 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v165 = &v146 - v27;
  v28 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v161 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v167 = &v146 - v32;
  v168 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v33 = *(v168 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v168);
  v160 = &v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100024A2C(&qword_10041C498, &qword_100373C88);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v40 = &v146 - v39;
  v41 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v169 = &v146 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v146 - v45;
  v47 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  v48 = a1 + v47;
  v49 = a1;
  sub_10000A0A4(v48, v46, &qword_100418DC0, &qword_10036D930);
  v50 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v51 = v170;
  swift_beginAccess();
  v52 = *(v37 + 56);
  sub_10000A0A4(v46, v40, &qword_100418DC0, &qword_10036D930);
  v53 = v51;
  v54 = v168;
  v55 = v53 + v50;
  v56 = v53;
  sub_10000A0A4(v55, &v40[v52], &qword_100418DC0, &qword_10036D930);
  v57 = *(v33 + 48);
  if (v57(v40, 1, v54) == 1)
  {

    sub_1000059A8(v46, &qword_100418DC0, &qword_10036D930);
    v58 = v56;
    v59 = v49;
    if (v57(&v40[v52], 1, v54) == 1)
    {
      sub_1000059A8(v40, &qword_100418DC0, &qword_10036D930);
      goto LABEL_8;
    }

LABEL_6:
    v60 = &qword_10041C498;
    v61 = &qword_100373C88;
    v62 = v40;
LABEL_15:
    sub_1000059A8(v62, v60, v61);
    goto LABEL_16;
  }

  v59 = v49;
  sub_10000A0A4(v40, v169, &qword_100418DC0, &qword_10036D930);
  if (v57(&v40[v52], 1, v54) == 1)
  {

    sub_1000059A8(v46, &qword_100418DC0, &qword_10036D930);
    sub_10009E7F4(v169, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    goto LABEL_6;
  }

  v63 = v160;
  sub_10009E724(&v40[v52], v160, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  v64 = v169;
  v65 = sub_1000A4108(v169, v63, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  sub_10009E7F4(v63, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  sub_1000059A8(v46, &qword_100418DC0, &qword_10036D930);
  v66 = v64;
  v58 = v56;
  sub_10009E7F4(v66, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  sub_1000059A8(v40, &qword_100418DC0, &qword_10036D930);
  if ((v65 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v67 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v68 = v167;
  sub_10000A0A4(v59 + v67, v167, &qword_100418DC8, &qword_10036D938);
  v69 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v70 = *(v162 + 48);
  v71 = v165;
  sub_10000A0A4(v68, v165, &qword_100418DC8, &qword_10036D938);
  v72 = v58 + v69;
  v73 = v71;
  sub_10000A0A4(v72, v71 + v70, &qword_100418DC8, &qword_10036D938);
  v74 = *(v163 + 48);
  v75 = v71;
  v76 = v164;
  if (v74(v75, 1, v164) == 1)
  {
    sub_1000059A8(v68, &qword_100418DC8, &qword_10036D938);
    v77 = v74(v73 + v70, 1, v76);
    v78 = v166;
    if (v77 == 1)
    {
      sub_1000059A8(v73, &qword_100418DC8, &qword_10036D938);
      goto LABEL_21;
    }

LABEL_13:
    v60 = &qword_10041C490;
    v61 = &qword_100373C80;
LABEL_14:
    v62 = v73;
    goto LABEL_15;
  }

  v79 = v161;
  sub_10000A0A4(v73, v161, &qword_100418DC8, &qword_10036D938);
  v80 = v74(v73 + v70, 1, v76);
  v78 = v166;
  if (v80 == 1)
  {
    sub_1000059A8(v68, &qword_100418DC8, &qword_10036D938);
    sub_10009E7F4(v79, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    goto LABEL_13;
  }

  v83 = v159;
  sub_10009E724(v73 + v70, v159, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  v84 = *(v76 + 20);
  v85 = *(v79 + v84);
  v86 = *(v83 + v84);
  if (v85 != v86)
  {

    v87 = sub_10008633C(v85, v86);

    if ((v87 & 1) == 0)
    {
      v109 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport;
      sub_10009E7F4(v83, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
      v110 = &qword_100418DC8;
      v111 = &qword_10036D938;
      sub_1000059A8(v167, &qword_100418DC8, &qword_10036D938);
      v112 = v161;
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v88 = v161;
  v89 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10009E7F4(v83, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  sub_1000059A8(v167, &qword_100418DC8, &qword_10036D938);
  sub_10009E7F4(v88, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  sub_1000059A8(v73, &qword_100418DC8, &qword_10036D938);
  if ((v89 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v90 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v91 = *(v59 + v90);
  v92 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v93 = *(v58 + v92);

  v94 = sub_10009DB60(v91, v93, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, sub_10008A440);

  if ((v94 & 1) == 0)
  {
    goto LABEL_16;
  }

  v95 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v96 = *(v59 + v95);
  v97 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v98 = *(v58 + v97);

  v99 = sub_10009DDC0(v96, v98);

  if ((v99 & 1) == 0)
  {
    goto LABEL_16;
  }

  v100 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v101 = v158;
  sub_10000A0A4(v59 + v100, v158, &qword_100418DD0, &qword_10036D940);
  v102 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v103 = *(v154 + 48);
  v104 = v157;
  sub_10000A0A4(v101, v157, &qword_100418DD0, &qword_10036D940);
  v105 = v58 + v102;
  v73 = v104;
  sub_10000A0A4(v105, v104 + v103, &qword_100418DD0, &qword_10036D940);
  v106 = *(v155 + 48);
  v107 = v104;
  v108 = v156;
  if (v106(v107, 1, v156) != 1)
  {
    v113 = v153;
    sub_10000A0A4(v73, v153, &qword_100418DD0, &qword_10036D940);
    if (v106(v73 + v103, 1, v108) == 1)
    {
      sub_1000059A8(v158, &qword_100418DD0, &qword_10036D940);
      sub_10009E7F4(v113, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      goto LABEL_30;
    }

    v114 = v108;
    v115 = v151;
    sub_10009E724(v73 + v103, v151, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    v116 = *(v114 + 20);
    v117 = *(v113 + v116);
    v118 = *(v115 + v116);
    if (v117 == v118 || (, , v119 = sub_1000956B4(v117, v118), , , v119))
    {
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v120 = v153;
      v121 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10009E7F4(v115, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      sub_1000059A8(v158, &qword_100418DD0, &qword_10036D940);
      sub_10009E7F4(v120, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      sub_1000059A8(v73, &qword_100418DD0, &qword_10036D940);
      if ((v121 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

    v109 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo;
    sub_10009E7F4(v115, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    v110 = &qword_100418DD0;
    v111 = &qword_10036D940;
    sub_1000059A8(v158, &qword_100418DD0, &qword_10036D940);
    v112 = v153;
LABEL_27:
    sub_10009E7F4(v112, v109);
    v62 = v73;
    v60 = v110;
    v61 = v111;
    goto LABEL_15;
  }

  sub_1000059A8(v101, &qword_100418DD0, &qword_10036D940);
  if (v106(v73 + v103, 1, v108) != 1)
  {
LABEL_30:
    v60 = &qword_10041C488;
    v61 = &qword_100373C78;
    goto LABEL_14;
  }

  sub_1000059A8(v73, &qword_100418DD0, &qword_10036D940);
LABEL_34:
  v122 = v59 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  v123 = *v122;
  v124 = *(v122 + 8);
  v125 = v58 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  v126 = *(v125 + 8);
  if (v124)
  {
    v127 = v152;
    if ((*(v125 + 8) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v127 = v152;
    if ((*(v125 + 8) & 1) != 0 || v123 != *v125)
    {
      goto LABEL_16;
    }
  }

  v128 = v59 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  v129 = *v128;
  v130 = *(v128 + 8);
  v131 = v58 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  v132 = *(v131 + 8);
  if (v130)
  {
    if ((*(v131 + 8) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v131 + 8) & 1) != 0 || v129 != *v131)
  {
    goto LABEL_16;
  }

  v133 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000A0A4(v59 + v133, v78, &qword_100418DD8, &qword_10036D948);
  v134 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  v135 = *(v147 + 48);
  v136 = v150;
  sub_10000A0A4(v78, v150, &qword_100418DD8, &qword_10036D948);
  sub_10000A0A4(v58 + v134, v136 + v135, &qword_100418DD8, &qword_10036D948);
  v137 = v149;
  v138 = *(v148 + 48);
  if (v138(v136, 1, v149) == 1)
  {
    sub_1000059A8(v78, &qword_100418DD8, &qword_10036D948);
    if (v138(v136 + v135, 1, v137) == 1)
    {
      sub_1000059A8(v136, &qword_100418DD8, &qword_10036D948);
LABEL_52:
      v142 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
      swift_beginAccess();
      v143 = *(v59 + v142);
      v144 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
      swift_beginAccess();
      v145 = *(v58 + v144);

      v81 = sub_10009E0C4(v143, v145);

      return v81 & 1;
    }

    goto LABEL_50;
  }

  sub_10000A0A4(v136, v127, &qword_100418DD8, &qword_10036D948);
  if (v138(v136 + v135, 1, v137) == 1)
  {
    sub_1000059A8(v78, &qword_100418DD8, &qword_10036D948);
    sub_10009E7F4(v127, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
LABEL_50:
    v60 = &qword_10041C480;
    v61 = &qword_100373C70;
    v62 = v136;
    goto LABEL_15;
  }

  v139 = v136 + v135;
  v140 = v146;
  sub_10009E724(v139, v146, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  v141 = sub_1000A05C0(v127, v140);
  sub_10009E7F4(v140, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  sub_1000059A8(v78, &qword_100418DD8, &qword_10036D948);
  sub_10009E7F4(v127, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  sub_1000059A8(v136, &qword_100418DD8, &qword_10036D948);
  if (v141)
  {
    goto LABEL_52;
  }

LABEL_16:

  v81 = 0;
  return v81 & 1;
}

Swift::Int sub_10009C300(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000A5BD8(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10009C3AC@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_10009C458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C290, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009C4F8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004195F0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009C564()
{
  sub_1000A5BD8(&qword_1004195F0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);

  return Message.hash(into:)();
}

uint64_t sub_10009C5E0(uint64_t result, uint64_t a2)
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
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009C63C(uint64_t a1, uint64_t a2)
{
  v105 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v4 = *(v105 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v105);
  v99 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v100 = &v92 - v9;
  v10 = sub_100024A2C(&qword_10041C4C0, &qword_100373CB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v92 - v12;
  v106 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v14 = *(v106 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v106);
  v101 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v102 = &v92 - v19;
  v20 = sub_100024A2C(&qword_10041C4C8, &qword_100373CB8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v92 - v22;
  v108 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v24 = *(*(v108 - 1) + 64);
  v25 = __chkstk_darwin(v108);
  v109 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v92 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_71:
    v87 = 0;
    return v87 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v87 = 1;
    return v87 & 1;
  }

  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v97 = v13;
  v98 = (v14 + 48);
  v33 = a2 + v31;
  v95 = (v4 + 48);
  v96 = v10;
  v93 = *(v27 + 72);
  v94 = v23;
  v34 = v106;
  v92 = v20;
  v107 = &v92 - v28;
  while (1)
  {
    v104 = v32;
    v35 = v29;
    result = sub_10009E78C(v32, v29, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    if (!v30)
    {
      break;
    }

    v37 = v109;
    v103 = v33;
    sub_10009E78C(v33, v109, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    v38 = v108[5];
    v39 = *(v20 + 48);
    sub_10000A0A4(&v35[v38], v23, &qword_100418CF0, &qword_10036D860);
    sub_10000A0A4(v37 + v38, &v23[v39], &qword_100418CF0, &qword_10036D860);
    v40 = *v98;
    if ((*v98)(v23, 1, v34) == 1)
    {
      if (v40(&v23[v39], 1, v34) != 1)
      {
        goto LABEL_64;
      }

      sub_1000059A8(v23, &qword_100418CF0, &qword_10036D860);
      v41 = v97;
    }

    else
    {
      v42 = v102;
      sub_10000A0A4(v23, v102, &qword_100418CF0, &qword_10036D860);
      if (v40(&v23[v39], 1, v34) == 1)
      {
        sub_10009E7F4(v42, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
LABEL_64:
        v89 = &qword_10041C4C8;
        v90 = &qword_100373CB8;
LABEL_65:
        v91 = v23;
        goto LABEL_69;
      }

      v43 = v101;
      sub_10009E724(&v23[v39], v101, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      v44 = v34[5];
      v45 = (v42 + v44);
      v46 = *(v42 + v44 + 8);
      v47 = (v43 + v44);
      v48 = *(v43 + v44 + 8);
      if (v46)
      {
        v41 = v97;
        if (!v48)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (*v45 != *v47)
        {
          LOBYTE(v48) = 1;
        }

        v41 = v97;
        if (v48)
        {
LABEL_61:
          sub_10009E7F4(v43, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
          sub_10009E7F4(v42, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
          v89 = &qword_100418CF0;
          v90 = &qword_10036D860;
          goto LABEL_65;
        }
      }

      v49 = v34[6];
      v50 = (v42 + v49);
      v51 = *(v42 + v49 + 8);
      v52 = (v43 + v49);
      v53 = *(v43 + v49 + 8);
      if (v51)
      {
        if (!v53)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (*v50 != *v52)
        {
          LOBYTE(v53) = 1;
        }

        if (v53)
        {
          goto LABEL_61;
        }
      }

      v54 = v34[7];
      v55 = *(v42 + v54);
      v56 = *(v43 + v54);
      if (v55 == 2)
      {
        if (v56 != 2)
        {
          goto LABEL_61;
        }
      }

      else if (v56 == 2 || ((v55 ^ v56) & 1) != 0)
      {
        goto LABEL_61;
      }

      type metadata accessor for UnknownStorage();
      v57 = v42;
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10009E7F4(v43, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      sub_10009E7F4(v57, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      sub_1000059A8(v23, &qword_100418CF0, &qword_10036D860);
      if ((v58 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v59 = v108[6];
    v60 = *(v96 + 48);
    sub_10000A0A4(&v107[v59], v41, &qword_100418CF8, &qword_10036D868);
    sub_10000A0A4(v109 + v59, v41 + v60, &qword_100418CF8, &qword_10036D868);
    v61 = *v95;
    v62 = v105;
    if ((*v95)(v41, 1, v105) == 1)
    {
      if (v61(v41 + v60, 1, v62) != 1)
      {
        goto LABEL_67;
      }

      sub_1000059A8(v41, &qword_100418CF8, &qword_10036D868);
      v34 = v106;
      v23 = v94;
    }

    else
    {
      v63 = v100;
      sub_10000A0A4(v41, v100, &qword_100418CF8, &qword_10036D868);
      if (v61(v41 + v60, 1, v62) == 1)
      {
        sub_10009E7F4(v63, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
LABEL_67:
        v89 = &qword_10041C4C0;
        v90 = &qword_100373CB0;
LABEL_68:
        v91 = v41;
LABEL_69:
        sub_1000059A8(v91, v89, v90);
LABEL_70:
        sub_10009E7F4(v109, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
        sub_10009E7F4(v107, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
        goto LABEL_71;
      }

      v64 = v99;
      sub_10009E724(v41 + v60, v99, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      v65 = v62[5];
      v66 = (v63 + v65);
      v67 = *(v63 + v65 + 8);
      v68 = (v64 + v65);
      v69 = *(v64 + v65 + 8);
      if (v67)
      {
        v34 = v106;
        v23 = v94;
        if (!v69)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (*v66 != *v68)
        {
          LOBYTE(v69) = 1;
        }

        v34 = v106;
        v23 = v94;
        if (v69)
        {
LABEL_62:
          sub_10009E7F4(v64, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
          sub_10009E7F4(v63, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
          v89 = &qword_100418CF8;
          v90 = &qword_10036D868;
          goto LABEL_68;
        }
      }

      v70 = v62[6];
      v71 = (v63 + v70);
      v72 = *(v63 + v70 + 8);
      v73 = (v64 + v70);
      v74 = *(v64 + v70 + 8);
      if (v72)
      {
        if (!v74)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (*v71 != *v73)
        {
          LOBYTE(v74) = 1;
        }

        if (v74)
        {
          goto LABEL_62;
        }
      }

      v75 = v62[7];
      v76 = *(v63 + v75);
      v77 = *(v64 + v75);
      if (v76 == 2)
      {
        if (v77 != 2)
        {
          goto LABEL_62;
        }
      }

      else if (v77 == 2 || ((v76 ^ v77) & 1) != 0)
      {
        goto LABEL_62;
      }

      type metadata accessor for UnknownStorage();
      v78 = v63;
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v79 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10009E7F4(v64, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      sub_10009E7F4(v78, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      sub_1000059A8(v41, &qword_100418CF8, &qword_10036D868);
      if ((v79 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v80 = v108[7];
    v81 = &v107[v80];
    v82 = v107[v80 + 4];
    v83 = (v109 + v80);
    v84 = *(v109 + v80 + 4);
    if (v82)
    {
      if (!v84)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (*v81 != *v83)
      {
        LOBYTE(v84) = 1;
      }

      if (v84)
      {
        goto LABEL_70;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v85 = v107;
    v86 = v109;
    v87 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10009E7F4(v86, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    sub_10009E7F4(v85, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    if (v87)
    {
      v20 = v92;
      v33 = v103 + v93;
      v32 = v104 + v93;
      v88 = v30-- == 1;
      v29 = v107;
      if (!v88)
      {
        continue;
      }
    }

    return v87 & 1;
  }

  __break(1u);
  return result;
}