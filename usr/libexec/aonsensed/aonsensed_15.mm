uint64_t sub_10017F9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v42 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v44 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v45 = a1;
  v17 = v44[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v43;
      sub_1000112AC(&v16[v18], v43, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v23 = sub_1001853C4(v11, v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v16, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v24 = v44[6];
  v25 = *(v45 + v24);
  v26 = *(a2 + v24);
  if (v25 == 4)
  {
    if (v26 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_7;
  }

  v27 = v44[7];
  v28 = *(v45 + v27);
  v29 = *(a2 + v27);
  if (v28 == 4)
  {
    if (v29 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_7;
  }

  v30 = v44[8];
  v31 = *(v45 + v30);
  v32 = *(a2 + v30);
  if (v31 == 4)
  {
    if (v32 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_7;
  }

  v33 = v44[9];
  v34 = *(v45 + v33);
  v35 = *(a2 + v33);
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v35 == 2 || ((v34 ^ v35) & 1) != 0)
  {
    goto LABEL_7;
  }

  v36 = v44[10];
  v37 = *(v45 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    goto LABEL_7;
  }

  v39 = v44[11];
  v40 = *(v45 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 == 2)
    {
LABEL_37:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else if (v41 != 2 && ((v40 ^ v41) & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10017FE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 4)
  {
    if (v7 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 4)
  {
    if (v10 != 4)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017FF0C(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  __chkstk_darwin(v3);
  v73 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CB60, &qword_100374590);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v74 = &v72 - v8;
  v76 = sub_100024A2C(&qword_100423CE8, &qword_100382F50);
  v9 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v79 = &v72 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v82 = *(v11 - 8);
  v83 = v11;
  v12 = *(v82 + 64);
  __chkstk_darwin(v11);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_10041CB58, &qword_100374588);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v80 = &v72 - v16;
  v81 = sub_100024A2C(&qword_100423CF0, &qword_100382F58);
  v17 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v84 = &v72 - v18;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v72 - v26;
  v28 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v32 = &v72 - v31;
  v85 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  v86 = a1;
  v33 = v85[5];
  v34 = *(v29 + 56);
  sub_10000A0A4(a1 + v33, v32, &qword_10041CA30, &qword_100374460);
  v35 = v87 + v33;
  v36 = v87;
  sub_10000A0A4(v35, &v32[v34], &qword_10041CA30, &qword_100374460);
  v37 = *(v20 + 48);
  if (v37(v32, 1, v19) == 1)
  {
    if (v37(&v32[v34], 1, v19) == 1)
    {
      sub_1000059A8(v32, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v38 = &qword_100423CE0;
    v39 = &qword_100393E90;
    v40 = v32;
LABEL_28:
    sub_1000059A8(v40, v38, v39);
    goto LABEL_29;
  }

  sub_10000A0A4(v32, v27, &qword_10041CA30, &qword_100374460);
  if (v37(&v32[v34], 1, v19) == 1)
  {
    sub_100015F24(v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v32[v34], v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v41 = sub_1001853C4(v27, v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v32, &qword_10041CA30, &qword_100374460);
  if ((v41 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  v43 = v85;
  v42 = v86;
  v44 = v85[6];
  v45 = (v86 + v44);
  v46 = *(v86 + v44 + 4);
  v47 = (v36 + v44);
  v48 = *(v36 + v44 + 4);
  if (v46)
  {
    if (!v48)
    {
      goto LABEL_29;
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
      goto LABEL_29;
    }
  }

  v49 = v85[7];
  v50 = *(v81 + 48);
  v51 = v84;
  sub_10000A0A4(v86 + v49, v84, &qword_10041CB58, &qword_100374588);
  v52 = v36 + v49;
  v53 = v51;
  sub_10000A0A4(v52, v51 + v50, &qword_10041CB58, &qword_100374588);
  v54 = v83;
  v55 = *(v82 + 48);
  if (v55(v51, 1, v83) != 1)
  {
    v56 = v80;
    sub_10000A0A4(v53, v80, &qword_10041CB58, &qword_100374588);
    if (v55(v53 + v50, 1, v54) != 1)
    {
      v57 = v53 + v50;
      v58 = v75;
      sub_1000112AC(v57, v75, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
      v59 = sub_10017FE28(v56, v58);
      sub_100015F24(v58, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
      sub_100015F24(v56, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
      sub_1000059A8(v53, &qword_10041CB58, &qword_100374588);
      if ((v59 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    sub_100015F24(v56, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
LABEL_19:
    v38 = &qword_100423CF0;
    v39 = &qword_100382F58;
LABEL_27:
    v40 = v53;
    goto LABEL_28;
  }

  if (v55(v51 + v50, 1, v54) != 1)
  {
    goto LABEL_19;
  }

  sub_1000059A8(v51, &qword_10041CB58, &qword_100374588);
LABEL_21:
  v60 = v43[8];
  v61 = *(v76 + 48);
  v62 = v79;
  sub_10000A0A4(v42 + v60, v79, &qword_10041CB60, &qword_100374590);
  v63 = v36 + v60;
  v53 = v62;
  sub_10000A0A4(v63, v62 + v61, &qword_10041CB60, &qword_100374590);
  v64 = v78;
  v65 = *(v77 + 48);
  if (v65(v62, 1, v78) == 1)
  {
    if (v65(v62 + v61, 1, v64) == 1)
    {
      sub_1000059A8(v62, &qword_10041CB60, &qword_100374590);
LABEL_32:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v67 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v67 & 1;
    }

    goto LABEL_26;
  }

  v66 = v74;
  sub_10000A0A4(v53, v74, &qword_10041CB60, &qword_100374590);
  if (v65(v53 + v61, 1, v64) == 1)
  {
    sub_100015F24(v66, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
LABEL_26:
    v38 = &qword_100423CE8;
    v39 = &qword_100382F50;
    goto LABEL_27;
  }

  v69 = v53 + v61;
  v70 = v73;
  sub_1000112AC(v69, v73, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  v71 = sub_10017F9AC(v66, v70);
  sub_100015F24(v70, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  sub_100015F24(v66, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  sub_1000059A8(v53, &qword_10041CB60, &qword_100374590);
  if (v71)
  {
    goto LABEL_32;
  }

LABEL_29:
  v67 = 0;
  return v67 & 1;
}

uint64_t sub_100180830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v36 = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v37 = a1;
  v17 = v36[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v35;
      sub_1000112AC(&v16[v18], v35, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v23 = sub_1001853C4(v11, v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v16, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
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
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
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

uint64_t sub_100180C0C(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  __chkstk_darwin(v3);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CAF0, &qword_100374520);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v60 = &v58 - v8;
  v61 = sub_100024A2C(&qword_100423D58, &qword_100382FC0);
  v9 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v64 = &v58 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v58 - v18;
  v20 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v58 - v23;
  v65 = type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
  v66 = a1;
  v25 = v65[5];
  v26 = *(v21 + 56);
  sub_10000A0A4(a1 + v25, v24, &qword_10041CA30, &qword_100374460);
  v27 = v67 + v25;
  v28 = v67;
  sub_10000A0A4(v27, &v24[v26], &qword_10041CA30, &qword_100374460);
  v29 = *(v12 + 48);
  if (v29(v24, 1, v11) == 1)
  {
    if (v29(&v24[v26], 1, v11) == 1)
    {
      sub_1000059A8(v24, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v30 = &qword_100423CE0;
    v31 = &qword_100393E90;
    v32 = v24;
LABEL_7:
    sub_1000059A8(v32, v30, v31);
    goto LABEL_8;
  }

  sub_10000A0A4(v24, v19, &qword_10041CA30, &qword_100374460);
  if (v29(&v24[v26], 1, v11) == 1)
  {
    sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v24[v26], v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v35 = sub_1001853C4(v19, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v24, &qword_10041CA30, &qword_100374460);
  if ((v35 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v36 = v65[6];
  v37 = (v66 + v36);
  v38 = *(v66 + v36 + 4);
  v39 = (v28 + v36);
  v40 = *(v28 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v41 = v65[7];
  v42 = *(v61 + 48);
  v43 = v64;
  sub_10000A0A4(v66 + v41, v64, &qword_10041CAF0, &qword_100374520);
  v44 = v28 + v41;
  v45 = v43;
  sub_10000A0A4(v44, v43 + v42, &qword_10041CAF0, &qword_100374520);
  v46 = *(v62 + 48);
  v47 = v43;
  v48 = v63;
  if (v46(v47, 1, v63) == 1)
  {
    if (v46(v45 + v42, 1, v48) == 1)
    {
      sub_1000059A8(v45, &qword_10041CAF0, &qword_100374520);
LABEL_27:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v33 & 1;
    }

    goto LABEL_22;
  }

  v49 = v60;
  sub_10000A0A4(v45, v60, &qword_10041CAF0, &qword_100374520);
  if (v46(v45 + v42, 1, v48) == 1)
  {
    sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
LABEL_22:
    v30 = &qword_100423D58;
    v31 = &qword_100382FC0;
LABEL_23:
    v32 = v45;
    goto LABEL_7;
  }

  v50 = v48;
  v51 = v59;
  sub_1000112AC(v45 + v42, v59, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  v52 = *(v50 + 20);
  v53 = *(v49 + v52);
  v54 = *(v51 + v52);
  if (v53 != v54)
  {

    v55 = sub_10014F64C(v53, v54);

    if (!v55)
    {
      sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
      sub_100015F24(v60, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
      v30 = &qword_10041CAF0;
      v31 = &qword_100374520;
      goto LABEL_23;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v56 = v60;
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  sub_100015F24(v56, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  sub_1000059A8(v45, &qword_10041CAF0, &qword_100374520);
  if (v57)
  {
    goto LABEL_27;
  }

LABEL_8:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_10018134C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v81 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v81 - v15;
  v83 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v84 = a1;
  v17 = v83[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v82;
      sub_1000112AC(&v16[v18], v82, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v23 = sub_1001853C4(v11, v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v16, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v24 = v83[6];
  v25 = (v84 + v24);
  v26 = *(v84 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
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

  v29 = v83[7];
  v30 = (v84 + v29);
  v31 = *(v84 + v29 + 8);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 8);
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

  v34 = v83[8];
  v35 = (v84 + v34);
  v36 = *(v84 + v34 + 8);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 8);
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

  v39 = v83[9];
  v40 = (v84 + v39);
  v41 = *(v84 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
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

  v44 = v83[10];
  v45 = (v84 + v44);
  v46 = *(v84 + v44 + 8);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 8);
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

  v49 = v83[11];
  v50 = (v84 + v49);
  v51 = *(v84 + v49 + 8);
  v52 = (a2 + v49);
  v53 = *(a2 + v49 + 8);
  if (v51)
  {
    if (!v53)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v54 = v83[12];
  v55 = (v84 + v54);
  v56 = *(v84 + v54 + 8);
  v57 = (a2 + v54);
  v58 = *(a2 + v54 + 8);
  if (v56)
  {
    if (!v58)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v55 != *v57)
    {
      LOBYTE(v58) = 1;
    }

    if (v58)
    {
      goto LABEL_7;
    }
  }

  v59 = v83[13];
  v60 = (v84 + v59);
  v61 = *(v84 + v59 + 8);
  v62 = (a2 + v59);
  v63 = *(a2 + v59 + 8);
  if (v61)
  {
    if (!v63)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v60 != *v62)
    {
      LOBYTE(v63) = 1;
    }

    if (v63)
    {
      goto LABEL_7;
    }
  }

  v64 = v83[14];
  v65 = (v84 + v64);
  v66 = *(v84 + v64 + 8);
  v67 = (a2 + v64);
  v68 = *(a2 + v64 + 8);
  if (v66)
  {
    if (!v68)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v65 != *v67)
    {
      LOBYTE(v68) = 1;
    }

    if (v68)
    {
      goto LABEL_7;
    }
  }

  v69 = v83[15];
  v70 = *(v84 + v69);
  v71 = *(a2 + v69);
  if (v70 == 2)
  {
    if (v71 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v71 == 2 || ((v70 ^ v71) & 1) != 0)
  {
    goto LABEL_7;
  }

  v72 = v83[16];
  v73 = *(v84 + v72);
  v74 = *(a2 + v72);
  if (v73 == 2)
  {
    if (v74 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v74 == 2 || ((v73 ^ v74) & 1) != 0)
  {
    goto LABEL_7;
  }

  v75 = v83[17];
  v76 = *(v84 + v75);
  v77 = *(a2 + v75);
  if (v76 == 2)
  {
    if (v77 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v77 == 2 || ((v76 ^ v77) & 1) != 0)
  {
    goto LABEL_7;
  }

  v78 = v83[18];
  v79 = *(v84 + v78);
  v80 = *(a2 + v78);
  if (v79 == 2)
  {
    if (v80 == 2)
    {
LABEL_84:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else if (v80 != 2 && ((v79 ^ v80) & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100181958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
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
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100181A88(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  __chkstk_darwin(v3);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CB08, &qword_100374538);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v65 = &v63 - v8;
  v66 = sub_100024A2C(&qword_100423D50, &qword_100382FB8);
  v9 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v70 = &v63 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v63 - v18;
  v20 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v63 - v23;
  v69 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
  v25 = *(v69 + 20);
  v26 = *(v21 + 56);
  v71 = a1;
  sub_10000A0A4(a1 + v25, v24, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v72 + v25, &v24[v26], &qword_10041CA30, &qword_100374460);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) == 1)
  {
    if (v27(&v24[v26], 1, v11) == 1)
    {
      sub_1000059A8(v24, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_100423CE0;
    v29 = &qword_100393E90;
    v30 = v24;
LABEL_15:
    sub_1000059A8(v30, v28, v29);
    goto LABEL_16;
  }

  sub_10000A0A4(v24, v19, &qword_10041CA30, &qword_100374460);
  if (v27(&v24[v26], 1, v11) == 1)
  {
    sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v24[v26], v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v31 = sub_1001853C4(v19, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v24, &qword_10041CA30, &qword_100374460);
  if ((v31 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v33 = v69;
  v32 = v70;
  v34 = *(v69 + 24);
  v35 = *(v66 + 48);
  v36 = v71;
  sub_10000A0A4(v71 + v34, v70, &qword_10041CB08, &qword_100374538);
  v37 = v72;
  sub_10000A0A4(v72 + v34, v32 + v35, &qword_10041CB08, &qword_100374538);
  v38 = v68;
  v39 = *(v67 + 48);
  if (v39(v32, 1, v68) != 1)
  {
    v40 = v65;
    sub_10000A0A4(v32, v65, &qword_10041CB08, &qword_100374538);
    if (v39(v32 + v35, 1, v38) != 1)
    {
      v43 = v64;
      sub_1000112AC(v32 + v35, v64, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
      v44 = *(v38 + 20);
      v45 = *(v40 + v44);
      v46 = *(v43 + v44);
      if (v45 == v46 || (v47 = *(v40 + v44), , , v48 = sub_100154EDC(v45, v46), , , v48))
      {
        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100015F24(v43, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
        sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
        sub_1000059A8(v32, &qword_10041CB08, &qword_100374538);
        if ((v49 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      sub_100015F24(v43, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
      sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
      v28 = &qword_10041CB08;
      v29 = &qword_100374538;
      goto LABEL_14;
    }

    sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
LABEL_13:
    v28 = &qword_100423D50;
    v29 = &qword_100382FB8;
LABEL_14:
    v30 = v32;
    goto LABEL_15;
  }

  if (v39(v32 + v35, 1, v38) != 1)
  {
    goto LABEL_13;
  }

  sub_1000059A8(v32, &qword_10041CB08, &qword_100374538);
LABEL_21:
  v50 = v33[7];
  v51 = (v36 + v50);
  v52 = *(v36 + v50 + 4);
  v53 = (v37 + v50);
  v54 = *(v37 + v50 + 4);
  if (v52)
  {
    if (!v54)
    {
      goto LABEL_16;
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
      goto LABEL_16;
    }
  }

  v55 = v33[8];
  v56 = (v36 + v55);
  v57 = *(v36 + v55 + 4);
  v58 = (v37 + v55);
  v59 = *(v37 + v55 + 4);
  if (v57)
  {
    if (!v59)
    {
      goto LABEL_16;
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
      goto LABEL_16;
    }
  }

  v60 = v33[9];
  v61 = *(v36 + v60);
  v62 = *(v37 + v60);
  if (v61 == 2)
  {
    if (v62 == 2)
    {
LABEL_39:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v41 & 1;
    }
  }

  else if (v62 != 2 && ((v61 ^ v62) & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_10018221C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
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
  if (v17 == 5)
  {
    if (v18 != 5)
    {
      return 0;
    }
  }

  else if (v17 != v18)
  {
    return 0;
  }

  v19 = v4[9];
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

  v22 = v4[10];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 4);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 4);
  if (v24)
  {
    if (!v26)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001823D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v26 = a1;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = *(a3(0) + 20);
  v19 = *(v14 + 56);
  sub_10000A0A4(v26 + v18, v17, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v18, &v17[v19], &qword_10041CA30, &qword_100374460);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) == 1)
  {
    if (v20(&v17[v19], 1, v5) == 1)
    {
      sub_1000059A8(v17, &qword_10041CA30, &qword_100374460);
LABEL_9:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_10000A0A4(v17, v12, &qword_10041CA30, &qword_100374460);
  if (v20(&v17[v19], 1, v5) == 1)
  {
    sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v17, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  v22 = v25;
  sub_1000112AC(&v17[v19], v25, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v23 = sub_1001853C4(v12, v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v17, &qword_10041CA30, &qword_100374460);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_100182748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v41 - v12;
  v14 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  v43 = a3(0);
  v44 = a1;
  v19 = v43[5];
  v20 = *(v15 + 56);
  sub_10000A0A4(a1 + v19, v18, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v19, &v18[v20], &qword_10041CA30, &qword_100374460);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) != 1)
  {
    sub_10000A0A4(v18, v13, &qword_10041CA30, &qword_100374460);
    if (v21(&v18[v20], 1, v6) != 1)
    {
      v24 = v42;
      sub_1000112AC(&v18[v20], v42, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v25 = sub_1001853C4(v13, v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v18, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  if (v21(&v18[v20], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
LABEL_10:
  v26 = v43[6];
  v27 = (v44 + v26);
  v28 = *(v44 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v31 = v43[7];
  v32 = (v44 + v31);
  v33 = *(v44 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v36 = v43[8];
  v37 = (v44 + v36);
  v38 = *(v44 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (v40)
    {
LABEL_28:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_100182B5C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_Baro(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v16, &qword_100423CE0, &qword_100393E90);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_1000112AC(&v16[v18], v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v21 = sub_1001853C4(v11, v20, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v20, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_100170CC8(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 20);
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t sub_100182EEC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4[9];
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

  v25 = v4;
  if (sub_10016F7C4(*a1, *a2))
  {
    v26 = v25[5];
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_100183070(uint64_t *a1, uint64_t *a2)
{
  v76 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  __chkstk_darwin(v3);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CB50, &qword_100374580);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v69 = &v67 - v8;
  v70 = sub_100024A2C(&qword_100423CF8, &qword_100382F60);
  v9 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v73 = &v67 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100024A2C(&qword_10041CB48, &qword_100374578);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = (&v67 - v18);
  v20 = sub_100024A2C(&qword_100423D00, &qword_100382F68);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v67 - v23;
  v74 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v75 = a1;
  v25 = v74[6];
  v26 = *(v21 + 56);
  sub_10000A0A4(a1 + v25, v24, &qword_10041CB48, &qword_100374578);
  v27 = v76;
  sub_10000A0A4(v76 + v25, &v24[v26], &qword_10041CB48, &qword_100374578);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_1000059A8(v24, &qword_10041CB48, &qword_100374578);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &qword_100423D00;
    v30 = &qword_100382F68;
    v31 = v24;
LABEL_7:
    sub_1000059A8(v31, v29, v30);
    goto LABEL_26;
  }

  sub_10000A0A4(v24, v19, &qword_10041CB48, &qword_100374578);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
    goto LABEL_6;
  }

  sub_1000112AC(&v24[v26], v15, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  v32 = sub_100182EEC(v19, v15);
  sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  sub_1000059A8(v24, &qword_10041CB48, &qword_100374578);
  if ((v32 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v33 = v75;
  if ((sub_10016FA6C(*v75, *v27) & 1) == 0)
  {
    goto LABEL_26;
  }

  v34 = v74;
  v35 = v74[7];
  v36 = (v33 + v35);
  v37 = *(v33 + v35 + 8);
  v38 = (v27 + v35);
  v39 = *(v27 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_26;
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
      goto LABEL_26;
    }
  }

  v40 = v74[8];
  v41 = *(v33 + v40);
  v42 = *(v27 + v40);
  if (v41 == 4)
  {
    if (v42 != 4)
    {
      goto LABEL_26;
    }
  }

  else if (v41 != v42)
  {
    goto LABEL_26;
  }

  v43 = v74[9];
  v44 = (v33 + v43);
  v45 = *(v33 + v43 + 4);
  v46 = (v27 + v43);
  v47 = *(v27 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_26;
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
      goto LABEL_26;
    }
  }

  v50 = v74[10];
  v51 = *(v70 + 48);
  v52 = v73;
  sub_10000A0A4(v33 + v50, v73, &qword_10041CB50, &qword_100374580);
  v53 = v27 + v50;
  v54 = v52;
  sub_10000A0A4(v53, v52 + v51, &qword_10041CB50, &qword_100374580);
  v55 = v72;
  v56 = *(v71 + 48);
  if (v56(v52, 1, v72) != 1)
  {
    v57 = v69;
    sub_10000A0A4(v54, v69, &qword_10041CB50, &qword_100374580);
    if (v56(v54 + v51, 1, v55) != 1)
    {
      v58 = v54 + v51;
      v59 = v68;
      sub_1000112AC(v58, v68, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      v60 = sub_100177904(v57, v59);
      sub_100015F24(v59, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      sub_100015F24(v57, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      sub_1000059A8(v54, &qword_10041CB50, &qword_100374580);
      if ((v60 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    sub_100015F24(v57, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
    goto LABEL_33;
  }

  if (v56(v52 + v51, 1, v55) != 1)
  {
LABEL_33:
    v29 = &qword_100423CF8;
    v30 = &qword_100382F60;
    v31 = v54;
    goto LABEL_7;
  }

  sub_1000059A8(v52, &qword_10041CB50, &qword_100374580);
LABEL_35:
  v61 = v34[11];
  v62 = (v33 + v61);
  v63 = *(v33 + v61 + 8);
  v64 = (v27 + v61);
  v65 = *(v27 + v61 + 8);
  if (v63)
  {
    if (v65)
    {
LABEL_41:
      v66 = v34[5];
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v48 & 1;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if ((v65 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

LABEL_26:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_10018376C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v30 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
  v17 = v30[6];
  v18 = *(v13 + 56);
  v32 = a1;
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
LABEL_8:
      v23 = v32;
      if (sub_10017139C(*v32, *a2, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, sub_100183070))
      {
        v24 = v30[7];
        v25 = *(v23 + v24);
        v26 = *(a2 + v24);
        if (v25 == 2)
        {
          if (v26 != 2)
          {
            goto LABEL_14;
          }
        }

        else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
        {
          goto LABEL_14;
        }

        v28 = v30[5];
        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v20 & 1;
      }

LABEL_14:
      v20 = 0;
      return v20 & 1;
    }
  }

  else
  {
    sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v31;
      sub_1000112AC(&v16[v18], v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v22 = sub_1001853C4(v11, v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  sub_1000059A8(v16, &qword_100423CE0, &qword_100393E90);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100183B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

  v21 = v5[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
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
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100183CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v61 - v11;
  v13 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v33 = v17[8];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v38 = v17[9];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v43 = v17[10];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v48 = v17[11];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 8);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v53 = v17[12];
  v54 = *(v13 + 48);
  sub_10000A0A4(a1 + v53, v16, &qword_10041CA30, &qword_100374460);
  v55 = a2 + v53;
  v56 = v54;
  sub_10000A0A4(v55, &v16[v54], &qword_10041CA30, &qword_100374460);
  v57 = *(v5 + 48);
  if (v57(v16, 1, v4) == 1)
  {
    if (v57(&v16[v56], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
LABEL_52:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v58 & 1;
    }

    goto LABEL_48;
  }

  sub_10000A0A4(v16, v12, &qword_10041CA30, &qword_100374460);
  if (v57(&v16[v56], 1, v4) == 1)
  {
    sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_48:
    sub_1000059A8(v16, &qword_100423CE0, &qword_100393E90);
    goto LABEL_49;
  }

  sub_1000112AC(&v16[v56], v8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v60 = sub_1001853C4(v12, v8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
  if (v60)
  {
    goto LABEL_52;
  }

LABEL_49:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_1001841B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CB20, &qword_100374550);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  v12 = sub_100024A2C(&qword_100423D28, &qword_100382F90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_10000A0A4(a1 + v17, v16, &qword_10041CB20, &qword_100374550);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CB20, &qword_100374550);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_10041CB20, &qword_100374550);
LABEL_9:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_10000A0A4(v16, v11, &qword_10041CB20, &qword_100374550);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
LABEL_6:
    sub_1000059A8(v16, &qword_100423D28, &qword_100382F90);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_1000112AC(&v16[v18], v24[0], type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  v22 = sub_100183CD8(v11, v21);
  sub_100015F24(v21, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  sub_1000059A8(v16, &qword_10041CB20, &qword_100374550);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10018450C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10016F7C4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v18 = v4[9];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
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

  v23 = v4[10];
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

  v28 = v4[11];
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

  v33 = v4[12];
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

  v39 = v4[5];
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10018471C(uint64_t *a1, uint64_t *a2)
{
  v56 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  __chkstk_darwin(v3);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CB40, &qword_100374570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v49 = &v47 - v8;
  v50 = sub_100024A2C(&qword_100423D08, &qword_100382F70);
  v9 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v47 - v18;
  v20 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
  v25 = *(v51 + 28);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_10000A0A4(a1 + v25, v24, &qword_10041CA30, &qword_100374460);
  v27 = v56;
  sub_10000A0A4(v56 + v25, &v24[v26], &qword_10041CA30, &qword_100374460);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_1000059A8(v24, &qword_10041CA30, &qword_100374460);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &qword_100423CE0;
    v30 = &qword_100393E90;
    v31 = v24;
LABEL_7:
    sub_1000059A8(v31, v29, v30);
    goto LABEL_19;
  }

  sub_10000A0A4(v24, v19, &qword_10041CA30, &qword_100374460);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  sub_1000112AC(&v24[v26], v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v32 = sub_1001853C4(v19, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v24, &qword_10041CA30, &qword_100374460);
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v33 = v55;
  if ((sub_100171538(*v55, *v27) & 1) == 0 || (sub_1001719A0(v33[1], v27[1]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v34 = v51;
  v35 = *(v51 + 32);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_10000A0A4(v33 + v35, v54, &qword_10041CB40, &qword_100374570);
  sub_10000A0A4(v27 + v35, v37 + v36, &qword_10041CB40, &qword_100374570);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    sub_10000A0A4(v37, v49, &qword_10041CB40, &qword_100374570);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v41 = v37 + v36;
      v42 = v48;
      sub_1000112AC(v41, v48, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      v43 = sub_100184D80(v40, v42, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      sub_100015F24(v42, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      sub_1000059A8(v37, &qword_10041CB40, &qword_100374570);
      if (v43)
      {
        goto LABEL_18;
      }

LABEL_19:
      v45 = 0;
      return v45 & 1;
    }

    sub_100015F24(v40, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
    goto LABEL_16;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_16:
    v29 = &qword_100423D08;
    v30 = &qword_100382F70;
    v31 = v37;
    goto LABEL_7;
  }

  sub_1000059A8(v37, &qword_10041CB40, &qword_100374570);
LABEL_18:
  v44 = *(v34 + 24);
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v45 & 1;
}

uint64_t sub_100184D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
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

  v11 = *(v5 + 24);
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
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100184E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
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
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 4)
  {
    if (v22 != 4)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100184FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
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

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100185170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
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

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001852D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001853C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_1001854FC()
{
  result = qword_10041CEA8;
  if (!qword_10041CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CEA8);
  }

  return result;
}

unint64_t sub_100185554()
{
  result = qword_10041CEB0;
  if (!qword_10041CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CEB0);
  }

  return result;
}

unint64_t sub_1001855AC()
{
  result = qword_10041CEB8;
  if (!qword_10041CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CEB8);
  }

  return result;
}

unint64_t sub_100185634()
{
  result = qword_10041CED0;
  if (!qword_10041CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CED0);
  }

  return result;
}

unint64_t sub_10018568C()
{
  result = qword_10041CED8;
  if (!qword_10041CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CED8);
  }

  return result;
}

unint64_t sub_1001856E4()
{
  result = qword_10041CEE0;
  if (!qword_10041CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CEE0);
  }

  return result;
}

unint64_t sub_10018576C()
{
  result = qword_10041CEF8;
  if (!qword_10041CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CEF8);
  }

  return result;
}

unint64_t sub_1001857C4()
{
  result = qword_10041CF00;
  if (!qword_10041CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF00);
  }

  return result;
}

unint64_t sub_10018581C()
{
  result = qword_10041CF08;
  if (!qword_10041CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF08);
  }

  return result;
}

unint64_t sub_1001858A4()
{
  result = qword_10041CF20;
  if (!qword_10041CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF20);
  }

  return result;
}

unint64_t sub_1001858FC()
{
  result = qword_10041CF28;
  if (!qword_10041CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF28);
  }

  return result;
}

unint64_t sub_100185954()
{
  result = qword_10041CF30;
  if (!qword_10041CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF30);
  }

  return result;
}

unint64_t sub_1001859DC()
{
  result = qword_10041CF48;
  if (!qword_10041CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF48);
  }

  return result;
}

unint64_t sub_100185A34()
{
  result = qword_10041CF50;
  if (!qword_10041CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF50);
  }

  return result;
}

unint64_t sub_100185A8C()
{
  result = qword_10041CF58;
  if (!qword_10041CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF58);
  }

  return result;
}

unint64_t sub_100185B14()
{
  result = qword_10041CF70;
  if (!qword_10041CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF70);
  }

  return result;
}

unint64_t sub_100185B6C()
{
  result = qword_10041CF78;
  if (!qword_10041CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF78);
  }

  return result;
}

unint64_t sub_100185BC4()
{
  result = qword_10041CF80;
  if (!qword_10041CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF80);
  }

  return result;
}

unint64_t sub_100185C4C()
{
  result = qword_10041CF98;
  if (!qword_10041CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CF98);
  }

  return result;
}

unint64_t sub_100185CA4()
{
  result = qword_10041CFA0;
  if (!qword_10041CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFA0);
  }

  return result;
}

unint64_t sub_100185CFC()
{
  result = qword_10041CFA8;
  if (!qword_10041CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFA8);
  }

  return result;
}

unint64_t sub_100185D84()
{
  result = qword_10041CFC0;
  if (!qword_10041CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFC0);
  }

  return result;
}

unint64_t sub_100185DDC()
{
  result = qword_10041CFC8;
  if (!qword_10041CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFC8);
  }

  return result;
}

unint64_t sub_100185E34()
{
  result = qword_10041CFD0;
  if (!qword_10041CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFD0);
  }

  return result;
}

unint64_t sub_100185EBC()
{
  result = qword_10041CFE8;
  if (!qword_10041CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFE8);
  }

  return result;
}

unint64_t sub_100185F14()
{
  result = qword_10041CFF0;
  if (!qword_10041CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFF0);
  }

  return result;
}

unint64_t sub_100185F6C()
{
  result = qword_10041CFF8;
  if (!qword_10041CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041CFF8);
  }

  return result;
}

unint64_t sub_100185FF4()
{
  result = qword_10041D010;
  if (!qword_10041D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D010);
  }

  return result;
}

unint64_t sub_10018604C()
{
  result = qword_10041D018;
  if (!qword_10041D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D018);
  }

  return result;
}

unint64_t sub_1001860A4()
{
  result = qword_10041D020;
  if (!qword_10041D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D020);
  }

  return result;
}

unint64_t sub_10018612C()
{
  result = qword_10041D038;
  if (!qword_10041D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D038);
  }

  return result;
}

unint64_t sub_100186184()
{
  result = qword_10041D040;
  if (!qword_10041D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D040);
  }

  return result;
}

unint64_t sub_1001861DC()
{
  result = qword_10041D048;
  if (!qword_10041D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D048);
  }

  return result;
}

unint64_t sub_100186264()
{
  result = qword_10041D060;
  if (!qword_10041D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D060);
  }

  return result;
}

unint64_t sub_1001862BC()
{
  result = qword_10041D068;
  if (!qword_10041D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D068);
  }

  return result;
}

unint64_t sub_100186314()
{
  result = qword_10041D070;
  if (!qword_10041D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D070);
  }

  return result;
}

unint64_t sub_10018639C()
{
  result = qword_10041D088;
  if (!qword_10041D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D088);
  }

  return result;
}

unint64_t sub_1001863F4()
{
  result = qword_10041D090;
  if (!qword_10041D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D090);
  }

  return result;
}

unint64_t sub_10018644C()
{
  result = qword_10041D098;
  if (!qword_10041D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D098);
  }

  return result;
}

unint64_t sub_1001864D4()
{
  result = qword_10041D0B0;
  if (!qword_10041D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0B0);
  }

  return result;
}

unint64_t sub_10018652C()
{
  result = qword_10041D0B8;
  if (!qword_10041D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0B8);
  }

  return result;
}

unint64_t sub_100186584()
{
  result = qword_10041D0C0;
  if (!qword_10041D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0C0);
  }

  return result;
}

unint64_t sub_10018660C()
{
  result = qword_10041D0D8;
  if (!qword_10041D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0D8);
  }

  return result;
}

unint64_t sub_100186664()
{
  result = qword_10041D0E0;
  if (!qword_10041D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0E0);
  }

  return result;
}

unint64_t sub_1001866BC()
{
  result = qword_10041D0E8;
  if (!qword_10041D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D0E8);
  }

  return result;
}

unint64_t sub_100186744()
{
  result = qword_10041D100;
  if (!qword_10041D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D100);
  }

  return result;
}

unint64_t sub_10018679C()
{
  result = qword_10041D108;
  if (!qword_10041D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D108);
  }

  return result;
}

unint64_t sub_1001867F4()
{
  result = qword_10041D110;
  if (!qword_10041D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D110);
  }

  return result;
}

unint64_t sub_100186880()
{
  result = qword_10041D128;
  if (!qword_10041D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D128);
  }

  return result;
}

unint64_t sub_1001868D8()
{
  result = qword_10041D130;
  if (!qword_10041D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D130);
  }

  return result;
}

unint64_t sub_100186960()
{
  result = qword_10041D148;
  if (!qword_10041D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D148);
  }

  return result;
}

unint64_t sub_1001869B8()
{
  result = qword_10041D150;
  if (!qword_10041D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D150);
  }

  return result;
}

unint64_t sub_100186A10()
{
  result = qword_10041D158;
  if (!qword_10041D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D158);
  }

  return result;
}

unint64_t sub_100186A98()
{
  result = qword_10041D170;
  if (!qword_10041D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D170);
  }

  return result;
}

unint64_t sub_100186AF0()
{
  result = qword_10041D178;
  if (!qword_10041D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D178);
  }

  return result;
}

unint64_t sub_100186B48()
{
  result = qword_10041D180;
  if (!qword_10041D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D180);
  }

  return result;
}

unint64_t sub_100186BD0()
{
  result = qword_10041D198;
  if (!qword_10041D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D198);
  }

  return result;
}

unint64_t sub_100186C28()
{
  result = qword_10041D1A0;
  if (!qword_10041D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1A0);
  }

  return result;
}

unint64_t sub_100186C80()
{
  result = qword_10041D1A8;
  if (!qword_10041D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1A8);
  }

  return result;
}

unint64_t sub_100186D08()
{
  result = qword_10041D1C0;
  if (!qword_10041D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1C0);
  }

  return result;
}

unint64_t sub_100186D60()
{
  result = qword_10041D1C8;
  if (!qword_10041D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1C8);
  }

  return result;
}

unint64_t sub_100186DB8()
{
  result = qword_10041D1D0;
  if (!qword_10041D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1D0);
  }

  return result;
}

unint64_t sub_100186E40()
{
  result = qword_10041D1E8;
  if (!qword_10041D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1E8);
  }

  return result;
}

unint64_t sub_100186E98()
{
  result = qword_10041D1F0;
  if (!qword_10041D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1F0);
  }

  return result;
}

unint64_t sub_100186EF0()
{
  result = qword_10041D1F8;
  if (!qword_10041D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D1F8);
  }

  return result;
}

unint64_t sub_100186F78()
{
  result = qword_10041D210;
  if (!qword_10041D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D210);
  }

  return result;
}

unint64_t sub_100186FD0()
{
  result = qword_10041D218;
  if (!qword_10041D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D218);
  }

  return result;
}

unint64_t sub_100187028()
{
  result = qword_10041D220;
  if (!qword_10041D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D220);
  }

  return result;
}

unint64_t sub_1001870B0()
{
  result = qword_10041D238;
  if (!qword_10041D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D238);
  }

  return result;
}

unint64_t sub_100187108()
{
  result = qword_10041D240;
  if (!qword_10041D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D240);
  }

  return result;
}

unint64_t sub_100187160()
{
  result = qword_10041D248;
  if (!qword_10041D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D248);
  }

  return result;
}

unint64_t sub_1001871E8()
{
  result = qword_10041D260;
  if (!qword_10041D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D260);
  }

  return result;
}

unint64_t sub_100187240()
{
  result = qword_10041D268;
  if (!qword_10041D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D268);
  }

  return result;
}

unint64_t sub_100187298()
{
  result = qword_10041D270;
  if (!qword_10041D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D270);
  }

  return result;
}

unint64_t sub_100187320()
{
  result = qword_10041D288;
  if (!qword_10041D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D288);
  }

  return result;
}

unint64_t sub_100187378()
{
  result = qword_10041D290;
  if (!qword_10041D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D290);
  }

  return result;
}

unint64_t sub_1001873D0()
{
  result = qword_10041D298;
  if (!qword_10041D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D298);
  }

  return result;
}

unint64_t sub_100187458()
{
  result = qword_10041D2B0;
  if (!qword_10041D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2B0);
  }

  return result;
}

unint64_t sub_1001874B0()
{
  result = qword_10041D2B8;
  if (!qword_10041D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2B8);
  }

  return result;
}

unint64_t sub_100187508()
{
  result = qword_10041D2C0;
  if (!qword_10041D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2C0);
  }

  return result;
}

unint64_t sub_100187590()
{
  result = qword_10041D2D8;
  if (!qword_10041D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2D8);
  }

  return result;
}

unint64_t sub_1001875E8()
{
  result = qword_10041D2E0;
  if (!qword_10041D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2E0);
  }

  return result;
}

unint64_t sub_100187640()
{
  result = qword_10041D2E8;
  if (!qword_10041D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D2E8);
  }

  return result;
}

unint64_t sub_1001876C8()
{
  result = qword_10041D300;
  if (!qword_10041D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D300);
  }

  return result;
}

unint64_t sub_100187720()
{
  result = qword_10041D308;
  if (!qword_10041D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D308);
  }

  return result;
}

unint64_t sub_100187778()
{
  result = qword_10041D310;
  if (!qword_10041D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D310);
  }

  return result;
}

unint64_t sub_100187800()
{
  result = qword_10041D328;
  if (!qword_10041D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D328);
  }

  return result;
}

