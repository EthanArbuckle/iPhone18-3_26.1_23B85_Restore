uint64_t sub_100276788()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10027CE60(v6);

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
          type metadata accessor for Proto_Gnss_Time(0);
          v14 = type metadata accessor for Proto_Gnss_Time;
          v15 = &qword_10042AD70;
          goto LABEL_7;
        }

        if (result == 2)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Position(0);
          v14 = type metadata accessor for Proto_Gnss_Position;
          v15 = &qword_10042AD40;
LABEL_7:
          sub_10027EC04(v15, v14);
          v1 = v13;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
          swift_endAccess();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Velocity(0);
            v14 = type metadata accessor for Proto_Gnss_Velocity;
            v15 = &qword_10042AD58;
            goto LABEL_7;
          case 4:
            swift_beginAccess();
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            goto LABEL_8;
          case 5:
            swift_beginAccess();
            sub_100281978();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            goto LABEL_8;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100276A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  result = sub_100276BF0(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100276E0C(v8, a1, a2, a3);
    sub_100277028(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
    swift_beginAccess();
    if (*(v8 + v12) != 5)
    {
      sub_100281978();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100276BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Time(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042AAE0, &qword_100390F20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042AAE0, &qword_100390F20);
  }

  sub_10027D278(v8, v13, type metadata accessor for Proto_Gnss_Time);
  sub_10027EC04(&qword_10042AD70, type metadata accessor for Proto_Gnss_Time);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10027D348(v13, type metadata accessor for Proto_Gnss_Time);
}

uint64_t sub_100276E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Position(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042AAE8, &qword_100390F28);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042AAE8, &qword_100390F28);
  }

  sub_10027D278(v8, v13, type metadata accessor for Proto_Gnss_Position);
  sub_10027EC04(&qword_10042AD40, type metadata accessor for Proto_Gnss_Position);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10027D348(v13, type metadata accessor for Proto_Gnss_Position);
}

uint64_t sub_100277028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042AAF0, &qword_100390F30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Velocity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042AAF0, &qword_100390F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042AAF0, &qword_100390F30);
  }

  sub_10027D278(v8, v13, type metadata accessor for Proto_Gnss_Velocity);
  sub_10027EC04(&qword_10042AD58, type metadata accessor for Proto_Gnss_Velocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10027D348(v13, type metadata accessor for Proto_Gnss_Velocity);
}

