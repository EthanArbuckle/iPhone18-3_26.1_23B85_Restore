uint64_t sub_10020F000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
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

  sub_10020F100(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_100423F68, &qword_100383438);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F68, &qword_100383438);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
}

uint64_t sub_10020F368@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t sub_10020F43C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6C8, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020F4DC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D30, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020F548()
{
  sub_100256CB4(&qword_100424D30, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  return Message.hash(into:)();
}

uint64_t sub_10020F5F0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004344E0);
  sub_100005DF0(v0, qword_1004344E0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
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
  *v10 = "ref_frame_number";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "cell_info";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10020F84C()
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
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 28);
          type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
          sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 24);
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 20);
          break;
        default:
          goto LABEL_5;
      }

      v0 = v4;
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10020F984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
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

  sub_10020FA5C(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10020FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_100423F68, &qword_100383438);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F68, &qword_100383438);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_100256CB4(&qword_100424D18, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
}

uint64_t sub_10020FCC4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_10020FD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6C0, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10020FE2C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D48, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10020FE98()
{
  sub_100256CB4(&qword_100424D48, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);

  return Message.hash(into:)();
}

uint64_t sub_10020FF3C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004344F8);
  sub_100005DF0(v0, qword_1004344F8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10036D7C0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "physical_cell_id";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "earfcn";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sfn";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "cgi_info_present";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "plmn";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "eutran_cell_id";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "sec_from_frame_start";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "frac_sec_from_frame_start";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "frame_drift";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "ref_time_uncertainty";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "bs_align";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021039C()
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
        if (result <= 2)
        {
          if (result == 1)
          {
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 20);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            goto LABEL_6;
          }

          if (result == 2)
          {
            v3 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 24);
            goto LABEL_5;
          }
        }

        else
        {
          if (result == 3)
          {
            v3 = v0;
            v12 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 28);
            goto LABEL_5;
          }

          if (result == 4)
          {
            v3 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 32);
            goto LABEL_5;
          }

          v6 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 36);
          type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
          sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result <= 8)
        {
          if (result == 6)
          {
            v3 = v0;
            v13 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 40);
          }

          else
          {
            v3 = v0;
            if (result == 7)
            {
              v10 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 44);
            }

            else
            {
              v5 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 48);
            }
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 9:
            v14 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 52);
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
          case 10:
            v3 = v0;
            v11 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 56);
            goto LABEL_5;
          case 11:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 60);
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002105E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
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

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100210830(v5, a1, a2, a3);
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100210B54(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_10023645C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100210830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  sub_10000A0A4(a1 + *(v14 + 36), v8, &qword_100423F60, &qword_100383430);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F60, &qword_100383430);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  sub_100256CB4(&qword_100424C28, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
}

uint64_t sub_100210A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 44));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100210AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v11 = (a1 + *(result + 52));
  if ((v11[1] & 1) == 0)
  {
    return a6(*v11, 9, a3, a4);
  }

  return result;
}

uint64_t sub_100210B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 56));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100210C1C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1[13];
  v17 = a2 + a1[12];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1[15];
  v20 = a2 + a1[14];
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = a2 + v19;
  *v21 = 0;
  *(v21 + 4) = 1;
  return result;
}

uint64_t sub_100210D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6B8, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100210DF0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424340, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100210E5C()
{
  sub_100256CB4(&qword_100424340, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);

  return Message.hash(into:)();
}

uint64_t sub_100210F00()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434510);
  sub_100005DF0(v0, qword_100434510);
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
  *v10 = "geran_time";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "eutran_time";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021115C()
{
  v0 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v5 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  qword_100461238 = v3;
  return result;
}

uint64_t sub_100211270(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25[-v5];
  v7 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25[-v9];
  v11 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25[-v13];
  v15 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v16 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  v18 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  v20 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v21, v14, &qword_100423F70, &qword_100383440);
  swift_beginAccess();
  sub_10000AD64(v14, v1 + v15, &qword_100423F70, &qword_100383440);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v22, v10, &qword_100423F78, &qword_100383448);
  swift_beginAccess();
  sub_10000AD64(v10, v1 + v17, &qword_100423F78, &qword_100383448);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v23, v6, &qword_100423F80, &qword_100383450);

  swift_beginAccess();
  sub_10000AD64(v6, v1 + v19, &qword_100423F80, &qword_100383450);
  swift_endAccess();
  return v1;
}

uint64_t sub_1002115C8()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime, &qword_100423F70, &qword_100383440);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime, &qword_100423F78, &qword_100383448);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime, &qword_100423F80, &qword_100383450);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10021167C()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100211270(v6);
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
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
        v14 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell;
        v15 = &qword_100424340;
        goto LABEL_7;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
        v14 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured;
        v15 = &qword_100424D30;
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
    v14 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured;
    v15 = &qword_100424D48;
LABEL_7:
    sub_100256CB4(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1002118C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  result = sub_100211968(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100211B90(v8, a1, a2, a3);
    sub_100211DB8(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100211968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423F70, &qword_100383440);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F70, &qword_100383440);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  sub_100256CB4(&qword_100424D30, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
}

uint64_t sub_100211B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423F78, &qword_100383448);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F78, &qword_100383448);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  sub_100256CB4(&qword_100424D48, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
}

uint64_t sub_100211DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423F80, &qword_100383450);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F80, &qword_100383450);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_100256CB4(&qword_100424340, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
}

BOOL sub_100212024(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v76 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  __chkstk_darwin(v76);
  v72 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100024A2C(&qword_10042AA58, &qword_100390D70);
  v5 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v77 = &v72 - v6;
  v7 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v84 = &v72 - v11;
  v82 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v81 = *(v82 - 8);
  v12 = *(v81 + 64);
  __chkstk_darwin(v82);
  v73 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100024A2C(&qword_10042AA60, &qword_100390D78);
  v14 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v83 = &v72 - v15;
  v16 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v78 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v87 = &v72 - v20;
  v21 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v79 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100024A2C(&qword_10042AA68, &qword_100390D80);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = &v72 - v28;
  v30 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v86 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v72 - v34;
  v36 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v36, v35, &qword_100423F70, &qword_100383440);
  v37 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v38 = v88;
  swift_beginAccess();
  v39 = *(v26 + 56);
  sub_10000A0A4(v35, v29, &qword_100423F70, &qword_100383440);
  sub_10000A0A4(v38 + v37, &v29[v39], &qword_100423F70, &qword_100383440);
  v40 = *(v22 + 48);
  if (v40(v29, 1, v21) == 1)
  {

    sub_1000059A8(v35, &qword_100423F70, &qword_100383440);
    v41 = a1;
    if (v40(&v29[v39], 1, v21) == 1)
    {
      sub_1000059A8(v29, &qword_100423F70, &qword_100383440);
      goto LABEL_8;
    }

LABEL_6:
    v43 = &qword_10042AA68;
    v44 = &qword_100390D80;
    v45 = v29;
LABEL_14:
    sub_1000059A8(v45, v43, v44);
    goto LABEL_15;
  }

  v41 = a1;
  v42 = v86;
  sub_10000A0A4(v29, v86, &qword_100423F70, &qword_100383440);
  if (v40(&v29[v39], 1, v21) == 1)
  {

    sub_1000059A8(v35, &qword_100423F70, &qword_100383440);
    sub_100246490(v42, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    goto LABEL_6;
  }

  v46 = v79;
  sub_1002463C0(&v29[v39], v79, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  v47 = sub_10024BF8C(v42, v46);
  sub_100246490(v46, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  sub_1000059A8(v35, &qword_100423F70, &qword_100383440);
  sub_100246490(v42, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  sub_1000059A8(v29, &qword_100423F70, &qword_100383440);
  if ((v47 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v48 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  v49 = v87;
  sub_10000A0A4(v41 + v48, v87, &qword_100423F78, &qword_100383448);
  v50 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  v51 = *(v80 + 48);
  v52 = v83;
  sub_10000A0A4(v49, v83, &qword_100423F78, &qword_100383448);
  sub_10000A0A4(v38 + v50, v52 + v51, &qword_100423F78, &qword_100383448);
  v53 = *(v81 + 48);
  v54 = v82;
  if (v53(v52, 1, v82) != 1)
  {
    v58 = v78;
    sub_10000A0A4(v52, v78, &qword_100423F78, &qword_100383448);
    v59 = v53(v52 + v51, 1, v54);
    v56 = v85;
    v57 = v84;
    if (v59 == 1)
    {
      sub_1000059A8(v87, &qword_100423F78, &qword_100383448);
      sub_100246490(v58, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
      goto LABEL_13;
    }

    v61 = v52 + v51;
    v62 = v73;
    sub_1002463C0(v61, v73, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    v63 = sub_100249EC4(v58, v62);
    sub_100246490(v62, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    sub_1000059A8(v87, &qword_100423F78, &qword_100383448);
    sub_100246490(v58, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    sub_1000059A8(v52, &qword_100423F78, &qword_100383448);
    if (v63)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_1000059A8(v49, &qword_100423F78, &qword_100383448);
  v55 = v53(v52 + v51, 1, v54);
  v56 = v85;
  v57 = v84;
  if (v55 != 1)
  {
LABEL_13:
    v43 = &qword_10042AA60;
    v44 = &qword_100390D78;
    v45 = v52;
    goto LABEL_14;
  }

  sub_1000059A8(v52, &qword_100423F78, &qword_100383448);
LABEL_19:
  v64 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(v41 + v64, v57, &qword_100423F80, &qword_100383450);
  v65 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  v66 = *(v74 + 48);
  v67 = v77;
  sub_10000A0A4(v57, v77, &qword_100423F80, &qword_100383450);
  sub_10000A0A4(v38 + v65, v67 + v66, &qword_100423F80, &qword_100383450);
  v68 = *(v75 + 48);
  v69 = v76;
  if (v68(v67, 1, v76) == 1)
  {

    sub_1000059A8(v57, &qword_100423F80, &qword_100383450);
    if (v68(v67 + v66, 1, v69) == 1)
    {
      sub_1000059A8(v67, &qword_100423F80, &qword_100383450);
      return 1;
    }

    goto LABEL_24;
  }

  sub_10000A0A4(v67, v56, &qword_100423F80, &qword_100383450);
  if (v68(v67 + v66, 1, v69) == 1)
  {

    sub_1000059A8(v57, &qword_100423F80, &qword_100383450);
    sub_100246490(v56, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
LABEL_24:
    sub_1000059A8(v67, &qword_10042AA58, &qword_100390D70);
    return 0;
  }

  v70 = v72;
  sub_1002463C0(v67 + v66, v72, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  v71 = sub_10025180C(v56, v70);

  sub_100246490(v70, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_1000059A8(v57, &qword_100423F80, &qword_100383450);
  sub_100246490(v56, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  sub_1000059A8(v67, &qword_100423F80, &qword_100383450);
  return (v71 & 1) != 0;
}

uint64_t sub_100212C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6B0, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100212D1C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D70, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100212D88()
{
  sub_100256CB4(&qword_100424D70, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);

  return Message.hash(into:)();
}

uint64_t sub_100212E2C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434528);
  sub_100005DF0(v0, qword_100434528);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ganss_time_measured_type";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_time_measured";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021303C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 20);
        sub_1002687E0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
        sub_100256CB4(&qword_100424D70, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002131D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F88, &qword_100383458);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100423F88, &qword_100383458);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F88, &qword_100383458);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  sub_100256CB4(&qword_100424D70, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
}

uint64_t sub_100213454@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  *(a4 + v8) = a2;
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v9, 1, 1, v10);
}

uint64_t sub_1002134FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6A8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021359C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424D88, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100213608()
{
  sub_100256CB4(&qword_100424D88, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);

  return Message.hash(into:)();
}

uint64_t sub_1002136B0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434540);
  sub_100005DF0(v0, qword_100434540);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "time_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_tod";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ganss_tod_frac";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ganss_tod_uncertainty";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "fix_type";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "reference_gnss";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002139C4()
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
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 32);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 5:
            v7 = v0;
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 36);
            sub_100268834();
            goto LABEL_20;
          case 6:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 40);
            goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v7 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 20);
            sub_10026878C();
LABEL_20:
            v0 = v7;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            v3 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 28);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100213B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v17 = *(v5 + *(result + 20));
    sub_10026878C();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
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

  sub_100213CAC(v5);
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100213CAC(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  if (*(a1 + *(result + 36)) != 4)
  {
    v3 = *(a1 + *(result + 36));
    sub_100268834();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100213D84@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 6;
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
  *(a2 + a1[9]) = 4;
  v11 = a2 + v10;
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_100213E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A6A0, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100213ECC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424DA0, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100213F38()
{
  sub_100256CB4(&qword_100424DA0, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);

  return Message.hash(into:)();
}

uint64_t sub_100213FE0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434558);
  sub_100005DF0(v0, qword_100434558);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "latitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002142E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A698, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100214388(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002143F4()
{
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);

  return Message.hash(into:)();
}

uint64_t sub_10021449C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434570);
  sub_100005DF0(v0, qword_100434570);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "point";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "uncertain_radius";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100214720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100423F90, &qword_100383460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_1002149B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A690, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100214A54(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424DC8, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100214AC0()
{
  sub_100256CB4(&qword_100424DC8, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);

  return Message.hash(into:)();
}

uint64_t sub_100214B68()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434588);
  sub_100005DF0(v0, qword_100434588);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "point";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "semi_major_axis";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "semi_minor_axis";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "orientation_angle";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "confidence";
  *(v14 + 8) = 10;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100214E4C()
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
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 20);
          type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
          sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 32);
            goto LABEL_5;
          case 5:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 36);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100214FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100215104(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
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

    sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100215104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100423F90, &qword_100383460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_10021536C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t sub_10021544C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A688, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002154EC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424DE0, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100215558()
{
  sub_100256CB4(&qword_100424DE0, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);

  return Message.hash(into:)();
}

uint64_t sub_1002155FC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004345A0);
  sub_100005DF0(v0, qword_1004345A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "point";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "altitude";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "semi_major_axis";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "semi_minor_axis";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "orientation_angle";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "uncertain_altitude";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "confidence";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100215954()
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
        switch(result)
        {
          case 1:
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 20);
            type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
            sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 2:
            v3 = v0;
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 28);
            goto LABEL_5;
        }
      }

      else
      {
        if (result <= 5)
        {
          v3 = v0;
          if (result == 4)
          {
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 32);
          }

          else
          {
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 36);
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 40);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 7)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 44);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100215B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100215CAC(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
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

    sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100215CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100423F90, &qword_100383460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_100215F14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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

uint64_t sub_100216010(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A680, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002160B0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424DF8, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021611C()
{
  sub_100256CB4(&qword_100424DF8, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);

  return Message.hash(into:)();
}

uint64_t sub_1002161C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004345B8);
  sub_100005DF0(v0, qword_1004345B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "point";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inner_radius";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "uncertain_radius";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "offset_angle";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "included_angle";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "confidence";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002164E4()
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
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 32);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 36);
            goto LABEL_5;
          case 6:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 40);
            goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 20);
            type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
            sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 28);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100216678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1002167E8(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
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

    sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1002167E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100423F90, &qword_100383460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_100216A50@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + a1[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_100216B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A678, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100216BE0(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E10, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100216C4C()
{
  sub_100256CB4(&qword_100424E10, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);

  return Message.hash(into:)();
}

uint64_t sub_100216CF0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004345D0);
  sub_100005DF0(v0, qword_1004345D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "point";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "altitude";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100216F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v7 & 1) == 0)
    {
      if (result == 1)
      {
        v8 = *(a4(0) + 20);
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
        sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v9 = *(a4(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = (v5 + *(a5(0) + 24));
    if ((v9[1] & 1) == 0)
    {
      v10 = *v9;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100217158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100423F90, &qword_100383460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_1002173F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_100217478(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A670, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100217518(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E28, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100217584()
{
  sub_100256CB4(&qword_100424E28, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);

  return Message.hash(into:)();
}

uint64_t sub_100217628()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004345E8);
  sub_100005DF0(v0, qword_1004345E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "no_of_points";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "points";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100217840()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_Polygon(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
        sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100217950()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v6 = v0 + *(v3 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100217AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A668, type metadata accessor for Proto_Gnss_Emergency_Polygon);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100217B90(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E40, type metadata accessor for Proto_Gnss_Emergency_Polygon);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100217BFC()
{
  sub_100256CB4(&qword_100424E40, type metadata accessor for Proto_Gnss_Emergency_Polygon);

  return Message.hash(into:)();
}

uint64_t sub_100217CA0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434600);
  sub_100005DF0(v0, qword_100434600);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D790;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "point_uncertain_circle";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "point_uncertain_ellipse";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "point_altitude_uncertain_ellipsoid";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ellipsoid_arc";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ellipsoid_point";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "point_altitude";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "polygon";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "no_location";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021803C()
{
  v0 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  v5 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  v13 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  v15 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  v17 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  result = (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v19 = v3 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  *v19 = 0;
  *(v19 + 4) = 1;
  qword_100461298 = v3;
  return result;
}

uint64_t sub_100218290()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle, &qword_100423F98, &qword_100383468);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse, &qword_100423FA0, &qword_100383470);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid, &qword_100423FA8, &qword_100383478);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc, &qword_100423FB0, &qword_100383480);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint, &qword_100423F90, &qword_100383460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude, &qword_100423FB8, &qword_100383488);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon, &qword_100423FC0, &qword_100383490);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1002183C4()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100246E4C(v6);

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
        if (result > 2)
        {
          v13 = v1;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid;
            v15 = &qword_100424DF8;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc;
            v15 = &qword_100424E10;
          }
        }

        else if (result == 1)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle;
          v15 = &qword_100424DC8;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_25;
          }

          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse;
          v15 = &qword_100424DE0;
        }

        goto LABEL_23;
      }

      if (result <= 6)
      {
        break;
      }

      if (result == 7)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
        v14 = type metadata accessor for Proto_Gnss_Emergency_Polygon;
        v15 = &qword_100424E40;