unint64_t sub_100187858()
{
  result = qword_10041D330;
  if (!qword_10041D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D330);
  }

  return result;
}

unint64_t sub_1001878B0()
{
  result = qword_10041D338;
  if (!qword_10041D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D338);
  }

  return result;
}

unint64_t sub_100187938()
{
  result = qword_10041D350;
  if (!qword_10041D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D350);
  }

  return result;
}

unint64_t sub_100187990()
{
  result = qword_10041D358;
  if (!qword_10041D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D358);
  }

  return result;
}

unint64_t sub_1001879E8()
{
  result = qword_10041D360;
  if (!qword_10041D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D360);
  }

  return result;
}

unint64_t sub_100187A70()
{
  result = qword_10041D378;
  if (!qword_10041D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D378);
  }

  return result;
}

unint64_t sub_100187AC8()
{
  result = qword_10041D380;
  if (!qword_10041D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D380);
  }

  return result;
}

unint64_t sub_100187B20()
{
  result = qword_10041D388;
  if (!qword_10041D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D388);
  }

  return result;
}

unint64_t sub_100187BA8()
{
  result = qword_10041D3A0;
  if (!qword_10041D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3A0);
  }

  return result;
}

unint64_t sub_100187C00()
{
  result = qword_10041D3A8;
  if (!qword_10041D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3A8);
  }

  return result;
}