BOOL sub_100277288(uint64_t a1, uint64_t a2)
{
  v87 = type metadata accessor for Proto_Gnss_Velocity(0);
  v86 = *(v87 - 8);
  v4 = *(v86 + 64);
  __chkstk_darwin(v87);
  v83 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100024A2C(&qword_10042B8B8, &qword_100393358);
  v6 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v88 = &v83 - v7;
  v8 = sub_100024A2C(&qword_10042AAF0, &qword_100390F30);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v96 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = &v83 - v12;
  v93 = type metadata accessor for Proto_Gnss_Position(0);
  v92 = *(v93 - 8);
  v13 = *(v92 + 64);
  __chkstk_darwin(v93);
  v84 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100024A2C(&qword_10042B8C0, &unk_100393360);
  v15 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v94 = &v83 - v16;
  v17 = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v89 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v98 = &v83 - v21;
  v99 = type metadata accessor for Proto_Gnss_Time(0);
  v22 = *(v99 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v99);
  v90 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100024A2C(&qword_10042B8B0, &qword_100393350);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = &v83 - v28;
  v30 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v97 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v83 - v34;
  v36 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  sub_10000A0A4(a1 + v36, v35, &qword_10042AAE0, &qword_100390F20);
  v37 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  v38 = *(v26 + 56);
  sub_10000A0A4(v35, v29, &qword_10042AAE0, &qword_100390F20);
  v39 = a2 + v37;
  v40 = a2;
  v41 = v99;
  sub_10000A0A4(v39, &v29[v38], &qword_10042AAE0, &qword_100390F20);
  v42 = *(v22 + 48);
  if (v42(v29, 1, v41) == 1)
  {

    sub_1000059A8(v35, &qword_10042AAE0, &qword_100390F20);
    if (v42(&v29[v38], 1, v41) == 1)
    {
      sub_1000059A8(v29, &qword_10042AAE0, &qword_100390F20);
      goto LABEL_8;
    }

LABEL_6:
    v44 = &qword_10042B8B0;
    v45 = &qword_100393350;
    v46 = v29;
LABEL_21:
    sub_1000059A8(v46, v44, v45);
    goto LABEL_22;
  }

  v43 = v97;
  sub_10000A0A4(v29, v97, &qword_10042AAE0, &qword_100390F20);
  if (v42(&v29[v38], 1, v41) == 1)
  {

    sub_1000059A8(v35, &qword_10042AAE0, &qword_100390F20);
    sub_10027D348(v43, type metadata accessor for Proto_Gnss_Time);
    goto LABEL_6;
  }

  v47 = v90;
  sub_10027D278(&v29[v38], v90, type metadata accessor for Proto_Gnss_Time);

  v48 = sub_10027E5A8(v43, v47);
  sub_10027D348(v47, type metadata accessor for Proto_Gnss_Time);
  sub_1000059A8(v35, &qword_10042AAE0, &qword_100390F20);
  sub_10027D348(v43, type metadata accessor for Proto_Gnss_Time);
  sub_1000059A8(v29, &qword_10042AAE0, &qword_100390F20);
  if ((v48 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v49 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  v50 = v98;
  sub_10000A0A4(a1 + v49, v98, &qword_10042AAE8, &qword_100390F28);
  v51 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  v52 = *(v91 + 48);
  v53 = v94;
  sub_10000A0A4(v50, v94, &qword_10042AAE8, &qword_100390F28);
  sub_10000A0A4(v40 + v51, v53 + v52, &qword_10042AAE8, &qword_100390F28);
  v54 = *(v92 + 48);
  v55 = v93;
  if (v54(v53, 1, v93) == 1)
  {
    sub_1000059A8(v50, &qword_10042AAE8, &qword_100390F28);
    v56 = v54(v53 + v52, 1, v55);
    v57 = v96;
    v58 = v95;
    if (v56 == 1)
    {
      sub_1000059A8(v53, &qword_10042AAE8, &qword_100390F28);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v59 = v89;
  sub_10000A0A4(v53, v89, &qword_10042AAE8, &qword_100390F28);
  v60 = v54(v53 + v52, 1, v55);
  v57 = v96;
  v58 = v95;
  if (v60 == 1)
  {
    sub_1000059A8(v98, &qword_10042AAE8, &qword_100390F28);
    sub_10027D348(v59, type metadata accessor for Proto_Gnss_Position);
LABEL_13:
    v44 = &qword_10042B8C0;
    v45 = &unk_100393360;
    v46 = v53;
    goto LABEL_21;
  }

  v61 = v53 + v52;
  v62 = v84;
  sub_10027D278(v61, v84, type metadata accessor for Proto_Gnss_Position);
  v63 = sub_10027E900(v59, v62);
  sub_10027D348(v62, type metadata accessor for Proto_Gnss_Position);
  sub_1000059A8(v98, &qword_10042AAE8, &qword_100390F28);
  sub_10027D348(v59, type metadata accessor for Proto_Gnss_Position);
  sub_1000059A8(v53, &qword_10042AAE8, &qword_100390F28);
  if ((v63 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v64 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  sub_10000A0A4(a1 + v64, v58, &qword_10042AAF0, &qword_100390F30);
  v65 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  v66 = *(v85 + 48);
  v67 = v88;
  sub_10000A0A4(v58, v88, &qword_10042AAF0, &qword_100390F30);
  sub_10000A0A4(v40 + v65, v67 + v66, &qword_10042AAF0, &qword_100390F30);
  v68 = *(v86 + 48);
  v69 = v87;
  if (v68(v67, 1, v87) == 1)
  {
    sub_1000059A8(v58, &qword_10042AAF0, &qword_100390F30);
    if (v68(v67 + v66, 1, v69) == 1)
    {
      sub_1000059A8(v67, &qword_10042AAF0, &qword_100390F30);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  sub_10000A0A4(v67, v57, &qword_10042AAF0, &qword_100390F30);
  if (v68(v67 + v66, 1, v69) == 1)
  {
    sub_1000059A8(v58, &qword_10042AAF0, &qword_100390F30);
    sub_10027D348(v57, type metadata accessor for Proto_Gnss_Velocity);
LABEL_20:
    v44 = &qword_10042B8B8;
    v45 = &qword_100393358;
    v46 = v67;
    goto LABEL_21;
  }

  v71 = v67 + v66;
  v72 = v83;
  sub_10027D278(v71, v83, type metadata accessor for Proto_Gnss_Velocity);
  v73 = sub_10027E244(v57, v72);
  sub_10027D348(v72, type metadata accessor for Proto_Gnss_Velocity);
  sub_1000059A8(v58, &qword_10042AAF0, &qword_100390F30);
  sub_10027D348(v57, type metadata accessor for Proto_Gnss_Velocity);
  sub_1000059A8(v67, &qword_10042AAF0, &qword_100390F30);
  if ((v73 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v74 = (a1 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags);
  swift_beginAccess();
  v75 = *v74;
  v76 = *(v74 + 8);
  v77 = v40 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags;
  swift_beginAccess();
  v78 = *(v77 + 8);
  if (v76)
  {
    if (*(v77 + 8))
    {
      goto LABEL_31;
    }

LABEL_22:

    return 0;
  }

  if ((*(v77 + 8) & 1) != 0 || v75 != *v77)
  {
    goto LABEL_22;
  }

LABEL_31:
  v79 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  v80 = *(a1 + v79);

  v81 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  v82 = *(v40 + v81);

  if (v80 == 5)
  {
    return v82 == 5;
  }

  result = 0;
  if (v82 != 5 && v80 == v82)
  {
    return 1;
  }

  return result;
}

uint64_t sub_100277F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027EC04(&qword_10042B830, type metadata accessor for Proto_Gnss_Fix);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100278010(uint64_t a1)
{
  v2 = sub_10027EC04(&qword_10042AD88, type metadata accessor for Proto_Gnss_Fix);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10027807C()
{
  sub_10027EC04(&qword_10042AD88, type metadata accessor for Proto_Gnss_Fix);

  return Message.hash(into:)();
}

uint64_t sub_100278120()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434C48);
  sub_100005DF0(v0, qword_100434C48);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "is_gps_week_valid";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "time";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "quality";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "constellations_used";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "baseband_system_time_ns";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "baseband_system_time_unc_ns";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10027843C()
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
        if (result == 4)
        {
          v7 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 32);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }

        else
        {
          if (result == 5)
          {
            v5 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 36);
          }

          else
          {
            if (result != 6)
            {
              goto LABEL_5;
            }

            v5 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 40);
          }

          v0 = v5;
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 20);
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 2:
            v8 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 24);
            type metadata accessor for Proto_Gnss_Time(0);
            sub_10027EC04(&qword_10042AD70, type metadata accessor for Proto_Gnss_Time);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 3:
            v4 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 28);
            sub_100281924();
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

uint64_t sub_100278634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
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

  sub_1002787A0(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 28)) != 7)
  {
    v13 = *(v5 + *(v10 + 28));
    sub_100281924();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v11 = (v5 + *(v10 + 32));
  if ((v11[1] & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1002789B0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_TimeTransferData);
  sub_100278A2C(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1002787A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Time(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10042AAE0, &qword_100390F20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042AAE0, &qword_100390F20);
  }

  sub_10027D278(v8, v13, type metadata accessor for Proto_Gnss_Time);
  sub_10027EC04(&qword_10042AD70, type metadata accessor for Proto_Gnss_Time);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10027D348(v13, type metadata accessor for Proto_Gnss_Time);
}

uint64_t sub_1002789B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100278A2C(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100278AF0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 2;
  v5 = type metadata accessor for Proto_Gnss_Time(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[8];
  *(a2 + a1[7]) = 7;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_100278BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027EC04(&qword_10042B828, type metadata accessor for Proto_Gnss_TimeTransferData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100278C74(uint64_t a1)
{
  v2 = sub_10027EC04(&qword_10042ADA0, type metadata accessor for Proto_Gnss_TimeTransferData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100278CE0()
{
  sub_10027EC04(&qword_10042ADA0, type metadata accessor for Proto_Gnss_TimeTransferData);

  return Message.hash(into:)();
}

uint64_t sub_100278D84()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434C60);
  sub_100005DF0(v0, qword_100434C60);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_mark_before_mach_abs_tick";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "time_mark_after_mach_abs_tick";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "current_mach_cont_minus_mach_abs_ns";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "time_mark_center_mach_abs_time_ns";
  *(v15 + 8) = 33;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10027906C()
{
  v0 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  v5 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs[0];
  *v10 = 0;
  *(v10 + 8) = 1;
  qword_10047B230 = v3;
  return result;
}

uint64_t sub_10027914C()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data, &qword_10042AAF8, &qword_100390F38);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1002791C0()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10027D408(v6);

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
          type metadata accessor for Proto_Gnss_TimeTransferData(0);
          sub_10027EC04(&qword_10042ADA0, type metadata accessor for Proto_Gnss_TimeTransferData);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_7;
        }

        if (result == 2)
        {
          goto LABEL_6;
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
LABEL_6:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
LABEL_7:
        swift_endAccess();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002793C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20));
  result = sub_100279598(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v16 = v8 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs[0];
    swift_beginAccess();
    if ((*(v16 + 8) & 1) == 0)
    {
      v17 = *v16;
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100279598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042AAF8, &qword_100390F38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042AAF8, &qword_100390F38);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042AAF8, &qword_100390F38);
  }

  sub_10027D278(v8, v13, type metadata accessor for Proto_Gnss_TimeTransferData);
  sub_10027EC04(&qword_10042ADA0, type metadata accessor for Proto_Gnss_TimeTransferData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10027D348(v13, type metadata accessor for Proto_Gnss_TimeTransferData);
}

uint64_t sub_1002797F8(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10042B8A8, &qword_100393348);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v12 = sub_100024A2C(&qword_10042AAF8, &qword_100390F38);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v51 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v18 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  v19 = a1 + v18;
  v20 = v52;
  sub_10000A0A4(v19, v17, &qword_10042AAF8, &qword_100390F38);
  v21 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  v22 = *(v8 + 56);
  sub_10000A0A4(v17, v11, &qword_10042AAF8, &qword_100390F38);
  sub_10000A0A4(v20 + v21, &v11[v22], &qword_10042AAF8, &qword_100390F38);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) == 1)
  {

    sub_1000059A8(v17, &qword_10042AAF8, &qword_100390F38);
    if (v23(&v11[v22], 1, v3) == 1)
    {
      sub_1000059A8(v11, &qword_10042AAF8, &qword_100390F38);
      goto LABEL_11;
    }

LABEL_6:
    sub_1000059A8(v11, &qword_10042B8A8, &qword_100393348);
    goto LABEL_7;
  }

  v24 = v51;
  sub_10000A0A4(v11, v51, &qword_10042AAF8, &qword_100390F38);
  if (v23(&v11[v22], 1, v3) == 1)
  {

    sub_1000059A8(v17, &qword_10042AAF8, &qword_100390F38);
    sub_10027D348(v24, type metadata accessor for Proto_Gnss_TimeTransferData);
    goto LABEL_6;
  }

  v26 = v50;
  sub_10027D278(&v11[v22], v50, type metadata accessor for Proto_Gnss_TimeTransferData);

  v27 = sub_10027DB60(v24, v26);
  sub_10027D348(v26, type metadata accessor for Proto_Gnss_TimeTransferData);
  sub_1000059A8(v17, &qword_10042AAF8, &qword_100390F38);
  sub_10027D348(v24, type metadata accessor for Proto_Gnss_TimeTransferData);
  sub_1000059A8(v11, &qword_10042AAF8, &qword_100390F38);
  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v28 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick);
  swift_beginAccess();
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = v20 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick;
  swift_beginAccess();
  v32 = *(v31 + 8);
  if (v30)
  {
    if ((*(v31 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v31 + 8) & 1) != 0 || v29 != *v31)
  {
    goto LABEL_7;
  }

  v33 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick);
  swift_beginAccess();
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = v20 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick;
  swift_beginAccess();
  v37 = *(v36 + 8);
  if (v35)
  {
    if ((*(v36 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v36 + 8) & 1) != 0 || v34 != *v36)
  {
    goto LABEL_7;
  }

  v38 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs);
  swift_beginAccess();
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = v20 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs;
  swift_beginAccess();
  v42 = *(v41 + 8);
  if (v40)
  {
    if (*(v41 + 8))
    {
      goto LABEL_26;
    }

LABEL_7:

    return 0;
  }

  if ((*(v41 + 8) & 1) != 0 || v39 != *v41)
  {
    goto LABEL_7;
  }

LABEL_26:
  v43 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs[0]);
  swift_beginAccess();
  v44 = *v43;
  v45 = *(v43 + 8);

  v46 = (v20 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs[0]);
  swift_beginAccess();
  v47 = *v46;
  v48 = *(v46 + 8);

  if (v45)
  {
    if (v48)
    {
      return 1;
    }
  }

  else
  {
    if (v44 == v47)
    {
      v49 = v48;
    }

    else
    {
      v49 = 1;
    }

    if ((v49 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100279E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027EC04(&qword_10042B820, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100279ED4(uint64_t a1)
{
  v2 = sub_10027EC04(&qword_10042ADB8, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100279F40()
{
  sub_10027EC04(&qword_10042ADB8, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);

  return Message.hash(into:)();
}

uint64_t sub_100279FE4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434C78);
  sub_100005DF0(v0, qword_100434C78);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mach_continuous_time_ns";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pressure";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10027A1FC()
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
      v1 = *(type metadata accessor for Proto_Gnss_RawPressureSample(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for Proto_Gnss_RawPressureSample(0) + 24);
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
    }
  }

  return result;
}

uint64_t sub_10027A2B8()
{
  result = type metadata accessor for Proto_Gnss_RawPressureSample(0);
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
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10027A3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027EC04(&qword_10042B818, type metadata accessor for Proto_Gnss_RawPressureSample);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10027A494(uint64_t a1)
{
  v2 = sub_10027EC04(&qword_10042ADD0, type metadata accessor for Proto_Gnss_RawPressureSample);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10027A500()
{
  sub_10027EC04(&qword_10042ADD0, type metadata accessor for Proto_Gnss_RawPressureSample);

  return Message.hash(into:)();
}

uint64_t sub_10027A5A4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434C90);
  sub_100005DF0(v0, qword_100434C90);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mach_continuous_time_ns";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
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

uint64_t sub_10027A848()
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
        v1 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 32);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t sub_10027A944()
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
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
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v8 = (v0 + v3[7]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v10 = (v0 + v3[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10027AAA0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  return result;
}

uint64_t sub_10027AB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027EC04(&qword_10042B810, type metadata accessor for Proto_Gnss_SensorSample3Axis);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10027ABD4(uint64_t a1)
{
  v2 = sub_10027EC04(&qword_10042ADE8, type metadata accessor for Proto_Gnss_SensorSample3Axis);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10027AC40()
{
  sub_10027EC04(&qword_10042ADE8, type metadata accessor for Proto_Gnss_SensorSample3Axis);

  return Message.hash(into:)();
}

uint64_t sub_10027ACEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434CA8);
  sub_100005DF0(v0, qword_100434CA8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "satellite_system";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "prn";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "glo_slot_number";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "glo_slot_source";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "glo_frequency_number";
  *(v14 + 8) = 20;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10027AFC4()
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
        v7 = *(type metadata accessor for Proto_Gnss_SvId(0) + 20);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for Proto_Gnss_SvId(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for Proto_Gnss_SvId(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for Proto_Gnss_SvId(0) + 32);
          goto LABEL_3;
        case 5:
          v4 = *(type metadata accessor for Proto_Gnss_SvId(0) + 36);
          dispatch thunk of Decoder.decodeSingularSInt32Field(value:)();
          break;
      }
    }
  }
}

uint64_t sub_10027B0F8()
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
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
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  v8 = (v0 + v3[7]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v10 = (v0 + v3[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10027B220(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10027B220(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10027B314(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027EC04(&qword_10042B808, type metadata accessor for Proto_Gnss_SvId);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10027B3B4(uint64_t a1)
{
  v2 = sub_10027EC04(&qword_10042AE00, type metadata accessor for Proto_Gnss_SvId);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10027B420()
{
  sub_10027EC04(&qword_10042AE00, type metadata accessor for Proto_Gnss_SvId);

  return Message.hash(into:)();
}

uint64_t sub_10027B4C4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434CC0);
  sub_100005DF0(v0, qword_100434CC0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "local_time";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "meas_interval_sec";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "active_interval_sec";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "avg_pwr_mw";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "status";
  *(v15 + 8) = 6;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10027B7A8()
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
          v8 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 20);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 32);
            goto LABEL_5;
          case 5:
            v5 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 36);
            sub_100281684();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10027B8E8()
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
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

  sub_10027BA10(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10027BA10(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    sub_100281684();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10027BB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027EC04(&qword_10042B800, type metadata accessor for Proto_Gnss_PwrMeasurement);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10027BBBC(uint64_t a1)
{
  v2 = sub_10027EC04(&qword_10042AE18, type metadata accessor for Proto_Gnss_PwrMeasurement);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10027BC28()
{
  sub_10027EC04(&qword_10042AE18, type metadata accessor for Proto_Gnss_PwrMeasurement);

  return Message.hash(into:)();
}

uint64_t sub_10027BCA4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434CD8);
  sub_100005DF0(v0, qword_100434CD8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PowerLoggingStatus_PROTOBUF_DEFAULT";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PowerLoggingStatus_kPowerNormal";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10027BF00()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434CF0);
  sub_100005DF0(v0, qword_100434CF0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "m_time_of_file_generation_in_seconds_since_gps_epoch";
  *(v6 + 8) = 52;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "m_is_data_integrity_valid";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10027C110()
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
      v1 = *(type metadata accessor for Proto_Gnss_DecodedRti(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for Proto_Gnss_DecodedRti(0) + 24);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t sub_10027C1CC()
{
  result = type metadata accessor for Proto_Gnss_DecodedRti(0);
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

  if (*(v0 + *(v3 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10027C2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_10027C34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027EC04(&qword_10042B7F8, type metadata accessor for Proto_Gnss_DecodedRti);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10027C3EC(uint64_t a1)
{
  v2 = sub_10027EC04(&qword_10042AE30, type metadata accessor for Proto_Gnss_DecodedRti);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10027C458()
{
  sub_10027EC04(&qword_10042AE30, type metadata accessor for Proto_Gnss_DecodedRti);

  return Message.hash(into:)();
}

uint64_t sub_10027C4FC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434D08);
  sub_100005DF0(v0, qword_100434D08);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "m_time_of_gps_data_start_in_seconds_since_gps_epoch";
  *(v6 + 8) = 51;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "m_is_data_integrity_valid";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "m_time_of_gps_data_end_in_seconds_since_gps_epoch";
  *(v12 + 1) = 49;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "assistance_file_type";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10027C78C()
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
          v4 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 32);
          sub_1000AE8E4();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 20);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v5 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 24);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10027C8C8()
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
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

  if (*(v0 + v3[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  v6 = (v0 + v3[7]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 7)
  {
    v8 = *(v0 + v3[8]);
    sub_1000AE8E4();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

Swift::Int sub_10027CA48(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_10027EC04(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10027CAD0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + v5) = 2;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a2 + v7) = 7;
  return result;
}

uint64_t sub_10027CB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027EC04(&qword_10042B7F0, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10027CBFC(uint64_t a1)
{
  v2 = sub_10027EC04(&qword_10042AE48, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10027CC68()
{
  sub_10027EC04(&qword_10042AE48, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);

  return Message.hash(into:)();
}

uint64_t sub_10027CCE4(unint64_t a1)
{
  if (a1 > 9)
  {
    return 10;
  }

  else
  {
    return byte_100393448[a1];
  }
}

unint64_t sub_10027CD04(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 5;
  }

  else
  {
    return 0x4030201uLL >> (8 * a1);
  }
}

uint64_t sub_10027CD24(uint64_t result)
{
  if (result > 24)
  {
    switch(result)
    {
      case 25:
        return 3;
      case 50:
        return 4;
      case 75:
        return 5;
    }
  }

  else
  {
    if (result < 2)
    {
      return result;
    }

    if (result == 10)
    {
      return 2;
    }
  }

  return 6;
}

unint64_t sub_10027CD80(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return 0x3020104uLL >> (8 * a1);
  }
}

uint64_t sub_10027CDA0(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return 8;
  }

  else
  {
    return asc_1003AD7B6[a1];
  }
}

uint64_t sub_10027CE60(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10042AAF0, &qword_100390F30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v31 = &v30 - v5;
  v6 = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v30 = &v30 - v8;
  v9 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  v14 = type metadata accessor for Proto_Gnss_Time(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  v16 = type metadata accessor for Proto_Gnss_Position(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  v18 = type metadata accessor for Proto_Gnss_Velocity(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology) = 5;
  v21 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  sub_10000A0A4(a1 + v21, v12, &qword_10042AAE0, &qword_100390F20);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v13, &qword_10042AAE0, &qword_100390F20);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  v23 = v30;
  sub_10000A0A4(a1 + v22, v30, &qword_10042AAE8, &qword_100390F28);
  swift_beginAccess();
  sub_10000AD64(v23, v1 + v15, &qword_10042AAE8, &qword_100390F28);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  v25 = v31;
  sub_10000A0A4(a1 + v24, v31, &qword_10042AAF0, &qword_100390F30);
  swift_beginAccess();
  sub_10000AD64(v25, v1 + v17, &qword_10042AAF0, &qword_100390F30);
  swift_endAccess();
  v26 = (a1 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags);
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  swift_beginAccess();
  *v19 = v27;
  *(v19 + 8) = v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v28);
  swift_beginAccess();
  *(v1 + v20) = a1;
  return v1;
}

uint64_t sub_10027D278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027D2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027D348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10027D408(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10042AAF8, &qword_100390F38);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23[-v5];
  v7 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  v8 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  sub_10000A0A4(a1 + v13, v6, &qword_10042AAF8, &qword_100390F38);
  swift_beginAccess();
  sub_10000AD64(v6, v1 + v7, &qword_10042AAF8, &qword_100390F38);
  swift_endAccess();
  v14 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick);
  swift_beginAccess();
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  swift_beginAccess();
  *v9 = v15;
  *(v9 + 8) = v14;
  v16 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick);
  swift_beginAccess();
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  swift_beginAccess();
  *v10 = v17;
  *(v10 + 8) = v16;
  v18 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs);
  swift_beginAccess();
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  swift_beginAccess();
  *v11 = v19;
  *(v11 + 8) = v18;
  v20 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs);
  swift_beginAccess();
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  swift_beginAccess();
  *v12 = v21;
  *(v12 + 8) = v20;
  return v1;
}

uint64_t sub_10027D778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_24;
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
      goto LABEL_24;
    }
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v12 == 2 || ((v11 ^ v12) & 1) != 0)
  {
    goto LABEL_24;
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      goto LABEL_24;
    }
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 7)
  {
    if (v20 == 7)
    {
      goto LABEL_23;
    }

LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  if (v20 == 7)
  {
    goto LABEL_24;
  }

  sub_1000A6374();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_23:
  type metadata accessor for UnknownStorage();
  sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t sub_10027D900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
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

  type metadata accessor for UnknownStorage();
  sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10027DA64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
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

  v10 = *(v4 + 24);
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

  type metadata accessor for UnknownStorage();
  sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10027DB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Time(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v47 - v11;
  v13 = sub_100024A2C(&qword_10042B8B0, &qword_100393350);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v17 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v18 = *(v17 + 20);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      goto LABEL_12;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    goto LABEL_12;
  }

  v21 = a1;
  v22 = a2;
  v23 = *(v17 + 24);
  v24 = *(v13 + 48);
  v47 = v21;
  v48 = v17;
  sub_10000A0A4(v21 + v23, v16, &qword_10042AAE0, &qword_100390F20);
  sub_10000A0A4(v22 + v23, &v16[v24], &qword_10042AAE0, &qword_100390F20);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v12, &qword_10042AAE0, &qword_100390F20);
    if (v25(&v16[v24], 1, v4) != 1)
    {
      sub_10027D278(&v16[v24], v8, type metadata accessor for Proto_Gnss_Time);
      v28 = sub_10027E5A8(v12, v8);
      sub_10027D348(v8, type metadata accessor for Proto_Gnss_Time);
      sub_10027D348(v12, type metadata accessor for Proto_Gnss_Time);
      sub_1000059A8(v16, &qword_10042AAE0, &qword_100390F20);
      if ((v28 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    sub_10027D348(v12, type metadata accessor for Proto_Gnss_Time);
LABEL_11:
    sub_1000059A8(v16, &qword_10042B8B0, &qword_100393350);
    goto LABEL_12;
  }

  if (v25(&v16[v24], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1000059A8(v16, &qword_10042AAE0, &qword_100390F20);
LABEL_15:
  v29 = v48[7];
  v30 = *(v47 + v29);
  v31 = *(v22 + v29);
  if (v30 == 7)
  {
    if (v31 != 7)
    {
      goto LABEL_12;
    }
  }

  else if (v30 != v31)
  {
    goto LABEL_12;
  }

  v32 = v48[8];
  v33 = (v47 + v32);
  v34 = *(v47 + v32 + 4);
  v35 = (v22 + v32);
  v36 = *(v22 + v32 + 4);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_12;
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
      goto LABEL_12;
    }
  }

  v37 = v48[9];
  v38 = (v47 + v37);
  v39 = *(v47 + v37 + 8);
  v40 = (v22 + v37);
  v41 = *(v22 + v37 + 8);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_12;
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
      goto LABEL_12;
    }
  }

  v42 = v48[10];
  v43 = (v47 + v42);
  v44 = *(v47 + v42 + 8);
  v45 = (v22 + v42);
  v46 = *(v22 + v42 + 8);
  if ((v44 & 1) == 0)
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      goto LABEL_12;
    }

LABEL_37:
    type metadata accessor for UnknownStorage();
    sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v26 & 1;
  }

  if (v46)
  {
    goto LABEL_37;
  }

LABEL_12:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_10027DFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if ((v7 & 1) == 0)
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }

LABEL_7:
    v10 = v4[6];
    v11 = (a1 + v10);
    v12 = *(a1 + v10 + 8);
    v13 = (a2 + v10);
    v14 = *(a2 + v10 + 8);
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
    v17 = *(a1 + v15 + 8);
    v18 = (a2 + v15);
    v19 = *(a2 + v15 + 8);
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
    v22 = *(a1 + v20 + 8);
    v23 = (a2 + v20);
    v24 = *(a2 + v20 + 8);
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
    v26 = *(a1 + v25);
    v27 = *(a2 + v25);
    if (v26 == 2)
    {
      if (v27 != 2)
      {
        return 0;
      }
    }

    else if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
    {
      return 0;
    }

    type metadata accessor for UnknownStorage();
    sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v9)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_10027E148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
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

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v11 ^ v12) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10027E244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Velocity(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
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
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
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
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
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
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
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
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
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
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
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
  sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10027E410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_SvId(0);
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

  type metadata accessor for UnknownStorage();
  sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10027E5A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Time(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
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
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = v4[11];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  v38 = v4[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = v4[13];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10027E80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10027E900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Position(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
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
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
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
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
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
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
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
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
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
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
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

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      return 0;
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
      return 0;
    }
  }

  v40 = v4[12];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = v4[13];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v50 = v4[14];
  v51 = *(a1 + v50);
  v52 = *(a2 + v50);
  if (v51 == 6)
  {
    if (v52 != 6)
    {
      return 0;
    }
  }

  else if (v52 == 6 || qword_100393458[v51] != qword_100393458[v52])
  {
    return 0;
  }

  v53 = v4[15];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 8);
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }
  }

  else
  {
    if (*v54 != *v56)
    {
      LOBYTE(v57) = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  v58 = v4[16];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  if (v59 == 6)
  {
    if (v60 != 6)
    {
      return 0;
    }
  }

  else if (v59 != v60)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_10027EC04(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10027EC04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10027EC54()
{
  result = qword_10042AB60;
  if (!qword_10042AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AB60);
  }

  return result;
}

unint64_t sub_10027ECAC()
{
  result = qword_10042AB68;
  if (!qword_10042AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AB68);
  }

  return result;
}

unint64_t sub_10027ED34()
{
  result = qword_10042AB80;
  if (!qword_10042AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AB80);
  }

  return result;
}

unint64_t sub_10027ED8C()
{
  result = qword_10042AB88;
  if (!qword_10042AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AB88);
  }

  return result;
}

