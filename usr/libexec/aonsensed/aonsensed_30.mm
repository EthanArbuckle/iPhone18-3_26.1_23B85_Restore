uint64_t sub_1002F94F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
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
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002F964C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryPoint(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
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
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    type metadata accessor for UnknownStorage();
    sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v22)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_1002F97AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002F98E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
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
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_20:
    type metadata accessor for UnknownStorage();
    sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v19)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_1002F9A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
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

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002F9AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
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
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002F9CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      sub_10000BE4C(v7, v6);
      sub_10000BE4C(v10, v9);
      v12 = sub_10009F948(v7, v6, v10, v9);
      sub_10000CA64(v10, v9);
      sub_10000CA64(v7, v6);
      if (v12)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    sub_10000BE4C(v7, v6);
    sub_10000BE4C(v10, v9);
    sub_10000CA64(v7, v6);
    sub_10000CA64(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_5;
  }

  sub_10000BE4C(v7, v6);
  sub_10000BE4C(v10, v9);
  sub_10000CA64(v7, v6);
LABEL_8:
  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002F9E2C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v5 = started[5];
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

  v8 = started[6];
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

  v11 = started[7];
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

  v14 = started[8];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 8);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = started[9];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002F9FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    type metadata accessor for UnknownStorage();
    sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_1002FA094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_Exception(0);
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

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002FA1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_Response(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 62)
  {
    if (v7 != 62)
    {
      goto LABEL_18;
    }
  }

  else if (v7 == 62 || qword_100398ED0[v6] != qword_100398ED0[v7])
  {
    goto LABEL_18;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      goto LABEL_18;
    }
  }

  v13 = v4[7];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 10)
  {
    if (v15 == 10)
    {
      goto LABEL_17;
    }

LABEL_18:
    v16 = 0;
    return v16 & 1;
  }

  if (v15 == 10)
  {
    goto LABEL_18;
  }

  sub_10003616C();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_17:
  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v16 & 1;
}

uint64_t sub_1002FA328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_Indication(0);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  __chkstk_darwin(v4);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v92 = &v88 - v10;
  v94 = sub_100024A2C(&qword_100418BC8, &qword_10036D6A8);
  v11 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v13 = &v88 - v12;
  v14 = type metadata accessor for Proto_Gpsd_Response(0);
  v99 = *(v14 - 8);
  v100 = v14;
  v15 = *(v99 + 64);
  __chkstk_darwin(v14);
  v93 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v97 = &v88 - v19;
  v98 = sub_100024A2C(&qword_100418BD0, &unk_10036D6B0);
  v20 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v101 = &v88 - v21;
  v22 = type metadata accessor for Proto_Gpsd_Request(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v88 - v29;
  v31 = sub_100024A2C(&qword_100418C38, &qword_10036D6C8);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = &v88 - v33;
  v35 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v36 = v35;
  v37 = *(v35 + 20);
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 8);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_40;
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
      goto LABEL_40;
    }
  }

  v42 = *(v35 + 24);
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_40;
    }

    if (*v43 != *v45 || v44 != v46)
    {
      v91 = v35;
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v36 = v91;
      if ((v47 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  else if (v46)
  {
    goto LABEL_40;
  }

  v88 = v7;
  v89 = v13;
  v48 = *(v36 + 28);
  v49 = *(v31 + 48);
  v90 = a1;
  v91 = v36;
  sub_10000A0A4(a1 + v48, v34, &qword_100418370, &qword_10036C848);
  v50 = a2 + v48;
  v51 = a2;
  sub_10000A0A4(v50, &v34[v49], &qword_100418370, &qword_10036C848);
  v52 = *(v23 + 48);
  if (v52(v34, 1, v22) == 1)
  {
    if (v52(&v34[v49], 1, v22) == 1)
    {
      sub_1000059A8(v34, &qword_100418370, &qword_10036C848);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_10000A0A4(v34, v30, &qword_100418370, &qword_10036C848);
  if (v52(&v34[v49], 1, v22) == 1)
  {
    sub_1002F7CB8(v30, type metadata accessor for Proto_Gpsd_Request);
LABEL_19:
    v53 = &qword_100418C38;
    v54 = &qword_10036D6C8;
LABEL_20:
    v55 = v34;
LABEL_39:
    sub_1000059A8(v55, v53, v54);
    goto LABEL_40;
  }

  sub_1002F7BE8(&v34[v49], v26, type metadata accessor for Proto_Gpsd_Request);
  v56 = *(v22 + 20);
  v57 = *&v30[v56];
  if (v57 != *&v26[v56])
  {
    v58 = *&v30[v56];

    v59 = sub_1002CD05C(v57);

    if (!v59)
    {
      sub_1002F7CB8(v26, type metadata accessor for Proto_Gpsd_Request);
      sub_1002F7CB8(v30, type metadata accessor for Proto_Gpsd_Request);
      v53 = &qword_100418370;
      v54 = &qword_10036C848;
      goto LABEL_20;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v26, type metadata accessor for Proto_Gpsd_Request);
  sub_1002F7CB8(v30, type metadata accessor for Proto_Gpsd_Request);
  sub_1000059A8(v34, &qword_100418370, &qword_10036C848);
  if ((v60 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_24:
  v61 = v90;
  v62 = *(v91 + 32);
  v63 = *(v98 + 48);
  v64 = v101;
  sub_10000A0A4(v90 + v62, v101, &qword_100418378, &qword_10036C850);
  sub_10000A0A4(v51 + v62, v64 + v63, &qword_100418378, &qword_10036C850);
  v65 = v100;
  v66 = *(v99 + 48);
  if (v66(v64, 1, v100) != 1)
  {
    v70 = v97;
    sub_10000A0A4(v64, v97, &qword_100418378, &qword_10036C850);
    v71 = v66(v64 + v63, 1, v65);
    v69 = v88;
    v68 = v89;
    if (v71 != 1)
    {
      v72 = v64 + v63;
      v73 = v93;
      sub_1002F7BE8(v72, v93, type metadata accessor for Proto_Gpsd_Response);
      v74 = sub_1002FA1C4(v70, v73);
      sub_1002F7CB8(v73, type metadata accessor for Proto_Gpsd_Response);
      sub_1002F7CB8(v70, type metadata accessor for Proto_Gpsd_Response);
      sub_1000059A8(v64, &qword_100418378, &qword_10036C850);
      if ((v74 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    sub_1002F7CB8(v70, type metadata accessor for Proto_Gpsd_Response);
    goto LABEL_29;
  }

  v67 = v66(v64 + v63, 1, v65);
  v69 = v88;
  v68 = v89;
  if (v67 != 1)
  {
LABEL_29:
    v53 = &qword_100418BD0;
    v54 = &unk_10036D6B0;
    v55 = v64;
    goto LABEL_39;
  }

  sub_1000059A8(v64, &qword_100418378, &qword_10036C850);
LABEL_31:
  v75 = *(v91 + 36);
  v76 = *(v94 + 48);
  sub_10000A0A4(v61 + v75, v68, &qword_100418380, &qword_10036C858);
  sub_10000A0A4(v51 + v75, v68 + v76, &qword_100418380, &qword_10036C858);
  v77 = v96;
  v78 = *(v95 + 48);
  if (v78(v68, 1, v96) == 1)
  {
    if (v78(v68 + v76, 1, v77) == 1)
    {
      sub_1000059A8(v68, &qword_100418380, &qword_10036C858);
LABEL_45:
      type metadata accessor for UnknownStorage();
      sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v80 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v80 & 1;
    }

    goto LABEL_37;
  }

  v79 = v92;
  sub_10000A0A4(v68, v92, &qword_100418380, &qword_10036C858);
  if (v78(v68 + v76, 1, v77) == 1)
  {
    sub_1002F7CB8(v79, type metadata accessor for Proto_Gpsd_Indication);
LABEL_37:
    v53 = &qword_100418BC8;
    v54 = &qword_10036D6A8;
LABEL_38:
    v55 = v68;
    goto LABEL_39;
  }

  sub_1002F7BE8(v68 + v76, v69, type metadata accessor for Proto_Gpsd_Indication);
  v82 = *(v77 + 20);
  v83 = *(v79 + v82);
  v84 = *(v69 + v82);
  if (v83 != v84)
  {
    v85 = *(v79 + v82);

    v86 = sub_1002DE7BC(v83, v84);

    if (!v86)
    {
      sub_1002F7CB8(v69, type metadata accessor for Proto_Gpsd_Indication);
      sub_1002F7CB8(v79, type metadata accessor for Proto_Gpsd_Indication);
      v53 = &qword_100418380;
      v54 = &qword_10036C858;
      goto LABEL_38;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v87 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v69, type metadata accessor for Proto_Gpsd_Indication);
  sub_1002F7CB8(v79, type metadata accessor for Proto_Gpsd_Indication);
  sub_1000059A8(v68, &qword_100418380, &qword_10036C858);
  if (v87)
  {
    goto LABEL_45;
  }

LABEL_40:
  v80 = 0;
  return v80 & 1;
}

uint64_t sub_1002FAE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Position(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v39 - v10;
  v12 = sub_100024A2C(&qword_10042B8C0, &unk_100393360);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v40 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v41 = a1;
  v17 = *(v40 + 20);
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_10042AAE8, &qword_100390F28);
  v19 = a2 + v17;
  v20 = a2;
  sub_10000A0A4(v19, &v16[v18], &qword_10042AAE8, &qword_100390F28);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v18], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_10042AAE8, &qword_100390F28);
      goto LABEL_8;
    }
  }

  else
  {
    sub_10000A0A4(v16, v11, &qword_10042AAE8, &qword_100390F28);
    if (v21(&v16[v18], 1, v4) != 1)
    {
      v23 = v39;
      sub_1002F7BE8(&v16[v18], v39, type metadata accessor for Proto_Gnss_Position);
      sub_1002FB284(&qword_10042AD48, type metadata accessor for Proto_Gnss_Position);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1002F7CB8(v23, type metadata accessor for Proto_Gnss_Position);
      sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Position);
      sub_1000059A8(v16, &qword_10042AAE8, &qword_100390F28);
      if ((v24 & 1) == 0)
      {
LABEL_20:
        v22 = 0;
        return v22 & 1;
      }

LABEL_8:
      v26 = v40;
      v25 = v41;
      v27 = *(v40 + 24);
      v28 = *(v41 + v27);
      v29 = *(v20 + v27);
      if (v28 == 4)
      {
        if (v29 != 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v43 = v28;
        if (v29 == 4)
        {
          goto LABEL_20;
        }

        v42 = v29;
        sub_10027F0DC();
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v30 = *(v26 + 28);
      v31 = *(v25 + v30);
      v32 = *(v20 + v30);
      if (v31 == 2)
      {
        if (v32 != 2)
        {
          goto LABEL_20;
        }
      }

      else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
      {
        goto LABEL_20;
      }

      v33 = *(v26 + 32);
      v34 = (v25 + v33);
      v35 = *(v25 + v33 + 8);
      v36 = (v20 + v33);
      v37 = *(v20 + v33 + 8);
      if (v35)
      {
        if (!v37)
        {
          goto LABEL_20;
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
          goto LABEL_20;
        }
      }

      type metadata accessor for UnknownStorage();
      sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Position);
  }

  sub_1000059A8(v16, &qword_10042B8C0, &unk_100393360);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1002FB284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002FB2CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002FB3C0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v5 = v4;
  v6 = *(v4 + 28);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v4 + 32);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (sub_100033210(*a1, *a2) & 1) != 0 && (sub_100033210(a1[1], a2[1]))
  {
    v16 = *(v5 + 24);
    type metadata accessor for UnknownStorage();
    sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_1002FB4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v5 + 24);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002FB5E8(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    v10 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
    v11 = v10[6];
    v12 = (v6 + v11);
    v13 = *(v6 + v11 + 4);
    v14 = (a2 + v11);
    v15 = *(a2 + v11 + 4);
    if (v13)
    {
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (*v12 != *v14)
      {
        LOBYTE(v15) = 1;
      }

      if (v15)
      {
        return 0;
      }
    }

    v16 = v10[7];
    v17 = (v6 + v16);
    v18 = *(v6 + v16 + 4);
    v19 = (a2 + v16);
    v20 = *(a2 + v16 + 4);
    if (v18)
    {
      if (!v20)
      {
        return 0;
      }
    }

    else
    {
      if (*v17 != *v19)
      {
        LOBYTE(v20) = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    v21 = v10[5];
    type metadata accessor for UnknownStorage();
    sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002FB73C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
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

  v35 = v4[11];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
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

  v38 = v4[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
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
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
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

  v48 = v4[14];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 4);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      return 0;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  v53 = v4[15];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 4);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 4);
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

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002FBA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_Status(0);
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
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_1002FBB9C()
{
  result = qword_10042C190;
  if (!qword_10042C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C190);
  }

  return result;
}

unint64_t sub_1002FBBF4()
{
  result = qword_10042C198;
  if (!qword_10042C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C198);
  }

  return result;
}

unint64_t sub_1002FBC4C()
{
  result = qword_10042C1A0;
  if (!qword_10042C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1A0);
  }

  return result;
}

unint64_t sub_1002FBCD4()
{
  result = qword_10042C1B8;
  if (!qword_10042C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1B8);
  }

  return result;
}

unint64_t sub_1002FBD2C()
{
  result = qword_10042C1C0;
  if (!qword_10042C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1C0);
  }

  return result;
}

unint64_t sub_1002FBD84()
{
  result = qword_10042C1C8;
  if (!qword_10042C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1C8);
  }

  return result;
}

unint64_t sub_1002FBE0C()
{
  result = qword_10042C1E0;
  if (!qword_10042C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1E0);
  }

  return result;
}

unint64_t sub_1002FBE64()
{
  result = qword_10042C1E8;
  if (!qword_10042C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1E8);
  }

  return result;
}

unint64_t sub_1002FBEBC()
{
  result = qword_10042C1F0;
  if (!qword_10042C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C1F0);
  }

  return result;
}

unint64_t sub_1002FBF44()
{
  result = qword_10042C208;
  if (!qword_10042C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C208);
  }

  return result;
}

unint64_t sub_1002FBF9C()
{
  result = qword_10042C210;
  if (!qword_10042C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C210);
  }

  return result;
}

unint64_t sub_1002FBFF4()
{
  result = qword_10042C218;
  if (!qword_10042C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C218);
  }

  return result;
}

unint64_t sub_1002FC07C()
{
  result = qword_10042C230;
  if (!qword_10042C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C230);
  }

  return result;
}

unint64_t sub_1002FC0D4()
{
  result = qword_10042C238;
  if (!qword_10042C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C238);
  }

  return result;
}