unint64_t sub_100187C58()
{
  result = qword_10041D3B0;
  if (!qword_10041D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3B0);
  }

  return result;
}

unint64_t sub_100187CE0()
{
  result = qword_10041D3C8;
  if (!qword_10041D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3C8);
  }

  return result;
}

unint64_t sub_100187D38()
{
  result = qword_10041D3D0;
  if (!qword_10041D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3D0);
  }

  return result;
}

unint64_t sub_100187D90()
{
  result = qword_10041D3D8;
  if (!qword_10041D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3D8);
  }

  return result;
}

unint64_t sub_100187E18()
{
  result = qword_10041D3F0;
  if (!qword_10041D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3F0);
  }

  return result;
}

unint64_t sub_100187E70()
{
  result = qword_10041D3F8;
  if (!qword_10041D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D3F8);
  }

  return result;
}

unint64_t sub_100187EC8()
{
  result = qword_10041D400;
  if (!qword_10041D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D400);
  }

  return result;
}

unint64_t sub_100187F50()
{
  result = qword_10041D418;
  if (!qword_10041D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D418);
  }

  return result;
}

unint64_t sub_100187FA8()
{
  result = qword_10041D420;
  if (!qword_10041D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D420);
  }

  return result;
}

unint64_t sub_100188000()
{
  result = qword_10041D428;
  if (!qword_10041D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D428);
  }

  return result;
}