unint64_t sub_10027EDE4()
{
  result = qword_10042AB90;
  if (!qword_10042AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AB90);
  }

  return result;
}

unint64_t sub_10027EE6C()
{
  result = qword_10042ABA8;
  if (!qword_10042ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ABA8);
  }

  return result;
}

unint64_t sub_10027EEC4()
{
  result = qword_10042ABB0;
  if (!qword_10042ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ABB0);
  }

  return result;
}

unint64_t sub_10027EF1C()
{
  result = qword_10042ABB8;
  if (!qword_10042ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ABB8);
  }

  return result;
}

unint64_t sub_10027EFA4()
{
  result = qword_10042ABD0;
  if (!qword_10042ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ABD0);
  }

  return result;
}

unint64_t sub_10027EFFC()
{
  result = qword_10042ABD8;
  if (!qword_10042ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ABD8);
  }

  return result;
}

unint64_t sub_10027F054()
{
  result = qword_10042ABE0;
  if (!qword_10042ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ABE0);
  }

  return result;
}

unint64_t sub_10027F0DC()
{
  result = qword_10042ABF8;
  if (!qword_10042ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ABF8);
  }

  return result;
}

unint64_t sub_10027F134()
{
  result = qword_10042AC00;
  if (!qword_10042AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC00);
  }

  return result;
}

