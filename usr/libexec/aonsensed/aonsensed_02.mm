uint64_t sub_1000326A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_1004183A8, &qword_10036C880);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_1004183A8, &qword_10036C880);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_1004183A8, &qword_10036C880);
  }

  sub_10000D84C(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  sub_100012428(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v13, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
}

Swift::Int sub_100032910(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100012428(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100032998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_100032A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012428(&qword_100418B50, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100032B34@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_100005DF0(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100032BD0(uint64_t a1)
{
  v2 = sub_100012428(&qword_1004184F0, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_100032C40()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100032C98()
{
  sub_100012428(&qword_1004184F0, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);

  return Message.hash(into:)();
}

Swift::Int sub_100032D18()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100032D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1000149E4(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        sub_1000149E4(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        sub_100012428(&qword_100418C10, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100014D78(v8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        sub_100014D78(v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100032F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1000149E4(v14, v11, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        sub_1000149E4(v15, v8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        sub_100012428(&qword_100418C08, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100014D78(v8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        sub_100014D78(v11, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_10003315C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (!v3 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v4 = (a1 + 32);
      v5 = (a2 + 32);
      a3();
      do
      {
        v6 = *v4++;
        v7 = *v5++;
        v8 = dispatch thunk of static Equatable.== infix(_:_:)();
        --v3;
      }

      while ((v8 & 1) != 0 && v3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100033210(uint64_t result, uint64_t a2)
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

uint64_t sub_10003326C(uint64_t result)
{
  if (result > 20)
  {
    switch(result)
    {
      case 21:
        return 3;
      case 31:
        return 4;
      case 41:
        return 5;
    }
  }

  else
  {
    if (result < 2)
    {
      return result;
    }

    if (result == 11)
    {
      return 2;
    }
  }

  return 6;
}

uint64_t sub_1000332C8(uint64_t a1)
{
  if (a1 <= 20)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 != 11)
    {
      if (a1 == 12)
      {
        return 2;
      }

      return 7;
    }

    return 1;
  }

  else if (a1 > 30)
  {
    if (a1 != 31)
    {
      if (a1 == 32)
      {
        return 6;
      }

      return 7;
    }

    return 5;
  }

  else
  {
    if (a1 != 21)
    {
      if (a1 == 22)
      {
        return 4;
      }

      return 7;
    }

    return 3;
  }
}

uint64_t sub_100033370(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v7 = a3(0);
  v8 = *(v7 + 24);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
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

  v13 = *(v7 + 28);
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

  v16 = v7;
  if (a4(*a1, *a2))
  {
    v17 = *(v16 + 20);
    type metadata accessor for UnknownStorage();
    sub_100012428(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_100033494(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1000302D8(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100012428(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10003357C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 6)
  {
    if (v7 != 6)
    {
      goto LABEL_18;
    }
  }

  else if (v7 == 6 || qword_10036D718[v6] != qword_10036D718[v7])
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
  sub_100012428(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v16 & 1;
}

uint64_t sub_1000336E0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  __chkstk_darwin(v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_1004183A8, &qword_10036C880);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v51 = &v49 - v8;
  v53 = sub_100024A2C(&qword_100418B98, &qword_10036D680);
  v9 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v56 = &v49 - v10;
  v11 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_1004183A0, &qword_10036C878);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v49 - v18;
  v20 = sub_100024A2C(&qword_100418BA0, &qword_10036D688);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v49 - v23;
  v52 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  v25 = *(v52 + 20);
  v26 = *(v21 + 56);
  v57 = a1;
  sub_10000A0A4(a1 + v25, v24, &qword_1004183A0, &qword_10036C878);
  v27 = v58 + v25;
  v28 = v58;
  sub_10000A0A4(v27, &v24[v26], &qword_1004183A0, &qword_10036C878);
  v29 = *(v12 + 48);
  if (v29(v24, 1, v11) != 1)
  {
    sub_10000A0A4(v24, v19, &qword_1004183A0, &qword_10036C878);
    if (v29(&v24[v26], 1, v11) != 1)
    {
      sub_10000D84C(&v24[v26], v15, type metadata accessor for CLP_LogEntry_AONLoc_Request);
      v33 = sub_100034038(v19, v15);
      sub_100014D78(v15, type metadata accessor for CLP_LogEntry_AONLoc_Request);
      sub_100014D78(v19, type metadata accessor for CLP_LogEntry_AONLoc_Request);
      sub_1000059A8(v24, &qword_1004183A0, &qword_10036C878);
      if ((v33 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }

    sub_100014D78(v19, type metadata accessor for CLP_LogEntry_AONLoc_Request);
LABEL_6:
    v30 = &qword_100418BA0;
    v31 = &qword_10036D688;
    v32 = v24;
LABEL_15:
    sub_1000059A8(v32, v30, v31);
    goto LABEL_16;
  }

  if (v29(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v24, &qword_1004183A0, &qword_10036C878);
LABEL_8:
  v34 = *(v52 + 24);
  v35 = *(v53 + 48);
  v36 = v56;
  sub_10000A0A4(v57 + v34, v56, &qword_1004183A8, &qword_10036C880);
  sub_10000A0A4(v28 + v34, v36 + v35, &qword_1004183A8, &qword_10036C880);
  v37 = v55;
  v38 = *(v54 + 48);
  if (v38(v36, 1, v55) == 1)
  {
    if (v38(v36 + v35, 1, v37) == 1)
    {
      sub_1000059A8(v36, &qword_1004183A8, &qword_10036C880);
LABEL_21:
      type metadata accessor for UnknownStorage();
      sub_100012428(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v40 & 1;
    }

    goto LABEL_13;
  }

  v39 = v51;
  sub_10000A0A4(v36, v51, &qword_1004183A8, &qword_10036C880);
  if (v38(v36 + v35, 1, v37) == 1)
  {
    sub_100014D78(v39, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
LABEL_13:
    v30 = &qword_100418B98;
    v31 = &qword_10036D680;
LABEL_14:
    v32 = v36;
    goto LABEL_15;
  }

  v42 = v50;
  sub_10000D84C(v36 + v35, v50, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  v43 = *(v37 + 20);
  v44 = *(v39 + v43);
  v45 = *(v42 + v43);
  if (v44 != v45)
  {
    v46 = *(v39 + v43);

    v47 = sub_1000302D8(v44, v45);

    if (!v47)
    {
      sub_100014D78(v42, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
      sub_100014D78(v39, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
      v30 = &qword_1004183A8;
      v31 = &qword_10036C880;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100012428(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100014D78(v42, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  sub_100014D78(v39, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  sub_1000059A8(v36, &qword_1004183A8, &qword_10036C880);
  if (v48)
  {
    goto LABEL_21;
  }

LABEL_16:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_100033DC4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v5 = v4[8];
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

  v8 = v4[9];
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

  v13 = v4[10];
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

  v18 = v4[11];
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

  v23 = v4[12];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
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

  v28 = v4;
  if ((sub_10003315C(*a1, *a2, sub_100036268) & 1) == 0 || (sub_10003315C(a1[1], a2[1], sub_100036214) & 1) == 0 || (sub_100033210(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v29 = v28[13];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      return 0;
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
      return 0;
    }
  }

  v34 = v28[14];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 8);
  if (v36)
  {
    if (!v38)
    {
      return 0;
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
      return 0;
    }
  }

  v40 = v28[7];
  type metadata accessor for UnknownStorage();
  sub_100012428(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100034038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gpsd_Request(0);
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  __chkstk_darwin(v4);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v67 = &v64 - v9;
  v10 = sub_100024A2C(&qword_100418C38, &qword_10036D6C8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v64 - v12;
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_100024A2C(&qword_100418368, &qword_10036C840);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = (&v64 - v21);
  v23 = sub_100024A2C(&qword_100418C40, &unk_10036D6D0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v64 - v25;
  v27 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v28 = v27[5];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_38;
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
      goto LABEL_38;
    }
  }

  v33 = v27[6];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_38;
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
      goto LABEL_38;
    }
  }

  v38 = v27[7];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_38;
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
      goto LABEL_38;
    }
  }

  v43 = v27[8];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44 == 6)
  {
    if (v45 != 6)
    {
      goto LABEL_38;
    }
  }

  else if (v45 == 6 || qword_10036D718[v44] != qword_10036D718[v45])
  {
    goto LABEL_38;
  }

  v46 = v27[9];
  v64 = v27;
  v65 = v46;
  v47 = *(v23 + 48);
  sub_10000A0A4(a1 + v46, v26, &qword_100418368, &qword_10036C840);
  v48 = a2 + v65;
  v65 = v47;
  sub_10000A0A4(v48, &v26[v47], &qword_100418368, &qword_10036C840);
  v49 = *(v15 + 48);
  if (v49(v26, 1, v14) != 1)
  {
    sub_10000A0A4(v26, v22, &qword_100418368, &qword_10036C840);
    if (v49(&v26[v65], 1, v14) != 1)
    {
      sub_10000D84C(&v26[v65], v18, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
      v53 = sub_100033DC4(v22, v18);
      sub_100014D78(v18, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
      sub_100014D78(v22, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
      sub_1000059A8(v26, &qword_100418368, &qword_10036C840);
      if ((v53 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    sub_100014D78(v22, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
LABEL_29:
    v50 = &qword_100418C40;
    v51 = &unk_10036D6D0;
    v52 = v26;
LABEL_37:
    sub_1000059A8(v52, v50, v51);
    goto LABEL_38;
  }

  if (v49(&v26[v65], 1, v14) != 1)
  {
    goto LABEL_29;
  }

  sub_1000059A8(v26, &qword_100418368, &qword_10036C840);
LABEL_31:
  v54 = v64[10];
  v55 = *(v10 + 48);
  sub_10000A0A4(a1 + v54, v13, &qword_100418370, &qword_10036C848);
  sub_10000A0A4(a2 + v54, &v13[v55], &qword_100418370, &qword_10036C848);
  v56 = v69;
  v57 = *(v68 + 48);
  if (v57(v13, 1, v69) == 1)
  {
    if (v57(&v13[v55], 1, v56) == 1)
    {
      sub_1000059A8(v13, &qword_100418370, &qword_10036C848);
LABEL_41:
      type metadata accessor for UnknownStorage();
      sub_100012428(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v59 & 1;
    }

    goto LABEL_36;
  }

  v58 = v67;
  sub_10000A0A4(v13, v67, &qword_100418370, &qword_10036C848);
  if (v57(&v13[v55], 1, v56) == 1)
  {
    sub_100014D78(v58, type metadata accessor for Proto_Gpsd_Request);
LABEL_36:
    v50 = &qword_100418C38;
    v51 = &qword_10036D6C8;
    v52 = v13;
    goto LABEL_37;
  }

  v61 = &v13[v55];
  v62 = v66;
  sub_10000D84C(v61, v66, type metadata accessor for Proto_Gpsd_Request);
  sub_100012428(&qword_100418C48, type metadata accessor for Proto_Gpsd_Request);
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100014D78(v62, type metadata accessor for Proto_Gpsd_Request);
  sub_100014D78(v58, type metadata accessor for Proto_Gpsd_Request);
  sub_1000059A8(v13, &qword_100418370, &qword_10036C848);
  if (v63)
  {
    goto LABEL_41;
  }

LABEL_38:
  v59 = 0;
  return v59 & 1;
}

unint64_t sub_100034778()
{
  result = qword_100418408;
  if (!qword_100418408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418408);
  }

  return result;
}

unint64_t sub_1000347D0()
{
  result = qword_100418410;
  if (!qword_100418410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418410);
  }

  return result;
}

unint64_t sub_100034828()
{
  result = qword_100418418;
  if (!qword_100418418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418418);
  }

  return result;
}

unint64_t sub_1000348B0()
{
  result = qword_100418430;
  if (!qword_100418430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418430);
  }

  return result;
}

unint64_t sub_100034908()
{
  result = qword_100418438;
  if (!qword_100418438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418438);
  }

  return result;
}

unint64_t sub_100034960()
{
  result = qword_100418440;
  if (!qword_100418440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418440);
  }

  return result;
}

uint64_t sub_1000349E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100024BB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100035240()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100035958(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100035958(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100035958(319, &qword_100418568, &type metadata for CLP_LogEntry_AONLoc_Request.TypeEnum, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000353F0(319, &qword_100418570, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000353F0(319, &unk_100418578, type metadata accessor for Proto_Gpsd_Request, &type metadata accessor for Optional);
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

void sub_1000353F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for CLP_LogEntry_AONLoc_Request.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_AONLoc_Request.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1000355EC()
{
  sub_100035958(319, &qword_100418618, &type metadata for CLP_LogEntry_AONLoc_BtAdvertisement.BtType, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100035958(319, &qword_100418620, &type metadata for CLP_LogEntry_PrivateData_WifiRfBand, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100035958(319, &qword_100418628, &type metadata for Int32, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          sub_100035958(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100035958(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100035958(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100035958(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_100035958(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
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

void sub_100035838()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100035958(319, &qword_100418568, &type metadata for CLP_LogEntry_AONLoc_Request.TypeEnum, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100035958(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100035958(319, &unk_1004186F8, &type metadata for Proto_Gnss_Result, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100035958(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000359C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1000353F0(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      sub_100035958(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
      if (v7 <= 0x3F)
      {
        sub_100035958(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100035B28()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_AONLoc_Indication.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_AONLoc_Indication.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100035D24()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000353F0(319, &qword_100418928, type metadata accessor for CLP_LogEntry_AONLoc_Request, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000353F0(319, &unk_100418930, type metadata accessor for CLP_LogEntry_AONLoc_Indication, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100035E28()
{
  sub_1000353F0(319, &qword_100418990, type metadata accessor for Proto_Gpsd_Response, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v11 = *(v0 - 8) + 64;
    sub_1000353F0(319, &qword_100418998, type metadata accessor for Proto_Gpsd_Indication, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v12 = *(v2 - 8) + 64;
      sub_1000353F0(319, &qword_1004189A0, type metadata accessor for CLP_LogEntry_AONLoc_Response, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_1000353F0(319, &qword_1004189A8, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication, &type metadata accessor for Optional);
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          sub_1000353F0(319, &unk_1004189B0, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication, &type metadata accessor for Optional);
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_1000360B4()
{
  result = qword_100418B90;
  if (!qword_100418B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418B90);
  }

  return result;
}

uint64_t *sub_100036108(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_10003616C()
{
  result = qword_100418C18;
  if (!qword_100418C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418C18);
  }

  return result;
}

unint64_t sub_1000361C0()
{
  result = qword_100418C20;
  if (!qword_100418C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418C20);
  }

  return result;
}

unint64_t sub_100036214()
{
  result = qword_100418C28;
  if (!qword_100418C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418C28);
  }

  return result;
}

unint64_t sub_100036268()
{
  result = qword_100418C30;
  if (!qword_100418C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418C30);
  }

  return result;
}

uint64_t sub_100036310@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALBtAdvertisement.BtType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_1003FEA28 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_10003638C(uint64_t a1)
{
  v2 = type metadata accessor for ALBtAdvertisement.BtType();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for ALBtAdvertisement.BtType.unknown(_:))
  {
    return 0;
  }

  if (v4 == enum case for ALBtAdvertisement.BtType.type7(_:))
  {
    return 1;
  }

  if (v4 != enum case for ALBtAdvertisement.BtType.type18(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 2;
}

uint64_t sub_100036488@<X0>(uint64_t a1@<X8>)
{
  sub_10000C378(a1);

  return sub_10000C3F4();
}

uint64_t sub_1000364C0(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100024A2C(&unk_1004312C0, &qword_10036D750);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22[-v8];
  v10 = type metadata accessor for ALBtAdvertisement.BtType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100024A2C(&qword_100418C58, &unk_10039A820);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v22[-v17];
  ALBtAdvertisement.init()();
  if (sub_100281C10())
  {
    sub_100281A40();
    ALBtAdvertisement._machContTimeNs.setter();
  }

  if (sub_100281EC8())
  {
    sub_100281CF8();
    ALBtAdvertisement._mac.setter();
  }

  if (sub_100282180())
  {
    sub_100281FB0();
    v22[0] = 0;
    ALBtAdvertisement._rssidB.setter();
  }

  if (sub_10028278C())
  {
    sub_100282520();
    v22[4] = 0;
    ALBtAdvertisement._antennaIndex.setter();
  }

  if (sub_100282B74())
  {
    sub_100282874();
    ALBtAdvertisement._payload.setter();
  }

  if (sub_100282438())
  {
    sub_100282268();
    v22[8] = 0;
    ALBtAdvertisement._channel.setter();
  }

  if (sub_100283650())
  {
    sub_100283480();
    v22[12] = 0;
    ALBtAdvertisement._productID.setter();
  }

  if (sub_100283998())
  {
    sub_100283738();
    ALBtAdvertisement._identifier.setter();
  }

  if (sub_100283D84())
  {
    sub_100283A80();
    ALBtAdvertisement._idsDeviceID.setter();
  }

  if (sub_1002830E0())
  {
    sub_100282F10();
    ALBtAdvertisement._deviceFlags.setter();
  }

  if (sub_100283398())
  {
    sub_1002831C8();
    ALBtAdvertisement._discoveryFlags.setter();
  }

  if (sub_100282E2C())
  {
    v19 = sub_100282C68();
    (*(v11 + 104))(v14, **(&off_1003FEA28 + v19), v10);
    (*(v11 + 32))(v18, v14, v10);
    (*(v11 + 56))(v18, 0, 1, v10);
    ALBtAdvertisement._type.setter();
  }

  if (sub_1002844D0())
  {
    sub_100283E6C(v5);
    sub_100036908(v5);
    v20 = type metadata accessor for ALBtAdvInfoType7();
    (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
    ALBtAdvertisement._type7Info.setter();
  }

  return sub_1000108EC(a1, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
}

uint64_t sub_100036908(uint64_t a1)
{
  v2 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100418C60, &qword_10036D758);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  ALBtAdvInfoType7.init()();
  if (sub_1002855A8())
  {
    sub_100285524();
    ALBtAdvInfoType7._isSameAccount.setter();
  }

  if (sub_100285680())
  {
    sub_1002855FC();
    ALBtAdvInfoType7._isFamily.setter();
  }

  if (sub_100285758())
  {
    sub_1002856D4();
    ALBtAdvInfoType7._isSharedHome.setter();
  }

  if (sub_100285860())
  {
    sub_1002857AC();
    ALBtAdvInfoType7._isLeftBud.setter();
  }

  if (sub_100285968())
  {
    sub_1002858B4();
    ALBtAdvInfoType7._isCase.setter();
  }

  if (sub_100285A78())
  {
    v11 = sub_1002859BC();
    (*(v3 + 104))(v6, **(&off_1003FEA40 + v11), v2);
    (*(v3 + 32))(v10, v6, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
    ALBtAdvInfoType7._placement.setter();
  }

  return sub_1000108EC(a1, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
}

uint64_t sub_100036B60(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1000150EC(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10000D600(&qword_100418C68, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
    return sub_100005B2C(a1, a2);
  }

  sub_10000D648(v13, v11, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
  sub_1000364C0(v11);
  sub_100005B2C(a1, a2);
  return sub_1000108EC(v13, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
}

uint64_t sub_100036D5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v43 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ALBtAdvertisement();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v44 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v40 - v13;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v40 - v21;
  v45 = a2;
  ALBtNotification.init()();
  if (sub_100284F40())
  {
    sub_100284A7C(v18);
    sub_1000B45B8(v18);
    v23 = type metadata accessor for ALTimeStamp();
    (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
    ALBtNotification._timestamp.setter();
  }

  v40[0] = a1;
  v24 = *a1;
  v25 = *(*a1 + 16);
  v26 = v44;
  if (v25)
  {
    v27 = v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = *(v5 + 72);
    v40[2] = v9 + 32;
    v41 = v28;
    v40[1] = v9 + 8;
    v42 = v8;
    do
    {
      v29 = v43;
      sub_10000D648(v27, v43, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      sub_1000364C0(v29);
      (*(v9 + 16))(v26, v14, v8);
      v30 = ALBtNotification._advertisements.modify();
      v32 = v31;
      v33 = *v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_10000D334(0, v33[2] + 1, 1, v33, &unk_100431430, &unk_10039A880, &type metadata accessor for ALBtAdvertisement);
        *v32 = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = sub_10000D334(v35 > 1, v36 + 1, 1, v33, &unk_100431430, &unk_10039A880, &type metadata accessor for ALBtAdvertisement);
        *v32 = v33;
      }

      v33[2] = v36 + 1;
      v37 = v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v36;
      v26 = v44;
      v8 = v42;
      (*(v9 + 32))(v37, v44, v42);
      v30(v46, 0);
      (*(v9 + 8))(v14, v8);
      v27 += v41;
      --v25;
    }

    while (v25);
  }

  v38 = v40[0];
  if (sub_100285144())
  {
    sub_1002850C0();
    ALBtNotification._simulated.setter();
  }

  if (sub_10028524C())
  {
    sub_100285198();
    ALBtNotification._isApOn.setter();
  }

  if (sub_100285324())
  {
    sub_1002852A0();
    ALBtNotification._isScreenOn.setter();
  }

  return sub_1000108EC(v38, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
}

uint64_t sub_100037220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for ALBtNotification();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v35);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = a2;
  ALBtNotifications.init()();
  if (sub_1000283B4() && (v37[0] = sub_1000281F0(), v37[39] = 6, sub_1000348B0(), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0))
  {
    v32 = a1;
    sub_10002AC78(v16);
    v31 = v16;
    v17 = *v16;
    v18 = *(*v16 + 16);
    if (v18)
    {
      v19 = v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v20 = *(v5 + 72);
      v33 = v9 + 32;
      v34 = v20;
      do
      {
        sub_10000D648(v19, v8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
        sub_100036D5C(v8, v12);
        v21 = ALBtNotifications._results.modify();
        v23 = v22;
        v24 = *v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_10000D334(0, v24[2] + 1, 1, v24, &qword_100418C80, &qword_10039A620, &type metadata accessor for ALBtNotification);
          *v23 = v24;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          v24 = sub_10000D334(v26 > 1, v27 + 1, 1, v24, &qword_100418C80, &qword_10039A620, &type metadata accessor for ALBtNotification);
          *v23 = v24;
        }

        v24[2] = v27 + 1;
        (*(v9 + 32))(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v12, v35);
        v21(v37, 0);
        v19 += v34;
        --v18;
      }

      while (v18);
    }

    a1 = v31;
    sub_1000278BC();
    ALBtNotifications._isLastBatch.setter();
    sub_1000108EC(v32, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v28 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication;
  }

  else
  {
    v28 = type metadata accessor for CLP_LogEntry_AONLoc_Indication;
  }

  return sub_1000108EC(a1, v28);
}

uint64_t ALBtNotifications.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v17 - v14;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_1000150EC(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10000D600(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return sub_100005B2C(a1, a2);
  }

  sub_10000D648(v15, v13, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  sub_100037220(v13, a3);
  sub_100005B2C(a1, a2);
  return sub_1000108EC(v15, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
}

uint64_t sub_1000377DC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_1003FEA40 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_100037858(uint64_t a1)
{
  v2 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for ALBtAdvInfoType7.Placement.unknown(_:))
  {
    return 0;
  }

  if (v4 == enum case for ALBtAdvInfoType7.Placement.inEar(_:))
  {
    return 1;
  }

  if (v4 == enum case for ALBtAdvInfoType7.Placement.outOfEar(_:))
  {
    return 2;
  }

  if (v4 == enum case for ALBtAdvInfoType7.Placement.inCase(_:))
  {
    return 3;
  }

  if (v4 == enum case for ALBtAdvInfoType7.Placement.onEar(_:))
  {
    return 4;
  }

  if (v4 == enum case for ALBtAdvInfoType7.Placement.offEar(_:))
  {
    return 5;
  }

  if (v4 == enum case for ALBtAdvInfoType7.Placement.onNeck(_:))
  {
    return 6;
  }

  if (v4 != enum case for ALBtAdvInfoType7.Placement.disabled(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 7;
}

char *sub_1000379E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100037A2C(a1, a2);
  sub_100037B5C(&off_1003FEA00);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100037A2C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100037C48(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100037C48(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100037B5C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100037CBC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100037C48(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100024A2C(&unk_10042F710, &unk_100399160);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100037CBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024A2C(&unk_10042F710, &unk_100399160);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100037DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AEADC();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_100037E0C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017A64(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100037E44@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017A64(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100037EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AEA88();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100037F04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009E62C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100037F50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009E62C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100037FC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AEA34();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_10003800C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009E6B4(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100038044@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009E6B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10003808C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AE9E0();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000380D8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017A74(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100038110@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017A74(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100038148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AE98C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000381B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AE938();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10003821C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AE8E4();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_100038268@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017A84(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000382A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017A84(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000382D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AE890();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_100038334(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_100038350(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AE83C();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_10003839C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t *sub_1000383C0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000383E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AE7E8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10003844C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AE794();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000384B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AE740();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_100038504@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000234E4(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10003853C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000234E4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100038580(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000385B8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100038650()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100038680()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 24));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000386AC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1000386DC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_100038768()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  *(v0 + *(result + 24)) = 5;
  return result;
}

uint64_t sub_100038790@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 4) = 1;
  *(a1 + *(result + 24)) = 5;
  return result;
}

uint64_t sub_1000387FC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_100038838(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100038870(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100038908()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100038938@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418C90, &qword_10036D800);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100418C90, &qword_10036D800);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a1 + *(v8 + 24)) = 5;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418C90, &qword_10036D800);
  }

  return result;
}

uint64_t sub_100038AAC(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100418C90, &qword_10036D800);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100038B64(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418C90, &qword_10036D800) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418C90, &qword_10036D800);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    *(v13 + *(v8 + 24)) = 5;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418C90, &qword_10036D800);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  }

  return sub_100038D90;
}

uint64_t sub_100038EA0(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100038ED8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100038F70()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100038FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418C98, &qword_10036D808);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100418C98, &qword_10036D808);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = *(v8 + 24);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418C98, &qword_10036D808);
  }

  return result;
}

uint64_t sub_10003914C(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100418C98, &qword_10036D808);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100039204(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418C98, &qword_10036D808) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418C98, &qword_10036D808);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = *(v8 + 24);
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418C98, &qword_10036D808);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  }

  return sub_100039468;
}

BOOL sub_1000394E0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_10000A0A4(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000059A8(v12, a1, a2);
  return v15;
}

uint64_t sub_100039618(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1000396C4()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1000396F8(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100039730(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000397C8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000397F8()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_10003982C(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100039864(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000398FC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_10003992C()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_100039960(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100039998(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100039A30()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100039A60()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_100039A94(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100039ACC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100039B64()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100039B94()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 44));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_100039BC8(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100039C00(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100039C98()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100039CC8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_100039DC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_100039E4C(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100039E84(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_100026A50;
}

uint64_t sub_100039F1C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100039F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CA0, &qword_10036D810);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100418CA0, &qword_10036D810);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v8[6];
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v8[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v8[11];
  *v17 = 0;
  *(v17 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CA0, &qword_10036D810);
  }

  return result;
}

uint64_t sub_10003A150(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100418CA0, &qword_10036D810);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10003A208(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CA0, &qword_10036D810) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418CA0, &qword_10036D810);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v8[6];
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    v19 = v13 + v8[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[9];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[10];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[11];
    *v23 = 0;
    *(v23 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CA0, &qword_10036D810);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  }

  return sub_10003A4BC;
}

uint64_t sub_10003A59C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = a1(0);
  v7 = a3 + *(v6 + 20);
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = *(v6 + 24);
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t sub_10003A684(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_10003A6B4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003A73C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_10003A78C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_10003A7BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003A844()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_10003A894(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10003A8C4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003A94C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_10003A99C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_10003A9CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003AA54()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_10003AABC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_10003AAEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003AB74()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_10003ABC4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_10003ABF4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003AC7C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_10003ACCC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10003ACFC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003AD84()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_10003ADD4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_10003AE04(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003AE8C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_10003AEDC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_10003AF0C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003AF94()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_10003AFFC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_10003B02C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003B0B4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_10003B104(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_10003B134(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003B1BC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_10003B20C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10003B23C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003B2C4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_10003B314(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_10003B344(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003B3CC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

int *sub_10003B40C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a2 + result[5]) = 2;
  *(a2 + result[6]) = 2;
  *(a2 + result[7]) = 2;
  *(a2 + result[8]) = 2;
  return result;
}

uint64_t sub_10003B48C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_10003B4BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003B544()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_10003B594(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_10003B5C4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003B64C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_10003B69C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10003B6CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003B754()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_10003B7A4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_10003B7D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003B85C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_10003B8AC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_10003B8DC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003B964()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

int *sub_10003B9A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a2 + result[5]) = 2;
  *(a2 + result[6]) = 2;
  *(a2 + result[7]) = 2;
  *(a2 + result[8]) = 2;
  *(a2 + result[9]) = 2;
  return result;
}

uint64_t sub_10003BA2C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_10003BA5C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003BAE4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_10003BB34(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_10003BB64(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003BBEC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_10003BC3C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10003BC6C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003BCF4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_10003BD44(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_10003BD74(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003BDFC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_10003BE64(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_10003BE94(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003BF1C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_10003BF6C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_10003BF9C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003C024()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_10003C074(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10003C0A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003C12C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_10003C17C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_10003C1AC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003C234()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_10003C29C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_10003C2CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003C354()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_10003C3A4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_10003C3D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003C45C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_10003C4AC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10003C4DC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003C564()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_10003C5B4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_10003C5E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003C66C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_10003C6D4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_10003C704(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003C78C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_10003C7DC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_10003C80C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003C894()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_10003C8E4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10003C914(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003C99C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_10003C9EC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_10003CA1C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003CAA4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_10003CAF4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_10003CB24(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003CBAC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_10003CBFC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*sub_10003CC2C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003CCB4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v0 + *(result + 40)) = 2;
  return result;
}

uint64_t sub_10003CD04(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*sub_10003CD34(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003CDBC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v0 + *(result + 44)) = 2;
  return result;
}

uint64_t sub_10003CE0C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*sub_10003CE3C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003CEC4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v0 + *(result + 48)) = 2;
  return result;
}

uint64_t sub_10003CF14(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*sub_10003CF44(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003CFCC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v0 + *(result + 52)) = 2;
  return result;
}

uint64_t sub_10003D01C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t (*sub_10003D04C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 56);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003D0D4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(v0 + *(result + 56)) = 2;
  return result;
}

int *sub_10003D0FC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 2;
  *(a1 + result[11]) = 2;
  *(a1 + result[12]) = 2;
  *(a1 + result[13]) = 2;
  *(a1 + result[14]) = 2;
  return result;
}

uint64_t sub_10003D1A4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_10003D1D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003D25C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_10003D2AC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_10003D2DC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003D364()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_10003D3B4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10003D3E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10003D46C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

int *sub_10003D494@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  return result;
}

uint64_t sub_10003D4DC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 13)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_10003D530(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10007263C(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  return result;
}

void (*sub_10003D5C8(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 13)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_10003D670;
}

void sub_10003D670(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10007263C(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;

  free(v1);
}

BOOL sub_10003D738()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 13;
}

uint64_t sub_10003D78C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_10007263C(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 16) = 13;
  return result;
}

uint64_t sub_10003D81C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CA8, &qword_10036D818);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CA8, &qword_10036D818);
  }

  return result;
}

uint64_t sub_10003D9B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007263C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CA8, &qword_10036D818);
  return swift_endAccess();
}

void (*sub_10003DB24(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CA8, &qword_10036D818) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CA8, &qword_10036D818);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CA8, &qword_10036D818);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  }

  return sub_10003DD94;
}

void sub_10003DD94(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007263C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CA8, &qword_10036D818);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007263C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CA8, &qword_10036D818);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10003DFE4()
{
  v1 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CA8, &qword_10036D818);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CA8, &qword_10036D818);
  return v8;
}

uint64_t sub_10003E104()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007263C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CA8, &qword_10036D818);
  return swift_endAccess();
}

uint64_t sub_10003E24C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CB0, &qword_10036D820);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CB0, &qword_10036D820);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  *(a1 + v9[9]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CB0, &qword_10036D820);
  }

  return result;
}

uint64_t sub_10003E3F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CB0, &qword_10036D820);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007263C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CB0, &qword_10036D820);
  return swift_endAccess();
}

void (*sub_10003E55C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CB0, &qword_10036D820) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CB0, &qword_10036D820);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    *(v13 + v8[9]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CB0, &qword_10036D820);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  }

  return sub_10003E7D4;
}

void sub_10003E7D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007263C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CB0, &qword_10036D820);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007263C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CB0, &qword_10036D820);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10003EA24()
{
  v1 = sub_100024A2C(&qword_100418CB0, &qword_10036D820);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CB0, &qword_10036D820);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CB0, &qword_10036D820);
  return v8;
}

uint64_t sub_10003EB44()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CB0, &qword_10036D820);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007263C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CB0, &qword_10036D820);
  return swift_endAccess();
}

uint64_t sub_10003EC8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CB8, &qword_10036D828);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CB8, &qword_10036D828);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CB8, &qword_10036D828);
  }

  return result;
}

uint64_t sub_10003EE28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CB8, &qword_10036D828);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007263C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CB8, &qword_10036D828);
  return swift_endAccess();
}

void (*sub_10003EF94(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CB8, &qword_10036D828) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CB8, &qword_10036D828);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CB8, &qword_10036D828);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  }

  return sub_10003F204;
}

void sub_10003F204(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007263C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CB8, &qword_10036D828);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007263C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CB8, &qword_10036D828);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10003F454()
{
  v1 = sub_100024A2C(&qword_100418CB8, &qword_10036D828);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CB8, &qword_10036D828);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CB8, &qword_10036D828);
  return v8;
}

uint64_t sub_10003F574()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CB8, &qword_10036D828);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007263C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CB8, &qword_10036D828);
  return swift_endAccess();
}

uint64_t sub_10003F6BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CC0, &qword_10036D830);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CC0, &qword_10036D830);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  *(a1 + v9[9]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CC0, &qword_10036D830);
  }

  return result;
}

uint64_t sub_10003F860(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CC0, &qword_10036D830);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007263C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CC0, &qword_10036D830);
  return swift_endAccess();
}

void (*sub_10003F9CC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CC0, &qword_10036D830) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CC0, &qword_10036D830);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    *(v13 + v8[9]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CC0, &qword_10036D830);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  }

  return sub_10003FC44;
}

void sub_10003FC44(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007263C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CC0, &qword_10036D830);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007263C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CC0, &qword_10036D830);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10003FE94()
{
  v1 = sub_100024A2C(&qword_100418CC0, &qword_10036D830);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CC0, &qword_10036D830);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CC0, &qword_10036D830);
  return v8;
}

uint64_t sub_10003FFB4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CC0, &qword_10036D830);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007263C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CC0, &qword_10036D830);
  return swift_endAccess();
}

uint64_t sub_1000400FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CC8, &qword_10036D838);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CC8, &qword_10036D838);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CC8, &qword_10036D838);
  }

  return result;
}