unint64_t sub_100188088()
{
  result = qword_10041D440;
  if (!qword_10041D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D440);
  }

  return result;
}

unint64_t sub_1001880E0()
{
  result = qword_10041D448;
  if (!qword_10041D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D448);
  }

  return result;
}

unint64_t sub_100188138()
{
  result = qword_10041D450;
  if (!qword_10041D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D450);
  }

  return result;
}

unint64_t sub_1001881C0()
{
  result = qword_10041D468;
  if (!qword_10041D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D468);
  }

  return result;
}

unint64_t sub_100188218()
{
  result = qword_10041D470;
  if (!qword_10041D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D470);
  }

  return result;
}

unint64_t sub_100188270()
{
  result = qword_10041D478;
  if (!qword_10041D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D478);
  }

  return result;
}

unint64_t sub_1001882F8()
{
  result = qword_10041D490;
  if (!qword_10041D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D490);
  }

  return result;
}

unint64_t sub_100188350()
{
  result = qword_10041D498;
  if (!qword_10041D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D498);
  }

  return result;
}

unint64_t sub_1001883A8()
{
  result = qword_10041D4A0;
  if (!qword_10041D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4A0);
  }

  return result;
}

unint64_t sub_100188430()
{
  result = qword_10041D4B8;
  if (!qword_10041D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4B8);
  }

  return result;
}