unint64_t sub_10027F18C()
{
  result = qword_10042AC08;
  if (!qword_10042AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC08);
  }

  return result;
}

unint64_t sub_10027F214()
{
  result = qword_10042AC20;
  if (!qword_10042AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC20);
  }

  return result;
}

unint64_t sub_10027F26C()
{
  result = qword_10042AC28;
  if (!qword_10042AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC28);
  }

  return result;
}

unint64_t sub_10027F2C4()
{
  result = qword_10042AC30;
  if (!qword_10042AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC30);
  }

  return result;
}

unint64_t sub_10027F34C()
{
  result = qword_10042AC48;
  if (!qword_10042AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC48);
  }

  return result;
}

unint64_t sub_10027F3A4()
{
  result = qword_10042AC50;
  if (!qword_10042AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC50);
  }

  return result;
}

unint64_t sub_10027F3FC()
{
  result = qword_10042AC58;
  if (!qword_10042AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC58);
  }

  return result;
}

unint64_t sub_10027F484()
{
  result = qword_10042AC70;
  if (!qword_10042AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC70);
  }

  return result;
}

unint64_t sub_10027F4DC()
{
  result = qword_10042AC78;
  if (!qword_10042AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC78);
  }

  return result;
}

unint64_t sub_10027F534()
{
  result = qword_10042AC80;
  if (!qword_10042AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC80);
  }

  return result;
}

unint64_t sub_10027F5BC()
{
  result = qword_10042AC98;
  if (!qword_10042AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AC98);
  }

  return result;
}

unint64_t sub_10027F614()
{
  result = qword_10042ACA0;
  if (!qword_10042ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ACA0);
  }

  return result;
}

unint64_t sub_10027F66C()
{
  result = qword_10042ACA8;
  if (!qword_10042ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ACA8);
  }

  return result;
}

unint64_t sub_10027F6F4()
{
  result = qword_10042ACC0;
  if (!qword_10042ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ACC0);
  }

  return result;
}

