uint64_t sub_10016CDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
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

  if (*(v5 + v10[7]) != 3)
  {
    v15 = *(v5 + v10[7]);
    sub_1001988B0();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 4)
  {
    v16 = *(v5 + v10[8]);
    sub_10019885C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_100143020(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  sub_10016CFAC(v5);
  sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  sub_10015AA60(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10016CFAC(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    v3 = *(a1 + *(result + 40));
    sub_10019885C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016D084@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + a1[7]) = 3;
  *(a2 + v8) = 4;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a2 + v9) = 4;
  v11 = a1[12];
  *(a2 + a1[11]) = 2;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t sub_10016D13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423830, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016D1DC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DFC0, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10016D248()
{
  sub_100015EDC(&qword_10041DFC0, type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate);

  return Message.hash(into:)();
}

uint64_t sub_10016D2EC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433DE0);
  sub_100005DF0(v0, qword_100433DE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100374410;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "cf_absolute_timestamp_sec";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mach_continuous_timestamp_sec";
  *(v9 + 8) = 29;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sample_interval_sec";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "d_pos_x_m";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "d_pos_Y_m";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "d_pos_z_m";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "d_vel_x_mps";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "d_vel_y_mps";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "d_vel_z_mps";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "q_x";
  *(v24 + 1) = 3;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "q_y";
  *(v26 + 1) = 3;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "q_z";
  *(v28 + 1) = 3;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "q_w";
  *(v30 + 1) = 3;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "reference_frame";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "is_delta_position_valid_DEPRECATED";
  *(v34 + 1) = 34;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "is_delta_velocity_valid_DEPRECATED";
  *(v36 + 1) = 34;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "is_attitude_valid_DEPRECATED";
  *(v37 + 8) = 28;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "static_indicator";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "rotation_to_true_north_from_magnetometer_rad";
  *(v41 + 1) = 44;
  v41[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

double sub_10016D928()
{
  type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 44) = 0;
  *(v0 + 48) = 1;
  *(v0 + 52) = 0;
  *(v0 + 56) = 1;
  *(v0 + 60) = 0;
  *(v0 + 64) = 1;
  *(v0 + 68) = 0;
  *(v0 + 72) = 1;
  *(v0 + 76) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 1;
  *(v0 + 92) = 0;
  *(v0 + 96) = 1;
  *(v0 + 100) = 0;
  *(v0 + 104) = 1;
  *(v0 + 108) = 0;
  *(v0 + 112) = 1;
  *(v0 + 116) = 0;
  *(v0 + 120) = 1;
  *(v0 + 124) = 0;
  *(v0 + 128) = 1;
  *&result = 33686019;
  *(v0 + 129) = 33686019;
  *(v0 + 133) = 4;
  *(v0 + 136) = 0;
  *(v0 + 140) = 1;
  qword_100444178 = v0;
  return result;
}

uint64_t sub_10016D9EC()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v7 = swift_allocObject();
    sub_100176B94(v6);

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
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_13;
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
        case 19:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_13;
        case 14:
          swift_beginAccess();
          sub_100197C38();
          goto LABEL_11;
        case 15:
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_13;
        case 18:
          swift_beginAccess();
          sub_100197BE4();
LABEL_11:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_13:
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

uint64_t sub_10016DD84()
{
  v2 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
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
  if ((*(v2 + 48) & 1) == 0)
  {
    v6 = *(v2 + 44);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 56) & 1) == 0)
  {
    v7 = *(v2 + 52);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 64) & 1) == 0)
  {
    v8 = *(v2 + 60);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 72) & 1) == 0)
  {
    v9 = *(v2 + 68);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_10016E0C4(v2);
  sub_10016E14C(v2);
  sub_10016E1D4(v2);
  sub_10016E26C(v2);
  sub_10016E304(v2);
  sub_10016E39C(v2);
  sub_10016E424(v2);
  sub_10016E4AC(v2);
  sub_10016E548(v2);
  sub_10016E5D0(v2);
  sub_10016E658(v2);
  sub_10016E6E0(v2);
  sub_10016E77C(v2);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10016E0C4(uint64_t a1)
{
  v2 = (a1 + 76);
  result = swift_beginAccess();
  if ((*(a1 + 80) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E14C(uint64_t a1)
{
  v2 = (a1 + 84);
  result = swift_beginAccess();
  if ((*(a1 + 88) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E1D4(uint64_t a1)
{
  v2 = (a1 + 92);
  result = swift_beginAccess();
  if ((*(a1 + 96) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E26C(uint64_t a1)
{
  v2 = (a1 + 100);
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E304(uint64_t a1)
{
  v2 = (a1 + 108);
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E39C(uint64_t a1)
{
  v2 = (a1 + 116);
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E424(uint64_t a1)
{
  v2 = (a1 + 124);
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E4AC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 129) != 3)
  {
    sub_100197C38();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E548(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 130) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E5D0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 131) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E658(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 132) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E6E0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 133) != 4)
  {
    sub_100197BE4();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E77C(uint64_t a1)
{
  v2 = (a1 + 136);
  result = swift_beginAccess();
  if ((*(a1 + 140) & 1) == 0)
  {
    v4 = *v2;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10016E804(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (sub_10016E8B8(v5, v6) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10016E8B8(uint64_t a1, uint64_t a2)
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
  v10 = *(a1 + 44);
  v11 = *(a1 + 48);
  swift_beginAccess();
  v12 = *(a2 + 48);
  if (v11)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 44))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 52);
  v14 = *(a1 + 56);
  swift_beginAccess();
  v15 = *(a2 + 56);
  if (v14)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 52))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 60);
  v17 = *(a1 + 64);
  swift_beginAccess();
  v18 = *(a2 + 64);
  if (v17)
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 60))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 68);
  v20 = *(a1 + 72);
  swift_beginAccess();
  v21 = *(a2 + 72);
  if (v20)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 68))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 76);
  v23 = *(a1 + 80);
  swift_beginAccess();
  v24 = *(a2 + 80);
  if (v23)
  {
    if (!*(a2 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 76))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 84);
  v26 = *(a1 + 88);
  swift_beginAccess();
  v27 = *(a2 + 88);
  if (v26)
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 84))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 92);
  v29 = *(a1 + 96);
  swift_beginAccess();
  v30 = *(a2 + 96);
  if (v29)
  {
    if (!*(a2 + 96))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 92))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 100);
  v32 = *(a1 + 104);
  swift_beginAccess();
  v33 = *(a2 + 104);
  if (v32)
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 100))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 108);
  v35 = *(a1 + 112);
  swift_beginAccess();
  v36 = *(a2 + 112);
  if (v35)
  {
    if (!*(a2 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 108))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 116);
  v38 = *(a1 + 120);
  swift_beginAccess();
  v39 = *(a2 + 120);
  if (v38)
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 116))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 124);
  v41 = *(a1 + 128);
  swift_beginAccess();
  v42 = *(a2 + 128);
  if (v41)
  {
    if (!*(a2 + 128))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 124))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 129);
  swift_beginAccess();
  v44 = *(a2 + 129);
  if (v43 == 3)
  {
    if (v44 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v44 == 3 || v43 != v44)
    {
      return result;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 130);
  swift_beginAccess();
  v47 = *(a2 + 130);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }
  }

  else if (v47 == 2 || ((v46 ^ v47) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 131);
  swift_beginAccess();
  v49 = *(a2 + 131);
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      return 0;
    }
  }

  else if (v49 == 2 || ((v48 ^ v49) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 132);
  swift_beginAccess();
  v51 = *(a2 + 132);
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }
  }

  else if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 133);
  swift_beginAccess();
  v53 = *(a2 + 133);
  if (v52 == 4)
  {
    if (v53 == 4)
    {
      goto LABEL_104;
    }

    return 0;
  }

  result = 0;
  if (v53 != 4 && v52 == v53)
  {
LABEL_104:
    swift_beginAccess();
    v54 = *(a1 + 136);
    v55 = *(a1 + 140);
    swift_beginAccess();
    v56 = *(a2 + 140);
    if (v55)
    {
      if (!*(a2 + 140))
      {
        return 0;
      }
    }

    else
    {
      if (v54 != *(a2 + 136))
      {
        v56 = 1;
      }

      if (v56)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

Swift::Int sub_10016EF88(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100015EDC(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10016F064(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423828, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10016F104(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DFD8, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10016F170()
{
  sub_100015EDC(&qword_10041DFD8, type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample);

  return Message.hash(into:)();
}

uint64_t sub_10016F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 != v5 && (sub_10016E8B8(v4, v5) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10016F298()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433DF8);
  sub_100005DF0(v0, qword_100433DF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_X_ARBITRARY_Z_VERTICAL";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "RF_X_TRUE_NORTH_Z_VERTICAL";
  *(v11 + 8) = 26;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016F514()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433E10);
  sub_100005DF0(v0, qword_100433E10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SI_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SI_NON_STATIC";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SI_STATIC_PERIOD_START";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SI_STATIC_PERIOD_STOP";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10016F7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v29 - v10;
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
        sub_100172B7C(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        sub_100172B7C(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        v17 = *(v4 + 20);
        v18 = &v11[v17];
        v19 = v11[v17 + 8];
        v20 = &v8[v17];
        v21 = v8[v17 + 8];
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v18 != *v20)
          {
            LOBYTE(v21) = 1;
          }

          if (v21)
          {
LABEL_21:
            sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            goto LABEL_22;
          }
        }

        v22 = *(v4 + 24);
        v23 = &v11[v22];
        v24 = v11[v22 + 8];
        v25 = &v8[v22];
        v26 = v8[v22 + 8];
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_21;
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
            goto LABEL_21;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if (v27)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v27 & 1;
      }
    }

    v27 = 1;
  }

  else
  {
LABEL_22:
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_10016FA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v63 - v9;
  v71 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v11 = *(*(v71 - 1) + 64);
  v12 = __chkstk_darwin(v71);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v63 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_54:
    v62 = 0;
    return v62 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v62 = 1;
    return v62 & 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = 0;
  v65 = v18;
  v66 = a2 + v19;
  v22 = *(v15 + 72);
  v70 = v4;
  v63 = v22;
  v64 = v20;
  while (1)
  {
    v23 = v22 * v21;
    result = sub_100172B7C(v20 + v22 * v21, v17, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    if (v21 == v18)
    {
      break;
    }

    v67 = v21;
    result = sub_100172B7C(v66 + v23, v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    v25 = *v17;
    v26 = *v14;
    v27 = *(*v17 + 16);
    if (v27 != *(*v14 + 16))
    {
      goto LABEL_53;
    }

    if (v27 && v25 != v26)
    {
      v28 = 0;
      v29 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v68 = v26 + v29;
      v69 = v25 + v29;
      while (1)
      {
        v30 = v70;
        if (v28 >= *(v25 + 16))
        {
          break;
        }

        v31 = *(v72 + 72) * v28;
        result = sub_100172B7C(v69 + v31, v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_57;
        }

        sub_100172B7C(v68 + v31, v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        v32 = *(v30 + 20);
        v33 = &v10[v32];
        v34 = v10[v32 + 8];
        v35 = &v8[v32];
        v36 = v8[v32 + 8];
        if (v34)
        {
          if (!v36)
          {
            goto LABEL_52;
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
LABEL_52:
            sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
            goto LABEL_53;
          }
        }

        v37 = *(v30 + 24);
        v38 = &v10[v37];
        v39 = v10[v37 + 8];
        v40 = &v8[v37];
        v41 = v8[v37 + 8];
        if (v39)
        {
          if (!v41)
          {
            goto LABEL_52;
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
            goto LABEL_52;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        result = sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
        if ((v42 & 1) == 0)
        {
          goto LABEL_53;
        }

        if (v27 == ++v28)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      break;
    }

LABEL_26:
    v43 = v71[6];
    v44 = v17[v43];
    v45 = v14[v43];
    if (v44 == 4)
    {
      if (v45 != 4)
      {
        goto LABEL_53;
      }
    }

    else if (v44 != v45)
    {
      goto LABEL_53;
    }

    v46 = v71[7];
    v47 = &v17[v46];
    v48 = v17[v46 + 4];
    v49 = &v14[v46];
    v50 = v14[v46 + 4];
    if (v48)
    {
      if (!v50)
      {
        goto LABEL_53;
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
LABEL_53:
        sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        sub_100015F24(v17, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
        goto LABEL_54;
      }
    }

    v51 = v71[8];
    v52 = &v17[v51];
    v53 = v17[v51 + 4];
    v54 = &v14[v51];
    v55 = v14[v51 + 4];
    if (v53)
    {
      if (!v55)
      {
        goto LABEL_53;
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
        goto LABEL_53;
      }
    }

    v56 = v71[9];
    v57 = &v17[v56];
    v58 = v17[v56 + 4];
    v59 = &v14[v56];
    v60 = v14[v56 + 4];
    if (v58)
    {
      if (!v60)
      {
        goto LABEL_53;
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
        goto LABEL_53;
      }
    }

    v61 = v71[5];
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v62 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    sub_100015F24(v17, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch);
    if (v62)
    {
      v21 = v67 + 1;
      v20 = v64;
      v18 = v65;
      v22 = v63;
      if (v67 + 1 != v65)
      {
        continue;
      }
    }

    return v62 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100170024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v44 - v10;
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
        sub_100172B7C(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        sub_100172B7C(v15, v8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        v17 = v4[5];
        v18 = &v11[v17];
        v19 = v11[v17 + 8];
        v20 = &v8[v17];
        v21 = v8[v17 + 8];
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v18 != *v20)
          {
            LOBYTE(v21) = 1;
          }

          if (v21)
          {
LABEL_39:
            sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
            sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
            goto LABEL_40;
          }
        }

        v22 = v4[6];
        v23 = &v11[v22];
        v24 = v11[v22 + 8];
        v25 = &v8[v22];
        v26 = v8[v22 + 8];
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_39;
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
            goto LABEL_39;
          }
        }

        v27 = v4[7];
        v28 = &v11[v27];
        v29 = v11[v27 + 8];
        v30 = &v8[v27];
        v31 = v8[v27 + 8];
        if (v29)
        {
          if (!v31)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v28 != *v30)
          {
            LOBYTE(v31) = 1;
          }

          if (v31)
          {
            goto LABEL_39;
          }
        }

        v32 = v4[8];
        v33 = &v11[v32];
        v34 = v11[v32 + 8];
        v35 = &v8[v32];
        v36 = v8[v32 + 8];
        if (v34)
        {
          if (!v36)
          {
            goto LABEL_39;
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
            goto LABEL_39;
          }
        }

        v37 = v4[9];
        v38 = &v11[v37];
        v39 = v11[v37 + 8];
        v40 = &v8[v37];
        v41 = v8[v37 + 8];
        if (v39)
        {
          if (!v41)
          {
            goto LABEL_39;
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
            goto LABEL_39;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData);
        if (v42)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v42 & 1;
      }
    }

    v42 = 1;
  }

  else
  {
LABEL_40:
    v42 = 0;
  }

  return v42 & 1;
}

uint64_t sub_100170368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v26 = a5;
  v27 = a3(0);
  v8 = *(*(v27 - 8) + 64);
  v9 = __chkstk_darwin(v27);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v14 = &v26 - v13;
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (!v15 || a1 == a2)
    {
      return 1;
    }

    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = *(v12 + 72);
    while (1)
    {
      sub_100172B7C(v17, v14, a4);
      sub_100172B7C(v18, v11, a4);
      v20 = *(v27 + 20);
      v21 = *&v14[v20];
      v22 = *&v11[v20];
      if (v21 != v22)
      {
        v23 = *&v14[v20];

        v24 = v26(v21, v22);

        if ((v24 & 1) == 0)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      sub_100015F24(v11, a4);
      sub_100015F24(v14, a4);
      v18 += v19;
      v17 += v19;
      if (!--v15)
      {
        return 1;
      }
    }

    sub_100015F24(v11, a4);
    sub_100015F24(v14, a4);
  }

  return 0;
}

uint64_t sub_1001705AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v83 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v84 = &v76 - v14;
  v15 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v76 - v17;
  v19 = a3(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v87 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v26 = &v76 - v25;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
    goto LABEL_54;
  }

  if (!v27 || a1 == a2)
  {
    v74 = 1;
    return v74 & 1;
  }

  v86 = v23;
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v81 = (v9 + 48);
  v82 = a4;
  v79 = *(v24 + 72);
  v80 = v15;
  v77 = &v76 - v25;
  while (1)
  {
    v85 = v29;
    sub_100172B7C(v29, v26, a4);
    v31 = v87;
    sub_100172B7C(v30, v87, a4);
    v32 = v86[5];
    v33 = *(v15 + 48);
    sub_10000A0A4(&v26[v32], v18, &qword_10041CA30, &qword_100374460);
    sub_10000A0A4(v31 + v32, &v18[v33], &qword_10041CA30, &qword_100374460);
    v34 = *v81;
    if ((*v81)(v18, 1, v8) == 1)
    {
      v35 = v34(&v18[v33], 1, v8);
      a4 = v82;
      if (v35 != 1)
      {
        goto LABEL_52;
      }

      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      v15 = v80;
      v36 = v86;
      goto LABEL_28;
    }

    v78 = v27;
    v37 = v84;
    sub_10000A0A4(v18, v84, &qword_10041CA30, &qword_100374460);
    if (v34(&v18[v33], 1, v8) == 1)
    {
      break;
    }

    v38 = v83;
    sub_1000112AC(&v18[v33], v83, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v39 = v8[5];
    v40 = (v37 + v39);
    v41 = *(v37 + v39 + 8);
    v42 = (v38 + v39);
    v43 = *(v38 + v39 + 8);
    if (v41)
    {
      v26 = v77;
      v27 = v78;
      if (!v43)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*v40 != *v42)
      {
        LOBYTE(v43) = 1;
      }

      v26 = v77;
      v27 = v78;
      if (v43)
      {
LABEL_50:
        sub_100015F24(v38, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        sub_100015F24(v37, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
        a4 = v82;
        goto LABEL_53;
      }
    }

    v44 = v8[6];
    v45 = (v37 + v44);
    v46 = *(v37 + v44 + 8);
    v47 = (v38 + v44);
    v48 = *(v38 + v44 + 8);
    if (v46)
    {
      if (!v48)
      {
        goto LABEL_50;
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
        goto LABEL_50;
      }
    }

    v49 = v8[7];
    v50 = (v37 + v49);
    v51 = *(v37 + v49 + 8);
    v52 = (v38 + v49);
    v53 = *(v38 + v49 + 8);
    if (v51)
    {
      if (!v53)
      {
        goto LABEL_50;
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
        goto LABEL_50;
      }
    }

    type metadata accessor for UnknownStorage();
    v54 = v8;
    v55 = v37;
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v38, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v57 = v55;
    v8 = v54;
    sub_100015F24(v57, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
    a4 = v82;
    v15 = v80;
    v36 = v86;
    if ((v56 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_28:
    v58 = v36[6];
    v59 = &v26[v58];
    v60 = v26[v58 + 4];
    v61 = (v87 + v58);
    v62 = *(v87 + v58 + 4);
    if (v60)
    {
      if (!v62)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v59 != *v61)
      {
        LOBYTE(v62) = 1;
      }

      if (v62)
      {
        goto LABEL_53;
      }
    }

    v63 = v36[7];
    v64 = &v26[v63];
    v65 = v26[v63 + 4];
    v66 = (v87 + v63);
    v67 = *(v87 + v63 + 4);
    if (v65)
    {
      if (!v67)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v64 != *v66)
      {
        LOBYTE(v67) = 1;
      }

      if (v67)
      {
        goto LABEL_53;
      }
    }

    v68 = v36[8];
    v69 = &v26[v68];
    v70 = v26[v68 + 4];
    v71 = (v87 + v68);
    v72 = *(v87 + v68 + 4);
    if (v70)
    {
      if (!v72)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v69 != *v71)
      {
        LOBYTE(v72) = 1;
      }

      if (v72)
      {
        goto LABEL_53;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v73 = v87;
    v74 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v73, a4);
    sub_100015F24(v26, a4);
    if (v74)
    {
      v30 += v79;
      v29 = v85 + v79;
      if (--v27)
      {
        continue;
      }
    }

    return v74 & 1;
  }

  sub_100015F24(v37, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  a4 = v82;
  v26 = v77;
LABEL_52:
  sub_1000059A8(v18, &qword_100423CE0, &qword_100393E90);
LABEL_53:
  sub_100015F24(v87, a4);
  sub_100015F24(v26, a4);
LABEL_54:
  v74 = 0;
  return v74 & 1;
}

uint64_t sub_100170CC8(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = *(v70 - 1);
  v5 = *(v4 + 64);
  __chkstk_darwin(v70);
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v69 = &v63 - v9;
  v67 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v10 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v12 = &v63 - v11;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v20 = &v63 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
LABEL_50:
    v61 = 0;
    return v61 & 1;
  }

  if (!v21 || a1 == a2)
  {
    v61 = 1;
    return v61 & 1;
  }

  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v64 = v17;
  v65 = (v4 + 48);
  v63 = *(v18 + 72);
  v68 = v13;
  while (1)
  {
    result = sub_100172B7C(v23, v20, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    if (!v21)
    {
      break;
    }

    sub_100172B7C(v24, v17, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    v26 = *(v13 + 20);
    v27 = *(v67 + 48);
    sub_10000A0A4(&v20[v26], v12, &qword_10041CA30, &qword_100374460);
    sub_10000A0A4(&v17[v26], &v12[v27], &qword_10041CA30, &qword_100374460);
    v28 = *v65;
    if ((*v65)(v12, 1, v70) == 1)
    {
      v29 = v28(&v12[v27], 1, v70);
      v17 = v64;
      if (v29 != 1)
      {
        goto LABEL_48;
      }

      sub_1000059A8(v12, &qword_10041CA30, &qword_100374460);
      v30 = v68;
    }

    else
    {
      sub_10000A0A4(v12, v69, &qword_10041CA30, &qword_100374460);
      if (v28(&v12[v27], 1, v70) == 1)
      {
        sub_100015F24(v69, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        v17 = v64;
LABEL_48:
        sub_1000059A8(v12, &qword_100423CE0, &qword_100393E90);
LABEL_49:
        sub_100015F24(v17, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
        sub_100015F24(v20, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
        goto LABEL_50;
      }

      v31 = &v12[v27];
      v32 = v66;
      sub_1000112AC(v31, v66, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v33 = v70[5];
      v34 = (v69 + v33);
      v35 = *(v69 + v33 + 8);
      v36 = (v32 + v33);
      v37 = *(v32 + v33 + 8);
      if (v35)
      {
        if (!v37)
        {
          goto LABEL_46;
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
LABEL_46:
          sub_100015F24(v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          sub_100015F24(v69, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
          sub_1000059A8(v12, &qword_10041CA30, &qword_100374460);
          v17 = v64;
          goto LABEL_49;
        }
      }

      v38 = v70[6];
      v39 = (v69 + v38);
      v40 = *(v69 + v38 + 8);
      v41 = (v32 + v38);
      v42 = *(v32 + v38 + 8);
      if (v40)
      {
        if (!v42)
        {
          goto LABEL_46;
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
          goto LABEL_46;
        }
      }

      v43 = v70[7];
      v44 = (v69 + v43);
      v45 = *(v69 + v43 + 8);
      v46 = (v32 + v43);
      v47 = *(v32 + v43 + 8);
      if (v45)
      {
        if (!v47)
        {
          goto LABEL_46;
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
          goto LABEL_46;
        }
      }

      type metadata accessor for UnknownStorage();
      v48 = v69;
      v49 = v32;
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v48, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v12, &qword_10041CA30, &qword_100374460);
      v30 = v68;
      v17 = v64;
      if ((v50 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v51 = *(v30 + 24);
    v52 = &v20[v51];
    v53 = v20[v51 + 4];
    v54 = &v17[v51];
    v55 = v17[v51 + 4];
    if (v53)
    {
      if (!v55)
      {
        goto LABEL_49;
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
        goto LABEL_49;
      }
    }

    v56 = *(v30 + 28);
    v57 = &v20[v56];
    v58 = v20[v56 + 4];
    v59 = &v17[v56];
    v60 = v17[v56 + 4];
    if (v58)
    {
      if (!v60)
      {
        goto LABEL_49;
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
        goto LABEL_49;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v61 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v17, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    sub_100015F24(v20, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
    if (v61)
    {
      v24 += v63;
      v23 += v63;
      v62 = v21-- == 1;
      v13 = v68;
      if (!v62)
      {
        continue;
      }
    }

    return v61 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017139C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        sub_100172B7C(v19, v16, a4);
        sub_100172B7C(v20, v13, a4);
        v22 = a5(v16, v13);
        sub_100015F24(v13, a4);
        sub_100015F24(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_100171538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v46 - v9);
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
  v11 = *(*(v53 - 1) + 64);
  v12 = __chkstk_darwin(v53);
  v54 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_31:
    v45 = 0;
    return v45 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v45 = 1;
    return v45 & 1;
  }

  v18 = 0;
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v47 = *(a1 + 16);
  v48 = a2 + v19;
  v49 = *(v14 + 72);
  v50 = a1 + v19;
  v52 = &v46 - v15;
  while (1)
  {
    v20 = v49 * v18;
    result = sub_100172B7C(v50 + v49 * v18, v16, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    if (v18 == v17)
    {
      break;
    }

    v51 = v18;
    v22 = v48 + v20;
    v23 = v54;
    result = sub_100172B7C(v22, v54, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    v24 = *v16;
    v25 = *v23;
    v26 = *(*v16 + 16);
    if (v26 != *(v25 + 16))
    {
      goto LABEL_30;
    }

    if (v26 && v24 != v25)
    {
      v27 = 0;
      v28 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v29 = v24 + v28;
      v30 = v25 + v28;
      while (v27 < *(v24 + 16))
      {
        v31 = *(v55 + 72) * v27;
        result = sub_100172B7C(v29 + v31, v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        if (v27 >= *(v25 + 16))
        {
          goto LABEL_34;
        }

        sub_100172B7C(v30 + v31, v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        v32 = sub_10018450C(v10, v8);
        sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        result = sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection);
        if ((v32 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (v26 == ++v27)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      break;
    }

LABEL_14:
    v33 = v53[6];
    v34 = &v52[v33];
    v35 = v52[v33 + 8];
    v36 = (v54 + v33);
    v37 = *(v54 + v33 + 8);
    if (v35)
    {
      if (!v37)
      {
        goto LABEL_30;
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
LABEL_30:
        sub_100015F24(v54, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
        sub_100015F24(v52, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
        goto LABEL_31;
      }
    }

    v38 = v53[7];
    v39 = &v52[v38];
    v40 = v52[v38 + 8];
    v41 = (v54 + v38);
    v42 = *(v54 + v38 + 8);
    if (v40)
    {
      if (!v42)
      {
        goto LABEL_30;
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
        goto LABEL_30;
      }
    }

    v43 = v53[5];
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v16 = v52;
    v44 = v54;
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v44, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    sub_100015F24(v16, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding);
    if (v45)
    {
      v18 = v51 + 1;
      v17 = v47;
      if (v51 + 1 != v47)
      {
        continue;
      }
    }

    return v45 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001719A0(uint64_t result, uint64_t a2)
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

uint64_t sub_1001719FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        sub_100172B7C(v19, v16, a4);
        sub_100172B7C(v20, v13, a4);
        v22 = a5(v16, v13);
        sub_100015F24(v13, a4);
        sub_100015F24(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

unint64_t sub_100171B98(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

uint64_t sub_100171BA8(uint64_t a1)
{
  if (a1 > 11804)
  {
    if (a1 > 15651)
    {
      if (a1 > 18224)
      {
        if (a1 <= 19149)
        {
          if (a1 > 19029)
          {
            if (a1 == 19030)
            {
              return 53;
            }

            if (a1 == 19090)
            {
              return 42;
            }
          }

          else
          {
            if (a1 == 18225)
            {
              return 44;
            }

            if (a1 == 18240)
            {
              return 32;
            }
          }
        }

        else if (a1 <= 90602)
        {
          if (a1 == 19150)
          {
            return 34;
          }

          if (a1 == 19160)
          {
            return 43;
          }
        }

        else
        {
          switch(a1)
          {
            case 90603:
              return 33;
            case 515621:
              return 66;
            case 515652:
              return 59;
          }
        }
      }

      else if (a1 <= 15709)
      {
        if (a1 > 15669)
        {
          if (a1 == 15670)
          {
            return 38;
          }

          if (a1 == 15675)
          {
            return 57;
          }
        }

        else
        {
          if (a1 == 15652)
          {
            return 62;
          }

          if (a1 == 15660)
          {
            return 68;
          }
        }
      }

      else if (a1 <= 17149)
      {
        if (a1 == 15710)
        {
          return 61;
        }

        if (a1 == 15733)
        {
          return 64;
        }
      }

      else
      {
        switch(a1)
        {
          case 17150:
            return 30;
          case 18070:
            return 41;
          case 18200:
            return 31;
        }
      }
    }

    else if (a1 > 15254)
    {
      if (a1 <= 15459)
      {
        if (a1 > 15349)
        {
          if (a1 == 15350)
          {
            return 55;
          }

          if (a1 == 15360)
          {
            return 54;
          }
        }

        else
        {
          if (a1 == 15255)
          {
            return 29;
          }

          if (a1 == 15330)
          {
            return 63;
          }
        }
      }

      else if (a1 <= 15591)
      {
        if (a1 == 15460)
        {
          return 51;
        }

        if (a1 == 15562)
        {
          return 50;
        }
      }

      else
      {
        switch(a1)
        {
          case 15592:
            return 52;
          case 15610:
            return 45;
          case 15620:
            return 65;
        }
      }
    }

    else if (a1 <= 15099)
    {
      if (a1 > 15029)
      {
        if (a1 == 15030)
        {
          return 58;
        }

        if (a1 == 15055)
        {
          return 56;
        }
      }

      else
      {
        if (a1 == 11805)
        {
          return 27;
        }

        if (a1 == 12150)
        {
          return 28;
        }
      }
    }

    else if (a1 <= 15149)
    {
      if (a1 == 15100)
      {
        return 70;
      }

      if (a1 == 15110)
      {
        return 40;
      }
    }

    else
    {
      switch(a1)
      {
        case 15150:
          return 67;
        case 15230:
          return 48;
        case 15240:
          return 49;
      }
    }
  }

  else
  {
    if (a1 <= 2009)
    {
      return 0;
    }

    if (a1 > 2067)
    {
      if (a1 <= 2104)
      {
        switch(a1)
        {
          case 2068:
            return 69;
          case 2071:
            return 23;
          case 2101:
            return 36;
        }
      }

      else if (a1 > 3014)
      {
        if (a1 == 3015)
        {
          return 26;
        }

        if (a1 == 3016)
        {
          return 71;
        }
      }

      else
      {
        if (a1 == 2105)
        {
          return 24;
        }

        if (a1 == 2150)
        {
          return 25;
        }
      }
    }

    else if (a1 <= 2023)
    {
      switch(a1)
      {
        case 2010:
          return 18;
        case 2020:
          return 19;
        case 2022:
          return 35;
      }
    }

    else if (a1 > 2060)
    {
      if (a1 == 2061)
      {
        return 21;
      }

      if (a1 == 2065)
      {
        return 22;
      }
    }

    else
    {
      if (a1 == 2024)
      {
        return 37;
      }

      if (a1 == 2048)
      {
        return 20;
      }
    }
  }

  return 72;
}

uint64_t sub_100172138(uint64_t result)
{
  if (result <= 1)
  {
    if (result > 1)
    {
      return 5;
    }
  }

  else if (result != 2 && result != 3)
  {
    if (result == 1001)
    {
      return 4;
    }

    return 5;
  }

  return result;
}

uint64_t sub_100172298(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v77 = &v76 - v5;
  *(v1 + 16) = 4;
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v76 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  v79 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  v80 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  v81 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  v82 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  v83 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v84 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  v85 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  v86 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 14;
  v87 = v19;
  v88 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  v8(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate, 1, 1, v7);
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  v89 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  v78 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  *v21 = 0;
  *(v21 + 4) = 1;
  v90 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity) = 5;
  v91 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  v92 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame) = 3;
  v94 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType) = 8;
  v22 = v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  *v22 = 0;
  *(v22 + 8) = 1;
  v93 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController) = 2;
  swift_beginAccess();
  v23 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v23;
  v24 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v25 = v77;
  sub_10000A0A4(a1 + v24, v77, &qword_10041CA38, &qword_100374468);
  v26 = v76;
  swift_beginAccess();
  sub_10000AD64(v25, v1 + v26, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v27 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  swift_beginAccess();
  *v9 = v28;
  *(v9 + 8) = v27;
  v29 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  swift_beginAccess();
  *v10 = v30;
  *(v10 + 8) = v29;
  v31 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy);
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  v33 = v79;
  swift_beginAccess();
  *v33 = v32;
  *(v33 + 8) = v31;
  v34 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  v36 = v80;
  swift_beginAccess();
  *v36 = v35;
  *(v36 + 8) = v34;
  v37 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy);
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  v39 = v81;
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 8) = v37;
  v40 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course);
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  v42 = v82;
  swift_beginAccess();
  *v42 = v41;
  *(v42 + 8) = v40;
  v43 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v83;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v43;
  v46 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp);
  swift_beginAccess();
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  v48 = v84;
  swift_beginAccess();
  *v48 = v47;
  *(v48 + 8) = v46;
  v49 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  swift_beginAccess();
  LODWORD(v47) = *v49;
  LOBYTE(v49) = *(v49 + 4);
  v50 = v85;
  swift_beginAccess();
  *v50 = v47;
  *(v50 + 4) = v49;
  v51 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan);
  swift_beginAccess();
  v52 = *v51;
  LOBYTE(v51) = *(v51 + 8);
  v53 = v86;
  swift_beginAccess();
  *v53 = v52;
  *(v53 + 8) = v51;
  v54 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  LOBYTE(v54) = *(a1 + v54);
  v55 = v87;
  swift_beginAccess();
  *(v1 + v55) = v54;
  v56 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v56, v25, &qword_10041CA38, &qword_100374468);
  v57 = v88;
  swift_beginAccess();
  sub_10000AD64(v25, v1 + v57, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v58 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse);
  swift_beginAccess();
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  v60 = v89;
  swift_beginAccess();
  *v60 = v59;
  *(v60 + 8) = v58;
  v61 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  swift_beginAccess();
  LODWORD(v59) = *v61;
  LOBYTE(v61) = *(v61 + 4);
  v62 = v78;
  swift_beginAccess();
  *v62 = v59;
  *(v62 + 4) = v61;
  v63 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  swift_beginAccess();
  LOBYTE(v63) = *(a1 + v63);
  v64 = v90;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  LOBYTE(v65) = *(a1 + v65);
  v66 = v91;
  swift_beginAccess();
  *(v1 + v66) = v65;
  v67 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  swift_beginAccess();
  LOBYTE(v67) = *(a1 + v67);
  v68 = v92;
  swift_beginAccess();
  *(v1 + v68) = v67;
  v69 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  swift_beginAccess();
  LOBYTE(v69) = *(a1 + v69);
  v70 = v94;
  swift_beginAccess();
  *(v1 + v70) = v69;
  v71 = (a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude);
  swift_beginAccess();
  v72 = *v71;
  LOBYTE(v71) = *(v71 + 8);
  swift_beginAccess();
  *v22 = v72;
  *(v22 + 8) = v71;
  v73 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v73);
  v74 = v93;
  swift_beginAccess();
  *(v1 + v74) = a1;
  return v1;
}

uint64_t sub_100172B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100172BE4(uint64_t result)
{
  if (result <= 1)
  {
    if (result <= 1)
    {
      return result;
    }

    return 4;
  }

  if (result != 2)
  {
    if (result == 0xFFFF)
    {
      return 3;
    }

    return 4;
  }

  return result;
}

uint64_t sub_100172C20(uint64_t a1)
{
  if (a1 <= 24)
  {
    if (a1 == -1)
    {
      return 0;
    }

    if (!a1)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 25:
        return 2;
      case 50:
        return 3;
      case 75:
        return 4;
    }
  }

  return 5;
}

uint64_t sub_100172D1C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA50, &qword_100374480);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v244 = &v184 - v5;
  v6 = sub_100024A2C(&qword_10041CA48, &qword_100374478);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v220 = &v184 - v8;
  v9 = sub_100024A2C(&qword_10041CA40, &qword_100374470);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v206 = &v184 - v11;
  v12 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v196 = &v184 - v14;
  *(v1 + 16) = 0;
  v185 = (v1 + 16);
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  v186 = (v1 + 32);
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  v187 = (v1 + 48);
  *(v1 + 64) = 0;
  v188 = (v1 + 64);
  *(v1 + 56) = 1;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  v189 = (v1 + 80);
  *(v1 + 88) = 1;
  *(v1 + 92) = 0;
  v190 = (v1 + 92);
  *(v1 + 100) = 0;
  v191 = (v1 + 100);
  *(v1 + 96) = 1;
  *(v1 + 104) = 1;
  *(v1 + 108) = 0;
  v192 = (v1 + 108);
  *(v1 + 112) = 1;
  *(v1 + 113) = 1026;
  v15 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  v193 = (v1 + 113);
  v194 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v1 + v15, 1, 1, v16);
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
  v195 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  v197 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  v198 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  *v20 = 0;
  *(v20 + 4) = 1;
  v199 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted) = 2;
  v21 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  v200 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v201 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel) = 4;
  v23 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  v203 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  *v23 = 0;
  *(v23 + 4) = 1;
  v204 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  v17(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate, 1, 1, v16);
  v24 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
  v205 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
  v207 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
  *v25 = 0;
  *(v25 + 8) = 1;
  v208 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice) = 3;
  v209 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates) = 2;
  v26 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  v210 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
  v211 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
  v212 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
  v213 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
  v214 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
  v215 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
  v216 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
  *v33 = 0;
  *(v33 + 8) = 1;
  v217 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed) = 2;
  v34 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
  v218 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
  v219 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
  *v35 = 0;
  *(v35 + 8) = 1;
  v221 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused) = 2;
  v223 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  v17(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate, 1, 1, v16);
  v36 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
  v224 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
  *v36 = 0;
  *(v36 + 8) = 1;
  v225 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame) = 3;
  v37 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
  v226 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
  v227 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
  v228 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
  v229 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
  v230 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
  *v41 = 0;
  *(v41 + 8) = 1;
  v231 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl) = 2;
  v42 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
  v232 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
  v233 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
  *v43 = 0;
  *(v43 + 8) = 1;
  v202 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport) = &_swiftEmptyArrayStorage;
  v236 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent) = 3;
  v44 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  v237 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  v45 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  (*(*(v45 - 8) + 56))(v1 + v44, 1, 1, v45);
  v238 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState) = 3;
  v46 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
  v239 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
  *v46 = 0;
  *(v46 + 8) = 1;
  v47 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
  v222 = v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
  *v47 = 0;
  *(v47 + 8) = 1;
  v240 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType) = 4;
  v241 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching) = 2;
  v242 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy) = 3;
  v243 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType) = 5;
  v234 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp) = 2;
  v235 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators) = 2;
  swift_beginAccess();
  v48 = *(a1 + 16);
  LOBYTE(v44) = *(a1 + 24);
  v49 = v185;
  swift_beginAccess();
  *v49 = v48;
  *(v1 + 24) = v44;
  swift_beginAccess();
  v50 = *(a1 + 32);
  LOBYTE(v48) = *(a1 + 40);
  v51 = v186;
  swift_beginAccess();
  *v51 = v50;
  *(v1 + 40) = v48;
  swift_beginAccess();
  v52 = *(a1 + 48);
  LOBYTE(v48) = *(a1 + 56);
  v53 = v187;
  swift_beginAccess();
  *v53 = v52;
  *(v1 + 56) = v48;
  swift_beginAccess();
  v54 = *(a1 + 64);
  LOBYTE(v48) = *(a1 + 72);
  v55 = v188;
  swift_beginAccess();
  *v55 = v54;
  *(v1 + 72) = v48;
  swift_beginAccess();
  v56 = *(a1 + 80);
  LOBYTE(v48) = *(a1 + 88);
  v57 = v189;
  swift_beginAccess();
  *v57 = v56;
  *(v1 + 88) = v48;
  swift_beginAccess();
  LODWORD(v56) = *(a1 + 92);
  LOBYTE(v48) = *(a1 + 96);
  v58 = v190;
  swift_beginAccess();
  *v58 = v56;
  *(v1 + 96) = v48;
  swift_beginAccess();
  LODWORD(v56) = *(a1 + 100);
  LOBYTE(v48) = *(a1 + 104);
  v59 = v191;
  swift_beginAccess();
  *v59 = v56;
  *(v1 + 104) = v48;
  swift_beginAccess();
  LODWORD(v56) = *(a1 + 108);
  LOBYTE(v48) = *(a1 + 112);
  v60 = v192;
  swift_beginAccess();
  *v60 = v56;
  *(v1 + 112) = v48;
  swift_beginAccess();
  LOBYTE(v56) = *(a1 + 113);
  v61 = v193;
  swift_beginAccess();
  *v61 = v56;
  swift_beginAccess();
  LOBYTE(v56) = *(a1 + 114);
  swift_beginAccess();
  *(v1 + 114) = v56;
  v62 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  v63 = v196;
  sub_10000A0A4(a1 + v62, v196, &qword_10041CA38, &qword_100374468);
  v64 = v194;
  swift_beginAccess();
  sub_10000AD64(v63, v1 + v64, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v65 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse);
  swift_beginAccess();
  v66 = *v65;
  LOBYTE(v65) = *(v65 + 8);
  v67 = v195;
  swift_beginAccess();
  *v67 = v66;
  *(v67 + 8) = v65;
  v68 = a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  swift_beginAccess();
  LODWORD(v66) = *v68;
  LOBYTE(v68) = *(v68 + 4);
  v69 = v197;
  swift_beginAccess();
  *v69 = v66;
  *(v69 + 4) = v68;
  v70 = a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  swift_beginAccess();
  LODWORD(v66) = *v70;
  LOBYTE(v70) = *(v70 + 4);
  v71 = v198;
  swift_beginAccess();
  *v71 = v66;
  *(v71 + 4) = v70;
  v72 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
  swift_beginAccess();
  LOBYTE(v72) = *(a1 + v72);
  v73 = v199;
  swift_beginAccess();
  *(v1 + v73) = v72;
  v74 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  v75 = v206;
  sub_10000A0A4(a1 + v74, v206, &qword_10041CA40, &qword_100374470);
  v76 = v200;
  swift_beginAccess();
  sub_10000AD64(v75, v1 + v76, &qword_10041CA40, &qword_100374470);
  swift_endAccess();
  v77 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
  swift_beginAccess();
  LOBYTE(v77) = *(a1 + v77);
  v78 = v201;
  swift_beginAccess();
  *(v1 + v78) = v77;
  v79 = a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  swift_beginAccess();
  LODWORD(v78) = *v79;
  LOBYTE(v79) = *(v79 + 4);
  v80 = v203;
  swift_beginAccess();
  *v80 = v78;
  *(v80 + 4) = v79;
  v81 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v81, v63, &qword_10041CA38, &qword_100374468);
  v82 = v204;
  swift_beginAccess();
  sub_10000AD64(v63, v1 + v82, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v83 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy);
  swift_beginAccess();
  v84 = *v83;
  LOBYTE(v83) = *(v83 + 8);
  v85 = v205;
  swift_beginAccess();
  *v85 = v84;
  *(v85 + 8) = v83;
  v86 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime);
  swift_beginAccess();
  v87 = *v86;
  LOBYTE(v86) = *(v86 + 8);
  v88 = v207;
  swift_beginAccess();
  *v88 = v87;
  *(v88 + 8) = v86;
  v89 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
  swift_beginAccess();
  LOBYTE(v89) = *(a1 + v89);
  v90 = v208;
  swift_beginAccess();
  *(v1 + v90) = v89;
  v91 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
  swift_beginAccess();
  LOBYTE(v91) = *(a1 + v91);
  v92 = v209;
  swift_beginAccess();
  *(v1 + v92) = v91;
  v93 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  v94 = v220;
  sub_10000A0A4(a1 + v93, v220, &qword_10041CA48, &qword_100374478);
  v95 = v210;
  swift_beginAccess();
  sub_10000AD64(v94, v1 + v95, &qword_10041CA48, &qword_100374478);
  swift_endAccess();
  v96 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope);
  swift_beginAccess();
  v97 = *v96;
  LOBYTE(v96) = *(v96 + 8);
  v98 = v211;
  swift_beginAccess();
  *v98 = v97;
  *(v98 + 8) = v96;
  v99 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope);
  swift_beginAccess();
  v100 = *v99;
  LOBYTE(v99) = *(v99 + 8);
  v101 = v212;
  swift_beginAccess();
  *v101 = v100;
  *(v101 + 8) = v99;
  v102 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude);
  swift_beginAccess();
  v103 = *v102;
  LOBYTE(v102) = *(v102 + 8);
  v104 = v213;
  swift_beginAccess();
  *v104 = v103;
  *(v104 + 8) = v102;
  v105 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty);
  swift_beginAccess();
  v106 = *v105;
  LOBYTE(v105) = *(v105 + 8);
  v107 = v214;
  swift_beginAccess();
  *v107 = v106;
  *(v107 + 8) = v105;
  v108 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude);
  swift_beginAccess();
  v109 = *v108;
  LOBYTE(v108) = *(v108 + 8);
  v110 = v215;
  swift_beginAccess();
  *v110 = v109;
  *(v110 + 8) = v108;
  v111 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty);
  swift_beginAccess();
  v112 = *v111;
  LOBYTE(v111) = *(v111 + 8);
  v113 = v216;
  swift_beginAccess();
  *v113 = v112;
  *(v113 + 8) = v111;
  v114 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
  swift_beginAccess();
  LOBYTE(v114) = *(a1 + v114);
  v115 = v217;
  swift_beginAccess();
  *(v1 + v115) = v114;
  v116 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy);
  swift_beginAccess();
  v117 = *v116;
  LOBYTE(v116) = *(v116 + 8);
  v118 = v218;
  swift_beginAccess();
  *v118 = v117;
  *(v118 + 8) = v116;
  v119 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy);
  swift_beginAccess();
  v120 = *v119;
  LOBYTE(v119) = *(v119 + 8);
  v121 = v219;
  swift_beginAccess();
  *v121 = v120;
  *(v121 + 8) = v119;
  v122 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
  swift_beginAccess();
  LOBYTE(v122) = *(a1 + v122);
  v123 = v221;
  swift_beginAccess();
  *(v1 + v123) = v122;
  v124 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v124, v63, &qword_10041CA38, &qword_100374468);
  v125 = v223;
  swift_beginAccess();
  sub_10000AD64(v63, v1 + v125, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v126 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy);
  swift_beginAccess();
  v127 = *v126;
  LOBYTE(v126) = *(v126 + 8);
  v128 = v224;
  swift_beginAccess();
  *v128 = v127;
  *(v128 + 8) = v126;
  v129 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
  swift_beginAccess();
  LOBYTE(v129) = *(a1 + v129);
  v130 = v225;
  swift_beginAccess();
  *(v1 + v130) = v129;
  v131 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse);
  swift_beginAccess();
  v132 = *v131;
  LOBYTE(v131) = *(v131 + 8);
  v133 = v226;
  swift_beginAccess();
  *v133 = v132;
  *(v133 + 8) = v131;
  v134 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy);
  swift_beginAccess();
  v135 = *v134;
  LOBYTE(v134) = *(v134 + 8);
  v136 = v227;
  swift_beginAccess();
  *v136 = v135;
  *(v136 + 8) = v134;
  v137 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError);
  swift_beginAccess();
  v138 = *v137;
  LOBYTE(v137) = *(v137 + 8);
  v139 = v228;
  swift_beginAccess();
  *v139 = v138;
  *(v139 + 8) = v137;
  v140 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude);
  swift_beginAccess();
  v141 = *v140;
  LOBYTE(v140) = *(v140 + 8);
  v142 = v229;
  swift_beginAccess();
  *v142 = v141;
  *(v142 + 8) = v140;
  v143 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy);
  swift_beginAccess();
  v144 = *v143;
  LOBYTE(v143) = *(v143 + 8);
  v145 = v230;
  swift_beginAccess();
  *v145 = v144;
  *(v145 + 8) = v143;
  v146 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
  swift_beginAccess();
  LOBYTE(v146) = *(a1 + v146);
  v147 = v231;
  swift_beginAccess();
  *(v1 + v147) = v146;
  v148 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude);
  swift_beginAccess();
  v149 = *v148;
  LOBYTE(v148) = *(v148 + 8);
  v150 = v232;
  swift_beginAccess();
  *v150 = v149;
  *(v150 + 8) = v148;
  v151 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy);
  swift_beginAccess();
  v152 = *v151;
  LOBYTE(v151) = *(v151 + 8);
  v153 = v233;
  swift_beginAccess();
  *v153 = v152;
  *(v153 + 8) = v151;
  v154 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
  swift_beginAccess();
  v155 = *(a1 + v154);
  v156 = v202;
  swift_beginAccess();
  v157 = *(v1 + v156);
  *(v1 + v156) = v155;

  v158 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
  swift_beginAccess();
  LOBYTE(v158) = *(a1 + v158);
  v159 = v236;
  swift_beginAccess();
  *(v1 + v159) = v158;
  v160 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  v161 = v244;
  sub_10000A0A4(a1 + v160, v244, &qword_10041CA50, &qword_100374480);
  v162 = v237;
  swift_beginAccess();
  sub_10000AD64(v161, v1 + v162, &qword_10041CA50, &qword_100374480);
  swift_endAccess();
  v163 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
  swift_beginAccess();
  LOBYTE(v163) = *(a1 + v163);
  v164 = v238;
  swift_beginAccess();
  *(v1 + v164) = v163;
  v165 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor);
  swift_beginAccess();
  v166 = *v165;
  LOBYTE(v165) = *(v165 + 8);
  v167 = v239;
  swift_beginAccess();
  *v167 = v166;
  *(v167 + 8) = v165;
  v168 = (a1 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor);
  swift_beginAccess();
  v169 = *v168;
  LOBYTE(v168) = *(v168 + 8);
  v170 = v222;
  swift_beginAccess();
  *v170 = v169;
  *(v170 + 8) = v168;
  v171 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
  swift_beginAccess();
  LOBYTE(v171) = *(a1 + v171);
  v172 = v240;
  swift_beginAccess();
  *(v1 + v172) = v171;
  v173 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
  swift_beginAccess();
  LOBYTE(v173) = *(a1 + v173);
  v174 = v241;
  swift_beginAccess();
  *(v1 + v174) = v173;
  v175 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
  swift_beginAccess();
  LOBYTE(v175) = *(a1 + v175);
  v176 = v242;
  swift_beginAccess();
  *(v1 + v176) = v175;
  v177 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
  swift_beginAccess();
  LOBYTE(v177) = *(a1 + v177);
  v178 = v243;
  swift_beginAccess();
  *(v1 + v178) = v177;
  v179 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
  swift_beginAccess();
  LOBYTE(v179) = *(a1 + v179);
  v180 = v234;
  swift_beginAccess();
  *(v1 + v180) = v179;
  v181 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v181);
  v182 = v235;
  swift_beginAccess();
  *(v1 + v182) = a1;
  return v1;
}