uint64_t sub_100040298(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CC8, &qword_10036D838);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007263C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CC8, &qword_10036D838);
  return swift_endAccess();
}

void (*sub_100040404(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CC8, &qword_10036D838) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CC8, &qword_10036D838);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CC8, &qword_10036D838);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  }

  return sub_100040674;
}

void sub_100040674(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007263C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CC8, &qword_10036D838);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007263C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CC8, &qword_10036D838);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000408C4()
{
  v1 = sub_100024A2C(&qword_100418CC8, &qword_10036D838);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CC8, &qword_10036D838);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CC8, &qword_10036D838);
  return v8;
}

uint64_t sub_1000409E4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CC8, &qword_10036D838);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007263C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CC8, &qword_10036D838);
  return swift_endAccess();
}

uint64_t sub_100040B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CD0, &qword_10036D840);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CD0, &qword_10036D840);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CD0, &qword_10036D840);
  }

  return result;
}

uint64_t sub_100040CC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CD0, &qword_10036D840);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007263C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CD0, &qword_10036D840);
  return swift_endAccess();
}

void (*sub_100040E34(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CD0, &qword_10036D840) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CD0, &qword_10036D840);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CD0, &qword_10036D840);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  }

  return sub_1000410A4;
}

void sub_1000410A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007263C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CD0, &qword_10036D840);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007263C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CD0, &qword_10036D840);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000412F4()
{
  v1 = sub_100024A2C(&qword_100418CD0, &qword_10036D840);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CD0, &qword_10036D840);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CD0, &qword_10036D840);
  return v8;
}