unint64_t sub_10027F74C()
{
  result = qword_10042ACC8;
  if (!qword_10042ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ACC8);
  }

  return result;
}

unint64_t sub_10027F7A4()
{
  result = qword_10042ACD0;
  if (!qword_10042ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ACD0);
  }

  return result;
}

unint64_t sub_10027F82C()
{
  result = qword_10042ACE8;
  if (!qword_10042ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ACE8);
  }

  return result;
}

unint64_t sub_10027F884()
{
  result = qword_10042ACF0;
  if (!qword_10042ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ACF0);
  }

  return result;
}

unint64_t sub_10027F8DC()
{
  result = qword_10042ACF8;
  if (!qword_10042ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ACF8);
  }

  return result;
}

unint64_t sub_10027F964()
{
  result = qword_10042AD10;
  if (!qword_10042AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AD10);
  }

  return result;
}

unint64_t sub_10027F9BC()
{
  result = qword_10042AD18;
  if (!qword_10042AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AD18);
  }

  return result;
}

unint64_t sub_10027FA14()
{
  result = qword_10042AD20;
  if (!qword_10042AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042AD20);
  }

  return result;
}

void sub_1002808F8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418648);
    if (v1 <= 0x3F)
    {
      sub_1000B2498(319, &qword_100418560);
      if (v2 <= 0x3F)
      {
        sub_1000B2498(319, &qword_10042AEB0);
        if (v3 <= 0x3F)
        {
          sub_1000B2498(319, &qword_100418558);
          if (v4 <= 0x3F)
          {
            sub_1000B2498(319, &unk_10042AEB8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100280A64()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418648);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100280B2C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418558);
    if (v1 <= 0x3F)
    {
      sub_1000B2498(319, &qword_100418638);
      if (v2 <= 0x3F)
      {
        sub_1000B2498(319, &qword_100418630);
        if (v3 <= 0x3F)
        {
          sub_1000B2498(319, &qword_100418640);
          if (v4 <= 0x3F)
          {
            sub_1000B2498(319, &qword_100418648);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100280CD0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418630);
    if (v1 <= 0x3F)
    {
      sub_10028156C(319, &qword_10042B128, type metadata accessor for Proto_Gnss_Time);
      if (v2 <= 0x3F)
      {
        sub_1000B2498(319, &unk_10042B130);
        if (v3 <= 0x3F)
        {
          sub_1000B2498(319, &qword_100418560);
          if (v4 <= 0x3F)
          {
            sub_1000B2498(319, &qword_100418558);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100280E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100280F40()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418558);
    if (v1 <= 0x3F)
    {
      sub_1000B2498(319, &qword_100418638);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10028102C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418560);
    if (v1 <= 0x3F)
    {
      sub_1000B2498(319, &qword_100418640);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100281118()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418648);
    if (v1 <= 0x3F)
    {
      sub_1000B2498(319, &unk_10042B3F8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100281224(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418558);
    if (v6 <= 0x3F)
    {
      sub_1000B2498(319, a4);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100281310()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418558);
    if (v1 <= 0x3F)
    {
      sub_1000B2498(319, &qword_100418630);
      if (v2 <= 0x3F)
      {
        sub_1000B2498(319, &unk_10042B518);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100281400()
{
  sub_10028156C(319, &qword_10042B128, type metadata accessor for Proto_Gnss_Time);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10028156C(319, &qword_10042B580, type metadata accessor for Proto_Gnss_Position);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10028156C(319, &unk_10042B588, type metadata accessor for Proto_Gnss_Velocity);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10028156C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1002815C8()
{
  sub_10028156C(319, &unk_10042B6D0, type metadata accessor for Proto_Gnss_TimeTransferData);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100281684()
{
  result = qword_10042B850;
  if (!qword_10042B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B850);
  }

  return result;
}

unint64_t sub_1002816D8()
{
  result = qword_10042B858;
  if (!qword_10042B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B858);
  }

  return result;
}

unint64_t sub_10028172C()
{
  result = qword_10042B860;
  if (!qword_10042B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B860);
  }

  return result;
}

unint64_t sub_100281780()
{
  result = qword_10042B868;
  if (!qword_10042B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B868);
  }

  return result;
}

unint64_t sub_1002817D4()
{
  result = qword_10042B870;
  if (!qword_10042B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B870);
  }

  return result;
}

unint64_t sub_100281828()
{
  result = qword_10042B878;
  if (!qword_10042B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B878);
  }

  return result;
}

unint64_t sub_10028187C()
{
  result = qword_10042B880;
  if (!qword_10042B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B880);
  }

  return result;
}

unint64_t sub_1002818D0()
{
  result = qword_10042B888;
  if (!qword_10042B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B888);
  }

  return result;
}

unint64_t sub_100281924()
{
  result = qword_10042B890;
  if (!qword_10042B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B890);
  }

  return result;
}

unint64_t sub_100281978()
{
  result = qword_10042B898;
  if (!qword_10042B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B898);
  }

  return result;
}

unint64_t sub_1002819CC()
{
  result = qword_10042B8A0;
  if (!qword_10042B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B8A0);
  }

  return result;
}

uint64_t sub_100281A40()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

void (*sub_100281A98(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_100281B44;
}

void sub_100281B44(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10000B958(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;
  *(v7 + 24) = 0;

  free(v1);
}

BOOL sub_100281C10()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

uint64_t sub_100281C64()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_10000B958(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  return result;
}

uint64_t sub_100281CF8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 40))
  {
    return 0;
  }

  else
  {
    return *(v1 + 32);
  }
}

void (*sub_100281D50(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 40))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_100281DFC;
}

void sub_100281DFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10000B958(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 32) = v2;
  *(v7 + 40) = 0;

  free(v1);
}

BOOL sub_100281EC8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 40) & 1) == 0;
}

uint64_t sub_100281F1C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_10000B958(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_100281FB0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 48))
  {
    return 0;
  }

  else
  {
    return *(v1 + 44);
  }
}

void (*sub_100282008(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 44);
  if (*(v6 + 48))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1002820B4;
}

void sub_1002820B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10000B958(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 44) = v2;
  *(v7 + 48) = 0;

  free(v1);
}

BOOL sub_100282180()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 48) & 1) == 0;
}

uint64_t sub_1002821D4()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10000B958(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 44) = 0;
  *(v5 + 48) = 1;
  return result;
}

uint64_t sub_100282268()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 56))
  {
    return 0;
  }

  else
  {
    return *(v1 + 52);
  }
}

void (*sub_1002822C0(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 52);
  if (*(v6 + 56))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_10028236C;
}

void sub_10028236C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10000B958(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 52) = v2;
  *(v7 + 56) = 0;

  free(v1);
}

BOOL sub_100282438()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 56) & 1) == 0;
}

uint64_t sub_10028248C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10000B958(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 52) = 0;
  *(v5 + 56) = 1;
  return result;
}

uint64_t sub_100282520()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 64))
  {
    return 0;
  }

  else
  {
    return *(v1 + 60);
  }
}

uint64_t sub_100282578(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10000B958(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 60) = a1;
  *(v7 + 64) = 0;
  return result;
}

void (*sub_100282614(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 60);
  if (*(v6 + 64))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1002826C0;
}

void sub_1002826C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10000B958(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 60) = v2;
  *(v7 + 64) = 0;

  free(v1);
}

BOOL sub_10028278C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 64) & 1) == 0;
}

uint64_t sub_1002827E0()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10000B958(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 60) = 0;
  *(v5 + 64) = 1;
  return result;
}

uint64_t sub_100282874()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 72);
  }

  sub_10000BE4C(v2, v3);
  return v4;
}

uint64_t sub_1002828E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10000B958(v14);
    *(v3 + v6) = v13;
  }

  swift_beginAccess();
  v15 = *(v9 + 72);
  v16 = *(v9 + 80);
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;
  return sub_10000CA64(v15, v16);
}

void (*sub_100282984(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v6 + 72);
  }

  v10 = 0xC000000000000000;
  if (v8 >> 60 != 15)
  {
    v10 = *(v6 + 80);
  }

  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_10000BE4C(v7, v8);
  return sub_100282A3C;
}

void sub_100282A3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_1000150EC(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      v12 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      v15 = swift_allocObject();
      v16 = v9;
      v9 = v15;
      sub_10000B958(v16);
      *(v11 + v10) = v15;
    }

    swift_beginAccess();
    v17 = *(v9 + 72);
    v18 = *(v9 + 80);
    *(v9 + 72) = v3;
    *(v9 + 80) = v5;
    sub_10000CA64(v17, v18);
    sub_100005B2C(*(v2 + 72), *(v2 + 80));
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      v27 = swift_allocObject();
      v28 = v21;
      v21 = v27;
      sub_10000B958(v28);
      *(v23 + v22) = v27;
    }

    swift_beginAccess();
    v29 = *(v21 + 72);
    v30 = *(v21 + 80);
    *(v21 + 72) = v3;
    *(v21 + 80) = v5;
    sub_10000CA64(v29, v30);
  }

  free(v2);
}

BOOL sub_100282B74()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return *(v1 + 80) >> 60 != 15;
}