unint64_t sub_1002FC12C()
{
  result = qword_10042C240;
  if (!qword_10042C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042C240);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gpsd_Request.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC3)
  {
    goto LABEL_17;
  }

  if (a2 + 61 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 61) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 61;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 61;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 61;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3E;
  v8 = v6 - 62;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gpsd_Request.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 61) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC3)
  {
    v4 = 0;
  }

  if (a2 > 0xC2)
  {
    v5 = ((a2 - 195) >> 8) + 1;
    *result = a2 + 61;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 61;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1002FF3D0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &unk_10042C6F0, &type metadata for Proto_Gpsd_Request.TypeEnum, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100301354(319, &unk_1004186F8, &type metadata for Proto_Gnss_Result, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002FF540()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002FF654()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002FF790(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_100301354(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002FF854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1002FF930(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_1002FFA68()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1002FFBD0(319, &qword_10042B580, type metadata accessor for Proto_Gnss_Position, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &unk_10042CB40, &type metadata for Proto_Gnss_PositionAssistType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002FFBD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1002FFD8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1002FFBD0(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002FFE80()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002FFFE4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_10042D028, &type metadata for Proto_Gnss_MotionActivityContext, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100301354(319, &unk_10042D030, &type metadata for Proto_Gnss_MovingState, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100301354(319, &qword_10042AEB0, &type metadata for Proto_Gnss_Reliability, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10030018C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    sub_100301354(319, a4, a5, &type metadata accessor for Optional);
    if (v12 <= 0x3F)
    {
      sub_100301354(319, a6, a7, &type metadata accessor for Optional);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003002E4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003003F8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003005EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_100301354(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100300764()
{
  sub_1002FFBD0(319, &qword_10042D698, type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryPoint, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_1002FFBD0(319, &unk_10042D6A0, type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100300888()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10030098C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

uint64_t sub_100300A6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_100300B28()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100300C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

void sub_100300D40()
{
  sub_100301354(319, &qword_100418628, &type metadata for Int32, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_1004259D0, &type metadata for UInt32, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        sub_100301354(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100300E88()
{
  sub_100301354(319, &qword_100418628, &type metadata for Int32, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100300FE0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100301354(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100301154(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_100301354(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100301234()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &unk_10041A448, &type metadata for Int64, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100301354(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100301354(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1003013CC()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1002FFBD0(319, &unk_100418578, type metadata accessor for Proto_Gpsd_Request, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1002FFBD0(319, &qword_100418990, type metadata accessor for Proto_Gpsd_Response, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1002FFBD0(319, &qword_100418998, type metadata accessor for Proto_Gpsd_Indication, &type metadata accessor for Optional);
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

void sub_1003015B0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100301354(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100301354(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003016A8()
{
  sub_1002FFBD0(319, &qword_10042DD98, type metadata accessor for Proto_Gpsd_InjectAssistancePosition, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v78 = *(v0 - 8) + 64;
    sub_1002FFBD0(319, &qword_10042DDA0, type metadata accessor for Proto_Gpsd_InjectAssistanceTime, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v79 = *(v2 - 8) + 64;
      sub_1002FFBD0(319, &qword_10042DDA8, type metadata accessor for Proto_Gpsd_SetAssistancePressure, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v80 = *(v4 - 8) + 64;
        sub_1002FFBD0(319, &qword_10042DDB0, type metadata accessor for Proto_Gpsd_SetAssistanceAccel, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          v81 = *(v6 - 8) + 64;
          sub_1002FFBD0(319, &qword_10042DDB8, type metadata accessor for Proto_Gpsd_SetAssistanceGyro, &type metadata accessor for Optional);
          if (v9 <= 0x3F)
          {
            v82 = *(v8 - 8) + 64;
            sub_1002FFBD0(319, &qword_10042DDC0, type metadata accessor for Proto_Gpsd_SetAssistanceDem, &type metadata accessor for Optional);
            if (v11 <= 0x3F)
            {
              v83 = *(v10 - 8) + 64;
              sub_1002FFBD0(319, &qword_10042DDC8, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector, &type metadata accessor for Optional);
              if (v13 <= 0x3F)
              {
                v84 = *(v12 - 8) + 64;
                sub_1002FFBD0(319, &qword_10042DDD0, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext, &type metadata accessor for Optional);
                if (v15 <= 0x3F)
                {
                  v85 = *(v14 - 8) + 64;
                  sub_1002FFBD0(319, &qword_10042DDD8, type metadata accessor for Proto_Gpsd_SetAssistanceMountState, &type metadata accessor for Optional);
                  if (v17 <= 0x3F)
                  {
                    v86 = *(v16 - 8) + 64;
                    sub_1002FFBD0(319, &qword_10042DDE0, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment, &type metadata accessor for Optional);
                    if (v19 <= 0x3F)
                    {
                      v87 = *(v18 - 8) + 64;
                      sub_1002FFBD0(319, &qword_10042DDE8, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint, &type metadata accessor for Optional);
                      if (v21 <= 0x3F)
                      {
                        v88 = *(v20 - 8) + 64;
                        sub_1002FFBD0(319, &qword_10042DDF0, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity, &type metadata accessor for Optional);
                        if (v23 <= 0x3F)
                        {
                          v89 = *(v22 - 8) + 64;
                          sub_1002FFBD0(319, &qword_10042DDF8, type metadata accessor for Proto_Gpsd_InjectAssistanceFile, &type metadata accessor for Optional);
                          if (v25 <= 0x3F)
                          {
                            v90 = *(v24 - 8) + 64;
                            sub_1002FFBD0(319, &qword_10042DE00, type metadata accessor for Proto_Gpsd_InjectRtiFile, &type metadata accessor for Optional);
                            if (v27 <= 0x3F)
                            {
                              v91 = *(v26 - 8) + 64;
                              sub_1002FFBD0(319, &qword_10042DE08, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist, &type metadata accessor for Optional);
                              if (v29 <= 0x3F)
                              {
                                v92 = *(v28 - 8) + 64;
                                sub_1002FFBD0(319, &qword_10042DE10, type metadata accessor for Proto_Gpsd_DeleteGnssData, &type metadata accessor for Optional);
                                if (v31 <= 0x3F)
                                {
                                  v93 = *(v30 - 8) + 64;
                                  sub_1002FFBD0(319, &qword_10042DE18, type metadata accessor for Proto_Gpsd_SetPvtmReport, &type metadata accessor for Optional);
                                  if (v33 <= 0x3F)
                                  {
                                    v94 = *(v32 - 8) + 64;
                                    sub_1002FFBD0(319, &qword_10042DE20, type metadata accessor for Proto_Gpsd_SetNmeaHandler, &type metadata accessor for Optional);
                                    if (v35 <= 0x3F)
                                    {
                                      v95 = *(v34 - 8) + 64;
                                      sub_1002FFBD0(319, &qword_10042DE28, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode, &type metadata accessor for Optional);
                                      if (v37 <= 0x3F)
                                      {
                                        v96 = *(v36 - 8) + 64;
                                        sub_1002FFBD0(319, &qword_10042DE30, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations, &type metadata accessor for Optional);
                                        if (v39 <= 0x3F)
                                        {
                                          v97 = *(v38 - 8) + 64;
                                          sub_1002FFBD0(319, &qword_10042DE38, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling, &type metadata accessor for Optional);
                                          if (v41 <= 0x3F)
                                          {
                                            v98 = *(v40 - 8) + 64;
                                            sub_1002FFBD0(319, &qword_10042DE40, type metadata accessor for Proto_Gpsd_TerminationImminent, &type metadata accessor for Optional);
                                            if (v43 <= 0x3F)
                                            {
                                              v99 = *(v42 - 8) + 64;
                                              sub_1002FFBD0(319, &qword_10042DE48, type metadata accessor for Proto_Gpsd_ExitMessage, &type metadata accessor for Optional);
                                              if (v45 <= 0x3F)
                                              {
                                                v100 = *(v44 - 8) + 64;
                                                sub_1002FFBD0(319, &qword_10042DE50, type metadata accessor for Proto_Gpsd_LtlInfo, &type metadata accessor for Optional);
                                                if (v47 <= 0x3F)
                                                {
                                                  v101 = *(v46 - 8) + 64;
                                                  sub_1002FFBD0(319, &qword_10042DE58, type metadata accessor for Proto_Gpsd_StartContext, &type metadata accessor for Optional);
                                                  if (v49 <= 0x3F)
                                                  {
                                                    v102 = *(v48 - 8) + 64;
                                                    sub_1002FFBD0(319, &qword_10042DE60, type metadata accessor for Proto_Gpsd_SetThermalRiskState, &type metadata accessor for Optional);
                                                    if (v51 <= 0x3F)
                                                    {
                                                      v103 = *(v50 - 8) + 64;
                                                      sub_1002FFBD0(319, &qword_10042DE68, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable, &type metadata accessor for Optional);
                                                      if (v53 <= 0x3F)
                                                      {
                                                        v104 = *(v52 - 8) + 64;
                                                        sub_1002FFBD0(319, &qword_10042DE70, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile, &type metadata accessor for Optional);
                                                        if (v55 <= 0x3F)
                                                        {
                                                          v105 = *(v54 - 8) + 64;
                                                          sub_1002FFBD0(319, &qword_10042DE78, type metadata accessor for Proto_Gnss_Emergency_EmergConfig, &type metadata accessor for Optional);
                                                          if (v57 <= 0x3F)
                                                          {
                                                            v106 = *(v56 - 8) + 64;
                                                            sub_1002FFBD0(319, &qword_10042DE80, type metadata accessor for Proto_Gnss_Emergency_PositionRequest, &type metadata accessor for Optional);
                                                            if (v59 <= 0x3F)
                                                            {
                                                              v107 = *(v58 - 8) + 64;
                                                              sub_1002FFBD0(319, &qword_10042DE88, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &type metadata accessor for Optional);
                                                              if (v61 <= 0x3F)
                                                              {
                                                                v108 = *(v60 - 8) + 64;
                                                                sub_1002FFBD0(319, &qword_10042DE90, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &type metadata accessor for Optional);
                                                                if (v63 <= 0x3F)
                                                                {
                                                                  v109 = *(v62 - 8) + 64;
                                                                  sub_1002FFBD0(319, &qword_10042DE98, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel, &type metadata accessor for Optional);
                                                                  if (v65 <= 0x3F)
                                                                  {
                                                                    v110 = *(v64 - 8) + 64;
                                                                    sub_1002FFBD0(319, &qword_10042DEA0, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance, &type metadata accessor for Optional);
                                                                    if (v67 <= 0x3F)
                                                                    {
                                                                      v111 = *(v66 - 8) + 64;
                                                                      sub_1002FFBD0(319, &qword_10042DEA8, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance, &type metadata accessor for Optional);
                                                                      if (v69 <= 0x3F)
                                                                      {
                                                                        v112 = *(v68 - 8) + 64;
                                                                        sub_1002FFBD0(319, &qword_10042DEB0, type metadata accessor for Proto_Gnss_Emergency_CplaneContext, &type metadata accessor for Optional);
                                                                        if (v71 <= 0x3F)
                                                                        {
                                                                          v113 = *(v70 - 8) + 64;
                                                                          sub_1002FFBD0(319, &qword_10042DEB8, type metadata accessor for Proto_Gnss_Emergency_LocationId, &type metadata accessor for Optional);
                                                                          if (v73 <= 0x3F)
                                                                          {
                                                                            v114 = *(v72 - 8) + 64;
                                                                            sub_1002FFBD0(319, &qword_10042DEC0, type metadata accessor for Proto_Gnss_Emergency_SuplContext, &type metadata accessor for Optional);
                                                                            if (v75 <= 0x3F)
                                                                            {
                                                                              v115 = *(v74 - 8) + 64;
                                                                              sub_1002FFBD0(319, &unk_10042DEC8, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList, &type metadata accessor for Optional);
                                                                              if (v77 <= 0x3F)
                                                                              {
                                                                                v116 = *(v76 - 8) + 64;
                                                                                swift_updateClassMetadata2();
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
        }
      }
    }
  }
}

void sub_1003027C0()
{
  sub_1002FFBD0(319, &qword_10042E590, type metadata accessor for Proto_Gnss_Fix, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v40 = *(v0 - 8) + 64;
    sub_1002FFBD0(319, &qword_10042E598, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v41 = *(v2 - 8) + 64;
      sub_1002FFBD0(319, &qword_10042E5A0, type metadata accessor for Proto_Gnss_PwrMeasurement, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v42 = *(v4 - 8) + 64;
        sub_1002FFBD0(319, &qword_10042E5A8, type metadata accessor for Proto_Gpsd_Status, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          v43 = *(v6 - 8) + 64;
          sub_1002FFBD0(319, &qword_10042E5B0, type metadata accessor for Proto_Gnss_TimeTransferDataExtend, &type metadata accessor for Optional);
          if (v9 <= 0x3F)
          {
            v44 = *(v8 - 8) + 64;
            sub_1002FFBD0(319, &qword_10042E5B8, type metadata accessor for Proto_Gpsd_RecoveryStatistics, &type metadata accessor for Optional);
            if (v11 <= 0x3F)
            {
              v45 = *(v10 - 8) + 64;
              sub_1002FFBD0(319, &qword_10042E5C0, type metadata accessor for Proto_Gpsd_LtlInfoRequest, &type metadata accessor for Optional);
              if (v13 <= 0x3F)
              {
                v46 = *(v12 - 8) + 64;
                sub_1002FFBD0(319, &qword_10042E5C8, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris, &type metadata accessor for Optional);
                if (v15 <= 0x3F)
                {
                  v47 = *(v14 - 8) + 64;
                  sub_1002FFBD0(319, &qword_10042E5D0, type metadata accessor for Proto_Gnss_DecodedRti, &type metadata accessor for Optional);
                  if (v17 <= 0x3F)
                  {
                    v48 = *(v16 - 8) + 64;
                    sub_1002FFBD0(319, &qword_10042E5D8, type metadata accessor for Proto_Gpsd_Exception, &type metadata accessor for Optional);
                    if (v19 <= 0x3F)
                    {
                      v49 = *(v18 - 8) + 64;
                      sub_1002FFBD0(319, &qword_10042E5E0, type metadata accessor for Proto_Gpsd_AskBasebandReset, &type metadata accessor for Optional);
                      if (v21 <= 0x3F)
                      {
                        v50 = *(v20 - 8) + 64;
                        sub_1002FFBD0(319, &qword_10042E5E8, type metadata accessor for Proto_Gnss_Emergency_SummaryReport, &type metadata accessor for Optional);
                        if (v23 <= 0x3F)
                        {
                          v51 = *(v22 - 8) + 64;
                          sub_1002FFBD0(319, &qword_10042E5F0, type metadata accessor for Proto_Gnss_Emergency_PositionReport, &type metadata accessor for Optional);
                          if (v25 <= 0x3F)
                          {
                            v52 = *(v24 - 8) + 64;
                            sub_1002FFBD0(319, &qword_10042E5F8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport, &type metadata accessor for Optional);
                            if (v27 <= 0x3F)
                            {
                              v53 = *(v26 - 8) + 64;
                              sub_1002FFBD0(319, &qword_10042E600, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport, &type metadata accessor for Optional);
                              if (v29 <= 0x3F)
                              {
                                v54 = *(v28 - 8) + 64;
                                sub_1002FFBD0(319, &qword_10042E608, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest, &type metadata accessor for Optional);
                                if (v31 <= 0x3F)
                                {
                                  v55 = *(v30 - 8) + 64;
                                  sub_1002FFBD0(319, &qword_10042E610, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate, &type metadata accessor for Optional);
                                  if (v33 <= 0x3F)
                                  {
                                    v56 = *(v32 - 8) + 64;
                                    sub_1002FFBD0(319, &qword_10042E618, type metadata accessor for Proto_Gnss_Emergency_SessionStatus, &type metadata accessor for Optional);
                                    if (v35 <= 0x3F)
                                    {
                                      v57 = *(v34 - 8) + 64;
                                      sub_1002FFBD0(319, &qword_10042E620, type metadata accessor for Proto_Gnss_Emergency_Init, &type metadata accessor for Optional);
                                      if (v37 <= 0x3F)
                                      {
                                        v58 = *(v36 - 8) + 64;
                                        sub_1002FFBD0(319, &unk_10042E628, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest, &type metadata accessor for Optional);
                                        if (v39 <= 0x3F)
                                        {
                                          v59 = *(v38 - 8) + 64;
                                          swift_updateClassMetadata2();
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

void sub_1003030D0()
{
  sub_1002FFBD0(319, &qword_10042EA70, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1002FFBD0(319, &qword_10042EA78, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1002FFBD0(319, &qword_10042EA80, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1002FFBD0(319, &unk_10042EA88, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1003032F0()
{
  result = qword_10042ED40;
  if (!qword_10042ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ED40);
  }

  return result;
}

unint64_t sub_100303344()
{
  result = qword_10042ED48;
  if (!qword_10042ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ED48);
  }

  return result;
}

unint64_t sub_100303398()
{
  result = qword_10042ED50;
  if (!qword_10042ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ED50);
  }

  return result;
}

unint64_t sub_1003033EC()
{
  result = qword_10042ED58;
  if (!qword_10042ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ED58);
  }

  return result;
}

unint64_t sub_100303440()
{
  result = qword_10042ED60;
  if (!qword_10042ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042ED60);
  }

  return result;
}

uint64_t sub_1003034D8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  xpclog.getter(v6);
  v9 = a1;
  Logger._fault(_:function:file:line:)(sub_100305000, v8, "proxyErrorHandler(error:)", 25, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/XPC/ALXPCService.swift", 77, 2);
  return (*(v3 + 8))(v6, v2);
}

void sub_1003035F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100303678@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__dataService;
  swift_beginAccess();
  return sub_10000D9FC(v1 + v3, a1);
}

uint64_t sub_1003036D0(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__dataService;
  swift_beginAccess();
  sub_100002580((v1 + v3));
  sub_10002351C(a1, v1 + v3);
  return swift_endAccess();
}

char *ALServiceDelegate.init(queue:dataService:)(void *a1, uint64_t *a2)
{
  v24 = type metadata accessor for Logger();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v24);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__queue] = a1;
  sub_10000D9FC(a2, &v2[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__dataService]);
  v9 = objc_allocWithZone(NSXPCListener);
  v10 = a1;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 initWithMachServiceName:v11];

  *&v2[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__listener] = v12;
  v13 = type metadata accessor for ALServiceDelegate();
  v26.receiver = v2;
  v26.super_class = v13;
  v14 = objc_msgSendSuper2(&v26, "init");
  v15 = OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__listener;
  v16 = *&v14[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__listener];
  v17 = *&v14[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__queue];
  v18 = v14;
  [v16 _setQueue:v17];
  [*&v14[v15] setDelegate:v18];
  [*&v14[v15] activate];
  xpclog.getter(v8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_10000234C(0xD000000000000017, 0x80000001003B0490, &v25);
    _os_log_impl(&_mh_execute_header, v19, v20, "serviceName %{public}s started", v21, 0xCu);
    sub_100002580(v22);
  }

  sub_100002580(a2);
  (*(v5 + 8))(v8, v24);
  return v18;
}

uint64_t sub_100303B00(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 valueForEntitlement:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  sub_100304DCC(v24, &v22);
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast() && (v21[15] & 1) != 0)
    {
      xpclog.getter(v9);
      v12 = a1;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67240192;
        *(v15 + 4) = [v12 processIdentifier];

        _os_log_impl(&_mh_execute_header, v13, v14, "Entitlement check passed for pid: %{public}d", v15, 8u);
      }

      else
      {
      }

      v16 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1000059A8(&v22, &qword_10042EF90, &qword_100399100);
  }

  xpclog.getter(v7);
  v17 = a1;
  v13 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = [v17 processIdentifier];

    _os_log_impl(&_mh_execute_header, v13, v18, "Entitlement check failed for pid:%{public}d, connection rejected", v19, 8u);
  }

  else
  {
  }

  v16 = 0;
  v9 = v7;
LABEL_15:

  (*(v3 + 8))(v9, v2);
  sub_1000059A8(v24, &qword_10042EF90, &qword_100399100);
  return v16;
}

uint64_t sub_100303E34(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentConnection];
  if (v10)
  {
    v11 = v10;
    (*((swift_isaMask & *v2) + 0x68))(v19);
    v12 = v20;
    v13 = v21;
    sub_10000D9B8(v19, v20);
    (*(v13 + 8))(a1, a2, v11, v12, v13);

    return sub_100002580(v19);
  }

  else
  {
    xpclog.getter(v9);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Invalid current connnection", v17, 2u);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1003040B4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  xpclog.getter(v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "service,onInterrupt", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100304200(void *a1, const char *a2)
{
  v4 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  xpclog.getter(v10);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20[1] = v4;
    v15 = a2;
    v16 = v14;
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    *(v16 + 4) = v11;
    *v17 = a1;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v16, 0xCu);
    sub_1000059A8(v17, &unk_10042F020, &qword_100399AE0);
  }

  (*(v7 + 8))(v10, v6);
  return sub_1003043C0(a1);
}

uint64_t sub_1003043C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28[-1] - v10;
  if (a1)
  {
    v12 = a1;
    xpclog.getter(v11);
    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v13;
      *v17 = a1;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "service,disconnectHandler,%{public}@", v16, 0xCu);
      sub_1000059A8(v17, &unk_10042F020, &qword_100399AE0);
    }

    v19 = (*(v5 + 8))(v11, v4);
    (*((swift_isaMask & *v2) + 0x68))(v28, v19);
    v20 = v29;
    v21 = v30;
    sub_10000D9B8(v28, v29);
    (*(v21 + 16))(v20, v21);

    return sub_100002580(v28);
  }

  else
  {
    xpclog.getter(v9);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      *(v25 + 4) = 0;
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "service,disconnectHandler,%{public}@", v25, 0xCu);
      sub_1000059A8(v26, &unk_10042F020, &qword_100399AE0);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

id ALServiceDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ALServiceDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ALServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100304824(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  xpclog.getter(&v39 - v10);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 67240450;
    *(v15 + 4) = [v12 processIdentifier];

    *(v15 + 8) = 2114;
    *(v15 + 10) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "New XPC Connection from process:%{public}d, details:(%{public}@)", v15, 0x12u);
    sub_1000059A8(v16, &unk_10042F020, &qword_100399AE0);
  }

  else
  {

    v13 = v12;
  }

  v18 = *(v5 + 8);
  v18(v11, v4);
  v19 = (*((swift_isaMask & *v2) + 0x90))(v12);
  if (v19)
  {
    v39 = v18;
    v40 = v4;
    [v12 setExportedObject:v2];
    v20 = objc_opt_self();
    v21 = [v20 interfaceWithProtocol:&OBJC_PROTOCOL____TtP5ALXPC13ALXPCProtocol_];
    [v12 setExportedInterface:v21];

    v22 = [v20 interfaceWithProtocol:&OBJC_PROTOCOL____TtP5ALXPC13ALXPCProtocol_];
    [v12 setRemoteObjectInterface:v22];

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    *(v24 + 24) = v23;
    v45 = sub_100304F2C;
    v46 = v24;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1000025CC;
    v44 = &unk_100406AF0;
    v25 = _Block_copy(&aBlock);
    v26 = v2;

    [v12 setInterruptionHandler:v25];
    _Block_release(v25);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    v45 = sub_100304F84;
    v46 = v28;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1000025CC;
    v44 = &unk_100406B40;
    v29 = _Block_copy(&aBlock);
    v30 = v26;

    [v12 setInvalidationHandler:v29];
    _Block_release(v29);
    [v12 _setQueue:*&v30[OBJC_IVAR____TtC5ALXPC17ALServiceDelegate__queue]];
    [v12 activate];
    xpclog.getter(v9);
    v31 = v12;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 67240450;
      *(v34 + 4) = [v31 processIdentifier];

      *(v34 + 8) = 2114;
      *(v34 + 10) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "Activated Connection from process:%{public}d, details:(%{public}@)", v34, 0x12u);
      sub_1000059A8(v35, &unk_10042F020, &qword_100399AE0);
    }

    else
    {

      v32 = v31;
    }

    v37 = v40;

    v39(v9, v37);
  }

  return v19 & 1;
}

uint64_t sub_100304DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_10042EF90, &qword_100399100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100304F44()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100304F9C(void (*a1)(void))
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

unint64_t sub_100305000()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(21);

  swift_getErrorValue();
  v2._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v2);

  return 0xD000000000000013;
}

uint64_t sub_100305100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7070614B6C6C6F70 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100305190(uint64_t a1)
{
  v2 = sub_100305494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003051CC(uint64_t a1)
{
  v2 = sub_100305494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100305214@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100305244(uint64_t a1)
{
  v2 = sub_1003054E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100305280(uint64_t a1)
{
  v2 = sub_1003054E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ALIPCProtocol.Request.encode(to:)(void *a1)
{
  v2 = sub_100024A2C(&qword_10042F090, &qword_100399170);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = sub_100024A2C(&qword_10042F098, &qword_100399178);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_10000D9B8(a1, a1[3]);
  sub_100305494();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1003054E8();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_100305494()
{
  result = qword_10048A560;
  if (!qword_10048A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048A560);
  }

  return result;
}

unint64_t sub_1003054E8()
{
  result = qword_10048A568;
  if (!qword_10048A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048A568);
  }

  return result;
}

Swift::Int AONSenseFF.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t ALIPCProtocol.Request.init(from:)(uint64_t *a1)
{
  v3 = sub_100024A2C(&qword_10042F0A0, &qword_100399180);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v21 = sub_100024A2C(&qword_10042F0A8, &qword_100399188);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_10000D9B8(a1, a1[3]);
  sub_100305494();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(KeyedDecodingContainer.allKeys.getter() + 16) == 1)
    {
      sub_1003054E8();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = type metadata accessor for DecodingError();
      swift_allocError();
      v16 = v15;
      v17 = *(sub_100024A2C(&qword_10042F0B0, &qword_100399190) + 48);
      *v16 = &type metadata for ALIPCProtocol.Request;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.typeMismatch(_:), v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return sub_100002580(a1);
}

uint64_t sub_10030589C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7173486 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100305924(uint64_t a1)
{
  v2 = sub_100305D5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100305960(uint64_t a1)
{
  v2 = sub_100305D5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10030599C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1003059EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100305A80(uint64_t a1)
{
  v2 = sub_100305D08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100305ABC(uint64_t a1)
{
  v2 = sub_100305D08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ALIPCProtocol.Reply.encode(to:)(void *a1)
{
  v3 = sub_100024A2C(&qword_10042F0B8, &qword_100399198);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = sub_100024A2C(&qword_10042F0C0, &qword_1003991A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = *v1;
  v14 = a1[4];
  sub_10000D9B8(a1, a1[3]);
  sub_100305D08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100305D5C();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v20 = v13;
  sub_100305DB0();
  v15 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v19 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_100305D08()
{
  result = qword_10048A570;
  if (!qword_10048A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048A570);
  }

  return result;
}

unint64_t sub_100305D5C()
{
  result = qword_10048A578[0];
  if (!qword_10048A578[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048A578);
  }

  return result;
}

unint64_t sub_100305DB0()
{
  result = qword_10042F0C8;
  if (!qword_10042F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042F0C8);
  }

  return result;
}

uint64_t ALIPCProtocol.Reply.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v25 = a2;
  v4 = sub_100024A2C(&qword_10042F0D0, &qword_1003991A8);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v27 = sub_100024A2C(&qword_10042F0D8, &qword_1003991B0);
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v27);
  v11 = &v22 - v10;
  v12 = a1[4];
  sub_10000D9B8(a1, a1[3]);
  sub_100305D08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_5;
  }

  v23 = a1;
  v24 = v8;
  v13 = v27;
  if (*(KeyedDecodingContainer.allKeys.getter() + 16) != 1)
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v13;
    v18 = v17;
    v19 = *(sub_100024A2C(&qword_10042F0B0, &qword_100399190) + 48);
    *v18 = &type metadata for ALIPCProtocol.Reply;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v15);
    swift_willThrow();
    (*(v24 + 8))(v11, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_5:
    v21 = a1;
    return sub_100002580(v21);
  }

  sub_100305D5C();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v14 = v24;
  sub_100306184();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v7, v4);
  (*(v14 + 8))(v11, v13);
  swift_unknownObjectRelease();
  *v25 = v28;
  v21 = v23;
  return sub_100002580(v21);
}

unint64_t sub_100306184()
{
  result = qword_10042F0E0;
  if (!qword_10042F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042F0E0);
  }

  return result;
}

unint64_t sub_1003061DC()
{
  result = qword_10042F0E8;
  if (!qword_10042F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042F0E8);
  }

  return result;
}

unint64_t sub_100306234()
{
  result = qword_10042F0F0;
  if (!qword_10042F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042F0F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALIPCProtocol.Reply(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ALIPCProtocol.Reply(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AONSenseFF(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AONSenseFF(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100306468()
{
  result = qword_10048AC00[0];
  if (!qword_10048AC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048AC00);
  }

  return result;
}

unint64_t sub_1003064C0()
{
  result = qword_10048AE10[0];
  if (!qword_10048AE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048AE10);
  }

  return result;
}

unint64_t sub_100306518()
{
  result = qword_10048B020[0];
  if (!qword_10048B020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048B020);
  }

  return result;
}

unint64_t sub_100306570()
{
  result = qword_10048B130;
  if (!qword_10048B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048B130);
  }

  return result;
}

unint64_t sub_1003065C8()
{
  result = qword_10048B138[0];
  if (!qword_10048B138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048B138);
  }

  return result;
}

unint64_t sub_100306620()
{
  result = qword_10048B1C0;
  if (!qword_10048B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048B1C0);
  }

  return result;
}

unint64_t sub_100306678()
{
  result = qword_10048B1C8[0];
  if (!qword_10048B1C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048B1C8);
  }

  return result;
}

unint64_t sub_1003066D0()
{
  result = qword_10048B250;
  if (!qword_10048B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048B250);
  }

  return result;
}

unint64_t sub_100306728()
{
  result = qword_10048B258[0];
  if (!qword_10048B258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048B258);
  }

  return result;
}

unint64_t sub_100306780()
{
  result = qword_10048B2E0;
  if (!qword_10048B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10048B2E0);
  }

  return result;
}

unint64_t sub_1003067D8()
{
  result = qword_10048B2E8[0];
  if (!qword_10048B2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10048B2E8);
  }

  return result;
}

uint64_t sub_100306844()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_10030687C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t ALRPCInterface.__allocating_init(queue:interval:)(void *a1, double a2)
{
  v4 = swift_allocObject();
  ALRPCInterface.init(queue:interval:)(a1, a2);
  return v4;
}

uint64_t ALRPCInterface.init(queue:interval:)(void *a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for ALShmQueueHandler();
  *(v3 + 16) = 0;
  v7 = (v3 + 16);
  *(v3 + 24) = 0;
  v8 = *(v6 + 48);
  v9 = *(v6 + 52);
  swift_allocObject();
  v10 = a1;
  v11 = ALShmQueueHandler.init(queue:interval:)(v10, a2);
  swift_beginAccess();
  v12 = *(v3 + 24);
  *(v3 + 24) = v11;

  v13 = *(v3 + 24);
  if (v13)
  {
    v14 = j___s8ALRPCShm17ALShmQueueHandlerC05fetchC0yyFTj;
  }

  else
  {
    v14 = 0;
  }

  v15 = type metadata accessor for ALTightbeamHandler();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = ALTightbeamHandler.init(cb:)(v14, v13);
  swift_beginAccess();
  v19 = *v7;
  *v7 = v18;

  if (*(v3 + 24))
  {
    v20 = *v7;

    dispatch thunk of ALShmQueueHandler.registerTightbeamHandler(tbHandler:)();
  }

  return v3;
}

uint64_t sub_100306AF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  result = (*(*v3 + 120))();
  if (result)
  {
    a3(a1, a2);
  }

  return result;
}

uint64_t sub_100306B84()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    dispatch thunk of ALTightbeamHandler.enableWifiReception(enable:)();
  }

  return result;
}

uint64_t ALTightbeamHandler.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ALTightbeamHandler.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100306C60()
{
  v0 = swift_allocObject();
  sub_100306C98();
  return v0;
}

uint64_t sub_100306C98()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  rpclog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RPCclassTest", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return v1;
}

uint64_t sub_100306DDC()
{
  type metadata accessor for ALRPCTest();
  v0 = swift_allocObject();
  result = sub_100306C98();
  qword_10048B378 = v0;
  return result;
}

uint64_t *sub_100306E18()
{
  if (qword_10048B370 != -1)
  {
    swift_once();
  }

  return &qword_10048B378;
}

uint64_t static ALRPCTest.instance.getter()
{
  if (qword_10048B370 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100306EC4(uint64_t a1)
{
  (*(*v1 + 104))();
  (*(*v1 + 128))(a1);
  v3 = swift_slowAlloc();
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  sub_100307CC8(&v5, v3, 5, 1);
  sub_1000234F4(&v5);
}

uint64_t sub_100306F88()
{
  v0 = type metadata accessor for ALTightbeamHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  dispatch thunk of ALTightbeamHandler.hello(number:)();
  dispatch thunk of ALTightbeamHandler.hello(number:)();
  sleep(1u);
}

uint64_t sub_100306FFC()
{
  v0 = type metadata accessor for ALTightbeamHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v3 = dispatch thunk of ALTightbeamHandler.getSamplesQueueSize()();

  return v3;
}

uint64_t sub_100307054()
{
  v0 = type metadata accessor for ALTightbeamHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  dispatch thunk of ALTightbeamHandler.printBufferUsageStatistics()();
}

uint64_t sub_1003070B0(void *a1)
{
  v2 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v53 = v46 - v4;
  v5 = type metadata accessor for ALWiFiNotification();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v54 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v50 = v46 - v10;
  v11 = type metadata accessor for ALWiFiScanResult();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  __chkstk_darwin(v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v46 - v21;
  v23 = type metadata accessor for ALShmQueueHandler();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = ALShmQueueHandler.init(queue:interval:)(a1, 1.0);
  v27 = type metadata accessor for ALTightbeamHandler();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();

  v46[1] = v26;
  ALTightbeamHandler.init(cb:)(j_j___s8ALRPCShm17ALShmQueueHandlerC05fetchC0yyFTj, v26);
  ALWiFiScanSingleAccessPoint.init()();
  ALWiFiScanSingleAccessPoint._mac.setter();
  v55[0] = 0;
  ALWiFiScanSingleAccessPoint._rssidB.setter();
  v55[0] = 0;
  ALWiFiScanSingleAccessPoint._channel.setter();
  ALWiFiScanResult.init()();
  (*(v16 + 16))(v20, v22, v15);
  v49 = ALWiFiScanResult._accessPoints.modify();
  v31 = v30;
  v32 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  v34 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_10000DFC4(0, v32[2] + 1, 1, v32);
    *v31 = v32;
  }

  v36 = v32[2];
  v35 = v32[3];
  if (v36 >= v35 >> 1)
  {
    v32 = sub_10000DFC4(v35 > 1, v36 + 1, 1, v32);
    *v31 = v32;
  }

  v32[2] = v36 + 1;
  v37 = v32 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v36;
  v38 = v34;
  (*(v16 + 32))(v37, v20, v34);
  v49(v55, 0);
  v39 = v50;
  static ALTimeStamp.now()();
  v40 = type metadata accessor for ALTimeStamp();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  ALWiFiScanResult._scanTimestamp.setter();
  v41 = v54;
  ALWiFiNotification.init()();
  v43 = v51;
  v42 = v52;
  v44 = v53;
  (*(v51 + 16))(v53, v14, v52);
  (*(v43 + 56))(v44, 0, 1, v42);
  ALWiFiNotification._scanResult.setter();
  dispatch thunk of ALTightbeamHandler.enqueueWifiSample(notification:)();
  dispatch thunk of ALTightbeamHandler.apOn()();
  sleep(2u);
  dispatch thunk of ALTightbeamHandler.apOff()();

  (*(v47 + 8))(v41, v48);
  (*(v43 + 8))(v14, v42);
  return (*(v16 + 8))(v22, v38);
}

uint64_t sub_100307604(void *a1)
{
  v2 = type metadata accessor for ALShmQueueHandler();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = ALShmQueueHandler.init(queue:interval:)(a1, 1.0);
  v6 = type metadata accessor for ALTightbeamHandler();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  ALTightbeamHandler.init(cb:)(j_j___s8ALRPCShm17ALShmQueueHandlerC05fetchC0yyFTj, v5);
}

uint64_t sub_1003076A8()
{
  v0 = type metadata accessor for ALTightbeamHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  dispatch thunk of ALTightbeamHandler.enableWifiReception(enable:)();
}

uint64_t sub_10030770C()
{
  v0 = type metadata accessor for ALTightbeamHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v3 = dispatch thunk of ALTightbeamHandler.setNumberOfAPsBeforeInterleavingSpecialTimestamp(number:)();

  return v3;
}

uint64_t sub_10030776C()
{
  v0 = type metadata accessor for ALTightbeamHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v3 = dispatch thunk of ALTightbeamHandler.mallocNBlocks(number:)();

  return v3;
}

uint64_t sub_1003077DC()
{
  v0 = type metadata accessor for ALTightbeamHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v3 = dispatch thunk of ALTightbeamHandler.getLargestFreeBlockBytes()();

  return v3;
}

uint64_t sub_100307844()
{
  v0 = type metadata accessor for ALTightbeamHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v3 = dispatch thunk of ALTightbeamHandler.getPowerState()();

  return v3 | ((HIDWORD(v3) & 1) << 32);
}

uint64_t sub_1003078AC()
{
  v0 = type metadata accessor for ALTightbeamHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v3 = dispatch thunk of ALTightbeamHandler.pingForDaemonWatchdog(id:)();

  return v3;
}

uint64_t sub_10030790C()
{
  v0 = type metadata accessor for ALTightbeamHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ALTightbeamHandler.init(cb:)(0, 0);
  v3 = dispatch thunk of ALTightbeamHandler.setAONLogLevel(level:)();

  return v3 & 0x1FF;
}

void sub_100307CC8(unint64_t **a1, unint64_t *a2, int a3, int a4)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a2 + 16;
  a1[3] = 0;
  if (a4)
  {
    atomic_store(0, a2);
    atomic_store(0, *a1 + 8);
  }
}

uint64_t sub_100307CF4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = HIWORD(a3);
  v5 = HIBYTE(a3);
  v18._countAndFlagsBits = 0x3A7367616C66;
  v18._object = 0xE600000000000000;
  sub_100024A2C(&unk_10042F2F0, &unk_100399850);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100374440;
  *(v6 + 56) = &type metadata for UInt8;
  *(v6 + 64) = &protocol witness table for UInt8;
  *(v6 + 32) = v4;
  v7._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v7);

  String.append(_:)(v18);

  strcpy(&v18, ",userflags:");
  HIDWORD(v18._object) = -352321536;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100374440;
  *(v8 + 56) = &type metadata for UInt8;
  *(v8 + 64) = &protocol witness table for UInt8;
  *(v8 + 32) = v5;
  v9._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v9);

  String.append(_:)(v18);

  strcpy(&v18, ",bssid:");
  v18._object = 0xE700000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100374440;
  *(v10 + 56) = &type metadata for UInt64;
  *(v10 + 64) = &protocol witness table for UInt64;
  *(v10 + 32) = a2;
  v11._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v11);

  String.append(_:)(v18);

  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x3A697373722CLL;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);

  strcpy(&v18, ",channel:");
  WORD1(v18._object) = 0;
  HIDWORD(v18._object) = -385875968;
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  String.append(_:)(v18);

  _StringGuts.grow(_:)(16);

  strcpy(&v18, ",timestamp_ns:");
  HIBYTE(v18._object) = -18;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  String.append(_:)(v18);

  v16._countAndFlagsBits = 125;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);

  return 123;
}

double sub_10030810C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

__n128 sub_100308120@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_10030816C(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

__n128 sub_100308208@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  result = *(v1 + 56);
  v5 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_100308258(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v4;
  *(v1 + 88) = *(a1 + 32);
  return result;
}

uint64_t sub_1003082F8()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_100022B94(v1);
  return v1;
}

uint64_t sub_100308348(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_100004820(v5);
}

uint64_t sub_1003083EC()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_100022B94(v1);
  return v1;
}

uint64_t sub_10030843C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return sub_100004820(v5);
}

uint64_t sub_1003084E0()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_100308518(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_1003085EC(double a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_1003086B8(double a1)
{
  result = swift_beginAccess();
  *(v1 + 160) = a1;
  return result;
}

uint64_t sub_100308748()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
  return swift_unknownObjectRetain();
}

uint64_t sub_100308780(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  *(v1 + 168) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100308818()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
}

uint64_t sub_100308850(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

uint64_t sub_10030891C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

uint64_t sub_1003089AC()
{
  swift_beginAccess();
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t sub_1003089E4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 192) = a1;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t sub_100308ABC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 208) = a1;
  return result;
}

uint64_t sub_100308B4C()
{
  swift_beginAccess();
  result = *(v0 + 216);
  v2 = *(v0 + 224);
  return result;
}

uint64_t sub_100308B84(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 216) = a1;
  *(v2 + 224) = a2 & 1;
  return result;
}

uint64_t sub_100308C5C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 232) = a1;
  return result;
}

uint64_t sub_100308D24(double a1)
{
  result = swift_beginAccess();
  *(v1 + 240) = a1;
  return result;
}

uint64_t sub_100308DE8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 248) = a1;
  return result;
}

uint64_t sub_100308EC0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 264) = a1;
  return result;
}

uint64_t sub_100308F50()
{
  swift_beginAccess();
  v1 = *(v0 + 272);
}

uint64_t sub_100308F88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 272);
  *(v1 + 272) = a1;
}

uint64_t sub_100309054(int a1)
{
  result = swift_beginAccess();
  *(v1 + 280) = a1;
  return result;
}

id sub_1003090F0()
{
  swift_beginAccess();
  v1 = *(v0 + 296);

  return v1;
}

void sub_100309134(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 296);
  *(v1 + 296) = a1;
}

uint64_t sub_100309200(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 304) = a1;
  return result;
}

uint64_t ALShmQueueHandler.__allocating_init(queue:interval:)(void *a1, double a2)
{
  swift_allocObject();
  v4 = sub_10030E220(a1, a2);

  return v4;
}

uint64_t ALShmQueueHandler.init(queue:interval:)(void *a1, double a2)
{
  v3 = sub_10030E220(a1, a2);

  return v3;
}

uint64_t sub_100309320()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v4 = String.utf8CString.getter();
  v5 = shmem_map((v4 + 32), 0, &v8);

  if (v5)
  {
    v7 = rpclog.getter(v3);
    __chkstk_darwin(v7);
    Logger._fatal(_:function:file:line:)(sub_10030ED94, (&v8 - 4), "initSharedMemory(name:)", 23, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2, 95);
  }

  return v8;
}

void sub_100309474(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

uint64_t sub_100309480()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100005E28(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006DDC(&qword_100430F50, &unk_10042F300, &qword_10039A520);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t ALShmQueueHandler.deinit()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  swift_beginAccess();
  if (shmem_unmap((v0 + 208)))
  {
    v15 = rpclog.getter(v7);
    __chkstk_darwin(v15);
    v16 = &v20 - 4;
    v19 = 85;
    v17 = sub_10030ED9C;
    goto LABEL_6;
  }

  swift_endAccess();
  swift_beginAccess();
  if (shmem_unmap((v0 + 264)))
  {
    v18 = rpclog.getter(v5);
    __chkstk_darwin(v18);
    v16 = &v20 - 4;
    v19 = 85;
    v17 = sub_10030F764;
LABEL_6:
    Logger._fatal(_:function:file:line:)(v17, v16, "deinitSharedMemory(handle:)", 27, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2, v19);
  }

  swift_endAccess();
  v8 = *(v0 + 104);
  sub_100004820(*(v0 + 96));
  v9 = *(v0 + 120);
  sub_100004820(*(v0 + 112));
  v10 = *(v0 + 128);

  v11 = *(v0 + 168);
  swift_unknownObjectRelease();
  v12 = *(v0 + 176);

  v13 = *(v0 + 272);

  return v0;
}

uint64_t sub_10030976C(io_object_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = shmem_unmap(a1);
  if (result)
  {
    v7 = rpclog.getter(v5);
    __chkstk_darwin(v7);
    Logger._fatal(_:function:file:line:)(sub_10030F764, (&v8 - 4), "deinitSharedMemory(handle:)", 27, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2, 85);
  }

  return result;
}

uint64_t ALShmQueueHandler.__deallocating_deinit()
{
  ALShmQueueHandler.deinit();

  return _swift_deallocClassInstance(v0, 312, 7);
}

unint64_t sub_100309890()
{
  _StringGuts.grow(_:)(29);

  sub_10030F60C();
  v0._countAndFlagsBits = BinaryInteger.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000001BLL;
}

unint64_t sub_100309924()
{
  _StringGuts.grow(_:)(34);

  sub_10030F60C();
  v0._countAndFlagsBits = BinaryInteger.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000020;
}

uint64_t sub_1003099B8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 336);

  return v6(a1, a2);
}

uint64_t sub_100309A38()
{
  v3 = *(*v0 + 480);

  return v3(v1);
}

uint64_t sub_100309A94(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 360);

  return v6(a1, a2);
}

void *sub_100309B14()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v96 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v95 = *(v6 - 8);
  v7 = *(v95 + 64);
  __chkstk_darwin(v6);
  v94 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchTime();
  v93 = *(v98 - 8);
  v9 = *(v93 + 64);
  v10 = __chkstk_darwin(v98);
  v90 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v80 - v12;
  v86 = type metadata accessor for Logger();
  v85 = *(v86 - 8);
  v13 = *(v85 + 64);
  v14 = __chkstk_darwin(v86);
  v83 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v82 = &v80 - v17;
  v18 = __chkstk_darwin(v16);
  v81 = &v80 - v19;
  __chkstk_darwin(v18);
  v84 = &v80 - v20;
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  v21 = swift_allocObject();
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 96) = 0u;
  *(v21 + 112) = 0u;
  *(v21 + 128) = 0u;
  v97 = v21;
  *(v21 + 16) = 0u;
  v22 = sub_10030EDA4((v21 + 16));
  v23 = *(*v0 + 568);
  v24 = v23(v22);
  if (v25)
  {
    goto LABEL_9;
  }

  result = (*(*v0 + 608))(&aBlock);
  if (*v27 == -1)
  {
    __break(1u);
    goto LABEL_41;
  }

  ++*v27;
  v28 = (result)(&aBlock, 0);
  v24 = (*(*v0 + 592))(v28);
  if (v24 < 3)
  {
    goto LABEL_9;
  }

  result = (*(*v0 + 656))(&aBlock);
  if (*v29 == -1)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  ++*v29;
  v30 = (result)(&aBlock, 0);
  v31 = (*(*v0 + 472))(v30);
  v32 = v31;
  if (v31)
  {
    v33 = (*(*v31 + 200))(v31);
  }

  else
  {
    v33 = 0;
  }

  v34 = v32 == 0;
  v35 = v84;
  v36 = rpclog.getter(v84);
  __chkstk_darwin(v36);
  *(&v80 - 4) = v33;
  *(&v80 - 24) = v34;
  v79 = 123;
  Logger._fault(_:function:file:line:)(sub_10030EE5C, (&v80 - 6), "fetchQueue()", 12, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2);
  (*(v85 + 8))(v35, v86);
  v24 = (*(*v1 + 576))(0, 1);
LABEL_9:
  v88 = v6;
  v89 = v3;
  v37 = (*(*v1 + 616))(v24);
  v38 = v1[32];
  v39 = machContTimeSec()();
  result = (*(*v1 + 280))(v104);
  if ((v105 & 1) == 0)
  {
    v87 = v2;
    aBlock = v104[0];
    v101 = v104[1];
    v40 = sub_1000234F4(&aBlock);
    v41 = *(*v1 + 472);
    v42 = v41();
    if (!v42)
    {
      v45 = 0;
      goto LABEL_24;
    }

    v43.n128_f64[0] = v37 + v38;
    v44 = (*(*v42 + 200))(v42, v43);

    v45 = (v37 + v38 > v39 || !v40) && v44 == 0;
    if (v37 + v38 > v39 || !v40 || v44)
    {
LABEL_24:
      v57 = (v41)(v42);
      if (!v57)
      {
        v59 = v83;
        rpclog.getter(v83);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "#ShmQueue, _tbHandler is nil. Skip nudge", v62, 2u);
        }

        v58 = (*(v85 + 8))(v59, v86);
        goto LABEL_39;
      }

      if (v40 && (v45 & 1) == 0)
      {
        v63 = (*(*v57 + 272))(v57);
        if ((v63 & 0x100) != 0)
        {
          v68 = v84;
          rpclog.getter(v84);
          v79 = 157;
          Logger._fault(_:function:file:line:)(sub_10030AA70, 0, "fetchQueue()", 12, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2);
        }

        else
        {
          if (sub_100313670(0) == v63)
          {
            v64 = v82;
            rpclog.getter(v82);

            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 134349056;
              *(v67 + 4) = 0x3FA999999999999ALL;
              _os_log_impl(&_mh_execute_header, v65, v66, "DRAMMove may be stuck, nudging and waiting %{public}f seconds", v67, 0xCu);
            }

            v58 = (*(v85 + 8))(v64, v86);
            goto LABEL_39;
          }

          v68 = v84;
          v69 = rpclog.getter(v84);
          __chkstk_darwin(v69);
          v79 = 154;
          Logger._fault(_:function:file:line:)(sub_10030EDB8, (&v80 - 4), "fetchQueue()", 12, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2);
        }

        v58 = (*(v85 + 8))(v68, v86);
      }

      else
      {
      }

LABEL_39:
      v70 = v90;
      v90 = (*(*v1 + 736))(v58);
      static DispatchTime.now()();
      v71 = v91;
      + infix(_:_:)();
      v93 = *(v93 + 8);
      (v93)(v70, v98);
      v72 = swift_allocObject();
      v73 = v92;
      v72[2] = v1;
      v72[3] = v73;
      v72[4] = v97;
      v102 = sub_10030EDAC;
      v103 = v72;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v101 = sub_100003EE4;
      *(&v101 + 1) = &unk_100407060;
      v74 = _Block_copy(&aBlock);

      v75 = v94;
      static DispatchQoS.unspecified.getter();
      v99 = &_swiftEmptyArrayStorage;
      sub_100005E28(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags);
      sub_100024A2C(&unk_10042F300, &qword_10039A520);
      sub_100006DDC(&qword_100430F50, &unk_10042F300, &qword_10039A520);
      v76 = v96;
      v77 = v87;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v78 = v90;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v74);

      (*(v89 + 8))(v76, v77);
      (*(v95 + 8))(v75, v88);
      (v93)(v71, v98);
    }

    v42 = v23(v42);
    if ((v46 & 1) == 0)
    {
LABEL_23:
      v45 = 1;
      goto LABEL_24;
    }

    v47 = sub_10030DE0C(0xFFFFFFFFFFFFFFFFLL);
    v48 = v41();
    if (v48)
    {
      v49 = v47 + 1;
      v50 = (*(*v48 + 256))(v47 + 1);

      if (v50 != 2 && (v50 & 1) != 0)
      {
        (*(*v1 + 576))(v49, 0);
        v51 = v81;
        rpclog.getter(v81);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 134349056;
          *(v54 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v52, v53, "Pinged AOP2, id: %{public}llu", v54, 0xCu);
        }

        v42 = (*(v85 + 8))(v51, v86);
        goto LABEL_23;
      }
    }

    v55 = v84;
    rpclog.getter(v84);
    v79 = 137;
    Logger._fault(_:function:file:line:)(sub_10030AA54, 0, "fetchQueue()", 12, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2);
    (*(v85 + 8))(v55, v86);
    result = (*(*v1 + 656))(&aBlock);
    if (*v56 != -1)
    {
      ++*v56;
      v42 = (result)(&aBlock, 0);
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_10030AA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v184 = *(v6 - 8);
  v7 = *(v184 + 64);
  v8 = __chkstk_darwin(v6);
  v178 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v167 = &v153 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v153 - v13;
  v15 = __chkstk_darwin(v12);
  v170 = &v153 - v16;
  v17 = __chkstk_darwin(v15);
  v172 = &v153 - v18;
  v19 = __chkstk_darwin(v17);
  v171 = &v153 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v153 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v153 - v25;
  __chkstk_darwin(v24);
  v164 = &v153 - v27;
  v162 = type metadata accessor for Mirror();
  v28 = *(v162 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v162);
  v168 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = (*a1 + 280);
  v32 = *v31;
  v165 = a2;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v33 = swift_beginAccess();
  v161 = v31;
  v160 = v32;
  v32(&v187, v33);
  *(&v34 + 1) = *(&v187 + 1);
  v190 = v187;
  v191 = v188;
  if (v189)
  {
    goto LABEL_78;
  }

  v169 = 0;
  v184 += 8;
  v159 = (v28 + 8);
  *&v34 = 134349312;
  v163 = v34;
  *&v34 = 136315138;
  v173 = v34;
  *&v34 = 134217984;
  v153 = v34;
  *&v34 = 134349056;
  v157 = v34;
  *&v34 = 136316162;
  v156 = v34;
  *(&v35 + 1) = 2;
  v155 = xmmword_100374440;
  *&v35 = 134283521;
  v154 = v35;
  v175 = a1;
  v174 = a3;
  v177 = v6;
  v158 = v14;
  v180 = v23;
  v179 = v26;
  while (1)
  {
    v185 = v190;
    v186 = v191;
    if (sub_1000234F4(&v185))
    {
      break;
    }

    *(v165 + 16) = 1;
    v37 = (*(*a1 + 296))(&v185);
    if (*(v38 + 32))
    {
      goto LABEL_79;
    }

    v39 = v37;
    v40 = v38;
    swift_beginAccess();
    sub_10030F580(v40, (a3 + 16));
    swift_endAccess();
    v39(&v185, 0);
    v41.n128_f64[0] = machContTimeSec()();
    (*(*a1 + 624))(v41);
    v42 = *(a3 + 24);
    v43 = *(a3 + 32);
    v44 = *(a3 + 48);
    v45 = *(a3 + 56);
    v46 = *(a3 + 72);
    v47 = *(a3 + 80);
    v48 = *(a3 + 96);
    v49 = *(a3 + 104);
    v50 = *(a3 + 120);
    v51 = *(v174 + 128);
    *(&v186 + 1) = sub_100024A2C(&qword_10042F728, &qword_100399AC0);
    v52 = swift_allocObject();
    *&v185 = v52;
    *(v52 + 16) = v42;
    *(v52 + 24) = v43;
    *(v52 + 32) = *(v174 + 40);
    *(v52 + 40) = v44;
    *(v52 + 48) = v45;
    *(v52 + 56) = *(v174 + 64);
    *(v52 + 64) = v46;
    *(v52 + 72) = v47;
    *(v52 + 80) = *(v174 + 88);
    *(v52 + 88) = v48;
    *(v52 + 96) = v49;
    *(v52 + 104) = *(v174 + 112);
    *(v52 + 112) = v50;
    *(v52 + 120) = v51;
    v53 = v174;
    *(v52 + 128) = *(v174 + 136);
    Mirror.init(reflecting:)();
    Mirror.children.getter();
    sub_100024A2C(&qword_10042F730, &qword_100399AC8);
    v31 = v169;
    v54 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
    if (v31)
    {
LABEL_83:
      *&v185 = v31;
      sub_100024A2C(&qword_100418350, &unk_10039AB80);
      swift_dynamicCast();
      result = swift_willThrowTypedImpl();
      __break(1u);
      return result;
    }

    v55 = v54;

    v56 = v164;
    rpclog.getter(v164);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v177;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = v163;
      *(v61 + 4) = *(v53 + 16);

      *(v61 + 12) = 2050;
      *(v61 + 14) = *(v55 + 16);

      _os_log_impl(&_mh_execute_header, v57, v58, "#WiFi,fetchQueue,block.next,%{public}ld,count,%{public}ld", v61, 0x16u);
    }

    else
    {
    }

    a1 = v175;
    v62 = v180;
    v183 = *v184;
    v183(v56, v60);
    v63 = *(v53 + 16);
    if (*(v55 + 16) >= v63)
    {
      v64 = *(v53 + 16);
    }

    else
    {
      v64 = *(v55 + 16);
    }

    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_75;
    }

    v169 = 0;
    v65 = v179;
    if (v64)
    {
      v31 = 0;
      v66 = (v55 + 56);
      v182 = v55;
      v181 = v64;
      while (1)
      {
        if (v31 >= *(v55 + 16))
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:

          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:

          __break(1u);
LABEL_81:

          __break(1u);
LABEL_82:

          __break(1u);
          goto LABEL_83;
        }

        if (*v66)
        {
          rpclog.getter(v65);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&_mh_execute_header, v68, v69, "#WiFi,fetchQueue,empty", v70, 2u);
            v65 = v179;
          }

          v183(v65, v60);
          goto LABEL_17;
        }

        v72 = *(v66 - 3);
        v71 = *(v66 - 2);
        v73 = *(v66 - 1);
        rpclog.getter(v62);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();
        v76 = os_log_type_enabled(v74, v75);
        v77 = v178;
        if (v76)
        {
          v78 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          *&v185 = v176;
          *v78 = v173;
          v79 = sub_100307CF4(v72, v71, v73);
          v81 = v73;
          v82 = v66;
          v83 = v31;
          v84 = v72;
          v85 = v71;
          v86 = sub_10000234C(v79, v80, &v185);
          v77 = v178;

          *(v78 + 4) = v86;
          v71 = v85;
          v72 = v84;
          v31 = v83;
          v66 = v82;
          v73 = v81;
          _os_log_impl(&_mh_execute_header, v74, v75, "#WiFi,fetchQueue,wifiscandata,%s", v78, 0xCu);
          sub_100002580(v176);
          a1 = v175;

          v60 = v177;
        }

        v62 = v180;
        v87 = (v183)(v180, v60);
        if (BYTE3(v73) > 1u)
        {
          break;
        }

        if (BYTE3(v73))
        {
          if (BYTE3(v73) == 1)
          {
            v88 = v72;
            rpclog.getter(v171);
            v89 = Logger.logObject.getter();
            v90 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              *v91 = v157;
              *(v91 + 4) = v88;
              _os_log_impl(&_mh_execute_header, v89, v90, "#WiFi,fetchQueue,AOPSERVICETIMESTAMP,timestamp,%{public}llu", v91, 0xCu);
            }

            v92 = v171;
            v60 = v177;
            goto LABEL_58;
          }

          goto LABEL_36;
        }

        v176 = v71;
        v106 = (*a1 + 376);
        v107 = *v106;
        v108 = *((*v106)(v87) + 16);

        if (v108)
        {
          v110 = v107(v109);
          v111 = *(v110 + 16);
          if (!v111)
          {
            goto LABEL_77;
          }

          v112 = *(v110 + 24 * v111 + 8);

          if (v112 < v72)
          {
            v114 = v107(v113);
            v115 = *(v114 + 16);
            if (!v115)
            {
              goto LABEL_80;
            }

            v116 = *(v114 + 24 * v115 + 8);

            v117 = v72 >= v116;
            v118 = v72 - v116;
            if (!v117)
            {
              goto LABEL_76;
            }

            v119 = NsInSec.getter();
            if ((v119 & 0x8000000000000000) != 0 || v119 < v118)
            {
              v120 = machContTimeSec()();
              (*(*a1 + 832))(0, v120);
            }
          }
        }

        v121 = (*(*a1 + 392))(&v185);
        v123 = v122;
        v124 = *v122;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v123 = v124;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v124 = sub_10030DCEC(0, *(v124 + 2) + 1, 1, v124);
          *v123 = v124;
        }

        v127 = *(v124 + 2);
        v126 = *(v124 + 3);
        if (v127 >= v126 >> 1)
        {
          v124 = sub_10030DCEC((v126 > 1), v127 + 1, 1, v124);
          *v123 = v124;
        }

        v60 = v177;
        *(v124 + 2) = v127 + 1;
        v128 = &v124[24 * v127];
        v129 = v176;
        *(v128 + 4) = v72;
        *(v128 + 5) = v129;
        *(v128 + 24) = v73;
        v128[50] = BYTE2(v73);
        v128[51] = 0;
        v121(&v185, 0);
        a1 = v175;
        v130 = (*(*v175 + 776))(&v185);
        if (*v131 == -1)
        {
          goto LABEL_74;
        }

        ++*v131;
        v130(&v185, 0);
        rpclog.getter(v170);

        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          *v134 = v153;
          *(v134 + 4) = (*(*a1 + 760))();

          _os_log_impl(&_mh_execute_header, v132, v133, "#WiFI,fetchQueue,ApCount since daemon start,%llu", v134, 0xCu);
        }

        else
        {
        }

        v62 = v180;
        v65 = v179;
        v67 = v181;
        v183(v170, v60);
        v55 = v182;
LABEL_18:
        ++v31;
        v66 += 32;
        if (v67 == v31)
        {
          goto LABEL_3;
        }
      }

      if (BYTE3(v73) == 2)
      {
        v135 = (*a1 + 568);
        v136 = *v135;
        (*v135)(v87);
        if ((v137 & 1) == 0)
        {
          rpclog.getter(v167);
          swift_retain_n();
          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            *v144 = v163;
            v145 = v136();
            if (v146)
            {
              goto LABEL_82;
            }

            *(v144 + 4) = v145;

            *(v144 + 12) = 2050;
            v148 = (v136)(v147);
            if (v149)
            {
              goto LABEL_81;
            }

            *(v144 + 14) = v148;

            _os_log_impl(&_mh_execute_header, v142, v143, "#WiFi, got pong from watchdog id: %{public}llu, last sent %{public}llu", v144, 0x16u);

            v60 = v177;
          }

          else
          {
          }

          v62 = v180;
          v65 = v179;
          v183(v167, v60);
          (*(*a1 + 576))(0, 1);
          (*(*a1 + 600))(0);
          goto LABEL_17;
        }

        v138 = v158;
        rpclog.getter(v158);
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          *v141 = 0;
          _os_log_impl(&_mh_execute_header, v139, v140, "#WiFi, got pong from lost watchdog id, daemon crashed recently or there was too many samples in intermediate queue", v141, 2u);
        }

        v92 = v138;
LABEL_58:
        v183(v92, v60);
        goto LABEL_61;
      }

      if (BYTE3(v73) == 64)
      {
        rpclog.getter(v172);
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = v154;
          *(v95 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v93, v94, "#WiFi,fetchQueue,ASSOCIATEDBSSIDUPDATE,bssid:%{private}llx", v95, 0xCu);
        }

        v183(v172, v60);
        (*(*a1 + 528))(v71, v71 == 0);
        v96.n128_f64[0] = machContTimeSec()();
        (*(*a1 + 832))(1, v96);
LABEL_61:
        v65 = v179;
LABEL_17:
        v55 = v182;
        v67 = v181;
        goto LABEL_18;
      }

LABEL_36:
      rpclog.getter(v77);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v176 = (v73 >> 16);
        v166 = v73 >> 8;
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v185 = v100;
        *v99 = v156;
        sub_100024A2C(&unk_10042F2F0, &unk_100399850);
        v101 = swift_allocObject();
        *(v101 + 16) = v155;
        *(v101 + 56) = &type metadata for UInt64;
        *(v101 + 64) = &protocol witness table for UInt64;
        *(v101 + 32) = v71;
        v102 = String.init(format:_:)();
        v104 = sub_10000234C(v102, v103, &v185);

        *(v99 + 4) = v104;
        *(v99 + 12) = 258;
        *(v99 + 14) = v73;
        *(v99 + 15) = 258;
        *(v99 + 17) = v166;
        *(v99 + 18) = 258;
        *(v99 + 20) = v176;
        *(v99 + 21) = 2050;
        *(v99 + 23) = v72;
        _os_log_impl(&_mh_execute_header, v97, v98, "#WiFi, Got unrecognized special packet with broadcast BSSID: {bssid:%s, rssi:%{public}hhd, channel:%{public}hhu, flags:%{public}hhu, timestamp:%{public}llu})", v99, 0x1Fu);
        sub_100002580(v100);
        v60 = v177;

        a1 = v175;

        v105 = v178;
      }

      else
      {

        v105 = v77;
      }

      v183(v105, v60);
      v62 = v180;
      goto LABEL_61;
    }

LABEL_3:

    v36 = (*v159)(v168, v162);
    v160(&v187, v36);
    v190 = v187;
    v191 = v188;
    a3 = v174;
    if (v189)
    {
      goto LABEL_78;
    }
  }

  v150 = machContTimeSec()();
  (*(*a1 + 832))(0);
  v151 = v165;
  result = swift_beginAccess();
  if (*(v151 + 16) == 1)
  {
    return (*(*a1 + 824))(result, v150);
  }

  return result;
}

void sub_10030BFD8(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 424))(v7) + 10.0 > a1)
  {
    return;
  }

  v10 = (*(*v1 + 472))();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = (*(*v1 + 352))();
  if (v12)
  {
    v13 = v12;
    v14 = (*(*v11 + 224))();
    if (v16)
    {

      sub_100004820(v13);
      return;
    }

    v17 = v14;
    v18 = v15;
    v19 = (*(*v1 + 496))();
    if (v18 == v19)
    {
LABEL_18:
      (*(*v2 + 432))(v19, a1);

      sub_100004820(v13);
      return;
    }

    v36 = v18;
    v20 = sub_10030EFA0();
    v21 = sub_10030EFA0();
    if (v21 < 0)
    {
      __break(1u);
    }

    else
    {
      v22 = v21;
      v23 = sub_10030EFA8();
      if ((v23 & 0x8000000000000000) == 0)
      {
        if (is_mul_ok(v22, v23))
        {
          v24 = v17 / v20 * 100.0;
          v25 = v22 * v23;
          rpclog.getter(v9);
          v26 = Logger.logObject.getter();
          v34 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v26, v34))
          {
            v27 = swift_slowAlloc();
            v35 = v25;
            v28 = v27;
            *v27 = 134218752;
            *(v27 + 4) = v17;
            *(v27 + 12) = 2048;
            v29 = v36;
            *(v27 + 14) = UsToSec.getter() * v29;
            *(v28 + 22) = 2048;
            *(v28 + 24) = v24;
            *(v28 + 32) = 2048;
            *(v28 + 34) = v35;
            _os_log_impl(&_mh_execute_header, v26, v34, "#AOP2, wake up stats avaiable, numberOfWifiSamplesReceivedWhileAsleep: %llu, timeSinceAPLastSleptInSec: %f, wifiPercentage: %f, wifiBufferSize: %llu", v28, 0x2Au);
            v25 = v35;
          }

          v30 = (*(v5 + 8))(v9, v4);
          v31 = (*(*v2 + 640))(v30);
          v32 = v36;
          v13(v36, v25, v31, v24);
          (*(*v2 + 648))(0);
          v19 = (*(*v2 + 504))(v32);
          goto LABEL_18;
        }

LABEL_22:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_22;
  }
}

void sub_10030C4A4(char a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v80 = &v68 - v13;
  v14 = type metadata accessor for ALWiFiNotification();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v82 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v18 = *(v85 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v85);
  v86 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v83 = &v68 - v23;
  v81 = type metadata accessor for ALWiFiScanResult();
  v84 = *(v81 - 8);
  v24 = *(v84 + 64);
  v25 = __chkstk_darwin(v81);
  v87 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 || ((*v3)[50])(v25) + 1.0 <= a2)
  {
    v27 = ((*v3)[51])(v25, a2);
    v28 = *v3;
    v79 = v3 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v28 += 47;
    v29 = *v28;
    v30 = *((*v28)(v27) + 16);

    if (v30)
    {
      v69 = v10;
      v75 = v15;
      v70 = v7;
      v76 = v14;
      v71 = v6;
      ALWiFiScanResult.init()();
      v31 = v83;
      ALTimeStamp.init(machContinuousTimeSec:)();
      v32 = type metadata accessor for ALTimeStamp();
      v33 = *(v32 - 8);
      v34 = *(v33 + 56);
      v74 = v32;
      v73 = v34;
      v72 = v33 + 56;
      (v34)(v31, 0, 1);
      v35 = ALWiFiScanResult._scanTimestamp.setter();
      v77 = v3;
      v78 = v29(v35);
      v36 = *(v78 + 16);
      if (v36)
      {
        v37 = (v78 + 48);
        do
        {
          sub_10030CD24(*(v37 - 2), *(v37 - 1), *v37, *&a2, 0);
          v38 = ALWiFiScanResult._accessPoints.modify();
          v40 = v39;
          v41 = *v39;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v40 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = sub_10000DFC4(0, v41[2] + 1, 1, v41);
            *v40 = v41;
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            v41 = sub_10000DFC4(v43 > 1, v44 + 1, 1, v41);
            *v40 = v41;
          }

          v37 += 6;
          v41[2] = v44 + 1;
          (*(v18 + 32))(v41 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v44, v86, v85);
          v38(v88, 0);
          --v36;
        }

        while (v36);
      }

      v45 = v82;
      ALWiFiNotification.init()();
      v46 = v83;
      ALTimeStamp.init(machContinuousTimeSec:)();
      v73(v46, 0, 1, v74);
      ALWiFiNotification._timestamp.setter();
      v47 = v84;
      v48 = v80;
      v49 = v81;
      (*(v84 + 16))(v80, v87, v81);
      (*(v47 + 56))(v48, 0, 1, v49);
      ALWiFiNotification._scanResult.setter();
      ALWiFiNotification._simulated.setter();
      v50 = ALWiFiNotification._available.setter();
      v51 = v77;
      (*v77)[65](v50);
      v52 = ALWiFiNotification._associatedMac.setter();
      v53 = (*v51)[41](v52);
      v55 = v75;
      if (v53)
      {
        v56 = v53;
        v86 = v54;
        v53(v45);
        v57 = v69;
        rpclog.getter(v69);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v88[0] = v61;
          *v60 = 136315138;
          swift_beginAccess();
          v62 = ALWiFiNotification.description.getter();
          v64 = sub_10000234C(v62, v63, v88);

          *(v60 + 4) = v64;
          v45 = v82;
          _os_log_impl(&_mh_execute_header, v58, v59, "#WiFi,_onData,notif,%s", v60, 0xCu);
          sub_100002580(v61);

          v49 = v81;
        }

        sub_100004820(v56);

        (*(v70 + 8))(v57, v71);
      }

      v65 = (*v51)[49](v88);
      v67 = *v66;
      *v66 = &_swiftEmptyArrayStorage;

      v65(v88, 0);
      (*(v84 + 8))(v87, v49);
      (*(v55 + 8))(v45, v76);
    }
  }
}

uint64_t sub_10030CD24(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5)
{
  v7 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15[-v9];
  ALWiFiScanSingleAccessPoint.init()();
  ALWiFiScanSingleAccessPoint._mac.setter();
  v15[12] = 0;
  ALWiFiScanSingleAccessPoint._channel.setter();
  v15[8] = 0;
  ALWiFiScanSingleAccessPoint._rssidB.setter();
  v11 = HIWORD(a3) & 3;
  v12 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, **(&off_1004073C0 + v11), v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  result = ALWiFiScanSingleAccessPoint._band.setter();
  if ((a5 & 1) == 0)
  {
    NsToSec.getter();
    v15[4] = 0;
    return ALWiFiScanSingleAccessPoint._ageSec.setter();
  }

  return result;
}

void *sub_10030CECC()
{
  v78 = type metadata accessor for Logger();
  v1 = *(v78 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v78);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v99 = &v71 - v6;
  v76 = type metadata accessor for Mirror();
  v7 = *(v76 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v76);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 304))(v110, v9);
  if (v111)
  {
    return result;
  }

  v75 = v11;
  v108 = v110[0];
  v109 = v110[1];
  v13 = (*v0 + 712);
  v14 = *v13;
  v15 = (*v13)(result);
  v16 = *v0;
  v100 = *(*v0 + 840);
  v101 = v16 + 840;
  v17 = v100(v15);
  v18 = *(*v0 + 688);
  v102 = v0;
  v19 = *(v18() + 16);

  if (HIDWORD(v19))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v72 = v1;
  v20 = v17 - v19;
  if (v17 < v19)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v71 = v5;
  memset(v104, 0, 60);
  v21 = sub_10030EFB0(v104);
  v5 = (v18)(v21);
  v103 = v5;
  v14 = v14();
  v106 = v108;
  v107 = v109;
  if (!sub_1000234F4(&v106))
  {
    v98 = 0;
    v77 = (v72 + 8);
    v74 = (v7 + 1);
    *&v22 = 136315138;
    v73 = v22;
    do
    {
      sub_10030EFC4(&v108, v104);
      LODWORD(v97) = LOBYTE(v104[0]);
      v26 = *(v104 + 1);
      v27 = BYTE5(v104[0]);
      v28 = *(v104 + 6);
      v29 = BYTE10(v104[0]);
      v30 = *(v104 + 11);
      v95 = v104[1];
      LODWORD(v96) = HIBYTE(v104[0]);
      v93 = *(&v104[1] + 5);
      v94 = BYTE4(v104[1]);
      v91 = *(&v104[1] + 10);
      v92 = BYTE9(v104[1]);
      v89 = *(&v104[1] + 15);
      v90 = BYTE14(v104[1]);
      v87 = DWORD1(v104[2]);
      v88 = BYTE3(v104[2]);
      v85 = *(&v104[2] + 9);
      v86 = BYTE8(v104[2]);
      v83 = *(&v104[2] + 14);
      v84 = BYTE13(v104[2]);
      v81 = *(&v104[3] + 3);
      v82 = BYTE2(v104[3]);
      v79 = DWORD2(v104[3]);
      v80 = BYTE7(v104[3]);
      *(&v107 + 1) = sub_100024A2C(&qword_10042F328, &qword_100399878);
      v31 = swift_allocObject();
      *&v106 = v31;
      *(v31 + 16) = v97;
      *(v31 + 17) = v26;
      *(v31 + 21) = v27;
      *(v31 + 22) = v28;
      *(v31 + 26) = v29;
      *(v31 + 27) = v30;
      v32 = v95;
      *(v31 + 31) = v96;
      *(v31 + 32) = v32;
      v33 = v93;
      *(v31 + 36) = v94;
      *(v31 + 37) = v33;
      v34 = v91;
      *(v31 + 41) = v92;
      *(v31 + 42) = v34;
      v35 = v89;
      *(v31 + 46) = v90;
      *(v31 + 47) = v35;
      v36 = v87;
      *(v31 + 51) = v88;
      *(v31 + 52) = v36;
      v37 = v85;
      *(v31 + 56) = v86;
      *(v31 + 57) = v37;
      v38 = v83;
      *(v31 + 61) = v84;
      *(v31 + 62) = v38;
      v39 = v81;
      *(v31 + 66) = v82;
      *(v31 + 67) = v39;
      v40 = v79;
      *(v31 + 71) = v80;
      *(v31 + 72) = v40;
      Mirror.init(reflecting:)();
      Mirror.children.getter();
      sub_100024A2C(&unk_10042F330, &unk_100399880);
      v41 = v98;
      v42 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v98 = v41;
      if (v41)
      {
        *&v106 = v98;
        sub_100024A2C(&qword_100418350, &unk_10039AB80);
        swift_dynamicCast();
        result = swift_willThrowTypedImpl();
        __break(1u);
        return result;
      }

      v7 = v42;

      swift_beginAccess();
      if (!v7[2])
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v43 = 0;
      v44 = v7 + 37;
      while (1)
      {
        if (*v44)
        {
LABEL_15:
          v45 = v14;
          goto LABEL_35;
        }

        v46 = *(v44 - 5);
        if (!v46)
        {
          goto LABEL_10;
        }

        v45 = (v46 | (*(v44 - 1) << 32)) >> 8;
        *(v44 - 1);
        if (v46)
        {
          if (v14)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_10030DBE4(0, *(v5 + 2) + 1, 1, v5);
            }

            v50 = *(v5 + 2);
            v49 = *(v5 + 3);
            if (v50 >= v49 >> 1)
            {
              v5 = sub_10030DBE4((v49 > 1), v50 + 1, 1, v5);
            }

            *(v5 + 2) = v50 + 1;
            *&v5[4 * v50 + 32] = v14;
            v103 = v5;
            if (v50 >= 0x28)
            {
              v51 = v99;
              rpclog.getter(v99);
              v52 = Logger.logObject.getter();
              v53 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v52, v53))
              {
                v54 = swift_slowAlloc();
                v96 = v54;
                v97 = swift_slowAlloc();
                *&v106 = v97;
                *v54 = v73;

                v55 = Array.description.getter();
                v57 = v56;

                v58 = sub_10000234C(v55, v57, &v106);

                v59 = v96;
                *(v96 + 1) = v58;
                _os_log_impl(&_mh_execute_header, v52, v53, "{msg:AOP2 logs received, log:%s}", v59, 0xCu);
                sub_100002580(v97);

                (*v77)(v99, v78);
              }

              else
              {

                (*v77)(v51, v78);
              }

              v103 = &_swiftEmptyArrayStorage;

              v5 = &_swiftEmptyArrayStorage;
            }
          }

          v20 = v100(v45);
        }

        else
        {
          if (!v20)
          {
            goto LABEL_15;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10030DBE4(0, *(v5 + 2) + 1, 1, v5);
          }

          v48 = *(v5 + 2);
          v47 = *(v5 + 3);
          if (v48 >= v47 >> 1)
          {
            v5 = sub_10030DBE4((v47 > 1), v48 + 1, 1, v5);
          }

          *(v5 + 2) = v48 + 1;
          *&v5[4 * v48 + 32] = v45;
          v103 = v5;
          --v20;
          v45 = v14;
        }

LABEL_35:
        if (v43 == 11)
        {
          break;
        }

        ++v43;
        v44 += 6;
        v14 = v45;
        if (v43 >= v7[2])
        {
          goto LABEL_50;
        }
      }

      v14 = v45;
LABEL_10:
      (*v74)(v75, v76);

      v106 = v108;
      v107 = v109;
    }

    while (!sub_1000234F4(&v106));
  }

  if (!v20)
  {
    v7 = v102;
    if (!v14)
    {
LABEL_43:
      (*(*v7 + 696))(&_swiftEmptyArrayStorage);
      v14 = 0;
      goto LABEL_44;
    }

    swift_beginAccess();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_40:
      v61 = *(v5 + 2);
      v60 = *(v5 + 3);
      if (v61 >= v60 >> 1)
      {
        v5 = sub_10030DBE4((v60 > 1), v61 + 1, 1, v5);
      }

      *(v5 + 2) = v61 + 1;
      *&v5[4 * v61 + 32] = v14;
      v103 = v5;
      goto LABEL_43;
    }

LABEL_54:
    v5 = sub_10030DBE4(0, *(v5 + 2) + 1, 1, v5);
    goto LABEL_40;
  }

  v7 = v102;
  v23 = v100(v14);
  v24 = v23 - v20;
  if (v23 < v20)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v25 = sub_10030D9E4(v24, v5);
  (*(*v7 + 696))(v25);
  swift_beginAccess();
  sub_10030DBBC(v24);
LABEL_44:
  (*(*v7 + 720))(v14);
  swift_beginAccess();
  v62 = v71;
  if (*(v103 + 2))
  {
    rpclog.getter(v71);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v105 = v66;
      *v65 = 136315138;

      v67 = Array.description.getter();
      v69 = v68;

      v70 = sub_10000234C(v67, v69, &v105);

      *(v65 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v63, v64, "{msg:AOP2 logs received, log:%s}", v65, 0xCu);
      sub_100002580(v66);
    }

    (*(v72 + 8))(v62, v78);
  }
}

char *sub_10030D9E4(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = result;
  if (result)
  {
    v4 = *(a2 + 16) >= result ? result : *(a2 + 16);
    result = sub_10030DFC0(0, v4, 0);
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = 32;
      do
      {
        v9 = *(a2 + v7);
        v10 = *(&_swiftEmptyArrayStorage + 2);
        if (v10 < v3)
        {
          v8 = *(&_swiftEmptyArrayStorage + 3);
          if (v10 >= v8 >> 1)
          {
            result = sub_10030DFC0((v8 > 1), v10 + 1, 1);
          }

          *(&_swiftEmptyArrayStorage + 2) = v10 + 1;
          *(&_swiftEmptyArrayStorage + v10 + 8) = v9;
        }

        else
        {
          if (v6 >= v10)
          {
            __break(1u);
            goto LABEL_26;
          }

          *(&_swiftEmptyArrayStorage + v6 + 8) = v9;
          if ((v6 + 1) < v3)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }
        }

        v7 += 4;
        --v5;
      }

      while (v5);

      if (!v6)
      {
        return &_swiftEmptyArrayStorage;
      }

      v11 = *(&_swiftEmptyArrayStorage + 2);
      result = sub_10030DFC0(0, v11, 0);
      if (v11 >= v6)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        v12 = *(&_swiftEmptyArrayStorage + 2);
        if (v12 >= v6 && v12 >= v11)
        {

          sub_10030DEA0(v13, &_swiftEmptyArrayStorage + 32, v6, (2 * v11) | 1);
          sub_10030DEA0(&_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage + 32, 0, (2 * v6) | 1);
          return &_swiftEmptyArrayStorage;
        }

        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_10030DBBC(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return sub_10030F450(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_10030DBE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024A2C(&qword_10042F700, &qword_100399A98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10030DCEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024A2C(&qword_10042F738, &qword_100399AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

unint64_t sub_10030DE0C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10030DEA0(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v10;
  if (__OFADD__(v7, v10))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 <= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v7;
    }

    goto LABEL_11;
  }

  v5 = a3;
  v6 = a2;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v11;
  if (!result)
  {
    goto LABEL_8;
  }

  v13 = *(v11 + 24) >> 1;
  if (v13 < v8)
  {
    goto LABEL_19;
  }

  if (v9 == v5)
  {
    while (v10 > 0)
    {
      __break(1u);
LABEL_8:
      if (v7 <= v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = v7;
      }

LABEL_11:
      result = sub_10030DFC0(result, v14, 1);
      v11 = *v4;
      v13 = *(*v4 + 24) >> 1;
      if (v9 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v11 + 16);
  if (v13 - v15 < v10)
  {
    __break(1u);
  }

  else
  {
    result = memcpy((v11 + 4 * v15 + 32), (v6 + 4 * v5), 4 * v10);
    if (v10 <= 0)
    {
LABEL_16:
      result = swift_unknownObjectRelease();
      *v4 = v11;
      return result;
    }

    v16 = *(v11 + 16);
    v17 = __OFADD__(v16, v10);
    v18 = v16 + v10;
    if (!v17)
    {
      *(v11 + 16) = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

char *sub_10030DFC0(char *a1, int64_t a2, char a3)
{
  result = sub_10030DFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10030DFE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024A2C(&qword_10042F700, &qword_100399A98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10030E0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10030F510(a1, v5);

  type metadata accessor for AONLogSample(0);
  result = swift_dynamicCast();
  v4 = v5[14] | (v6 << 32);
  if (!result)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = BYTE4(v4);
  *(a2 + 5) = result ^ 1;
  return result;
}

uint64_t sub_10030E184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10030F510(a1, v7);

  type metadata accessor for aonloc_wifiscandata(0);
  result = swift_dynamicCast();
  v4 = v7[6];
  v5 = v7[7];
  v6 = v7[8];
  if (!result)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = result ^ 1;
  return result;
}

uint64_t sub_10030E220(void *a1, double a2)
{
  v3 = v2;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v54 - 8);
  v6 = *(v53 + 64);
  __chkstk_darwin(v54);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v51 = *(v52 - 8);
  v8 = *(v51 + 64);
  __chkstk_darwin(v52);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchTimeInterval();
  v63 = *(v64 - 8);
  v10 = *(v63 + 64);
  __chkstk_darwin(v64);
  v62 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for DispatchTime();
  v55 = *(v56 - 8);
  v12 = *(v55 + 64);
  __chkstk_darwin(v56);
  v65 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v57 = *(v66 - 8);
  v14 = *(v57 + 64);
  __chkstk_darwin(v66);
  v67 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Logger();
  v58 = *(v59 - 8);
  v16 = *(v58 + 64);
  v17 = __chkstk_darwin(v59);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v49 - v21;
  __chkstk_darwin(v20);
  v24 = &v49 - v23;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 1;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = &_swiftEmptyArrayStorage;
  *(v3 + 136) = 1;
  *(v3 + 144) = xmmword_100399800;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0;
  *(v3 + 200) = 1;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 1;
  *(v3 + 232) = 0;
  *(v3 + 240) = machContTimeSec()();
  *(v3 + 248) = 0;
  *(v3 + 256) = sub_100308E7C();
  *(v3 + 264) = 0;
  *(v3 + 272) = &_swiftEmptyArrayStorage;
  *(v3 + 280) = 0;
  *(v3 + 296) = a1;
  *(v3 + 304) = 0;
  *(v3 + 288) = 0x3FA999999999999ALL;
  *&aBlock = 0;
  v25 = String.utf8CString.getter();
  v26 = a1;
  LODWORD(a1) = shmem_map((v25 + 32), 0, &aBlock);

  if (a1)
  {
    v47 = rpclog.getter(v24);
    __chkstk_darwin(v47);
    Logger._fatal(_:function:file:line:)(sub_10030F768, (&v49 - 2), "initSharedMemory(name:)", 23, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2, 95);
  }

  v27 = aBlock;
  if (aBlock)
  {
    *&aBlock = 0;
    v28 = String.utf8CString.getter();
    v29 = shmem_map((v28 + 32), 0, &aBlock);

    if (v29)
    {
      v48 = rpclog.getter(v22);
      __chkstk_darwin(v48);
      Logger._fatal(_:function:file:line:)(sub_10030F768, (&v49 - 2), "initSharedMemory(name:)", 23, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/ALShmQueueHandler.swift", 82, 2, 95);
    }

    v30 = aBlock;
    if (aBlock)
    {
      swift_beginAccess();
      *(v3 + 208) = v27;
      swift_beginAccess();
      *(v3 + 264) = v30;
      address = shmem_get_address(v27);
      sub_100307CC8(&aBlock, address, 30, 0);
      v50 = aBlock;
      v49 = v69;
      swift_beginAccess();
      v32 = v49;
      *(v3 + 16) = v50;
      *(v3 + 32) = v32;
      *(v3 + 48) = 0;
      v33 = shmem_get_address(v30);
      sub_100307CC8(&aBlock, v33, 61, 0);
      v50 = aBlock;
      v49 = v69;
      swift_beginAccess();
      *(v3 + 72) = v49;
      *(v3 + 56) = v50;
      *(v3 + 88) = 0;
      rpclog.getter(v19);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134349056;
        *(v36 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v34, v35, "Polling interval is %{public}f sec", v36, 0xCu);
      }

      (*(v58 + 8))(v19, v59);
      sub_10030F660();
      swift_beginAccess();
      v37 = *(v3 + 296);
      *&aBlock = &_swiftEmptyArrayStorage;
      sub_100005E28(&unk_10042F750, &type metadata accessor for OS_dispatch_source.TimerFlags);
      v38 = v37;
      sub_100024A2C(&qword_100431A50, &unk_10039ABE0);
      sub_100006DDC(&unk_10042F760, &qword_100431A50, &unk_10039ABE0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

      (*(v57 + 8))(v67, v66);
      swift_beginAccess();
      v40 = *(v3 + 168);
      *(v3 + 168) = v39;
      swift_unknownObjectRelease();
      if (*(v3 + 168))
      {
        v41 = *(v3 + 168);
        swift_getObjectType();
        swift_unknownObjectRetain();
        static DispatchTime.now()();
        v42 = v62;
        *v62 = 0;
        (*(v63 + 104))(v42, enum case for DispatchTimeInterval.nanoseconds(_:), v64);
        OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
        swift_unknownObjectRelease();
        (*(v63 + 8))(v62, v64);
        (*(v55 + 8))(v65, v56);
        if (*(v3 + 168))
        {
          v43 = *(v3 + 168);
          swift_getObjectType();
          v70 = sub_10030F6AC;
          v71 = v3;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v69 = sub_1000025CC;
          *(&v69 + 1) = &unk_100407398;
          v44 = _Block_copy(&aBlock);
          swift_retain_n();
          swift_unknownObjectRetain();
          static DispatchQoS.unspecified.getter();
          sub_100309480();
          OS_dispatch_source.setEventHandler(qos:flags:handler:)();
          _Block_release(v44);

          swift_unknownObjectRelease();
          (*(v53 + 8))(v60, v54);
          (*(v51 + 8))(v61, v52);

          if (*(v3 + 168))
          {
            v45 = *(v3 + 168);
            swift_getObjectType();
            swift_unknownObjectRetain();
            OS_dispatch_source.activate()();
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  return v3;
}

void sub_10030ED70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x10030ED78);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_10030EDB8()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(29);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD00000000000001ALL;
}

uint64_t sub_10030EE5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  _StringGuts.grow(_:)(69);
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v4._object = 0x80000001003B0990;
  String.append(_:)(v4);
  sub_100024A2C(&qword_10042F720, &qword_100399AB8);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._object = 0x80000001003B09C0;
  v6._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v6);
  (*(*v3 + 640))(v7, v8);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  return 0;
}

double sub_10030EFB0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 44) = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_10030EFC4(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 8);
  v3 = atomic_load(*a1);
  v4 = v3 % v2;
  v5 = atomic_load((*a1 + 64));
  if (v4 != v5)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + ((atomic_fetch_add(*a1, 1uLL) % *(a1 + 8)) << 6));
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    *(a2 + 44) = *(v7 + 44);
    a2[1] = v9;
    a2[2] = v10;
    *a2 = v8;
    result = 0.0;
    v7[1] = 0u;
    v7[2] = 0u;
    *(v7 + 44) = 0u;
    *v7 = 0u;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for TicksInfo(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TicksInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TicksInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 sub_10030F210(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10030F244(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10030F258(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030F278(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

__n128 sub_10030F2B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10030F2DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030F2FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

void sub_10030F35C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_10030F3A8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10030F450(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_10030DBE4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_10030F3A8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10030F510(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_10042F708, &unk_100399AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10030F580(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 8);
  v3 = atomic_load(*a1);
  v4 = v3 % v2;
  v5 = atomic_load((*a1 + 64));
  if (v4 != v5)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + ((atomic_fetch_add(*a1, 1uLL) % *(a1 + 8)) << 7));
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    a2[2] = v7[2];
    a2[3] = v10;
    *a2 = v8;
    a2[1] = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    a2[6] = v7[6];
    a2[7] = v13;
    a2[4] = v11;
    a2[5] = v12;
    result = 0.0;
    v7[2] = 0u;
    v7[3] = 0u;
    v7[4] = 0u;
    v7[5] = 0u;
    v7[6] = 0u;
    v7[7] = 0u;
    *v7 = 0u;
    v7[1] = 0u;
  }

  return result;
}

unint64_t sub_10030F60C()
{
  result = qword_10042F740;
  if (!qword_10042F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042F740);
  }

  return result;
}

unint64_t sub_10030F660()
{
  result = qword_100431A40;
  if (!qword_100431A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100431A40);
  }

  return result;
}

void sub_10030F6AC()
{
  v1 = objc_autoreleasePoolPush();
  v2 = (*(*v0 + 816))();
  (*(*v0 + 848))(v2);

  objc_autoreleasePoolPop(v1);
}

uint64_t sub_10030F770()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  rpclog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Tightbeam, got new block.", v9, 2u);
  }

  result = (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = *(v1 + 24);

    v11(v13);
    return sub_100004820(v11);
  }

  return result;
}

uint64_t sub_10030F8D8()
{
  v1 = *(v0 + 24);
  sub_100004820(*(v0 + 16));

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t ALTightbeamHandler.__allocating_init(cb:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ALTightbeamHandler.init(cb:)(a1, a2);
  return v4;
}

uint64_t ALTightbeamHandler.init(cb:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v46 = a2;
  v4 = type metadata accessor for Logger();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TightbeamEndpoint();
  v8 = *(v48 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v48);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v47 = (&v41 - v14);
  __chkstk_darwin(v13);
  v16 = (&v41 - v15);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  rpc_init();
  v49 = 0;
  sub_100310218(0xD000000000000015, 0x80000001003B0AB0, &v49 + 1, &v49);
  *v16 = HIDWORD(v49);
  v17 = v8[13];
  v18 = v48;
  (v17)(v16, enum case for TightbeamEndpoint.afk(_:), v48);
  *v47 = v49;
  v17();
  type metadata accessor for aonloc_service.Service();
  v43 = v8[2];
  v43(v12, v16, v18);
  v19 = sub_1003137FC(v12);
  swift_beginAccess();
  v20 = *(v3 + 16);
  *(v3 + 16) = v19;

  v21 = type metadata accessor for ackHandler();
  v22 = swift_allocObject();
  v44 = v16;
  v23 = v3;
  v24 = v8;
  v25 = v45;
  v26 = v7;
  v27 = v46;
  *(v22 + 16) = v45;
  *(v22 + 24) = v27;
  type metadata accessor for aonloc_callback.Server();
  v43(v12, v47, v48);
  v50[3] = v21;
  v50[4] = &off_100407408;
  v50[0] = v22;

  v28 = v24;
  v29 = v23;
  v30 = v44;
  sub_100022B94(v25);
  v31 = sub_1003173AC(v12, v50);
  swift_beginAccess();
  v32 = *(v29 + 24);
  *(v29 + 24) = v31;

  if (*(v29 + 24))
  {
    v33 = *(v29 + 24);

    sub_100318EE0(v34);
  }

  rpclog.getter(v26);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Tightbeam, init success", v37, 2u);
    v30 = v44;
  }

  sub_100004820(v45);
  (*(v41 + 8))(v26, v42);
  v38 = v28[1];
  v39 = v48;
  v38(v47, v48);
  v38(v30, v39);
  return v29;
}

void sub_10030FE14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void sub_10030FE20(const char *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v22 - v12;
  __chkstk_darwin(v11);
  v15 = v22 - v14;
  server_by_name = rpc_get_server_by_name(a1);
  v17 = server_by_name;
  if (!server_by_name)
  {
    v20 = rpclog.getter(v15);
    __chkstk_darwin(v20);
    v19 = &v22[-4];
    v21 = 72;
    v18 = sub_100313358;
    goto LABEL_11;
  }

  __chkstk_darwin(server_by_name);
  v22[-4] = v17;
  v22[-3] = a2;
  v21 = a3;
  if (("ghtbeamEndpointsHelpers.swift" & 0x1000000000000000) != 0)
  {
    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_7;
  }

  if (("ghtbeamEndpointsHelpers.swift" & 0x2000000000000000) != 0)
  {
    v22[0] = 0xD00000000000001FLL;
    v22[1] = "ghtbeamEndpointsHelpers.swift" & 0xFFFFFFFFFFFFF0;
    if (!rpc_afk_interface_find(v17, v22, 0, a2, a3))
    {
      goto LABEL_7;
    }

    rpclog.getter(v10);
    v21 = 67;
    v18 = sub_1003101FC;
    v19 = 0;
LABEL_11:
    Logger._fatal(_:function:file:line:)(v18, v19, "init(cb:)", 9, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/AFKTightbeamEndpointsHelpers.swift", 93, 2, v21);
  }

  if (rpc_afk_interface_find(v17, (("ghtbeamEndpointsHelpers.swift" & 0xFFFFFFFFFFFFFF0) + 32), 0, a2, a3))
  {
    rpclog.getter(v13);
    v21 = 67;
    v18 = sub_1003101FC;
    v19 = 0;
    goto LABEL_11;
  }

LABEL_7:
  rpc_release_server(v17);
}

uint64_t sub_100310104(const char *a1, const char *a2, _DWORD *a3, _DWORD *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = rpc_afk_interface_find(a2, a1, 0, a3, a4);
  if (result)
  {
    rpclog.getter(v11);
    Logger._fatal(_:function:file:line:)(sub_1003101FC, 0, "init(cb:)", 9, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Interface/RPC/AFKTightbeamEndpointsHelpers.swift", 93, 2, 67);
  }

  return result;
}

void sub_100310218(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v5;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
    return;
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_10030FE20(v4, a3, a4);
}

uint64_t sub_100310300(void (*a1)(void))
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  result = (*(*v1 + 96))(v5);
  if (result)
  {
    a1();
  }

  return result;
}

uint64_t sub_100310544(Swift::UInt64 a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = __chkstk_darwin(v6);
  v9 = &v15 - v8;
  result = (*(*v1 + 96))(v7);
  if (result)
  {
    v11 = sub_100313844(a1);
    rpclog.getter(v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "Tightbeam, hello return: %{public}llu", v14, 0xCu);
    }

    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

unint64_t sub_10031081C()
{
  v53 = type metadata accessor for Logger();
  v1 = *(v53 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v53);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v57 = v43 - v6;
  v7 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v43 - v9;
  v11 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  __chkstk_darwin(v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v43 - v17;
  v19 = type metadata accessor for ALWiFiScanResult();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v56 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 96))(v22);
  v55 = result;
  if (result)
  {
    ALWiFiNotification._scanResult.getter();
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      return sub_1000059A8(v18, &unk_10042F310, &unk_100399860);
    }

    else
    {
      v43[1] = v5;
      v44 = v20;
      v45 = v19;
      (*(v20 + 32))(v56, v18, v19);
      result = ALWiFiScanResult._accessPoints.getter();
      v51 = *(result + 16);
      v52 = result;
      if (v51)
      {
        v26 = v1;
        v27 = 0;
        v50 = v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
        v48 = (v26 + 8);
        v49 = v54 + 16;
        v47 = (v54 + 8);
        *&v25 = 67109120;
        v46 = v25;
        while (v27 < *(v52 + 16))
        {
          (*(v54 + 16))(v14, v50 + *(v54 + 72) * v27, v11);
          ALWiFiScanResult._scanTimestamp.getter();
          v28 = type metadata accessor for ALTimeStamp();
          v29 = *(v28 - 8);
          if ((*(v29 + 48))(v10, 1, v28) == 1)
          {
            result = sub_1000059A8(v10, &qword_100418C70, qword_10039A8A0);
            v30 = 0.0;
          }

          else
          {
            v31 = COERCE_DOUBLE(ALTimeStamp.machContinuousTimeSec.getter());
            v33 = v32;
            result = (*(v29 + 8))(v10, v28);
            if (v33)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v31;
            }
          }

          if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_33;
          }

          if (v30 <= -1.0)
          {
            goto LABEL_34;
          }

          if (v30 >= 1.84467441e19)
          {
            goto LABEL_35;
          }

          result = NsInSec.getter();
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          if (!is_mul_ok(v30, result))
          {
            goto LABEL_37;
          }

          ALWiFiScanSingleAccessPoint.mac.getter();
          result = ALWiFiScanSingleAccessPoint.rssidB.getter();
          if ((result & &_mh_execute_header) != 0)
          {
            v34 = 0;
          }

          else
          {
            v34 = result;
          }

          if (v34 < -128)
          {
            goto LABEL_38;
          }

          if (v34 > 127)
          {
            goto LABEL_39;
          }

          result = ALWiFiScanSingleAccessPoint.channel.getter();
          if ((result & &_mh_execute_header) != 0)
          {
            v35 = 0;
          }

          else
          {
            v35 = result;
          }

          if ((v35 & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          if (v35 > 0xFF)
          {
            goto LABEL_41;
          }

          sub_100313658();
          v39 = sub_10031386C(v36, v37, v38);
          rpclog.getter(v57);
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = v46;
            *(v42 + 4) = v39;
            _os_log_impl(&_mh_execute_header, v40, v41, "Tightbeam, enqueue wifi sample return: %d", v42, 8u);
          }

          ++v27;

          (*v48)(v57, v53);
          result = (*v47)(v14, v11);
          if (v51 == v27)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
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
      }

      else
      {
LABEL_30:

        return (*(v44 + 8))(v56, v45);
      }
    }
  }

  return result;
}

uint64_t sub_100310FEC(char a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = __chkstk_darwin(v6);
  v9 = &v18 - v8;
  result = (*(*v1 + 96))(v7);
  if (result)
  {
    v19 = sub_10031420C(a1 & 1);
    rpclog.getter(v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446466;
      if (a1)
      {
        v15 = 28271;
      }

      else
      {
        v15 = 6710895;
      }

      if (a1)
      {
        v16 = 0xE200000000000000;
      }

      else
      {
        v16 = 0xE300000000000000;
      }

      v17 = sub_10000234C(v15, v16, &v20);

      *(v13 + 4) = v17;
      *(v13 + 12) = 1024;
      *(v13 + 14) = v19 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "Tightbeam, enableWifiReception %{public}s -> %{BOOL}d", v13, 0x12u);
      sub_100002580(v14);
    }

    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

uint64_t sub_100311340(char a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = __chkstk_darwin(v6);
  v9 = &v15 - v8;
  result = (*(*v1 + 96))(v7);
  if (result)
  {
    v11 = sub_1003141E0(a1 & 1);
    rpclog.getter(v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67240192;
      *(v14 + 4) = v11 & 1;
      _os_log_impl(&_mh_execute_header, v12, v13, "Tightbeam, enableCallbackMessages return: %{BOOL,public}d", v14, 8u);
    }

    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

uint64_t sub_10031161C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  if (!(*(*v0 + 96))(v3))
  {
    return -1;
  }

  v4 = sub_100314568();

  return v4;
}

uint64_t sub_10031184C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = __chkstk_darwin(v4);
  v7 = &v22[-v6];
  v8 = __chkstk_darwin(v5);
  v10 = &v22[-v9];
  result = (*(*v0 + 96))(v8);
  if (result)
  {
    v12 = sub_100314590();
    v14 = v13;
    rpclog.getter(v10);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      *(v17 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v15, v16, "numberOfWifiSamplesReceivedWhileAsleep='%{public}llu'", v17, 0xCu);
    }

    v18 = *(v2 + 8);
    v18(v10, v1);
    rpclog.getter(v7);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v19, v20, "timeSinceAPLastSleptInUsecs='%{public}llu'", v21, 0xCu);
    }

    return (v18)(v7, v1);
  }

  return result;
}

uint64_t sub_100311BEC(Swift::UInt64 a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  if (!(*(*v1 + 96))(v5))
  {
    return -1;
  }

  v6 = sub_1003148C8(a1);

  return v6;
}

uint64_t sub_100311E24()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  result = (*(*v0 + 96))(v3);
  if (result)
  {
    v5 = sub_100314590();

    return v5;
  }

  return result;
}

uint64_t sub_100312068(Swift::UInt64 a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  result = (*(*v1 + 96))(v5);
  if (result)
  {
    v7 = sub_100314C1C(a1);

    return v7;
  }

  return result;
}

uint64_t sub_1003122A8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  result = (*(*v0 + 96))(v3);
  if (result)
  {
    v5 = sub_100314C44();

    return v5;
  }

  return result;
}

unint64_t sub_1003124E0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  if ((*(*v0 + 96))(v3))
  {
    v4 = sub_100313EB4();

    v5 = 0;
    v6 = v4;
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  return v6 | (v5 << 32);
}

uint64_t sub_100312724(Swift::UInt64 a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  if (!(*(*v1 + 96))(v5))
  {
    return 2;
  }

  v6 = sub_100314F8C(a1);

  return v6 & 1;
}

uint64_t sub_10031295C(int a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  if ((*(*v1 + 96))(v5))
  {
    v6 = sub_1003152C8(a1);

    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t sub_100312BA0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  if ((*(*v0 + 96))(v3))
  {
    v4 = sub_100315604();

    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 8);
}

uint64_t sub_1003130BC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  rpclog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Tightbeam, hello ack: %llu.", v9, 0xCu);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100313208()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  rpclog.getter(v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Tightbeam, intermediate queue is full.", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100313358()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(29);
  v2._object = 0x80000001003B0C10;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v2);
  sub_100024A2C(&qword_10042FA00, &unk_100399B60);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

Swift::Int sub_100313478()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x40020100u >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_100313508()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x40020100u >> (8 * v1));
  return Hasher._finalize()();
}

uint64_t sub_100313558@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100318808(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1003136C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x100804020100uLL >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_10031375C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x100804020100uLL >> (8 * v1));
  return Hasher._finalize()();
}

uint64_t sub_1003137B0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100318828(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100313804(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_10031386C(Swift::UInt64 a1, Swift::UInt64 a2, unsigned int a3)
{
  v40 = a3;
  v37 = a1;
  v38 = a2;
  v5 = type metadata accessor for TightbeamDecoder();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v34 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TightbeamEncoder();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v39 = type metadata accessor for TightbeamMessage();
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v39);
  v13 = __chkstk_darwin(v12);
  v15 = v30 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v30 - v17;
  __chkstk_darwin(v16);
  v20 = v30 - v19;
  v21 = *(v3 + 16);
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v4)
  {
    v24 = v41;
    type metadata accessor for TransportError();
    v26 = v25;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v27 = v24;
  }

  else
  {
    v22 = v40;
    v32 = HIWORD(v40);
    v33 = HIBYTE(v40);
    v23 = *(v10 + 32);
    v31 = v40 >> 8;
    v30[1] = v10 + 32;
    v23(v18, v20, v39);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0x3545A80215C54633uLL);
    TightbeamEncoder.encode(_:)(v37);
    TightbeamEncoder.encode(_:)(v38);
    TightbeamEncoder.encode(_:)(v22);
    TightbeamEncoder.encode(_:)(v31);
    TightbeamEncoder.encode(_:)(v32);
    TightbeamEncoder.encode(_:)(v33);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v23(v18, v15, v39);
    v29 = v34;
    TightbeamDecoder.init(message:)();
    v26 = TightbeamDecoder.decode(as:)();
    (*(v35 + 8))(v29, v36);
  }

  return v26;
}

uint64_t sub_100313C3C(Swift::UInt64 a1)
{
  v20 = a1;
  v3 = type metadata accessor for TightbeamEncoder();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for TightbeamMessage();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - v12;
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = *(v1 + 16);
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v2)
  {
    v17 = v22;
    type metadata accessor for TransportError();
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v19 = v17;
  }

  else
  {
    (*(v21 + 32))(v13, v15, v5);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(v20);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    return (*(v21 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_100313EB4()
{
  v1 = type metadata accessor for TightbeamDecoder();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TightbeamEncoder();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for TightbeamMessage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - v14;
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = *(v0 + 16);
  v19 = v29;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v19)
  {
    v20 = v30;
    type metadata accessor for TransportError();
    v22 = v21;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v23 = v20;
  }

  else
  {
    v29 = *(v7 + 32);
    v29(v15, v17, v6);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0xC7498AF17471E693);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v29(v15, v12, v6);
    v25 = v26;
    TightbeamDecoder.init(message:)();
    v22 = TightbeamDecoder.decode(as:)();
    (*(v27 + 8))(v25, v28);
  }

  return v22;
}

uint64_t sub_100314238(int a1, Swift::UInt64 a2)
{
  v32 = a2;
  v34 = a1;
  v3 = type metadata accessor for TightbeamDecoder();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  __chkstk_darwin(v3);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TightbeamEncoder();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for TightbeamMessage();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v28 - v16;
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  v20 = *(v2 + 16);
  v21 = v33;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v21)
  {
    v22 = v35;
    type metadata accessor for TransportError();
    v24 = v23;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v25 = v22;
  }

  else
  {
    v33 = *(v9 + 32);
    v33(v17, v19, v8);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(v32);
    TightbeamEncoder.encode(_:)(v34 & 1);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v33(v17, v14, v8);
    v27 = v29;
    TightbeamDecoder.init(message:)();
    v24 = TightbeamDecoder.decode(as:)();
    (*(v30 + 8))(v27, v31);
  }

  return v24 & 1;
}

uint64_t sub_100314590()
{
  v1 = type metadata accessor for TightbeamDecoder();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TightbeamEncoder();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for TightbeamMessage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - v14;
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = *(v0 + 16);
  v19 = v29;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v19)
  {
    v20 = v30;
    type metadata accessor for TransportError();
    v22 = v21;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v23 = v20;
  }

  else
  {
    v29 = *(v7 + 32);
    v29(v15, v17, v6);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0xA9650CE9B29F447FLL);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v29(v15, v12, v6);
    v25 = v26;
    TightbeamDecoder.init(message:)();
    v22 = TightbeamDecoder.decode(as:)();
    TightbeamDecoder.decode(as:)();
    (*(v27 + 8))(v25, v28);
  }

  return v22;
}

uint64_t sub_1003148F0(Swift::UInt64 a1, Swift::UInt64 a2)
{
  v31 = a2;
  v32 = a1;
  v3 = type metadata accessor for TightbeamDecoder();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TightbeamEncoder();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for TightbeamMessage();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v28 - v16;
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  v20 = *(v2 + 16);
  v21 = v33;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v21)
  {
    v22 = v34;
    type metadata accessor for TransportError();
    v24 = v23;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v25 = v22;
  }

  else
  {
    v33 = *(v9 + 32);
    v33(v17, v19, v8);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(v31);
    TightbeamEncoder.encode(_:)(v32);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v33(v17, v14, v8);
    v27 = v28;
    TightbeamDecoder.init(message:)();
    v24 = TightbeamDecoder.decode(as:)();
    (*(v29 + 8))(v27, v30);
  }

  return v24;
}

uint64_t sub_100314C6C(Swift::UInt64 a1)
{
  v31 = a1;
  v2 = type metadata accessor for TightbeamDecoder();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TightbeamEncoder();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for TightbeamMessage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v27 - v15;
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  v19 = *(v1 + 16);
  v20 = v32;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v20)
  {
    v21 = v33;
    type metadata accessor for TransportError();
    v23 = v22;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v24 = v21;
  }

  else
  {
    v32 = *(v8 + 32);
    v32(v16, v18, v7);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(v31);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v32(v16, v13, v7);
    v26 = v28;
    TightbeamDecoder.init(message:)();
    v23 = TightbeamDecoder.decode(as:)();
    (*(v29 + 8))(v26, v30);
  }

  return v23;
}

uint64_t sub_100314F8C(Swift::UInt64 a1)
{
  v31 = a1;
  v3 = type metadata accessor for TightbeamDecoder();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TightbeamEncoder();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for TightbeamMessage();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v27 - v15;
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  v19 = *(v1 + 16);
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v2)
  {
    v21 = v33;
    type metadata accessor for TransportError();
    v23 = v22;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v24 = v21;
  }

  else
  {
    v20 = *(v32 + 32);
    v32 += 32;
    v20(v16, v18, v8);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0x1FD23A08A59E572EuLL);
    TightbeamEncoder.encode(_:)(v31);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v20(v16, v13, v8);
    v26 = v28;
    TightbeamDecoder.init(message:)();
    v23 = TightbeamDecoder.decode(as:)();
    (*(v29 + 8))(v26, v30);
  }

  return v23 & 1;
}