LABEL_23:
        sub_100256CB4(v15, v14);
        v1 = v13;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_24;
      }

      if (result != 8)
      {
        goto LABEL_25;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_24:
      swift_endAccess();
LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v13 = v1;
    if (result == 5)
    {
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
      v14 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint;
      v15 = &qword_100424248;
    }

    else
    {
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
      v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude;
      v15 = &qword_100424E28;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_10021880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  result = sub_10021894C(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100218B74(v8, a1, a2, a3);
    sub_100218D9C(v8, a1, a2, a3);
    sub_100218FC4(v8, a1, a2, a3);
    sub_1002191EC(v8, a1, a2, a3);
    sub_100219414(v8, a1, a2, a3);
    sub_10021963C(v8, a1, a2, a3);
    sub_100228210(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation, 8, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10021894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423F98, &qword_100383468);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F98, &qword_100383468);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  sub_100256CB4(&qword_100424DC8, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
}

uint64_t sub_100218B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423FA0, &qword_100383470);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FA0, &qword_100383470);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  sub_100256CB4(&qword_100424DE0, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
}

uint64_t sub_100218D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423FA8, &qword_100383478);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FA8, &qword_100383478);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  sub_100256CB4(&qword_100424DF8, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
}

uint64_t sub_100218FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423FB0, &qword_100383480);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FB0, &qword_100383480);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  sub_100256CB4(&qword_100424E10, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
}

uint64_t sub_1002191EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423F90, &qword_100383460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F90, &qword_100383460);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100256CB4(&qword_100424248, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t sub_100219414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423FB8, &qword_100383488);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FB8, &qword_100383488);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  sub_100256CB4(&qword_100424E28, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
}

uint64_t sub_10021963C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423FC0, &qword_100383490);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FC0, &qword_100383490);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  sub_100256CB4(&qword_100424E40, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_Polygon);
}