uint64_t sub_100282BCC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10000B958(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 72);
  v11 = *(v5 + 80);
  *(v5 + 72) = xmmword_10036D770;
  return sub_10000CA64(v10, v11);
}

uint64_t sub_100282C68()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 88) == 3)
  {
    return 0;
  }

  else
  {
    return *(v1 + 88);
  }
}

void (*sub_100282CBC(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (v7 == 3)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_100282D64;
}

void sub_100282D64(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10000B958(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 88) = v2;

  free(v1);
}

BOOL sub_100282E2C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return *(v1 + 88) != 3;
}

uint64_t sub_100282E80()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_10000B958(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 88) = 3;
  return result;
}

uint64_t sub_100282F10()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 104))
  {
    return 0;
  }

  else
  {
    return *(v1 + 96);
  }
}

void (*sub_100282F68(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 96);
  if (*(v6 + 104))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_100283014;
}

void sub_100283014(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10000B958(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 96) = v2;
  *(v7 + 104) = 0;

  free(v1);
}

BOOL sub_1002830E0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 104) & 1) == 0;
}

uint64_t sub_100283134()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_10000B958(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
  return result;
}

uint64_t sub_1002831C8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 120))
  {
    return 0;
  }

  else
  {
    return *(v1 + 112);
  }
}

void (*sub_100283220(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 112);
  if (*(v6 + 120))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_1002832CC;
}

void sub_1002832CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10000B958(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 112) = v2;
  *(v7 + 120) = 0;

  free(v1);
}

BOOL sub_100283398()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 120) & 1) == 0;
}

uint64_t sub_1002833EC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_10000B958(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 112) = 0;
  *(v5 + 120) = 1;
  return result;
}

uint64_t sub_100283480()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 128))
  {
    return 0;
  }

  else
  {
    return *(v1 + 124);
  }
}

void (*sub_1002834D8(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 124);
  if (*(v6 + 128))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_100283584;
}

void sub_100283584(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10000B958(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 124) = v2;
  *(v7 + 128) = 0;

  free(v1);
}

BOOL sub_100283650()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return (*(v1 + 128) & 1) == 0;
}

uint64_t sub_1002836A4()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10000B958(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 124) = 0;
  *(v5 + 128) = 1;
  return result;
}

uint64_t sub_100283738()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 144))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void (*sub_1002837A8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 144))
  {
    v7 = *(v6 + 136);
    v8 = *(v6 + 144);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_100283868;
}

void sub_100283868(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();
      v17 = v10;
      v10 = v16;
      sub_10000B958(v17);
      *(v12 + v11) = v16;
    }

    swift_beginAccess();
    v18 = *(v10 + 144);
    *(v10 + 136) = v3;
    *(v10 + 144) = v5;

    v19 = *(v2 + 80);
  }

  else
  {
    v20 = *(v6 + v4);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v4);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 96);
      v24 = *(v2 + 88);
      v25 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v28 = swift_allocObject();
      v29 = v22;
      v22 = v28;
      sub_10000B958(v29);
      *(v24 + v23) = v28;
    }

    swift_beginAccess();
    v30 = *(v22 + 144);
    *(v22 + 136) = v3;
    *(v22 + 144) = v5;
  }

  free(v2);
}

BOOL sub_100283998()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return *(v1 + 144) != 0;
}

uint64_t sub_1002839EC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10000B958(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 144);
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
}

uint64_t sub_100283A80()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 160))
  {
    v2 = *(v1 + 152);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100283AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10000B958(v14);
    *(v3 + v6) = v13;
  }

  swift_beginAccess();
  v15 = *(v9 + 160);
  *(v9 + 152) = a1;
  *(v9 + 160) = a2;
}

void (*sub_100283B94(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 160))
  {
    v7 = *(v6 + 152);
    v8 = *(v6 + 160);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_100283C54;
}

void sub_100283C54(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();
      v17 = v10;
      v10 = v16;
      sub_10000B958(v17);
      *(v12 + v11) = v16;
    }

    swift_beginAccess();
    v18 = *(v10 + 160);
    *(v10 + 152) = v3;
    *(v10 + 160) = v5;

    v19 = *(v2 + 80);
  }

  else
  {
    v20 = *(v6 + v4);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v4);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 96);
      v24 = *(v2 + 88);
      v25 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v28 = swift_allocObject();
      v29 = v22;
      v22 = v28;
      sub_10000B958(v29);
      *(v24 + v23) = v28;
    }

    swift_beginAccess();
    v30 = *(v22 + 160);
    *(v22 + 152) = v3;
    *(v22 + 160) = v5;
  }

  free(v2);
}

BOOL sub_100283D84()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  return *(v1 + 160) != 0;
}

uint64_t sub_100283DD8()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10000B958(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 160);
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
}

uint64_t sub_100283E6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042B8C8, &unk_100393490);
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10000B8B0(v6, a1, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  *(a1 + v9[9]) = 2;
  *(a1 + v9[10]) = 8;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042B8C8, &unk_100393490);
  }

  return result;
}

void (*sub_10028401C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10042B8C8, &unk_100393490) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042B8C8, &unk_100393490);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    *(v13 + v8[9]) = 2;
    *(v13 + v8[10]) = 8;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042B8C8, &unk_100393490);
    }
  }

  else
  {
    sub_10000B8B0(v7, v13, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  }

  return sub_1002842A0;
}