uint64_t sub_1003152C8(int a1)
{
  v31 = a1;
  v3 = type metadata accessor for TightbeamDecoder();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TightbeamEncoder();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for TightbeamMessage();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v27 - v15;
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  v19 = *(v1 + 16);
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v2)
  {
    v21 = v32;
    type metadata accessor for TransportError();
    v23 = v22;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v24 = v21;
  }

  else
  {
    v20 = *(v30 + 32);
    v30 += 32;
    v20(v16, v18, v8);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0xFF3ED4CFB31F2EB2);
    TightbeamEncoder.encode(_:)(v31);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v20(v16, v13, v8);
    v26 = v27;
    TightbeamDecoder.init(message:)();
    v23 = TightbeamDecoder.decode(as:)();
    (*(v28 + 8))(v26, v29);
  }

  return v23;
}

uint64_t sub_100315604()
{
  v1 = type metadata accessor for TightbeamDecoder();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TightbeamEncoder();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for TightbeamMessage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - v14;
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = *(v0 + 16);
  v19 = v29;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v19)
  {
    v20 = v30;
    type metadata accessor for TransportError();
    v22 = v21;
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v23 = v20;
  }

  else
  {
    v29 = *(v7 + 32);
    v29(v15, v17, v6);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0x31F3DFE67868C8DuLL);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v29(v15, v12, v6);
    v25 = v26;
    TightbeamDecoder.init(message:)();
    v22 = TightbeamDecoder.decode(as:)();
    (*(v27 + 8))(v25, v28);
  }

  return v22;
}