uint64_t sub_100041414()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CD0, &qword_10036D840);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007263C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CD0, &qword_10036D840);
  return swift_endAccess();
}

uint64_t sub_10004155C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CD8, &qword_10036D848);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CD8, &qword_10036D848);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CD8, &qword_10036D848);
  }

  return result;
}

uint64_t sub_1000416F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CD8, &qword_10036D848);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007263C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CD8, &qword_10036D848);
  return swift_endAccess();
}

void (*sub_100041864(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CD8, &qword_10036D848) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CD8, &qword_10036D848);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CD8, &qword_10036D848);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  }

  return sub_100041AD4;
}

void sub_100041AD4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007263C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CD8, &qword_10036D848);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007263C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CD8, &qword_10036D848);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100041D24()
{
  v1 = sub_100024A2C(&qword_100418CD8, &qword_10036D848);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CD8, &qword_10036D848);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CD8, &qword_10036D848);
  return v8;
}

uint64_t sub_100041E44()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CD8, &qword_10036D848);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007263C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CD8, &qword_10036D848);
  return swift_endAccess();
}

uint64_t sub_100041F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CE0, &qword_10036D850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CE0, &qword_10036D850);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  *(a1 + v9[9]) = 2;
  *(a1 + v9[10]) = 2;
  *(a1 + v9[11]) = 2;
  *(a1 + v9[12]) = 2;
  *(a1 + v9[13]) = 2;
  *(a1 + v9[14]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CE0, &qword_10036D850);
  }

  return result;
}