unint64_t sub_100188488()
{
  result = qword_10041D4C0;
  if (!qword_10041D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4C0);
  }

  return result;
}

unint64_t sub_1001884E0()
{
  result = qword_10041D4C8;
  if (!qword_10041D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4C8);
  }

  return result;
}

unint64_t sub_100188568()
{
  result = qword_10041D4E0;
  if (!qword_10041D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4E0);
  }

  return result;
}

unint64_t sub_1001885C0()
{
  result = qword_10041D4E8;
  if (!qword_10041D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4E8);
  }

  return result;
}

unint64_t sub_100188618()
{
  result = qword_10041D4F0;
  if (!qword_10041D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D4F0);
  }

  return result;
}

unint64_t sub_1001886A0()
{
  result = qword_10041D508;
  if (!qword_10041D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D508);
  }

  return result;
}

unint64_t sub_1001886F8()
{
  result = qword_10041D510;
  if (!qword_10041D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D510);
  }

  return result;
}

unint64_t sub_100188750()
{
  result = qword_10041D518;
  if (!qword_10041D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D518);
  }

  return result;
}

unint64_t sub_1001887D8()
{
  result = qword_10041D530;
  if (!qword_10041D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D530);
  }

  return result;
}

unint64_t sub_100188830()
{
  result = qword_10041D538;
  if (!qword_10041D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D538);
  }

  return result;
}

unint64_t sub_100188888()
{
  result = qword_10041D540;
  if (!qword_10041D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D540);
  }

  return result;
}

unint64_t sub_100188910()
{
  result = qword_10041D558;
  if (!qword_10041D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D558);
  }

  return result;
}

unint64_t sub_100188968()
{
  result = qword_10041D560;
  if (!qword_10041D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D560);
  }

  return result;
}

unint64_t sub_1001889C0()
{
  result = qword_10041D568;
  if (!qword_10041D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D568);
  }

  return result;
}

unint64_t sub_100188A48()
{
  result = qword_10041D580;
  if (!qword_10041D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D580);
  }

  return result;
}