uint64_t sub_1002198A8(uint64_t a1, uint64_t a2)
{
  v214 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v173 = *(v3 - 8);
  v174 = v3;
  v4 = *(v173 + 64);
  __chkstk_darwin(v3);
  v169 = (&v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = sub_100024A2C(&qword_10042AA18, &qword_100390D30);
  v6 = *(*(v172 - 8) + 64);
  __chkstk_darwin(v172);
  v175 = &v168 - v7;
  v8 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v170 = (&v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v177 = &v168 - v12;
  v13 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v180 = *(v13 - 8);
  v181 = v13;
  v14 = *(v180 + 64);
  __chkstk_darwin(v13);
  v171 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_100024A2C(&qword_10042AA20, &qword_100390D38);
  v16 = *(*(v179 - 8) + 64);
  __chkstk_darwin(v179);
  v182 = &v168 - v17;
  v18 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v176 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v184 = &v168 - v22;
  v23 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v187 = *(v23 - 8);
  v188 = v23;
  v24 = *(v187 + 64);
  __chkstk_darwin(v23);
  v178 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_100024A2C(&qword_10042AA28, &qword_100390D40);
  v26 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v189 = &v168 - v27;
  v28 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v183 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v191 = &v168 - v32;
  v33 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v194 = *(v33 - 8);
  v195 = v33;
  v34 = *(v194 + 64);
  __chkstk_darwin(v33);
  v185 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_100024A2C(&qword_10042AA30, &qword_100390D48);
  v36 = *(*(v193 - 8) + 64);
  __chkstk_darwin(v193);
  v196 = &v168 - v37;
  v38 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v190 = &v168 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v202 = &v168 - v42;
  v43 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v199 = *(v43 - 8);
  v200 = v43;
  v44 = *(v199 + 64);
  __chkstk_darwin(v43);
  v192 = &v168 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100024A2C(&qword_10042AA38, &qword_100390D50);
  v46 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v201 = &v168 - v47;
  v48 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48 - 8);
  v210 = &v168 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v209 = &v168 - v52;
  v53 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v206 = *(v53 - 8);
  v207 = v53;
  v54 = *(v206 + 64);
  __chkstk_darwin(v53);
  v197 = &v168 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_100024A2C(&qword_10042AA40, &qword_100390D58);
  v56 = *(*(v205 - 8) + 64);
  __chkstk_darwin(v205);
  v208 = &v168 - v57;
  v58 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  v59 = *(*(v58 - 8) + 64);
  v60 = __chkstk_darwin(v58 - 8);
  v203 = &v168 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v212 = &v168 - v62;
  v213 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v63 = *(v213 - 8);
  v64 = *(v63 + 64);
  __chkstk_darwin(v213);
  v204 = &v168 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100024A2C(&qword_10042AA48, &qword_100390D60);
  v67 = v66 - 8;
  v68 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v70 = &v168 - v69;
  v71 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  v72 = *(*(v71 - 8) + 64);
  v73 = __chkstk_darwin(v71 - 8);
  v211 = &v168 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v76 = &v168 - v75;
  v77 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(a1 + v77, v76, &qword_100423F98, &qword_100383468);
  v78 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  v79 = v214;
  swift_beginAccess();
  v80 = *(v67 + 56);
  sub_10000A0A4(v76, v70, &qword_100423F98, &qword_100383468);
  v81 = v79 + v78;
  v82 = v213;
  sub_10000A0A4(v81, &v70[v80], &qword_100423F98, &qword_100383468);
  v83 = *(v63 + 48);
  if (v83(v70, 1, v82) == 1)
  {

    sub_1000059A8(v76, &qword_100423F98, &qword_100383468);
    if (v83(&v70[v80], 1, v82) == 1)
    {
      sub_1000059A8(v70, &qword_100423F98, &qword_100383468);
      goto LABEL_8;
    }

LABEL_6:
    v85 = &qword_10042AA48;
    v86 = &qword_100390D60;
LABEL_14:
    v101 = v70;
LABEL_15:
    sub_1000059A8(v101, v85, v86);
    goto LABEL_16;
  }

  v84 = v211;
  sub_10000A0A4(v70, v211, &qword_100423F98, &qword_100383468);
  if (v83(&v70[v80], 1, v82) == 1)
  {

    sub_1000059A8(v76, &qword_100423F98, &qword_100383468);
    sub_100246490(v84, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    goto LABEL_6;
  }

  v87 = v204;
  sub_1002463C0(&v70[v80], v204, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);

  v88 = sub_100255634(v84, v87, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  sub_100246490(v87, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  sub_1000059A8(v76, &qword_100423F98, &qword_100383468);
  sub_100246490(v84, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  sub_1000059A8(v70, &qword_100423F98, &qword_100383468);
  if ((v88 & 1) == 0)
  {
LABEL_16:

    return 0;
  }

LABEL_8:
  v89 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v90 = v212;
  sub_10000A0A4(a1 + v89, v212, &qword_100423FA0, &qword_100383470);
  v91 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v92 = *(v205 + 48);
  v70 = v208;
  sub_10000A0A4(v90, v208, &qword_100423FA0, &qword_100383470);
  sub_10000A0A4(v79 + v91, &v70[v92], &qword_100423FA0, &qword_100383470);
  v93 = v207;
  v94 = *(v206 + 48);
  if (v94(v70, 1, v207) == 1)
  {
    sub_1000059A8(v90, &qword_100423FA0, &qword_100383470);
    v95 = v94(&v70[v92], 1, v93);
    v96 = v209;
    v97 = v210;
    if (v95 == 1)
    {
      sub_1000059A8(v70, &qword_100423FA0, &qword_100383470);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v98 = v203;
  sub_10000A0A4(v70, v203, &qword_100423FA0, &qword_100383470);
  v99 = v94(&v70[v92], 1, v93);
  v96 = v209;
  v100 = v210;
  if (v99 == 1)
  {
    sub_1000059A8(v212, &qword_100423FA0, &qword_100383470);
    sub_100246490(v98, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
LABEL_13:
    v85 = &qword_10042AA40;
    v86 = &qword_100390D58;
    goto LABEL_14;
  }

  v103 = &v70[v92];
  v104 = v197;
  sub_1002463C0(v103, v197, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  LODWORD(v214) = sub_10024A7DC(v98, v104);
  sub_100246490(v104, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  sub_1000059A8(v212, &qword_100423FA0, &qword_100383470);
  sub_100246490(v98, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  sub_1000059A8(v70, &qword_100423FA0, &qword_100383470);
  v97 = v100;
  if ((v214 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v105 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000A0A4(a1 + v105, v96, &qword_100423FA8, &qword_100383478);
  v106 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  v107 = *(v198 + 48);
  v108 = v201;
  sub_10000A0A4(v96, v201, &qword_100423FA8, &qword_100383478);
  v109 = v108;
  sub_10000A0A4(v79 + v106, v108 + v107, &qword_100423FA8, &qword_100383478);
  v110 = v200;
  v111 = *(v199 + 48);
  if (v111(v108, 1, v200) == 1)
  {
    sub_1000059A8(v96, &qword_100423FA8, &qword_100383478);
    v112 = v111(v108 + v107, 1, v110);
    v113 = v202;
    if (v112 == 1)
    {
      sub_1000059A8(v109, &qword_100423FA8, &qword_100383478);
      goto LABEL_27;
    }

LABEL_25:
    v85 = &qword_10042AA38;
    v86 = &qword_100390D50;
LABEL_54:
    v101 = v109;
    goto LABEL_15;
  }

  sub_10000A0A4(v108, v97, &qword_100423FA8, &qword_100383478);
  v114 = v111(v108 + v107, 1, v110);
  v113 = v202;
  if (v114 == 1)
  {
    sub_1000059A8(v96, &qword_100423FA8, &qword_100383478);
    sub_100246490(v97, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    goto LABEL_25;
  }

  v115 = v109 + v107;
  v116 = v192;
  sub_1002463C0(v115, v192, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  LODWORD(v214) = sub_10024991C(v97, v116);
  sub_100246490(v116, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  sub_1000059A8(v96, &qword_100423FA8, &qword_100383478);
  sub_100246490(v97, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  sub_1000059A8(v109, &qword_100423FA8, &qword_100383478);
  if ((v214 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v117 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000A0A4(a1 + v117, v113, &qword_100423FB0, &qword_100383480);
  v118 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  v119 = *(v193 + 48);
  v120 = v113;
  v121 = v113;
  v122 = v196;
  sub_10000A0A4(v120, v196, &qword_100423FB0, &qword_100383480);
  v109 = v122;
  sub_10000A0A4(v79 + v118, v122 + v119, &qword_100423FB0, &qword_100383480);
  v123 = v195;
  v124 = *(v194 + 48);
  if (v124(v122, 1, v195) == 1)
  {
    sub_1000059A8(v121, &qword_100423FB0, &qword_100383480);
    if (v124(v122 + v119, 1, v123) == 1)
    {
      sub_1000059A8(v122, &qword_100423FB0, &qword_100383480);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v125 = v190;
  sub_10000A0A4(v122, v190, &qword_100423FB0, &qword_100383480);
  if (v124(v122 + v119, 1, v123) == 1)
  {
    sub_1000059A8(v202, &qword_100423FB0, &qword_100383480);
    sub_100246490(v125, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
LABEL_32:
    v85 = &qword_10042AA30;
    v86 = &qword_100390D48;
    goto LABEL_54;
  }

  v126 = v122 + v119;
  v127 = v185;
  sub_1002463C0(v126, v185, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  v128 = sub_100253010(v125, v127);
  sub_100246490(v127, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  sub_1000059A8(v202, &qword_100423FB0, &qword_100383480);
  sub_100246490(v125, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  sub_1000059A8(v122, &qword_100423FB0, &qword_100383480);
  if ((v128 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
  v129 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v130 = v191;
  sub_10000A0A4(a1 + v129, v191, &qword_100423F90, &qword_100383460);
  v131 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v132 = *(v186 + 48);
  v109 = v189;
  sub_10000A0A4(v130, v189, &qword_100423F90, &qword_100383460);
  sub_10000A0A4(v79 + v131, v109 + v132, &qword_100423F90, &qword_100383460);
  v133 = v188;
  v134 = *(v187 + 48);
  if (v134(v109, 1, v188) == 1)
  {
    sub_1000059A8(v130, &qword_100423F90, &qword_100383460);
    if (v134(v109 + v132, 1, v133) == 1)
    {
      sub_1000059A8(v109, &qword_100423F90, &qword_100383460);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v135 = v183;
  sub_10000A0A4(v109, v183, &qword_100423F90, &qword_100383460);
  if (v134(v109 + v132, 1, v133) == 1)
  {
    sub_1000059A8(v191, &qword_100423F90, &qword_100383460);
    sub_100246490(v135, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_39:
    v85 = &qword_10042AA28;
    v86 = &qword_100390D40;
    goto LABEL_54;
  }

  v136 = v109 + v132;
  v137 = v178;
  sub_1002463C0(v136, v178, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v138 = sub_100255534(v135, v137, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_100246490(v137, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_1000059A8(v191, &qword_100423F90, &qword_100383460);
  sub_100246490(v135, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  sub_1000059A8(v109, &qword_100423F90, &qword_100383460);
  if ((v138 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_41:
  v139 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v140 = v184;
  sub_10000A0A4(a1 + v139, v184, &qword_100423FB8, &qword_100383488);
  v141 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v142 = *(v179 + 48);
  v143 = v182;
  sub_10000A0A4(v140, v182, &qword_100423FB8, &qword_100383488);
  v109 = v143;
  sub_10000A0A4(v79 + v141, v143 + v142, &qword_100423FB8, &qword_100383488);
  v144 = v181;
  v145 = *(v180 + 48);
  if (v145(v143, 1, v181) == 1)
  {
    sub_1000059A8(v140, &qword_100423FB8, &qword_100383488);
    if (v145(v143 + v142, 1, v144) == 1)
    {
      sub_1000059A8(v143, &qword_100423FB8, &qword_100383488);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v146 = v176;
  sub_10000A0A4(v143, v176, &qword_100423FB8, &qword_100383488);
  if (v145(v143 + v142, 1, v144) == 1)
  {
    sub_1000059A8(v184, &qword_100423FB8, &qword_100383488);
    sub_100246490(v146, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
LABEL_46:
    v85 = &qword_10042AA20;
    v86 = &qword_100390D38;
    goto LABEL_54;
  }

  v147 = v143 + v142;
  v148 = v171;
  sub_1002463C0(v147, v171, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  v149 = sub_100255634(v146, v148, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  sub_100246490(v148, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  sub_1000059A8(v184, &qword_100423FB8, &qword_100383488);
  sub_100246490(v146, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  sub_1000059A8(v143, &qword_100423FB8, &qword_100383488);
  if ((v149 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_48:
  v150 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v151 = v177;
  sub_10000A0A4(a1 + v150, v177, &qword_100423FC0, &qword_100383490);
  v152 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v153 = *(v172 + 48);
  v154 = v175;
  sub_10000A0A4(v151, v175, &qword_100423FC0, &qword_100383490);
  v109 = v154;
  sub_10000A0A4(v79 + v152, v154 + v153, &qword_100423FC0, &qword_100383490);
  v155 = v174;
  v156 = *(v173 + 48);
  if (v156(v154, 1, v174) == 1)
  {
    sub_1000059A8(v151, &qword_100423FC0, &qword_100383490);
    if (v156(v154 + v153, 1, v155) == 1)
    {
      sub_1000059A8(v154, &qword_100423FC0, &qword_100383490);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v157 = v170;
  sub_10000A0A4(v154, v170, &qword_100423FC0, &qword_100383490);
  if (v156(v154 + v153, 1, v155) == 1)
  {
    sub_1000059A8(v177, &qword_100423FC0, &qword_100383490);
    sub_100246490(v157, type metadata accessor for Proto_Gnss_Emergency_Polygon);
LABEL_53:
    v85 = &qword_10042AA18;
    v86 = &qword_100390D30;
    goto LABEL_54;
  }

  v158 = v154 + v153;
  v159 = v169;
  sub_1002463C0(v158, v169, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  v160 = sub_100255DEC(v157, v159);
  sub_100246490(v159, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  sub_1000059A8(v177, &qword_100423FC0, &qword_100383490);
  sub_100246490(v157, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  sub_1000059A8(v154, &qword_100423FC0, &qword_100383490);
  if ((v160 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_56:
  v161 = (a1 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation);
  swift_beginAccess();
  v162 = *v161;
  v163 = *(v161 + 4);

  v164 = (v79 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation);
  swift_beginAccess();
  v165 = *v164;
  v166 = *(v164 + 4);

  if (v163)
  {
    if (v166)
    {
      return 1;
    }
  }

  else
  {
    if (v162 == v165)
    {
      v167 = v166;
    }

    else
    {
      v167 = 1;
    }

    if ((v167 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10021B2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A660, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021B374(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E58, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021B3E0()
{
  sub_100256CB4(&qword_100424E58, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);

  return Message.hash(into:)();
}

uint64_t sub_10021B484()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434618);
  sub_100005DF0(v0, qword_100434618);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shape_type";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shape";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021B69C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 20);
        sub_100268738();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
        sub_100256CB4(&qword_100424E58, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021B7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  if (*(v5 + *(result + 20)) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = *(v5 + *(result + 20));
    sub_100268738();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_10021B894(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10021B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423FC8, &qword_100383498);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100423FC8, &qword_100383498);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FC8, &qword_100383498);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  sub_100256CB4(&qword_100424E58, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
}

uint64_t sub_10021BB48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A658, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021BBE8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E70, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021BC54()
{
  sub_100256CB4(&qword_100424E70, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);

  return Message.hash(into:)();
}

uint64_t sub_10021BCF8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434630);
  sub_100005DF0(v0, qword_100434630);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bearing";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_speed";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021C008(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A650, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021C0A8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424E88, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021C114()
{
  sub_100256CB4(&qword_100424E88, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);

  return Message.hash(into:)();
}

uint64_t sub_10021C1BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434648);
  sub_100005DF0(v0, qword_100434648);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bearing";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_speed";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "vertical_speed";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "vertical_speed_direction";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021C52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A648, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021C5CC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424EA0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021C638()
{
  sub_100256CB4(&qword_100424EA0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);

  return Message.hash(into:)();
}

uint64_t sub_10021C6DC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434660);
  sub_100005DF0(v0, qword_100434660);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bearing";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_speed";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uncertainty_speed";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021CA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A640, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021CAB4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424EB8, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021CB20()
{
  sub_100256CB4(&qword_100424EB8, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);

  return Message.hash(into:)();
}

uint64_t sub_10021CBC4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434678);
  sub_100005DF0(v0, qword_100434678);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bearing";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_speed";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "vertical_speed";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "vertical_speed_direction";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "horiz_uncertainty_speed";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "vert_uncertainty_speed";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021CEE4()
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
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 32);
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 36);
            break;
          case 6:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 40);
            break;
          default:
            goto LABEL_17;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 20);
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 24);
            break;
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 28);
            break;
          default:
            goto LABEL_17;
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_17:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021D008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
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

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10021D1D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_10021D284(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A638, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021D324(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424ED0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021D390()
{
  sub_100256CB4(&qword_100424ED0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);

  return Message.hash(into:)();
}

uint64_t sub_10021D434()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434690);
  sub_100005DF0(v0, qword_100434690);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "_horizontal";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "_horiz_with_vert";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "_horiz_with_uncertainty";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "_horiz_with_vert_uncertainty";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021D6C4()
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
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 28);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
          v5 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity;
          v6 = &qword_100424EB8;
          goto LABEL_5;
        }

        if (result == 4)
        {
          v3 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 32);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
          v5 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity;
          v6 = &qword_100424ED0;
LABEL_5:
          sub_100256CB4(v6, v5);
          v0 = v3;
LABEL_6:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 20);
          type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
          sub_100256CB4(&qword_100424E88, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 24);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
          v5 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity;
          v6 = &qword_100424EA0;
          goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021D8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021D97C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_10021DB98(v3, a1, a2, a3);
    sub_10021DDB4(v3, a1, a2, a3);
    sub_10021DFD0(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10021D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423FD0, &qword_1003834A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100423FD0, &qword_1003834A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FD0, &qword_1003834A0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  sub_100256CB4(&qword_100424E88, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
}

uint64_t sub_10021DB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423FD8, &qword_1003834A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100423FD8, &qword_1003834A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FD8, &qword_1003834A8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  sub_100256CB4(&qword_100424EA0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
}

uint64_t sub_10021DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423FE0, &qword_1003834B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(a1 + *(v14 + 28), v8, &qword_100423FE0, &qword_1003834B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FE0, &qword_1003834B0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  sub_100256CB4(&qword_100424EB8, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
}

uint64_t sub_10021DFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423FE8, &qword_1003834B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(a1 + *(v14 + 32), v8, &qword_100423FE8, &qword_1003834B8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FE8, &qword_1003834B8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  sub_100256CB4(&qword_100424ED0, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
}

uint64_t sub_10021E238@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[8];
  v11 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t sub_10021E3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A630, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021E454(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424EE8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021E4C0()
{
  sub_100256CB4(&qword_100424EE8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);

  return Message.hash(into:)();
}

uint64_t sub_10021E564()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004346A8);
  sub_100005DF0(v0, qword_1004346A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "velocity_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "velocity";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021E77C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 20);
        sub_1002686E4();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
        sub_100256CB4(&qword_100424EE8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021E910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100423FF0, &qword_1003834C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100423FF0, &qword_1003834C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FF0, &qword_1003834C0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  sub_100256CB4(&qword_100424EE8, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
}

uint64_t sub_10021EBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A628, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10021EC4C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F00, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10021ECB8()
{
  sub_100256CB4(&qword_100424F00, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);

  return Message.hash(into:)();
}

uint64_t sub_10021ED5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004346C0);
  sub_100005DF0(v0, qword_1004346C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "result";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "response_type";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "session_info";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "location_info";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ganss_location_info";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "loc_estimate";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "velocity_estimate";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "technology_source";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10021F0F4()
{
  v0 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 9;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v5 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  v7 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  v11 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  v13 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  result = (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  *v15 = 0;
  *(v15 + 4) = 1;
  qword_1004612E8 = v3;
  return result;
}

uint64_t sub_10021F2C8()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &qword_100423FF8, &qword_1003834C8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo, &qword_100424000, &qword_1003834D0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo, &qword_100424008, &qword_1003834D8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate, &qword_100424010, &qword_1003834E0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate, &qword_100424018, &qword_1003834E8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10021F3BC()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1002477BC(v6);

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

      if (result > 4)
      {
        if (result <= 6)
        {
          v13 = v1;
          if (result == 5)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo;
            v15 = &qword_100424DA0;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate;
            v15 = &qword_100424E70;
          }

          goto LABEL_23;
        }

        if (result == 7)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate;
          v15 = &qword_100424F00;
LABEL_23:
          sub_100256CB4(v15, v14);
          v1 = v13;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_24;
        }

        if (result != 8)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (result > 2)
        {
          v13 = v1;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
            v15 = &qword_100424C40;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo;
            v15 = &qword_100424D00;
          }

          goto LABEL_23;
        }

        if (result == 1)
        {
          swift_beginAccess();
          sub_100268B28();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_24;
        }

        if (result != 2)
        {
          goto LABEL_25;
        }
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
LABEL_24:
      swift_endAccess();
LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10021F7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *(v9 + 16);
    sub_100268B28();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 20);
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  sub_10021F964(v9, a1, a2, a3);
  sub_10021FB8C(v9, a1, a2, a3);
  sub_10021FDB4(v9, a1, a2, a3);
  sub_10021FFDC(v9, a1, a2, a3);
  sub_100220204(v9, a1, a2, a3);
  sub_100228210(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource, 8, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10021F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423FF8, &qword_1003834C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FF8, &qword_1003834C8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t sub_10021FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424000, &qword_1003834D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424000, &qword_1003834D0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  sub_100256CB4(&qword_100424D00, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
}

uint64_t sub_10021FDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424008, &qword_1003834D8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424008, &qword_1003834D8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  sub_100256CB4(&qword_100424DA0, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
}

uint64_t sub_10021FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424010, &qword_1003834E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424010, &qword_1003834E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424010, &qword_1003834E0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  sub_100256CB4(&qword_100424E70, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
}

uint64_t sub_100220204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424018, &qword_1003834E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424018, &qword_1003834E8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424018, &qword_1003834E8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  sub_100256CB4(&qword_100424F00, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
}

BOOL sub_100220470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v146 = *(v4 - 8);
  v147 = v4;
  v5 = *(v146 + 64);
  __chkstk_darwin(v4);
  v142 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_100024A2C(&qword_10042A9C8, &qword_100390CE0);
  v7 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v9 = &v139 - v8;
  v10 = sub_100024A2C(&qword_100424018, &qword_1003834E8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v143 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v154 = &v139 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v151 = *(v15 - 8);
  v152 = v15;
  v16 = *(v151 + 64);
  __chkstk_darwin(v15);
  v144 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100024A2C(&qword_10042A9D0, &qword_100390CE8);
  v18 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v153 = &v139 - v19;
  v20 = sub_100024A2C(&qword_100424010, &qword_1003834E0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v148 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v160 = &v139 - v24;
  v25 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v157 = *(v25 - 8);
  v158 = v25;
  v26 = *(v157 + 64);
  __chkstk_darwin(v25);
  v149 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_100024A2C(&qword_10042A9D8, &qword_100390CF0);
  v28 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v159 = &v139 - v29;
  v30 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v167 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v168 = &v139 - v34;
  v35 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v164 = *(v35 - 8);
  v165 = v35;
  v36 = *(v164 + 64);
  __chkstk_darwin(v35);
  v155 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_100024A2C(&qword_10042A9E0, &qword_100390CF8);
  v38 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v166 = &v139 - v39;
  v40 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v161 = &v139 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v169 = &v139 - v44;
  v45 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v170 = *(v45 - 8);
  v46 = *(v170 + 64);
  __chkstk_darwin(v45);
  v162 = &v139 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100024A2C(&qword_10042A908, &qword_100390C20);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v51 = &v139 - v50;
  v52 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v53 = *(*(v52 - 8) + 64);
  v54 = __chkstk_darwin(v52 - 8);
  v56 = &v139 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v58 = &v139 - v57;
  swift_beginAccess();
  v59 = *(a1 + 16);
  swift_beginAccess();
  v60 = *(a2 + 16);
  if (v59 == 9)
  {
    if (v60 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v62 = *(a1 + 20);
    v141 = a1;
    v63 = *(a1 + 24);
    swift_beginAccess();
    v64 = *(a2 + 24);
    if (v63)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v62 != *(a2 + 20))
      {
        v64 = 1;
      }

      if (v64)
      {
        return 0;
      }
    }

    v140 = v9;
    v171 = a2;
    v65 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v66 = v141;
    swift_beginAccess();
    sub_10000A0A4(v66 + v65, v58, &qword_100423FF8, &qword_1003834C8);
    v67 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v68 = *(v48 + 48);
    sub_10000A0A4(v58, v51, &qword_100423FF8, &qword_1003834C8);
    sub_10000A0A4(v171 + v67, &v51[v68], &qword_100423FF8, &qword_1003834C8);
    v69 = *(v170 + 48);
    if (v69(v51, 1, v45) == 1)
    {

      sub_1000059A8(v58, &qword_100423FF8, &qword_1003834C8);
      if (v69(&v51[v68], 1, v45) == 1)
      {
        sub_1000059A8(v51, &qword_100423FF8, &qword_1003834C8);
LABEL_19:
        v75 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
        swift_beginAccess();
        v76 = v169;
        sub_10000A0A4(v66 + v75, v169, &qword_100424000, &qword_1003834D0);
        v77 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
        swift_beginAccess();
        v78 = *(v163 + 48);
        v79 = v166;
        sub_10000A0A4(v76, v166, &qword_100424000, &qword_1003834D0);
        sub_10000A0A4(v171 + v77, v79 + v78, &qword_100424000, &qword_1003834D0);
        v80 = v165;
        v81 = *(v164 + 48);
        if (v81(v79, 1, v165) == 1)
        {
          sub_1000059A8(v76, &qword_100424000, &qword_1003834D0);
          v82 = v81(v79 + v78, 1, v80);
          v84 = v167;
          v83 = v168;
          if (v82 == 1)
          {
            sub_1000059A8(v79, &qword_100424000, &qword_1003834D0);
            goto LABEL_26;
          }
        }

        else
        {
          v85 = v161;
          sub_10000A0A4(v79, v161, &qword_100424000, &qword_1003834D0);
          v86 = v81(v79 + v78, 1, v80);
          v87 = v167;
          v83 = v168;
          if (v86 != 1)
          {
            v88 = v79 + v78;
            v89 = v155;
            sub_1002463C0(v88, v155, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            LODWORD(v170) = sub_100252BAC(v85, v89);
            sub_100246490(v89, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            sub_1000059A8(v169, &qword_100424000, &qword_1003834D0);
            sub_100246490(v85, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            sub_1000059A8(v79, &qword_100424000, &qword_1003834D0);
            v84 = v87;
            if ((v170 & 1) == 0)
            {
              goto LABEL_48;
            }

LABEL_26:
            v90 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
            swift_beginAccess();
            sub_10000A0A4(v66 + v90, v83, &qword_100424008, &qword_1003834D8);
            v91 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
            v92 = v171;
            swift_beginAccess();
            v93 = *(v156 + 48);
            v94 = v83;
            v95 = v83;
            v96 = v159;
            sub_10000A0A4(v94, v159, &qword_100424008, &qword_1003834D8);
            v97 = v96;
            sub_10000A0A4(v92 + v91, v96 + v93, &qword_100424008, &qword_1003834D8);
            v98 = v158;
            v99 = *(v157 + 48);
            if (v99(v96, 1, v158) == 1)
            {
              sub_1000059A8(v95, &qword_100424008, &qword_1003834D8);
              v100 = v99(v96 + v93, 1, v98);
              v101 = v160;
              if (v100 == 1)
              {
                sub_1000059A8(v96, &qword_100424008, &qword_1003834D8);
LABEL_33:
                v106 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
                swift_beginAccess();
                sub_10000A0A4(v66 + v106, v101, &qword_100424010, &qword_1003834E0);
                v107 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
                v108 = v101;
                v109 = v171;
                swift_beginAccess();
                v110 = *(v150 + 48);
                v111 = v153;
                sub_10000A0A4(v108, v153, &qword_100424010, &qword_1003834E0);
                v97 = v111;
                sub_10000A0A4(v109 + v107, v111 + v110, &qword_100424010, &qword_1003834E0);
                v112 = v152;
                v113 = *(v151 + 48);
                if (v113(v111, 1, v152) == 1)
                {
                  sub_1000059A8(v108, &qword_100424010, &qword_1003834E0);
                  v114 = v113(v111 + v110, 1, v112);
                  v115 = v154;
                  if (v114 == 1)
                  {
                    sub_1000059A8(v111, &qword_100424010, &qword_1003834E0);
LABEL_40:
                    v121 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
                    swift_beginAccess();
                    sub_10000A0A4(v66 + v121, v115, &qword_100424018, &qword_1003834E8);
                    v122 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
                    v123 = v171;
                    swift_beginAccess();
                    v124 = *(v145 + 48);
                    v125 = v140;
                    sub_10000A0A4(v115, v140, &qword_100424018, &qword_1003834E8);
                    v97 = v125;
                    sub_10000A0A4(v123 + v122, v125 + v124, &qword_100424018, &qword_1003834E8);
                    v126 = v147;
                    v127 = *(v146 + 48);
                    if (v127(v125, 1, v147) == 1)
                    {
                      sub_1000059A8(v115, &qword_100424018, &qword_1003834E8);
                      if (v127(v125 + v124, 1, v126) == 1)
                      {
                        sub_1000059A8(v125, &qword_100424018, &qword_1003834E8);
LABEL_52:
                        v132 = (v66 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource);
                        swift_beginAccess();
                        v133 = *v132;
                        v134 = *(v132 + 4);

                        v135 = (v171 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource);
                        swift_beginAccess();
                        v136 = *v135;
                        v137 = *(v135 + 4);

                        if ((v134 & 1) == 0)
                        {
                          if (v133 == v136)
                          {
                            v138 = v137;
                          }

                          else
                          {
                            v138 = 1;
                          }

                          return (v138 & 1) == 0;
                        }

                        return v137 != 0;
                      }

                      goto LABEL_45;
                    }

                    v128 = v143;
                    sub_10000A0A4(v125, v143, &qword_100424018, &qword_1003834E8);
                    if (v127(v125 + v124, 1, v126) == 1)
                    {
                      sub_1000059A8(v154, &qword_100424018, &qword_1003834E8);
                      sub_100246490(v128, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
LABEL_45:
                      v70 = &qword_10042A9C8;
                      v71 = &qword_100390CE0;
                      goto LABEL_46;
                    }

                    v129 = v125 + v124;
                    v130 = v142;
                    sub_1002463C0(v129, v142, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    v131 = sub_10024CF28(v128, v130);
                    sub_100246490(v130, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    sub_1000059A8(v154, &qword_100424018, &qword_1003834E8);
                    sub_100246490(v128, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    sub_1000059A8(v125, &qword_100424018, &qword_1003834E8);
                    if (v131)
                    {
                      goto LABEL_52;
                    }

LABEL_48:

                    return 0;
                  }
                }

                else
                {
                  v116 = v148;
                  sub_10000A0A4(v111, v148, &qword_100424010, &qword_1003834E0);
                  v117 = v113(v111 + v110, 1, v112);
                  v115 = v154;
                  if (v117 != 1)
                  {
                    v118 = v111 + v110;
                    v119 = v144;
                    sub_1002463C0(v118, v144, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    v120 = sub_1002541E4(v116, v119);
                    sub_100246490(v119, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    sub_1000059A8(v160, &qword_100424010, &qword_1003834E0);
                    sub_100246490(v116, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    sub_1000059A8(v111, &qword_100424010, &qword_1003834E0);
                    if ((v120 & 1) == 0)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_40;
                  }

                  sub_1000059A8(v160, &qword_100424010, &qword_1003834E0);
                  sub_100246490(v116, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                }

                v70 = &qword_10042A9D0;
                v71 = &qword_100390CE8;
LABEL_46:
                v72 = v97;
                goto LABEL_47;
              }
            }

            else
            {
              sub_10000A0A4(v96, v84, &qword_100424008, &qword_1003834D8);
              v102 = v99(v96 + v93, 1, v98);
              v101 = v160;
              if (v102 != 1)
              {
                v103 = v96 + v93;
                v104 = v149;
                sub_1002463C0(v103, v149, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                v105 = sub_1002507D4(v84, v104);
                sub_100246490(v104, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                sub_1000059A8(v168, &qword_100424008, &qword_1003834D8);
                sub_100246490(v84, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                sub_1000059A8(v96, &qword_100424008, &qword_1003834D8);
                if ((v105 & 1) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_33;
              }

              sub_1000059A8(v168, &qword_100424008, &qword_1003834D8);
              sub_100246490(v84, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
            }

            v70 = &qword_10042A9D8;
            v71 = &qword_100390CF0;
            goto LABEL_46;
          }

          sub_1000059A8(v169, &qword_100424000, &qword_1003834D0);
          sub_100246490(v85, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
        }

        v70 = &qword_10042A9E0;
        v71 = &qword_100390CF8;
        v72 = v79;
LABEL_47:
        sub_1000059A8(v72, v70, v71);
        goto LABEL_48;
      }
    }

    else
    {
      sub_10000A0A4(v51, v56, &qword_100423FF8, &qword_1003834C8);
      if (v69(&v51[v68], 1, v45) != 1)
      {
        v73 = v162;
        sub_1002463C0(&v51[v68], v162, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v66 = v141;

        v74 = sub_1002540CC(v56, v73);
        sub_100246490(v73, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v58, &qword_100423FF8, &qword_1003834C8);
        sub_100246490(v56, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v51, &qword_100423FF8, &qword_1003834C8);
        if ((v74 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_19;
      }

      sub_1000059A8(v58, &qword_100423FF8, &qword_1003834C8);
      sub_100246490(v56, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    v70 = &qword_10042A908;
    v71 = &qword_100390C20;
    v72 = v51;
    goto LABEL_47;
  }

  result = 0;
  if (v60 != 9 && v59 == v60)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100221874(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A620, type metadata accessor for Proto_Gnss_Emergency_PositionReport);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100221914(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F18, type metadata accessor for Proto_Gnss_Emergency_PositionReport);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100221980()
{
  sub_100256CB4(&qword_100424F18, type metadata accessor for Proto_Gnss_Emergency_PositionReport);

  return Message.hash(into:)();
}

uint64_t sub_100221A24()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004346D8);
  sub_100005DF0(v0, qword_1004346D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "doppler";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "satellite_id";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "cn_ratio";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "pseudo_range_rms_error";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "multi_path";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "code_phase";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "integer_code_phase";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "carrier_quality_ind";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "adr";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100221E04()
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
          v4 = v0;
          if (result == 3)
          {
            v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 28);
          }

          else
          {
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 32);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 20);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 2)
        {
          v4 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 24);
          goto LABEL_5;
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          v4 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 40);
          goto LABEL_5;
        }

        v11 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 36);
        sub_100268690();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 7:
            v4 = v0;
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 44);
            goto LABEL_5;
          case 8:
            v4 = v0;
            v12 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 48);
            goto LABEL_5;
          case 9:
            v4 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 52);
LABEL_5:
            v0 = v4;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100221FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
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
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
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

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1002221D0(v5);
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1002221D0(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  if (*(a1 + *(result + 36)) != 6)
  {
    v3 = *(a1 + *(result + 36));
    sub_100268690();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002222A8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v11 = a1[10];
  *(a2 + a1[9]) = 6;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + a1[13];
  *v16 = 0;
  *(v16 + 4) = 1;
  return result;
}

uint64_t sub_100222380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A618, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100222420(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_1004242A8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022248C()
{
  sub_100256CB4(&qword_1004242A8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);

  return Message.hash(into:)();
}

uint64_t sub_100222534()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004346F0);
  sub_100005DF0(v0, qword_1004346F0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "signal_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "code_phase_ambiguity";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "measurement_count";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "measurement";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002227CC()
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
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 32);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
          sub_100256CB4(&qword_1004242A8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 24);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 28);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10022291C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + v3[7]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v8 = (v0 + v3[8]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
    sub_100256CB4(&qword_1004242A8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v10 = v0 + v3[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100222AE0@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t sub_100222B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A610, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100222C1C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F40, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100222C88()
{
  sub_100256CB4(&qword_100424F40, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);

  return Message.hash(into:)();
}

uint64_t sub_100222D30()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434708);
  sub_100005DF0(v0, qword_100434708);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ganss_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "signal_measurement_info";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100222F40()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 20);
        sub_10026863C();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 24);
        type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
        sub_100256CB4(&qword_100424F40, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100223078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  if (*(v5 + *(result + 20)) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = *(v5 + *(result + 20));
    sub_10026863C();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_100223138(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100223138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100424020, &qword_1003834F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100424020, &qword_1003834F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424020, &qword_1003834F0);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  sub_100256CB4(&qword_100424F40, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
}

uint64_t sub_1002233EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A608, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022348C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F58, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002234F8()
{
  sub_100256CB4(&qword_100424F58, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);

  return Message.hash(into:)();
}

uint64_t sub_10022359C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434720);
  sub_100005DF0(v0, qword_100434720);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "time_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ganss_tod";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ganss_tod_frac";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tod_delta";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ganss_tod_uncertainity";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "measured_time_params";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "ganss_measurements_count";
  *(v19 + 1) = 24;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "ganss_measurement";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022392C()
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
            v13 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 36);
            goto LABEL_5;
          }

          v6 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 40);
          type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
          v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams;
          v9 = &qword_100424D88;
          goto LABEL_21;
        }

        if (result == 7)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 44);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 8)
        {
          v6 = v0;
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 48);
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
          v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss;
          v9 = &qword_100424F58;
LABEL_21:
          sub_100256CB4(v9, v8);
          v0 = v6;
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
            v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 28);
          }

          else
          {
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 32);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v12 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 20);
          sub_10026878C();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100223B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v17 = *(v5 + *(result + 20));
    sub_10026878C();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
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

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100223D44(v5, a1, a2, a3);
  sub_100210A4C(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  sub_100223F60(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100223D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100424028, &qword_1003834F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  sub_10000A0A4(a1 + *(v14 + 40), v8, &qword_100424028, &qword_1003834F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424028, &qword_1003834F8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  sub_100256CB4(&qword_100424D88, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
}

uint64_t sub_100223F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100424030, &qword_100383500);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  sub_10000A0A4(a1 + *(v14 + 48), v8, &qword_100424030, &qword_100383500);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424030, &qword_100383500);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  sub_100256CB4(&qword_100424F58, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
}

uint64_t sub_1002241C8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 6;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  (*(*(v11 - 8) + 56))(a2 + v9, 1, 1, v11);
  v12 = a1[11];
  v13 = a1[12];
  v14 = a2 + v12;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v16 = *(*(v15 - 8) + 56);

  return v16(a2 + v13, 1, 1, v15);
}

uint64_t sub_10022430C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A600, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002243AC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F70, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100224418()
{
  sub_100256CB4(&qword_100424F70, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);

  return Message.hash(into:)();
}

uint64_t sub_1002244BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434738);
  sub_100005DF0(v0, qword_100434738);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "doppler";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "whole_chips";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "frac_chips";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "satellite_id";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "cn_ratio";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "pseudo_range_rms_error";
  *(v17 + 1) = 22;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "multi_path";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "code_phase";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "integer_code_phase";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100224898()
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
          v4 = v0;
          if (result == 3)
          {
            v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 28);
          }

          else
          {
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 32);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 20);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 2)
        {
          v4 = v0;
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 24);
          goto LABEL_5;
        }
      }

      else
      {
        if (result <= 6)
        {
          v4 = v0;
          if (result == 5)
          {
            v11 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 36);
          }

          else
          {
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 40);
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 7:
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 44);
            sub_100268690();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 8:
            v4 = v0;
            v12 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 48);
            goto LABEL_5;
          case 9:
            v4 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 52);
LABEL_5:
            v0 = v4;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100224A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
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
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
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

  v17 = (v5 + v10[8]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FC468(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_1001FCE34(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);
  sub_100235660(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, sub_100268690);
  sub_1001FCF44(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);
  sub_100210AD0(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100224CF0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1[12];
  *(a2 + a1[11]) = 6;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + a1[13];
  *v16 = 0;
  *(v16 + 4) = 1;
  return result;
}

uint64_t sub_100224DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5F8, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100224E68(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424F88, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100224ED4()
{
  sub_100256CB4(&qword_100424F88, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);

  return Message.hash(into:)();
}

uint64_t sub_100224F7C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434750);
  sub_100005DF0(v0, qword_100434750);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "gps_tow";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v24 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "gps_week";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v24 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "gps_time_uncertainty";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v24 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "nr_of_sats";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v24 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "measurements";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v24 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "measured_time_params";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v24 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "code_phase_ambiguity";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v24 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "gps_todpresent";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v24 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "gps_tod";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100225350()
{
  v0 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 20) = 1;
  *(v3 + 24) = 0;
  *(v3 + 28) = 1;
  *(v3 + 32) = 0;
  *(v3 + 36) = 1;
  *(v3 + 40) = 0;
  *(v3 + 44) = 1;
  *(v3 + 48) = &_swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v5 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  qword_100461328 = v3;
  return result;
}

uint64_t sub_10022547C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35 = &v30 - v5;
  v6 = sub_100024A2C(&qword_100424038, &qword_100383508);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v31 = &v30 - v8;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 44) = 1;
  *(v1 + 48) = &_swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v30 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  v32 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  v33 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v34 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  swift_beginAccess();
  v15 = *(a1 + 16);
  LOBYTE(v13) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v15;
  *(v1 + 20) = v13;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 24);
  LOBYTE(v15) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v13;
  *(v1 + 28) = v15;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 32);
  v16 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v13;
  *(v1 + 36) = v16;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 40);
  v17 = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 40) = v13;
  *(v1 + 44) = v17;
  swift_beginAccess();
  v18 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v18;
  v19 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  v20 = v31;
  sub_10000A0A4(a1 + v19, v31, &qword_100424038, &qword_100383508);
  v21 = v30;
  swift_beginAccess();

  sub_10000AD64(v20, v1 + v21, &qword_100424038, &qword_100383508);
  swift_endAccess();
  v22 = a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  LODWORD(v19) = *v22;
  LOBYTE(v22) = *(v22 + 4);
  v23 = v32;
  swift_beginAccess();
  *v23 = v19;
  *(v23 + 4) = v22;
  v24 = a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  LODWORD(v22) = *v24;
  LOBYTE(v24) = *(v24 + 4);
  v25 = v33;
  swift_beginAccess();
  *v25 = v22;
  *(v25 + 4) = v24;
  v26 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  v27 = v35;
  sub_10000A0A4(a1 + v26, v35, &qword_100423F58, &qword_100383428);

  v28 = v34;
  swift_beginAccess();
  sub_10000AD64(v27, v1 + v28, &qword_100423F58, &qword_100383428);
  swift_endAccess();
  return v1;
}

uint64_t sub_100225918()
{
  v1 = v0[6];

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams, &qword_100424038, &qword_100383508);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod, &qword_100423F58, &qword_100383428);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_1002259B4()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10022547C(v6);
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

      if (result > 4)
      {
        break;
      }

      if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_23;
      }

LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 6)
    {
      if (result == 5)
      {
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
        sub_100256CB4(&qword_100424F88, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_24;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
      v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams;
      v15 = &qword_100424CD0;
    }

    else
    {
      if (result == 7 || result == 8)
      {
LABEL_23:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_24;
      }

      if (result != 9)
      {
        goto LABEL_25;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
      v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD;
      v15 = &qword_100424CE8;
    }

    sub_100256CB4(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_24:
    swift_endAccess();
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100225D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  result = swift_beginAccess();
  if ((*(v9 + 20) & 1) == 0)
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (!v4)
  {
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
    if (*(*(v9 + 48) + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
      sub_100256CB4(&qword_100424F88, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    sub_100225FF8(v9, a1, a2, a3);
    v15 = (v9 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity);
    swift_beginAccess();
    if ((v15[1] & 1) == 0)
    {
      v16 = *v15;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    sub_100228210(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent, 8, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
    sub_100226220(v9, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100225FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424038, &qword_100383508);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424038, &qword_100383508);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424038, &qword_100383508);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  sub_100256CB4(&qword_100424CD0, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
}

uint64_t sub_100226220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423F58, &qword_100383428);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423F58, &qword_100383428);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  sub_100256CB4(&qword_100424CE8, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
}

BOOL sub_10022648C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  __chkstk_darwin(v4);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100024A2C(&qword_10042A910, &qword_100390C28);
  v7 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v75 = &v69 - v8;
  v9 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v76 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v69 - v13;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v78 = *(v14 - 8);
  v15 = *(v78 + 64);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100024A2C(&qword_10042A918, &qword_100390C30);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v79 = &v69 - v20;
  v21 = sub_100024A2C(&qword_100424038, &qword_100383508);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v69 - v26;
  swift_beginAccess();
  v28 = *(a1 + 16);
  v29 = *(a1 + 20);
  swift_beginAccess();
  v30 = *(a2 + 20);
  if (v29)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 16))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 24);
  v32 = *(a1 + 28);
  swift_beginAccess();
  v33 = *(a2 + 28);
  if (v32)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 24))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 32);
  v35 = *(a1 + 36);
  swift_beginAccess();
  v36 = *(a2 + 36);
  if (v35)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 32))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 40);
  v38 = *(a1 + 44);
  swift_beginAccess();
  v39 = *(a2 + 44);
  if (v38)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 40))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 48);
  swift_beginAccess();
  v41 = *(a2 + 48);

  LODWORD(v70) = sub_100245798(v40, v41, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, sub_10025019C);

  if ((v70 & 1) == 0)
  {
    goto LABEL_32;
  }

  v42 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  sub_10000A0A4(a1 + v42, v27, &qword_100424038, &qword_100383508);
  v43 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  v44 = *(v18 + 48);
  v45 = v79;
  sub_10000A0A4(v27, v79, &qword_100424038, &qword_100383508);
  v70 = v44;
  sub_10000A0A4(a2 + v43, v45 + v44, &qword_100424038, &qword_100383508);
  v46 = *(v78 + 48);
  if (v46(v45, 1, v14) == 1)
  {
    sub_1000059A8(v27, &qword_100424038, &qword_100383508);
    if (v46(v45 + v70, 1, v14) == 1)
    {
      sub_1000059A8(v45, &qword_100424038, &qword_100383508);
      goto LABEL_35;
    }

LABEL_31:
    sub_1000059A8(v45, &qword_10042A918, &qword_100390C30);
    goto LABEL_32;
  }

  sub_10000A0A4(v45, v25, &qword_100424038, &qword_100383508);
  if (v46(v45 + v70, 1, v14) == 1)
  {
    sub_1000059A8(v27, &qword_100424038, &qword_100383508);
    sub_100246490(v25, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    goto LABEL_31;
  }

  sub_1002463C0(v45 + v70, v17, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  v48 = sub_10024AD88(v25, v17);
  sub_100246490(v17, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  sub_1000059A8(v27, &qword_100424038, &qword_100383508);
  sub_100246490(v25, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  sub_1000059A8(v45, &qword_100424038, &qword_100383508);
  if ((v48 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  v49 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity);
  swift_beginAccess();
  v50 = *v49;
  v51 = *(v49 + 4);
  v52 = a2 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  v53 = *(v52 + 4);
  if (v51)
  {
    v54 = v76;
    v55 = v77;
    if ((*(v52 + 4) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v54 = v76;
    v55 = v77;
    if ((*(v52 + 4) & 1) != 0 || v50 != *v52)
    {
      goto LABEL_32;
    }
  }

  v56 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent);
  swift_beginAccess();
  v57 = *v56;
  v58 = *(v56 + 4);
  v59 = a2 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  v60 = *(v59 + 4);
  if (v58)
  {
    if (*(v59 + 4))
    {
      goto LABEL_45;
    }

LABEL_32:

    return 0;
  }

  if ((*(v59 + 4) & 1) != 0 || v57 != *v59)
  {
    goto LABEL_32;
  }

LABEL_45:
  v61 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  sub_10000A0A4(a1 + v61, v55, &qword_100423F58, &qword_100383428);
  v62 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  v63 = *(v72 + 48);
  v64 = v75;
  sub_10000A0A4(v55, v75, &qword_100423F58, &qword_100383428);
  sub_10000A0A4(a2 + v62, v64 + v63, &qword_100423F58, &qword_100383428);
  v65 = v74;
  v66 = *(v73 + 48);
  if (v66(v64, 1, v74) != 1)
  {
    sub_10000A0A4(v64, v54, &qword_100423F58, &qword_100383428);
    if (v66(v64 + v63, 1, v65) == 1)
    {

      sub_1000059A8(v77, &qword_100423F58, &qword_100383428);
      sub_100246490(v54, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
      goto LABEL_50;
    }

    v67 = v71;
    sub_1002463C0(v64 + v63, v71, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    v68 = sub_100255EF8(v54, v67, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);

    sub_100246490(v67, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    sub_1000059A8(v77, &qword_100423F58, &qword_100383428);
    sub_100246490(v54, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    sub_1000059A8(v64, &qword_100423F58, &qword_100383428);
    return (v68 & 1) != 0;
  }

  sub_1000059A8(v55, &qword_100423F58, &qword_100383428);
  if (v66(v64 + v63, 1, v65) != 1)
  {
LABEL_50:
    sub_1000059A8(v64, &qword_10042A910, &qword_100390C28);
    return 0;
  }

  sub_1000059A8(v64, &qword_100423F58, &qword_100383428);
  return 1;
}

uint64_t sub_100226F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5F0, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100227024(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424FA0, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100227090()
{
  sub_100256CB4(&qword_100424FA0, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);

  return Message.hash(into:)();
}

uint64_t sub_100227134()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434768);
  sub_100005DF0(v0, qword_100434768);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "result";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_type";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "session_info";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "gps_measurements";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ganss_measurements";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "more_ganss_measurements";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "is_meas_in_cdma_time";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100227490()
{
  v0 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 9;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v5 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  *v11 = 0;
  *(v11 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  qword_100461340 = v3;
  return result;
}

uint64_t sub_1002275E4()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &qword_100423FF8, &qword_1003834C8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements, &qword_100424040, &qword_100383510);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements, &qword_100424048, &qword_100383518);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100227698()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100247F54(v6);

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
        if (result != 1)
        {
          if (result == 2)
          {
            goto LABEL_20;
          }

          if (result != 3)
          {
            goto LABEL_22;
          }

          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
          v15 = &qword_100424C40;
          goto LABEL_19;
        }

        swift_beginAccess();
        sub_100268B28();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        if (result <= 5)
        {
          v13 = v1;
          if (result == 4)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements;
            v15 = &qword_100424FA0;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements;
            v15 = &qword_100424F70;
          }

LABEL_19:
          sub_100256CB4(v15, v14);
          v1 = v13;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_21;
        }

        if (result == 6)
        {
LABEL_20:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_21;
        }

        if (result != 7)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_21:
      swift_endAccess();
LABEL_22:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1002279EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *(v9 + 16);
    sub_100268B28();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 20);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100227B98(v9, a1, a2, a3);
  sub_100227DC0(v9, a1, a2, a3);
  sub_100227FE8(v9, a1, a2, a3);
  sub_100228210(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements, 6, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_100243294(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100227B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100423FF8, &qword_1003834C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100423FF8, &qword_1003834C8);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  sub_100256CB4(&qword_100424C40, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t sub_100227DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424040, &qword_100383510);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424040, &qword_100383510);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424040, &qword_100383510);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  sub_100256CB4(&qword_100424FA0, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
}

uint64_t sub_100227FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424048, &qword_100383518);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424048, &qword_100383518);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424048, &qword_100383518);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  sub_100256CB4(&qword_100424F70, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
}

uint64_t sub_100228210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

BOOL sub_1002282F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  __chkstk_darwin(v4);
  v104 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100024A2C(&qword_10042A9A8, &qword_100390CC0);
  v7 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v9 = &v101 - v8;
  v10 = sub_100024A2C(&qword_100424048, &qword_100383518);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v105 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v116 = &v101 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v113 = *(v15 - 8);
  v114 = v15;
  v16 = *(v113 + 64);
  __chkstk_darwin(v15);
  v106 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100024A2C(&qword_10042A900, &qword_100390C18);
  v18 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v115 = &v101 - v19;
  v20 = sub_100024A2C(&qword_100424040, &qword_100383510);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v110 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v118 = &v101 - v24;
  v25 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v119 = *(v25 - 8);
  v26 = *(v119 + 64);
  __chkstk_darwin(v25);
  v111 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100024A2C(&qword_10042A908, &qword_100390C20);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v101 - v30;
  v32 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v101 - v37;
  swift_beginAccess();
  v39 = *(a1 + 16);
  swift_beginAccess();
  v40 = *(a2 + 16);
  if (v39 == 9)
  {
    if (v40 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v42 = *(a1 + 20);
    v103 = a1;
    v43 = *(a1 + 24);
    swift_beginAccess();
    v44 = *(a2 + 24);
    if (v43)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v42 != *(a2 + 20))
      {
        v44 = 1;
      }

      if (v44)
      {
        return 0;
      }
    }

    v102 = v9;
    v117 = a2;
    v45 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v46 = v103;
    swift_beginAccess();
    sub_10000A0A4(v46 + v45, v38, &qword_100423FF8, &qword_1003834C8);
    v47 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v48 = *(v28 + 48);
    sub_10000A0A4(v38, v31, &qword_100423FF8, &qword_1003834C8);
    v49 = v117 + v47;
    v50 = v117;
    sub_10000A0A4(v49, &v31[v48], &qword_100423FF8, &qword_1003834C8);
    v51 = *(v119 + 48);
    if (v51(v31, 1, v25) == 1)
    {

      sub_1000059A8(v38, &qword_100423FF8, &qword_1003834C8);
      if (v51(&v31[v48], 1, v25) == 1)
      {
        sub_1000059A8(v31, &qword_100423FF8, &qword_1003834C8);
        goto LABEL_20;
      }
    }

    else
    {
      sub_10000A0A4(v31, v36, &qword_100423FF8, &qword_1003834C8);
      if (v51(&v31[v48], 1, v25) != 1)
      {
        v52 = v111;
        sub_1002463C0(&v31[v48], v111, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v46 = v103;

        v53 = sub_1002540CC(v36, v52);
        sub_100246490(v52, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v38, &qword_100423FF8, &qword_1003834C8);
        sub_100246490(v36, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        sub_1000059A8(v31, &qword_100423FF8, &qword_1003834C8);
        if ((v53 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_20:
        v54 = v50;
        v55 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v56 = v118;
        sub_10000A0A4(v46 + v55, v118, &qword_100424040, &qword_100383510);
        v57 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v58 = *(v112 + 48);
        v59 = v115;
        sub_10000A0A4(v56, v115, &qword_100424040, &qword_100383510);
        sub_10000A0A4(v54 + v57, v59 + v58, &qword_100424040, &qword_100383510);
        v60 = v114;
        v61 = *(v113 + 48);
        if (v61(v59, 1, v114) == 1)
        {
          sub_1000059A8(v56, &qword_100424040, &qword_100383510);
          v62 = v61(v59 + v58, 1, v60);
          v63 = v116;
          if (v62 == 1)
          {
            sub_1000059A8(v59, &qword_100424040, &qword_100383510);
LABEL_29:
            v77 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
            swift_beginAccess();
            sub_10000A0A4(v46 + v77, v63, &qword_100424048, &qword_100383518);
            v78 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
            v79 = v117;
            swift_beginAccess();
            v80 = *(v107 + 48);
            v81 = v102;
            sub_10000A0A4(v63, v102, &qword_100424048, &qword_100383518);
            v82 = v79 + v78;
            v83 = v81;
            sub_10000A0A4(v82, v81 + v80, &qword_100424048, &qword_100383518);
            v84 = v109;
            v85 = *(v108 + 48);
            if (v85(v81, 1, v109) == 1)
            {
              sub_1000059A8(v63, &qword_100424048, &qword_100383518);
              if (v85(v81 + v80, 1, v84) == 1)
              {
                sub_1000059A8(v81, &qword_100424048, &qword_100383518);
LABEL_36:
                v91 = (v46 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements);
                swift_beginAccess();
                v92 = *v91;
                v93 = *(v91 + 4);
                v94 = v117;
                v95 = v117 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
                swift_beginAccess();
                v96 = *(v95 + 4);
                if (v93)
                {
                  if (*(v95 + 4))
                  {
LABEL_46:
                    v97 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v98 = *(v46 + v97);

                    v99 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v100 = *(v94 + v99);

                    if (v98 != 2)
                    {
                      return v100 != 2 && ((v98 ^ v100) & 1) == 0;
                    }

                    return v100 == 2;
                  }
                }

                else if ((*(v95 + 4) & 1) == 0 && v92 == *v95)
                {
                  goto LABEL_46;
                }

LABEL_41:

                return 0;
              }
            }

            else
            {
              v86 = v81;
              v87 = v105;
              sub_10000A0A4(v86, v105, &qword_100424048, &qword_100383518);
              if (v85(v83 + v80, 1, v84) != 1)
              {
                v88 = v83 + v80;
                v89 = v104;
                sub_1002463C0(v88, v104, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                v90 = sub_10024C7D8(v87, v89);
                sub_100246490(v89, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                sub_1000059A8(v63, &qword_100424048, &qword_100383518);
                sub_100246490(v87, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                sub_1000059A8(v83, &qword_100424048, &qword_100383518);
                if ((v90 & 1) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_36;
              }

              sub_1000059A8(v63, &qword_100424048, &qword_100383518);
              sub_100246490(v87, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
            }

            v66 = &qword_10042A9A8;
            v67 = &qword_100390CC0;
            v68 = v83;
LABEL_40:
            sub_1000059A8(v68, v66, v67);
            goto LABEL_41;
          }
        }

        else
        {
          v64 = v110;
          sub_10000A0A4(v59, v110, &qword_100424040, &qword_100383510);
          v65 = v61(v59 + v58, 1, v60);
          v63 = v116;
          if (v65 != 1)
          {
            v69 = v59 + v58;
            v70 = v106;
            sub_1002463C0(v69, v106, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            v71 = *(v60 + 20);
            v72 = *(v64 + v71);
            v73 = *(v70 + v71);
            if (v72 != v73)
            {
              v74 = *(v64 + v71);

              v75 = sub_10022648C(v72, v73);

              if (!v75)
              {
                sub_100246490(v70, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                sub_1000059A8(v118, &qword_100424040, &qword_100383510);
                sub_100246490(v64, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                v68 = v59;
                v66 = &qword_100424040;
                v67 = &qword_100383510;
                goto LABEL_40;
              }
            }

            type metadata accessor for UnknownStorage();
            sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage);
            v76 = dispatch thunk of static Equatable.== infix(_:_:)();
            sub_100246490(v70, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            sub_1000059A8(v118, &qword_100424040, &qword_100383510);
            sub_100246490(v64, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            sub_1000059A8(v59, &qword_100424040, &qword_100383510);
            if ((v76 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          sub_1000059A8(v118, &qword_100424040, &qword_100383510);
          sub_100246490(v64, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
        }

        v66 = &qword_10042A900;
        v67 = &qword_100390C18;
        v68 = v59;
        goto LABEL_40;
      }

      sub_1000059A8(v38, &qword_100423FF8, &qword_1003834C8);
      sub_100246490(v36, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    sub_1000059A8(v31, &qword_10042A908, &qword_100390C20);
    goto LABEL_41;
  }

  result = 0;
  if (v40 != 9 && v39 == v40)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100229124(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5E8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002291C4(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424FB8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100229230()
{
  sub_100256CB4(&qword_100424FB8, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);

  return Message.hash(into:)();
}

uint64_t sub_1002292D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434780);
  sub_100005DF0(v0, qword_100434780);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10036C820;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "aid_mask";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "g_week";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "g_toe";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "num_of_sats";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "sat_id";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "iode";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "toe_limit";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100229624()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 28);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 32);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 3:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 36);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        goto LABEL_18;
      }

      if (result == 7)
      {
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 44);
        goto LABEL_3;
      }
    }

    else
    {
      if (result == 4)
      {
        v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 40);
        goto LABEL_3;
      }

LABEL_18:
      dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
    }
  }
}

uint64_t sub_100229760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v9 = result;
  v10 = (v3 + *(result + 28));
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

  v12 = (v3 + v9[8]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v14 = (v3 + v9[9]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v16 = (v3 + v9[10]);
  if ((v16[1] & 1) == 0)
  {
    v17 = *v16;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  if (*(v3[1] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  sub_100210A4C(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  v18 = v3 + v9[6];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100229984(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5E0, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100229A24(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424FD0, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100229A90()
{
  sub_100256CB4(&qword_100424FD0, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);

  return Message.hash(into:)();
}

uint64_t sub_100229B34()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434798);
  sub_100005DF0(v0, qword_100434798);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ganss_to_ids";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "delta_t";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100229E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5D8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100229EDC(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424FE8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100229F48()
{
  sub_100256CB4(&qword_100424FE8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

  return Message.hash(into:)();
}

uint64_t sub_100229FEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004347B0);
  sub_100005DF0(v0, qword_1004347B0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "ganss_tod";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "ganss_tod_frac";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "ganss_signal_id";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ganss_data_bit_interval_k";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "ganss_data_bit_no_of_sats";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ganss_sat_id_info";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022A2F8()
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
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 36);
          goto LABEL_3;
        case 5:
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 40);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 6:
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 24);
          goto LABEL_3;
        case 2:
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 28);
          goto LABEL_3;
        case 3:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 32);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_10022A41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v9 = result;
  v10 = (v3 + *(result + 24));
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

  v12 = (v3 + v9[7]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v14 = (v3 + v9[8]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v16 = (v3 + v9[9]);
  if ((v16[1] & 1) == 0)
  {
    v17 = *v16;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_1001FCE34(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  v18 = v3 + v9[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022A5E8@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  v9 = a1[9];
  v10 = a2 + a1[8];
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[4] = 1;
  v12 = a2 + a1[10];
  *v12 = 0;
  v12[4] = 1;
  return result;
}

uint64_t sub_10022A6A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5D0, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022A740(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425000, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022A7AC()
{
  sub_100256CB4(&qword_100425000, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);

  return Message.hash(into:)();
}

uint64_t sub_10022A850()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004347C8);
  sub_100005DF0(v0, qword_1004347C8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ganss_sat_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_sat_iod";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022AB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5C8, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022ABF8(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424300, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022AC64()
{
  sub_100256CB4(&qword_100424300, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem);

  return Message.hash(into:)();
}

uint64_t sub_10022AD08()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004347E0);
  sub_100005DF0(v0, qword_1004347E0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ganss_week_day";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_toe";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ganss_ttoe_limit";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ganss_sat_related_data_info_array_count";
  *(v14 + 1) = 39;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ganss_sat_related_data_info_array";
  *(v15 + 8) = 33;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022AFE4()
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
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 24);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 28);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 32);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 4:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 36);
            goto LABEL_5;
          case 5:
            type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
            sub_100256CB4(&qword_100424300, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10022B150()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + v3[7]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v8 = (v0 + v3[8]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v10 = (v0 + v3[9]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
    sub_100256CB4(&qword_100424300, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v12 = v0 + v3[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022B340@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  v9 = a1[9];
  v10 = a2 + a1[8];
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[4] = 1;
  return result;
}

uint64_t sub_10022B3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5C0, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022B488(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425028, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022B4F4()
{
  sub_100256CB4(&qword_100425028, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);

  return Message.hash(into:)();
}

uint64_t sub_10022B598()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004347F8);
  sub_100005DF0(v0, qword_1004347F8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ganss_orbit_model_id";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_clock_model_id";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ganss_utc_model_id";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ganss_almanac_model_id";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022B854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10022B980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

  v10 = (v4 + v7[6]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v12 = (v4 + v7[7]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v14 = (v4 + v7[8]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022BB0C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  return result;
}

uint64_t sub_10022BB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5B8, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022BC10(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100425040, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022BC7C()
{
  sub_100256CB4(&qword_100425040, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

  return Message.hash(into:)();
}

uint64_t sub_10022BD20()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434810);
  sub_100005DF0(v0, qword_100434810);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ganss_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_generic_aid_mask";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ganss_time_model_info_array_count";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ganss_time_model_info_array";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ganss_data_bit_assist";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ganss_nav_model_add_data";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ganss_add_assist_data_choices";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022C070()
{
  v0 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 7;
  *(v3 + 20) = 0;
  *(v3 + 24) = 1;
  *(v3 + 28) = 0;
  *(v3 + 32) = 1;
  *(v3 + 40) = &_swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  v5 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  qword_100461388 = v3;
  return result;
}

uint64_t sub_10022C1AC(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100424060, &qword_100383530);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v33 = &v29 - v5;
  v6 = sub_100024A2C(&qword_100424058, &qword_100383528);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v32 = &v29 - v8;
  v9 = sub_100024A2C(&qword_100424050, &qword_100383520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v30 = &v29 - v11;
  *(v1 + 16) = 7;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = &_swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  v13 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v31 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v17 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v16;
  swift_beginAccess();
  LODWORD(v16) = *(a1 + 20);
  v18 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v16;
  *(v1 + 24) = v18;
  swift_beginAccess();
  v19 = *(a1 + 28);
  LOBYTE(v16) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v19;
  *(v1 + 32) = v16;
  swift_beginAccess();
  v20 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v20;
  v21 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  v22 = v30;
  sub_10000A0A4(a1 + v21, v30, &qword_100424050, &qword_100383520);
  swift_beginAccess();

  sub_10000AD64(v22, v1 + v12, &qword_100424050, &qword_100383520);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  v24 = v32;
  sub_10000A0A4(a1 + v23, v32, &qword_100424058, &qword_100383528);
  swift_beginAccess();
  sub_10000AD64(v24, v1 + v14, &qword_100424058, &qword_100383528);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  v26 = v33;
  sub_10000A0A4(a1 + v25, v33, &qword_100424060, &qword_100383530);

  v27 = v31;
  swift_beginAccess();
  sub_10000AD64(v26, v1 + v27, &qword_100424060, &qword_100383530);
  swift_endAccess();
  return v1;
}

uint64_t sub_10022C640()
{
  v1 = v0[5];

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist, &qword_100424050, &qword_100383520);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData, &qword_100424058, &qword_100383528);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices, &qword_100424060, &qword_100383530);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_10022C6FC()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10022C1AC(v6);
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

      if (result == 1)
      {
        swift_beginAccess();
        sub_100256CFC();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_22:
        swift_endAccess();
        goto LABEL_23;
      }

      if (result == 2 || result == 3)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_22;
      }

LABEL_23:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 5)
    {
      if (result == 6)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
        v14 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData;
        v15 = &qword_100425028;
      }

      else
      {
        if (result != 7)
        {
          goto LABEL_23;
        }

        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
        v14 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices;
        v15 = &qword_100425040;
      }
    }

    else
    {
      if (result == 4)
      {
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
        sub_100256CB4(&qword_100424FE8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_22;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
      v14 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist;
      v15 = &qword_100425000;
    }

    sub_100256CB4(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10022CA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = *(v9 + 16);
    sub_100256CFC();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 20);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 32) & 1) == 0)
  {
    v12 = *(v9 + 28);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(*(v9 + 40) + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
    sub_100256CB4(&qword_100424FE8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  sub_10022CCBC(v9, a1, a2, a3);
  sub_10022CEE4(v9, a1, a2, a3);
  sub_10022D10C(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10022CCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424050, &qword_100383520);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424050, &qword_100383520);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424050, &qword_100383520);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  sub_100256CB4(&qword_100425000, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
}

uint64_t sub_10022CEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424058, &qword_100383528);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424058, &qword_100383528);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424058, &qword_100383528);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  sub_100256CB4(&qword_100425028, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
}

uint64_t sub_10022D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100424060, &qword_100383530);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100424060, &qword_100383530);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100424060, &qword_100383530);
  }

  sub_1002463C0(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  sub_100256CB4(&qword_100425040, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100246490(v13, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
}

BOOL sub_10022D378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  __chkstk_darwin(v4);
  v92 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100024A2C(&qword_10042A990, &qword_100390CA8);
  v7 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v9 = &v88 - v8;
  v10 = sub_100024A2C(&qword_100424060, &qword_100383530);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v104 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = &v88 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v100 = *(v15 - 8);
  v101 = v15;
  v16 = *(v100 + 64);
  __chkstk_darwin(v15);
  v93 = (&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = sub_100024A2C(&qword_10042A998, &qword_100390CB0);
  v18 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = &v88 - v19;
  v20 = sub_100024A2C(&qword_100424058, &qword_100383528);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v97 = (&v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v105 = &v88 - v24;
  v25 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v106 = *(v25 - 8);
  v26 = *(v106 + 64);
  __chkstk_darwin(v25);
  v98 = (&v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_100024A2C(&qword_10042A9A0, &qword_100390CB8);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v88 - v30;
  v32 = sub_100024A2C(&qword_100424050, &qword_100383520);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = (&v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v38 = &v88 - v37;
  swift_beginAccess();
  v39 = *(a1 + 16);
  swift_beginAccess();
  v40 = *(a2 + 16);
  if (v39 == 7)
  {
    if (v40 != 7)
    {
      return 0;
    }

LABEL_6:
    v91 = v9;
    swift_beginAccess();
    v42 = *(a1 + 20);
    v43 = *(a1 + 24);
    swift_beginAccess();
    v44 = *(a2 + 24);
    if (v43)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v42 != *(a2 + 20))
      {
        v44 = 1;
      }

      if (v44)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v45 = *(a1 + 28);
    v46 = *(a1 + 32);
    swift_beginAccess();
    v47 = *(a2 + 32);
    if (v46)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v45 != *(a2 + 28))
      {
        v47 = 1;
      }

      if (v47)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v48 = a2;
    v49 = *(a1 + 40);
    swift_beginAccess();
    v50 = *(v48 + 40);

    v90 = v48;

    LOBYTE(v48) = sub_100245934(v49, v50, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

    if ((v48 & 1) == 0)
    {
      goto LABEL_34;
    }

    v51 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    swift_beginAccess();
    sub_10000A0A4(a1 + v51, v38, &qword_100424050, &qword_100383520);
    v52 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    v53 = v90;
    swift_beginAccess();
    v54 = *(v28 + 48);
    sub_10000A0A4(v38, v31, &qword_100424050, &qword_100383520);
    v89 = v54;
    sub_10000A0A4(v53 + v52, &v31[v54], &qword_100424050, &qword_100383520);
    v55 = *(v106 + 48);
    if (v55(v31, 1, v25) == 1)
    {
      sub_1000059A8(v38, &qword_100424050, &qword_100383520);
      v56 = v55(&v31[v89], 1, v25);
      v57 = v53;
      if (v56 == 1)
      {
        sub_1000059A8(v31, &qword_100424050, &qword_100383520);
LABEL_27:
        v64 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
        swift_beginAccess();
        v65 = v105;
        sub_10000A0A4(a1 + v64, v105, &qword_100424058, &qword_100383528);
        v66 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
        swift_beginAccess();
        v67 = *(v99 + 48);
        v68 = v102;
        sub_10000A0A4(v65, v102, &qword_100424058, &qword_100383528);
        sub_10000A0A4(v57 + v66, v68 + v67, &qword_100424058, &qword_100383528);
        v69 = v101;
        v70 = *(v100 + 48);
        if (v70(v68, 1, v101) == 1)
        {
          sub_1000059A8(v65, &qword_100424058, &qword_100383528);
          v71 = v70(v68 + v67, 1, v69);
          v73 = v103;
          v72 = v104;
          if (v71 == 1)
          {
            sub_1000059A8(v68, &qword_100424058, &qword_100383528);
LABEL_38:
            v80 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
            swift_beginAccess();
            sub_10000A0A4(a1 + v80, v73, &qword_100424060, &qword_100383530);
            v81 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
            swift_beginAccess();
            v82 = *(v94 + 48);
            v83 = v91;
            sub_10000A0A4(v73, v91, &qword_100424060, &qword_100383530);
            sub_10000A0A4(v57 + v81, v83 + v82, &qword_100424060, &qword_100383530);
            v84 = v96;
            v85 = *(v95 + 48);
            if (v85(v83, 1, v96) == 1)
            {

              sub_1000059A8(v73, &qword_100424060, &qword_100383530);
              if (v85(v83 + v82, 1, v84) == 1)
              {
                sub_1000059A8(v83, &qword_100424060, &qword_100383530);
                return 1;
              }

              goto LABEL_43;
            }

            sub_10000A0A4(v83, v72, &qword_100424060, &qword_100383530);
            if (v85(v83 + v82, 1, v84) == 1)
            {

              sub_1000059A8(v73, &qword_100424060, &qword_100383530);
              sub_100246490(v72, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
LABEL_43:
              sub_1000059A8(v83, &qword_10042A990, &qword_100390CA8);
              return 0;
            }

            v86 = v92;
            sub_1002463C0(v83 + v82, v92, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            v87 = sub_10024AC20(v72, v86, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

            sub_100246490(v86, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            sub_1000059A8(v73, &qword_100424060, &qword_100383530);
            sub_100246490(v72, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            sub_1000059A8(v83, &qword_100424060, &qword_100383530);
            return (v87 & 1) != 0;
          }

          goto LABEL_32;
        }

        v74 = v97;
        sub_10000A0A4(v68, v97, &qword_100424058, &qword_100383528);
        v75 = v70(v68 + v67, 1, v69);
        v76 = v103;
        v77 = v104;
        if (v75 == 1)
        {
          sub_1000059A8(v105, &qword_100424058, &qword_100383528);
          sub_100246490(v74, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
LABEL_32:
          v59 = &qword_10042A998;
          v60 = &qword_100390CB0;
          v61 = v68;
          goto LABEL_33;
        }

        v78 = v68 + v67;
        v79 = v93;
        sub_1002463C0(v78, v93, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        LODWORD(v106) = sub_10024B40C(v74, v79);
        sub_100246490(v79, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        sub_1000059A8(v105, &qword_100424058, &qword_100383528);
        sub_100246490(v74, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        sub_1000059A8(v68, &qword_100424058, &qword_100383528);
        v72 = v77;
        v73 = v76;
        if (v106)
        {
          goto LABEL_38;
        }

LABEL_34:

        return 0;
      }
    }

    else
    {
      sub_10000A0A4(v31, v36, &qword_100424050, &qword_100383520);
      v58 = v89;
      if (v55(&v31[v89], 1, v25) != 1)
      {
        v62 = &v31[v58];
        v63 = v98;
        sub_1002463C0(v62, v98, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        LODWORD(v106) = sub_10024BA80(v36, v63);
        sub_100246490(v63, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        sub_1000059A8(v38, &qword_100424050, &qword_100383520);
        sub_100246490(v36, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        v57 = v53;
        sub_1000059A8(v31, &qword_100424050, &qword_100383520);
        if ((v106 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      sub_1000059A8(v38, &qword_100424050, &qword_100383520);
      sub_100246490(v36, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    }

    v59 = &qword_10042A9A0;
    v60 = &qword_100390CB8;
    v61 = v31;
LABEL_33:
    sub_1000059A8(v61, v59, v60);
    goto LABEL_34;
  }

  result = 0;
  if (v40 != 7 && v39 == v40)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10022E0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100256CB4(&qword_10042A5B0, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10022E18C(uint64_t a1)
{
  v2 = sub_100256CB4(&qword_100424328, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10022E1F8()
{
  sub_100256CB4(&qword_100424328, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);

  return Message.hash(into:)();
}

uint64_t sub_10022E29C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434828);
  sub_100005DF0(v0, qword_100434828);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ganss_common_aid_mask";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ganss_time_req_pref_info_array_count";
  *(v10 + 8) = 36;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ganss_time_req_pref_info_array";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "glonass_not_of_leap_sec_requested";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ganss_add_ionos_model";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ganss_aid_data_req_array_count";
  *(v18 + 1) = 30;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ganss_aid_data_req_array";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10022E5EC()
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
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 32);
            goto LABEL_5;
          case 3:
            sub_100256CFC();
            dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
            break;
        }
      }

      else
      {
        if (result <= 5)
        {
          v3 = v0;
          if (result == 4)
          {
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 36);
          }

          else
          {
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 44);
          goto LABEL_5;
        }

        if (result == 7)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
          sub_100256CB4(&qword_100424328, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10022E7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v9 = result;
  v10 = (v3 + *(result + 28));
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

  v12 = (v3 + v9[8]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    sub_100256CFC();
    dispatch thunk of Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)();
  }

  v14 = (v3 + v9[9]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v16 = (v3 + v9[10]);
  if ((v16[1] & 1) == 0)
  {
    v17 = *v16;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_100210A4C(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  if (*(v3[1] + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
    sub_100256CB4(&qword_100424328, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v18 = v3 + v9[6];
  return UnknownStorage.traverse<A>(visitor:)();
}