uint64_t sub_100042158(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CE0, &qword_10036D850);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007263C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CE0, &qword_10036D850);
  return swift_endAccess();
}

void (*sub_1000422C4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CE0, &qword_10036D850) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CE0, &qword_10036D850);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    *(v13 + v8[9]) = 2;
    *(v13 + v8[10]) = 2;
    *(v13 + v8[11]) = 2;
    *(v13 + v8[12]) = 2;
    *(v13 + v8[13]) = 2;
    *(v13 + v8[14]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CE0, &qword_10036D850);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  }

  return sub_100042564;
}

void sub_100042564(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007263C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CE0, &qword_10036D850);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007263C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CE0, &qword_10036D850);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000427B4()
{
  v1 = sub_100024A2C(&qword_100418CE0, &qword_10036D850);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CE0, &qword_10036D850);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CE0, &qword_10036D850);
  return v8;
}

uint64_t sub_1000428D4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CE0, &qword_10036D850);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007263C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CE0, &qword_10036D850);
  return swift_endAccess();
}

uint64_t sub_100042A1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CE8, &qword_10036D858);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CE8, &qword_10036D858);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CE8, &qword_10036D858);
  }

  return result;
}

uint64_t sub_100042BB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CE8, &qword_10036D858);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007263C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CE8, &qword_10036D858);
  return swift_endAccess();
}

