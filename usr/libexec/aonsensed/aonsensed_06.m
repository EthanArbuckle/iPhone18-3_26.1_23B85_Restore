uint64_t sub_10009D130(uint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v4 = *(v64 - 1);
  v5 = *(v4 + 64);
  __chkstk_darwin(v64);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100418D58, &qword_10036D8C8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v63 = &v56 - v9;
  v60 = sub_100024A2C(&qword_10041C578, &qword_100373D68);
  v10 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v12 = &v56 - v11;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v65 = &v56 - v19;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    goto LABEL_42;
  }

  if (!v20 || a1 == a2)
  {
    v52 = 1;
    return v52 & 1;
  }

  v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v22 = a1 + v21;
  v62 = a2 + v21;
  v58 = v13;
  v59 = (v4 + 48);
  v57 = *(v18 + 72);
  while (1)
  {
    sub_10009E78C(v22, v65, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    sub_10009E78C(v62, v17, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    v23 = *(v13 + 20);
    v24 = (v65 + v23);
    v25 = *(v65 + v23 + 8);
    v26 = &v17[v23];
    v27 = v26[8];
    if (v25)
    {
      if ((v26[8] & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v26[8] & 1) != 0 || *v24 != *v26)
    {
      goto LABEL_38;
    }

    v28 = *(v13 + 24);
    v29 = *(v60 + 48);
    sub_10000A0A4(v65 + v28, v12, &qword_100418D58, &qword_10036D8C8);
    sub_10000A0A4(&v17[v28], &v12[v29], &qword_100418D58, &qword_10036D8C8);
    v30 = *v59;
    if ((*v59)(v12, 1, v64) == 1)
    {
      break;
    }

    sub_10000A0A4(v12, v63, &qword_100418D58, &qword_10036D8C8);
    if (v30(&v12[v29], 1, v64) == 1)
    {
      sub_10009E7F4(v17, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
      sub_10009E7F4(v65, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
      v53 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef;
      v54 = v63;
      goto LABEL_41;
    }

    v31 = &v12[v29];
    v32 = v61;
    sub_10009E724(v31, v61, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    v33 = v64[5];
    v34 = (v63 + v33);
    v35 = *(v63 + v33 + 8);
    v36 = (v32 + v33);
    v37 = *(v32 + v33 + 8);
    if (v35)
    {
      if (!v37)
      {
        goto LABEL_37;
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
LABEL_37:
        sub_10009E7F4(v61, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        sub_10009E7F4(v63, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        sub_1000059A8(v12, &qword_100418D58, &qword_10036D8C8);
LABEL_38:
        sub_10009E7F4(v17, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
        sub_10009E7F4(v65, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
        goto LABEL_42;
      }
    }

    v38 = v64[6];
    v39 = (v63 + v38);
    v40 = *(v63 + v38 + 8);
    v41 = (v61 + v38);
    v42 = *(v61 + v38 + 8);
    if (v40)
    {
      if (!v42)
      {
        goto LABEL_37;
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
        goto LABEL_37;
      }
    }

    v43 = v64[7];
    v44 = (v63 + v43);
    v45 = *(v63 + v43 + 8);
    v46 = (v61 + v43);
    v47 = *(v61 + v43 + 8);
    if (v45)
    {
      if (!v47)
      {
        goto LABEL_37;
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
        goto LABEL_37;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v48 = v63;
    v56 = v20;
    v49 = v61;
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20 = v56;
    sub_10009E7F4(v49, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    sub_10009E7F4(v48, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    sub_1000059A8(v12, &qword_100418D58, &qword_10036D8C8);
    if ((v50 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_33:
    type metadata accessor for UnknownStorage();
    sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v51 = v65;
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10009E7F4(v17, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    sub_10009E7F4(v51, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    if (v52)
    {
      v13 = v58;
      v62 += v57;
      v22 += v57;
      if (--v20)
      {
        continue;
      }
    }

    return v52 & 1;
  }

  if (v30(&v12[v29], 1, v64) == 1)
  {
    sub_1000059A8(v12, &qword_100418D58, &qword_10036D8C8);
    goto LABEL_33;
  }

  sub_10009E7F4(v17, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
  v54 = v65;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime;
LABEL_41:
  sub_10009E7F4(v54, v53);
  sub_1000059A8(v12, &qword_10041C578, &qword_100373D68);
LABEL_42:
  v52 = 0;
  return v52 & 1;
}

uint64_t sub_10009D834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v40 - v10;
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
        sub_10009E78C(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        sub_10009E78C(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        v17 = v4[5];
        v18 = v11[v17];
        v19 = v8[v17];
        if (v18 == 13)
        {
          if (v19 != 13)
          {
            goto LABEL_35;
          }
        }

        else if (v18 != v19)
        {
          goto LABEL_35;
        }

        v20 = v4[6];
        v21 = &v11[v20];
        v22 = v11[v20 + 8];
        v23 = &v8[v20];
        v24 = v8[v20 + 8];
        if (v22)
        {
          if (!v24)
          {
            goto LABEL_35;
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
LABEL_35:
            sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
            sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
            goto LABEL_36;
          }
        }

        v25 = v4[7];
        v26 = &v11[v25];
        v27 = v11[v25 + 8];
        v28 = &v8[v25];
        v29 = v8[v25 + 8];
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_35;
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
            goto LABEL_35;
          }
        }

        v30 = v4[8];
        v31 = &v11[v30];
        v32 = v11[v30 + 8];
        v33 = &v8[v30];
        v34 = v8[v30 + 8];
        if (v32)
        {
          if (!v34)
          {
            goto LABEL_35;
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
            goto LABEL_35;
          }
        }

        v35 = v4[9];
        v36 = v11[v35];
        v37 = v8[v35];
        if (v36 == 3)
        {
          if (v37 != 3)
          {
            goto LABEL_35;
          }
        }

        else if (v36 != v37)
        {
          goto LABEL_35;
        }

        type metadata accessor for UnknownStorage();
        sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        if (v38)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v38 & 1;
      }
    }

    v38 = 1;
  }

  else
  {
LABEL_36:
    v38 = 0;
  }

  return v38 & 1;
}

uint64_t sub_10009DB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v27 = a5;
  v28 = a3(0);
  v8 = *(*(v28 - 8) + 64);
  v9 = __chkstk_darwin(v28);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v14 = &v27 - v13;
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (!v15 || a1 == a2)
    {
      v25 = 1;
    }

    else
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = a1 + v16;
      v18 = a2 + v16;
      v19 = *(v12 + 72);
      while (1)
      {
        sub_10009E78C(v17, v14, a4);
        sub_10009E78C(v18, v11, a4);
        v20 = *(v28 + 20);
        v21 = *&v14[v20];
        v22 = *&v11[v20];
        if (v21 != v22)
        {
          v23 = *&v14[v20];

          v24 = v27(v21, v22);

          if ((v24 & 1) == 0)
          {
            break;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10009E7F4(v11, a4);
        sub_10009E7F4(v14, a4);
        if (v25)
        {
          v18 += v19;
          v17 += v19;
          if (--v15)
          {
            continue;
          }
        }

        return v25 & 1;
      }

      sub_10009E7F4(v11, a4);
      sub_10009E7F4(v14, a4);
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_10009DDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v37 - v10;
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
        sub_10009E78C(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        sub_10009E78C(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        v17 = v4[5];
        v18 = v11[v17];
        v19 = v8[v17];
        if (v18 == 13)
        {
          if (v19 != 13)
          {
            goto LABEL_31;
          }
        }

        else if (v18 != v19)
        {
          goto LABEL_31;
        }

        v20 = v4[6];
        v21 = &v11[v20];
        v22 = v11[v20 + 8];
        v23 = &v8[v20];
        v24 = v8[v20 + 8];
        if (v22)
        {
          if (!v24)
          {
            goto LABEL_31;
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
LABEL_31:
            sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
            sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
            goto LABEL_32;
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
            goto LABEL_31;
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
            goto LABEL_31;
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
            goto LABEL_31;
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
            goto LABEL_31;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        if (v35)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v35 & 1;
      }
    }

    v35 = 1;
  }

  else
  {
LABEL_32:
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_10009E0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
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
        sub_10009E78C(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        sub_10009E78C(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        v17 = sub_10009FDA8(v11, v8);
        sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
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

uint64_t sub_10009E26C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10009E49C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10009F890(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100005B2C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10009E26C(v13, a3, a4, &v12);
  v10 = v4;
  sub_100005B2C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10009E62C(uint64_t result)
{
  if (result > 7)
  {
    if (result > 31)
    {
      if (result == 32)
      {
        return 6;
      }

      if (result == 64)
      {
        return 7;
      }
    }

    else
    {
      if (result == 8)
      {
        return 4;
      }

      if (result == 16)
      {
        return 5;
      }
    }

    return 8;
  }

  if (result <= 1)
  {
    if (result <= 1)
    {
      return result;
    }

    return 8;
  }

  if (result != 2)
  {
    if (result == 4)
    {
      return 3;
    }

    return 8;
  }

  return result;
}

unint64_t sub_10009E6B4(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

uint64_t sub_10009E724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009E78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009E7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009ECB4(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418D60, &qword_10036D8D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v94 = &v75 - v5;
  v6 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v76 = &v75 - v8;
  v9 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  *v11 = 0;
  *(v11 + 8) = 1;
  v78 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource) = 7;
  v75 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions) = &_swiftEmptyArrayStorage;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  v79 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  v80 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  v81 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  *v16 = 0;
  *(v16 + 4) = 1;
  v82 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1) = 5;
  v83 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1) = 5;
  v84 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1) = 5;
  v85 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1) = 5;
  v86 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1) = 5;
  v17 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections) = &_swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v87 = v17;
  v88 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v89 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5) = 5;
  v90 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5) = 5;
  v91 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5) = 5;
  v92 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5) = 5;
  v93 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5) = 5;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  v77 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  *v20 = 0;
  *(v20 + 8) = 1;
  v95 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint) = 4;
  v21 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v22 = v76;
  sub_10000A0A4(a1 + v21, v76, &qword_100418D10, &qword_10036D880);
  swift_beginAccess();
  sub_10000AD64(v22, v1 + v9, &qword_100418D10, &qword_10036D880);
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds);
  swift_beginAccess();
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  swift_beginAccess();
  *v11 = v24;
  *(v11 + 8) = v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + v25);
  v26 = v78;
  swift_beginAccess();
  *(v1 + v26) = v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v28 = *(a1 + v27);
  v29 = v75;
  swift_beginAccess();
  v30 = *(v1 + v29);
  *(v1 + v29) = v28;

  v31 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds);
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  swift_beginAccess();
  *v12 = v32;
  *(v12 + 8) = v31;
  v33 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  swift_beginAccess();
  *v13 = v34;
  *(v13 + 8) = v33;
  v35 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec);
  swift_beginAccess();
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);
  v37 = v79;
  swift_beginAccess();
  *v37 = v36;
  *(v37 + 8) = v35;
  v38 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  LODWORD(v36) = *v38;
  LOBYTE(v38) = *(v38 + 4);
  v39 = v80;
  swift_beginAccess();
  *v39 = v36;
  *(v39 + 4) = v38;
  v40 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  LODWORD(v36) = *v40;
  LOBYTE(v40) = *(v40 + 4);
  v41 = v81;
  swift_beginAccess();
  *v41 = v36;
  *(v41 + 4) = v40;
  v42 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v82;
  swift_beginAccess();
  *(v1 + v43) = v42;
  v44 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  LOBYTE(v44) = *(a1 + v44);
  v45 = v83;
  swift_beginAccess();
  *(v1 + v45) = v44;
  v46 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v84;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v85;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  LOBYTE(v50) = *(a1 + v50);
  v51 = v86;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v53 = *(a1 + v52);
  v54 = v87;
  swift_beginAccess();
  v55 = *(v1 + v54);
  *(v1 + v54) = v53;

  v56 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v57 = v94;
  sub_10000A0A4(a1 + v56, v94, &qword_100418D60, &qword_10036D8D0);
  v58 = v88;
  swift_beginAccess();
  sub_10000AD64(v57, v1 + v58, &qword_100418D60, &qword_10036D8D0);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  LOBYTE(v59) = *(a1 + v59);
  v60 = v89;
  swift_beginAccess();
  *(v1 + v60) = v59;
  v61 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  LOBYTE(v61) = *(a1 + v61);
  v62 = v90;
  swift_beginAccess();
  *(v1 + v62) = v61;
  v63 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  LOBYTE(v63) = *(a1 + v63);
  v64 = v91;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  LOBYTE(v65) = *(a1 + v65);
  v66 = v92;
  swift_beginAccess();
  *(v1 + v66) = v65;
  v67 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  LOBYTE(v67) = *(a1 + v67);
  v68 = v93;
  swift_beginAccess();
  *(v1 + v68) = v67;
  v69 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec);
  swift_beginAccess();
  v70 = *v69;
  LOBYTE(v69) = *(v69 + 8);
  v71 = v77;
  swift_beginAccess();
  *v71 = v70;
  *(v71 + 8) = v69;
  v72 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v72);
  v73 = v95;
  swift_beginAccess();
  *(v1 + v73) = a1;
  return v1;
}

uint64_t sub_10009F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10009E26C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10009F948(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000150EC(a3, a4);
          return sub_10009E49C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10009FAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10009FC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10009FDA8(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100418DB8, &qword_10036D928);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v55 = &v53 - v8;
  v56 = sub_100024A2C(&qword_10041C580, &qword_100373D80);
  v9 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v59 = &v53 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v53 - v18;
  v20 = sub_100024A2C(&qword_10041C4D8, &qword_100373CC8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v53 - v23;
  v60 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  v61 = a1;
  v25 = v60[5];
  v26 = *(v21 + 56);
  sub_10000A0A4(a1 + v25, v24, &qword_100418D10, &qword_10036D880);
  v27 = v62 + v25;
  v28 = v62;
  sub_10000A0A4(v27, &v24[v26], &qword_100418D10, &qword_10036D880);
  v29 = *(v12 + 48);
  if (v29(v24, 1, v11) == 1)
  {
    if (v29(&v24[v26], 1, v11) == 1)
    {
      sub_1000059A8(v24, &qword_100418D10, &qword_10036D880);
      goto LABEL_11;
    }

LABEL_6:
    v30 = &qword_10041C4D8;
    v31 = &qword_100373CC8;
    v32 = v24;
LABEL_7:
    sub_1000059A8(v32, v30, v31);
    goto LABEL_8;
  }

  sub_10000A0A4(v24, v19, &qword_100418D10, &qword_10036D880);
  if (v29(&v24[v26], 1, v11) == 1)
  {
    sub_10009E7F4(v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  sub_10009E724(&v24[v26], v15, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v35 = sub_1000A5750(v19, v15);
  sub_10009E7F4(v15, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_10009E7F4(v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000059A8(v24, &qword_100418D10, &qword_10036D880);
  if ((v35 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v36 = v60[6];
  v37 = *(v61 + v36);
  v38 = *(v28 + v36);
  if (v37 == 13)
  {
    if (v38 != 13)
    {
      goto LABEL_8;
    }
  }

  else if (v37 != v38)
  {
    goto LABEL_8;
  }

  v39 = v60[7];
  v40 = *(v61 + v39);
  v41 = *(v28 + v39);
  if (v40 == 4)
  {
    if (v41 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (v40 != v41)
  {
    goto LABEL_8;
  }

  v42 = v60[8];
  v43 = *(v56 + 48);
  v44 = v59;
  sub_10000A0A4(v61 + v42, v59, &qword_100418DB8, &qword_10036D928);
  v45 = v28 + v42;
  v46 = v44;
  sub_10000A0A4(v45, v44 + v43, &qword_100418DB8, &qword_10036D928);
  v47 = v58;
  v48 = *(v57 + 48);
  if (v48(v44, 1, v58) == 1)
  {
    if (v48(v44 + v43, 1, v47) == 1)
    {
      sub_1000059A8(v44, &qword_100418DB8, &qword_10036D928);
LABEL_26:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v33 & 1;
    }

    goto LABEL_24;
  }

  v49 = v55;
  sub_10000A0A4(v46, v55, &qword_100418DB8, &qword_10036D928);
  if (v48(v46 + v43, 1, v47) == 1)
  {
    sub_10009E7F4(v49, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
LABEL_24:
    v30 = &qword_10041C580;
    v31 = &qword_100373D80;
    v32 = v46;
    goto LABEL_7;
  }

  v50 = v46 + v43;
  v51 = v54;
  sub_10009E724(v50, v54, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  v52 = sub_1000A4108(v49, v51, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  sub_10009E7F4(v51, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  sub_10009E7F4(v49, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  sub_1000059A8(v46, &qword_100418DB8, &qword_10036D928);
  if (v52)
  {
    goto LABEL_26;
  }

LABEL_8:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1000A0428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A05C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A0828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 13)
  {
    if (v7 != 13)
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A0980(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v54 = &v52 - v8;
  v55 = sub_100024A2C(&qword_10041C4C0, &qword_100373CB0);
  v9 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v59 = &v52 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v52 - v18;
  v20 = sub_100024A2C(&qword_10041C4C8, &qword_100373CB8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v56 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v25 = *(v56 + 20);
  v26 = *(v21 + 56);
  v60 = a1;
  sub_10000A0A4(a1 + v25, v24, &qword_100418CF0, &qword_10036D860);
  v27 = v61 + v25;
  v28 = v61;
  sub_10000A0A4(v27, &v24[v26], &qword_100418CF0, &qword_10036D860);
  v29 = *(v12 + 48);
  if (v29(v24, 1, v11) == 1)
  {
    if (v29(&v24[v26], 1, v11) == 1)
    {
      sub_1000059A8(v24, &qword_100418CF0, &qword_10036D860);
      goto LABEL_8;
    }

LABEL_6:
    v30 = &qword_10041C4C8;
    v31 = &qword_100373CB8;
    v32 = v24;
LABEL_14:
    sub_1000059A8(v32, v30, v31);
    goto LABEL_15;
  }

  sub_10000A0A4(v24, v19, &qword_100418CF0, &qword_10036D860);
  if (v29(&v24[v26], 1, v11) == 1)
  {
    sub_10009E7F4(v19, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    goto LABEL_6;
  }

  sub_10009E724(&v24[v26], v15, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v33 = sub_1000A423C(v19, v15, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_10009E7F4(v15, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_10009E7F4(v19, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_1000059A8(v24, &qword_100418CF0, &qword_10036D860);
  if ((v33 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v34 = v56;
  v35 = *(v56 + 24);
  v36 = *(v55 + 48);
  v38 = v59;
  v37 = v60;
  sub_10000A0A4(v60 + v35, v59, &qword_100418CF8, &qword_10036D868);
  sub_10000A0A4(v28 + v35, v38 + v36, &qword_100418CF8, &qword_10036D868);
  v39 = v58;
  v40 = *(v57 + 48);
  if (v40(v38, 1, v58) != 1)
  {
    v41 = v54;
    sub_10000A0A4(v38, v54, &qword_100418CF8, &qword_10036D868);
    if (v40(v38 + v36, 1, v39) != 1)
    {
      v44 = v38 + v36;
      v45 = v53;
      sub_10009E724(v44, v53, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      v46 = sub_1000A423C(v41, v45, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      sub_10009E7F4(v45, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      sub_10009E7F4(v41, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      sub_1000059A8(v38, &qword_100418CF8, &qword_10036D868);
      if ((v46 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_10009E7F4(v41, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    goto LABEL_13;
  }

  if (v40(v38 + v36, 1, v39) != 1)
  {
LABEL_13:
    v30 = &qword_10041C4C0;
    v31 = &qword_100373CB0;
    v32 = v38;
    goto LABEL_14;
  }

  sub_1000059A8(v38, &qword_100418CF8, &qword_10036D868);
LABEL_18:
  v47 = *(v34 + 28);
  v48 = (v37 + v47);
  v49 = *(v37 + v47 + 4);
  v50 = (v28 + v47);
  v51 = *(v28 + v47 + 4);
  if (v49)
  {
    if (v51)
    {
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v42 & 1;
    }
  }

  else
  {
    if (*v48 != *v50)
    {
      LOBYTE(v51) = 1;
    }

    if ((v51 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_15:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1000A0FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A1120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A1284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
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

  v23 = v4[11];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    return 0;
  }

  v26 = v4[12];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    return 0;
  }

  v29 = v4[13];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v30 ^ v31) & 1) != 0)
  {
    return 0;
  }

  v32 = v4[14];
  v33 = *(a1 + v32);
  v34 = *(a2 + v32);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A14FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 13)
  {
    if (v7 != 13)
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

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
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

  v23 = v4[9];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 3)
  {
    if (v25 != 3)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A167C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100418D58, &qword_10036D8C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_100024A2C(&qword_10041C578, &qword_100373D68);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v18 = *(v17 + 20);
  v31 = a1;
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v23 = a2;
  v24 = *(v17 + 24);
  v25 = *(v13 + 48);
  sub_10000A0A4(v31 + v24, v16, &qword_100418D58, &qword_10036D8C8);
  sub_10000A0A4(v23 + v24, &v16[v25], &qword_100418D58, &qword_10036D8C8);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v25], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100418D58, &qword_10036D8C8);
LABEL_16:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_12;
  }

  sub_10000A0A4(v16, v12, &qword_100418D58, &qword_10036D8C8);
  if (v26(&v16[v25], 1, v4) == 1)
  {
    sub_10009E7F4(v12, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
LABEL_12:
    sub_1000059A8(v16, &qword_10041C578, &qword_100373D68);
    goto LABEL_13;
  }

  sub_10009E724(&v16[v25], v8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  v29 = sub_1000A4108(v12, v8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  sub_10009E7F4(v12, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  sub_1000059A8(v16, &qword_100418D58, &qword_10036D8C8);
  if (v29)
  {
    goto LABEL_16;
  }

LABEL_13:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1000A1A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A1B50(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v5 = v4;
  v6 = *(v4 + 32);
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

  v11 = *(v4 + 36);
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

  if (sub_10009C5E0(*a1, *a2) & 1) != 0 && (sub_10009C5E0(a1[1], a2[1]) & 1) != 0 && (sub_10009C5E0(a1[2], a2[2]))
  {
    v16 = *(v5 + 28);
    type metadata accessor for UnknownStorage();
    sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_1000A1C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = v5[8];
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

  v18 = v5[9];
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A1E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A1F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = sub_100024A2C(&qword_10041C588, &qword_100373D88);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v54 - v21;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v29 = v23[6];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 4);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 4);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_31;
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
      goto LABEL_31;
    }
  }

  v34 = v23[7];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 6)
  {
    if (v36 != 6)
    {
      goto LABEL_31;
    }
  }

  else if (v35 != v36)
  {
    goto LABEL_31;
  }

  v55 = v13;
  v57 = v23;
  v59 = v5;
  v37 = v23[8];
  v38 = *(v16 + 48);
  sub_10000A0A4(a1 + v37, v22, &qword_100418D80, &qword_10036D8F0);
  v39 = a2 + v37;
  v40 = v59;
  v58 = v38;
  sub_10000A0A4(v39, &v22[v38], &qword_100418D80, &qword_10036D8F0);
  v43 = *(v40 + 48);
  v42 = v40 + 48;
  v41 = v43;
  v44 = v43(v22, 1, v4);
  v56 = v43;
  if (v44 != 1)
  {
    sub_10000A0A4(v22, v15, &qword_100418D80, &qword_10036D8F0);
    if (v41(&v22[v58], 1, v4) != 1)
    {
      v59 = v42;
      sub_10009E724(&v22[v58], v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      v46 = sub_1000A1E14(v15, v8);
      sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      sub_10009E7F4(v15, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      sub_1000059A8(v22, &qword_100418D80, &qword_10036D8F0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    sub_10009E7F4(v15, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
LABEL_22:
    v45 = v22;
LABEL_30:
    sub_1000059A8(v45, &qword_10041C588, &qword_100373D88);
    goto LABEL_31;
  }

  if (v41(&v22[v58], 1, v4) != 1)
  {
    goto LABEL_22;
  }

  v59 = v42;
  sub_1000059A8(v22, &qword_100418D80, &qword_10036D8F0);
LABEL_24:
  v47 = v57[9];
  v48 = *(v16 + 48);
  sub_10000A0A4(a1 + v47, v20, &qword_100418D80, &qword_10036D8F0);
  sub_10000A0A4(a2 + v47, &v20[v48], &qword_100418D80, &qword_10036D8F0);
  v49 = v56;
  if (v56(v20, 1, v4) == 1)
  {
    if (v49(&v20[v48], 1, v4) == 1)
    {
      sub_1000059A8(v20, &qword_100418D80, &qword_10036D8F0);
LABEL_34:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v51 & 1;
    }

    goto LABEL_29;
  }

  v50 = v55;
  sub_10000A0A4(v20, v55, &qword_100418D80, &qword_10036D8F0);
  if (v49(&v20[v48], 1, v4) == 1)
  {
    sub_10009E7F4(v50, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
LABEL_29:
    v45 = v20;
    goto LABEL_30;
  }

  sub_10009E724(&v20[v48], v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  v53 = sub_1000A1E14(v50, v8);
  sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  sub_10009E7F4(v50, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  sub_1000059A8(v20, &qword_100418D80, &qword_10036D8F0);
  if (v53)
  {
    goto LABEL_34;
  }

LABEL_31:
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_1000A2500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  __chkstk_darwin(v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v66 - v12;
  v75 = sub_100024A2C(&qword_10041C560, &qword_100373D50);
  v13 = *(*(v75 - 8) + 64);
  v14 = __chkstk_darwin(v75);
  v71 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = &v66 - v16;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v66 - v24;
  v26 = sub_100024A2C(&qword_10041C568, &qword_100373D58);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v66 - v28;
  v30 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v31 = *(v30 + 20);
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_26;
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
      goto LABEL_26;
    }
  }

  v68 = v30;
  v69 = v4;
  v66 = v7;
  v36 = *(v30 + 24);
  v37 = a1;
  v38 = *(v26 + 48);
  v67 = v37;
  sub_10000A0A4(v37 + v36, v29, &qword_100418D70, &qword_10036D8E0);
  v39 = a2 + v36;
  v40 = a2;
  sub_10000A0A4(v39, &v29[v38], &qword_100418D70, &qword_10036D8E0);
  v41 = *(v18 + 48);
  if (v41(v29, 1, v17) == 1)
  {
    v42 = v41(&v29[v38], 1, v17);
    v43 = v69;
    if (v42 == 1)
    {
      sub_1000059A8(v29, &qword_100418D70, &qword_10036D8E0);
      goto LABEL_14;
    }

LABEL_12:
    v45 = &qword_10041C568;
    v46 = &qword_100373D58;
    v47 = v29;
LABEL_25:
    sub_1000059A8(v47, v45, v46);
    goto LABEL_26;
  }

  sub_10000A0A4(v29, v25, &qword_100418D70, &qword_10036D8E0);
  v44 = v41(&v29[v38], 1, v17);
  v43 = v69;
  if (v44 == 1)
  {
    sub_10009E7F4(v25, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    goto LABEL_12;
  }

  sub_10009E724(&v29[v38], v21, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v48 = sub_1000A3478(v25, v21);
  sub_10009E7F4(v21, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_10009E7F4(v25, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_1000059A8(v29, &qword_100418D70, &qword_10036D8E0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  v49 = v67;
  v50 = *(v68 + 28);
  v51 = *(v75 + 48);
  v52 = v73;
  sub_10000A0A4(v67 + v50, v73, &qword_100418D88, &qword_10036D8F8);
  sub_10000A0A4(v40 + v50, v52 + v51, &qword_100418D88, &qword_10036D8F8);
  v53 = *(v74 + 48);
  if (v53(v52, 1, v43) == 1)
  {
    if (v53(v52 + v51, 1, v43) != 1)
    {
LABEL_24:
      v45 = &qword_10041C560;
      v46 = &qword_100373D50;
      v47 = v52;
      goto LABEL_25;
    }

    sub_1000059A8(v52, &qword_100418D88, &qword_10036D8F8);
LABEL_19:
    v58 = *(v68 + 32);
    v59 = *(v75 + 48);
    v60 = v71;
    sub_10000A0A4(v49 + v58, v71, &qword_100418D88, &qword_10036D8F8);
    v61 = v40 + v58;
    v52 = v60;
    sub_10000A0A4(v61, v60 + v59, &qword_100418D88, &qword_10036D8F8);
    if (v53(v60, 1, v43) == 1)
    {
      if (v53(v60 + v59, 1, v43) == 1)
      {
        sub_1000059A8(v60, &qword_100418D88, &qword_10036D8F8);
LABEL_29:
        type metadata accessor for UnknownStorage();
        sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v62 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v62 & 1;
      }

      goto LABEL_24;
    }

    v54 = v70;
    sub_10000A0A4(v60, v70, &qword_100418D88, &qword_10036D8F8);
    if (v53(v60 + v59, 1, v43) == 1)
    {
      goto LABEL_23;
    }

    v64 = v66;
    sub_10009E724(v60 + v59, v66, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v65 = sub_1000A2EBC(v54, v64);
    sub_10009E7F4(v64, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    sub_10009E7F4(v54, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    sub_1000059A8(v60, &qword_100418D88, &qword_10036D8F8);
    if (v65)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v54 = v72;
  sub_10000A0A4(v52, v72, &qword_100418D88, &qword_10036D8F8);
  if (v53(v52 + v51, 1, v43) == 1)
  {
LABEL_23:
    sub_10009E7F4(v54, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    goto LABEL_24;
  }

  v55 = v52 + v51;
  v56 = v66;
  sub_10009E724(v55, v66, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v57 = sub_1000A2EBC(v54, v56);
  sub_10009E7F4(v56, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_10009E7F4(v54, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v52, &qword_100418D88, &qword_10036D8F8);
  if (v57)
  {
    goto LABEL_19;
  }

LABEL_26:
  v62 = 0;
  return v62 & 1;
}

uint64_t sub_1000A2D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
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
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A2EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A2FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_100024A2C(&qword_10041C560, &qword_100373D50);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v32 = a1;
  v17 = *(v31 + 20);
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_100418D88, &qword_10036D8F8);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_100418D88, &qword_10036D8F8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_100418D88, &qword_10036D8F8);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v30;
      sub_10009E724(&v16[v18], v30, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      v23 = sub_1000A2EBC(v11, v22);
      sub_10009E7F4(v22, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      sub_1000059A8(v16, &qword_100418D88, &qword_10036D8F8);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_6:
    sub_1000059A8(v16, &qword_10041C560, &qword_100373D50);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v16, &qword_100418D88, &qword_10036D8F8);
LABEL_10:
  v24 = *(v31 + 24);
  v25 = (v32 + v24);
  v26 = *(v32 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (v28)
    {
LABEL_16:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1000A337C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A3478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100418D68, &qword_10036D8D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_100024A2C(&qword_10041C598, &qword_100373D98);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_17;
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
      goto LABEL_17;
    }
  }

  v23 = v17[6];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 5)
  {
    if (v25 != 5)
    {
      goto LABEL_17;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_17;
  }

  v26 = v17[7];
  v27 = *(v13 + 48);
  sub_10000A0A4(a1 + v26, v16, &qword_100418D68, &qword_10036D8D8);
  v28 = a2 + v26;
  v29 = v27;
  sub_10000A0A4(v28, &v16[v27], &qword_100418D68, &qword_10036D8D8);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100418D68, &qword_10036D8D8);
LABEL_20:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v31 & 1;
    }

    goto LABEL_16;
  }

  sub_10000A0A4(v16, v12, &qword_100418D68, &qword_10036D8D8);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    sub_10009E7F4(v12, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
LABEL_16:
    sub_1000059A8(v16, &qword_10041C598, &qword_100373D98);
    goto LABEL_17;
  }

  sub_10009E724(&v16[v29], v8, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  v33 = sub_1000A337C(v12, v8);
  sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  sub_10009E7F4(v12, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  sub_1000059A8(v16, &qword_100418D68, &qword_10036D8D8);
  if (v33)
  {
    goto LABEL_20;
  }

LABEL_17:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1000A382C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418D78, &qword_10036D8E8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v55 = &v52 - v10;
  v11 = sub_100024A2C(&qword_10041C590, &qword_100373D90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v58 = &v52 - v13;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v52 - v21;
  v23 = sub_100024A2C(&qword_10041C568, &qword_100373D58);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v52 - v25;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v28 = *(v27 + 20);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_21;
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
      goto LABEL_21;
    }
  }

  v52 = v7;
  v59 = a2;
  v33 = *(v27 + 24);
  v34 = a1;
  v35 = *(v23 + 48);
  v53 = v34;
  v54 = v27;
  sub_10000A0A4(v34 + v33, v26, &qword_100418D70, &qword_10036D8E0);
  sub_10000A0A4(v59 + v33, &v26[v35], &qword_100418D70, &qword_10036D8E0);
  v36 = *(v15 + 48);
  if (v36(v26, 1, v14) != 1)
  {
    sub_10000A0A4(v26, v22, &qword_100418D70, &qword_10036D8E0);
    if (v36(&v26[v35], 1, v14) != 1)
    {
      sub_10009E724(&v26[v35], v18, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      v40 = sub_1000A3478(v22, v18);
      sub_10009E7F4(v18, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      sub_10009E7F4(v22, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      sub_1000059A8(v26, &qword_100418D70, &qword_10036D8E0);
      if ((v40 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_10009E7F4(v22, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
LABEL_12:
    v37 = &qword_10041C568;
    v38 = &qword_100373D58;
    v39 = v26;
LABEL_20:
    sub_1000059A8(v39, v37, v38);
    goto LABEL_21;
  }

  if (v36(&v26[v35], 1, v14) != 1)
  {
    goto LABEL_12;
  }

  sub_1000059A8(v26, &qword_100418D70, &qword_10036D8E0);
LABEL_14:
  v41 = *(v54 + 28);
  v42 = *(v11 + 48);
  v43 = v58;
  sub_10000A0A4(v53 + v41, v58, &qword_100418D78, &qword_10036D8E8);
  sub_10000A0A4(v59 + v41, v43 + v42, &qword_100418D78, &qword_10036D8E8);
  v44 = v57;
  v45 = *(v56 + 48);
  if (v45(v43, 1, v57) == 1)
  {
    if (v45(v43 + v42, 1, v44) == 1)
    {
      sub_1000059A8(v43, &qword_100418D78, &qword_10036D8E8);
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v47 & 1;
    }

    goto LABEL_19;
  }

  v46 = v55;
  sub_10000A0A4(v43, v55, &qword_100418D78, &qword_10036D8E8);
  if (v45(v43 + v42, 1, v44) == 1)
  {
    sub_10009E7F4(v46, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
LABEL_19:
    v37 = &qword_10041C590;
    v38 = &qword_100373D90;
    v39 = v43;
    goto LABEL_20;
  }

  v49 = v43 + v42;
  v50 = v52;
  sub_10009E724(v49, v52, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  v51 = sub_1000A1120(v46, v50);
  sub_10009E7F4(v50, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  sub_10009E7F4(v46, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  sub_1000059A8(v43, &qword_100418D78, &qword_10036D8E8);
  if (v51)
  {
    goto LABEL_24;
  }

LABEL_21:
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_1000A3E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
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
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A3FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = v5[8];
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

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A4108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A423C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A4370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A4464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
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
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A45FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100418D48, &qword_10036D8B8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v77 = &v73 - v10;
  v79 = sub_100024A2C(&qword_10041C5A0, &qword_100373DA0);
  v11 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v13 = &v73 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v84 = *(v14 - 8);
  v85 = v14;
  v15 = *(v84 + 64);
  __chkstk_darwin(v14);
  v78 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100024A2C(&qword_100418D40, &qword_10036D8B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v82 = &v73 - v19;
  v83 = sub_100024A2C(&qword_10041C5A8, &qword_100373DA8);
  v20 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v86 = &v73 - v21;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100024A2C(&qword_100418D38, &qword_10036D8A8);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v73 - v29;
  v31 = sub_100024A2C(&qword_10041C5B0, &qword_100373DB0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = &v73 - v33;
  v35 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v36 = *(v35 + 20);
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_28;
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
      goto LABEL_28;
    }
  }

  v73 = v7;
  v74 = v13;
  v41 = *(v35 + 24);
  v42 = *(v31 + 48);
  v75 = a1;
  v76 = v35;
  sub_10000A0A4(a1 + v41, v34, &qword_100418D38, &qword_10036D8A8);
  v43 = a2 + v41;
  v44 = a2;
  sub_10000A0A4(v43, &v34[v42], &qword_100418D38, &qword_10036D8A8);
  v45 = *(v23 + 48);
  if (v45(v34, 1, v22) == 1)
  {
    if (v45(&v34[v42], 1, v22) == 1)
    {
      sub_1000059A8(v34, &qword_100418D38, &qword_10036D8A8);
      goto LABEL_14;
    }

LABEL_12:
    v46 = &qword_10041C5B0;
    v47 = &qword_100373DB0;
    v48 = v34;
LABEL_27:
    sub_1000059A8(v48, v46, v47);
    goto LABEL_28;
  }

  sub_10000A0A4(v34, v30, &qword_100418D38, &qword_10036D8A8);
  if (v45(&v34[v42], 1, v22) == 1)
  {
    sub_10009E7F4(v30, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
    goto LABEL_12;
  }

  sub_10009E724(&v34[v42], v26, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  v49 = sub_1000A4464(v30, v26);
  sub_10009E7F4(v26, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  sub_10009E7F4(v30, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  sub_1000059A8(v34, &qword_100418D38, &qword_10036D8A8);
  if ((v49 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v50 = v75;
  v51 = *(v76 + 28);
  v52 = *(v83 + 48);
  v53 = v86;
  sub_10000A0A4(v75 + v51, v86, &qword_100418D40, &qword_10036D8B0);
  sub_10000A0A4(v44 + v51, v53 + v52, &qword_100418D40, &qword_10036D8B0);
  v54 = v85;
  v55 = *(v84 + 48);
  if (v55(v53, 1, v85) != 1)
  {
    v58 = v82;
    sub_10000A0A4(v53, v82, &qword_100418D40, &qword_10036D8B0);
    v59 = v55(v53 + v52, 1, v54);
    v57 = v74;
    if (v59 != 1)
    {
      v60 = v53 + v52;
      v61 = v78;
      sub_10009E724(v60, v78, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      v62 = sub_1000A0428(v58, v61);
      sub_10009E7F4(v61, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      sub_10009E7F4(v58, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      sub_1000059A8(v53, &qword_100418D40, &qword_10036D8B0);
      if ((v62 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    sub_10009E7F4(v58, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
    goto LABEL_19;
  }

  v56 = v55(v53 + v52, 1, v54);
  v57 = v74;
  if (v56 != 1)
  {
LABEL_19:
    v46 = &qword_10041C5A8;
    v47 = &qword_100373DA8;
    v48 = v53;
    goto LABEL_27;
  }

  sub_1000059A8(v53, &qword_100418D40, &qword_10036D8B0);
LABEL_21:
  v63 = *(v76 + 32);
  v64 = *(v79 + 48);
  sub_10000A0A4(v50 + v63, v57, &qword_100418D48, &qword_10036D8B8);
  sub_10000A0A4(v44 + v63, v57 + v64, &qword_100418D48, &qword_10036D8B8);
  v65 = v81;
  v66 = *(v80 + 48);
  if (v66(v57, 1, v81) == 1)
  {
    if (v66(v57 + v64, 1, v65) == 1)
    {
      sub_1000059A8(v57, &qword_100418D48, &qword_10036D8B8);
LABEL_31:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v68 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v68 & 1;
    }

    goto LABEL_26;
  }

  v67 = v77;
  sub_10000A0A4(v57, v77, &qword_100418D48, &qword_10036D8B8);
  if (v66(v57 + v64, 1, v65) == 1)
  {
    sub_10009E7F4(v67, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
LABEL_26:
    v46 = &qword_10041C5A0;
    v47 = &qword_100373DA0;
    v48 = v57;
    goto LABEL_27;
  }

  v70 = v57 + v64;
  v71 = v73;
  sub_10009E724(v70, v73, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  v72 = sub_10009FC10(v67, v71);
  sub_10009E7F4(v71, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  sub_10009E7F4(v67, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  sub_1000059A8(v57, &qword_100418D48, &qword_10036D8B8);
  if (v72)
  {
    goto LABEL_31;
  }

LABEL_28:
  v68 = 0;
  return v68 & 1;
}

uint64_t sub_1000A4F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100418C90, &qword_10036D800);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_100024A2C(&qword_10041C5C8, &unk_100373DC8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v18 = *(v17 + 20);
  v31 = a1;
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v23 = a2;
  v24 = *(v17 + 24);
  v25 = *(v13 + 48);
  sub_10000A0A4(v31 + v24, v16, &qword_100418C90, &qword_10036D800);
  sub_10000A0A4(v23 + v24, &v16[v25], &qword_100418C90, &qword_10036D800);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v25], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100418C90, &qword_10036D800);
LABEL_16:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_12;
  }

  sub_10000A0A4(v16, v12, &qword_100418C90, &qword_10036D800);
  if (v26(&v16[v25], 1, v4) == 1)
  {
    sub_10009E7F4(v12, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
LABEL_12:
    sub_1000059A8(v16, &qword_10041C5C8, &unk_100373DC8);
    goto LABEL_13;
  }

  sub_10009E724(&v16[v25], v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  v29 = sub_1000A5AE8(v12, v8);
  sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  sub_10009E7F4(v12, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  sub_1000059A8(v16, &qword_100418C90, &qword_10036D800);
  if (v29)
  {
    goto LABEL_16;
  }

LABEL_13:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1000A52AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100418C98, &qword_10036D808);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v56 - v11;
  v13 = sub_100024A2C(&qword_10041C5C0, &qword_100373DC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v56 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v23 = a1;
  v24 = a2;
  v25 = *(v17 + 24);
  v26 = *(v13 + 48);
  v56 = v23;
  v57 = v17;
  sub_10000A0A4(v23 + v25, v16, &qword_100418C98, &qword_10036D808);
  sub_10000A0A4(v24 + v25, &v16[v26], &qword_100418C98, &qword_10036D808);
  v27 = *(v5 + 48);
  if (v27(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v12, &qword_100418C98, &qword_10036D808);
    if (v27(&v16[v26], 1, v4) != 1)
    {
      sub_10009E724(&v16[v26], v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      v30 = sub_1000A4F14(v12, v8);
      sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      sub_10009E7F4(v12, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      sub_1000059A8(v16, &qword_100418C98, &qword_10036D808);
      if ((v30 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    sub_10009E7F4(v12, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
LABEL_12:
    sub_1000059A8(v16, &qword_10041C5C0, &qword_100373DC0);
    goto LABEL_13;
  }

  if (v27(&v16[v26], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1000059A8(v16, &qword_100418C98, &qword_10036D808);
LABEL_16:
  v31 = v57[7];
  v32 = (v56 + v31);
  v33 = *(v56 + v31 + 4);
  v34 = (v24 + v31);
  v35 = *(v24 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v36 = v57[8];
  v37 = (v56 + v36);
  v38 = *(v56 + v36 + 4);
  v39 = (v24 + v36);
  v40 = *(v24 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v41 = v57[9];
  v42 = (v56 + v41);
  v43 = *(v56 + v41 + 4);
  v44 = (v24 + v41);
  v45 = *(v24 + v41 + 4);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v46 = v57[10];
  v47 = (v56 + v46);
  v48 = *(v56 + v46 + 4);
  v49 = (v24 + v46);
  v50 = *(v24 + v46 + 4);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v51 = v57[11];
  v52 = (v56 + v51);
  v53 = *(v56 + v51 + 4);
  v54 = (v24 + v51);
  v55 = *(v24 + v51 + 4);
  if ((v53 & 1) == 0)
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_13;
    }

LABEL_46:
    type metadata accessor for UnknownStorage();
    sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v28 & 1;
  }

  if (v55)
  {
    goto LABEL_46;
  }

LABEL_13:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1000A5750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100418CA0, &qword_10036D810);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_100024A2C(&qword_10041C5B8, &qword_100373DB8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v18 = *(v17 + 20);
  v31 = a1;
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v23 = a2;
  v24 = *(v17 + 24);
  v25 = *(v13 + 48);
  sub_10000A0A4(v31 + v24, v16, &qword_100418CA0, &qword_10036D810);
  sub_10000A0A4(v23 + v24, &v16[v25], &qword_100418CA0, &qword_10036D810);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v25], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_100418CA0, &qword_10036D810);
LABEL_16:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_12;
  }

  sub_10000A0A4(v16, v12, &qword_100418CA0, &qword_10036D810);
  if (v26(&v16[v25], 1, v4) == 1)
  {
    sub_10009E7F4(v12, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
LABEL_12:
    sub_1000059A8(v16, &qword_10041C5B8, &qword_100373DB8);
    goto LABEL_13;
  }

  sub_10009E724(&v16[v25], v8, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  v29 = sub_1000A52AC(v12, v8);
  sub_10009E7F4(v8, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  sub_10009E7F4(v12, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  sub_1000059A8(v16, &qword_100418CA0, &qword_10036D810);
  if (v29)
  {
    goto LABEL_16;
  }

LABEL_13:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1000A5AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
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
  if (v11 == 5)
  {
    if (v12 != 5)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A5BD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A5C24()
{
  result = qword_100418F70;
  if (!qword_100418F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418F70);
  }

  return result;
}

unint64_t sub_1000A5C7C()
{
  result = qword_100418F78;
  if (!qword_100418F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418F78);
  }

  return result;
}

unint64_t sub_1000A5CD4()
{
  result = qword_100418F80;
  if (!qword_100418F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418F80);
  }

  return result;
}

unint64_t sub_1000A5D5C()
{
  result = qword_100418F98;
  if (!qword_100418F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418F98);
  }

  return result;
}

unint64_t sub_1000A5DB4()
{
  result = qword_100418FA0;
  if (!qword_100418FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FA0);
  }

  return result;
}

unint64_t sub_1000A5E0C()
{
  result = qword_100418FA8;
  if (!qword_100418FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FA8);
  }

  return result;
}

unint64_t sub_1000A5E94()
{
  result = qword_100418FC0;
  if (!qword_100418FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FC0);
  }

  return result;
}

unint64_t sub_1000A5EEC()
{
  result = qword_100418FC8;
  if (!qword_100418FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FC8);
  }

  return result;
}

unint64_t sub_1000A5F44()
{
  result = qword_100418FD0;
  if (!qword_100418FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FD0);
  }

  return result;
}

unint64_t sub_1000A5FCC()
{
  result = qword_100418FE8;
  if (!qword_100418FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FE8);
  }

  return result;
}

unint64_t sub_1000A6024()
{
  result = qword_100418FF0;
  if (!qword_100418FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FF0);
  }

  return result;
}

unint64_t sub_1000A607C()
{
  result = qword_100418FF8;
  if (!qword_100418FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418FF8);
  }

  return result;
}

unint64_t sub_1000A6104()
{
  result = qword_100419010;
  if (!qword_100419010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419010);
  }

  return result;
}

unint64_t sub_1000A615C()
{
  result = qword_100419018;
  if (!qword_100419018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419018);
  }

  return result;
}

unint64_t sub_1000A61B4()
{
  result = qword_100419020;
  if (!qword_100419020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419020);
  }

  return result;
}

unint64_t sub_1000A623C()
{
  result = qword_100419038;
  if (!qword_100419038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419038);
  }

  return result;
}

unint64_t sub_1000A6294()
{
  result = qword_100419040;
  if (!qword_100419040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419040);
  }

  return result;
}

unint64_t sub_1000A62EC()
{
  result = qword_100419048;
  if (!qword_100419048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419048);
  }

  return result;
}

unint64_t sub_1000A6374()
{
  result = qword_100419060;
  if (!qword_100419060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419060);
  }

  return result;
}

unint64_t sub_1000A63CC()
{
  result = qword_100419068;
  if (!qword_100419068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419068);
  }

  return result;
}

unint64_t sub_1000A6424()
{
  result = qword_100419070;
  if (!qword_100419070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419070);
  }

  return result;
}

unint64_t sub_1000A64AC()
{
  result = qword_100419088;
  if (!qword_100419088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419088);
  }

  return result;
}

unint64_t sub_1000A6504()
{
  result = qword_100419090;
  if (!qword_100419090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419090);
  }

  return result;
}

unint64_t sub_1000A655C()
{
  result = qword_100419098;
  if (!qword_100419098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419098);
  }

  return result;
}

unint64_t sub_1000A65E4()
{
  result = qword_1004190B0;
  if (!qword_1004190B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190B0);
  }

  return result;
}

unint64_t sub_1000A663C()
{
  result = qword_1004190B8;
  if (!qword_1004190B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190B8);
  }

  return result;
}

unint64_t sub_1000A6694()
{
  result = qword_1004190C0;
  if (!qword_1004190C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190C0);
  }

  return result;
}

unint64_t sub_1000A671C()
{
  result = qword_1004190D8;
  if (!qword_1004190D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190D8);
  }

  return result;
}

unint64_t sub_1000A6774()
{
  result = qword_1004190E0;
  if (!qword_1004190E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190E0);
  }

  return result;
}

unint64_t sub_1000A67CC()
{
  result = qword_1004190E8;
  if (!qword_1004190E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004190E8);
  }

  return result;
}

unint64_t sub_1000A6854()
{
  result = qword_100419100;
  if (!qword_100419100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419100);
  }

  return result;
}

unint64_t sub_1000A68AC()
{
  result = qword_100419108;
  if (!qword_100419108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419108);
  }

  return result;
}

unint64_t sub_1000A6904()
{
  result = qword_100419110;
  if (!qword_100419110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419110);
  }

  return result;
}

unint64_t sub_1000A698C()
{
  result = qword_100419128;
  if (!qword_100419128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419128);
  }

  return result;
}

unint64_t sub_1000A69E4()
{
  result = qword_100419130;
  if (!qword_100419130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419130);
  }

  return result;
}

unint64_t sub_1000A6A3C()
{
  result = qword_100419138;
  if (!qword_100419138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100419138);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_AONLoc_Type7Info.Placement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_AONLoc_Type7Info.Placement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_Band(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_Band(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_AONLoc_BtAdvertisement.BtType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_AONLoc_BtAdvertisement.BtType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gpsd_LtlInfoType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gpsd_LtlInfoType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_SvReferencePoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_SvReferencePoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1000AAAE4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AABD0(319, &unk_100419778, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AABD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1000AAC7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, void (*a7)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    sub_1000AD7AC(319, a4, a5, &type metadata accessor for Optional);
    if (v12 <= 0x3F)
    {
      sub_1000AABD0(319, a6, a7);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AADEC()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000AAEC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1000AD7AC(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000AB01C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000AB0F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_1000AB1DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

void sub_1000AB34C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      sub_1000AD7AC(319, a4, a5, &type metadata accessor for Optional);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000AB44C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 28));
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

uint64_t sub_1000AB538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void sub_1000AB5F0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AB6FC()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000AD7AC(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000AB844()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AABD0(319, &qword_10041A078, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    if (v1 <= 0x3F)
    {
      sub_1000AABD0(319, &unk_10041A080, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      if (v2 <= 0x3F)
      {
        sub_1000AD7AC(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000AB9CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_1000AD7AC(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000ABAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

uint64_t sub_1000ABBA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_1000ABC90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 36)) = a2 + 2;
  }

  return result;
}

void sub_1000ABD48()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000ABE94()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &unk_10041A448, &type metadata for Int64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000ABFE0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AABD0(319, &qword_10041A4E0, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
      if (v2 <= 0x3F)
      {
        sub_1000AABD0(319, &qword_10041A4E8, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
        if (v3 <= 0x3F)
        {
          sub_1000AABD0(319, &unk_10041A4F0, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000AC1B4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_10041A690, &type metadata for CLP_LogEntry_PrivateData_Band, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000AD7AC(319, &unk_10041A698, &type metadata for CLP_LogEntry_PrivateData_IonosphericCorrectionSource, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000AC2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
    v16 = a1 + *(a3 + 24);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1000AC40C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
    v18 = a1 + *(a4 + 24);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1000AC578()
{
  sub_1000AD7AC(319, &unk_10041A7C0, &type metadata for Double, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AC6CC()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_10041A690, &type metadata for CLP_LogEntry_PrivateData_Band, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000AD7AC(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000AC838(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    sub_1000AD7AC(319, a4, a5, &type metadata accessor for Optional);
    if (v12 <= 0x3F)
    {
      sub_1000AD7AC(319, a6, a7, &type metadata accessor for Optional);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AC954()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_10041A9F0, &type metadata for CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000AABD0(319, &unk_10041A9F8, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000ACA94()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000ACBA8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AABD0(319, &qword_10041AB18, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      if (v2 <= 0x3F)
      {
        sub_1000AABD0(319, &unk_10041AB20, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000ACD2C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_10041AC38, &type metadata for CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000AABD0(319, &unk_10041AC40, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000ACE6C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000ACFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  v15 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v18 = sub_100024A2C(a4, a5);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + *(a3 + 28);

  return v19(v20, a2, v18);
}

uint64_t sub_1000AD11C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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

  v17 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v20 = sub_100024A2C(a5, a6);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + *(a4 + 28);

  return v21(v22, a2, a2, v20);
}

void sub_1000AD28C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AABD0(319, &qword_10041AB18, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      if (v2 <= 0x3F)
      {
        sub_1000AABD0(319, &unk_10041ADE0, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000AD3C4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AABD0(319, &unk_10041ADE0, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AD508()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AD7AC(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_100418638, &type metadata for Float, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AD660()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000AABD0(319, &qword_10041B0A8, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    if (v1 <= 0x3F)
    {
      sub_1000AD7AC(319, &qword_10041A690, &type metadata for CLP_LogEntry_PrivateData_Band, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000AD7AC(319, &qword_10041B0B0, &type metadata for CLP_LogEntry_PrivateData_SvReferencePoint, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000AABD0(319, &unk_10041B0B8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000AD7AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000AD86C()
{
  sub_1000AABD0(319, &qword_10041B228, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1000AABD0(319, &qword_10041B230, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
    if (v4 <= 0x3F)
    {
      v19 = *(v3 - 8) + 64;
      sub_1000AABD0(319, &qword_10041B238, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
      if (v6 <= 0x3F)
      {
        v20 = *(v5 - 8) + 64;
        sub_1000AABD0(319, &qword_10041B240, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
        if (v8 <= 0x3F)
        {
          v21 = *(v7 - 8) + 64;
          sub_1000AABD0(319, &qword_10041B248, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
          if (v10 <= 0x3F)
          {
            v22 = *(v9 - 8) + 64;
            sub_1000AABD0(319, &qword_10041B250, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
            if (v12 <= 0x3F)
            {
              v23 = *(v11 - 8) + 64;
              sub_1000AABD0(319, &qword_10041B258, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
              if (v14 <= 0x3F)
              {
                v24 = *(v13 - 8) + 64;
                sub_1000AABD0(319, &qword_10041B260, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                if (v16 <= 0x3F)
                {
                  v25 = *(v15 - 8) + 64;
                  sub_1000AABD0(319, &unk_10041B268, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                  if (v18 <= 0x3F)
                  {
                    v26 = *(v17 - 8) + 64;
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

void sub_1000ADBE8()
{
  sub_1000AABD0(319, &qword_10041B470, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000AABD0(319, &unk_10041B478, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000ADD30()
{
  sub_1000AABD0(319, &qword_10041B0A8, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  if (v1 <= 0x3F)
  {
    v15 = *(v0 - 8) + 64;
    sub_1000AABD0(319, &qword_10041B720, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
    if (v3 <= 0x3F)
    {
      v16 = *(v2 - 8) + 64;
      sub_1000AABD0(319, &qword_10041A078, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      if (v5 <= 0x3F)
      {
        v17 = *(v4 - 8) + 64;
        sub_1000AABD0(319, &unk_10041A080, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_1000AABD0(319, &qword_10041B728, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
          if (v10 <= 0x3F)
          {
            v18 = *(v9 - 8) + 64;
            sub_1000AABD0(319, &qword_10041B730, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
            if (v12 <= 0x3F)
            {
              v19 = *(v11 - 8) + 64;
              sub_1000AABD0(319, &unk_10041B738, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
              if (v14 <= 0x3F)
              {
                v20 = *(v13 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000AE01C()
{
  sub_1000AABD0(319, &unk_10041B9A0, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000AE0DC()
{
  sub_1000AABD0(319, &qword_10041B0A8, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000AABD0(319, &unk_10041BA88, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000AE248()
{
  sub_1000AABD0(319, &qword_10041AB18, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000AABD0(319, &unk_10041ADE0, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000AE360()
{
  sub_1000AABD0(319, &qword_10041BF70, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1000AABD0(319, &qword_10041BF78, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1000AABD0(319, &qword_10041BF80, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1000AABD0(319, &qword_10041BF88, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1000AABD0(319, &unk_10041BF90, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1000AE570()
{
  sub_1000AABD0(319, &qword_10041C0D8, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1000AABD0(319, &qword_10041C0E0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1000AABD0(319, &qword_10041C0E8, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1000AABD0(319, &unk_10041C0F0, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1000AE740()
{
  result = qword_10041C420;
  if (!qword_10041C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C420);
  }

  return result;
}

unint64_t sub_1000AE794()
{
  result = qword_10041C428;
  if (!qword_10041C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C428);
  }

  return result;
}

unint64_t sub_1000AE7E8()
{
  result = qword_10041C430;
  if (!qword_10041C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C430);
  }

  return result;
}

unint64_t sub_1000AE83C()
{
  result = qword_10041C438;
  if (!qword_10041C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C438);
  }

  return result;
}

unint64_t sub_1000AE890()
{
  result = qword_10041C440;
  if (!qword_10041C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C440);
  }

  return result;
}

unint64_t sub_1000AE8E4()
{
  result = qword_10041C448;
  if (!qword_10041C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C448);
  }

  return result;
}

unint64_t sub_1000AE938()
{
  result = qword_10041C450;
  if (!qword_10041C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C450);
  }

  return result;
}

unint64_t sub_1000AE98C()
{
  result = qword_10041C458;
  if (!qword_10041C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C458);
  }

  return result;
}

unint64_t sub_1000AE9E0()
{
  result = qword_10041C460;
  if (!qword_10041C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C460);
  }

  return result;
}

unint64_t sub_1000AEA34()
{
  result = qword_10041C468;
  if (!qword_10041C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C468);
  }

  return result;
}

unint64_t sub_1000AEA88()
{
  result = qword_10041C470;
  if (!qword_10041C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C470);
  }

  return result;
}

unint64_t sub_1000AEADC()
{
  result = qword_10041C478;
  if (!qword_10041C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041C478);
  }

  return result;
}

uint64_t sub_1000AEBB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_10041C5D0, &qword_100373E20);
  v8 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000AF3FC(v6, a1, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041C5D0, &qword_100373E20);
  }

  return result;
}

int *sub_1000AED48@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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
  return result;
}

uint64_t sub_1000AEDF8(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041C5D0, &qword_100373E20);
  sub_1000AF3FC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000AEEB0(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041C5D0, &qword_100373E20) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041C5D0, &qword_100373E20);
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
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[8];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041C5D0, &qword_100373E20);
    }
  }

  else
  {
    sub_1000AF3FC(v7, v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  }

  return sub_1000AF100;
}

BOOL sub_1000AF128()
{
  v1 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(v0 + *(v5 + 24), v4, &qword_10041C5D0, &qword_100373E20);
  v6 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_10041C5D0, &qword_100373E20);
  return v7;
}

uint64_t sub_1000AF21C()
{
  v1 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  sub_1000059A8(v0 + v1, &qword_10041C5D0, &qword_100373E20);
  v2 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000AF2A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_10041C5D8, qword_100373E28);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000AF3FC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  }

  sub_1000B6664(a1);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041C5D8, qword_100373E28);
  }

  return result;
}

uint64_t sub_1000AF3FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AF464(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041C5D8, qword_100373E28);
  sub_1000AF3FC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000AF51C(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041C5D8, qword_100373E28) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041C5D8, qword_100373E28);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1000B6664(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041C5D8, qword_100373E28);
    }
  }

  else
  {
    sub_1000AF3FC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  }

  return sub_1000AF728;
}

void sub_1000AF750(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1000AF888(v11, v10, a5);
    sub_1000059A8(v14 + v9, a3, a4);
    sub_1000AF3FC(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_1000AF8F0(v11, a5);
  }

  else
  {
    sub_1000059A8(v14 + v9, a3, a4);
    sub_1000AF3FC(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t sub_1000AF888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AF8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1000AF950()
{
  v1 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(v0 + *(v5 + 28), v4, &qword_10041C5D8, qword_100373E28);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_10041C5D8, qword_100373E28);
  return v7;
}

uint64_t sub_1000AFA44()
{
  v1 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  sub_1000059A8(v0 + v1, &qword_10041C5D8, qword_100373E28);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

double sub_1000AFAD0()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000AFB08(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000AFB40(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100026DCC;
}

uint64_t sub_1000AFBDC()
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000AFC0C()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000AFC44(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000AFC7C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
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

uint64_t sub_1000AFD18()
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000AFD48()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000AFD80(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000AFDB8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
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

uint64_t sub_1000AFE54()
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000AFE84()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1000AFEB8(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000AFEF0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32);
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

uint64_t sub_1000AFF88()
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000AFFB8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  v3 = a1 + v2[5];
  ExtensionFieldValueSet.init()();
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_1000B00C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1000B0138@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 20);
  v4 = type metadata accessor for ExtensionFieldValueSet();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1000B01B4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 20);
  v4 = type metadata accessor for ExtensionFieldValueSet();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1000B0278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ExtensionFieldValueSet();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B02EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for ExtensionFieldValueSet();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000B0388()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432FA0);
  sub_100005DF0(v0, qword_100432FA0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_record_time";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "private_data_capture";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000B05D0()
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

      if (result == 4)
      {
        break;
      }

      if (result == 2)
      {
        v3 = type metadata accessor for CLP_LogEntry_LogEntry(0);
        sub_1000B1FBC(&qword_10041C5F0, type metadata accessor for CLP_LogEntry_LogEntry);
        v4 = *(v3 + 20);
        dispatch thunk of Decoder.decodeExtensionField(values:messageType:fieldNumber:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v5 = v0;
        v6 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
        type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp;
        v8 = &unk_10041C610;
LABEL_12:
        sub_1000B1FBC(v8, v7);
        v0 = v5;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v5 = v0;
    v9 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture;
    v8 = &unk_10041C778;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1000B0794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1000B0844(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 20);
    dispatch thunk of Visitor.visitExtensionFields(fields:start:end:)();
    sub_1000B0A54(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000B0844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041C5D0, &qword_100373E20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041C5D0, &qword_100373E20);
  }

  sub_1000AF3FC(v8, v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  sub_1000B1FBC(&qword_10041C610, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1000AF8F0(v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
}

uint64_t sub_1000B0A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_10041C5D8, qword_100373E28);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041C5D8, qword_100373E28);
  }

  sub_1000AF3FC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  sub_1000B1FBC(&qword_10041C778, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1000AF8F0(v13, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
}

uint64_t sub_1000B0CB0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a2 + a1[5];
  ExtensionFieldValueSet.init()();
  v5 = a1[6];
  v6 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1000B0DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B1FBC(&qword_10041C750, type metadata accessor for CLP_LogEntry_LogEntry);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B0E7C(uint64_t a1)
{
  v2 = sub_1000B1FBC(&qword_10041C5F0, type metadata accessor for CLP_LogEntry_LogEntry);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0EE8()
{
  sub_1000B1FBC(&qword_10041C5F0, type metadata accessor for CLP_LogEntry_LogEntry);

  return Message.hash(into:)();
}

void sub_1000B0F68()
{
  v0._countAndFlagsBits = 0x617453656D69542ELL;
  v0._object = 0xEA0000000000706DLL;
  String.append(_:)(v0);
  qword_100432FB8 = 0xD000000000000015;
  unk_100432FC0 = 0x800000010039F1A0;
}

uint64_t *sub_1000B0FD8()
{
  if (qword_1004431E8 != -1)
  {
    swift_once();
  }

  return &qword_100432FB8;
}

uint64_t sub_1000B1028()
{
  if (qword_1004431E8 != -1)
  {
    swift_once();
  }

  v0 = qword_100432FB8;

  return v0;
}

uint64_t sub_1000B1090()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432FC8);
  sub_100005DF0(v0, qword_100432FC8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cf_absolute_time_s";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mach_absolute_time_s";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mach_continuous_time_s";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pipelined_monotonic_time_ns";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000B1320()
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
        v1 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
LABEL_3:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t sub_1000B1420()
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
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
    dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

Swift::Int sub_1000B157C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000B1FBC(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B1634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B1FBC(&qword_10041C748, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B16D4(uint64_t a1)
{
  v2 = sub_1000B1FBC(&qword_10041C610, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B1740()
{
  sub_1000B1FBC(&qword_10041C610, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);

  return Message.hash(into:)();
}

uint64_t sub_1000B17C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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

  type metadata accessor for UnknownStorage();
  sub_1000B1FBC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000B1924(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  __chkstk_darwin(v53);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v48 = &v46 - v7;
  v49 = sub_100024A2C(&qword_10041C758, &qword_100374170);
  v8 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v52 = &v46 - v9;
  v10 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v46 - v17;
  v19 = sub_100024A2C(&qword_10041C760, &qword_100374178);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v50 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  v24 = *(v50 + 24);
  v25 = *(v20 + 56);
  v54 = a1;
  sub_10000A0A4(a1 + v24, v23, &qword_10041C5D0, &qword_100373E20);
  v26 = v55 + v24;
  v27 = v55;
  sub_10000A0A4(v26, &v23[v25], &qword_10041C5D0, &qword_100373E20);
  v28 = *(v11 + 48);
  if (v28(v23, 1, v10) == 1)
  {
    if (v28(&v23[v25], 1, v10) == 1)
    {
      sub_1000059A8(v23, &qword_10041C5D0, &qword_100373E20);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_10041C760;
    v30 = &qword_100374178;
    v31 = v23;
LABEL_14:
    sub_1000059A8(v31, v29, v30);
    goto LABEL_15;
  }

  sub_10000A0A4(v23, v18, &qword_10041C5D0, &qword_100373E20);
  if (v28(&v23[v25], 1, v10) == 1)
  {
    sub_1000AF8F0(v18, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
    goto LABEL_6;
  }

  sub_1000AF3FC(&v23[v25], v14, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  v32 = sub_1000B17C0(v18, v14);
  sub_1000AF8F0(v14, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  sub_1000AF8F0(v18, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  sub_1000059A8(v23, &qword_10041C5D0, &qword_100373E20);
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v33 = v50;
  v34 = *(v50 + 28);
  v35 = *(v49 + 48);
  v36 = v52;
  sub_10000A0A4(v54 + v34, v52, &qword_10041C5D8, qword_100373E28);
  sub_10000A0A4(v27 + v34, v36 + v35, &qword_10041C5D8, qword_100373E28);
  v37 = *(v51 + 48);
  v38 = v53;
  if (v37(v36, 1, v53) != 1)
  {
    v39 = v48;
    sub_10000A0A4(v36, v48, &qword_10041C5D8, qword_100373E28);
    if (v37(v36 + v35, 1, v38) != 1)
    {
      v42 = v36 + v35;
      v43 = v47;
      sub_1000AF3FC(v42, v47, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      sub_1000B1FBC(&qword_10041C770, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000AF8F0(v43, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      sub_1000AF8F0(v39, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      sub_1000059A8(v36, &qword_10041C5D8, qword_100373E28);
      if ((v44 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_1000AF8F0(v39, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
    goto LABEL_13;
  }

  if (v37(v36 + v35, 1, v38) != 1)
  {
LABEL_13:
    v29 = &qword_10041C758;
    v30 = &qword_100374170;
    v31 = v36;
    goto LABEL_14;
  }

  sub_1000059A8(v36, &qword_10041C5D8, qword_100373E28);
LABEL_18:
  type metadata accessor for UnknownStorage();
  sub_1000B1FBC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v45 = *(v33 + 20);
    type metadata accessor for ExtensionFieldValueSet();
    sub_1000B1FBC(&qword_10041C768, &type metadata accessor for ExtensionFieldValueSet);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v40 & 1;
  }

LABEL_15:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_1000B1FBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000B226C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ExtensionFieldValueSet();
    if (v1 <= 0x3F)
    {
      sub_1000B2358(319, &qword_10041C678, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
      if (v2 <= 0x3F)
      {
        sub_1000B2358(319, &unk_10041C680, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000B2358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1000B23D4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418648);
    if (v1 <= 0x3F)
    {
      sub_1000B2498(319, &unk_10041A448);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000B2498(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000B24E8@<X0>(void *a1@<X8>)
{
  sub_1000257C4(a1);
  v1 = ALResultOptions._maxBatchSize.getter();
  if ((v1 & 0x100000000) == 0)
  {
    sub_100026604(v1);
  }

  v2 = ALResultOptions._intervalSec.getter();
  if ((v2 & 0x100000000) == 0)
  {
    sub_10002673C(*&v2);
  }

  v3 = ALResultOptions._maxAgeSec.getter();
  if ((v3 & 0x100000000) == 0)
  {
    sub_100026878(*&v3);
  }

  started = ALResultOptions._startCfaTimeSec.getter();
  if ((v5 & 1) == 0)
  {
    sub_100026BEC(*&started);
  }

  result = ALResultOptions._endCfaTimeSec.getter();
  if ((v7 & 1) == 0)
  {
    return sub_100026D28(*&result);
  }

  return result;
}

uint64_t sub_1000B2588()
{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (v14 - v5);
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F98(v10);
  sub_1000254F4(3);
  sub_1000257C4(v6);
  ALResultOptions.intervalSec.getter();
  sub_10002673C(v11);
  sub_100014A4C(v6, v4, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  sub_10002589C(v4);
  sub_100013A88(&qword_100418460, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  v12 = Message.serializedData(partial:)();
  sub_100014DD8(v6, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  sub_100014DD8(v10, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  return v12;
}

uint64_t sub_1000B2768(uint64_t a1)
{
  ALResultOptions.init()();
  if (sub_1000267E0())
  {
    sub_100026704();
    ALResultOptions._intervalSec.setter();
  }

  return sub_100014DD8(a1, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
}

uint64_t sub_1000B27E8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
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
  sub_100013A88(&qword_100418478, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
    return sub_100005B2C(a1, a2);
  }

  sub_100014A4C(v13, v11, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  ALResultOptions.init()();
  if (sub_1000267E0())
  {
    sub_100026704();
    LOBYTE(v15[0]) = 0;
    ALResultOptions._intervalSec.setter();
  }

  sub_100005B2C(a1, a2);
  sub_100014DD8(v11, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  return sub_100014DD8(v13, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
}

uint64_t sub_1000B2A1C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_1003FF770 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_1000B2A98(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Band.unknown(_:))
  {
    return 0;
  }

  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Band.band2G(_:))
  {
    return 1;
  }

  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Band.band5G(_:))
  {
    return 2;
  }

  if (v4 != enum case for ALWiFiScanSingleAccessPoint.Band.band6G(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 3;
}

uint64_t sub_1000B2BB0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_1003FF790 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_1000B2C2C(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Mode.unknown(_:))
  {
    return 0;
  }

  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Mode.ibss(_:))
  {
    return 1;
  }

  if (v4 == enum case for ALWiFiScanSingleAccessPoint.Mode.infra(_:))
  {
    return 2;
  }

  if (v4 != enum case for ALWiFiScanSingleAccessPoint.Mode.others(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 3;
}

uint64_t sub_1000B2D44@<X0>(uint64_t a1@<X8>)
{
  sub_100012470(a1);

  return sub_100012688();
}

uint64_t sub_1000B2D7C()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012470(v3);
  sub_100012688();
  sub_100013A88(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  v4 = Message.serializedData(partial:)();
  sub_100014DD8(v3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  return v4;
}

uint64_t sub_1000B2E84(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041C780, &qword_100374180);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v23 - v17;
  ALWiFiScanSingleAccessPoint.init(_:)();
  if (sub_1000FFA5C())
  {
    sub_1000FF9A0();
    ALWiFiScanSingleAccessPoint._mac.setter();
  }

  if (sub_1000FFB9C())
  {
    sub_1000FFABC();
    ALWiFiScanSingleAccessPoint._ssid.setter();
  }

  if (sub_1000FFC64())
  {
    sub_1000FFBE4();
    v25 = 0;
    ALWiFiScanSingleAccessPoint._rssidB.setter();
  }

  if (sub_1000FFE90())
  {
    sub_1000FFDD4();
    v26 = 0;
    ALWiFiScanSingleAccessPoint._channel.setter();
  }

  if (sub_1000FFF74())
  {
    sub_1000FFEF0();
    v27 = 0;
    ALWiFiScanSingleAccessPoint._ageSec.setter();
  }

  if (sub_100100190())
  {
    sub_1001000DC();
    ALWiFiScanSingleAccessPoint._isMoving.setter();
  }

  if (sub_100100398())
  {
    sub_1001002C4();
    v28 = 0;
    ALWiFiScanSingleAccessPoint._frequencyKhz.setter();
  }

  if (sub_100100270())
  {
    v19 = sub_1001001E4();
    (*(v11 + 104))(v14, **(&off_1003FF770 + v19), v10);
    (*(v11 + 32))(v18, v14, v10);
    (*(v11 + 56))(v18, 0, 1, v10);
    ALWiFiScanSingleAccessPoint._band.setter();
  }

  if (sub_1000FFD80())
  {
    v20 = sub_1000FFCC4();
    v21 = v24;
    (*(v3 + 104))(v24, **(&off_1003FF790 + v20), v2);
    (*(v3 + 32))(v9, v21, v2);
    (*(v3 + 56))(v9, 0, 1, v2);
    ALWiFiScanSingleAccessPoint._mode.setter();
  }

  if (sub_100100088())
  {
    sub_1000FFFD4();
    ALWiFiScanSingleAccessPoint._isAph.setter();
  }

  return sub_100014DD8(a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
}

uint64_t sub_1000B32D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v49 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v15 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v40 - v17;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  ALWiFiScanResult.init()();
  if (sub_100100A88())
  {
    sub_100100830(v22);
    v23 = sub_1000B9290();
    sub_100014DD8(v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    if (v23)
    {
      sub_100100830(v22);
      sub_1000B45B8(v22);
      v24 = type metadata accessor for ALTimeStamp();
      (*(*(v24 - 8) + 56))(v18, 0, 1, v24);
      ALWiFiScanResult._scanTimestamp.setter();
    }
  }

  v41 = a1;
  v25 = *(*a1 + 16);
  v26 = v49;
  if (v25)
  {
    v27 = *a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = *(v5 + 72);
    v44 = v9 + 32;
    v45 = v28;
    v42 = (v9 + 16);
    v43 = v9 + 8;
    v46 = v8;
    do
    {
      v29 = v47;
      sub_100014A4C(v27, v47, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      v30 = ALWiFiScanResult._scanTimestamp.modify();
      sub_1000B2E84(v29);
      v30(v50, 0);
      (*v42)(v26, v14, v8);
      v31 = ALWiFiScanResult._accessPoints.modify();
      v33 = v32;
      v34 = *v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v33 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_1000133BC(0, v34[2] + 1, 1, v34, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
        *v33 = v34;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_1000133BC(v36 > 1, v37 + 1, 1, v34, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
        *v33 = v34;
      }

      v34[2] = v37 + 1;
      v38 = v34 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37;
      v26 = v49;
      v8 = v46;
      (*(v9 + 32))(v38, v49, v46);
      v31(v50, 0);
      (*(v9 + 8))(v14, v8);
      v27 += v45;
      --v25;
    }

    while (v25);
  }

  return sub_100014DD8(v41, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
}

uint64_t ALWiFiScanResult.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
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
  sub_100013A88(&qword_10041C790, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return sub_100005B2C(a1, a2);
  }

  sub_100014A4C(v15, v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  sub_1000B32D8(v13, a3);
  sub_100005B2C(a1, a2);
  return sub_100014DD8(v15, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
}

uint64_t sub_1000B3994@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100013AE8(a3);
  if ((a2 & 1) == 0)
  {
    sub_100013E34(1);
    sub_100012470(v9);
    sub_100013E64(v9);
    sub_100013FB8(v9);
    sub_100012C18(a1);
    return sub_100013E64(v9);
  }

  return result;
}

uint64_t sub_1000B3A54()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_10010047C())
  {
    return 0;
  }

  if (!sub_1001007A0())
  {
    return 0;
  }

  sub_100013FB8(v3);
  v4 = sub_1000FFA5C();
  sub_100014DD8(v3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  if (!v4)
  {
    return 0;
  }

  sub_100013FB8(v3);
  v5 = sub_1000FF9A0();
  sub_100014DD8(v3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  return v5;
}

uint64_t sub_1000B3B58@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiNotification.NotiType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_1003FF7B0 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_1000B3BD8(uint64_t a1)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v31 - v20;
  v22 = sub_100024A2C(&qword_10041C798, &qword_100374188);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v31 - v24;
  ALWiFiNotification.init()();
  if (sub_100101594())
  {
    v26 = sub_1001014A4();
    sub_1000B3B58(v26, v25);
    v27 = type metadata accessor for ALWiFiNotification.NotiType();
    (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
    ALWiFiNotification._type.setter();
  }

  if (sub_100101078())
  {
    sub_100100B78(v17);
    sub_1000B45B8(v17);
    v28 = type metadata accessor for ALTimeStamp();
    (*(*(v28 - 8) + 56))(v21, 0, 1, v28);
    ALWiFiNotification._timestamp.setter();
  }

  if (sub_100102AE4())
  {
    sub_100102418(v9);
    sub_1000B32D8(v9, v13);
    v29 = type metadata accessor for ALWiFiScanResult();
    (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
    ALWiFiNotification._scanResult.setter();
  }

  if (sub_1001021A8())
  {
    sub_100101AE4(v5);
    sub_1000B3A54();
    sub_100014DD8(v5, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
    ALWiFiNotification._associatedMac.setter();
  }

  if (sub_100102E54())
  {
    sub_100102D54();
    ALWiFiNotification._simulated.setter();
  }

  if (sub_100103014())
  {
    sub_100102F14();
    ALWiFiNotification._available.setter();
  }

  if (sub_100103424())
  {
    sub_1001032DC();
    ALWiFiNotification._isApAwake.setter();
  }

  return sub_100014DD8(a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
}

uint64_t sub_1000B3FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ALWiFiNotification();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v35);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = a2;
  ALWiFiNotifications.init()();
  if (sub_1000283B4() && (v37[0] = sub_1000281F0(), v37[39] = 4, sub_1000348B0(), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0) && sub_10002A3D4())
  {
    v32 = a1;
    sub_100029D60(v16);
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
        sub_100014A4C(v19, v8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
        sub_1000B3BD8(v8);
        v21 = ALWiFiNotifications._results.modify();
        v23 = v22;
        v24 = *v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_1000133BC(0, v24[2] + 1, 1, v24, &qword_10041C7A8, &qword_100374198, &type metadata accessor for ALWiFiNotification);
          *v23 = v24;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          v24 = sub_1000133BC(v26 > 1, v27 + 1, 1, v24, &qword_10041C7A8, &qword_100374198, &type metadata accessor for ALWiFiNotification);
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
    sub_100027658();
    ALWiFiNotifications._isLastBatch.setter();
    sub_100014DD8(v32, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v28 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication;
  }

  else
  {
    v28 = type metadata accessor for CLP_LogEntry_AONLoc_Indication;
  }

  return sub_100014DD8(a1, v28);
}