void sub_1002842A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100286148(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10000B958(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000B8B0(v15, v19, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
    swift_beginAccess();
    sub_10000CA78(v19, v7 + v20);
    swift_endAccess();
    sub_100013718(v14, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10000B958(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000B8B0(v14, v19, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
    swift_beginAccess();
    sub_10000CA78(v19, v24 + v33);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002844D0()
{
  v1 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042B8C8, &unk_100393490);
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042B8C8, &unk_100393490);
  return v8;
}

uint64_t sub_1002845F0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10000B958(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  sub_10000CA78(v5, v9 + v16);
  return swift_endAccess();
}

uint64_t sub_100284728(uint64_t a1)
{
  if (a1 == 7)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == 18)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100284794(uint64_t a1, uint64_t a2)
{
  v4 = sub_100014194();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1002847E0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  if (result == 7)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (result == 18)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

uint64_t *sub_10028481C@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 7)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 18)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100284864()
{
  if (qword_10047FBA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1002848C0()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_10000BE4C(*v1, v2);
  return v3;
}

uint64_t sub_100284910(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  result = sub_10000CA64(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*sub_100284958(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_10000BE4C(v5, v6);
  return sub_1001A2040;
}

double sub_100284A00()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  sub_10000CA64(*v1, *(v1 + 8));
  result = 0.0;
  *v1 = xmmword_10036D770;
  return result;
}

double sub_100284A40@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_10036D770;
  return result;
}

uint64_t sub_100284A7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_10041CA30, &qword_100374460);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10000B8B0(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  sub_10000C270(a1);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CA30, &qword_100374460);
  }

  return result;
}

void (*sub_100284BD0(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10000C270(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_10000B8B0(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100284DDC;
}

void sub_100284DDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_100286148((*a1)[5], v4, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_1000059A8(v9 + v3, &qword_10041CA30, &qword_100374460);
    sub_10000B8B0(v4, v9 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_100013718(v5, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    sub_1000059A8(v9 + v3, &qword_10041CA30, &qword_100374460);
    sub_10000B8B0(v5, v9 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_100284F40()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  sub_10000A0A4(v0 + *(v5 + 24), v4, &qword_10041CA30, &qword_100374460);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_10041CA30, &qword_100374460);
  return v7;
}

uint64_t sub_100285034()
{
  v1 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
  sub_1000059A8(v0 + v1, &qword_10041CA30, &qword_100374460);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t (*sub_1002850E8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_100285170()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1002851C0(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1002851F0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_100285278()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t (*sub_1002852C8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_100285350()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_100285378@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002853F4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1002854B8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t (*sub_10028554C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002855D4()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t (*sub_100285624(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002856AC()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t (*sub_1002856FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_100025584;
}

uint64_t sub_100285784()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1002857D4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_100285804(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10028588C()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_1002858DC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_10028590C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_100285994()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_1002859BC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 40));
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002859E8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*sub_100285A18(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_100025584;
}

uint64_t sub_100285AA4()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v0 + *(result + 40)) = 8;
  return result;
}

uint64_t sub_100285AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028A1BC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100285B5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434D20);
  sub_100005DF0(v0, qword_100434D20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10036D7A0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "mach_cont_time_ns";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mac";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "rssi_db";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "channel";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "antenna_index";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "payload";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "bt_type";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "device_flags";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "discovery_flags";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "product_ID";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "identifier";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "ids_device_ID";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 31;
  *v30 = "type7_info";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100286040()
{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 44) = 0;
  *(v3 + 48) = 1;
  *(v3 + 52) = 0;
  *(v3 + 56) = 1;
  *(v3 + 60) = 0;
  *(v3 + 64) = 1;
  *(v3 + 72) = xmmword_10036D770;
  *(v3 + 88) = 3;
  *(v3 + 96) = 0;
  *(v3 + 104) = 1;
  *(v3 + 112) = 0;
  *(v3 + 120) = 1;
  *(v3 + 124) = 0;
  *(v3 + 128) = 1;
  *(v3 + 152) = 0u;
  *(v3 + 136) = 0u;
  v4 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  v5 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  qword_10047FBB0 = v3;
  return result;
}

uint64_t sub_100286148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002861B0()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10000B958(v6);
    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    v13 = &unk_10047F000;
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 9:
        case 10:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_17;
        case 2:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
          goto LABEL_17;
        case 3:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularSInt32Field(value:)();
          goto LABEL_17;
        case 4:
        case 5:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_17;
        case 6:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          goto LABEL_17;
        case 8:
          swift_beginAccess();
          sub_100014194();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_17;
        case 12:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
LABEL_17:
          swift_endAccess();
          break;
        case 31:
          v14 = v13;
          v15 = v13[380];
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
          sub_100013374(&qword_10042B970, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          swift_endAccess();
          v13 = v14;
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

BOOL sub_100286594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v7 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100024A2C(&qword_10042BE28, &unk_100393E98);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v79 = &v71[-v10];
  v11 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v71[-v16];
  swift_beginAccess();
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  swift_beginAccess();
  v20 = *(a2 + 24);
  if (v19)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v18 != *(a2 + 16))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  swift_beginAccess();
  v23 = *(a2 + 40);
  if (v22)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v21 != *(a2 + 32))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v24 = *(a1 + 44);
  v25 = *(a1 + 48);
  swift_beginAccess();
  v26 = *(a2 + 48);
  if (v25)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (v24 != *(a2 + 44))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 52);
  v28 = *(a1 + 56);
  swift_beginAccess();
  v29 = *(a2 + 56);
  if (v28)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v27 != *(a2 + 52))
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 60);
  v31 = *(a1 + 64);
  swift_beginAccess();
  v32 = *(a2 + 64);
  if (v31)
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (v30 != *(a2 + 60))
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v73 = v4;
  swift_beginAccess();
  v33 = *(a1 + 72);
  v34 = *(a1 + 80);
  swift_beginAccess();
  v35 = *(a2 + 72);
  v36 = *(a2 + 80);
  v77 = v33;
  v37 = v33;
  v38 = v34;
  v39 = v35;
  sub_10000BE4C(v37, v38);
  v74 = v39;
  sub_10000BE4C(v39, v36);
  v75 = v36;
  v76 = v38;
  if (v38 >> 60 == 15)
  {
    if (v36 >> 60 == 15)
    {

      sub_10000CA64(v77, v76);
      goto LABEL_37;
    }

LABEL_35:
    sub_10000CA64(v77, v76);
    sub_10000CA64(v74, v75);
    return 0;
  }

  if (v36 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v40 = v77;
  sub_10000BE4C(v77, v76);
  v41 = v74;
  v42 = v75;
  sub_10000BE4C(v74, v75);

  v43 = v40;
  v44 = v76;
  v72 = sub_10009F948(v43, v76, v41, v42);
  sub_10000CA64(v41, v42);
  sub_10000CA64(v77, v44);
  sub_10000CA64(v41, v42);
  sub_10000CA64(v77, v44);
  if ((v72 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_37:
  swift_beginAccess();
  v45 = *(a1 + 88);
  swift_beginAccess();
  v46 = *(a2 + 88);
  if (v45 == 3)
  {
    if (v46 != 3)
    {
      goto LABEL_73;
    }
  }

  else if (v46 == 3 || qword_100393EA8[v45] != qword_100393EA8[v46])
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v47 = *(a1 + 96);
  v48 = *(a1 + 104);
  swift_beginAccess();
  v49 = *(a2 + 104);
  if (v48)
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((*(a2 + 104) & 1) != 0 || v47 != *(a2 + 96))
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v50 = *(a1 + 112);
  v51 = *(a1 + 120);
  swift_beginAccess();
  v52 = *(a2 + 120);
  if (v51)
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((*(a2 + 120) & 1) != 0 || v50 != *(a2 + 112))
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v53 = *(a1 + 124);
  v54 = *(a1 + 128);
  swift_beginAccess();
  v55 = *(a2 + 128);
  if (v54)
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((*(a2 + 128) & 1) != 0 || v53 != *(a2 + 124))
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v56 = *(a1 + 136);
  v57 = *(a1 + 144);
  swift_beginAccess();
  v58 = *(a2 + 144);
  if (v57)
  {
    if (!v58 || (v56 != *(a2 + 136) || v57 != v58) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (v58)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v59 = *(a1 + 152);
  v60 = *(a1 + 160);
  swift_beginAccess();
  v61 = *(a2 + 160);
  if (!v60)
  {
    if (!v61)
    {
      goto LABEL_69;
    }

LABEL_73:

    return 0;
  }

  if (!v61 || (v59 != *(a2 + 152) || v60 != v61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_69:
  v62 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  sub_10000A0A4(a1 + v62, v17, &qword_10042B8C8, &unk_100393490);
  v63 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  v64 = *(v8 + 48);
  v65 = v79;
  sub_10000A0A4(v17, v79, &qword_10042B8C8, &unk_100393490);
  v77 = v64;
  sub_10000A0A4(a2 + v63, &v65[v64], &qword_10042B8C8, &unk_100393490);
  v66 = *(v78 + 48);
  if (v66(v65, 1, v73) == 1)
  {

    sub_1000059A8(v17, &qword_10042B8C8, &unk_100393490);
    if (v66(&v79[v77], 1, v73) == 1)
    {
      sub_1000059A8(v79, &qword_10042B8C8, &unk_100393490);
      return 1;
    }

LABEL_77:
    sub_1000059A8(v79, &qword_10042BE28, &unk_100393E98);
    return 0;
  }

  v68 = v79;
  sub_10000A0A4(v79, v15, &qword_10042B8C8, &unk_100393490);
  if (v66(&v68[v77], 1, v73) == 1)
  {

    sub_1000059A8(v17, &qword_10042B8C8, &unk_100393490);
    sub_100013718(v15, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    goto LABEL_77;
  }

  v69 = v79;
  sub_10000B8B0(&v79[v77], v7, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  v70 = sub_1002893CC(v15, v7);

  sub_100013718(v7, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  sub_1000059A8(v17, &qword_10042B8C8, &unk_100393490);
  sub_100013718(v15, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  sub_1000059A8(v69, &qword_10042B8C8, &unk_100393490);
  return (v70 & 1) != 0;
}

uint64_t sub_100286EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (qword_10047FBA8 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_10047FBB0;
}

uint64_t sub_100286F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013374(&qword_10042BE18, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10028700C(uint64_t a1)
{
  v2 = sub_100013374(&qword_100418C68, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100287078()
{
  sub_100013374(&qword_100418C68, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);

  return Message.hash(into:)();
}

uint64_t sub_1002870F8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434D38);
  sub_100005DF0(v0, qword_100434D38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "BT_TYPE_UNKNOWN";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 7;
  *v10 = "BT_TYPE_TYPE7";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 18;
  *v11 = "BT_TYPE_TYPE18";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10028739C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434D50);
  sub_100005DF0(v0, qword_100434D50);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100374440;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "cb_device_bytes";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100287550()
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
      v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_1002875DC()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0);
  v3 = v0 + *(result + 20);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_1000150EC(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    result = sub_10000CA64(v5, v4);
  }

  if (!v1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

double sub_1002876F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_10036D770;
  return result;
}

uint64_t sub_10028775C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013374(&qword_10042BE10, type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002877FC(uint64_t a1)
{
  v2 = sub_100013374(&qword_10042B950, type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100287868()
{
  sub_100013374(&qword_10042B950, type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo);

  return Message.hash(into:)();
}

uint64_t sub_10028790C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434D68);
  sub_100005DF0(v0, qword_100434D68);
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
  *v10 = "advertisements";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "is_simulated";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "is_ap_on";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "is_screen_on";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100287BF0()
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
          v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100013374(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
          sub_100013374(&qword_100418C68, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 5:
            v3 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 32);
            goto LABEL_5;
          case 6:
            v3 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 36);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100287E14@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v8 = a1[8];
  a2[a1[7]] = 2;
  a2[v8] = 2;
  a2[a1[9]] = 2;
  return result;
}

uint64_t sub_100287ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013374(&qword_10042BE08, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100287F6C(uint64_t a1)
{
  v2 = sub_100013374(&qword_1004183E8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100287FD8()
{
  sub_100013374(&qword_1004183E8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);

  return Message.hash(into:)();
}

uint64_t sub_10028807C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434D80);
  sub_100005DF0(v0, qword_100434D80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_same_account";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_family";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_shared_home";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_left_bud";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "is_case";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "placement";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100288398()
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
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 32);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 36);
            goto LABEL_5;
          case 6:
            v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 40);
            sub_10028A1BC();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 20);
            goto LABEL_5;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 28);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

Swift::Int sub_100288540(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100013374(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002885C8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + v7) = 8;
  return result;
}

uint64_t sub_100288634(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013374(&qword_10042BE00, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002886D4(uint64_t a1)
{
  v2 = sub_100013374(&qword_10042B970, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100288740()
{
  sub_100013374(&qword_10042B970, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);

  return Message.hash(into:)();
}

uint64_t sub_1002887C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434D98);
  sub_100005DF0(v0, qword_100434D98);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D790;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PLACEMENT_UNKNOWN";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLACEMENT_IN_EAR";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLACEMENT_OUT_OF_EAR";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PLACEMENT_IN_CASE";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PLACEMENT_ON_EAR";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PLACEMENT_OFF_EAR";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PLACEMENT_ON_NECK";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "PLACEMENT_DISABLED";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100288B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_100286148(v14, v11, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        sub_100286148(v15, v8, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        v17 = *(v4 + 20);
        v18 = *&v11[v17];
        v19 = *&v8[v17];
        if (v18 != v19)
        {
          v20 = *&v11[v17];

          v21 = sub_100286594(v18, v19);

          if (!v21)
          {
            break;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100013374(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100013718(v8, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        sub_100013718(v11, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        if (v22)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v22 & 1;
      }

      sub_100013718(v8, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      sub_100013718(v11, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_100288E00(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v35 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v36 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v17 = v36[6];
  v18 = *(v13 + 56);
  v38 = a1;
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
LABEL_8:
      v23 = v38;
      if (sub_100288B74(*v38, *a2))
      {
        v24 = v36[7];
        v25 = *(v23 + v24);
        v26 = *(a2 + v24);
        if (v25 == 2)
        {
          if (v26 != 2)
          {
            goto LABEL_24;
          }
        }

        else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
        {
          goto LABEL_24;
        }

        v27 = v36[8];
        v28 = *(v23 + v27);
        v29 = *(a2 + v27);
        if (v28 == 2)
        {
          if (v29 != 2)
          {
            goto LABEL_24;
          }
        }

        else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
        {
          goto LABEL_24;
        }

        v30 = v36[9];
        v31 = *(v23 + v30);
        v32 = *(a2 + v30);
        if (v31 != 2)
        {
          if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
          {
            goto LABEL_24;
          }

LABEL_26:
          v34 = v36[5];
          type metadata accessor for UnknownStorage();
          sub_100013374(&qword_100418BA8, &type metadata accessor for UnknownStorage);
          v20 = dispatch thunk of static Equatable.== infix(_:_:)();
          return v20 & 1;
        }

        if (v32 == 2)
        {
          goto LABEL_26;
        }
      }

LABEL_24:
      v20 = 0;
      return v20 & 1;
    }
  }

  else
  {
    sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v37;
      sub_10000B8B0(&v16[v18], v37, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100013374(&qword_10041D830, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100013718(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100013718(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    sub_100013718(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  sub_1000059A8(v16, &qword_100423CE0, &qword_100393E90);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100289248(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      sub_10000BE4C(v6, v5);
      sub_10000BE4C(v9, v8);
      v11 = sub_10009F948(v6, v5, v9, v8);
      sub_10000CA64(v9, v8);
      sub_10000CA64(v6, v5);
      if (v11)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    sub_10000BE4C(v6, v5);
    sub_10000BE4C(v9, v8);
    sub_10000CA64(v6, v5);
    sub_10000CA64(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_5;
  }

  sub_10000BE4C(v6, v5);
  sub_10000BE4C(v9, v8);
  sub_10000CA64(v6, v5);
LABEL_8:
  type metadata accessor for UnknownStorage();
  sub_100013374(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002893CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v20 = v4[10];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 8)
  {
    if (v22 != 8)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100013374(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100289578(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_100286594(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100013374(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_100289668()
{
  result = qword_10042B8F0;
  if (!qword_10042B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B8F0);
  }

  return result;
}

unint64_t sub_1002896C0()
{
  result = qword_10042B8F8;
  if (!qword_10042B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B8F8);
  }

  return result;
}

unint64_t sub_100289748()
{
  result = qword_10042B910;
  if (!qword_10042B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B910);
  }

  return result;
}

unint64_t sub_1002897A0()
{
  result = qword_10042B918;
  if (!qword_10042B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B918);
  }

  return result;
}

unint64_t sub_1002897F8()
{
  result = qword_10042B920;
  if (!qword_10042B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042B920);
  }

  return result;
}

uint64_t sub_100289CFC()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100289DB8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &unk_100425810);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100289E4C()
{
  sub_100289F78(319, &unk_10042BAD8, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_100289F78(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000B2498(319, &qword_100418630);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100289F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100289FDC()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418630);
    if (v1 <= 0x3F)
    {
      sub_1000B2498(319, &unk_10042BB70);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10028A0BC()
{
  sub_100289F78(319, &unk_10042BBE0, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10028A1BC()
{
  result = qword_10042BE20;
  if (!qword_10042BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042BE20);
  }

  return result;
}

uint64_t sub_10028A254(uint64_t a1, uint64_t a2)
{
  v4 = sub_100303440();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10028A2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003033EC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10028A350(uint64_t a1, uint64_t a2)
{
  v4 = sub_100303398();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10028A3AC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_10028A404(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1002C2FB8(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  return result;
}

void (*sub_10028A4A0(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_10028A54C;
}

void sub_10028A54C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1002C2FB8(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;
  *(v7 + 24) = 0;

  free(v1);
}

BOOL sub_10028A618()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

uint64_t sub_10028A66C()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_1002C2FB8(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  return result;
}

uint64_t sub_10028A700()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 28);
  }
}

uint64_t sub_10028A758(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1002C2FB8(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 28) = a1;
  *(v7 + 32) = 0;
  return result;
}

void (*sub_10028A7F4(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 28);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_10028A8A0;
}

void sub_10028A8A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1002C2FB8(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 28) = v2;
  *(v7 + 32) = 0;

  free(v1);
}

BOOL sub_10028A96C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

uint64_t sub_10028A9C0()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1002C2FB8(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 28) = 0;
  *(v5 + 32) = 1;
  return result;
}

uint64_t sub_10028AA54()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  if (*(v1 + 33) == 62)
  {
    return 0;
  }

  else
  {
    return *(v1 + 33);
  }
}

uint64_t sub_10028AAA8(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1002C2FB8(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 33) = a1;
  return result;
}

void (*sub_10028AB40(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 33);
  if (v7 == 62)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_10028ABE8;
}

void sub_10028ABE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1002C2FB8(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 33) = v2;

  free(v1);
}

BOOL sub_10028ACB0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return *(v1 + 33) != 62;
}

uint64_t sub_10028AD04()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_1002C2FB8(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 33) = 62;
  return result;
}

uint64_t sub_10028AD94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BE30, &qword_100393EF0);
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  }

  UnknownStorage.init()();
  v11 = v9[5];
  v12 = type metadata accessor for Proto_Gnss_Position(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  *(a1 + v9[6]) = 4;
  *(a1 + v9[7]) = 2;
  v13 = a1 + v9[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BE30, &qword_100393EF0);
  }

  return result;
}

uint64_t sub_10028AF84@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Position(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 4;
  *(a1 + v2[7]) = 2;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_10028B02C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002C2FB8(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  v17 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BE30, &qword_100393EF0);
  return swift_endAccess();
}

void (*sub_10028B198(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10042BE30, &qword_100393EF0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE30, &qword_100393EF0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v8[5];
    v19 = type metadata accessor for Proto_Gnss_Position(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    *(v13 + v8[6]) = 4;
    *(v13 + v8[7]) = 2;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE30, &qword_100393EF0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  }

  return sub_10028B454;
}

void sub_10028B454(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002C2FB8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BE30, &qword_100393EF0);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002C2FB8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BE30, &qword_100393EF0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10028B6A4()
{
  v1 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BE30, &qword_100393EF0);
  v7 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BE30, &qword_100393EF0);
  return v8;
}

uint64_t sub_10028B7C4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002C2FB8(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BE30, &qword_100393EF0);
  return swift_endAccess();
}

uint64_t sub_10028B90C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BE38, &qword_100393EF8);
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BE38, &qword_100393EF8);
  }

  return result;
}

uint64_t sub_10028BAD0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002C2FB8(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  v17 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BE38, &qword_100393EF8);
  return swift_endAccess();
}

void (*sub_10028BC3C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10042BE38, &qword_100393EF8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE38, &qword_100393EF8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE38, &qword_100393EF8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  }

  return sub_10028BEBC;
}

void sub_10028BEBC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002C2FB8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BE38, &qword_100393EF8);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002C2FB8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BE38, &qword_100393EF8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10028C10C()
{
  v1 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BE38, &qword_100393EF8);
  v7 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BE38, &qword_100393EF8);
  return v8;
}

uint64_t sub_10028C22C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002C2FB8(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BE38, &qword_100393EF8);
  return swift_endAccess();
}

uint64_t sub_10028C374@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BE40, &qword_100393F00);
  v9 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v11 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BE40, &qword_100393F00);
  }

  return result;
}

uint64_t sub_10028C514(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002C2FB8(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  v17 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BE40, &qword_100393F00);
  return swift_endAccess();
}

void (*sub_10028C680(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10042BE40, &qword_100393F00) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE40, &qword_100393F00);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v18 = v13 + *(v8 + 20);
    UnknownStorage.init()();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE40, &qword_100393F00);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  }

  return sub_10028C8DC;
}