void (*sub_100042D1C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CE8, &qword_10036D858) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CE8, &qword_10036D858);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CE8, &qword_10036D858);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  }

  return sub_100042F84;
}

void sub_100042F84(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007263C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CE8, &qword_10036D858);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007263C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CE8, &qword_10036D858);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000431D4()
{
  v1 = sub_100024A2C(&qword_100418CE8, &qword_10036D858);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CE8, &qword_10036D858);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CE8, &qword_10036D858);
  return v8;
}

uint64_t sub_1000432F4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CE8, &qword_10036D858);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007263C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CE8, &qword_10036D858);
  return swift_endAccess();
}

uint64_t sub_10004343C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CA8, &qword_10036D818);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 2;
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CA8, &qword_10036D818);
  }

  return result;
}

uint64_t sub_1000435D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007263C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CA8, &qword_10036D818);
  return swift_endAccess();
}

void (*sub_100043744(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CA8, &qword_10036D818) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CA8, &qword_10036D818);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CA8, &qword_10036D818);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  }

  return sub_1000439B4;
}

void sub_1000439B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007263C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CA8, &qword_10036D818);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007263C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CA8, &qword_10036D818);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100043C04()
{
  v1 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CA8, &qword_10036D818);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CA8, &qword_10036D818);
  return v8;
}