uint64_t sub_10017440C(uint64_t a1)
{
  if ((a1 + 1) < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1001745A0(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v39 = &v31 - v5;
  *(v1 + 16) = 67306568;
  *(v1 + 20) = 2;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  v32 = (v1 + 32);
  *(v1 + 41) = 1026;
  *(v1 + 48) = 0;
  v33 = (v1 + 41);
  v34 = (v1 + 48);
  *(v1 + 40) = 1;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  v35 = (v1 + 64);
  *(v1 + 72) = 1;
  *(v1 + 73) = 1096;
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v36 = (v1 + 73);
  v37 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v38 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  v8(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence) = 6;
  swift_beginAccess();
  LOBYTE(v8) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v8;
  swift_beginAccess();
  v10 = *(a1 + 17);
  swift_beginAccess();
  *(v1 + 17) = v10;
  swift_beginAccess();
  v11 = *(a1 + 18);
  swift_beginAccess();
  *(v1 + 18) = v11;
  swift_beginAccess();
  v12 = *(a1 + 19);
  swift_beginAccess();
  *(v1 + 19) = v12;
  swift_beginAccess();
  v13 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 20) = v13;
  swift_beginAccess();
  v14 = *(a1 + 24);
  v15 = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v14;
  *(v1 + 28) = v15;
  swift_beginAccess();
  v16 = *(a1 + 32);
  LOBYTE(v14) = *(a1 + 40);
  v17 = v32;
  swift_beginAccess();
  *v17 = v16;
  *(v1 + 40) = v14;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 41);
  v18 = v33;
  swift_beginAccess();
  *v18 = v17;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 42);
  swift_beginAccess();
  *(v1 + 42) = v17;
  swift_beginAccess();
  v19 = *(a1 + 48);
  LOBYTE(v18) = *(a1 + 56);
  v20 = v34;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 56) = v18;
  swift_beginAccess();
  v21 = *(a1 + 64);
  LOBYTE(v18) = *(a1 + 72);
  v22 = v35;
  swift_beginAccess();
  *v22 = v21;
  *(v1 + 72) = v18;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 73);
  v23 = v36;
  swift_beginAccess();
  *v23 = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 74);
  swift_beginAccess();
  *(v1 + 74) = v21;
  v24 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v25 = v39;
  sub_10000A0A4(a1 + v24, v39, &qword_10041CA30, &qword_100374460);
  v26 = v37;
  swift_beginAccess();
  sub_10000AD64(v25, v1 + v26, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v27, v25, &qword_10041CA30, &qword_100374460);
  v28 = v38;
  swift_beginAccess();
  sub_10000AD64(v25, v1 + v28, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v29);
  swift_beginAccess();
  *(v1 + v9) = a1;
  return v1;
}