uint64_t sub_100315930()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_100315950()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1003159D4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v155 = a3;
  v156 = a2;
  v4 = sub_100024A2C(&qword_10042FA18, &qword_100399B78);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v152 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v145 - v9;
  v11 = __chkstk_darwin(v8);
  v151 = &v145 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v145 - v14;
  v16 = __chkstk_darwin(v13);
  v150 = &v145 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v145 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v145 - v22;
  v24 = __chkstk_darwin(v21);
  v149 = &v145 - v25;
  v26 = __chkstk_darwin(v24);
  v148 = &v145 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v145 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v145 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v145 - v35;
  v37 = __chkstk_darwin(v34);
  v145 = &v145 - v38;
  v39 = __chkstk_darwin(v37);
  v147 = &v145 - v40;
  v41 = __chkstk_darwin(v39);
  v146 = &v145 - v42;
  __chkstk_darwin(v41);
  v44 = &v145 - v43;
  v45 = type metadata accessor for TightbeamEncoder();
  v157 = *(v45 - 8);
  v158 = v44;
  v46 = *(v157 + 56);
  v162 = v45;
  v153 = v46;
  v154 = v157 + 56;
  (v46)(v44, 1, 1);
  v160 = a1;
  v47 = TightbeamDecoder.decode(as:)();
  v48 = v47;
  if (v47 <= 0x31F3DFE67868C8CLL)
  {
    if (v47 <= 0xC7498AF17471E692)
    {
      v49 = v158;
      v50 = v162;
      if (v47 != 0xA336D5BF2102DE71)
      {
        v70 = v162;
        if (v47 == 0xA9650CE9B29F447FLL)
        {
          v71 = v158;
          v72 = v159[6];
          v73 = v159[7];
          sub_10000D9B8(v159 + 3, v72);
          v74 = (*(v73 + 72))(v72, v73);
          v76 = v75;
          v77 = v23;
          v78 = v161;
          _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
          if (!v78)
          {
            v161 = 0;
            v153(v23, 0, 1, v70);
            v56 = *(v157 + 48);
            v136 = v71;
            v50 = v70;
            if (v56(v136, 1, v70) != 1)
            {
              sub_1003188C4(v136);
            }

            sub_10031892C(v77, v136);
            if (!v56(v136, 1, v70))
            {
              TightbeamEncoder.encode(_:)(v74);
              TightbeamEncoder.encode(_:)(v76);
            }

            v49 = v136;
            goto LABEL_97;
          }

          v68 = v163;
          v79 = *(v157 + 48);
          v49 = v71;
          v80 = v71;
        }

        else
        {
          if (v47 != 0xBC40CFF1A461D781)
          {
            goto LABEL_104;
          }

          v108 = v159[6];
          v109 = v159[7];
          sub_10000D9B8(v159 + 3, v108);
          (*(v109 + 32))(v108, v109);
          v110 = v161;
          _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
          if (!v110)
          {
            v161 = 0;
            v153(v36, 0, 1, v50);
            v56 = *(v157 + 48);
            if (v56(v49, 1, v50) != 1)
            {
              sub_1003188C4(v49);
            }

            sub_10031892C(v36, v49);
            goto LABEL_97;
          }

          v68 = v163;
          v79 = *(v157 + 48);
          v80 = v49;
        }

        v111 = v70;
LABEL_62:
        result = v79(v80, 1, v111);
        goto LABEL_63;
      }

      v103 = v159[6];
      v104 = v159[7];
      sub_10000D9B8(v159 + 3, v103);
      v105 = (*(v104 + 96))(v103, v104);
      v106 = v161;
      _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
      if (!v106)
      {
        v161 = 0;
        v153(v15, 0, 1, v50);
        v56 = *(v157 + 48);
        if (v56(v49, 1, v50) != 1)
        {
          sub_1003188C4(v49);
        }

        v107 = v15;
        goto LABEL_70;
      }

      goto LABEL_61;
    }

    v58 = v162;
    if (v47 > 0xF68AD8D4317D2BDALL)
    {
      if (v47 == 0xF68AD8D4317D2BDBLL)
      {
        v82 = v159[6];
        v81 = v159[7];
        sub_10000D9B8(v159 + 3, v82);
        v83 = TightbeamDecoder.decode(as:)();
        v84 = (*(v81 + 48))(v83 & 1, v82, v81);
        v85 = v161;
        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        if (!v85)
        {
          v161 = 0;
          v50 = v58;
          v153(v30, 0, 1, v58);
          v49 = v158;
          v56 = *(v157 + 48);
          if (v56(v158, 1, v58) != 1)
          {
            sub_1003188C4(v49);
          }

          sub_10031892C(v30, v49);
          if (v56(v49, 1, v58))
          {
            goto LABEL_97;
          }

          v131 = v84 & 1;
LABEL_81:
          TightbeamEncoder.encode(_:)(v131);
LABEL_97:
          v140 = (v56)(v49, 1, v50);
          v141 = v140;
          if (v140 == 1)
          {
            v142 = v155;
          }

          else
          {
            v142 = v155;
            if (v140)
            {
              sub_1003188C4(v49);
              v141 = 1;
            }

            else
            {
              TightbeamEncoder.complete()();
            }
          }

          v143 = type metadata accessor for TightbeamMessage();
          return (*(*(v143 - 8) + 56))(v142, v141, 1, v143);
        }

        goto LABEL_25;
      }

      v49 = v158;
      if (v47 != 0xFF3ED4CFB31F2EB2)
      {
        goto LABEL_104;
      }

      v118 = v159[6];
      v119 = v159[7];
      sub_10000D9B8(v159 + 3, v118);
      v120 = TightbeamDecoder.decode(as:)();
      v53 = (*(v119 + 112))(v120, v118, v119);
      v54 = v10;
      v121 = v161;
      _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
      if (!v121)
      {
        v161 = 0;
        v139 = v10;
        v50 = v58;
        v153(v139, 0, 1, v58);
        v56 = *(v157 + 48);
        v57 = v56(v49, 1, v58);
        goto LABEL_93;
      }
    }

    else
    {
      if (v47 == 0xC7498AF17471E693)
      {
        v59 = v159[6];
        v60 = v159[7];
        sub_10000D9B8(v159 + 3, v59);
        v61 = (*(v60 + 40))(v59, v60);
        v62 = v33;
        v63 = v161;
        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        if (!v63)
        {
          v161 = 0;
          v50 = v58;
          v153(v33, 0, 1, v58);
          v49 = v158;
          v56 = *(v157 + 48);
          if (v56(v158, 1, v58) != 1)
          {
            sub_1003188C4(v49);
          }

          sub_10031892C(v62, v49);
          if (!v56(v49, 1, v58))
          {
            TightbeamEncoder.encode(_:)(v61);
          }

          goto LABEL_97;
        }

LABEL_25:
        v68 = v163;
        v86 = v157;
        v49 = v158;
LABEL_46:
        result = (*(v86 + 48))(v49, 1, v58);
        goto LABEL_63;
      }

      v49 = v158;
      if (v47 != 0xE0C4AD75FE620B62)
      {
        goto LABEL_104;
      }

      v112 = v159[6];
      v113 = v159[7];
      sub_10000D9B8(v159 + 3, v112);
      v114 = TightbeamDecoder.decode(as:)();
      v105 = (*(v113 + 80))(v114, v112, v113);
      v115 = v20;
      v116 = v161;
      _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
      if (!v116)
      {
        v161 = 0;
        v50 = v58;
        v153(v20, 0, 1, v58);
        v56 = *(v157 + 48);
        v117 = v56(v49, 1, v58);
LABEL_67:
        if (v117 != 1)
        {
          sub_1003188C4(v49);
        }

        v107 = v115;
LABEL_70:
        sub_10031892C(v107, v49);
        if (!v56(v49, 1, v50))
        {
          TightbeamEncoder.encode(_:)(v105);
        }

        goto LABEL_97;
      }
    }

    v68 = v163;
    v86 = v157;
    goto LABEL_46;
  }

  if (v47 <= 0x32B3991E6CE47130)
  {
    v49 = v158;
    if (v47 <= 0x1FD23A08A59E572DLL)
    {
      v50 = v162;
      if (v47 == 0x31F3DFE67868C8DLL)
      {
        v51 = v159[6];
        v52 = v159[7];
        sub_10000D9B8(v159 + 3, v51);
        v53 = (*(v52 + 120))(v51, v52);
        v54 = v152;
        v55 = v161;
        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        if (!v55)
        {
          v161 = 0;
          v153(v54, 0, 1, v50);
          v56 = *(v157 + 48);
          v57 = v56(v49, 1, v50);
LABEL_93:
          if (v57 != 1)
          {
            sub_1003188C4(v49);
          }

          sub_10031892C(v54, v49);
          if (!v56(v49, 1, v50))
          {
            TightbeamEncoder.encode(_:)(v53);
          }

          goto LABEL_97;
        }

        goto LABEL_61;
      }

      if (v47 == 0x404B81785DEE86ELL)
      {
        v122 = v159[6];
        v123 = v159[7];
        sub_10000D9B8(v159 + 3, v122);
        v124 = TightbeamDecoder.decode(as:)();
        v105 = (*(v123 + 88))(v124, v122, v123);
        v115 = v150;
LABEL_60:
        v135 = v161;
        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        if (v135)
        {
          goto LABEL_61;
        }

        v161 = 0;
        v153(v115, 0, 1, v50);
        v56 = *(v157 + 48);
        v117 = v56(v49, 1, v50);
        goto LABEL_67;
      }

      goto LABEL_104;
    }

    v50 = v162;
    if (v47 == 0x1FD23A08A59E572ELL)
    {
      v87 = v159[6];
      v88 = v159[7];
      sub_10000D9B8(v159 + 3, v87);
      v89 = TightbeamDecoder.decode(as:)();
      v90 = (*(v88 + 104))(v89, v87, v88);
      v91 = v151;
    }

    else
    {
      if (v47 != 0x246C8AC0C407EFA8)
      {
        goto LABEL_104;
      }

      v127 = v159[6];
      v128 = v159[7];
      sub_10000D9B8(v159 + 3, v127);
      v129 = TightbeamDecoder.decode(as:)();
      v90 = (*(v128 + 56))(v129 & 1, v127, v128);
      v91 = v148;
    }

    v130 = v161;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    if (!v130)
    {
      v161 = 0;
      v153(v91, 0, 1, v50);
      v56 = *(v157 + 48);
      if (v56(v49, 1, v50) != 1)
      {
        sub_1003188C4(v49);
      }

      sub_10031892C(v91, v49);
      if (v56(v49, 1, v50))
      {
        goto LABEL_97;
      }

      v131 = v90 & 1;
      goto LABEL_81;
    }

LABEL_61:
    v68 = v163;
    v79 = *(v157 + 48);
    v80 = v49;
    v111 = v50;
    goto LABEL_62;
  }

  if (v47 > 0x3545A80215C54632)
  {
    if (v47 != 0x3545A80215C54633)
    {
      v49 = v158;
      v50 = v162;
      if (v47 == 0x50CEDDD6FEFEC9C4)
      {
        v132 = v159[6];
        v133 = v159[7];
        sub_10000D9B8(v159 + 3, v132);
        v134 = TightbeamDecoder.decode(as:)();
        v105 = (*(v133 + 8))(v134, v132, v133);
        v115 = v146;
        goto LABEL_60;
      }

      goto LABEL_104;
    }

    v92 = v159[6];
    v93 = v159[7];
    sub_10000D9B8(v159 + 3, v92);
    v159 = TightbeamDecoder.decode(as:)();
    v94 = TightbeamDecoder.decode(as:)();
    v95 = TightbeamDecoder.decode(as:)();
    v96 = TightbeamDecoder.decode(as:)();
    v97 = TightbeamDecoder.decode(as:)();
    v98 = TightbeamDecoder.decode(as:)();
    v99 = (*(v93 + 16))(v159, v94, v95 | (v96 << 8) | (v97 << 16) | (v98 << 24), v92, v93);
    v100 = v147;
    v101 = v161;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    if (!v101)
    {
      v161 = 0;
      v138 = v162;
      v153(v100, 0, 1, v162);
      v49 = v158;
      v56 = *(v157 + 48);
      if (v56(v158, 1, v138) != 1)
      {
        sub_1003188C4(v49);
      }

      sub_10031892C(v100, v49);
      v50 = v138;
      if (!v56(v49, 1, v138))
      {
        TightbeamEncoder.encode(_:)(v99);
      }

      goto LABEL_97;
    }

    v68 = v163;
    v69 = v157;
    v49 = v158;
  }

  else
  {
    if (v47 != 0x32B3991E6CE47131)
    {
      v49 = v158;
      v50 = v162;
      if (v47 == 0x32CDF0B3FD13DCEFLL)
      {
        v125 = v159[6];
        v126 = v159[7];
        sub_10000D9B8(v159 + 3, v125);
        v105 = (*(v126 + 64))(v125, v126);
        v115 = v149;
        goto LABEL_60;
      }

LABEL_104:
      v164 = 0;
      v165 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v164 = 0xD00000000000002DLL;
      v165 = 0x80000001003B0D80;
      v166 = v48;
      v144._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v144);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v64 = v159[6];
    v65 = v159[7];
    sub_10000D9B8(v159 + 3, v64);
    (*(v65 + 24))(v64, v65);
    v66 = v145;
    v67 = v161;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    v49 = v158;
    if (!v67)
    {
      v161 = 0;
      v137 = v162;
      v153(v66, 0, 1, v162);
      v56 = *(v157 + 48);
      if (v56(v49, 1, v137) != 1)
      {
        sub_1003188C4(v49);
      }

      sub_10031892C(v66, v49);
      v50 = v162;
      goto LABEL_97;
    }

    v68 = v163;
    v69 = v157;
  }

  result = (*(v69 + 48))(v49, 1, v162);
LABEL_63:
  if (result != 1)
  {
    result = sub_1003188C4(v49);
  }

  *v156 = v68;
  return result;
}