uint64_t sub_100043D24()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007263C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CA8, &qword_10036D818);
  return swift_endAccess();
}

uint64_t sub_100043EE0(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100043F18(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100043FB4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100043FFC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100044034(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000440D0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100044128(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_100044158(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_100025584;
}

uint64_t sub_1000441E0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

double sub_10004423C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10004427C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000442B4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100044350()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_100044398(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000443D8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100044410(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000444AC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100044504(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_100044534(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000445BC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

int *sub_100044600@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v7 = a3 + result[5];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a3 + result[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a3 + result[7]) = a2;
  return result;
}

uint64_t sub_100044684(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000446BC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100044758()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000447A0(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000447D8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100044874()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000448CC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000448FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_100044984()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1000449D4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_100044A04(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_100044A8C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

int *sub_100044AB4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  return result;
}

uint64_t sub_100044B30(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100044B68(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100044C00()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100044C30()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_100044C64(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100044C9C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100044D34()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100044D7C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100044DB4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100044E50()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100044E98(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100044ED0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100044F6C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100044FC4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_100044FF4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10004507C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

int *sub_1000450A4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t sub_100045120@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100418CF0, &qword_10036D860);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a1 + v8[7]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CF0, &qword_10036D860);
  }

  return result;
}

uint64_t sub_1000452A4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100418CF0, &qword_10036D860);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10004535C(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CF0, &qword_10036D860) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418CF0, &qword_10036D860);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    *(v13 + v8[7]) = 2;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CF0, &qword_10036D860);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  }

  return sub_100045598;
}

uint64_t sub_10004564C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100418CF8, &qword_10036D868);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a1 + v8[7]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CF8, &qword_10036D868);
  }

  return result;
}