unint64_t sub_100174B7C(unint64_t result)
{
  if (result >= 0x43)
  {
    return 67;
  }

  return result;
}

unint64_t sub_100174BAC(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

unint64_t sub_100174C3C(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t sub_100174D8C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v62 - v5;
  v7 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  v63 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  v64 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  v65 = v14;
  v66 = v15;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  v67 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  v68 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved) = 2;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  v69 = v18;
  v70 = v19;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  v71 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  v72 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  v73 = v1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v23, v6, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v6, v1 + v7, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg);
  swift_beginAccess();
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  swift_beginAccess();
  *v9 = v25;
  *(v9 + 8) = v24;
  v26 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg);
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  swift_beginAccess();
  *v10 = v27;
  *(v10 + 8) = v26;
  v28 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM);
  swift_beginAccess();
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  swift_beginAccess();
  *v11 = v29;
  *(v11 + 8) = v28;
  v30 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v32 = v63;
  swift_beginAccess();
  *v32 = v31;
  *(v32 + 8) = v30;
  v33 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = v64;
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 8) = v33;
  v36 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v65;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  v40 = v66;
  swift_beginAccess();
  *v40 = v39;
  *(v40 + 8) = v38;
  v41 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = v67;
  swift_beginAccess();
  *v43 = v42;
  *(v43 + 8) = v41;
  v44 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM);
  swift_beginAccess();
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  v46 = v68;
  swift_beginAccess();
  *v46 = v45;
  *(v46 + 8) = v44;
  v47 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  LOBYTE(v47) = *(a1 + v47);
  v48 = v69;
  swift_beginAccess();
  *(v1 + v48) = v47;
  v49 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg);
  swift_beginAccess();
  v50 = *v49;
  LOBYTE(v49) = *(v49 + 8);
  v51 = v70;
  swift_beginAccess();
  *v51 = v50;
  *(v51 + 8) = v49;
  v52 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg);
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  v54 = v71;
  swift_beginAccess();
  *v54 = v53;
  *(v54 + 8) = v52;
  v55 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM);
  swift_beginAccess();
  v56 = *v55;
  LOBYTE(v55) = *(v55 + 8);
  v57 = v72;
  swift_beginAccess();
  *v57 = v56;
  *(v57 + 8) = v55;
  v58 = (a1 + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM);
  swift_beginAccess();
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  v60 = v73;
  swift_beginAccess();
  *v60 = v59;
  *(v60 + 8) = v58;
  return v1;
}

