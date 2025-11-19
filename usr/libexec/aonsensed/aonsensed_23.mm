uint64_t sub_100249DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  v5 = *(v4 + 20);
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
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100249EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v35 - v11;
  v13 = sub_100024A2C(&qword_10042AA78, &qword_100390D90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v35 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_19;
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
      goto LABEL_19;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_19;
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
      goto LABEL_19;
    }
  }

  v28 = v17[7];
  v29 = a1;
  v30 = *(v13 + 48);
  v35[0] = v29;
  sub_10000A0A4(v29 + v28, v16, &qword_100423F68, &qword_100383438);
  v35[1] = a2;
  sub_10000A0A4(a2 + v28, &v16[v30], &qword_100423F68, &qword_100383438);
  v31 = *(v5 + 48);
  if (v31(v16, 1, v4) == 1)
  {
    if (v31(&v16[v30], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100423F68, &qword_100383438);
LABEL_22:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_18;
  }

  sub_10000A0A4(v16, v12, &qword_100423F68, &qword_100383438);
  if (v31(&v16[v30], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
LABEL_18:
    sub_1000059A8(v16, &qword_10042AA78, &qword_100390D90);
    goto LABEL_19;
  }

  sub_1002463C0(&v16[v30], v8, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v34 = sub_1002559E4(v12, v8);
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_1000059A8(v16, &qword_100423F68, &qword_100383438);
  if (v34)
  {
    goto LABEL_22;
  }

LABEL_19:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_10024A28C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v5 = *(v4 + 28);
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

  v10 = *(v4 + 32);
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

  v15 = v4;
  if (sub_100244A64(*a1, *a2))
  {
    v16 = v15[9];
    v17 = (a1 + v16);
    v18 = *(a1 + v16 + 4);
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

    v21 = v15[10];
    v22 = (a1 + v21);
    v23 = *(a1 + v21 + 4);
    v24 = (a2 + v21);
    v25 = *(a2 + v21 + 4);
    if (v23)
    {
      if (!v25)
      {
        return 0;
      }
    }

    else
    {
      if (*v22 != *v24)
      {
        LOBYTE(v25) = 1;
      }

      if (v25)
      {
        return 0;
      }
    }

    v26 = v15[11];
    v27 = (a1 + v26);
    v28 = *(a1 + v26 + 4);
    v29 = (a2 + v26);
    v30 = *(a2 + v26 + 4);
    if (v28)
    {
      if (!v30)
      {
        return 0;
      }
    }

    else
    {
      if (*v27 != *v29)
      {
        LOBYTE(v30) = 1;
      }

      if (v30)
      {
        return 0;
      }
    }

    if (sub_100244AC0(a1[1], a2[1]))
    {
      v31 = v15[6];
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t sub_10024A458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v28 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100024A2C(&qword_100423EF0, &qword_1003833C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v27 - v10);
  v12 = sub_100024A2C(&qword_10042AAD0, &qword_100390DE8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v30 = a1;
  v17 = *(inited + 20);
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_100423EF0, &qword_1003833C0);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_100423EF0, &qword_1003833C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_100423EF0, &qword_1003833C0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v28;
      sub_1002463C0(&v16[v18], v28, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
      v23 = sub_10025602C(v11, v22);
      sub_100246490(v22, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
      sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
      sub_1000059A8(v16, &qword_100423EF0, &qword_1003833C0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
LABEL_6:
    sub_1000059A8(v16, &qword_10042AAD0, &qword_100390DE8);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v16, &qword_100423EF0, &qword_1003833C0);
LABEL_10:
  v24 = *(inited + 24);
  v25 = *(v30 + v24);
  v26 = *(a2 + v24);
  if (v25 == 4)
  {
    if (v26 == 4)
    {
      goto LABEL_14;
    }
  }

  else if (v25 == v26)
  {
LABEL_14:
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10024A7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - v10;
  v12 = sub_100024A2C(&qword_10042AA28, &qword_100390D40);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v46 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v47 = a1;
  v17 = v46[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_100423F90, &qword_100383460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_100423F90, &qword_100383460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_100423F90, &qword_100383460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v45;
      sub_1002463C0(&v16[v18], v45, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
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
  v24 = v46[6];
  v25 = (v47 + v24);
  v26 = *(v47 + v24 + 4);
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

  v29 = v46[7];
  v30 = (v47 + v29);
  v31 = *(v47 + v29 + 4);
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

  v34 = v46[8];
  v35 = (v47 + v34);
  v36 = *(v47 + v34 + 4);
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

  v39 = v46[9];
  v40 = (v47 + v39);
  v41 = *(v47 + v39 + 4);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 4);
  if (v41)
  {
    if (v43)
    {
LABEL_34:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if ((v43 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10024AC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
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

  v11 = v5[6];
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

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 4);
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

  v21 = v5[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024AD88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423F50, &qword_100383420);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_100024A2C(&qword_10042AA80, &qword_100390D98);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v18 = *(v17 + 20);
  v29 = a1;
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 6)
  {
    if (v20 != 6)
    {
      goto LABEL_11;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_11;
  }

  v21 = a2;
  v22 = *(v17 + 24);
  v23 = *(v13 + 48);
  sub_10000A0A4(v29 + v22, v16, &qword_100423F50, &qword_100383420);
  sub_10000A0A4(v21 + v22, &v16[v23], &qword_100423F50, &qword_100383420);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100423F50, &qword_100383420);
LABEL_14:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v16, v12, &qword_100423F50, &qword_100383420);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
LABEL_10:
    sub_1000059A8(v16, &qword_10042AA80, &qword_100390D98);
    goto LABEL_11;
  }

  sub_1002463C0(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  v27 = sub_10024F89C(v12, v8);
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  sub_1000059A8(v16, &qword_100423F50, &qword_100383420);
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_10024B114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
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

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024B244(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v5 = v4[7];
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

  v10 = v4[8];
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

  v15 = v4[9];
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

  v20 = v4[10];
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

  v25 = v4;
  if ((sub_100033210(*a1, *a2) & 1) == 0 || (sub_100033210(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v26 = v25[11];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v32 = v25[6];
  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024B40C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4[9];
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

  v25 = v4;
  if (sub_100245934(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem))
  {
    v26 = v25[5];
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10024B5B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10000BE4C(v7, v6);
      sub_10000BE4C(v10, v9);
      sub_10000CA64(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    sub_10000BE4C(v7, v6);
    sub_10000BE4C(v10, v9);
    sub_10000CA64(v7, v6);
    sub_10000CA64(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_10000BE4C(v7, v6);
  sub_10000BE4C(v10, v9);
  v12 = sub_10009F948(v7, v6, v10, v9);
  sub_10000CA64(v10, v9);
  sub_10000CA64(v7, v6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v13 = v4[6];
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

  v16 = v4[7];
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

  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 4);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 4);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v4[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if ((v26 & 1) == 0)
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if (!v28)
  {
    return 0;
  }

LABEL_30:
  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024B808(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (sub_100245798(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, sub_10024B5B8))
  {
    v8 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10024B91C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v5 = v4[6];
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

  if ((sub_100244D30(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 6)
  {
    if (v12 != 6)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 != 7)
  {
    if (v14 == v15)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v15 != 7)
  {
    return 0;
  }

LABEL_16:
  v16 = v4[9];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 4);
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

  v22 = v4[5];
  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024BA80(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4[9];
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

  v25 = v4[10];
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

  v30 = v4;
  if (sub_100033210(*a1, *a2))
  {
    v31 = v30[5];
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10024BC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
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
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
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
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
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
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 4);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 4);
  if (v52)
  {
    if (!v54)
    {
      return 0;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  v55 = v4[15];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 4);
  v58 = (a2 + v55);
  v59 = *(a2 + v55 + 4);
  if (v57)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = v4[16];
  v61 = *(a1 + v60);
  v62 = *(a2 + v60);
  if (v61 == 6)
  {
    if (v62 != 6)
    {
      return 0;
    }
  }

  else if (v61 != v62)
  {
    return 0;
  }

  v63 = v4[17];
  v64 = *(a1 + v63);
  v65 = *(a2 + v63);
  if (v64 != 7)
  {
    if (v64 == v65)
    {
      goto LABEL_75;
    }

    return 0;
  }

  if (v65 != 7)
  {
    return 0;
  }

LABEL_75:
  v66 = v4[18];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 4);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 4);
  if (v68)
  {
    if (!v70)
    {
      return 0;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024BF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_100024A2C(&qword_10042AA78, &qword_100390D90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v33 = v17[8];
  v34 = *(v13 + 48);
  sub_10000A0A4(a1 + v33, v16, &qword_100423F68, &qword_100383438);
  v35 = a2 + v33;
  v36 = v34;
  sub_10000A0A4(v35, &v16[v34], &qword_100423F68, &qword_100383438);
  v37 = *(v5 + 48);
  if (v37(v16, 1, v4) == 1)
  {
    if (v37(&v16[v36], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100423F68, &qword_100383438);
LABEL_28:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_24;
  }

  sub_10000A0A4(v16, v12, &qword_100423F68, &qword_100383438);
  if (v37(&v16[v36], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
LABEL_24:
    sub_1000059A8(v16, &qword_10042AA78, &qword_100390D90);
    goto LABEL_25;
  }

  sub_1002463C0(&v16[v36], v8, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v40 = sub_1002559E4(v12, v8);
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_1000059A8(v16, &qword_100423F68, &qword_100383438);
  if (v40)
  {
    goto LABEL_28;
  }

LABEL_25:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_10024C380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423F88, &qword_100383458);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_100024A2C(&qword_10042AA50, &qword_100390D68);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v18 = *(v17 + 20);
  v36 = a1;
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 6)
  {
    if (v20 != 6)
    {
      goto LABEL_12;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_12;
  }

  v21 = a2;
  v22 = *(v17 + 24);
  v23 = *(v13 + 48);
  sub_10000A0A4(v36 + v22, v16, &qword_100423F88, &qword_100383458);
  sub_10000A0A4(v21 + v22, &v16[v23], &qword_100423F88, &qword_100383458);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100423F88, &qword_100383458);
LABEL_17:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v16, v12, &qword_100423F88, &qword_100383458);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
LABEL_10:
    v25 = &qword_10042AA50;
    v26 = &qword_100390D68;
LABEL_11:
    sub_1000059A8(v16, v25, v26);
    goto LABEL_12;
  }

  sub_1002463C0(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  v29 = *(v4 + 20);
  v30 = *&v12[v29];
  v31 = *&v8[v29];
  if (v30 != v31)
  {
    v32 = *&v12[v29];

    v33 = sub_100212024(v30, v31);

    if (!v33)
    {
      sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
      sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
      v25 = &qword_100423F88;
      v26 = &qword_100383458;
      goto LABEL_11;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  sub_1000059A8(v16, &qword_100423F88, &qword_100383458);
  if (v34)
  {
    goto LABEL_17;
  }

LABEL_12:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_10024C7D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  __chkstk_darwin(v4);
  v76 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100424030, &qword_100383500);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v74 - v9;
  v11 = sub_100024A2C(&qword_10042A9B0, &qword_100390CC8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v79 = &v74 - v13;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100024A2C(&qword_100424028, &qword_1003834F8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v74 - v21;
  v23 = sub_100024A2C(&qword_10042A9B8, &qword_100390CD0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v74 - v25;
  v27 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v28 = v27[5];
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  if (v29 == 6)
  {
    if (v30 != 6)
    {
      goto LABEL_36;
    }
  }

  else if (v29 != v30)
  {
    goto LABEL_36;
  }

  v31 = v27[6];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_36;
    }
  }

  v36 = v27[7];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_36;
    }
  }

  v41 = v27[8];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 4);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 4);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_36;
    }
  }

  v46 = v27[9];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 4);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 4);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      goto LABEL_36;
    }
  }

  v51 = v27[10];
  v74 = v27;
  v75 = v51;
  v52 = *(v23 + 48);
  sub_10000A0A4(a1 + v51, v26, &qword_100424028, &qword_1003834F8);
  v53 = a2 + v75;
  v75 = v52;
  sub_10000A0A4(v53, &v26[v52], &qword_100424028, &qword_1003834F8);
  v54 = *(v15 + 48);
  if (v54(v26, 1, v14) != 1)
  {
    sub_10000A0A4(v26, v22, &qword_100424028, &qword_1003834F8);
    if (v54(&v26[v75], 1, v14) != 1)
    {
      sub_1002463C0(&v26[v75], v18, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
      v60 = sub_10024C380(v22, v18);
      sub_100246490(v18, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
      sub_100246490(v22, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
      sub_1000059A8(v26, &qword_100424028, &qword_1003834F8);
      if ((v60 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    sub_100246490(v22, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
LABEL_34:
    v55 = &qword_10042A9B8;
    v56 = &qword_100390CD0;
    v57 = v26;
LABEL_35:
    sub_1000059A8(v57, v55, v56);
    goto LABEL_36;
  }

  if (v54(&v26[v75], 1, v14) != 1)
  {
    goto LABEL_34;
  }

  sub_1000059A8(v26, &qword_100424028, &qword_1003834F8);
LABEL_39:
  v61 = v74[11];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 4);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 4);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_36;
    }
  }

  v66 = v74[12];
  v67 = *(v11 + 48);
  v68 = v79;
  sub_10000A0A4(a1 + v66, v79, &qword_100424030, &qword_100383500);
  sub_10000A0A4(a2 + v66, v68 + v67, &qword_100424030, &qword_100383500);
  v69 = v78;
  v70 = *(v77 + 48);
  if (v70(v68, 1, v78) == 1)
  {
    if (v70(v68 + v67, 1, v69) == 1)
    {
      sub_1000059A8(v68, &qword_100424030, &qword_100383500);
LABEL_52:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v58 & 1;
    }

    goto LABEL_50;
  }

  sub_10000A0A4(v68, v10, &qword_100424030, &qword_100383500);
  if (v70(v68 + v67, 1, v69) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
LABEL_50:
    v55 = &qword_10042A9B0;
    v56 = &qword_100390CC8;
    v57 = v68;
    goto LABEL_35;
  }

  v71 = v68 + v67;
  v72 = v76;
  sub_1002463C0(v71, v76, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  v73 = sub_10025670C(v10, v72);
  sub_100246490(v72, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  sub_1000059A8(v68, &qword_100424030, &qword_100383500);
  if (v73)
  {
    goto LABEL_52;
  }

LABEL_36:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_10024CF28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423FF0, &qword_1003834C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_100024A2C(&qword_10042A9E8, &qword_100390D00);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v18 = *(v17 + 20);
  v29 = a1;
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 6)
  {
    if (v20 != 6)
    {
      goto LABEL_11;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_11;
  }

  v21 = a2;
  v22 = *(v17 + 24);
  v23 = *(v13 + 48);
  sub_10000A0A4(v29 + v22, v16, &qword_100423FF0, &qword_1003834C0);
  sub_10000A0A4(v21 + v22, &v16[v23], &qword_100423FF0, &qword_1003834C0);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100423FF0, &qword_1003834C0);
LABEL_14:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v16, v12, &qword_100423FF0, &qword_1003834C0);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
LABEL_10:
    sub_1000059A8(v16, &qword_10042A9E8, &qword_100390D00);
    goto LABEL_11;
  }

  sub_1002463C0(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  v27 = sub_100251EE4(v12, v8);
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  sub_1000059A8(v16, &qword_100423FF0, &qword_1003834C0);
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_10024D2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = *(v110 + 64);
  __chkstk_darwin(v4);
  v108 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_1004240C8, &qword_100383598);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v112 = &v104 - v9;
  v109 = sub_100024A2C(&qword_10042A920, &qword_100390C38);
  v10 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v113 = &v104 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v116 = *(v12 - 8);
  v13 = *(v116 + 64);
  __chkstk_darwin(v12);
  v114 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100024A2C(&qword_1004240C0, &qword_100383590);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v115 = &v104 - v17;
  v18 = sub_100024A2C(&qword_10042A928, &qword_100390C40);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v117 = &v104 - v20;
  v21 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100024A2C(&qword_1004240B8, &qword_100383588);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v104 - v28;
  v30 = sub_100024A2C(&qword_10042A930, &qword_100390C48);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v104 - v32;
  v34 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v35 = a2;
  v36 = v34;
  v37 = v34[5];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 4);
  v40 = (v35 + v37);
  v41 = *(v35 + v37 + 4);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_47;
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
      goto LABEL_47;
    }
  }

  v42 = v34[6];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 4);
  v45 = (v35 + v42);
  v46 = *(v35 + v42 + 4);
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      goto LABEL_47;
    }
  }

  v47 = v34[7];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 4);
  v50 = (v35 + v47);
  v51 = *(v35 + v47 + 4);
  if (v49)
  {
    if (!v51)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v48 != *v50)
    {
      LOBYTE(v51) = 1;
    }

    if (v51)
    {
      goto LABEL_47;
    }
  }

  v52 = v34[8];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 4);
  v55 = (v35 + v52);
  v56 = *(v35 + v52 + 4);
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v53 != *v55)
    {
      LOBYTE(v56) = 1;
    }

    if (v56)
    {
      goto LABEL_47;
    }
  }

  v57 = v34[9];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 4);
  v60 = (v35 + v57);
  v61 = *(v35 + v57 + 4);
  if (v59)
  {
    if (!v61)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v58 != *v60)
    {
      LOBYTE(v61) = 1;
    }

    if (v61)
    {
      goto LABEL_47;
    }
  }

  v62 = v34[10];
  v63 = *(a1 + v62);
  v64 = *(v35 + v62);
  if (v63 == 4)
  {
    if (v64 != 4)
    {
      goto LABEL_47;
    }
  }

  else if (v63 != v64)
  {
    goto LABEL_47;
  }

  v65 = v34[11];
  v66 = *(a1 + v65);
  v67 = *(v35 + v65);
  if (v66 == 2)
  {
    if (v67 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v67 == 2 || ((v66 ^ v67) & 1) != 0)
  {
    goto LABEL_47;
  }

  v107 = v34[12];
  v68 = *(v30 + 48);
  v105 = a1;
  v69 = a1 + v107;
  v70 = v68;
  v71 = v35;
  sub_10000A0A4(v69, v33, &qword_1004240B8, &qword_100383588);
  v72 = v71 + v107;
  v106 = v71;
  v107 = v70;
  sub_10000A0A4(v72, &v33[v70], &qword_1004240B8, &qword_100383588);
  v73 = *(v22 + 48);
  if (v73(v33, 1, v21) == 1)
  {
    if (v73(&v33[v107], 1, v21) == 1)
    {
      sub_1000059A8(v33, &qword_1004240B8, &qword_100383588);
      goto LABEL_50;
    }

LABEL_45:
    v74 = &qword_10042A930;
    v75 = &qword_100390C48;
    v76 = v33;
LABEL_46:
    sub_1000059A8(v76, v74, v75);
    goto LABEL_47;
  }

  sub_10000A0A4(v33, v29, &qword_1004240B8, &qword_100383588);
  if (v73(&v33[v107], 1, v21) == 1)
  {
    sub_100246490(v29, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
    goto LABEL_45;
  }

  sub_1002463C0(&v33[v107], v25, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  v79 = sub_100255EF8(v29, v25, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  sub_100246490(v25, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  sub_100246490(v29, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  sub_1000059A8(v33, &qword_1004240B8, &qword_100383588);
  if ((v79 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_50:
  v80 = v36[13];
  v81 = *(v105 + v80);
  v82 = *(v106 + v80);
  if (v81 == 2)
  {
    if (v82 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v82 == 2 || ((v81 ^ v82) & 1) != 0)
  {
    goto LABEL_47;
  }

  v83 = v36[14];
  v84 = *(v18 + 48);
  v85 = v106;
  v86 = v117;
  sub_10000A0A4(v105 + v83, v117, &qword_1004240C0, &qword_100383590);
  sub_10000A0A4(v85 + v83, v86 + v84, &qword_1004240C0, &qword_100383590);
  v87 = *(v116 + 48);
  if (v87(v86, 1, v12) != 1)
  {
    v88 = v115;
    sub_10000A0A4(v86, v115, &qword_1004240C0, &qword_100383590);
    if (v87(v86 + v84, 1, v12) != 1)
    {
      v89 = v114;
      sub_1002463C0(v86 + v84, v114, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      v90 = sub_100255534(v88, v89, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      sub_100246490(v89, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      sub_100246490(v88, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      sub_1000059A8(v86, &qword_1004240C0, &qword_100383590);
      if ((v90 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_62;
    }

    sub_100246490(v88, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
    goto LABEL_60;
  }

  if (v87(v86 + v84, 1, v12) != 1)
  {
LABEL_60:
    v74 = &qword_10042A928;
    v75 = &qword_100390C40;
    v76 = v86;
    goto LABEL_46;
  }

  sub_1000059A8(v86, &qword_1004240C0, &qword_100383590);
LABEL_62:
  v91 = v36[15];
  v92 = *(v105 + v91);
  v93 = *(v106 + v91);
  if (v92 == 2)
  {
    if (v93 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v93 == 2 || ((v92 ^ v93) & 1) != 0)
  {
    goto LABEL_47;
  }

  v94 = v36[16];
  v95 = *(v109 + 48);
  v96 = v113;
  sub_10000A0A4(v105 + v94, v113, &qword_1004240C8, &qword_100383598);
  sub_10000A0A4(v106 + v94, v96 + v95, &qword_1004240C8, &qword_100383598);
  v97 = v111;
  v98 = *(v110 + 48);
  if (v98(v96, 1, v111) == 1)
  {
    if (v98(v96 + v95, 1, v97) == 1)
    {
      sub_1000059A8(v96, &qword_1004240C8, &qword_100383598);
LABEL_74:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v77 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v77 & 1;
    }

    goto LABEL_72;
  }

  sub_10000A0A4(v96, v112, &qword_1004240C8, &qword_100383598);
  if (v98(v96 + v95, 1, v97) == 1)
  {
    sub_100246490(v112, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
    v96 = v113;
LABEL_72:
    v74 = &qword_10042A920;
    v75 = &qword_100390C38;
    v76 = v96;
    goto LABEL_46;
  }

  v99 = v113;
  v100 = v113 + v95;
  v101 = v108;
  sub_1002463C0(v100, v108, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  v102 = v112;
  v103 = sub_100255534(v112, v101, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  sub_100246490(v101, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  sub_100246490(v102, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  sub_1000059A8(v99, &qword_1004240C8, &qword_100383598);
  if (v103)
  {
    goto LABEL_74;
  }

LABEL_47:
  v77 = 0;
  return v77 & 1;
}

uint64_t sub_10024DDB8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4[9];
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

  v25 = v4;
  if ((sub_100244F78(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v26 = v25[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v25[11];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 6)
  {
    if (v33 != 6)
    {
      return 0;
    }
  }

  else if (v32 != v33)
  {
    return 0;
  }

  v34 = v25[12];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 != 7)
  {
    if (v35 == v36)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if (v36 != 7)
  {
    return 0;
  }

LABEL_40:
  v37 = v25[13];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 4);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 4);
  if (v39)
  {
    if (!v41)
    {
      return 0;
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
      return 0;
    }
  }

  v43 = v25[5];
  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024DFF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100424090, &qword_100383560);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_100024A2C(&qword_10042A938, &qword_100390C50);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v18 = *(v17 + 20);
  v29 = a1;
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 6)
  {
    if (v20 != 6)
    {
      goto LABEL_11;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_11;
  }

  v21 = a2;
  v22 = *(v17 + 24);
  v23 = *(v13 + 48);
  sub_10000A0A4(v29 + v22, v16, &qword_100424090, &qword_100383560);
  sub_10000A0A4(v21 + v22, &v16[v23], &qword_100424090, &qword_100383560);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100424090, &qword_100383560);
LABEL_14:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v16, v12, &qword_100424090, &qword_100383560);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
LABEL_10:
    sub_1000059A8(v16, &qword_10042A938, &qword_100390C50);
    goto LABEL_11;
  }

  sub_1002463C0(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v27 = sub_100253550(v12, v8);
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_1000059A8(v16, &qword_100424090, &qword_100383560);
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_10024E380(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_1004240B0, &qword_100383580);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v52 - v11;
  v13 = sub_100024A2C(&qword_10042A940, &qword_100390C58);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_37;
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
      goto LABEL_37;
    }
  }

  v23 = v17[7];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_37;
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
      goto LABEL_37;
    }
  }

  v28 = v17[8];
  v29 = *(v13 + 48);
  v52 = v17;
  v53 = a1;
  sub_10000A0A4(a1 + v28, v16, &qword_1004240B0, &qword_100383580);
  sub_10000A0A4(a2 + v28, &v16[v29], &qword_1004240B0, &qword_100383580);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_1004240B0, &qword_100383580);
LABEL_20:
      v33 = v53;
      if (sub_1002455FC(*v53, *a2, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, sub_100250ECC))
      {
        v34 = v52[9];
        v35 = (v33 + v34);
        v36 = *(v33 + v34 + 4);
        v37 = (a2 + v34);
        v38 = *(a2 + v34 + 4);
        if (v36)
        {
          if (!v38)
          {
            goto LABEL_37;
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
            goto LABEL_37;
          }
        }

        v39 = v52[10];
        v40 = *(v33 + v39);
        v41 = *(a2 + v39);
        if (v40 == 6)
        {
          if (v41 != 6)
          {
            goto LABEL_37;
          }
        }

        else if (v40 != v41)
        {
          goto LABEL_37;
        }

        v42 = v52[11];
        v43 = *(v33 + v42);
        v44 = *(a2 + v42);
        if (v43 == 7)
        {
          if (v44 == 7)
          {
LABEL_35:
            v45 = v52[12];
            v46 = (v33 + v45);
            v47 = *(v33 + v45 + 4);
            v48 = (a2 + v45);
            v49 = *(a2 + v45 + 4);
            if (v47)
            {
              if (!v49)
              {
                goto LABEL_37;
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
                goto LABEL_37;
              }
            }

            v51 = v52[5];
            type metadata accessor for UnknownStorage();
            sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
            v31 = dispatch thunk of static Equatable.== infix(_:_:)();
            return v31 & 1;
          }
        }

        else if (v43 == v44)
        {
          goto LABEL_35;
        }
      }

LABEL_37:
      v31 = 0;
      return v31 & 1;
    }
  }

  else
  {
    sub_10000A0A4(v16, v12, &qword_1004240B0, &qword_100383580);
    if (v30(&v16[v29], 1, v4) != 1)
    {
      sub_1002463C0(&v16[v29], v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
      v32 = sub_10024DFF4(v12, v8);
      sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
      sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
      sub_1000059A8(v16, &qword_1004240B0, &qword_100383580);
      if ((v32 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    }

    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  }

  sub_1000059A8(v16, &qword_10042A940, &qword_100390C58);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_10024E85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
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
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
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

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024EA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100024A2C(&qword_100424090, &qword_100383560);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34[-v11];
  v13 = sub_100024A2C(&qword_10042A938, &qword_100390C50);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v34[-v15];
  v17 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 10)
  {
    if (v20 != 10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v34[15] = v19;
    if (v20 == 10)
    {
      goto LABEL_16;
    }

    v34[14] = v20;
    v21 = v17;
    sub_10003616C();
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = v21;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v23 = v17[6];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 6)
  {
    if (v25 != 6)
    {
      goto LABEL_16;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_16;
  }

  v26 = v17[7];
  v27 = *(v13 + 48);
  sub_10000A0A4(a1 + v26, v16, &qword_100424090, &qword_100383560);
  v28 = a2 + v26;
  v29 = v27;
  sub_10000A0A4(v28, &v16[v27], &qword_100424090, &qword_100383560);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100424090, &qword_100383560);
LABEL_19:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v31 & 1;
    }

    goto LABEL_15;
  }

  sub_10000A0A4(v16, v12, &qword_100424090, &qword_100383560);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
LABEL_15:
    sub_1000059A8(v16, &qword_10042A938, &qword_100390C50);
    goto LABEL_16;
  }

  sub_1002463C0(&v16[v29], v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v33 = sub_100253550(v12, v8);
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_1000059A8(v16, &qword_100424090, &qword_100383560);
  if (v33)
  {
    goto LABEL_19;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_10024EE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v42 - v10;
  v12 = sub_100024A2C(&qword_10042AAA0, &qword_100390DB8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v44 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v45 = a1;
  v17 = v44[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_100423F28, &qword_1003833F8);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_100423F28, &qword_1003833F8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_100423F28, &qword_1003833F8);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v43;
      sub_1002463C0(&v16[v18], v43, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      v23 = sub_100255534(v11, v22, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      sub_100246490(v22, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      sub_1000059A8(v16, &qword_100423F28, &qword_1003833F8);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
LABEL_6:
    sub_1000059A8(v16, &qword_10042AAA0, &qword_100390DB8);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v16, &qword_100423F28, &qword_1003833F8);
LABEL_10:
  v24 = v44[6];
  v25 = (v45 + v24);
  v26 = *(v45 + v24 + 4);
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

  v29 = v44[7];
  v30 = (v45 + v29);
  v31 = *(v45 + v29 + 4);
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

  v34 = v44[8];
  v35 = (v45 + v34);
  v36 = *(v45 + v34 + 4);
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

  v39 = v44[9];
  v40 = *(v45 + v39);
  v41 = *(a2 + v39);
  if (v40 == 5)
  {
    if (v41 == 5)
    {
      goto LABEL_32;
    }
  }

  else if (v40 == v41)
  {
LABEL_32:
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10024F274(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v43 - v8;
  v47 = sub_100024A2C(&qword_10042AAA0, &qword_100390DB8);
  v9 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_100423F30, &qword_100383400);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v43 - v18;
  v20 = sub_100024A2C(&qword_10042AAA8, &qword_100390DC0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_10000A0A4(a1 + v25, v24, &qword_100423F30, &qword_100383400);
  sub_10000A0A4(v52 + v25, &v24[v26], &qword_100423F30, &qword_100383400);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    sub_10000A0A4(v24, v19, &qword_100423F30, &qword_100383400);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      sub_1002463C0(&v24[v26], v15, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
      v31 = sub_10024EE3C(v19, v15);
      sub_100246490(v15, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
      sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
      sub_1000059A8(v24, &qword_100423F30, &qword_100383400);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
LABEL_6:
    v28 = &qword_10042AAA8;
    v29 = &qword_100390DC0;
    v30 = v24;
LABEL_14:
    sub_1000059A8(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v24, &qword_100423F30, &qword_100383400);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  sub_10000A0A4(v51 + v32, v50, &qword_100423F28, &qword_1003833F8);
  sub_10000A0A4(v52 + v32, v34 + v33, &qword_100423F28, &qword_1003833F8);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_1000059A8(v34, &qword_100423F28, &qword_1003833F8);
LABEL_18:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  sub_10000A0A4(v34, v45, &qword_100423F28, &qword_1003833F8);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_100246490(v37, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
LABEL_13:
    v28 = &qword_10042AAA0;
    v29 = &qword_100390DB8;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  sub_1002463C0(v40, v44, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  v42 = sub_100255534(v37, v41, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  sub_100246490(v41, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  sub_100246490(v37, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  sub_1000059A8(v34, &qword_100423F28, &qword_1003833F8);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_10024F89C(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100423F48, &qword_100383418);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v67 = &v65 - v8;
  v69 = sub_100024A2C(&qword_10042AA88, &qword_100390DA0);
  v9 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v72 = &v65 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  __chkstk_darwin(v11);
  v68 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_100423F40, &qword_100383410);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v73 = &v65 - v16;
  v74 = sub_100024A2C(&qword_10042AA90, &qword_100390DA8);
  v17 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v78 = &v65 - v18;
  v19 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100024A2C(&qword_100423F38, &qword_100383408);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v65 - v26;
  v28 = sub_100024A2C(&qword_10042AA98, &qword_100390DB0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v32 = &v65 - v31;
  v75 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v33 = *(v75 + 20);
  v34 = *(v29 + 56);
  v79 = a1;
  sub_10000A0A4(a1 + v33, v32, &qword_100423F38, &qword_100383408);
  sub_10000A0A4(v80 + v33, &v32[v34], &qword_100423F38, &qword_100383408);
  v35 = *(v20 + 48);
  if (v35(v32, 1, v19) == 1)
  {
    if (v35(&v32[v34], 1, v19) == 1)
    {
      sub_1000059A8(v32, &qword_100423F38, &qword_100383408);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_10042AA98;
    v37 = &qword_100390DB0;
    v38 = v32;
LABEL_21:
    sub_1000059A8(v38, v36, v37);
    goto LABEL_22;
  }

  sub_10000A0A4(v32, v27, &qword_100423F38, &qword_100383408);
  if (v35(&v32[v34], 1, v19) == 1)
  {
    sub_100246490(v27, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
    goto LABEL_6;
  }

  sub_1002463C0(&v32[v34], v23, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  v39 = sub_10024F274(v27, v23);
  sub_100246490(v23, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  sub_100246490(v27, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  sub_1000059A8(v32, &qword_100423F38, &qword_100383408);
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v40 = v75;
  v41 = *(v75 + 24);
  v42 = *(v74 + 48);
  v44 = v78;
  v43 = v79;
  sub_10000A0A4(v79 + v41, v78, &qword_100423F40, &qword_100383410);
  v45 = v80;
  sub_10000A0A4(v80 + v41, v44 + v42, &qword_100423F40, &qword_100383410);
  v46 = v77;
  v47 = *(v76 + 48);
  if (v47(v44, 1, v77) != 1)
  {
    v48 = v73;
    sub_10000A0A4(v44, v73, &qword_100423F40, &qword_100383410);
    if (v47(v44 + v42, 1, v46) != 1)
    {
      v49 = v44 + v42;
      v50 = v68;
      sub_1002463C0(v49, v68, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      v51 = sub_100255534(v48, v50, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      sub_100246490(v50, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      sub_100246490(v48, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      sub_1000059A8(v44, &qword_100423F40, &qword_100383410);
      if ((v51 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_100246490(v48, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
    goto LABEL_13;
  }

  if (v47(v44 + v42, 1, v46) != 1)
  {
LABEL_13:
    v36 = &qword_10042AA90;
    v37 = &qword_100390DA8;
    v38 = v44;
    goto LABEL_21;
  }

  sub_1000059A8(v44, &qword_100423F40, &qword_100383410);
LABEL_15:
  v52 = *(v40 + 28);
  v53 = *(v69 + 48);
  v54 = v72;
  sub_10000A0A4(v43 + v52, v72, &qword_100423F48, &qword_100383418);
  v55 = v45 + v52;
  v56 = v54;
  sub_10000A0A4(v55, v54 + v53, &qword_100423F48, &qword_100383418);
  v57 = v71;
  v58 = *(v70 + 48);
  if (v58(v54, 1, v71) == 1)
  {
    if (v58(v54 + v53, 1, v57) == 1)
    {
      sub_1000059A8(v54, &qword_100423F48, &qword_100383418);
LABEL_25:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v60 & 1;
    }

    goto LABEL_20;
  }

  v59 = v67;
  sub_10000A0A4(v56, v67, &qword_100423F48, &qword_100383418);
  if (v58(v56 + v53, 1, v57) == 1)
  {
    sub_100246490(v59, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
LABEL_20:
    v36 = &qword_10042AA88;
    v37 = &qword_100390DA0;
    v38 = v56;
    goto LABEL_21;
  }

  v62 = v56 + v53;
  v63 = v66;
  sub_1002463C0(v62, v66, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  v64 = sub_100255534(v59, v63, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  sub_100246490(v63, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  sub_100246490(v59, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  sub_1000059A8(v56, &qword_100423F48, &qword_100383418);
  if (v64)
  {
    goto LABEL_25;
  }

LABEL_22:
  v60 = 0;
  return v60 & 1;
}

uint64_t sub_10025019C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
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
  if (v36 == 6)
  {
    if (v37 != 6)
    {
      return 0;
    }
  }

  else if (v36 != v37)
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

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002503F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100424078, &qword_100383548);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_100024A2C(&qword_10042A978, &qword_100390C90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v36 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v37 = a1;
  v17 = v36[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_100424078, &qword_100383548);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_100424078, &qword_100383548);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_100424078, &qword_100383548);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v35;
      sub_1002463C0(&v16[v18], v35, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      v23 = sub_100255534(v11, v22, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      sub_100246490(v22, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      sub_1000059A8(v16, &qword_100424078, &qword_100383548);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
LABEL_6:
    sub_1000059A8(v16, &qword_10042A978, &qword_100390C90);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v16, &qword_100424078, &qword_100383548);
LABEL_10:
  v24 = v36[6];
  v25 = (v37 + v24);
  v26 = *(v37 + v24 + 4);
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

  v29 = v36[7];
  v30 = (v37 + v29);
  v31 = *(v37 + v29 + 4);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 4);
  if (v31)
  {
    if (v33)
    {
LABEL_22:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if ((v33 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1002507D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
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
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 != 4)
  {
    if (v24 == v25)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v25 != 4)
  {
    return 0;
  }

LABEL_27:
  v26 = v4[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100250988(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
  v5 = *(v4 + 24);
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

  if (sub_1002455FC(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, sub_10025180C))
  {
    v10 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_100250AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
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

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
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
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34 == 4)
  {
    if (v35 != 4)
    {
      return 0;
    }
  }

  else if (v34 != v35)
  {
    return 0;
  }

  v36 = v4[12];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100250CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
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
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
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

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100250ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
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
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
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
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
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
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 4);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 4);
  if (v52)
  {
    if (!v54)
    {
      return 0;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  v55 = v4[15];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 4);
  v58 = (a2 + v55);
  v59 = *(a2 + v55 + 4);
  if (v57)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = v4[16];
  v61 = (a1 + v60);
  v62 = *(a1 + v60 + 4);
  v63 = (a2 + v60);
  v64 = *(a2 + v60 + 4);
  if (v62)
  {
    if (!v64)
    {
      return 0;
    }
  }

  else
  {
    if (*v61 != *v63)
    {
      LOBYTE(v64) = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  v65 = v4[17];
  v66 = *(a1 + v65);
  v67 = *(a2 + v65);
  if (v66 == 7)
  {
    if (v67 != 7)
    {
      return 0;
    }
  }

  else if (v66 != v67)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002511F8(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100424098, &qword_100383568);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v43 - v8;
  v47 = sub_100024A2C(&qword_10042A958, &qword_100390C70);
  v9 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_100423F10, &qword_1003833E0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v43 - v18;
  v20 = sub_100024A2C(&qword_10042A960, &qword_100390C78);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_10000A0A4(a1 + v25, v24, &qword_100423F10, &qword_1003833E0);
  sub_10000A0A4(v52 + v25, &v24[v26], &qword_100423F10, &qword_1003833E0);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    sub_10000A0A4(v24, v19, &qword_100423F10, &qword_1003833E0);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      sub_1002463C0(&v24[v26], v15, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      v31 = sub_100256B8C(v19, v15);
      sub_100246490(v15, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      sub_1000059A8(v24, &qword_100423F10, &qword_1003833E0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_Configuration);
LABEL_6:
    v28 = &qword_10042A960;
    v29 = &qword_100390C78;
    v30 = v24;
LABEL_14:
    sub_1000059A8(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v24, &qword_100423F10, &qword_1003833E0);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  sub_10000A0A4(v51 + v32, v50, &qword_100424098, &qword_100383568);
  sub_10000A0A4(v52 + v32, v34 + v33, &qword_100424098, &qword_100383568);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_1000059A8(v34, &qword_100424098, &qword_100383568);
LABEL_18:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  sub_10000A0A4(v34, v45, &qword_100424098, &qword_100383568);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_100246490(v37, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
LABEL_13:
    v28 = &qword_10042A958;
    v29 = &qword_100390C70;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  sub_1002463C0(v40, v44, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  v42 = sub_100251D8C(v37, v41);
  sub_100246490(v41, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  sub_100246490(v37, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  sub_1000059A8(v34, &qword_100424098, &qword_100383568);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_10025180C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v76 - v11;
  v13 = sub_100024A2C(&qword_10042AA70, &qword_100390D88);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v76 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v33 = v17[8];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v77 = v17;
  v38 = v17[9];
  v39 = *(v13 + 48);
  sub_10000A0A4(a1 + v38, v16, &qword_100423F60, &qword_100383430);
  v40 = a2 + v38;
  v41 = v39;
  sub_10000A0A4(v40, &v16[v39], &qword_100423F60, &qword_100383430);
  v42 = *(v5 + 48);
  if (v42(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v12, &qword_100423F60, &qword_100383430);
    if (v42(&v16[v41], 1, v4) != 1)
    {
      sub_1002463C0(&v16[v41], v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      v45 = sub_100255EF8(v12, v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      sub_1000059A8(v16, &qword_100423F60, &qword_100383430);
      if ((v45 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_Plmn);
LABEL_30:
    sub_1000059A8(v16, &qword_10042AA70, &qword_100390D88);
    goto LABEL_31;
  }

  if (v42(&v16[v41], 1, v4) != 1)
  {
    goto LABEL_30;
  }

  sub_1000059A8(v16, &qword_100423F60, &qword_100383430);
LABEL_34:
  v46 = v77[10];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 4);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 4);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      goto LABEL_31;
    }
  }

  v51 = v77[11];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 4);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 4);
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_31;
    }
  }

  v56 = v77[12];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 4);
  v59 = (a2 + v56);
  v60 = *(a2 + v56 + 4);
  if (v58)
  {
    if (!v60)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v57 != *v59)
    {
      LOBYTE(v60) = 1;
    }

    if (v60)
    {
      goto LABEL_31;
    }
  }

  v61 = v77[13];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 4);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 4);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_31;
    }
  }

  v66 = v77[14];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 4);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 4);
  if (v68)
  {
    if (!v70)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      goto LABEL_31;
    }
  }

  v71 = v77[15];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 4);
  v74 = (a2 + v71);
  v75 = *(a2 + v71 + 4);
  if ((v73 & 1) == 0)
  {
    if (*v72 != *v74)
    {
      LOBYTE(v75) = 1;
    }

    if (v75)
    {
      goto LABEL_31;
    }

LABEL_70:
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v43 & 1;
  }

  if (v75)
  {
    goto LABEL_70;
  }

LABEL_31:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_100251D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
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

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100251EE4(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v103 = a1;
  v2 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  __chkstk_darwin(v2);
  v84 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_100423FE8, &qword_1003834B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v85 = &v83 - v7;
  v87 = sub_100024A2C(&qword_10042A9F0, &qword_100390D08);
  v8 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v90 = &v83 - v9;
  v10 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  __chkstk_darwin(v10);
  v86 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100024A2C(&qword_100423FE0, &qword_1003834B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v91 = &v83 - v15;
  v93 = sub_100024A2C(&qword_10042A9F8, &qword_100390D10);
  v16 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v96 = &v83 - v17;
  v18 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v99 = *(v18 - 8);
  v100 = v18;
  v19 = *(v99 + 64);
  __chkstk_darwin(v18);
  v92 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100024A2C(&qword_100423FD8, &qword_1003834A8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v97 = &v83 - v23;
  v98 = sub_100024A2C(&qword_10042AA00, &qword_100390D18);
  v24 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v26 = &v83 - v25;
  v27 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100024A2C(&qword_100423FD0, &qword_1003834A0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v83 - v34;
  v36 = sub_100024A2C(&qword_10042AA08, &qword_100390D20);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v40 = &v83 - v39;
  v101 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v41 = *(v101 + 20);
  v42 = *(v37 + 56);
  sub_10000A0A4(v103 + v41, v40, &qword_100423FD0, &qword_1003834A0);
  v43 = v102 + v41;
  v44 = v102;
  sub_10000A0A4(v43, &v40[v42], &qword_100423FD0, &qword_1003834A0);
  v45 = *(v28 + 48);
  if (v45(v40, 1, v27) == 1)
  {
    if (v45(&v40[v42], 1, v27) == 1)
    {
      sub_1000059A8(v40, &qword_100423FD0, &qword_1003834A0);
      goto LABEL_8;
    }

LABEL_6:
    v46 = &qword_10042AA08;
    v47 = &qword_100390D20;
    v48 = v40;
LABEL_29:
    sub_1000059A8(v48, v46, v47);
    goto LABEL_30;
  }

  sub_10000A0A4(v40, v35, &qword_100423FD0, &qword_1003834A0);
  if (v45(&v40[v42], 1, v27) == 1)
  {
    sub_100246490(v35, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
    goto LABEL_6;
  }

  sub_1002463C0(&v40[v42], v31, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  v49 = sub_100255534(v35, v31, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  sub_100246490(v31, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  sub_100246490(v35, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  sub_1000059A8(v40, &qword_100423FD0, &qword_1003834A0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_8:
  v50 = v101;
  v51 = *(v101 + 24);
  v52 = *(v98 + 48);
  v53 = v103;
  sub_10000A0A4(v103 + v51, v26, &qword_100423FD8, &qword_1003834A8);
  sub_10000A0A4(v44 + v51, &v26[v52], &qword_100423FD8, &qword_1003834A8);
  v54 = v100;
  v55 = *(v99 + 48);
  if (v55(v26, 1, v100) == 1)
  {
    if (v55(&v26[v52], 1, v54) == 1)
    {
      sub_1000059A8(v26, &qword_100423FD8, &qword_1003834A8);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v56 = v97;
  sub_10000A0A4(v26, v97, &qword_100423FD8, &qword_1003834A8);
  if (v55(&v26[v52], 1, v54) == 1)
  {
    sub_100246490(v56, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
LABEL_13:
    v46 = &qword_10042AA00;
    v47 = &qword_100390D18;
    v48 = v26;
    goto LABEL_29;
  }

  v57 = &v26[v52];
  v58 = v92;
  sub_1002463C0(v57, v92, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  v59 = sub_10024AC20(v56, v58, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  sub_100246490(v58, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  sub_100246490(v56, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  sub_1000059A8(v26, &qword_100423FD8, &qword_1003834A8);
  if ((v59 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v60 = *(v50 + 28);
  v61 = *(v93 + 48);
  v62 = v96;
  sub_10000A0A4(v53 + v60, v96, &qword_100423FE0, &qword_1003834B0);
  v63 = v44 + v60;
  v64 = v62;
  sub_10000A0A4(v63, v62 + v61, &qword_100423FE0, &qword_1003834B0);
  v65 = v95;
  v66 = *(v94 + 48);
  if (v66(v62, 1, v95) != 1)
  {
    v67 = v91;
    sub_10000A0A4(v64, v91, &qword_100423FE0, &qword_1003834B0);
    if (v66(v64 + v61, 1, v65) != 1)
    {
      v68 = v64 + v61;
      v69 = v86;
      sub_1002463C0(v68, v86, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      v70 = sub_100255EF8(v67, v69, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      sub_100246490(v69, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      sub_100246490(v67, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      sub_1000059A8(v64, &qword_100423FE0, &qword_1003834B0);
      if ((v70 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    sub_100246490(v67, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
LABEL_20:
    v46 = &qword_10042A9F8;
    v47 = &qword_100390D10;
LABEL_28:
    v48 = v64;
    goto LABEL_29;
  }

  if (v66(v62 + v61, 1, v65) != 1)
  {
    goto LABEL_20;
  }

  sub_1000059A8(v62, &qword_100423FE0, &qword_1003834B0);
LABEL_22:
  v71 = *(v50 + 32);
  v72 = *(v87 + 48);
  v73 = v90;
  sub_10000A0A4(v53 + v71, v90, &qword_100423FE8, &qword_1003834B8);
  v74 = v44 + v71;
  v64 = v73;
  sub_10000A0A4(v74, v73 + v72, &qword_100423FE8, &qword_1003834B8);
  v75 = v89;
  v76 = *(v88 + 48);
  if (v76(v73, 1, v89) == 1)
  {
    if (v76(v73 + v72, 1, v75) == 1)
    {
      sub_1000059A8(v73, &qword_100423FE8, &qword_1003834B8);
LABEL_33:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v78 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v78 & 1;
    }

    goto LABEL_27;
  }

  v77 = v85;
  sub_10000A0A4(v64, v85, &qword_100423FE8, &qword_1003834B8);
  if (v76(v64 + v72, 1, v75) == 1)
  {
    sub_100246490(v77, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
LABEL_27:
    v46 = &qword_10042A9F0;
    v47 = &qword_100390D08;
    goto LABEL_28;
  }

  v80 = v64 + v72;
  v81 = v84;
  sub_1002463C0(v80, v84, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  v82 = sub_100249750(v77, v81);
  sub_100246490(v81, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  sub_100246490(v77, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  sub_1000059A8(v64, &qword_100423FE8, &qword_1003834B8);
  if (v82)
  {
    goto LABEL_33;
  }

LABEL_30:
  v78 = 0;
  return v78 & 1;
}

uint64_t sub_100252AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v5 = *(v4 + 20);
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

  v8 = *(v4 + 24);
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

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100252BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_100024A2C(&qword_10042A910, &qword_100390C28);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_35;
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
      goto LABEL_35;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_35;
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
      goto LABEL_35;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_35;
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
      goto LABEL_35;
    }
  }

  v33 = v17[8];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34 == 4)
  {
    if (v35 != 4)
    {
      goto LABEL_35;
    }
  }

  else if (v34 != v35)
  {
    goto LABEL_35;
  }

  v36 = v17[9];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_35;
    }
  }

  v41 = v17[10];
  v42 = *(v13 + 48);
  sub_10000A0A4(a1 + v41, v16, &qword_100423F58, &qword_100383428);
  v43 = a2 + v41;
  v44 = v42;
  sub_10000A0A4(v43, &v16[v42], &qword_100423F58, &qword_100383428);
  v45 = *(v5 + 48);
  if (v45(v16, 1, v4) == 1)
  {
    if (v45(&v16[v44], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100423F58, &qword_100383428);
LABEL_38:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v46 & 1;
    }

    goto LABEL_34;
  }

  sub_10000A0A4(v16, v12, &qword_100423F58, &qword_100383428);
  if (v45(&v16[v44], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
LABEL_34:
    sub_1000059A8(v16, &qword_10042A910, &qword_100390C28);
    goto LABEL_35;
  }

  sub_1002463C0(&v16[v44], v8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  v48 = sub_100255EF8(v12, v8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  sub_1000059A8(v16, &qword_100423F58, &qword_100383428);
  if (v48)
  {
    goto LABEL_38;
  }

LABEL_35:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_100253010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - v10;
  v12 = sub_100024A2C(&qword_10042AA28, &qword_100390D40);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v51 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v52 = a1;
  v17 = v51[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_100423F90, &qword_100383460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_100423F90, &qword_100383460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_100423F90, &qword_100383460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v50;
      sub_1002463C0(&v16[v18], v50, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
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
  v24 = v51[6];
  v25 = (v52 + v24);
  v26 = *(v52 + v24 + 4);
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

  v29 = v51[7];
  v30 = (v52 + v29);
  v31 = *(v52 + v29 + 4);
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

  v34 = v51[8];
  v35 = (v52 + v34);
  v36 = *(v52 + v34 + 4);
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

  v39 = v51[9];
  v40 = (v52 + v39);
  v41 = *(v52 + v39 + 4);
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

  v44 = v51[10];
  v45 = (v52 + v44);
  v46 = *(v52 + v44 + 4);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 4);
  if (v46)
  {
    if (v48)
    {
LABEL_40:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100253488(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != 2)
  {
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_7:
  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100253550(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100424088, &qword_100383558);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v43 - v8;
  v47 = sub_100024A2C(&qword_10042A968, &qword_100390C80);
  v9 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_100424080, &qword_100383550);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v43 - v18;
  v20 = sub_100024A2C(&qword_10042A970, &qword_100390C88);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_10000A0A4(a1 + v25, v24, &qword_100424080, &qword_100383550);
  sub_10000A0A4(v52 + v25, &v24[v26], &qword_100424080, &qword_100383550);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    sub_10000A0A4(v24, v19, &qword_100424080, &qword_100383550);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      sub_1002463C0(&v24[v26], v15, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      v31 = sub_100255EF8(v19, v15, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      sub_100246490(v15, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      sub_1000059A8(v24, &qword_100424080, &qword_100383550);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
LABEL_6:
    v28 = &qword_10042A970;
    v29 = &qword_100390C88;
    v30 = v24;
LABEL_14:
    sub_1000059A8(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v24, &qword_100424080, &qword_100383550);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  sub_10000A0A4(v51 + v32, v50, &qword_100424088, &qword_100383558);
  sub_10000A0A4(v52 + v32, v34 + v33, &qword_100424088, &qword_100383558);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_1000059A8(v34, &qword_100424088, &qword_100383558);
LABEL_18:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  sub_10000A0A4(v34, v45, &qword_100424088, &qword_100383558);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_100246490(v37, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
LABEL_13:
    v28 = &qword_10042A968;
    v29 = &qword_100390C80;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  sub_1002463C0(v40, v44, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  v42 = sub_1002503F8(v37, v41);
  sub_100246490(v41, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  sub_100246490(v37, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  sub_1000059A8(v34, &qword_100424088, &qword_100383558);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_100253B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423F10, &qword_1003833E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v64 - v11;
  v13 = sub_100024A2C(&qword_10042A960, &qword_100390C78);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v64 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_32;
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
      goto LABEL_32;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_32;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v28 = v17;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v28;
      if ((v29 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_32;
  }

  v30 = v17[7];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    goto LABEL_32;
  }

  v33 = v17[8];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_32;
    }

    if (*v34 != *v36 || v35 != v37)
    {
      v38 = v17;
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v38;
      if ((v39 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v37)
  {
    goto LABEL_32;
  }

  v65 = v17;
  v40 = v17[9];
  v41 = *(v13 + 48);
  sub_10000A0A4(a1 + v40, v16, &qword_100423F10, &qword_1003833E0);
  v42 = a2 + v40;
  v43 = v41;
  sub_10000A0A4(v42, &v16[v41], &qword_100423F10, &qword_1003833E0);
  v44 = *(v5 + 48);
  if (v44(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v12, &qword_100423F10, &qword_1003833E0);
    if (v44(&v16[v43], 1, v4) != 1)
    {
      sub_1002463C0(&v16[v43], v8, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      v47 = sub_100256B8C(v12, v8);
      sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      sub_1000059A8(v16, &qword_100423F10, &qword_1003833E0);
      if ((v47 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    }

    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_Configuration);
LABEL_31:
    sub_1000059A8(v16, &qword_10042A960, &qword_100390C78);
    goto LABEL_32;
  }

  if (v44(&v16[v43], 1, v4) != 1)
  {
    goto LABEL_31;
  }

  sub_1000059A8(v16, &qword_100423F10, &qword_1003833E0);
LABEL_35:
  v48 = v65;
  v49 = v65[10];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53)
    {
      goto LABEL_32;
    }

    if (*v50 != *v52 || v51 != v53)
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v48 = v65;
      if ((v54 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v53)
  {
    goto LABEL_32;
  }

  v55 = v48[11];
  v56 = *(a1 + v55);
  v57 = *(a2 + v55);
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v57 == 2 || ((v56 ^ v57) & 1) != 0)
  {
    goto LABEL_32;
  }

  v58 = v48[12];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  if (v59 == 2)
  {
    if (v60 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v60 == 2 || ((v59 ^ v60) & 1) != 0)
  {
    goto LABEL_32;
  }

  v61 = v48[13];
  v62 = *(a1 + v61);
  v63 = *(a2 + v61);
  if (v62 != 2)
  {
    if (v63 == 2 || ((v62 ^ v63) & 1) != 0)
    {
      goto LABEL_32;
    }

LABEL_57:
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v45 & 1;
  }

  if (v63 == 2)
  {
    goto LABEL_57;
  }

LABEL_32:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_1002540CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 != 7)
  {
    if (v9 == v10)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v10 != 7)
  {
    return 0;
  }

LABEL_9:
  v11 = v4[7];
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
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002541E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423FC8, &qword_100383498);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_100024A2C(&qword_10042AA10, &qword_100390D28);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v18 = *(v17 + 20);
  v36 = a1;
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 9)
  {
    if (v20 != 9)
    {
      goto LABEL_12;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_12;
  }

  v21 = a2;
  v22 = *(v17 + 24);
  v23 = *(v13 + 48);
  sub_10000A0A4(v36 + v22, v16, &qword_100423FC8, &qword_100383498);
  sub_10000A0A4(v21 + v22, &v16[v23], &qword_100423FC8, &qword_100383498);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100423FC8, &qword_100383498);
LABEL_17:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v16, v12, &qword_100423FC8, &qword_100383498);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
LABEL_10:
    v25 = &qword_10042AA10;
    v26 = &qword_100390D28;
LABEL_11:
    sub_1000059A8(v16, v25, v26);
    goto LABEL_12;
  }

  sub_1002463C0(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  v29 = *(v4 + 20);
  v30 = *&v12[v29];
  v31 = *&v8[v29];
  if (v30 != v31)
  {
    v32 = *&v12[v29];

    v33 = sub_1002198A8(v30, v31);

    if ((v33 & 1) == 0)
    {
      sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
      sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
      v25 = &qword_100423FC8;
      v26 = &qword_100383498;
      goto LABEL_11;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  sub_1000059A8(v16, &qword_100423FC8, &qword_100383498);
  if (v34)
  {
    goto LABEL_17;
  }

LABEL_12:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_10025463C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_1004240A8, &qword_100383578);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v70 = &v65 - v10;
  v71 = sub_100024A2C(&qword_10042A948, &qword_100390C60);
  v11 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v74 = &v65 - v12;
  v13 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100024A2C(&qword_1004240A0, &qword_100383570);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v65 - v20;
  v22 = sub_100024A2C(&qword_10042A950, &qword_100390C68);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v65 - v24;
  v26 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v27 = v26;
  v28 = *(v26 + 20);
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      goto LABEL_33;
    }
  }

  else if (v30 == 2 || ((v29 ^ v30) & 1) != 0)
  {
    goto LABEL_33;
  }

  v31 = *(v26 + 24);
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v35)
  {
    goto LABEL_33;
  }

  v66 = v7;
  v67 = v17;
  v36 = v14;
  v37 = *(v27 + 28);
  v38 = *(v22 + 48);
  v68 = a1;
  sub_10000A0A4(a1 + v37, v25, &qword_1004240A0, &qword_100383570);
  v39 = a2 + v37;
  v40 = a2;
  v69 = v38;
  sub_10000A0A4(v39, &v25[v38], &qword_1004240A0, &qword_100383570);
  v41 = *(v36 + 48);
  if (v41(v25, 1, v13) != 1)
  {
    sub_10000A0A4(v25, v21, &qword_1004240A0, &qword_100383570);
    v49 = v69;
    if (v41(&v25[v69], 1, v13) == 1)
    {
      sub_100246490(v21, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
      goto LABEL_21;
    }

    v52 = &v25[v49];
    v53 = v67;
    sub_1002463C0(v52, v67, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
    v54 = *(v13 + 20);
    v55 = v21[v54];
    v56 = *(v53 + v54);
    if (v55 == 2)
    {
      v42 = v68;
      if (v56 == 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v42 = v68;
      if (v56 != 2 && ((v55 ^ v56) & 1) == 0)
      {
LABEL_35:
        type metadata accessor for UnknownStorage();
        sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v61 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100246490(v53, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
        sub_100246490(v21, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
        sub_1000059A8(v25, &qword_1004240A0, &qword_100383570);
        if ((v61 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_16;
      }
    }

    sub_100246490(v53, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
    sub_100246490(v21, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
    v50 = &qword_1004240A0;
    v51 = &qword_100383570;
    goto LABEL_31;
  }

  if (v41(&v25[v69], 1, v13) != 1)
  {
LABEL_21:
    v50 = &qword_10042A950;
    v51 = &qword_100390C68;
LABEL_31:
    v58 = v25;
    goto LABEL_32;
  }

  sub_1000059A8(v25, &qword_1004240A0, &qword_100383570);
  v42 = v68;
LABEL_16:
  v43 = *(v27 + 32);
  v44 = v40;
  v45 = *(v71 + 48);
  v46 = v74;
  sub_10000A0A4(v42 + v43, v74, &qword_1004240A8, &qword_100383578);
  sub_10000A0A4(v44 + v43, v46 + v45, &qword_1004240A8, &qword_100383578);
  v47 = v73;
  v48 = *(v72 + 48);
  if (v48(v46, 1, v73) == 1)
  {
    if (v48(v46 + v45, 1, v47) == 1)
    {
      sub_1000059A8(v46, &qword_1004240A8, &qword_100383578);
LABEL_38:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v59 & 1;
    }

    goto LABEL_27;
  }

  v57 = v70;
  sub_10000A0A4(v46, v70, &qword_1004240A8, &qword_100383578);
  if (v48(v46 + v45, 1, v47) == 1)
  {
    sub_100246490(v57, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
LABEL_27:
    v50 = &qword_10042A948;
    v51 = &qword_100390C60;
    v58 = v46;
LABEL_32:
    sub_1000059A8(v58, v50, v51);
    goto LABEL_33;
  }

  v62 = v46 + v45;
  v63 = v66;
  sub_1002463C0(v62, v66, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  v64 = sub_100254DB4(v57, v63);
  sub_100246490(v63, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  sub_100246490(v57, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  sub_1000059A8(v46, &qword_1004240A8, &qword_100383578);
  if (v64)
  {
    goto LABEL_38;
  }

LABEL_33:
  v59 = 0;
  return v59 & 1;
}

uint64_t sub_100254DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
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
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v4;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v4[7];
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

  v21 = v4[8];
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

  v24 = v4[9];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v27 = v4[10];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 2)
  {
    if (v29 == 2)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    return 0;
  }

LABEL_37:
  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100254F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
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

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
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
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
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

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10025522C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v5 = *(v4 + 32);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 7)
  {
    if (v7 != 7)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (sub_100245798(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, sub_100254F94) & 1) != 0 && (sub_1002452BC(a1[1], a2[1]) & 1) != 0 && (sub_1002455FC(a1[2], a2[2], type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, sub_100250AA8))
  {
    v8 = *(v4 + 28);
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10025539C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
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
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100255534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100255634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_100024A2C(&qword_10042AA28, &qword_100390D40);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v33 = a3(0);
  v34 = a1;
  v19 = *(v33 + 20);
  v20 = *(v15 + 56);
  sub_10000A0A4(a1 + v19, v18, &qword_100423F90, &qword_100383460);
  sub_10000A0A4(a2 + v19, &v18[v20], &qword_100423F90, &qword_100383460);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) != 1)
  {
    sub_10000A0A4(v18, v13, &qword_100423F90, &qword_100383460);
    if (v21(&v18[v20], 1, v6) != 1)
    {
      v24 = v32;
      sub_1002463C0(&v18[v20], v32, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      v25 = sub_100255534(v13, v24, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v24, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_1000059A8(v18, &qword_100423F90, &qword_100383460);
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_6:
    sub_1000059A8(v18, &qword_10042AA28, &qword_100390D40);
    goto LABEL_7;
  }

  if (v21(&v18[v20], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v18, &qword_100423F90, &qword_100383460);
LABEL_10:
  v26 = *(v33 + 24);
  v27 = (v34 + v26);
  v28 = *(v34 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (v30)
    {
LABEL_16:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1002559E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_100024A2C(&qword_10042AA70, &qword_100390D88);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v33 = v17[8];
  v34 = *(v13 + 48);
  sub_10000A0A4(a1 + v33, v16, &qword_100423F60, &qword_100383430);
  v35 = a2 + v33;
  v36 = v34;
  sub_10000A0A4(v35, &v16[v34], &qword_100423F60, &qword_100383430);
  v37 = *(v5 + 48);
  if (v37(v16, 1, v4) == 1)
  {
    if (v37(&v16[v36], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100423F60, &qword_100383430);
LABEL_28:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_24;
  }

  sub_10000A0A4(v16, v12, &qword_100423F60, &qword_100383430);
  if (v37(&v16[v36], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_Plmn);
LABEL_24:
    sub_1000059A8(v16, &qword_10042AA70, &qword_100390D88);
    goto LABEL_25;
  }

  sub_1002463C0(&v16[v36], v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v40 = sub_100255EF8(v12, v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  sub_1000059A8(v16, &qword_100423F60, &qword_100383430);
  if (v40)
  {
    goto LABEL_28;
  }

LABEL_25:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_100255DEC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v5 = *(v4 + 24);
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

  if (sub_100245934(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint))
  {
    v10 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_100255EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
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

  v11 = v5[6];
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

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 4);
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

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10025602C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v5 = v4[6];
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

  v8 = v4[7];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    if (*v12 != *v14 || v13 != v15)
    {
      v17 = v4;
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v17;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = v4;
  if (sub_100033210(*a1, *a2))
  {
    v20 = v19[5];
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10025618C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = v5[6];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 4);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 4);
  if (v11)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = v5[7];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 4);
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

  v19 = v5[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 4);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 4);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v5[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100256324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
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
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 6)
  {
    if (v27 != 6)
    {
      return 0;
    }
  }

  else if (v26 != v27)
  {
    return 0;
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
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
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
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

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100256580(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4;
  if (sub_100245798(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, sub_100256324))
  {
    v21 = v20[5];
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10025670C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100024A2C(&qword_100424020, &qword_1003834F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v28 - v11);
  v13 = sub_100024A2C(&qword_10042A9C0, &qword_100390CD8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v18 = *(v17 + 20);
  v29 = a1;
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 7)
  {
    if (v20 != 7)
    {
      goto LABEL_11;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_11;
  }

  v21 = a2;
  v22 = *(v17 + 24);
  v23 = *(v13 + 48);
  sub_10000A0A4(v29 + v22, v16, &qword_100424020, &qword_1003834F0);
  sub_10000A0A4(v21 + v22, &v16[v23], &qword_100424020, &qword_1003834F0);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100424020, &qword_1003834F0);
LABEL_14:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v16, v12, &qword_100424020, &qword_1003834F0);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
LABEL_10:
    sub_1000059A8(v16, &qword_10042A9C0, &qword_100390CD8);
    goto LABEL_11;
  }

  sub_1002463C0(&v16[v23], v8, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  v27 = sub_100256580(v12, v8);
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  sub_100246490(v12, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  sub_1000059A8(v16, &qword_100424020, &qword_1003834F0);
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_100256A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100256B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
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

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100256CB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100256CFC()
{
  result = qword_100424320;
  if (!qword_100424320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424320);
  }

  return result;
}

unint64_t sub_100256D54()
{
  result = qword_100424438;
  if (!qword_100424438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424438);
  }

  return result;
}

unint64_t sub_100256DAC()
{
  result = qword_100424440;
  if (!qword_100424440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424440);
  }

  return result;
}

unint64_t sub_100256E04()
{
  result = qword_100424448;
  if (!qword_100424448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424448);
  }

  return result;
}

unint64_t sub_100256E8C()
{
  result = qword_100424460;
  if (!qword_100424460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424460);
  }

  return result;
}

unint64_t sub_100256EE4()
{
  result = qword_100424468;
  if (!qword_100424468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424468);
  }

  return result;
}

unint64_t sub_100256F3C()
{
  result = qword_100424470;
  if (!qword_100424470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424470);
  }

  return result;
}

unint64_t sub_100256FC4()
{
  result = qword_100424488;
  if (!qword_100424488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424488);
  }

  return result;
}

unint64_t sub_10025701C()
{
  result = qword_100424490;
  if (!qword_100424490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424490);
  }

  return result;
}

unint64_t sub_100257074()
{
  result = qword_100424498;
  if (!qword_100424498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424498);
  }

  return result;
}

unint64_t sub_1002570FC()
{
  result = qword_1004244B0;
  if (!qword_1004244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244B0);
  }

  return result;
}

unint64_t sub_100257154()
{
  result = qword_1004244B8;
  if (!qword_1004244B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244B8);
  }

  return result;
}

unint64_t sub_1002571AC()
{
  result = qword_1004244C0;
  if (!qword_1004244C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244C0);
  }

  return result;
}

unint64_t sub_100257234()
{
  result = qword_1004244D8;
  if (!qword_1004244D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244D8);
  }

  return result;
}

unint64_t sub_10025728C()
{
  result = qword_1004244E0;
  if (!qword_1004244E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244E0);
  }

  return result;
}

unint64_t sub_1002572E4()
{
  result = qword_1004244E8;
  if (!qword_1004244E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244E8);
  }

  return result;
}

unint64_t sub_10025736C()
{
  result = qword_100424500;
  if (!qword_100424500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424500);
  }

  return result;
}

unint64_t sub_1002573C4()
{
  result = qword_100424508;
  if (!qword_100424508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424508);
  }

  return result;
}

unint64_t sub_10025741C()
{
  result = qword_100424510;
  if (!qword_100424510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424510);
  }

  return result;
}

unint64_t sub_1002574A4()
{
  result = qword_100424528;
  if (!qword_100424528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424528);
  }

  return result;
}

unint64_t sub_1002574FC()
{
  result = qword_100424530;
  if (!qword_100424530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424530);
  }

  return result;
}

unint64_t sub_100257554()
{
  result = qword_100424538;
  if (!qword_100424538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424538);
  }

  return result;
}

unint64_t sub_1002575DC()
{
  result = qword_100424550;
  if (!qword_100424550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424550);
  }

  return result;
}

unint64_t sub_100257634()
{
  result = qword_100424558;
  if (!qword_100424558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424558);
  }

  return result;
}

unint64_t sub_10025768C()
{
  result = qword_100424560;
  if (!qword_100424560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424560);
  }

  return result;
}

unint64_t sub_100257714()
{
  result = qword_100424578;
  if (!qword_100424578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424578);
  }

  return result;
}

unint64_t sub_10025776C()
{
  result = qword_100424580;
  if (!qword_100424580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424580);
  }

  return result;
}

unint64_t sub_1002577C4()
{
  result = qword_100424588;
  if (!qword_100424588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424588);
  }

  return result;
}

unint64_t sub_10025784C()
{
  result = qword_1004245A0;
  if (!qword_1004245A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245A0);
  }

  return result;
}

unint64_t sub_1002578A4()
{
  result = qword_1004245A8;
  if (!qword_1004245A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245A8);
  }

  return result;
}

unint64_t sub_1002578FC()
{
  result = qword_1004245B0;
  if (!qword_1004245B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245B0);
  }

  return result;
}

unint64_t sub_100257984()
{
  result = qword_1004245C8;
  if (!qword_1004245C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245C8);
  }

  return result;
}

unint64_t sub_1002579DC()
{
  result = qword_1004245D0;
  if (!qword_1004245D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245D0);
  }

  return result;
}

unint64_t sub_100257A34()
{
  result = qword_1004245D8;
  if (!qword_1004245D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245D8);
  }

  return result;
}

unint64_t sub_100257ABC()
{
  result = qword_1004245F0;
  if (!qword_1004245F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245F0);
  }

  return result;
}

unint64_t sub_100257B14()
{
  result = qword_1004245F8;
  if (!qword_1004245F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245F8);
  }

  return result;
}

unint64_t sub_100257B6C()
{
  result = qword_100424600;
  if (!qword_100424600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424600);
  }

  return result;
}

unint64_t sub_100257BF4()
{
  result = qword_100424618;
  if (!qword_100424618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424618);
  }

  return result;
}

unint64_t sub_100257C4C()
{
  result = qword_100424620;
  if (!qword_100424620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424620);
  }

  return result;
}

unint64_t sub_100257CA4()
{
  result = qword_100424628;
  if (!qword_100424628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424628);
  }

  return result;
}

unint64_t sub_100257D2C()
{
  result = qword_100424640;
  if (!qword_100424640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424640);
  }

  return result;
}

unint64_t sub_100257D84()
{
  result = qword_100424648;
  if (!qword_100424648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424648);
  }

  return result;
}

unint64_t sub_100257DDC()
{
  result = qword_100424650;
  if (!qword_100424650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424650);
  }

  return result;
}

unint64_t sub_100257E64()
{
  result = qword_100424668;
  if (!qword_100424668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424668);
  }

  return result;
}

unint64_t sub_100257EBC()
{
  result = qword_100424670;
  if (!qword_100424670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424670);
  }

  return result;
}

unint64_t sub_100257F14()
{
  result = qword_100424678;
  if (!qword_100424678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424678);
  }

  return result;
}

unint64_t sub_100257F9C()
{
  result = qword_100424690;
  if (!qword_100424690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424690);
  }

  return result;
}

unint64_t sub_100257FF4()
{
  result = qword_100424698;
  if (!qword_100424698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424698);
  }

  return result;
}

unint64_t sub_10025804C()
{
  result = qword_1004246A0;
  if (!qword_1004246A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004246A0);
  }

  return result;
}

unint64_t sub_1002580D4()
{
  result = qword_1004246B8;
  if (!qword_1004246B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004246B8);
  }

  return result;
}