uint64_t sub_1000457D0(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100418CF8, &qword_10036D868);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100045888(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CF8, &qword_10036D868) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418CF8, &qword_10036D868);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    *(v13 + v8[7]) = 2;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CF8, &qword_10036D868);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  return sub_100045AC4;
}

uint64_t sub_100045B90(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100045BC8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100045C64()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100045C94@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v8 = a1 + v2[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_100045DB0(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100045DE8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100045E84()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100045ECC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100045F04(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100045FA0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100045FD0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 28));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100045FFC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10004602C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_100025584;
}

uint64_t sub_1000460B8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  *(v0 + *(result + 28)) = 6;
  return result;
}

uint64_t sub_100046114(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10004614C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 20);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000461E8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100046230(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100046268(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 24);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100046304()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_10004634C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10004638C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000463C4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100046460()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_100046490@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

float sub_1000464F0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  swift_beginAccess();
  result = *(v1 + 16);
  if (*(v1 + 20))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10004654C(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10007B100(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 20) = 0;
  return result;
}

void (*sub_1000465E8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_100046698;
}

float sub_10004671C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  swift_beginAccess();
  result = *(v1 + 24);
  if (*(v1 + 28))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100046778(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10007B100(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 24) = a1;
  *(v7 + 28) = 0;
  return result;
}

void (*sub_100046814(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_1000468C4;
}

void sub_1000468C4(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10007B100(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 24) = v2;
  *(v7 + 28) = 0;

  free(v1);
}

BOOL sub_100046990()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  swift_beginAccess();
  return (*(v1 + 28) & 1) == 0;
}

uint64_t sub_1000469E4()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10007B100(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 24) = 0;
  *(v5 + 28) = 1;
  return result;
}