uint64_t sub_1001754E0(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CAD8, &qword_100374508);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v57 = &v48 - v5;
  v6 = sub_100024A2C(&qword_10041CAD0, &qword_100374500);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v53 = &v48 - v8;
  v9 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData) = 20;
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  v50 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v51 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode) = 2;
  v52 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn) = 2;
  v54 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen) = 2;
  v55 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled) = 2;
  v56 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected) = 2;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  v49 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  v58 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  *v22 = 0;
  *(v22 + 4) = 1;
  v59 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode) = 2;
  v23 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v23, v12, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v13, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v24 = a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  LODWORD(v23) = *v24;
  LOBYTE(v24) = *(v24 + 4);
  swift_beginAccess();
  *v15 = v23;
  *(v15 + 4) = v24;
  v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + v25);
  swift_beginAccess();
  *(v1 + v16) = v25;
  v26 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  v27 = v53;
  sub_10000A0A4(a1 + v26, v53, &qword_10041CAD0, &qword_100374500);
  swift_beginAccess();
  sub_10000AD64(v27, v1 + v17, &qword_10041CAD0, &qword_100374500);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  v29 = v57;
  sub_10000A0A4(a1 + v28, v57, &qword_10041CAD8, &qword_100374508);
  v30 = v50;
  swift_beginAccess();
  sub_10000AD64(v29, v1 + v30, &qword_10041CAD8, &qword_100374508);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  LOBYTE(v31) = *(a1 + v31);
  v32 = v51;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);
  v34 = v52;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v54;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  LOBYTE(v37) = *(a1 + v37);
  v38 = v55;
  swift_beginAccess();
  *(v1 + v38) = v37;
  v39 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  LOBYTE(v39) = *(a1 + v39);
  v40 = v56;
  swift_beginAccess();
  *(v1 + v40) = v39;
  v41 = a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  swift_beginAccess();
  LODWORD(v40) = *v41;
  LOBYTE(v41) = *(v41 + 4);
  v42 = v49;
  swift_beginAccess();
  *v42 = v40;
  *(v42 + 4) = v41;
  v43 = a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  swift_beginAccess();
  LODWORD(v40) = *v43;
  LOBYTE(v43) = *(v43 + 4);
  v44 = v58;
  swift_beginAccess();
  *v44 = v40;
  *(v44 + 4) = v43;
  v45 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v45);
  v46 = v59;
  swift_beginAccess();
  *(v1 + v46) = a1;
  return v1;
}