unint64_t sub_100188AA0()
{
  result = qword_10041D588;
  if (!qword_10041D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D588);
  }

  return result;
}

unint64_t sub_100188AF8()
{
  result = qword_10041D590;
  if (!qword_10041D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D590);
  }

  return result;
}

unint64_t sub_100188B80()
{
  result = qword_10041D5A8;
  if (!qword_10041D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5A8);
  }

  return result;
}

unint64_t sub_100188BD8()
{
  result = qword_10041D5B0;
  if (!qword_10041D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5B0);
  }

  return result;
}

unint64_t sub_100188C30()
{
  result = qword_10041D5B8;
  if (!qword_10041D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5B8);
  }

  return result;
}

unint64_t sub_100188CB8()
{
  result = qword_10041D5D0;
  if (!qword_10041D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5D0);
  }

  return result;
}

unint64_t sub_100188D10()
{
  result = qword_10041D5D8;
  if (!qword_10041D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5D8);
  }

  return result;
}

unint64_t sub_100188D68()
{
  result = qword_10041D5E0;
  if (!qword_10041D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5E0);
  }

  return result;
}

unint64_t sub_100188DF0()
{
  result = qword_10041D5F8;
  if (!qword_10041D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D5F8);
  }

  return result;
}

unint64_t sub_100188E48()
{
  result = qword_10041D600;
  if (!qword_10041D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D600);
  }

  return result;
}

unint64_t sub_100188EA0()
{
  result = qword_10041D608;
  if (!qword_10041D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D608);
  }

  return result;
}

unint64_t sub_100188F28()
{
  result = qword_10041D620;
  if (!qword_10041D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D620);
  }

  return result;
}

unint64_t sub_100188F80()
{
  result = qword_10041D628;
  if (!qword_10041D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D628);
  }

  return result;
}

unint64_t sub_100188FD8()
{
  result = qword_10041D630;
  if (!qword_10041D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D630);
  }

  return result;
}

unint64_t sub_100189060()
{
  result = qword_10041D648;
  if (!qword_10041D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D648);
  }

  return result;
}

unint64_t sub_1001890B8()
{
  result = qword_10041D650;
  if (!qword_10041D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D650);
  }

  return result;
}

unint64_t sub_100189110()
{
  result = qword_10041D658;
  if (!qword_10041D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D658);
  }

  return result;
}

unint64_t sub_100189198()
{
  result = qword_10041D670;
  if (!qword_10041D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D670);
  }

  return result;
}

unint64_t sub_1001891F0()
{
  result = qword_10041D678;
  if (!qword_10041D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D678);
  }

  return result;
}

unint64_t sub_100189248()
{
  result = qword_10041D680;
  if (!qword_10041D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D680);
  }

  return result;
}

unint64_t sub_1001892D0()
{
  result = qword_10041D698;
  if (!qword_10041D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D698);
  }

  return result;
}

unint64_t sub_100189328()
{
  result = qword_10041D6A0;
  if (!qword_10041D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6A0);
  }

  return result;
}

unint64_t sub_100189380()
{
  result = qword_10041D6A8;
  if (!qword_10041D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6A8);
  }

  return result;
}

unint64_t sub_100189408()
{
  result = qword_10041D6C0;
  if (!qword_10041D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6C0);
  }

  return result;
}

unint64_t sub_100189460()
{
  result = qword_10041D6C8;
  if (!qword_10041D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6C8);
  }

  return result;
}

unint64_t sub_1001894B8()
{
  result = qword_10041D6D0;
  if (!qword_10041D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6D0);
  }

  return result;
}

unint64_t sub_100189540()
{
  result = qword_10041D6E8;
  if (!qword_10041D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6E8);
  }

  return result;
}

unint64_t sub_100189598()
{
  result = qword_10041D6F0;
  if (!qword_10041D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6F0);
  }

  return result;
}

unint64_t sub_1001895F0()
{
  result = qword_10041D6F8;
  if (!qword_10041D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D6F8);
  }

  return result;
}

unint64_t sub_100189678()
{
  result = qword_10041D710;
  if (!qword_10041D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D710);
  }

  return result;
}

unint64_t sub_1001896D0()
{
  result = qword_10041D718;
  if (!qword_10041D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D718);
  }

  return result;
}

unint64_t sub_100189728()
{
  result = qword_10041D720;
  if (!qword_10041D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D720);
  }

  return result;
}

unint64_t sub_1001897B0()
{
  result = qword_10041D738;
  if (!qword_10041D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D738);
  }

  return result;
}

unint64_t sub_100189808()
{
  result = qword_10041D740;
  if (!qword_10041D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D740);
  }

  return result;
}

unint64_t sub_100189860()
{
  result = qword_10041D748;
  if (!qword_10041D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D748);
  }

  return result;
}

unint64_t sub_1001898E8()
{
  result = qword_10041D760;
  if (!qword_10041D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D760);
  }

  return result;
}

unint64_t sub_100189940()
{
  result = qword_10041D768;
  if (!qword_10041D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D768);
  }

  return result;
}

unint64_t sub_100189998()
{
  result = qword_10041D770;
  if (!qword_10041D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D770);
  }

  return result;
}

unint64_t sub_100189A20()
{
  result = qword_10041D788;
  if (!qword_10041D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D788);
  }

  return result;
}

unint64_t sub_100189A78()
{
  result = qword_10041D790;
  if (!qword_10041D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D790);
  }

  return result;
}

unint64_t sub_100189AD0()
{
  result = qword_10041D798;
  if (!qword_10041D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D798);
  }

  return result;
}

unint64_t sub_100189B58()
{
  result = qword_10041D7B0;
  if (!qword_10041D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D7B0);
  }

  return result;
}

unint64_t sub_100189BB0()
{
  result = qword_10041D7B8;
  if (!qword_10041D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D7B8);
  }

  return result;
}

unint64_t sub_100189C08()
{
  result = qword_10041D7C0;
  if (!qword_10041D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D7C0);
  }

  return result;
}

unint64_t sub_100189C90()
{
  result = qword_10041D7D8;
  if (!qword_10041D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D7D8);
  }

  return result;
}

unint64_t sub_100189CE8()
{
  result = qword_10041D7E0;
  if (!qword_10041D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D7E0);
  }

  return result;
}

unint64_t sub_100189D40()
{
  result = qword_10041D7E8;
  if (!qword_10041D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D7E8);
  }

  return result;
}

unint64_t sub_100189DC8()
{
  result = qword_10041D800;
  if (!qword_10041D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D800);
  }

  return result;
}

unint64_t sub_100189E20()
{
  result = qword_10041D808;
  if (!qword_10041D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D808);
  }

  return result;
}