uint64_t sub_100046A78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D00, &qword_10036D870);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418D00, &qword_10036D870);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[7]) = 6;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D00, &qword_10036D870);
  }

  return result;
}

uint64_t sub_100046C20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D00, &qword_10036D870);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007B100(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D00, &qword_10036D870);
  return swift_endAccess();
}

void (*sub_100046D8C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D00, &qword_10036D870) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D00, &qword_10036D870);
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
    *(v13 + v8[7]) = 6;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D00, &qword_10036D870);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  }

  return sub_100047008;
}

void sub_100047008(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007B100(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D00, &qword_10036D870);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007B100(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D00, &qword_10036D870);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100047258()
{
  v1 = sub_100024A2C(&qword_100418D00, &qword_10036D870);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D00, &qword_10036D870);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D00, &qword_10036D870);
  return v8;
}

uint64_t sub_100047378()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D00, &qword_10036D870);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007B100(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D00, &qword_10036D870);
  return swift_endAccess();
}

uint64_t sub_1000474CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007B100(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D08, &qword_10036D878);
  return swift_endAccess();
}

void (*sub_100047638(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D08, &qword_10036D878) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D08, &qword_10036D878);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D08, &qword_10036D878);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  }

  return sub_1000478B8;
}

void sub_1000478B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007B100(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D08, &qword_10036D878);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007B100(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D08, &qword_10036D878);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100047B08()
{
  v1 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D08, &qword_10036D878);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D08, &qword_10036D878);
  return v8;
}

uint64_t sub_100047C28()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007B100(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D08, &qword_10036D878);
  return swift_endAccess();
}

uint64_t sub_100047D7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007B100(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D08, &qword_10036D878);
  return swift_endAccess();
}

void (*sub_100047EE8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D08, &qword_10036D878) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D08, &qword_10036D878);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D08, &qword_10036D878);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  }

  return sub_100048168;
}

void sub_100048168(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007B100(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D08, &qword_10036D878);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007B100(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D08, &qword_10036D878);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000483B8()
{
  v1 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D08, &qword_10036D878);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D08, &qword_10036D878);
  return v8;
}

uint64_t sub_1000484D8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007B100(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D08, &qword_10036D878);
  return swift_endAccess();
}

uint64_t sub_10004862C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = *(v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_10000A0A4(v9 + v10, v8, &qword_100418D08, &qword_10036D878);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_10009E724(v8, a2, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  }

  UnknownStorage.init()();
  v13 = a2 + v11[5];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + v11[6];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v11[7];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1000059A8(v8, &qword_100418D08, &qword_10036D878);
  }

  return result;
}

uint64_t sub_1000487D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007B100(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D08, &qword_10036D878);
  return swift_endAccess();
}

void (*sub_100048944(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D08, &qword_10036D878) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D08, &qword_10036D878);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D08, &qword_10036D878);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  }

  return sub_100048BC4;
}

void sub_100048BC4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007B100(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D08, &qword_10036D878);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007B100(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D08, &qword_10036D878);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100048E14()
{
  v1 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D08, &qword_10036D878);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D08, &qword_10036D878);
  return v8;
}

uint64_t sub_100048F34()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007B100(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D08, &qword_10036D878);
  return swift_endAccess();
}

void (*sub_100049094(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_10004914C;
}

uint64_t sub_1000491F4(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_100049264(int a1, void *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007B100(v14);
    *(v4 + v6) = v13;
  }

  v15 = v9 + *a2;
  result = swift_beginAccess();
  *v15 = a1;
  *(v15 + 4) = 0;
  return result;
}