unint64_t sub_100175B84(unint64_t result)
{
  if (result >= 0x14)
  {
    return 20;
  }

  return result;
}

unint64_t sub_100175CB4(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t sub_100175E04(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CAF8, &qword_100374528);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_100024A2C(&qword_10041CB00, &qword_100374530);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDoubleVector4(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v34 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate, 1, 1, v14);
  v36 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField, 1, 1, v14);
  v37 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel) = 8;
  v38 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection) = 2;
  v39 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation) = 2;
  v35 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p) = 2;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__quaternion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v17, v10, &qword_10041CB00, &qword_100374530);
  swift_beginAccess();
  sub_10000AD64(v10, v1 + v11, &qword_10041CB00, &qword_100374530);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__userAcceleration;
  swift_beginAccess();
  sub_10000A0A4(a1 + v18, v6, &qword_10041CAF8, &qword_100374528);
  swift_beginAccess();
  sub_10000AD64(v6, v1 + v13, &qword_10041CAF8, &qword_100374528);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rotationRate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v19, v6, &qword_10041CAF8, &qword_100374528);
  v20 = v34;
  swift_beginAccess();
  sub_10000AD64(v6, v1 + v20, &qword_10041CAF8, &qword_100374528);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticField;
  swift_beginAccess();
  sub_10000A0A4(a1 + v21, v6, &qword_10041CAF8, &qword_100374528);
  v22 = v36;
  swift_beginAccess();
  sub_10000AD64(v6, v1 + v22, &qword_10041CAF8, &qword_100374528);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__magneticFieldCalibrationLevel;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);
  v24 = v37;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingYawCorrection;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + v25);
  v26 = v38;
  swift_beginAccess();
  *(v1 + v26) = v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__doingBiasEstimation;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + v27);
  v28 = v39;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInitialized_p;
  swift_beginAccess();
  LOBYTE(v29) = *(a1 + v29);
  v30 = v35;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = a1 + OBJC_IVAR____TtCV10ALProtobuf47CLP_LogEntry_PrivateData_MotionTypeDeviceMotionP33_993346AF53650622B255AB1E3C41340D13_StorageClass__heading;
  swift_beginAccess();
  LODWORD(v29) = *v31;
  LOBYTE(v31) = *(v31 + 4);
  swift_beginAccess();
  *v16 = v29;
  *(v16 + 4) = v31;
  return v1;
}

uint64_t sub_1001765AC(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v37 - v5;
  v6 = sub_100024A2C(&qword_10041CB68, &qword_100374598);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v40 = &v37 - v8;
  v9 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  v13 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime, 1, 1, v14);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime, 1, 1, v14);
  v18 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  v15(v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime, 1, 1, v14);
  v19 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  v39 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v38 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = v1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__receiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v24, v12, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v13, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__arrivalTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v25, v12, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v16, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__departureTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v26, v12, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v17, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__detectionTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v27, v12, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v18, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__placeInference;
  swift_beginAccess();
  v29 = v40;
  sub_10000A0A4(a1 + v28, v40, &qword_10041CB68, &qword_100374598);
  v30 = v39;
  swift_beginAccess();
  sub_10000AD64(v29, v1 + v30, &qword_10041CB68, &qword_100374598);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v32 = v41;
  sub_10000A0A4(a1 + v31, v41, &qword_10041CA38, &qword_100374468);
  v33 = v38;
  swift_beginAccess();
  sub_10000AD64(v32, v1 + v33, &qword_10041CA38, &qword_100374468);
  swift_endAccess();
  v34 = (a1 + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_RoutineVisitP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracyM);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  swift_beginAccess();
  *v23 = v35;
  *(v23 + 8) = v34;
  return v1;
}

uint64_t sub_100176B94(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 1;
  *(v1 + 44) = 0;
  *(v1 + 48) = 1;
  *(v1 + 52) = 0;
  *(v1 + 60) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 68) = 0;
  *(v1 + 72) = 1;
  *(v1 + 76) = 0;
  *(v1 + 84) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 1;
  *(v1 + 92) = 0;
  *(v1 + 96) = 1;
  *(v1 + 100) = 0;
  *(v1 + 108) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 1;
  *(v1 + 116) = 0;
  *(v1 + 120) = 1;
  *(v1 + 124) = 0;
  *(v1 + 128) = 1;
  *(v1 + 129) = 33686019;
  *(v1 + 133) = 4;
  *(v1 + 136) = 0;
  *(v1 + 140) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 44);
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 44) = v5;
  *(v1 + 48) = v7;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 52);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 52) = v5;
  *(v1 + 56) = v8;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 60);
  v9 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 60) = v5;
  *(v1 + 64) = v9;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 68);
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 68) = v5;
  *(v1 + 72) = v10;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 76);
  v11 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 76) = v5;
  *(v1 + 80) = v11;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 84);
  v12 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 84) = v5;
  *(v1 + 88) = v12;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 92);
  v13 = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 92) = v5;
  *(v1 + 96) = v13;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 100);
  v14 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 100) = v5;
  *(v1 + 104) = v14;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 108);
  v15 = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 108) = v5;
  *(v1 + 112) = v15;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 116);
  v16 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 116) = v5;
  *(v1 + 120) = v16;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 124);
  v17 = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 124) = v5;
  *(v1 + 128) = v17;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 129);
  swift_beginAccess();
  *(v1 + 129) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 130);
  swift_beginAccess();
  *(v1 + 130) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 131);
  swift_beginAccess();
  *(v1 + 131) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 132) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 133);
  swift_beginAccess();
  *(v1 + 133) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 136);
  LOBYTE(a1) = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 136) = v5;
  *(v1 + 140) = a1;
  return v1;
}