unint64_t sub_100189E78()
{
  result = qword_10041D810;
  if (!qword_10041D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041D810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_LocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_LocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_DominantMotionModeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB9)
  {
    goto LABEL_17;
  }

  if (a2 + 71 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 71) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 71;
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

      return (*a1 | (v4 << 8)) - 71;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 71;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x48;
  v8 = v6 - 72;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_DominantMotionModeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 71 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 71) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB9)
  {
    v4 = 0;
  }

  if (a2 > 0xB8)
  {
    v5 = ((a2 - 185) >> 8) + 1;
    *result = a2 + 71;
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
    *result = a2 + 71;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10ALProtobuf37CLP_LogEntry_PrivateData_WifiScanTypeOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10ALProtobuf37CLP_LogEntry_PrivateData_WifiScanTypeOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1001908E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1001909DC()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100190C14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1001965A8(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100190CEC()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &unk_10041E648, &type metadata for CLP_LogEntry_PrivateData_ClientSatelliteConstellation, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100190F2C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &unk_10041E770, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100191064(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    sub_1001965A8(319, a4, a5, &type metadata accessor for Optional);
    if (v12 <= 0x3F)
    {
      sub_1001965A8(319, a6, a7, &type metadata accessor for Optional);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100191220(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1001965A8(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100191360()
{
  sub_1001908E0(319, &qword_10041EB40, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041EB48, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100191484()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_10041EBD8, &type metadata for CLP_LogEntry_PrivateData_GnssModeOfOperation, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &unk_10041EBE0, &type metadata for CLP_LogEntry_PrivateData_RhythmicGnssWakeMode, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100191620(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1001965A8(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001917C0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &unk_10041EE08, &type metadata for CLP_LogEntry_PrivateData_DominantMotionModeType, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100191960()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_10041EF30, &type metadata for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_10041EF38, &type metadata for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &unk_10041EF40, &type metadata for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBE)
  {
    goto LABEL_17;
  }

  if (a2 + 66 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 66) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 66;
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

      return (*a1 | (v4 << 8)) - 66;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 66;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x43;
  v8 = v6 - 67;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 66 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 66) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBE)
  {
    v4 = 0;
  }

  if (a2 > 0xBD)
  {
    v5 = ((a2 - 190) >> 8) + 1;
    *result = a2 + 66;
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
    *result = a2 + 66;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100191C54()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_10041EFD8, &type metadata for CLP_LogEntry_PrivateData_WorkoutEvent.EventType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001908E0(319, &unk_10041EFE0, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_WorkoutEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_WorkoutEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100191F48()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001908E0(319, &unk_10041ED78, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10019209C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_10041F180, &type metadata for CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &unk_10041F188, &type metadata for CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100192290()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100192428()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001925D8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100192808()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &unk_10041A448, &type metadata for Int64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100192918()
{
  sub_1001908E0(319, &qword_10041F7E8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &unk_10041F7F0, &type metadata for CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100192A88()
{
  sub_1001965A8(319, &unk_10041A7C0, &type metadata for Double, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_10041F888, &type metadata for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1001965A8(319, &unk_10041F890, &type metadata for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100192E14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1001965A8(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100192F14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100193000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

void sub_1001930B8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &unk_10041F9D0, &type metadata for CLP_LogEntry_PrivateData_BatteryChargerType, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_DeviceStatus.NotificationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_DeviceStatus.NotificationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1001933D0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &unk_10041FAF0, &type metadata for CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100193584()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10019375C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1001939CC()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100193ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, v12);
  }

  v15 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v18 = sub_100024A2C(a4, a5);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + *(a3 + 28);

  return v19(v20, a2, v18);
}

uint64_t sub_100193C54(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, a2, v14);
  }

  v17 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v20 = sub_100024A2C(a5, a6);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + *(a4 + 28);

  return v21(v22, a2, a2, v20);
}

void sub_100193DE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
      if (v9 <= 0x3F)
      {
        sub_1001908E0(319, a4, a5, &type metadata accessor for Optional);
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100193F7C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100194090()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001908E0(319, &unk_100420218, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001942F0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001908E0(319, &qword_100420440, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001965A8(319, &qword_100420448, &type metadata for CLP_LogEntry_PrivateData_SensorFusionMode, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1001908E0(319, &unk_100420450, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1001965A8(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
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

void sub_100194594()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001946AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = sub_100024A2C(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1001947C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = sub_100024A2C(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1001948FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1001908E0(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001949AC()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_1004206B0, &type metadata for CLP_LogEntry_PrivateData_WifiAccessPointMode, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001965A8(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1001965A8(319, &unk_1004206B8, &type metadata for CLP_LogEntry_PrivateData_WifiRfBand, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
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

void sub_100194BC0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001908E0(319, &unk_100420768, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100194CD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1001908E0(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100194DF8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100420908, &type metadata for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &unk_100420910, &type metadata for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.MeasurementSource, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100194FD0()
{
  sub_1001908E0(319, &unk_100420A30, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100195134()
{
  sub_1001908E0(319, &unk_100420AD8, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10019524C()
{
  sub_1001908E0(319, &qword_100420B68, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100420B70, &type metadata for UInt64, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001908E0(319, &unk_100420B78, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001953F4()
{
  sub_1001908E0(319, &unk_100420A30, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &unk_100420C10, &type metadata for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch.BranchType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100195560()
{
  sub_1001908E0(319, &unk_100420A30, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10019567C()
{
  sub_1001908E0(319, &qword_100420D38, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_1001908E0(319, &qword_100420D40, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_100420D48, &type metadata for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeType, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001965A8(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1001908E0(319, &unk_100420D50, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
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

void sub_1001958EC()
{
  sub_1001908E0(319, &unk_100420E78, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100195A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100195BCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100195CE0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100420F98, &type metadata for CLP_LogEntry_PrivateData_WristState.WristStateType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &unk_100420FA0, &type metadata for CLP_LogEntry_PrivateData_WristState.WristStateConfidenceType, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100195E98()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001908E0(319, &qword_100421040, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001908E0(319, &unk_100421048, type metadata accessor for CLP_LogEntry_PrivateData_WristState, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100196040()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_1004210E0, &type metadata for CLP_LogEntry_PrivateData_PlaceInference.UserSpecificPlaceType, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &unk_1004210E8, &type metadata for CLP_LogEntry_PrivateData_PlaceInference.PlaceInferencePlaceType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1001961C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

uint64_t sub_100196260(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10019634C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 44)) = a2 + 2;
  }

  return result;
}

void sub_100196404()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001965A8(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001965A8(319, &qword_100421200, &type metadata for CLP_LogEntry_PrivateData_IndoorOutdoorType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001965A8(319, &unk_100421208, &type metadata for CLP_LogEntry_PrivateData_IndoorOutdoorConfidence, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001965A8(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001965A8(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
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

void sub_1001965A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100196620()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001966C0()
{
  sub_1001908E0(319, &unk_100421300, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001967F0()
{
  sub_1001908E0(319, &unk_100421300, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1001908E0(319, &qword_100421668, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample, &type metadata accessor for Optional);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_1001908E0(319, &qword_100421670, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData, &type metadata accessor for Optional);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_1001908E0(319, &unk_100421678, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, &type metadata accessor for Optional);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100196AB0()
{
  sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_1001908E0(319, &qword_100421E40, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_1001908E0(319, &qword_100421E48, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_1001908E0(319, &qword_100421E50, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_1001908E0(319, &qword_100421E58, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed, &type metadata accessor for Optional);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_1001908E0(319, &qword_100421E60, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading, &type metadata accessor for Optional);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_1001908E0(319, &qword_100421E68, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable, &type metadata accessor for Optional);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_1001908E0(319, &unk_100421E70, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed, &type metadata accessor for Optional);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
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

void sub_100196E8C()
{
  sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100196FF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
  if (v8 <= 0x3F)
  {
    v11 = *(v7 - 8) + 64;
    sub_1001908E0(319, a4, a5, &type metadata accessor for Optional);
    if (v10 <= 0x3F)
    {
      v12 = *(v9 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100197124()
{
  sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100197220()
{
  sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1001908E0(319, &qword_1004227E8, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1001908E0(319, &unk_1004227F0, type metadata accessor for CLP_LogEntry_PrivateData_Battery, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001973E8()
{
  sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1001908E0(319, &qword_100422A38, type metadata accessor for CLP_LogEntry_PrivateData_AccelerometerPace, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1001908E0(319, &unk_100422A40, type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001975D4()
{
  sub_1001908E0(319, &qword_100422DE8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1001908E0(319, &unk_100422DF0, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10019772C()
{
  sub_1001908E0(319, &unk_100422DF0, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1001908E0(319, &qword_100422DE8, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100197880()
{
  sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1001908E0(319, &qword_1004231B8, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1001908E0(319, &unk_1004231C0, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100197A44()
{
  sub_1001908E0(319, &unk_10041E0C8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1001908E0(319, &unk_1004233C8, type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1001908E0(319, &unk_100421300, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_100197BE4()
{
  result = qword_100423AF0;
  if (!qword_100423AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423AF0);
  }

  return result;
}

unint64_t sub_100197C38()
{
  result = qword_100423AF8;
  if (!qword_100423AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423AF8);
  }

  return result;
}

unint64_t sub_100197C8C()
{
  result = qword_100423B00;
  if (!qword_100423B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B00);
  }

  return result;
}

unint64_t sub_100197CE0()
{
  result = qword_100423B08;
  if (!qword_100423B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B08);
  }

  return result;
}

unint64_t sub_100197D34()
{
  result = qword_100423B10;
  if (!qword_100423B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B10);
  }

  return result;
}

unint64_t sub_100197D88()
{
  result = qword_100423B18;
  if (!qword_100423B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B18);
  }

  return result;
}

unint64_t sub_100197DDC()
{
  result = qword_100423B20;
  if (!qword_100423B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B20);
  }

  return result;
}

unint64_t sub_100197E30()
{
  result = qword_100423B28;
  if (!qword_100423B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B28);
  }

  return result;
}

unint64_t sub_100197E84()
{
  result = qword_100423B30;
  if (!qword_100423B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B30);
  }

  return result;
}

unint64_t sub_100197ED8()
{
  result = qword_100423B38;
  if (!qword_100423B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B38);
  }

  return result;
}

unint64_t sub_100197F2C()
{
  result = qword_100423B40;
  if (!qword_100423B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B40);
  }

  return result;
}

unint64_t sub_100197F80()
{
  result = qword_100423B48;
  if (!qword_100423B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B48);
  }

  return result;
}

unint64_t sub_100197FD4()
{
  result = qword_100423B50;
  if (!qword_100423B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B50);
  }

  return result;
}

unint64_t sub_100198028()
{
  result = qword_100423B58;
  if (!qword_100423B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B58);
  }

  return result;
}

unint64_t sub_10019807C()
{
  result = qword_100423B60;
  if (!qword_100423B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B60);
  }

  return result;
}

unint64_t sub_1001980D0()
{
  result = qword_100423B68;
  if (!qword_100423B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B68);
  }

  return result;
}

unint64_t sub_100198124()
{
  result = qword_100423B70;
  if (!qword_100423B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B70);
  }

  return result;
}

unint64_t sub_100198178()
{
  result = qword_100423B78;
  if (!qword_100423B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B78);
  }

  return result;
}

unint64_t sub_1001981CC()
{
  result = qword_100423B80;
  if (!qword_100423B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B80);
  }

  return result;
}

unint64_t sub_100198220()
{
  result = qword_100423B88;
  if (!qword_100423B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B88);
  }

  return result;
}

unint64_t sub_100198274()
{
  result = qword_100423B90;
  if (!qword_100423B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B90);
  }

  return result;
}

unint64_t sub_1001982C8()
{
  result = qword_100423B98;
  if (!qword_100423B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423B98);
  }

  return result;
}

unint64_t sub_10019831C()
{
  result = qword_100423BA0;
  if (!qword_100423BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BA0);
  }

  return result;
}

unint64_t sub_100198370()
{
  result = qword_100423BA8;
  if (!qword_100423BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BA8);
  }

  return result;
}

unint64_t sub_1001983C4()
{
  result = qword_100423BB0;
  if (!qword_100423BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BB0);
  }

  return result;
}

unint64_t sub_100198418()
{
  result = qword_100423BB8;
  if (!qword_100423BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BB8);
  }

  return result;
}

unint64_t sub_10019846C()
{
  result = qword_100423BC0;
  if (!qword_100423BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BC0);
  }

  return result;
}

unint64_t sub_1001984C0()
{
  result = qword_100423BC8;
  if (!qword_100423BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BC8);
  }

  return result;
}

unint64_t sub_100198514()
{
  result = qword_100423BD0;
  if (!qword_100423BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BD0);
  }

  return result;
}

unint64_t sub_100198568()
{
  result = qword_100423BD8;
  if (!qword_100423BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BD8);
  }

  return result;
}

unint64_t sub_1001985BC()
{
  result = qword_100423BE0;
  if (!qword_100423BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BE0);
  }

  return result;
}

unint64_t sub_100198610()
{
  result = qword_100423BE8;
  if (!qword_100423BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BE8);
  }

  return result;
}

unint64_t sub_100198664()
{
  result = qword_100423BF0;
  if (!qword_100423BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BF0);
  }

  return result;
}

unint64_t sub_1001986B8()
{
  result = qword_100423BF8;
  if (!qword_100423BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423BF8);
  }

  return result;
}

unint64_t sub_10019870C()
{
  result = qword_100423C00;
  if (!qword_100423C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C00);
  }

  return result;
}

unint64_t sub_100198760()
{
  result = qword_100423C08;
  if (!qword_100423C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C08);
  }

  return result;
}

unint64_t sub_1001987B4()
{
  result = qword_100423C10;
  if (!qword_100423C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C10);
  }

  return result;
}

unint64_t sub_100198808()
{
  result = qword_100423C18;
  if (!qword_100423C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C18);
  }

  return result;
}

unint64_t sub_10019885C()
{
  result = qword_100423C20;
  if (!qword_100423C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C20);
  }

  return result;
}

unint64_t sub_1001988B0()
{
  result = qword_100423C28;
  if (!qword_100423C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C28);
  }

  return result;
}

unint64_t sub_100198904()
{
  result = qword_100423C30;
  if (!qword_100423C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C30);
  }

  return result;
}

unint64_t sub_100198958()
{
  result = qword_100423C38;
  if (!qword_100423C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C38);
  }

  return result;
}

unint64_t sub_1001989AC()
{
  result = qword_100423C48;
  if (!qword_100423C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C48);
  }

  return result;
}

unint64_t sub_100198A00()
{
  result = qword_100423C50;
  if (!qword_100423C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C50);
  }

  return result;
}

unint64_t sub_100198A54()
{
  result = qword_100423C58;
  if (!qword_100423C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C58);
  }

  return result;
}

unint64_t sub_100198AA8()
{
  result = qword_100423C60;
  if (!qword_100423C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C60);
  }

  return result;
}

unint64_t sub_100198AFC()
{
  result = qword_100423C68;
  if (!qword_100423C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C68);
  }

  return result;
}

unint64_t sub_100198B50()
{
  result = qword_100423C70;
  if (!qword_100423C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C70);
  }

  return result;
}

unint64_t sub_100198BA4()
{
  result = qword_100423C78;
  if (!qword_100423C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C78);
  }

  return result;
}

unint64_t sub_100198BF8()
{
  result = qword_100423C80;
  if (!qword_100423C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C80);
  }

  return result;
}

unint64_t sub_100198C4C()
{
  result = qword_100423C88;
  if (!qword_100423C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C88);
  }

  return result;
}

unint64_t sub_100198CA0()
{
  result = qword_100423C90;
  if (!qword_100423C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C90);
  }

  return result;
}

unint64_t sub_100198CF4()
{
  result = qword_100423C98;
  if (!qword_100423C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C98);
  }

  return result;
}

unint64_t sub_100198D48()
{
  result = qword_100423CA0;
  if (!qword_100423CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423CA0);
  }

  return result;
}

unint64_t sub_100198D9C()
{
  result = qword_100423CA8;
  if (!qword_100423CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423CA8);
  }

  return result;
}

unint64_t sub_100198DF0()
{
  result = qword_100423CB0;
  if (!qword_100423CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423CB0);
  }

  return result;
}

unint64_t sub_100198E44()
{
  result = qword_100423CB8;
  if (!qword_100423CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423CB8);
  }

  return result;
}

unint64_t sub_100198E98()
{
  result = qword_100423CC0;
  if (!qword_100423CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423CC0);
  }

  return result;
}

unint64_t sub_100198EEC()
{
  result = qword_100423CC8;
  if (!qword_100423CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423CC8);
  }

  return result;
}

uint64_t sub_100198FF8()
{
  v1 = v0;
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if (dword_100433E28 == -1)
  {
    __break(1u);
  }

  else
  {
    ++dword_100433E28;
    sub_100026F98(v5);
    sub_100199C78(v5, v1 + OBJC_IVAR____TtC10ALProtobuf14ALProtoRequest__pb);
    swift_beginAccess();
    sub_100025294(0);
    sub_1000253C8(dword_100433E28);
    swift_endAccess();
    v7 = mach_continuous_time();
    swift_beginAccess();
    sub_100025160(v7);
    swift_endAccess();
    return v1;
  }

  return result;
}

uint64_t type metadata accessor for ALProtoRequest()
{
  result = qword_100460F90;
  if (!qword_100460F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019918C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ALProtoRequest();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_100198FF8();
  swift_beginAccess();

  sub_1000254F4(a2);
  swift_endAccess();
  sub_1000B24E8(v7);
  swift_beginAccess();
  sub_10002589C(v7);
  swift_endAccess();

  v12 = type metadata accessor for ALResultOptions();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

uint64_t ALProtoRequest.__allocating_init(kappaConfigResultOptions:)(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "ALProtoRequest Kappa callback", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v14 = type metadata accessor for ALProtoRequest();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  sub_100198FF8();
  swift_beginAccess();

  sub_1000254F4(5);
  swift_endAccess();
  sub_1000B24E8(v5);
  swift_beginAccess();
  sub_10002589C(v5);
  swift_endAccess();

  v18 = type metadata accessor for ALResultOptions();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

uint64_t ALProtoRequest.__allocating_init(data:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ALProtoRequest.init(data:)(a1, a2);
  return v7;
}

uint64_t ALProtoRequest.init(data:)(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for BinaryDecodingOptions();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1000150EC(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100199C20();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  sub_100005B2C(a1, a2);
  if (v3)
  {
    type metadata accessor for ALProtoRequest();
    v12 = *(*v2 + 48);
    v13 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100199C78(v11, v2 + OBJC_IVAR____TtC10ALProtobuf14ALProtoRequest__pb);
  }

  return v2;
}

uint64_t sub_100199740()
{
  v1 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 136))(v3);
  sub_100199C20();
  v6 = Message.serializedData(partial:)();
  sub_100199CDC(v5);
  return v6;
}

BOOL sub_100199834(char a1)
{
  v3 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v16 - v9;
  v11 = *(*v1 + 136);
  v11(v8);
  v12 = sub_100025598();
  v13 = sub_100199CDC(v10);
  if (!v12)
  {
    return 0;
  }

  v11(v13);
  v14 = sub_1000254C8();
  sub_100199CDC(v7);
  v18 = v14;
  v17 = a1;
  sub_100034828();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v16[2] == v16[1];
}

uint64_t sub_100199998@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10ALProtobuf14ALProtoRequest__pb;
  swift_beginAccess();
  return sub_100199D38(v1 + v3, a1);
}

uint64_t sub_1001999F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ALProtobuf14ALProtoRequest__pb;
  swift_beginAccess();
  sub_100199D9C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100199AF4(int a1)
{
  result = swift_beginAccess();
  dword_100433E28 = a1;
  return result;
}

uint64_t ALProtoRequest.__deallocating_deinit()
{
  sub_100199CDC(v0 + OBJC_IVAR____TtC10ALProtobuf14ALProtoRequest__pb);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

unint64_t sub_100199C20()
{
  result = qword_100418460;
  if (!qword_100418460)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_Request(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418460);
  }

  return result;
}

uint64_t sub_100199C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100199CDC(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100199D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100199D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100199E08()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(319);
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

uint64_t sub_100199F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268F18();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_100199FD8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100245B9C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10019A010@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100245B9C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10019A048(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268EC4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10019A0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268E70();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10019A118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268E1C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10019A184(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268DC8();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_10019A1D0@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100245BAC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10019A208@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100245BAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10019A240(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268D74();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10019A2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268D20();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_10019A2F8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100245BBC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10019A330@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100245BBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10019A36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268CCC();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_10019A3B8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100245BCC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10019A3F0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100245BCC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10019A428(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268C78();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10019A490(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268C24();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10019A4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268BD0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10019A560(uint64_t a1, uint64_t a2)
{
  v4 = sub_100268B7C();

  return Enum.hash(into:)(a1, a2, v4);
}