uint64_t sub_1001770F8(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10016F7C4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranch(0);
  v5 = v4[6];
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

  v8 = v4[7];
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

  v13 = v4[8];
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

  v18 = v4[9];
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

  v24 = v4[5];
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100177264(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v61 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v14 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v65 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  v20 = *(v65 + 28);
  v63 = v14;
  v21 = *(v14 + 48);
  v67 = a1;
  sub_10000A0A4(a1 + v20, v19, &qword_10041CA30, &qword_100374460);
  v66 = a2;
  sub_10000A0A4(a2 + v20, &v19[v21], &qword_10041CA30, &qword_100374460);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      v23 = v4;
      sub_1000059A8(v19, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v24 = v19;
LABEL_14:
    sub_1000059A8(v24, &qword_100423CE0, &qword_100393E90);
    goto LABEL_15;
  }

  sub_10000A0A4(v19, v13, &qword_10041CA30, &qword_100374460);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v23 = v4;
  v25 = &v19[v21];
  v26 = v62;
  sub_1000112AC(v25, v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v27 = sub_1001853C4(v13, v26, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v26, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v19, &qword_10041CA30, &qword_100374460);
  if ((v27 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v28 = v64;
  v29 = v65;
  v30 = *(v65 + 32);
  v31 = *(v63 + 48);
  sub_10000A0A4(v67 + v30, v64, &qword_10041CA30, &qword_100374460);
  v32 = v66;
  sub_10000A0A4(v66 + v30, v28 + v31, &qword_10041CA30, &qword_100374460);
  v33 = v23;
  if (v22(v28, 1, v23) == 1)
  {
    if (v22((v28 + v31), 1, v23) == 1)
    {
      sub_1000059A8(v28, &qword_10041CA30, &qword_100374460);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v34 = v61;
  sub_10000A0A4(v28, v61, &qword_10041CA30, &qword_100374460);
  if (v22((v28 + v31), 1, v33) == 1)
  {
    sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_13:
    v24 = v28;
    goto LABEL_14;
  }

  v37 = v62;
  sub_1000112AC(v28 + v31, v62, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v38 = sub_1001853C4(v34, v37, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v37, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v28, &qword_10041CA30, &qword_100374460);
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v39 = v29[9];
  v40 = v67;
  v41 = (v67 + v39);
  v42 = *(v67 + v39 + 4);
  v43 = (v32 + v39);
  v44 = *(v32 + v39 + 4);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_15;
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
      goto LABEL_15;
    }
  }

  v45 = v29[10];
  v46 = *(v67 + v45);
  v47 = *(v32 + v45);
  if (v46 == 5)
  {
    if (v47 != 5)
    {
      goto LABEL_15;
    }
  }

  else if (v46 != v47)
  {
    goto LABEL_15;
  }

  v48 = v29[11];
  v49 = (v67 + v48);
  v50 = *(v67 + v48 + 4);
  v51 = (v32 + v48);
  v52 = *(v32 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_15;
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
      goto LABEL_15;
    }
  }

  if ((sub_10009C5E0(*v67, *v32) & 1) == 0 || (sub_10009C5E0(v40[1], v32[1]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v53 = v29[12];
  v54 = *(v40 + v53);
  v55 = *(v32 + v53);
  if (v54 == 2)
  {
    if (v55 == 2)
    {
      goto LABEL_41;
    }

LABEL_15:
    v35 = 0;
    return v35 & 1;
  }

  if (v55 == 2 || ((v54 ^ v55) & 1) != 0)
  {
    goto LABEL_15;
  }

LABEL_41:
  v56 = v29[13];
  v57 = *(v40 + v56);
  v58 = *(v32 + v56);
  if (v57 == 2)
  {
    if (v58 == 2)
    {
LABEL_46:
      v59 = v29[6];
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v35 & 1;
    }

    goto LABEL_15;
  }

  v35 = 0;
  if (v58 != 2 && ((v58 ^ v57) & 1) == 0)
  {
    goto LABEL_46;
  }

  return v35 & 1;
}

uint64_t sub_100177904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
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
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001779FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v35 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_GnssAvailabilityPrediction(0);
  v38 = a1;
  v17 = v37[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v36;
      sub_1000112AC(&v16[v18], v36, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
  v24 = v37[6];
  v25 = *(v38 + v24);
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

  v27 = v37[7];
  v28 = (v38 + v27);
  v29 = *(v38 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      goto LABEL_7;
    }
  }

  v32 = v37[8];
  v33 = *(v38 + v32);
  v34 = *(a2 + v32);
  if (v33 == 4)
  {
    if (v34 == 4)
    {
      goto LABEL_24;
    }
  }

  else if (v33 == v34)
  {
LABEL_24:
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100177DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  v14 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v53 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v50 - v18;
  v55 = type metadata accessor for CLP_LogEntry_PrivateData_PedometerPathStraightness(0);
  v56 = a1;
  v20 = v55[5];
  v52 = v14;
  v21 = *(v14 + 48);
  sub_10000A0A4(a1 + v20, v19, &qword_10041CA30, &qword_100374460);
  v57 = a2;
  sub_10000A0A4(a2 + v20, &v19[v21], &qword_10041CA30, &qword_100374460);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_1000059A8(v19, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v23 = v19;
LABEL_7:
    sub_1000059A8(v23, &qword_100423CE0, &qword_100393E90);
    goto LABEL_8;
  }

  sub_10000A0A4(v19, v13, &qword_10041CA30, &qword_100374460);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v26 = &v19[v21];
  v27 = v54;
  sub_1000112AC(v26, v54, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v28 = sub_1001853C4(v13, v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v19, &qword_10041CA30, &qword_100374460);
  if ((v28 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v55[6];
  v30 = (v56 + v29);
  v31 = *(v56 + v29 + 8);
  v32 = v57;
  v33 = (v57 + v29);
  v34 = *(v57 + v29 + 8);
  if (v31)
  {
    if (!v34)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v30 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      goto LABEL_8;
    }
  }

  v35 = v55[7];
  v36 = (v56 + v35);
  v37 = *(v56 + v35 + 8);
  v38 = (v57 + v35);
  v39 = *(v57 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v40 = v4;
  v41 = v55[8];
  v42 = v53;
  v43 = *(v52 + 48);
  sub_10000A0A4(v56 + v41, v53, &qword_10041CA30, &qword_100374460);
  v44 = v32 + v41;
  v45 = v40;
  sub_10000A0A4(v44, v42 + v43, &qword_10041CA30, &qword_100374460);
  if (v22(v42, 1, v40) == 1)
  {
    if (v22((v42 + v43), 1, v40) == 1)
    {
      sub_1000059A8(v42, &qword_10041CA30, &qword_100374460);
LABEL_30:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_28;
  }

  v46 = v51;
  sub_10000A0A4(v42, v51, &qword_10041CA30, &qword_100374460);
  if (v22((v42 + v43), 1, v45) == 1)
  {
    sub_100015F24(v46, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_28:
    v23 = v42;
    goto LABEL_7;
  }

  v47 = v42 + v43;
  v48 = v54;
  sub_1000112AC(v47, v54, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v49 = sub_1001853C4(v46, v48, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v48, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v46, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v42, &qword_10041CA30, &qword_100374460);
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_8:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1001783D4(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CAC0, &qword_1003744F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v54 = &v52 - v8;
  v55 = sub_100024A2C(&qword_100423D88, &qword_100382FF0);
  v9 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v58 = &v52 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v52 - v18;
  v20 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  v60 = a1;
  v25 = v59[5];
  v26 = *(v21 + 56);
  sub_10000A0A4(a1 + v25, v24, &qword_10041CA30, &qword_100374460);
  v27 = v61 + v25;
  v28 = v61;
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
  v36 = v59[6];
  v37 = (v60 + v36);
  v38 = *(v60 + v36 + 4);
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

  v41 = v59[7];
  v42 = *(v55 + 48);
  v43 = v58;
  sub_10000A0A4(v60 + v41, v58, &qword_10041CAC0, &qword_1003744F0);
  v44 = v28 + v41;
  v45 = v43;
  sub_10000A0A4(v44, v43 + v42, &qword_10041CAC0, &qword_1003744F0);
  v46 = v57;
  v47 = *(v56 + 48);
  if (v47(v43, 1, v57) == 1)
  {
    if (v47(v43 + v42, 1, v46) == 1)
    {
      sub_1000059A8(v43, &qword_10041CAC0, &qword_1003744F0);
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v33 & 1;
    }

    goto LABEL_22;
  }

  v48 = v54;
  sub_10000A0A4(v45, v54, &qword_10041CAC0, &qword_1003744F0);
  if (v47(v45 + v42, 1, v46) == 1)
  {
    sub_100015F24(v48, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
LABEL_22:
    v30 = &qword_100423D88;
    v31 = &qword_100382FF0;
    v32 = v45;
    goto LABEL_7;
  }

  v49 = v45 + v42;
  v50 = v53;
  sub_1000112AC(v49, v53, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  v51 = sub_100178C7C(v48, v50);
  sub_100015F24(v50, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  sub_100015F24(v48, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  sub_1000059A8(v45, &qword_10041CAC0, &qword_1003744F0);
  if (v51)
  {
    goto LABEL_24;
  }

LABEL_8:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_100178A38(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0) + 20);
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
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100178B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 3)
  {
    if (v7 != 3)
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
  if (v12 == 5)
  {
    if (v13 != 5)
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v14 = v4[8];
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

  v19 = v4[9];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 2)
  {
    if (v21 == 2)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

LABEL_26:
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100178C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v51 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v51 - v15;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v54 = a1;
  v17 = v53[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v52;
      sub_1000112AC(&v16[v18], v52, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
  v24 = v53[6];
  v25 = (v54 + v24);
  v26 = *(v54 + v24 + 8);
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

  v29 = v53[7];
  v30 = (v54 + v29);
  v31 = *(v54 + v29 + 8);
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

  v34 = v53[8];
  v35 = (v54 + v34);
  v36 = *(v54 + v34 + 8);
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

  v39 = v53[9];
  v40 = *(v54 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    goto LABEL_7;
  }

  v42 = v53[10];
  v43 = *(v54 + v42);
  v44 = *(a2 + v42);
  if (v43 == 2)
  {
    if (v44 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v44 == 2 || ((v43 ^ v44) & 1) != 0)
  {
    goto LABEL_7;
  }

  v45 = v53[11];
  v46 = *(v54 + v45);
  v47 = *(a2 + v45);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v47 == 2 || ((v46 ^ v47) & 1) != 0)
  {
    goto LABEL_7;
  }

  v48 = v53[12];
  v49 = *(v54 + v48);
  v50 = *(a2 + v48);
  if (v49 == 2)
  {
    if (v50 == 2)
    {
LABEL_48:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else if (v50 != 2 && ((v49 ^ v50) & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10017914C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_100024A2C(&qword_100423DA0, &qword_100383008);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_14;
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
      goto LABEL_14;
    }
  }

  v23 = a1;
  v24 = a2;
  v25 = *(v17 + 24);
  v26 = *(v13 + 48);
  v41 = v23;
  v42 = v17;
  sub_10000A0A4(v23 + v25, v16, &qword_10041CA90, &qword_1003744C0);
  sub_10000A0A4(v24 + v25, &v16[v26], &qword_10041CA90, &qword_1003744C0);
  v27 = *(v5 + 48);
  if (v27(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v12, &qword_10041CA90, &qword_1003744C0);
    if (v27(&v16[v26], 1, v4) != 1)
    {
      sub_1000112AC(&v16[v26], v8, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      v32 = *(v4 + 20);
      v33 = *&v12[v32];
      v34 = *&v8[v32];
      if (v33 == v34 || (v35 = *&v12[v32], , , v36 = sub_1001321C8(v33, v34), , , v36))
      {
        type metadata accessor for UnknownStorage();
        sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
        sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
        sub_1000059A8(v16, &qword_10041CA90, &qword_1003744C0);
        if ((v37 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }

      sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      v28 = &qword_10041CA90;
      v29 = &qword_1003744C0;
LABEL_13:
      sub_1000059A8(v16, v28, v29);
      goto LABEL_14;
    }

    sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
LABEL_12:
    v28 = &qword_100423DA0;
    v29 = &qword_100383008;
    goto LABEL_13;
  }

  if (v27(&v16[v26], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1000059A8(v16, &qword_10041CA90, &qword_1003744C0);
LABEL_19:
  v38 = *(v42 + 28);
  v39 = *(v41 + v38);
  v40 = *(v24 + v38);
  if (v39 != 2)
  {
    if (v40 == 2 || ((v39 ^ v40) & 1) != 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v30 & 1;
  }

  if (v40 == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1001795E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
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

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100179800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 8)
  {
    if (v7 != 8)
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

uint64_t sub_1001798E4(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1001719FC(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, sub_10018450C) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
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

  v16 = v4[5];
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100179A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v54 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v56 = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v57 = a1;
  v17 = v56[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v55;
      sub_1000112AC(&v16[v18], v55, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
  v24 = v56[6];
  v25 = (v57 + v24);
  v26 = *(v57 + v24 + 8);
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

  v29 = v56[7];
  v30 = (v57 + v29);
  v31 = *(v57 + v29 + 8);
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

  v34 = v56[8];
  v35 = (v57 + v34);
  v36 = *(v57 + v34 + 4);
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

  v39 = v56[9];
  v40 = (v57 + v39);
  v41 = *(v57 + v39 + 4);
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

  v44 = v56[10];
  v45 = (v57 + v44);
  v46 = *(v57 + v44 + 4);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 4);
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

  v49 = v56[11];
  v50 = (v57 + v49);
  v51 = *(v57 + v49 + 4);
  v52 = (a2 + v49);
  v53 = *(a2 + v49 + 4);
  if (v51)
  {
    if (v53)
    {
LABEL_46:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v50 != *v52)
    {
      LOBYTE(v53) = 1;
    }

    if ((v53 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100179EDC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v14 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v50 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  v51 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  v20 = *(v51 + 24);
  v49 = v14;
  v21 = *(v14 + 48);
  v53 = a1;
  sub_10000A0A4(a1 + v20, v19, &qword_10041CA30, &qword_100374460);
  v52 = a2;
  sub_10000A0A4(a2 + v20, &v19[v21], &qword_10041CA30, &qword_100374460);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      v23 = v4;
      sub_1000059A8(v19, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v24 = v19;
LABEL_14:
    sub_1000059A8(v24, &qword_100423CE0, &qword_100393E90);
    goto LABEL_15;
  }

  sub_10000A0A4(v19, v13, &qword_10041CA30, &qword_100374460);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v23 = v4;
  v25 = &v19[v21];
  v26 = v48;
  sub_1000112AC(v25, v48, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v27 = sub_1001853C4(v13, v26, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v26, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v19, &qword_10041CA30, &qword_100374460);
  if ((v27 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v28 = v50;
  v29 = v51;
  v30 = *(v51 + 28);
  v31 = *(v49 + 48);
  sub_10000A0A4(v53 + v30, v50, &qword_10041CA30, &qword_100374460);
  v32 = v52;
  sub_10000A0A4(v52 + v30, v28 + v31, &qword_10041CA30, &qword_100374460);
  v33 = v23;
  if (v22(v28, 1, v23) != 1)
  {
    v34 = v47;
    sub_10000A0A4(v28, v47, &qword_10041CA30, &qword_100374460);
    if (v22((v28 + v31), 1, v33) != 1)
    {
      v37 = v48;
      sub_1000112AC(v28 + v31, v48, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v38 = sub_1001853C4(v34, v37, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v37, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v28, &qword_10041CA30, &qword_100374460);
      if ((v38 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_100015F24(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_13;
  }

  if (v22((v28 + v31), 1, v23) != 1)
  {
LABEL_13:
    v24 = v28;
    goto LABEL_14;
  }

  sub_1000059A8(v28, &qword_10041CA30, &qword_100374460);
LABEL_18:
  v39 = v29[8];
  v40 = *(v53 + v39);
  v41 = *(v32 + v39);
  if (v40 == 7)
  {
    if (v41 != 7)
    {
      goto LABEL_15;
    }
  }

  else if (v40 != v41)
  {
    goto LABEL_15;
  }

  v42 = v29[9];
  v43 = *(v53 + v42);
  v44 = *(v32 + v42);
  if (v43 == 7)
  {
    if (v44 != 7)
    {
      goto LABEL_15;
    }
  }

  else if (v43 != v44)
  {
    goto LABEL_15;
  }

  if (sub_100170024(*v53, *v32))
  {
    v45 = v29[5];
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v35 & 1;
  }

LABEL_15:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_10017A4C8(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CA98, &qword_1003744C8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v54 = &v52 - v8;
  v55 = sub_100024A2C(&qword_100423DB8, &qword_100383020);
  v9 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v58 = &v52 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v52 - v18;
  v20 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  v60 = a1;
  v25 = v59[5];
  v26 = *(v21 + 56);
  sub_10000A0A4(a1 + v25, v24, &qword_10041CA30, &qword_100374460);
  v27 = v61 + v25;
  v28 = v61;
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
  v36 = v59[6];
  v37 = (v60 + v36);
  v38 = *(v60 + v36 + 4);
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

  v41 = v59[7];
  v42 = *(v55 + 48);
  v43 = v58;
  sub_10000A0A4(v60 + v41, v58, &qword_10041CA98, &qword_1003744C8);
  v44 = v28 + v41;
  v45 = v43;
  sub_10000A0A4(v44, v43 + v42, &qword_10041CA98, &qword_1003744C8);
  v46 = v57;
  v47 = *(v56 + 48);
  if (v47(v43, 1, v57) == 1)
  {
    if (v47(v43 + v42, 1, v46) == 1)
    {
      sub_1000059A8(v43, &qword_10041CA98, &qword_1003744C8);
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v33 & 1;
    }

    goto LABEL_22;
  }

  v48 = v54;
  sub_10000A0A4(v45, v54, &qword_10041CA98, &qword_1003744C8);
  if (v47(v45 + v42, 1, v46) == 1)
  {
    sub_100015F24(v48, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
LABEL_22:
    v30 = &qword_100423DB8;
    v31 = &qword_100383020;
    v32 = v45;
    goto LABEL_7;
  }

  v49 = v45 + v42;
  v50 = v53;
  sub_1000112AC(v49, v53, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  v51 = sub_10017C17C(v48, v50);
  sub_100015F24(v50, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  sub_100015F24(v48, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  sub_1000059A8(v45, &qword_10041CA98, &qword_1003744C8);
  if (v51)
  {
    goto LABEL_24;
  }

LABEL_8:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_10017AB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v5 = v4[5];
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
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      return 0;
    }
  }

  else if (v35 == 2 || ((v34 ^ v35) & 1) != 0)
  {
    return 0;
  }

  v36 = v4[12];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 == 2)
    {
      goto LABEL_46;
    }

    return 0;
  }

  if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

LABEL_46:
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017AD50(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017AE18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
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
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_10017AF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v35 - v10;
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
  v38 = a1;
  v17 = v37[5];
  v18 = *(v13 + 56);
  sub_10000A0A4(a1 + v17, v16, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v17, &v16[v18], &qword_10041CA30, &qword_100374460);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v11, &qword_10041CA30, &qword_100374460);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v36;
      sub_1000112AC(&v16[v18], v36, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
  v24 = v37[6];
  v25 = *(v38 + v24);
  v26 = *(a2 + v24);
  if (v25 == 8)
  {
    if (v26 != 8)
    {
      goto LABEL_7;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_7;
  }

  v27 = v37[7];
  v28 = *(v38 + v27);
  v29 = *(a2 + v27);
  if (v28 == 8)
  {
    if (v29 != 8)
    {
      goto LABEL_7;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_7;
  }

  v30 = v37[8];
  v31 = (v38 + v30);
  v32 = *(v38 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (v34)
    {
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if ((v34 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10017B31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_10041CB28, &qword_100374558);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v29 - v11;
  v13 = sub_100024A2C(&qword_100423D20, &qword_100382F88);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v29 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
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
  v29[1] = v21;
  sub_10000A0A4(v21 + v23, v16, &qword_10041CB28, &qword_100374558);
  sub_10000A0A4(v22 + v23, &v16[v24], &qword_10041CB28, &qword_100374558);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_1000059A8(v16, &qword_10041CB28, &qword_100374558);
LABEL_15:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v26 & 1;
    }

    goto LABEL_11;
  }

  sub_10000A0A4(v16, v12, &qword_10041CB28, &qword_100374558);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
LABEL_11:
    sub_1000059A8(v16, &qword_100423D20, &qword_100382F88);
    goto LABEL_12;
  }

  sub_1000112AC(&v16[v24], v8, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  v28 = sub_10017B7A0(v12, v8);
  sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_1000059A8(v16, &qword_10041CB28, &qword_100374558);
  if (v28)
  {
    goto LABEL_15;
  }

LABEL_12:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_10017B6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 14)
  {
    if (v7 != 14)
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
  if (v9 == 2)
  {
    if (v10 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017B7A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
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

  v23 = v4[8];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 4)
  {
    if (v25 != 4)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  v26 = v4[9];
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

  v31 = v4[10];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      return 0;
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
      return 0;
    }
  }

  v36 = v4[11];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

  v39 = v4[12];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    return 0;
  }

  v42 = v4[13];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43 != 4)
  {
    if (v43 == v44)
    {
      goto LABEL_52;
    }

    return 0;
  }

  if (v44 != 4)
  {
    return 0;
  }

LABEL_52:
  v45 = v4[14];
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
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017BA3C(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  __chkstk_darwin(v3);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CAC8, &qword_1003744F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v60 = &v58 - v8;
  v61 = sub_100024A2C(&qword_100423D80, &qword_100382FE8);
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
  v65 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
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
  sub_10000A0A4(v66 + v41, v64, &qword_10041CAC8, &qword_1003744F8);
  v44 = v28 + v41;
  v45 = v43;
  sub_10000A0A4(v44, v43 + v42, &qword_10041CAC8, &qword_1003744F8);
  v46 = *(v62 + 48);
  v47 = v43;
  v48 = v63;
  if (v46(v47, 1, v63) == 1)
  {
    if (v46(v45 + v42, 1, v48) == 1)
    {
      sub_1000059A8(v45, &qword_10041CAC8, &qword_1003744F8);
LABEL_27:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v33 & 1;
    }

    goto LABEL_22;
  }

  v49 = v60;
  sub_10000A0A4(v45, v60, &qword_10041CAC8, &qword_1003744F8);
  if (v46(v45 + v42, 1, v48) == 1)
  {
    sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
LABEL_22:
    v30 = &qword_100423D80;
    v31 = &qword_100382FE8;
LABEL_23:
    v32 = v45;
    goto LABEL_7;
  }

  v50 = v48;
  v51 = v59;
  sub_1000112AC(v45 + v42, v59, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  v52 = *(v50 + 20);
  v53 = *(v49 + v52);
  v54 = *(v51 + v52);
  if (v53 != v54)
  {

    v55 = sub_100141864(v53, v54);

    if ((v55 & 1) == 0)
    {
      sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
      sub_100015F24(v60, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
      v30 = &qword_10041CAC8;
      v31 = &qword_1003744F8;
      goto LABEL_23;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v56 = v60;
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  sub_100015F24(v56, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  sub_1000059A8(v45, &qword_10041CAC8, &qword_1003744F8);
  if (v57)
  {
    goto LABEL_27;
  }

LABEL_8:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_10017C17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  v13 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 72)
  {
    if (v20 != 72)
    {
      goto LABEL_18;
    }
  }

  else if (v20 == 72 || qword_1003830C8[v19] != qword_1003830C8[v20])
  {
    goto LABEL_18;
  }

  v21 = v17[6];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_18;
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
      goto LABEL_18;
    }
  }

  v38 = v17;
  v26 = v17[7];
  v27 = *(v13 + 48);
  sub_10000A0A4(a1 + v26, v16, &qword_10041CA30, &qword_100374460);
  v28 = a2 + v26;
  v29 = v27;
  sub_10000A0A4(v28, &v16[v27], &qword_10041CA30, &qword_100374460);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) != 1)
  {
    sub_10000A0A4(v16, v12, &qword_10041CA30, &qword_100374460);
    if (v30(&v16[v29], 1, v4) != 1)
    {
      sub_1000112AC(&v16[v29], v8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v33 = sub_1001853C4(v12, v8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
      if ((v33 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_17:
    sub_1000059A8(v16, &qword_100423CE0, &qword_100393E90);
    goto LABEL_18;
  }

  if (v30(&v16[v29], 1, v4) != 1)
  {
    goto LABEL_17;
  }

  sub_1000059A8(v16, &qword_10041CA30, &qword_100374460);
LABEL_21:
  v34 = v38[8];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 != 72)
  {
    if (v36 == 72 || qword_1003830C8[v35] != qword_1003830C8[v36])
    {
      goto LABEL_18;
    }

LABEL_26:
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v31 & 1;
  }

  if (v36 == 72)
  {
    goto LABEL_26;
  }

LABEL_18:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_10017C5A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
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
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 4)
  {
    if (v20 != 4)
    {
      return 0;
    }
  }

  else if (v19 != v20)
  {
    return 0;
  }

  v21 = v4[9];
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

  v26 = v4[10];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 != 4)
  {
    if (v27 == v28)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v28 != 4)
  {
    return 0;
  }

LABEL_31:
  v29 = v4[11];
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

  v32 = v4[12];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 4);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 4);
  if (v34)
  {
    if (!v36)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017C7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
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
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 67)
  {
    if (v23 != 67)
    {
      return 0;
    }
  }

  else if (v22 != v23)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 != 5)
  {
    if (v25 == v26)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v26 != 5)
  {
    return 0;
  }

LABEL_27:
  v27 = v4[9];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 3)
  {
    if (v29 != 3)
    {
      return 0;
    }
  }

  else if (v28 != v29)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017C968(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  __chkstk_darwin(v3);
  v73 = &v71[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v74 = &v71[-v8];
  v75 = sub_100024A2C(&qword_100423DB0, &qword_100383018);
  v9 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v78 = &v71[-v10];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v82 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v79 = &v71[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v81 = &v71[-v20];
  __chkstk_darwin(v19);
  v22 = &v71[-v21];
  v23 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v80 = &v71[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v29 = &v71[-v28];
  __chkstk_darwin(v27);
  v31 = &v71[-v30];
  v84 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v85 = v23;
  v32 = v84[5];
  v33 = *(v23 + 48);
  v83 = a1;
  sub_10000A0A4(a1 + v32, v31, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v86 + v32, &v31[v33], &qword_10041CA30, &qword_100374460);
  v34 = *(v12 + 48);
  if (v34(v31, 1, v11) == 1)
  {
    if (v34(&v31[v33], 1, v11) == 1)
    {
      sub_1000059A8(v31, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

LABEL_6:
    v35 = &qword_100423CE0;
    v36 = &qword_100393E90;
    v37 = v31;
LABEL_14:
    sub_1000059A8(v37, v35, v36);
    goto LABEL_15;
  }

  sub_10000A0A4(v31, v22, &qword_10041CA30, &qword_100374460);
  if (v34(&v31[v33], 1, v11) == 1)
  {
    sub_100015F24(v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v38 = &v31[v33];
  v39 = v82;
  sub_1000112AC(v38, v82, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v40 = sub_1001853C4(v22, v39, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v39, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v31, &qword_10041CA30, &qword_100374460);
  if ((v40 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v41 = v84;
  v42 = v84[6];
  v43 = *(v85 + 48);
  v44 = v83;
  sub_10000A0A4(v83 + v42, v29, &qword_10041CA30, &qword_100374460);
  v45 = v86 + v42;
  v46 = v86;
  sub_10000A0A4(v45, &v29[v43], &qword_10041CA30, &qword_100374460);
  if (v34(v29, 1, v11) == 1)
  {
    if (v34(&v29[v43], 1, v11) == 1)
    {
      sub_1000059A8(v29, &qword_10041CA30, &qword_100374460);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v47 = v81;
  sub_10000A0A4(v29, v81, &qword_10041CA30, &qword_100374460);
  if (v34(&v29[v43], 1, v11) == 1)
  {
    sub_100015F24(v47, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_13:
    v35 = &qword_100423CE0;
    v36 = &qword_100393E90;
    v37 = v29;
    goto LABEL_14;
  }

  v50 = &v29[v43];
  v51 = v82;
  sub_1000112AC(v50, v82, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v72 = sub_1001853C4(v47, v51, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v47, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v29, &qword_10041CA30, &qword_100374460);
  if ((v72 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v52 = v41[7];
  v53 = *(v44 + v52);
  v54 = *(v46 + v52);
  if (v53 == 19)
  {
    if (v54 != 19)
    {
      goto LABEL_15;
    }
  }

  else if (v53 != v54)
  {
    goto LABEL_15;
  }

  v55 = v41[8];
  v56 = *(v85 + 48);
  v57 = v80;
  sub_10000A0A4(v44 + v55, v80, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v46 + v55, &v57[v56], &qword_10041CA30, &qword_100374460);
  if (v34(v57, 1, v11) != 1)
  {
    v58 = v79;
    sub_10000A0A4(v57, v79, &qword_10041CA30, &qword_100374460);
    if (v34(&v57[v56], 1, v11) != 1)
    {
      v59 = &v57[v56];
      v60 = v82;
      sub_1000112AC(v59, v82, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v61 = sub_1001853C4(v58, v60, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v60, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_100015F24(v58, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      sub_1000059A8(v57, &qword_10041CA30, &qword_100374460);
      if ((v61 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

    sub_100015F24(v58, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_27;
  }

  if (v34(&v57[v56], 1, v11) != 1)
  {
LABEL_27:
    v35 = &qword_100423CE0;
    v36 = &qword_100393E90;
    v37 = v57;
    goto LABEL_14;
  }

  sub_1000059A8(v57, &qword_10041CA30, &qword_100374460);
LABEL_29:
  v62 = v84[9];
  v63 = *(v75 + 48);
  v64 = v78;
  sub_10000A0A4(v44 + v62, v78, &qword_10041CAA0, &qword_1003744D0);
  sub_10000A0A4(v46 + v62, &v64[v63], &qword_10041CAA0, &qword_1003744D0);
  v65 = v77;
  v66 = *(v76 + 48);
  if (v66(v64, 1, v77) == 1)
  {
    if (v66(&v64[v63], 1, v65) == 1)
    {
      sub_1000059A8(v64, &qword_10041CAA0, &qword_1003744D0);
LABEL_36:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v48 & 1;
    }

    goto LABEL_34;
  }

  v67 = v74;
  sub_10000A0A4(v64, v74, &qword_10041CAA0, &qword_1003744D0);
  if (v66(&v64[v63], 1, v65) == 1)
  {
    sub_100015F24(v67, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
LABEL_34:
    v35 = &qword_100423DB0;
    v36 = &qword_100383018;
    v37 = v64;
    goto LABEL_14;
  }

  v68 = &v64[v63];
  v69 = v73;
  sub_1000112AC(v68, v73, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  v70 = sub_10017C7B4(v67, v69);
  sub_100015F24(v69, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  sub_100015F24(v67, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  sub_1000059A8(v64, &qword_10041CAA0, &qword_1003744D0);
  if (v70)
  {
    goto LABEL_36;
  }

LABEL_15:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_10017D3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 5)
  {
    if (v7 != 5)
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
  if (v9 == 3)
  {
    if (v10 != 3)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v11 = v4[7];
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

  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = *v20 == *v22 && v21 == v23;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_25:
    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v23)
  {
    goto LABEL_25;
  }

  return 0;
}

uint64_t sub_10017D530(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v32 = a4;
  v33 = a5;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v29 - v14;
  v16 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  v30 = a3(0);
  v21 = *(v30 + 24);
  v22 = *(v17 + 56);
  v34 = a1;
  sub_10000A0A4(a1 + v21, v20, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v21, &v20[v22], &qword_10041CA30, &qword_100374460);
  v23 = *(v9 + 48);
  if (v23(v20, 1, v8) == 1)
  {
    if (v23(&v20[v22], 1, v8) == 1)
    {
      sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10000A0A4(v20, v15, &qword_10041CA30, &qword_100374460);
  if (v23(&v20[v22], 1, v8) == 1)
  {
    sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v20, &qword_100423CE0, &qword_100393E90);
LABEL_10:
    v27 = 0;
    return v27 & 1;
  }

  v24 = v31;
  sub_1000112AC(&v20[v22], v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v25 = sub_1001853C4(v15, v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v24, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
  if ((v25 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1001705AC(*v34, *a2, v32, v33) & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = *(v30 + 20);
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v27 & 1;
}

uint64_t sub_10017D8D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 5)
  {
    if (v7 != 5)
    {
      return 0;
    }
  }

  else if (v7 == 5 || qword_100383308[v6] != qword_100383308[v7])
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v10 == 5 || qword_100383308[v9] != qword_100383308[v10])
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
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10017DA48(uint64_t a1, uint64_t a2)
{
  v110 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  __chkstk_darwin(v3);
  v96 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CB18, &qword_100374548);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v97 = &v95 - v8;
  v98 = sub_100024A2C(&qword_100423D30, &qword_100382F98);
  v9 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v101 = &v95 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  v105 = *(v11 - 8);
  v106 = v11;
  v12 = *(v105 + 64);
  __chkstk_darwin(v11);
  v102 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_10041CB10, &qword_100374540);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v103 = &v95 - v16;
  v104 = sub_100024A2C(&qword_100423D38, &qword_100382FA0);
  v17 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v107 = &v95 - v18;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v95 - v26;
  v28 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v32 = &v95 - v31;
  v108 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  v109 = a1;
  v33 = *(v108 + 20);
  v34 = *(v29 + 56);
  sub_10000A0A4(a1 + v33, v32, &qword_10041CA30, &qword_100374460);
  v35 = v110 + v33;
  v36 = v110;
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
LABEL_15:
    sub_1000059A8(v40, v38, v39);
    goto LABEL_16;
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
    goto LABEL_16;
  }

LABEL_8:
  v43 = v108;
  v42 = v109;
  v44 = *(v108 + 24);
  v45 = *(v104 + 48);
  v46 = v107;
  sub_10000A0A4(v109 + v44, v107, &qword_10041CB10, &qword_100374540);
  sub_10000A0A4(v36 + v44, v46 + v45, &qword_10041CB10, &qword_100374540);
  v47 = v106;
  v48 = *(v105 + 48);
  if (v48(v46, 1, v106) == 1)
  {
    if (v48(v46 + v45, 1, v47) == 1)
    {
      sub_1000059A8(v46, &qword_10041CB10, &qword_100374540);
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v49 = v103;
  sub_10000A0A4(v46, v103, &qword_10041CB10, &qword_100374540);
  if (v48(v46 + v45, 1, v47) == 1)
  {
    sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
LABEL_13:
    v38 = &qword_100423D38;
    v39 = &qword_100382FA0;
LABEL_14:
    v40 = v46;
    goto LABEL_15;
  }

  v52 = v102;
  sub_1000112AC(v46 + v45, v102, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  v53 = *(v47 + 20);
  v54 = *(v49 + v53);
  v55 = *(v52 + v53);
  if (v54 != v55)
  {
    v56 = *(v49 + v53);

    v57 = sub_1001587AC(v54, v55);

    if ((v57 & 1) == 0)
    {
      sub_100015F24(v52, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
      sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
      v38 = &qword_10041CB10;
      v39 = &qword_100374540;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v52, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  sub_1000059A8(v46, &qword_10041CB10, &qword_100374540);
  if ((v58 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v59 = v43[7];
  v60 = *(v42 + v59);
  v61 = *(v36 + v59);
  if (v60 == 2)
  {
    if (v61 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v61 == 2 || ((v60 ^ v61) & 1) != 0)
  {
    goto LABEL_16;
  }

  v62 = v43[8];
  v63 = (v42 + v62);
  v64 = *(v42 + v62 + 4);
  v65 = (v36 + v62);
  v66 = *(v36 + v62 + 4);
  if (v64)
  {
    if (!v66)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v63 != *v65)
    {
      LOBYTE(v66) = 1;
    }

    if (v66)
    {
      goto LABEL_16;
    }
  }

  v67 = v43[9];
  v68 = *(v42 + v67);
  v69 = *(v36 + v67);
  if (v68 == 5)
  {
    if (v69 != 5)
    {
      goto LABEL_16;
    }
  }

  else if (v68 != v69)
  {
    goto LABEL_16;
  }

  v70 = v43[10];
  v71 = *(v98 + 48);
  v72 = v101;
  sub_10000A0A4(v42 + v70, v101, &qword_10041CB18, &qword_100374548);
  v73 = v36 + v70;
  v46 = v72;
  sub_10000A0A4(v73, v72 + v71, &qword_10041CB18, &qword_100374548);
  v74 = v100;
  v75 = *(v99 + 48);
  if (v75(v72, 1, v100) != 1)
  {
    v81 = v97;
    sub_10000A0A4(v46, v97, &qword_10041CB18, &qword_100374548);
    if (v75(v46 + v71, 1, v74) == 1)
    {
      sub_100015F24(v81, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
      goto LABEL_45;
    }

    v82 = v46 + v71;
    v83 = v96;
    sub_1000112AC(v82, v96, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
    v84 = *(v74 + 20);
    v85 = (v81 + v84);
    v86 = *(v81 + v84 + 4);
    v87 = (v83 + v84);
    v88 = *(v83 + v84 + 4);
    if (v86)
    {
      if (!v88)
      {
LABEL_48:
        sub_100015F24(v83, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
        sub_100015F24(v81, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
        v38 = &qword_10041CB18;
        v39 = &qword_100374548;
        goto LABEL_14;
      }
    }

    else
    {
      if (*v85 != *v87)
      {
        LOBYTE(v88) = 1;
      }

      if (v88)
      {
        goto LABEL_48;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
    v94 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100015F24(v83, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
    sub_100015F24(v81, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
    sub_1000059A8(v46, &qword_10041CB18, &qword_100374548);
    if ((v94 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  if (v75(v72 + v71, 1, v74) != 1)
  {
LABEL_45:
    v38 = &qword_100423D30;
    v39 = &qword_100382F98;
    goto LABEL_14;
  }

  sub_1000059A8(v72, &qword_10041CB18, &qword_100374548);
LABEL_40:
  v76 = v43[11];
  v77 = (v42 + v76);
  v78 = *(v42 + v76 + 4);
  v79 = (v36 + v76);
  v80 = *(v36 + v76 + 4);
  if (v78)
  {
    if (!v80)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v77 != *v79)
    {
      LOBYTE(v80) = 1;
    }

    if (v80)
    {
      goto LABEL_16;
    }
  }

  v89 = v43[12];
  v90 = (v42 + v89);
  v91 = *(v42 + v89 + 4);
  v92 = (v36 + v89);
  v93 = *(v36 + v89 + 4);
  if (v91)
  {
    if (v93)
    {
LABEL_63:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v50 & 1;
    }
  }

  else
  {
    if (*v90 != *v92)
    {
      LOBYTE(v93) = 1;
    }

    if ((v93 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_16:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_10017E5AC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(char *, char *))
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v30 - v15;
  v17 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  v30 = a3(0);
  v22 = *(v30 + 24);
  v23 = *(v18 + 56);
  v35 = a1;
  sub_10000A0A4(a1 + v22, v21, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v22, &v21[v23], &qword_10041CA30, &qword_100374460);
  v24 = *(v10 + 48);
  if (v24(v21, 1, v9) == 1)
  {
    if (v24(&v21[v23], 1, v9) == 1)
    {
      sub_1000059A8(v21, &qword_10041CA30, &qword_100374460);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10000A0A4(v21, v16, &qword_10041CA30, &qword_100374460);
  if (v24(&v21[v23], 1, v9) == 1)
  {
    sub_100015F24(v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    sub_1000059A8(v21, &qword_100423CE0, &qword_100393E90);
LABEL_10:
    v28 = 0;
    return v28 & 1;
  }

  v25 = v31;
  sub_1000112AC(&v21[v23], v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v26 = sub_1001853C4(v16, v25, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v25, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v21, &qword_10041CA30, &qword_100374460);
  if ((v26 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_10017139C(*v35, *a2, v32, v33, v34) & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = *(v30 + 20);
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v28 & 1;
}

uint64_t sub_10017E950(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CAB0, &qword_1003744E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v54 = &v52 - v8;
  v55 = sub_100024A2C(&qword_100423D98, &qword_100383000);
  v9 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v58 = &v52 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v52 - v18;
  v20 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  v60 = a1;
  v25 = v59[5];
  v26 = *(v21 + 56);
  sub_10000A0A4(a1 + v25, v24, &qword_10041CA30, &qword_100374460);
  v27 = v61 + v25;
  v28 = v61;
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
  v36 = v59[6];
  v37 = (v60 + v36);
  v38 = *(v60 + v36 + 4);
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

  v41 = v59[7];
  v42 = *(v55 + 48);
  v43 = v58;
  sub_10000A0A4(v60 + v41, v58, &qword_10041CAB0, &qword_1003744E0);
  v44 = v28 + v41;
  v45 = v43;
  sub_10000A0A4(v44, v43 + v42, &qword_10041CAB0, &qword_1003744E0);
  v46 = v57;
  v47 = *(v56 + 48);
  if (v47(v43, 1, v57) == 1)
  {
    if (v47(v43 + v42, 1, v46) == 1)
    {
      sub_1000059A8(v43, &qword_10041CAB0, &qword_1003744E0);
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v33 & 1;
    }

    goto LABEL_22;
  }

  v48 = v54;
  sub_10000A0A4(v45, v54, &qword_10041CAB0, &qword_1003744E0);
  if (v47(v45 + v42, 1, v46) == 1)
  {
    sub_100015F24(v48, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
LABEL_22:
    v30 = &qword_100423D98;
    v31 = &qword_100383000;
    v32 = v45;
    goto LABEL_7;
  }

  v49 = v45 + v42;
  v50 = v53;
  sub_1000112AC(v49, v53, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  v51 = sub_10017F6F4(v48, v50);
  sub_100015F24(v50, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_100015F24(v48, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_1000059A8(v45, &qword_10041CAB0, &qword_1003744E0);
  if (v51)
  {
    goto LABEL_24;
  }

LABEL_8:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_10017EFB4(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  __chkstk_darwin(v3);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v60 = &v58 - v8;
  v61 = sub_100024A2C(&qword_100423DA0, &qword_100383008);
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
  v65 = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
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
  sub_10000A0A4(v66 + v41, v64, &qword_10041CA90, &qword_1003744C0);
  v44 = v28 + v41;
  v45 = v43;
  sub_10000A0A4(v44, v43 + v42, &qword_10041CA90, &qword_1003744C0);
  v46 = *(v62 + 48);
  v47 = v43;
  v48 = v63;
  if (v46(v47, 1, v63) == 1)
  {
    if (v46(v45 + v42, 1, v48) == 1)
    {
      sub_1000059A8(v45, &qword_10041CA90, &qword_1003744C0);
LABEL_27:
      type metadata accessor for UnknownStorage();
      sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v33 & 1;
    }

    goto LABEL_22;
  }

  v49 = v60;
  sub_10000A0A4(v45, v60, &qword_10041CA90, &qword_1003744C0);
  if (v46(v45 + v42, 1, v48) == 1)
  {
    sub_100015F24(v49, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
LABEL_22:
    v30 = &qword_100423DA0;
    v31 = &qword_100383008;
LABEL_23:
    v32 = v45;
    goto LABEL_7;
  }

  v50 = v48;
  v51 = v59;
  sub_1000112AC(v45 + v42, v59, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  v52 = *(v50 + 20);
  v53 = *(v49 + v52);
  v54 = *(v51 + v52);
  if (v53 != v54)
  {

    v55 = sub_1001321C8(v53, v54);

    if (!v55)
    {
      sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      sub_100015F24(v60, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      v30 = &qword_10041CA90;
      v31 = &qword_1003744C0;
      goto LABEL_23;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v56 = v60;
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v51, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  sub_100015F24(v56, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  sub_1000059A8(v45, &qword_10041CA90, &qword_1003744C0);
  if (v57)
  {
    goto LABEL_27;
  }

LABEL_8:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_10017F6F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 3)
  {
    if (v7 != 3)
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
  v49 = *(a1 + v48);
  v50 = *(a2 + v48);
  if (v49 != 8)
  {
    if (v49 == v50)
    {
      goto LABEL_57;
    }

    return 0;
  }

  if (v50 != 8)
  {
    return 0;
  }

LABEL_57:
  v51 = v4[15];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 4);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 4);
  if (v53)
  {
    if (!v55)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}