uint64_t sub_1C05BDAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05BDB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17EA8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BDBC8(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17CC8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BDC34()
{
  sub_1C05C5C78(&qword_1EBE17CC8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BDCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 24);
  if (!sub_1C05AD890(*(a1 + 16), *(a1 + 24), *(a2 + 16)))
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C05BDDA0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17BA0);
  __swift_project_value_buffer(v0, qword_1EBE17BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C0973540;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "year";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "month";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "dayOfMonth";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dayOfWeek";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "dateTimeHoliday";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "qualifier";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isStart";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isUserDefined";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "periods";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "calendarSystem";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "fractionalPeriod";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "dayOfWeekOrdinalValue";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Date.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 6)
      {
        if (result > 9)
        {
          switch(result)
          {
            case 10:
              sub_1C05C5D14();
              goto LABEL_27;
            case 11:
              sub_1C05BE510();
              break;
            case 12:
              sub_1C095D48C();
              break;
          }
        }

        else if (result == 7 || result == 8)
        {
          sub_1C095D44C();
        }

        else
        {
          type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
          sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
          sub_1C095D54C();
        }
      }

      else if (result > 3)
      {
        if (result == 4)
        {
          sub_1C05C5D68();
          goto LABEL_27;
        }

        if (result != 5)
        {
          sub_1C05C5CC0();
LABEL_27:
          sub_1C095D45C();
          goto LABEL_5;
        }

        sub_1C05BE45C();
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        sub_1C095D52C();
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05BE45C()
{
  v0 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 60);
  type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  sub_1C05C5C78(&qword_1EBE17CC8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  return sub_1C095D55C();
}

uint64_t sub_1C05BE510()
{
  v0 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 64);
  type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  sub_1C05C5C78(&qword_1EBE17CC0, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  return sub_1C095D55C();
}

uint64_t Com_Apple_Siri_Product_Proto_Date.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v31 - v4;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    result = sub_1C095D67C();
    if (v1)
    {
      return result;
    }

    if (!*(v0 + 4))
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_1C095D67C();
    if (v1)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (*(v0 + 4))
  {
    goto LABEL_6;
  }

LABEL_7:
  if (!*(v0 + 8) || (result = sub_1C095D67C(), !v1))
  {
    v33 = v1;
    if (*(v0 + 16))
    {
      v18 = *(v0 + 24);
      v37 = *(v0 + 16);
      v38 = v18;
      sub_1C05C5D68();
      v19 = v33;
      result = sub_1C095D60C();
      if (v19)
      {
        return result;
      }

      v33 = 0;
    }

    v32 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
    sub_1C05149F8(v0 + v32[15], v11, &qword_1EBE17C40, &unk_1C099BB60);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1C05145B4(v11, &qword_1EBE17C40, &unk_1C099BB60);
    }

    else
    {
      sub_1C05B3C0C(v11, v16, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
      sub_1C05C5C78(&qword_1EBE17CC8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
      v20 = v33;
      sub_1C095D6AC();
      result = sub_1C05B4278(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
      if (v20)
      {
        return result;
      }

      v33 = 0;
    }

    v21 = v39;
    if (*(v0 + 32))
    {
      v22 = *(v0 + 40);
      v37 = *(v0 + 32);
      v38 = v22;
      sub_1C05C5CC0();
      v23 = v33;
      result = sub_1C095D60C();
      if (v23)
      {
        return result;
      }
    }

    else
    {
      v23 = v33;
    }

    if (*(v0 + 41) != 1 || (result = sub_1C095D5FC(), !v23))
    {
      if (*(v0 + 42) != 1 || (result = sub_1C095D5FC(), !v23))
      {
        v24 = v23;
        if (*(*(v0 + 48) + 16))
        {
          type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
          sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
          result = sub_1C095D69C();
          if (v23)
          {
            return result;
          }

          v24 = 0;
        }

        if (*(v0 + 56))
        {
          v25 = *(v0 + 64);
          v37 = *(v0 + 56);
          v38 = v25;
          sub_1C05C5D14();
          result = sub_1C095D60C();
          v26 = v36;
          if (v24)
          {
            return result;
          }

          v24 = 0;
        }

        else
        {
          v26 = v36;
        }

        sub_1C05149F8(v0 + v32[16], v21, &qword_1EBE17C48, &unk_1C0973560);
        if ((*(v35 + 48))(v21, 1, v26) == 1)
        {
          sub_1C05145B4(v21, &qword_1EBE17C48, &unk_1C0973560);
          v27 = v24;
        }

        else
        {
          v28 = v21;
          v29 = v34;
          sub_1C05B3C0C(v28, v34, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
          sub_1C05C5C78(&qword_1EBE17CC0, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
          v27 = v24;
          sub_1C095D6AC();
          result = sub_1C05B4278(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
          if (v24)
          {
            return result;
          }
        }

        if (!*(v0 + 68) || (result = sub_1C095D62C(), !v27))
        {
          v30 = v0 + v32[14];
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C05BEC58@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 41) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 68) = 0;
  v5 = a2 + a1[14];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = a1[15];
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[16];
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_1C05BED74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05BEDE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C05BEE5C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t sub_1C05BEEB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17EA0, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BEF50(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BEFBC()
{
  sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);

  return sub_1C095D5AC();
}

uint64_t Com_Apple_Siri_Product_Proto_Duration.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D4EC();
      }

      else if (result == 2)
      {
        sub_1C05C5C24();
        sub_1C095D45C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Duration.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (result = sub_1C095D65C(), !v1))
  {
    v2 = *(v0 + 8);
    v3 = *(v0 + 16);
    if (!Com_Apple_Siri_Product_Proto_Period.rawValue.getter() || (sub_1C05C5C24(), result = sub_1C095D60C(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0) + 24);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C05BF290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1 + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05BF308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17E98, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BF3A8(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17E28, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BF414()
{
  sub_1C05C5C78(&qword_1EBE17E28, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BF4B0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17BD0);
  __swift_project_value_buffer(v0, qword_1EBE17BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "quantity";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "period";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "qualifier";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isUserDefined";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Interval.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
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
          sub_1C05C5CC0();
          goto LABEL_15;
        }

        if (result == 4)
        {
          sub_1C095D44C();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_1C095D4EC();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          sub_1C05C5C24();
LABEL_15:
          v0 = v3;
          sub_1C095D45C();
        }
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Interval.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (result = sub_1C095D65C(), !v1))
  {
    v2 = v1;
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
    if (Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
    {
      sub_1C05C5C24();
      result = sub_1C095D60C();
      if (v1)
      {
        return result;
      }

      v2 = 0;
    }

    if (*(v0 + 24))
    {
      v8 = *(v0 + 24);
      v9 = *(v0 + 32);
      sub_1C05C5CC0();
      v6 = v2;
      result = sub_1C095D60C();
      if (v2)
      {
        return result;
      }
    }

    else
    {
      v6 = v2;
    }

    if (*(v0 + 33) != 1 || (result = sub_1C095D5FC(), !v6))
    {
      v7 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0) + 32);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C05BF9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v2 = a2 + *(a1 + 32);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05BFA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17E90, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BFB08(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17E40, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BFB74()
{
  sub_1C05C5C78(&qword_1EBE17E40, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BFC28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C096E0D0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69D26E0];
  v15 = sub_1C095D6BC();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = "period";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v16();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Recurrence.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D48C();
      }

      else if (result == 2)
      {
        sub_1C05C5C24();
        sub_1C095D45C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Recurrence.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C095D62C(), !v1))
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
    if (!Com_Apple_Siri_Product_Proto_Period.rawValue.getter() || (sub_1C05C5C24(), result = sub_1C095D60C(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0) + 24);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C05C0000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1 + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05C007C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17E88, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05C011C(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17E58, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05C0188()
{
  sub_1C05C5C78(&qword_1EBE17E58, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);

  return sub_1C095D5AC();
}

uint64_t sub_1C05C0224()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17C00);
  __swift_project_value_buffer(v0, qword_1EBE17C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C09711F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "startDate";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "endDate";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "interval";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "recurrence";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "startTime";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "endTime";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "startPosition";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "endPosition";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "temporalIntent";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C05C0604()
{
  v0 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C05C0644();
  qword_1EBE17C18 = result;
  return result;
}

uint64_t sub_1C05C0644()
{
  v1 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate, 1, 1, v2);
  v4 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v0 + v10, 1, 1, v11);
  v12(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime, 1, 1, v11);
  *(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition) = 0;
  v13 = v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  *v13 = 0;
  *(v13 + 8) = 1;
  return v0;
}

uint64_t sub_1C05C085C()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate, &qword_1EBE17C50, &unk_1C099BB50);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate, &qword_1EBE17C50, &unk_1C099BB50);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration, &qword_1EBE17C58, &unk_1C0973570);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval, &qword_1EBE17C60, &unk_1C099BB40);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence, &qword_1EBE17C68, &unk_1C0973580);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime, &qword_1EBE17C70, &unk_1C099BB30);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime, &qword_1EBE17C70, &unk_1C099BB30);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1C05C5474(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return sub_1C05C0A54(v11, a1, a2, a3);
}

uint64_t sub_1C05C0A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            sub_1C05C1098();
          }

          else
          {
            sub_1C05C1174();
          }
        }

        else
        {
          switch(result)
          {
            case 8:
              sub_1C05C1250(a2, a1, a3, a4, &OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition);
              break;
            case 9:
              sub_1C05C1250(a2, a1, a3, a4, &OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition);
              break;
            case 10:
              sub_1C05C12D8();
              break;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C05C0C4C();
        }

        else if (result == 2)
        {
          sub_1C05C0D28();
        }
      }

      else if (result == 3)
      {
        sub_1C05C0E04();
      }

      else if (result == 4)
      {
        sub_1C05C0EE0();
      }

      else
      {
        sub_1C05C0FBC();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05C0C4C()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C0D28()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C0E04()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  sub_1C05C5C78(&qword_1EBE17E28, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C0EE0()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  sub_1C05C5C78(&qword_1EBE17E40, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C0FBC()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  sub_1C05C5C78(&qword_1EBE17E58, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C1098()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C1174()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05C1250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_1C095D48C();
  return swift_endAccess();
}

uint64_t sub_1C05C12D8()
{
  swift_beginAccess();
  sub_1C05C78E4();
  sub_1C095D45C();
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0);
  result = sub_1C05C13E0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05C13E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a3;
  v104 = a4;
  v102 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v82 - v9;
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v82 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = &v82 - v17;
  v92 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v90 = *(v92 - 8);
  v18 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v85 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v95 = &v82 - v22;
  v96 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v94 = *(v96 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v89 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v99 = &v82 - v27;
  v100 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v98 = *(v100 - 8);
  v28 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v93 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v82 - v35;
  v37 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v97 = &v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v82 - v42;
  v44 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  v101 = a1;
  sub_1C05149F8(a1 + v44, v36, &qword_1EBE17C50, &unk_1C099BB50);
  v45 = *(v38 + 48);
  if (v45(v36, 1, v37) == 1)
  {
    sub_1C05145B4(v36, &qword_1EBE17C50, &unk_1C099BB50);
    v46 = v107;
  }

  else
  {
    sub_1C05B3C0C(v36, v43, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    v47 = v107;
    sub_1C095D6AC();
    v46 = v47;
    if (v47)
    {
      return sub_1C05B4278(v43, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    }

    sub_1C05B4278(v43, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  }

  v48 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  v49 = v101;
  swift_beginAccess();
  sub_1C05149F8(v49 + v48, v34, &qword_1EBE17C50, &unk_1C099BB50);
  if (v45(v34, 1, v37) == 1)
  {
    v107 = v46;
    sub_1C05145B4(v34, &qword_1EBE17C50, &unk_1C099BB50);
    goto LABEL_11;
  }

  v50 = v34;
  v51 = v97;
  sub_1C05B3C0C(v50, v97, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C05C5C78(&qword_1EBE17E10, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C095D6AC();
  if (v46)
  {
    v43 = v51;
    return sub_1C05B4278(v43, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  }

  v107 = 0;
  sub_1C05B4278(v51, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
LABEL_11:
  v53 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  v54 = v99;
  sub_1C05149F8(v49 + v53, v99, &qword_1EBE17C58, &unk_1C0973570);
  if ((*(v98 + 48))(v54, 1, v100) == 1)
  {
    sub_1C05145B4(v54, &qword_1EBE17C58, &unk_1C0973570);
    v55 = v107;
  }

  else
  {
    v56 = v54;
    v57 = v93;
    sub_1C05B3C0C(v56, v93, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    sub_1C05C5C78(&qword_1EBE17E28, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    v58 = v107;
    sub_1C095D6AC();
    v55 = v58;
    result = sub_1C05B4278(v57, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    if (v58)
    {
      return result;
    }
  }

  v59 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  v60 = v95;
  sub_1C05149F8(v49 + v59, v95, &qword_1EBE17C60, &unk_1C099BB40);
  if ((*(v94 + 48))(v60, 1, v96) == 1)
  {
    sub_1C05145B4(v60, &qword_1EBE17C60, &unk_1C099BB40);
  }

  else
  {
    v61 = v60;
    v62 = v89;
    sub_1C05B3C0C(v61, v89, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
    sub_1C05C5C78(&qword_1EBE17E40, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
    sub_1C095D6AC();
    result = sub_1C05B4278(v62, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
    if (v55)
    {
      return result;
    }
  }

  v63 = v91;
  v64 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C05149F8(v49 + v64, v63, &qword_1EBE17C68, &unk_1C0973580);
  if ((*(v90 + 48))(v63, 1, v92) == 1)
  {
    sub_1C05145B4(v63, &qword_1EBE17C68, &unk_1C0973580);
  }

  else
  {
    v65 = v85;
    sub_1C05B3C0C(v63, v85, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    sub_1C05C5C78(&qword_1EBE17E58, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    sub_1C095D6AC();
    result = sub_1C05B4278(v65, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    if (v55)
    {
      return result;
    }
  }

  v66 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  v67 = v49 + v66;
  v68 = v86;
  sub_1C05149F8(v67, v86, &qword_1EBE17C70, &unk_1C099BB30);
  v69 = v88;
  v70 = *(v87 + 48);
  if (v70(v68, 1, v88) == 1)
  {
    sub_1C05145B4(v68, &qword_1EBE17C70, &unk_1C099BB30);
  }

  else
  {
    v71 = v83;
    sub_1C05B3C0C(v68, v83, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C095D6AC();
    result = sub_1C05B4278(v71, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    if (v55)
    {
      return result;
    }
  }

  v72 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  v73 = v101;
  swift_beginAccess();
  v74 = v73 + v72;
  v75 = v84;
  sub_1C05149F8(v74, v84, &qword_1EBE17C70, &unk_1C099BB30);
  if (v70(v75, 1, v69) == 1)
  {
    sub_1C05145B4(v75, &qword_1EBE17C70, &unk_1C099BB30);
  }

  else
  {
    v76 = v82;
    sub_1C05B3C0C(v75, v82, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C095D6AC();
    result = sub_1C05B4278(v76, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    if (v55)
    {
      return result;
    }
  }

  v77 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  v78 = v101;
  swift_beginAccess();
  if (!*(v78 + v77) || (result = sub_1C095D62C(), !v55))
  {
    v79 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
    swift_beginAccess();
    if (!*(v78 + v79) || (result = sub_1C095D62C(), !v55))
    {
      v80 = (v78 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent);
      result = swift_beginAccess();
      if (*v80)
      {
        v81 = *(v80 + 8);
        v105 = *v80;
        v106 = v81;
        sub_1C05C78E4();
        return sub_1C095D60C();
      }
    }
  }

  return result;
}

BOOL sub_1C05C219C(uint64_t a1, uint64_t a2)
{
  v239 = a2;
  v207 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v209 = *(v207 - 8);
  v3 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v200 = &v197[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17ED0, &qword_1C0974DE8);
  v5 = *(*(v206 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v206);
  v201 = &v197[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v205 = &v197[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v199 = &v197[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v203 = &v197[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v202 = &v197[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v215 = &v197[-v17];
  v214 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v212 = *(v214 - 8);
  v18 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v204 = &v197[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17ED8, &qword_1C0974DF0);
  v20 = *(*(v211 - 8) + 64);
  MEMORY[0x1EEE9AC00](v211);
  v213 = &v197[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v208 = &v197[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v222 = &v197[-v26];
  v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v219 = *(v27 - 8);
  v220 = v27;
  v28 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v210 = &v197[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17EE0, &qword_1C0974DF8);
  v30 = *(*(v218 - 8) + 64);
  MEMORY[0x1EEE9AC00](v218);
  v221 = &v197[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v216 = &v197[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v229 = &v197[-v36];
  v37 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v226 = *(v37 - 8);
  v227 = v37;
  v38 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v217 = &v197[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17EE8, &qword_1C0974E00);
  v40 = *(*(v225 - 8) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v228 = &v197[-v41];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v223 = &v197[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v44);
  v234 = &v197[-v46];
  v236 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v47 = *(v236 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v231 = &v197[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17EF0, &qword_1C0974E08);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v233 = &v197[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v197[-v54];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v230 = &v197[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = MEMORY[0x1EEE9AC00](v58);
  v235 = &v197[-v61];
  v62 = MEMORY[0x1EEE9AC00](v60);
  v237 = &v197[-v63];
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v197[-v64];
  v66 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  v238 = a1;
  sub_1C05149F8(a1 + v66, v65, &qword_1EBE17C50, &unk_1C099BB50);
  v67 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  v68 = v239;
  swift_beginAccess();
  v232 = v50;
  v69 = *(v50 + 48);
  sub_1C05149F8(v65, v55, &qword_1EBE17C50, &unk_1C099BB50);
  v70 = v68 + v67;
  v71 = v236;
  sub_1C05149F8(v70, &v55[v69], &qword_1EBE17C50, &unk_1C099BB50);
  v74 = *(v47 + 48);
  v72 = v47 + 48;
  v73 = v74;
  if (v74(v55, 1, v71) == 1)
  {
    v75 = v238;

    sub_1C05145B4(v65, &qword_1EBE17C50, &unk_1C099BB50);
    if (v73(&v55[v69], 1, v71) == 1)
    {
      v224 = v72;
      sub_1C05145B4(v55, &qword_1EBE17C50, &unk_1C099BB50);
      goto LABEL_8;
    }

LABEL_6:
    v77 = &qword_1EBE17EF0;
    v78 = &qword_1C0974E08;
    v79 = v55;
LABEL_35:
    sub_1C05145B4(v79, v77, v78);
    goto LABEL_36;
  }

  v76 = v238;
  sub_1C05149F8(v55, v237, &qword_1EBE17C50, &unk_1C099BB50);
  v224 = v72;
  if (v73(&v55[v69], 1, v71) == 1)
  {

    sub_1C05145B4(v65, &qword_1EBE17C50, &unk_1C099BB50);
    sub_1C05B4278(v237, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    goto LABEL_6;
  }

  v80 = v231;
  sub_1C05B3C0C(&v55[v69], v231, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v81 = v76;

  v82 = v237;
  v198 = _s12SiriOntology010Com_Apple_A19_Product_Proto_DateV2eeoiySbAC_ACtFZ_0(v237, v80);
  sub_1C05B4278(v80, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C05145B4(v65, &qword_1EBE17C50, &unk_1C099BB50);
  v75 = v81;
  sub_1C05B4278(v82, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C05145B4(v55, &qword_1EBE17C50, &unk_1C099BB50);
  if ((v198 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_8:
  v83 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  swift_beginAccess();
  v84 = v235;
  sub_1C05149F8(v75 + v83, v235, &qword_1EBE17C50, &unk_1C099BB50);
  v85 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  v86 = v239;
  swift_beginAccess();
  v87 = *(v232 + 48);
  v88 = v71;
  v89 = v233;
  sub_1C05149F8(v84, v233, &qword_1EBE17C50, &unk_1C099BB50);
  sub_1C05149F8(v86 + v85, &v89[v87], &qword_1EBE17C50, &unk_1C099BB50);
  if (v73(v89, 1, v88) == 1)
  {
    sub_1C05145B4(v84, &qword_1EBE17C50, &unk_1C099BB50);
    v90 = v73(&v89[v87], 1, v88);
    v91 = v234;
    v92 = v238;
    if (v90 == 1)
    {
      sub_1C05145B4(v89, &qword_1EBE17C50, &unk_1C099BB50);
      goto LABEL_16;
    }

LABEL_13:
    v77 = &qword_1EBE17EF0;
    v78 = &qword_1C0974E08;
LABEL_14:
    v79 = v89;
    goto LABEL_35;
  }

  v93 = v230;
  sub_1C05149F8(v89, v230, &qword_1EBE17C50, &unk_1C099BB50);
  v94 = v73(&v89[v87], 1, v88);
  v91 = v234;
  if (v94 == 1)
  {
    sub_1C05145B4(v235, &qword_1EBE17C50, &unk_1C099BB50);
    sub_1C05B4278(v93, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    goto LABEL_13;
  }

  v95 = v231;
  sub_1C05B3C0C(&v89[v87], v231, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v96 = _s12SiriOntology010Com_Apple_A19_Product_Proto_DateV2eeoiySbAC_ACtFZ_0(v93, v95);
  sub_1C05B4278(v95, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C05145B4(v235, &qword_1EBE17C50, &unk_1C099BB50);
  sub_1C05B4278(v93, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  sub_1C05145B4(v89, &qword_1EBE17C50, &unk_1C099BB50);
  v92 = v238;
  if ((v96 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  v97 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C05149F8(v92 + v97, v91, &qword_1EBE17C58, &unk_1C0973570);
  v98 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  v99 = v239;
  swift_beginAccess();
  v100 = *(v225 + 48);
  v101 = v228;
  sub_1C05149F8(v91, v228, &qword_1EBE17C58, &unk_1C0973570);
  v102 = v99 + v98;
  v103 = v101;
  sub_1C05149F8(v102, &v101[v100], &qword_1EBE17C58, &unk_1C0973570);
  v104 = v227;
  v105 = *(v226 + 48);
  if (v105(v101, 1, v227) == 1)
  {
    sub_1C05145B4(v91, &qword_1EBE17C58, &unk_1C0973570);
    v106 = v105(&v101[v100], 1, v104);
    v107 = v229;
    if (v106 == 1)
    {
      sub_1C05145B4(v103, &qword_1EBE17C58, &unk_1C0973570);
      goto LABEL_19;
    }

LABEL_24:
    v77 = &qword_1EBE17EE8;
    v78 = &qword_1C0974E00;
    v79 = v103;
    goto LABEL_35;
  }

  v120 = v223;
  sub_1C05149F8(v101, v223, &qword_1EBE17C58, &unk_1C0973570);
  v121 = v105(&v101[v100], 1, v104);
  v107 = v229;
  if (v121 == 1)
  {
    sub_1C05145B4(v234, &qword_1EBE17C58, &unk_1C0973570);
    sub_1C05B4278(v120, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    goto LABEL_24;
  }

  v122 = v103 + v100;
  v123 = v217;
  sub_1C05B3C0C(v122, v217, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  if (*v120 != *v123)
  {
    goto LABEL_29;
  }

  v124 = v120[16];
  v125 = *(v123 + 1);
  v126 = v123[16];
  v246 = *(v120 + 1);
  v247 = v124;
  v244 = v125;
  v245 = v126;
  v127 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v127 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
  {
LABEL_29:
    sub_1C05B4278(v123, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    v130 = &qword_1EBE17C58;
    v131 = &unk_1C0973570;
    sub_1C05145B4(v234, &qword_1EBE17C58, &unk_1C0973570);
    sub_1C05B4278(v120, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    v79 = v103;
LABEL_30:
    v77 = v130;
    v78 = v131;
    goto LABEL_35;
  }

  v128 = *(v104 + 24);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v129 = sub_1C095D73C();
  sub_1C05B4278(v123, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  sub_1C05145B4(v234, &qword_1EBE17C58, &unk_1C0973570);
  sub_1C05B4278(v120, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  sub_1C05145B4(v103, &qword_1EBE17C58, &unk_1C0973570);
  if ((v129 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_19:
  v108 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  sub_1C05149F8(v92 + v108, v107, &qword_1EBE17C60, &unk_1C099BB40);
  v109 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  v110 = v239;
  swift_beginAccess();
  v111 = *(v218 + 48);
  v112 = v107;
  v113 = v107;
  v114 = v221;
  sub_1C05149F8(v112, v221, &qword_1EBE17C60, &unk_1C099BB40);
  v115 = v114;
  sub_1C05149F8(v110 + v109, &v114[v111], &qword_1EBE17C60, &unk_1C099BB40);
  v116 = v220;
  v117 = *(v219 + 48);
  if (v117(v114, 1, v220) == 1)
  {
    sub_1C05145B4(v113, &qword_1EBE17C60, &unk_1C099BB40);
    v118 = v117(&v114[v111], 1, v116);
    v119 = v222;
    if (v118 == 1)
    {
      sub_1C05145B4(v114, &qword_1EBE17C60, &unk_1C099BB40);
      goto LABEL_39;
    }

LABEL_33:
    v77 = &qword_1EBE17EE0;
    v78 = &qword_1C0974DF8;
LABEL_34:
    v79 = v115;
    goto LABEL_35;
  }

  v132 = v216;
  sub_1C05149F8(v114, v216, &qword_1EBE17C60, &unk_1C099BB40);
  v133 = v117(&v114[v111], 1, v116);
  v119 = v222;
  if (v133 == 1)
  {
    sub_1C05145B4(v229, &qword_1EBE17C60, &unk_1C099BB40);
    sub_1C05B4278(v132, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
    goto LABEL_33;
  }

  v135 = &v114[v111];
  v136 = v210;
  sub_1C05B3C0C(v135, v210, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  v137 = _s12SiriOntology010Com_Apple_A23_Product_Proto_IntervalV2eeoiySbAC_ACtFZ_0(v132, v136);
  sub_1C05B4278(v136, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  sub_1C05145B4(v229, &qword_1EBE17C60, &unk_1C099BB40);
  sub_1C05B4278(v132, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  sub_1C05145B4(v114, &qword_1EBE17C60, &unk_1C099BB40);
  if ((v137 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_39:
  v138 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C05149F8(v92 + v138, v119, &qword_1EBE17C68, &unk_1C0973580);
  v139 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  v140 = v119;
  v141 = v239;
  swift_beginAccess();
  v142 = *(v211 + 48);
  v143 = v213;
  sub_1C05149F8(v140, v213, &qword_1EBE17C68, &unk_1C0973580);
  v144 = v141 + v139;
  v89 = v143;
  sub_1C05149F8(v144, &v143[v142], &qword_1EBE17C68, &unk_1C0973580);
  v145 = *(v212 + 48);
  v146 = v214;
  if (v145(v143, 1, v214) == 1)
  {
    sub_1C05145B4(v140, &qword_1EBE17C68, &unk_1C0973580);
    v147 = v145(&v143[v142], 1, v146);
    v148 = v215;
    if (v147 == 1)
    {
      sub_1C05145B4(v143, &qword_1EBE17C68, &unk_1C0973580);
      goto LABEL_42;
    }

    goto LABEL_47;
  }

  v159 = v143;
  v160 = v208;
  sub_1C05149F8(v159, v208, &qword_1EBE17C68, &unk_1C0973580);
  v161 = v145(&v89[v142], 1, v146);
  v148 = v215;
  if (v161 == 1)
  {
    sub_1C05145B4(v222, &qword_1EBE17C68, &unk_1C0973580);
    sub_1C05B4278(v160, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
LABEL_47:
    v77 = &qword_1EBE17ED8;
    v78 = &qword_1C0974DF0;
    goto LABEL_14;
  }

  v162 = &v89[v142];
  v163 = v204;
  sub_1C05B3C0C(v162, v204, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  if (*v160 != *v163)
  {
    goto LABEL_52;
  }

  v164 = v160[16];
  v165 = *(v163 + 1);
  v166 = v163[16];
  v242 = *(v160 + 1);
  v243 = v164;
  v240 = v165;
  v241 = v166;
  v167 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v167 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
  {
LABEL_52:
    sub_1C05B4278(v163, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    v130 = &qword_1EBE17C68;
    v131 = &unk_1C0973580;
    sub_1C05145B4(v222, &qword_1EBE17C68, &unk_1C0973580);
    sub_1C05B4278(v160, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    v79 = v89;
    goto LABEL_30;
  }

  v168 = *(v214 + 24);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v169 = sub_1C095D73C();
  sub_1C05B4278(v163, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  sub_1C05145B4(v222, &qword_1EBE17C68, &unk_1C0973580);
  sub_1C05B4278(v160, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  sub_1C05145B4(v89, &qword_1EBE17C68, &unk_1C0973580);
  if ((v169 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_42:
  v149 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  sub_1C05149F8(v92 + v149, v148, &qword_1EBE17C70, &unk_1C099BB30);
  v150 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  v151 = v148;
  v152 = v239;
  swift_beginAccess();
  v153 = v205;
  v154 = *(v206 + 48);
  sub_1C05149F8(v151, v205, &qword_1EBE17C70, &unk_1C099BB30);
  v155 = v152 + v150;
  v89 = v153;
  sub_1C05149F8(v155, &v153[v154], &qword_1EBE17C70, &unk_1C099BB30);
  v156 = v209 + 48;
  v157 = *(v209 + 48);
  v158 = v207;
  if (v157(v153, 1, v207) == 1)
  {
    sub_1C05145B4(v151, &qword_1EBE17C70, &unk_1C099BB30);
    if (v157(&v153[v154], 1, v158) == 1)
    {
      v209 = v156;
      sub_1C05145B4(v153, &qword_1EBE17C70, &unk_1C099BB30);
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v170 = v153;
  v171 = v202;
  sub_1C05149F8(v170, v202, &qword_1EBE17C70, &unk_1C099BB30);
  if (v157(&v89[v154], 1, v158) == 1)
  {
    sub_1C05145B4(v215, &qword_1EBE17C70, &unk_1C099BB30);
    sub_1C05B4278(v171, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
LABEL_55:
    v77 = &qword_1EBE17ED0;
    v78 = &qword_1C0974DE8;
    goto LABEL_14;
  }

  v209 = v156;
  v172 = v200;
  sub_1C05B3C0C(&v89[v154], v200, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v173 = _s12SiriOntology010Com_Apple_A19_Product_Proto_TimeV2eeoiySbAC_ACtFZ_0(v171, v172);
  sub_1C05B4278(v172, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  sub_1C05145B4(v215, &qword_1EBE17C70, &unk_1C099BB30);
  sub_1C05B4278(v171, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  sub_1C05145B4(v89, &qword_1EBE17C70, &unk_1C099BB30);
  if ((v173 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_57:
  v174 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  swift_beginAccess();
  v175 = v203;
  sub_1C05149F8(v92 + v174, v203, &qword_1EBE17C70, &unk_1C099BB30);
  v176 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  v177 = v239;
  swift_beginAccess();
  v178 = *(v206 + 48);
  v179 = v201;
  sub_1C05149F8(v175, v201, &qword_1EBE17C70, &unk_1C099BB30);
  v115 = v179;
  sub_1C05149F8(v177 + v176, &v179[v178], &qword_1EBE17C70, &unk_1C099BB30);
  v180 = v207;
  if (v157(v179, 1, v207) != 1)
  {
    v181 = v179;
    v182 = v199;
    sub_1C05149F8(v181, v199, &qword_1EBE17C70, &unk_1C099BB30);
    if (v157(&v115[v178], 1, v180) == 1)
    {
      sub_1C05145B4(v203, &qword_1EBE17C70, &unk_1C099BB30);
      sub_1C05B4278(v182, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
      goto LABEL_62;
    }

    v183 = &v115[v178];
    v184 = v200;
    sub_1C05B3C0C(v183, v200, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    v185 = v115;
    v186 = _s12SiriOntology010Com_Apple_A19_Product_Proto_TimeV2eeoiySbAC_ACtFZ_0(v182, v184);
    sub_1C05B4278(v184, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C05145B4(v203, &qword_1EBE17C70, &unk_1C099BB30);
    sub_1C05B4278(v182, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    sub_1C05145B4(v185, &qword_1EBE17C70, &unk_1C099BB30);
    if (v186)
    {
      goto LABEL_64;
    }

LABEL_36:

    return 0;
  }

  sub_1C05145B4(v175, &qword_1EBE17C70, &unk_1C099BB30);
  if (v157(&v179[v178], 1, v180) != 1)
  {
LABEL_62:
    v77 = &qword_1EBE17ED0;
    v78 = &qword_1C0974DE8;
    goto LABEL_34;
  }

  sub_1C05145B4(v179, &qword_1EBE17C70, &unk_1C099BB30);
LABEL_64:
  v187 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  swift_beginAccess();
  LODWORD(v187) = *(v92 + v187);
  v188 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  v189 = v239;
  swift_beginAccess();
  if (v187 != *(v189 + v188))
  {
    goto LABEL_36;
  }

  v190 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  swift_beginAccess();
  LODWORD(v190) = *(v92 + v190);
  v191 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  v192 = v239;
  swift_beginAccess();
  if (v190 != *(v192 + v191))
  {
    goto LABEL_36;
  }

  v193 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  swift_beginAccess();
  v194 = *(v92 + v193);

  v195 = v239 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  swift_beginAccess();
  v196 = *v195;
  LODWORD(v195) = *(v195 + 8);

  if (v195 == 1)
  {
    if (v196 > 1)
    {
      if (v196 == 2)
      {
        if (v194 == 2)
        {
          return 1;
        }
      }

      else if (v194 == 3)
      {
        return 1;
      }
    }

    else if (v196)
    {
      if (v194 == 1)
      {
        return 1;
      }
    }

    else if (!v194)
    {
      return 1;
    }

    return 0;
  }

  return v194 == v196;
}

uint64_t sub_1C05C3C44(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C095DFEC();
  a1(0);
  sub_1C05C5C78(a2, a3);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C05C3CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_1EBE155E0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EBE17C18;
}

uint64_t sub_1C05C3D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17E80, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05C3E30(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17E70, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05C3E9C()
{
  sub_1C05C5C78(&qword_1EBE17E70, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);

  return sub_1C095D5AC();
}

uint64_t sub_1C05C3F1C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17C20);
  __swift_project_value_buffer(v0, qword_1EBE17C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PAST";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PRESENT";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FUTURE";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t _s12SiriOntology010Com_Apple_A31_Product_Proto_FractionalPeriodV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0) + 28);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A29_Product_Proto_DateTimePeriodV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v7 = *(a1 + 1);
  v8 = a1[16];
  v5 = *(a2 + 1);
  v6 = a2[16];
  v2 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v2 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
  {
    return 0;
  }

  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0) + 24);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A25_Product_Proto_RecurrenceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v2 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v2 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
  {
    return 0;
  }

  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0) + 24);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A23_Product_Proto_IntervalV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v4 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v4 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (!sub_1C05AD890(*(a1 + 24), *(a1 + 32), *(a2 + 24)) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0) + 32);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A23_Product_Proto_DurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v2 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v2 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
  {
    return 0;
  }

  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0) + 24);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A23_Product_Proto_DateTimeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1C05C219C(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A19_Product_Proto_TimeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17F08, &unk_1C0974E20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1C095DF3C() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    goto LABEL_26;
  }

  v35 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v17 = *(v35 + 52);
  v18 = *(v13 + 48);
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE17C38, &unk_1C0973550);
  v19 = a2 + v17;
  v20 = v18;
  sub_1C05149F8(v19, &v16[v18], &qword_1EBE17C38, &unk_1C0973550);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1C05145B4(v16, &qword_1EBE17C38, &unk_1C0973550);
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  sub_1C05149F8(v16, v12, &qword_1EBE17C38, &unk_1C0973550);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_1C05B4278(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
LABEL_19:
    v25 = &qword_1EBE17F08;
    v26 = &unk_1C0974E20;
LABEL_25:
    sub_1C05145B4(v16, v25, v26);
LABEL_26:
    v24 = 0;
    return v24 & 1;
  }

  sub_1C05B3C0C(&v16[v20], v8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  if (*v12 != *v8)
  {
    goto LABEL_24;
  }

  v27 = v12[16];
  v28 = *(v8 + 1);
  v29 = v8[16];
  v38 = *(v12 + 1);
  v39 = v27;
  v36 = v28;
  v37 = v29;
  v30 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v30 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
  {
LABEL_24:
    sub_1C05B4278(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    sub_1C05B4278(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    v25 = &qword_1EBE17C38;
    v26 = &unk_1C0973550;
    goto LABEL_25;
  }

  v31 = *(v4 + 24);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v32 = sub_1C095D73C();
  sub_1C05B4278(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  sub_1C05B4278(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  sub_1C05145B4(v16, &qword_1EBE17C38, &unk_1C0973550);
  if ((v32 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v22 = *(a2 + 32);
  if (!sub_1C05AD890(*(a1 + 24), *(a1 + 32), *(a2 + 24)) || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1C095DF3C() & 1) == 0 || *(a1 + 56) != *(a2 + 56) || *(a1 + 57) != *(a2 + 57) || *(a1 + 58) != *(a2 + 58))
  {
    goto LABEL_26;
  }

  v23 = *(v35 + 48);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v24 = sub_1C095D73C();
  return v24 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A19_Product_Proto_DateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v57 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = (&v55 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17EF8, &qword_1C0974E10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - v12;
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17F00, &qword_1C0974E18);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v55 - v25;
  if (*a1 != *a2)
  {
    goto LABEL_30;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    goto LABEL_30;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_30;
  }

  v27 = *(a2 + 24);
  if (!sub_1C05AD890(*(a1 + 16), *(a1 + 24), *(a2 + 16)))
  {
    goto LABEL_30;
  }

  v56 = v13;
  v55 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v28 = *(v55 + 60);
  v29 = *(v23 + 48);
  sub_1C05149F8(a1 + v28, v26, &qword_1EBE17C40, &unk_1C099BB60);
  v30 = a2 + v28;
  v31 = v29;
  sub_1C05149F8(v30, &v26[v29], &qword_1EBE17C40, &unk_1C099BB60);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) == 1)
  {
    if (v32(&v26[v31], 1, v14) == 1)
    {
      sub_1C05145B4(v26, &qword_1EBE17C40, &unk_1C099BB60);
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  sub_1C05149F8(v26, v22, &qword_1EBE17C40, &unk_1C099BB60);
  if (v32(&v26[v31], 1, v14) == 1)
  {
    sub_1C05B4278(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
LABEL_20:
    v43 = &qword_1EBE17F00;
    v44 = &qword_1C0974E18;
LABEL_28:
    v48 = v26;
LABEL_29:
    sub_1C05145B4(v48, v43, v44);
    goto LABEL_30;
  }

  sub_1C05B3C0C(&v26[v31], v18, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  if ((*v22 != *v18 || *(v22 + 1) != *(v18 + 1)) && (sub_1C095DF3C() & 1) == 0 || (v45 = v18[24], !sub_1C05AD890(*(v22 + 2), v22[24], *(v18 + 2))))
  {
    sub_1C05B4278(v18, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
    sub_1C05B4278(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
    v43 = &qword_1EBE17C40;
    v44 = &unk_1C099BB60;
    goto LABEL_28;
  }

  v46 = *(v14 + 24);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v47 = sub_1C095D73C();
  sub_1C05B4278(v18, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  sub_1C05B4278(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  sub_1C05145B4(v26, &qword_1EBE17C40, &unk_1C099BB60);
  if ((v47 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_8:
  v33 = *(a2 + 40);
  if (!sub_1C05AD890(*(a1 + 32), *(a1 + 40), *(a2 + 32)))
  {
    goto LABEL_30;
  }

  if (*(a1 + 41) != *(a2 + 41))
  {
    goto LABEL_30;
  }

  if (*(a1 + 42) != *(a2 + 42))
  {
    goto LABEL_30;
  }

  if ((sub_1C0562714(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_30;
  }

  v34 = *(a2 + 64);
  if (!sub_1C05AD890(*(a1 + 56), *(a1 + 64), *(a2 + 56)))
  {
    goto LABEL_30;
  }

  v36 = v55;
  v35 = v56;
  v37 = *(v55 + 64);
  v38 = *(v10 + 48);
  sub_1C05149F8(a1 + v37, v56, &qword_1EBE17C48, &unk_1C0973560);
  sub_1C05149F8(a2 + v37, v35 + v38, &qword_1EBE17C48, &unk_1C0973560);
  v39 = v60;
  v40 = *(v59 + 48);
  if (v40(v35, 1, v60) == 1)
  {
    if (v40(v35 + v38, 1, v39) == 1)
    {
      sub_1C05145B4(v35, &qword_1EBE17C48, &unk_1C0973560);
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  v50 = v58;
  sub_1C05149F8(v35, v58, &qword_1EBE17C48, &unk_1C0973560);
  if (v40(v35 + v38, 1, v39) == 1)
  {
    sub_1C05B4278(v50, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
LABEL_34:
    v43 = &qword_1EBE17EF8;
    v44 = &qword_1C0974E10;
    v48 = v35;
    goto LABEL_29;
  }

  v51 = v35 + v38;
  v52 = v57;
  sub_1C05B3C0C(v51, v57, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  if (*v50 != *v52 || v50[1] != v52[1] || v50[2] != v52[2])
  {
    sub_1C05B4278(v52, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
    sub_1C05B4278(v50, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
    v43 = &qword_1EBE17C48;
    v44 = &unk_1C0973560;
    v48 = v35;
    goto LABEL_29;
  }

  v53 = *(v39 + 28);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v54 = sub_1C095D73C();
  sub_1C05B4278(v52, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  sub_1C05B4278(v50, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  sub_1C05145B4(v35, &qword_1EBE17C48, &unk_1C0973560);
  if ((v54 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  if (*(a1 + 68) != *(a2 + 68))
  {
LABEL_30:
    v42 = 0;
    return v42 & 1;
  }

  v41 = *(v36 + 56);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v42 = sub_1C095D73C();
  return v42 & 1;
}

uint64_t sub_1C05C5474(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v56 - v17;
  v19 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  v20 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v1 + v19, 1, 1, v20);
  v22 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  v21(v1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate, 1, 1, v20);
  v23 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  v56 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  v24 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  v57 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  v26 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  v58 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  v28 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  v59 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  v30 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v31 = *(*(v30 - 8) + 56);
  v31(v1 + v29, 1, 1, v30);
  v61 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  v31(v1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime, 1, 1, v30);
  v62 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition) = 0;
  v32 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition) = 0;
  v33 = v1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  sub_1C05149F8(a1 + v34, v18, &qword_1EBE17C50, &unk_1C099BB50);
  swift_beginAccess();
  sub_1C051F9D4(v18, v1 + v19, &qword_1EBE17C50, &unk_1C099BB50);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  swift_beginAccess();
  sub_1C05149F8(a1 + v35, v18, &qword_1EBE17C50, &unk_1C099BB50);
  swift_beginAccess();
  sub_1C051F9D4(v18, v1 + v22, &qword_1EBE17C50, &unk_1C099BB50);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  v37 = v60;
  sub_1C05149F8(a1 + v36, v60, &qword_1EBE17C58, &unk_1C0973570);
  v38 = v56;
  swift_beginAccess();
  sub_1C051F9D4(v37, v1 + v38, &qword_1EBE17C58, &unk_1C0973570);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  v40 = v63;
  sub_1C05149F8(a1 + v39, v63, &qword_1EBE17C60, &unk_1C099BB40);
  v41 = v57;
  swift_beginAccess();
  sub_1C051F9D4(v40, v1 + v41, &qword_1EBE17C60, &unk_1C099BB40);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  v43 = v64;
  sub_1C05149F8(a1 + v42, v64, &qword_1EBE17C68, &unk_1C0973580);
  v44 = v58;
  swift_beginAccess();
  sub_1C051F9D4(v43, v1 + v44, &qword_1EBE17C68, &unk_1C0973580);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  v46 = v65;
  sub_1C05149F8(a1 + v45, v65, &qword_1EBE17C70, &unk_1C099BB30);
  v47 = v59;
  swift_beginAccess();
  sub_1C051F9D4(v46, v1 + v47, &qword_1EBE17C70, &unk_1C099BB30);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  swift_beginAccess();
  sub_1C05149F8(a1 + v48, v46, &qword_1EBE17C70, &unk_1C099BB30);
  v49 = v61;
  swift_beginAccess();
  sub_1C051F9D4(v46, v1 + v49, &qword_1EBE17C70, &unk_1C099BB30);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  swift_beginAccess();
  LODWORD(v50) = *(a1 + v50);
  v51 = v62;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  swift_beginAccess();
  LODWORD(v52) = *(a1 + v52);
  swift_beginAccess();
  *(v1 + v32) = v52;
  v53 = (a1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent);
  swift_beginAccess();
  v54 = *v53;
  LOBYTE(v53) = *(v53 + 8);
  swift_beginAccess();
  *v33 = v54;
  *(v33 + 8) = v53;
  return v1;
}

unint64_t sub_1C05C5C24()
{
  result = qword_1EBE17C78;
  if (!qword_1EBE17C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17C78);
  }

  return result;
}

uint64_t sub_1C05C5C78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C05C5CC0()
{
  result = qword_1EBE17C90;
  if (!qword_1EBE17C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17C90);
  }

  return result;
}

unint64_t sub_1C05C5D14()
{
  result = qword_1EBE17CA8;
  if (!qword_1EBE17CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17CA8);
  }

  return result;
}

unint64_t sub_1C05C5D68()
{
  result = qword_1EBE17CB8;
  if (!qword_1EBE17CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17CB8);
  }

  return result;
}

unint64_t sub_1C05C5DC0()
{
  result = qword_1EBE17CF8;
  if (!qword_1EBE17CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17CF8);
  }

  return result;
}

unint64_t sub_1C05C5E18()
{
  result = qword_1EBE17D00;
  if (!qword_1EBE17D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D00);
  }

  return result;
}

unint64_t sub_1C05C5E70()
{
  result = qword_1EBE17D08;
  if (!qword_1EBE17D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D08);
  }

  return result;
}

unint64_t sub_1C05C5EF8()
{
  result = qword_1EBE17D20;
  if (!qword_1EBE17D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D20);
  }

  return result;
}

unint64_t sub_1C05C5F50()
{
  result = qword_1EBE17D28;
  if (!qword_1EBE17D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D28);
  }

  return result;
}

unint64_t sub_1C05C5FA8()
{
  result = qword_1EBE17D30;
  if (!qword_1EBE17D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D30);
  }

  return result;
}

unint64_t sub_1C05C6030()
{
  result = qword_1EBE17D48;
  if (!qword_1EBE17D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D48);
  }

  return result;
}

unint64_t sub_1C05C6088()
{
  result = qword_1EBE17D50;
  if (!qword_1EBE17D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D50);
  }

  return result;
}

unint64_t sub_1C05C60E0()
{
  result = qword_1EBE17D58;
  if (!qword_1EBE17D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D58);
  }

  return result;
}

unint64_t sub_1C05C6168()
{
  result = qword_1EBE17D70;
  if (!qword_1EBE17D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D70);
  }

  return result;
}

unint64_t sub_1C05C61C0()
{
  result = qword_1EBE17D78;
  if (!qword_1EBE17D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D78);
  }

  return result;
}

unint64_t sub_1C05C6218()
{
  result = qword_1EBE17D80;
  if (!qword_1EBE17D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D80);
  }

  return result;
}

unint64_t sub_1C05C62A0()
{
  result = qword_1EBE17D98;
  if (!qword_1EBE17D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D98);
  }

  return result;
}

unint64_t sub_1C05C62F8()
{
  result = qword_1EBE17DA0;
  if (!qword_1EBE17DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17DA0);
  }

  return result;
}

unint64_t sub_1C05C6350()
{
  result = qword_1EBE17DA8;
  if (!qword_1EBE17DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17DA8);
  }

  return result;
}

uint64_t keypath_get_35Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _DWORD *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_1C05C6F00()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C05C6FAC()
{
  sub_1C095D38C();
  if (v0 <= 0x3F)
  {
    sub_1C05C7294(319, &qword_1EBE15140, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C05C70FC()
{
  sub_1C05C7294(319, &qword_1EBE0FDC0, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      sub_1C05C7294(319, &qword_1EBE15118, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C05C7294(319, &qword_1EBE150C8, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C05C7294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C05C735C()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_106Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_107Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C05C7524()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C05C75C0()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C05C765C()
{
  sub_1C05C7294(319, &qword_1EBE15498, type metadata accessor for Com_Apple_Siri_Product_Proto_Date, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C05C7294(319, &qword_1EBE152F8, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1C05C7294(319, &qword_1EBE152E0, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1C05C7294(319, &qword_1EBE15268, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1C05C7294(319, &qword_1EBE15480, type metadata accessor for Com_Apple_Siri_Product_Proto_Time, MEMORY[0x1E69E6720]);
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

unint64_t sub_1C05C78E4()
{
  result = qword_1EBE17EC8;
  if (!qword_1EBE17EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17EC8);
  }

  return result;
}

void Siri_Nl_Core_Protocol_ResponseStatus.code.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.code.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.description_p.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus() + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus()
{
  result = qword_1EBE17F50;
  if (!qword_1EBE17F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus() + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus() + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05C7C68()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17F10);
  __swift_project_value_buffer(v0, qword_1EBE17F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "code";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t static Siri_Nl_Core_Protocol_ResponseStatus._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE155F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE17F10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        sub_1C05C8394();
        sub_1C095D45C();
      }

      else if (result == 3)
      {
        sub_1C095D50C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), sub_1C05C8394(), result = sub_1C095D60C(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1C095D66C(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus() + 24);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.hashValue.getter()
{
  sub_1C095DFEC();
  type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus();
  sub_1C05C872C(&qword_1EBE17F30, type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C05C8104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05C8184(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C872C(&qword_1EBE17F60, type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05C8200@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE155F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE17F10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C05C82A8(uint64_t a1)
{
  v2 = sub_1C05C872C(&qword_1EBE17F40, type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05C8314()
{
  sub_1C05C872C(&qword_1EBE17F40, type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus);

  return sub_1C095D5AC();
}

unint64_t sub_1C05C8394()
{
  result = qword_1EBE17F28;
  if (!qword_1EBE17F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17F28);
  }

  return result;
}

uint64_t _s12SiriOntology0A32_Nl_Core_Protocol_ResponseStatusV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1C0974FE0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 > 3)
    {
      if (v3 > 5)
      {
        if (v3 == 6)
        {
          if (v2 != 303)
          {
            return 0;
          }
        }

        else if (v2 != 500)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 301)
        {
          return 0;
        }
      }

      else if (v2 != 302)
      {
        return 0;
      }
    }

    else if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 101)
        {
          return 0;
        }
      }

      else if (v2 != 300)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 100)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v4 || (sub_1C095DF3C() & 1) != 0)
  {
    v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus() + 24);
    sub_1C095D38C();
    sub_1C05C872C(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
    return sub_1C095D73C() & 1;
  }

  return 0;
}

uint64_t sub_1C05C86A8()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C05C872C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Kind.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C();
  }
}

uint64_t Name.init(value:kind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  v5 = a3[1];
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  a4[3] = v5;
  a4[4] = 0;
  return result;
}

void static Kind.definedValue.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "DefinedValue");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t Kind.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Kind.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C095D7BC();
}

uint64_t Kind.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05C890C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C();
  }
}

uint64_t sub_1C05C893C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05C8988()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C095D7BC();
}

uint64_t sub_1C05C8990()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05C89E4()
{
  v1 = *v0;
  sub_1C095DFEC();
  if (v1[3])
  {
    v3 = v1[8];
    v2 = v1[9];
    v5 = v1[6];
    v4 = v1[7];
    v7 = v1[4];
    v6 = v1[5];
    v8 = v1[2];
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05C8AB4()
{
  v1 = *v0;
  if (!*(*v0 + 24))
  {
    return sub_1C095E00C();
  }

  v3 = v1[8];
  v2 = v1[9];
  v5 = v1[6];
  v4 = v1[7];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[2];
  sub_1C095E00C();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();

  return sub_1C095D7BC();
}

uint64_t sub_1C05C8B90()
{
  sub_1C095DFEC();
  v1 = *v0;
  if (*(*v0 + 24))
  {
    v3 = v1[8];
    v2 = v1[9];
    v5 = v1[6];
    v4 = v1[7];
    v7 = v1[4];
    v6 = v1[5];
    v8 = v1[2];
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05C8C60()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05C8D00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();

  return sub_1C095D7BC();
}

uint64_t sub_1C05C8D88()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t Name.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Name.kind.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t Name.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  MEMORY[0x1C68DD690](95, 0xE100000000000000);
  MEMORY[0x1C68DD690](v1, v2);
  return v4;
}

uint64_t Name.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (!v5)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  if (!v5[3])
  {
    return sub_1C095E00C();
  }

  v7 = v5[8];
  v6 = v5[9];
  v9 = v5[6];
  v8 = v5[7];
  v11 = v5[4];
  v10 = v5[5];
  v12 = v5[2];
  sub_1C095E00C();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();

  return sub_1C095D7BC();
}

uint64_t sub_1C05C8FD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (v5 && (sub_1C095E00C(), v5[3]))
  {
    v7 = v5[8];
    v6 = v5[9];
    v9 = v5[6];
    v8 = v5[7];
    v11 = v5[4];
    v10 = v5[5];
    v12 = v5[2];
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05C90D8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  MEMORY[0x1C68DD690](95, 0xE100000000000000);
  MEMORY[0x1C68DD690](v1, v2);
  return v4;
}

void sub_1C05C9138()
{
  qword_1ED5D7C70 = 1953460050;
  *algn_1ED5D7C78 = 0xE400000000000000;
  qword_1ED5D7C80 = 1953460050;
  unk_1ED5D7C88 = 0xE400000000000000;
  qword_1ED5D7C90 = 0;
}

uint64_t static Name.root.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED5D7C68 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1ED5D7C78;
  v2 = qword_1ED5D7C80;
  v3 = unk_1ED5D7C88;
  v4 = qword_1ED5D7C90;
  *a1 = qword_1ED5D7C70;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1C05C91F0()
{
  qword_1ED5BD008 = 1802723700;
  unk_1ED5BD010 = 0xE400000000000000;
  qword_1ED5BD018 = 0x746E656D75677241;
  unk_1ED5BD020 = 0xE800000000000000;
  qword_1ED5BD028 = 0;
}

uint64_t static Name.task.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED5BD000 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1ED5BD010;
  v2 = qword_1ED5BD018;
  v3 = unk_1ED5BD020;
  v4 = qword_1ED5BD028;
  *a1 = qword_1ED5BD008;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1C05C92BC()
{
  qword_1EBE17F68 = 0x797469746E65;
  unk_1EBE17F70 = 0xE600000000000000;
  qword_1EBE17F78 = 0x797469746E45;
  unk_1EBE17F80 = 0xE600000000000000;
  qword_1EBE17F88 = 0;
}

uint64_t static Name.entity.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE155F8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EBE17F70;
  v2 = qword_1EBE17F78;
  v3 = unk_1EBE17F80;
  v4 = qword_1EBE17F88;
  *a1 = qword_1EBE17F68;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1C05C937C()
{
  qword_1EBE17F90 = 0x797469746E65;
  *algn_1EBE17F98 = 0xE600000000000000;
  qword_1EBE17FA0 = 0x746E656D75677241;
  unk_1EBE17FA8 = 0xE800000000000000;
  qword_1EBE17FB0 = 0;
}

uint64_t static Name.entityArgument.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15600 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EBE17F98;
  v2 = qword_1EBE17FA0;
  v3 = unk_1EBE17FA8;
  v4 = qword_1EBE17FB0;
  *a1 = qword_1EBE17F90;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1C05C944C()
{
  qword_1EBE17FB8 = 0x646E617265706FLL;
  qword_1EBE17FC0 = 0xE700000000000000;
  qword_1EBE17FC8 = 0x746E656D75677241;
  qword_1EBE17FD0 = 0xE800000000000000;
  qword_1EBE17FD8 = 0;
}

uint64_t static Name.operand.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15608 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EBE17FC0;
  v2 = qword_1EBE17FC8;
  v3 = qword_1EBE17FD0;
  v4 = qword_1EBE17FD8;
  *a1 = qword_1EBE17FB8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1C05C9520()
{
  qword_1ED5D7CA8 = 0xD000000000000010;
  unk_1ED5D7CB0 = 0x80000001C09CD560;
  qword_1ED5D7CB8 = 0x797469746E45;
  unk_1ED5D7CC0 = 0xE600000000000000;
  qword_1ED5D7CC8 = 0;
}

uint64_t static Name.primitiveString.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED5D7CA0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *(&xmmword_1ED5D7CA8 + 1);
  v2 = xmmword_1ED5D7CB8;
  v3 = qword_1ED5D7CC8;
  *a1 = xmmword_1ED5D7CA8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
}

void sub_1C05C95F4()
{
  qword_1ED5BDEE0 = 0xD000000000000011;
  *algn_1ED5BDEE8 = 0x80000001C09CD540;
  qword_1ED5BDEF0 = 0x797469746E45;
  unk_1ED5BDEF8 = 0xE600000000000000;
  qword_1ED5BDF00 = 0;
}

uint64_t static Name.primitiveInteger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED5BDED8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *(&xmmword_1ED5BDEE0 + 1);
  v2 = xmmword_1ED5BDEF0;
  v3 = qword_1ED5BDF00;
  *a1 = xmmword_1ED5BDEE0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
}

BOOL sub_1C05C96C8(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  return (*a1 == *a2 && a1[1] == a2[1] || (sub_1C095DF3C() & 1) != 0) && (v2 == v6 && v4 == v7 || (sub_1C095DF3C() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_1C095DF3C() & 1) != 0) && (v13 == v11 && v14 == v10 || (sub_1C095DF3C() & 1) != 0);
}

BOOL sub_1C05C97E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[2];
  v39[0] = a1[1];
  v39[1] = v2;
  v3 = a1[2];
  v4 = a1[4];
  v40 = a1[3];
  v41 = v4;
  v5 = a2[2];
  v42[0] = a2[1];
  v42[1] = v5;
  v6 = a2[2];
  v7 = a2[4];
  v43 = a2[3];
  v44 = v7;
  v36 = v3;
  v37 = v40;
  v38 = a1[4];
  v8 = v39[0];
  v9 = v42[0];
  v33 = v6;
  v34 = v43;
  v35 = a2[4];
  if (!*(&v39[0] + 1))
  {
    if (!*(&v42[0] + 1))
    {
      v25 = *&v39[0];
      v13 = a1[3];
      v26 = a1[2];
      v27 = v13;
      v28 = a1[4];
      sub_1C057F900(v39, &v21);
      sub_1C057F900(v42, &v21);
      sub_1C05145B4(&v25, &qword_1EBE16D80, &qword_1C0970448);
      return 1;
    }

    sub_1C057F900(v39, &v25);
    sub_1C057F900(v42, &v25);
    goto LABEL_7;
  }

  v25 = v39[0];
  v10 = a1[3];
  v26 = a1[2];
  v27 = v10;
  v28 = a1[4];
  v21 = v39[0];
  v22 = v26;
  v23 = v10;
  v24 = v28;
  if (!*(&v42[0] + 1))
  {
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    sub_1C057F900(v39, v16);
    sub_1C057F900(v42, v16);
    sub_1C057F900(&v25, v16);
    sub_1C05C9C48(&v17);
LABEL_7:
    v25 = v8;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v9;
    v30 = v33;
    v31 = v34;
    v32 = v35;
    sub_1C05145B4(&v25, &qword_1EBE16D88, &qword_1C0970450);
    return 0;
  }

  v11 = a2[3];
  v18 = a2[2];
  v19 = v11;
  v20 = a2[4];
  v17 = v42[0];
  v12 = sub_1C05C96C8(&v21, &v17);
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  sub_1C057F900(v39, v16);
  sub_1C057F900(v42, v16);
  sub_1C057F900(&v25, v16);
  sub_1C05C9C48(v15);
  v16[0] = v21;
  v16[1] = v22;
  v16[2] = v23;
  v16[3] = v24;
  sub_1C05C9C48(v16);
  v17 = v8;
  v18 = v36;
  v19 = v37;
  v20 = v38;
  sub_1C05145B4(&v17, &qword_1EBE16D80, &qword_1C0970448);
  return v12;
}

unint64_t sub_1C05C9A24()
{
  result = qword_1EBE17FE0;
  if (!qword_1EBE17FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17FE0);
  }

  return result;
}

unint64_t sub_1C05C9A7C()
{
  result = qword_1EBE17FE8;
  if (!qword_1EBE17FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17FE8);
  }

  return result;
}

uint64_t sub_1C05C9AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C05C9B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C05C9B9C()
{
  result = qword_1EBE17FF0;
  if (!qword_1EBE17FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17FF0);
  }

  return result;
}

unint64_t sub_1C05C9BF4()
{
  result = qword_1EBE17FF8;
  if (!qword_1EBE17FF8)
  {
    type metadata accessor for NameMetaData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17FF8);
  }

  return result;
}

uint64_t static UsoGraphVocabManager.makeDefault()()
{
  if (qword_1EBE154C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for UsoGraphVocabManager();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = sub_1C051DE48(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = sub_1C051DA50(v1);
  return v0;
}

void sub_1C05C9CFC(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v75 = v2;
  if (v2)
  {
    v77 = MEMORY[0x1E69E7CC0];

    sub_1C0600B80(0, v2, 0);
    v5 = v77;
    v6 = (a1 + 64);
    do
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = v5;

      v12 = sub_1C095D89C();

      v5 = v11;
      v14 = v11[2];
      v13 = v11[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_1C0600B80((v13 > 1), v14 + 1, 1);
        v5 = v11;
      }

      v6 += 5;
      v5[2] = v15;
      *(v5 + v14 + 32) = (v12 & 1) == 0;
      --v2;
    }

    while (v2);
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v15 = v3[2];
    v5 = v3;
    v16 = v3;
    if (!v15)
    {
      goto LABEL_16;
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
  v17 = 32;
  do
  {
    if (*(v5 + v17) == 1)
    {
      v20 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C0600B80(0, v16[2] + 1, 1);
      }

      v19 = v16[2];
      v18 = v16[3];
      v5 = v20;
      if (v19 >= v18 >> 1)
      {
        sub_1C0600B80((v18 > 1), v19 + 1, 1);
        v5 = v20;
      }

      v16[2] = v19 + 1;
      *(v16 + v19 + 32) = 1;
    }

    ++v17;
    --v15;
  }

  while (v15);
LABEL_16:
  v68 = v5;
  v21 = v16[2];

  v22 = v21 / 0.75;
  if (v22 == INFINITY)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v23 = v22;
  v24 = v75;
  if (v75)
  {
    sub_1C0600B60(0, v75, 0);
    if (!v23)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v25 = v3;
    v26 = (a1 + 64);
    v70 = v23;
    do
    {
      v27 = *(v26 - 4);
      v28 = *(v26 - 3);
      v29 = *(v26 - 2);
      v30 = *(v26 - 1);
      v31 = *v26;
      sub_1C095DFEC();

      sub_1C095D7BC();
      sub_1C095D7BC();
      if (v31 && (sub_1C095E00C(), v31[3]))
      {
        v73 = v31[8];
        v74 = v31[9];
        v71 = v31[6];
        v72 = v31[7];
        v76 = v24;
        v32 = v25;
        v33 = v31[4];
        v34 = v31[5];
        v35 = v31[2];
        sub_1C095E00C();
        sub_1C095D7BC();
        v25 = v32;
        v23 = v70;
        sub_1C095D7BC();
        v24 = v76;
        sub_1C095D7BC();
        sub_1C095D7BC();
      }

      else
      {
        sub_1C095E00C();
      }

      v36 = sub_1C095E03C();

      if (v36 == 0x8000000000000000 && v23 == -1)
      {
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
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v37 = v36 % v23;
      if (v36 % v23 < 0)
      {
        v38 = __OFADD__(v37, v23);
        v37 += v23;
        if (v38)
        {
          goto LABEL_84;
        }
      }

      v40 = v25[2];
      v39 = v25[3];
      if (v40 >= v39 >> 1)
      {
        sub_1C0600B60((v39 > 1), v40 + 1, 1);
      }

      v26 += 5;
      v25[2] = v40 + 1;
      v25[v40 + 4] = v37;
      --v24;
    }

    while (v24);

    if (v23 < 0)
    {
      goto LABEL_37;
    }
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
    if (v23 < 0)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  if (v23)
  {
    v41 = sub_1C095D9CC();
    *(v41 + 16) = v23;
    bzero((v41 + 32), 4 * v23);
    goto LABEL_39;
  }

LABEL_38:
  v41 = MEMORY[0x1E69E7CC0];
LABEL_39:
  v42 = v68;
  v43 = v25[2];
  if (v43)
  {
    if (v43 <= v68[2])
    {
      v44 = v25 + 4;
      v45 = v68 + 4;
      v46 = v41 + 32;
      v47 = v25[2];
      while (1)
      {
        v49 = *v44++;
        v48 = v49;
        if (*v45)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_76;
          }

          if (v48 >= *(v41 + 16))
          {
            goto LABEL_77;
          }

          v50 = *(v46 + 4 * v48);
          v38 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v38)
          {
            goto LABEL_78;
          }

          *(v46 + 4 * v48) = v51;
        }

        ++v45;
        if (!--v47)
        {
          goto LABEL_48;
        }
      }
    }

    goto LABEL_91;
  }

LABEL_48:
  v52 = *(v41 + 16);
  v53 = v52 - 1;
  if (v52 != 1)
  {
    if (v52)
    {
      v54 = 0;
      v55 = (v41 + 36);
      do
      {
        if (v54 >= *(v41 + 16))
        {
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v56 = *(v55 - 1);
        v38 = __OFADD__(*v55, v56);
        v57 = *v55 + v56;
        if (v38)
        {
          goto LABEL_74;
        }

        *v55++ = v57;
        ++v54;
      }

      while (v53 != v54);
      v52 = *(v41 + 16);
      if (!v52)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_55:
  v58 = v41 + 4 * v52;
  v59 = *(v58 + 28);
  if ((v59 & 0x80000000) != 0)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v59)
  {
    v60 = *(v58 + 28);
    v61 = sub_1C095D9CC();
    *(v61 + 16) = v59;
    bzero((v61 + 32), 4 * v59);
    v42 = v68;
    if (!v43)
    {
LABEL_72:

      *(v67 + 16) = v41;
      *(v67 + 24) = v61;
      return;
    }
  }

  else
  {
LABEL_59:
    v61 = MEMORY[0x1E69E7CC0];
    if (!v43)
    {
      goto LABEL_72;
    }
  }

  if (v43 <= v42[2])
  {
    v62 = 0;
    v63 = v41 + 32;
    while (1)
    {
      if (*(v42 + v62 + 32))
      {
        v64 = v25[v62 + 4];
        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        if (v64 >= *(v41 + 16))
        {
          goto LABEL_80;
        }

        v65 = *(v63 + 4 * v64);
        v38 = __OFSUB__(v65, 1);
        v66 = v65 - 1;
        if (v38)
        {
          goto LABEL_81;
        }

        *(v63 + 4 * v64) = v66;
        if (v62 >> 31)
        {
          goto LABEL_82;
        }

        if (v66 < 0)
        {
          goto LABEL_83;
        }

        if (*(v61 + 16) <= v66)
        {
          __break(1u);
          goto LABEL_72;
        }

        *(v61 + 32 + 4 * v66) = v62;
      }

      if (v43 == ++v62)
      {
        goto LABEL_72;
      }
    }
  }

LABEL_92:
  __break(1u);
}

uint64_t sub_1C05CA368()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void sub_1C05CA3C0()
{
  if (qword_1EBE154C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for CompactNameToIdMap();
  v0 = swift_allocObject();

  sub_1C05C9CFC(v1);
  qword_1EBE50A38 = v0;
}

uint64_t UsoGraphVocabManager.__allocating_init(withListOfNames:)()
{

  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = sub_1C051DE48(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = sub_1C051DA50(v1);
  return v0;
}

uint64_t UsoGraphVocabManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

void *sub_1C05CA530(void *result)
{
  v2 = result[2];
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
  *v1 = v3;
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C0578008(result, v11, 1, v3);
  v3 = result;
  *v1 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C05CA640(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1C0579214(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  *v1 = v3;
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C05CA774(uint64_t result)
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
  *v1 = v3;
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C0578380(result, v11, 1, v3);
  v3 = result;
  *v1 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C05CA870(void *result)
{
  v2 = result[2];
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
  *v1 = v3;
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C0579C30(result, v11, 1, v3);
  v3 = result;
  *v1 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EC8, &unk_1C0999F10);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static UsoBuilderConversionUtils.convertEntityToRootedEntityGraph(entity:options:)(void *a1, char *a2)
{
  v3 = *a2;
  v4 = a1[2];
  v5 = a1[3];
  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  v6 = v4 == xmmword_1ED5D7CA8 && v5 == *(&xmmword_1ED5D7CA8 + 1);
  if (!v6 && (sub_1C095DF3C() & 1) == 0)
  {
    if (qword_1ED5BDED8 != -1)
    {
      swift_once();
    }

    v7 = v4 == xmmword_1ED5BDEE0 && v5 == *(&xmmword_1ED5BDEE0 + 1);
    if (!v7 && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v8 = sub_1C0517C50(a1[6], 1, 1, 1);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
LABEL_17:
    type metadata accessor for UsoEntityBuilder();
    swift_allocObject();

    v9 = sub_1C0517A0C(v10);
  }

  v13 = v3;
  v11 = _s12SiriOntology15UsoGraphBuilderO017buildRootedEntityD006entityE07optionsAA0D0CAA0cE0C_AA0cE7OptionsVSgtFZ_0(v9, &v13);

  return v11;
}

uint64_t static UsoBuilderConversionUtils.copyEntityDataToEntityBuilder(entityBuilder:entity:copyValueType:copyIdentifiers:copyUtteranceAlignments:copyEntitySpans:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a5;
  v8 = a4;
  v12 = a2[6];
  result = sub_1C0517C50(v12, a4, a5, a6);
  if (result)
  {
    type metadata accessor for UsoEntityBuilder();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      if (a3)
      {
        v21 = a2[3];
        v22 = a1[6];
        a1[5] = a2[2];
        a1[6] = v21;

        if ((v8 & 1) == 0)
        {
LABEL_5:
          if ((v7 & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_15;
        }
      }

      else if ((v8 & 1) == 0)
      {
        goto LABEL_5;
      }

      v23 = a2[5];
      swift_beginAccess();

      sub_1C0522140(v24);
      swift_endAccess();
      if ((v7 & 1) == 0)
      {
LABEL_6:
        if ((a6 & 1) == 0)
        {
LABEL_8:
          swift_beginAccess();
          v18 = *(v15 + 56);
          swift_beginAccess();

          v19 = a1[7];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = a1[7];
          a1[7] = 0x8000000000000000;
          sub_1C0522548(v18, sub_1C05227D4, 0, isUniquelyReferenced_nonNull_native, &v27);

          a1[7] = v27;
          swift_endAccess();
        }

LABEL_7:
        v16 = a2[7];
        swift_beginAccess();

        sub_1C0522448(v17);
        swift_endAccess();
        goto LABEL_8;
      }

LABEL_15:
      v25 = *(v12 + 24);
      swift_unownedRetainStrong();
      v26 = *(v25 + 112);

      sub_1C0522240(v26);
      if ((a6 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_1C05CAD28(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C0514E38(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1C06700C8();
      result = v17;
      goto LABEL_8;
    }

    sub_1C057B838(v14, a3 & 1);
    v18 = *v4;
    result = sub_1C0514E38(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = sub_1C095DF6C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 4 * result) = a1;
  }

  else
  {

    return sub_1C066FB64(result, a2, a1, v20);
  }

  return result;
}

unint64_t sub_1C05CAE34(int a1, uint64_t a2, unsigned int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C057EAB4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C0670228();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C057BA9C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1C057EAB4(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1C095DF6C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 16 * v11;
    v24 = *(v23 + 8);
    *v23 = a1;
    *(v23 + 8) = a2;
  }

  else
  {

    return sub_1C066FBA8(v11, a3, a1, a2, v22);
  }
}

unint64_t sub_1C05CAF70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C0514E38(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C06704F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C057BFAC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1C0514E38(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1C095DF6C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = *v23;
    v25 = v23[1];
    *v23 = a1;
    v23[1] = a2;

    return swift_unownedRelease();
  }

  else
  {

    return sub_1C066FC38(v11, a3, a1, a2, v22);
  }
}

uint64_t sub_1C05CB1F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v108 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_141:
      result = sub_1C0789580(v6);
      v6 = result;
    }

    v103 = *(v6 + 2);
    if (v103 >= 2)
    {
      while (*a3)
      {
        v104 = *&v6[16 * v103];
        v105 = *&v6[16 * v103 + 24];
        sub_1C05CB964((*a3 + 80 * v104), (*a3 + 80 * *&v6[16 * v103 + 16]), (*a3 + 80 * v105), v5);
        if (v119)
        {
        }

        if (v105 < v104)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1C0789580(v6);
        }

        if (v103 - 2 >= *(v6 + 2))
        {
          goto LABEL_135;
        }

        v106 = &v6[16 * v103];
        *v106 = v104;
        *(v106 + 1) = v105;
        result = sub_1C07894EC(v103 - 1);
        v103 = *(v6 + 2);
        if (v103 <= 1)
        {
        }
      }

      goto LABEL_145;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v7 = v5++;
  v115 = v6;
  if (v5 < v4)
  {
    v8 = *a3;
    v9 = v5;
    v10 = *a3 + 80 * v5;
    v11 = *(v10 + 16);
    v12 = v7;
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v109 = v12;
    v15 = *a3 + 80 * v12;
    v16 = *(v15 + 16);
    v17 = v13 == *(v15 + 24) && v14 == *(v15 + 32);
    v111 = v4;
    if (v17 || (result = sub_1C095DF3C(), v4 = v111, (result & 1) != 0))
    {
      v113 = v11 < v16;
    }

    else
    {
      result = sub_1C095DF3C();
      v4 = v111;
      v113 = result;
    }

    v18 = (v109 + 2);
    v19 = (v8 + 80 * v109 + 192);
    v20 = 80 * v109 + 80;
    v21 = v9;
    do
    {
      v5 = v18;
      v22 = v21;
      v23 = v20;
      if (v18 >= v4)
      {
        break;
      }

      v117 = v18;
      v24 = *(v19 - 4);
      v25 = *(v19 - 24);
      v26 = *(v19 - 1) == *(v19 - 11) && *v19 == *(v19 - 10);
      if (v26 || (v27 = *(v19 - 1), v28 = *v19, v29 = *(v19 - 11), v30 = *(v19 - 10), v31 = sub_1C095DF3C(), v4 = v111, (v31 & 1) != 0))
      {
        result = v24 < v25;
      }

      else
      {
        result = sub_1C095DF3C();
        v4 = v111;
      }

      v6 = v115;
      v5 = v117;
      v18 = v117 + 1;
      v19 += 10;
      v21 = v22 + 1;
      v20 = v23 + 80;
    }

    while (((v113 ^ result) & 1) == 0);
    if (!v113)
    {
LABEL_32:
      v7 = v109;
      goto LABEL_34;
    }

    v32 = v109;
    if (v5 < v109)
    {
      goto LABEL_138;
    }

    if (v109 < v5)
    {
      v33 = 80 * v109;
      do
      {
        if (v32 != v22)
        {
          v37 = *a3;
          if (!*a3)
          {
            goto LABEL_144;
          }

          v34 = (v37 + v23);
          v124 = *(v37 + v33 + 32);
          v126 = *(v37 + v33 + 48);
          v128 = *(v37 + v33 + 64);
          v120 = *(v37 + v33);
          v122 = *(v37 + v33 + 16);
          v35 = v33;
          result = memmove((v37 + v33), (v37 + v23), 0x50uLL);
          v33 = v35;
          v34[2] = v124;
          v34[3] = v126;
          v34[4] = v128;
          *v34 = v120;
          v34[1] = v122;
        }

        ++v32;
        v23 -= 80;
        v33 += 80;
      }

      while (v32 < v22--);
      goto LABEL_32;
    }

    v7 = v109;
  }

LABEL_34:
  v38 = a3[1];
  if (v5 >= v38)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v5, v7))
  {
    goto LABEL_137;
  }

  if (v5 - v7 >= a4)
  {
    goto LABEL_58;
  }

  v39 = (v7 + a4);
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v39 >= v38)
  {
    v39 = a3[1];
  }

  if (v39 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v5 == v39)
  {
    goto LABEL_58;
  }

  v40 = *a3;
  v41 = *a3 + 80 * v5 - 80;
  v110 = v39;
  v42 = v7 - v5;
LABEL_44:
  v118 = v5;
  v112 = v42;
  v114 = v41;
  v43 = v41;
  while (1)
  {
    v44 = *(v43 + 96);
    v45 = *(v43 + 16);
    v46 = *(v43 + 104) == *(v43 + 24) && *(v43 + 112) == *(v43 + 32);
    if (v46 || (v47 = *(v43 + 104), v48 = *(v43 + 112), v49 = *(v43 + 24), v50 = *(v43 + 32), result = sub_1C095DF3C(), (result & 1) != 0))
    {
      if (v44 >= v45)
      {
        goto LABEL_43;
      }
    }

    else
    {
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (!v40)
    {
      break;
    }

    v125 = *(v43 + 112);
    v127 = *(v43 + 128);
    v129 = *(v43 + 144);
    v51 = *(v43 + 64);
    v121 = *(v43 + 80);
    v123 = *(v43 + 96);
    v52 = *(v43 + 32);
    v53 = *(v43 + 48);
    v54 = *v43;
    *(v43 + 96) = *(v43 + 16);
    *(v43 + 112) = v52;
    *(v43 + 128) = v53;
    *(v43 + 144) = v51;
    *(v43 + 64) = v129;
    *(v43 + 80) = v54;
    *(v43 + 32) = v125;
    *(v43 + 48) = v127;
    *v43 = v121;
    *(v43 + 16) = v123;
    v43 -= 80;
    if (__CFADD__(v42++, 1))
    {
LABEL_43:
      v5 = (v118 + 1);
      v41 = v114 + 80;
      v42 = v112 - 1;
      if (v118 + 1 != v110)
      {
        goto LABEL_44;
      }

      v5 = v110;
      v6 = v115;
LABEL_58:
      if (v5 < v7)
      {
        goto LABEL_136;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C0577D94(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v57 = *(v6 + 2);
      v56 = *(v6 + 3);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        result = sub_1C0577D94((v56 > 1), v57 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v58;
      v59 = &v6[16 * v57];
      *(v59 + 4) = v7;
      *(v59 + 5) = v5;
      v60 = *v108;
      if (!*v108)
      {
        goto LABEL_146;
      }

      if (v57)
      {
        while (1)
        {
          v61 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v62 = *(v6 + 4);
            v63 = *(v6 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_78:
            if (v65)
            {
              goto LABEL_125;
            }

            v78 = &v6[16 * v58];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_128;
            }

            v84 = &v6[16 * v61 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_131;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_132;
            }

            if (v82 + v87 >= v64)
            {
              if (v64 < v87)
              {
                v61 = v58 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          v88 = &v6[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_92:
          if (v83)
          {
            goto LABEL_127;
          }

          v91 = &v6[16 * v61];
          v93 = *(v91 + 4);
          v92 = *(v91 + 5);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_130;
          }

          if (v94 < v82)
          {
            goto LABEL_3;
          }

LABEL_99:
          v99 = v61 - 1;
          if (v61 - 1 >= v58)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          if (!*a3)
          {
            goto LABEL_143;
          }

          v100 = *&v6[16 * v99 + 32];
          v101 = *&v6[16 * v61 + 40];
          sub_1C05CB964((*a3 + 80 * v100), (*a3 + 80 * *&v6[16 * v61 + 32]), (*a3 + 80 * v101), v60);
          if (v119)
          {
          }

          if (v101 < v100)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1C0789580(v6);
          }

          if (v99 >= *(v6 + 2))
          {
            goto LABEL_122;
          }

          v102 = &v6[16 * v99];
          *(v102 + 4) = v100;
          *(v102 + 5) = v101;
          result = sub_1C07894EC(v61);
          v58 = *(v6 + 2);
          if (v58 <= 1)
          {
            goto LABEL_3;
          }
        }

        v66 = &v6[16 * v58 + 32];
        v67 = *(v66 - 64);
        v68 = *(v66 - 56);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_123;
        }

        v71 = *(v66 - 48);
        v70 = *(v66 - 40);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_124;
        }

        v73 = &v6[16 * v58];
        v75 = *v73;
        v74 = *(v73 + 1);
        v72 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v72)
        {
          goto LABEL_126;
        }

        v72 = __OFADD__(v64, v76);
        v77 = v64 + v76;
        if (v72)
        {
          goto LABEL_129;
        }

        if (v77 >= v69)
        {
          v95 = &v6[16 * v61 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v72 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v72)
          {
            goto LABEL_133;
          }

          if (v64 < v98)
          {
            v61 = v58 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_78;
      }

LABEL_3:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_109;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1C05CB964(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[80 * v9] <= a4)
    {
      memmove(a4, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_45;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      __dsta = v7;
      v15 = *(v6 + 4);
      v16 = *(v4 + 4);
      v33 = v4;
      v17 = *(v4 + 3);
      v18 = *(v4 + 4);
      v19 = *(v6 + 3) == v17 && *(v6 + 4) == v18;
      if (v19 || (sub_1C095DF3C() & 1) != 0)
      {
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

      else if ((sub_1C095DF3C() & 1) == 0)
      {
LABEL_19:
        v13 = v33;
        v4 = v33 + 80;
        v14 = __dsta;
        if (__dsta == v33)
        {
          goto LABEL_9;
        }

LABEL_8:
        memmove(v14, v13, 0x50uLL);
        goto LABEL_9;
      }

      v13 = v6;
      v14 = __dsta;
      v19 = __dsta == v6;
      v6 += 80;
      v4 = v33;
      if (!v19)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 = v14 + 80;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }
  }

  if (a4 != __src || &__src[80 * v11] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > __dst)
  {
    v34 = v4;
LABEL_27:
    v5 -= 80;
    do
    {
      v20 = *(v12 - 16);
      v21 = *(v6 - 16);
      v22 = *(v12 - 7) == *(v6 - 7) && *(v12 - 6) == *(v6 - 6);
      if (v22 || (v23 = *(v12 - 7), v24 = *(v12 - 6), v25 = *(v6 - 7), v26 = *(v6 - 6), (sub_1C095DF3C() & 1) != 0))
      {
        if (v20 < v21)
        {
          goto LABEL_39;
        }
      }

      else if (sub_1C095DF3C())
      {
LABEL_39:
        v28 = (v6 - 80);
        v4 = v34;
        if (v5 + 80 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v12 <= v34 || (v6 -= 80, v28 <= __dst))
        {
          v6 = v28;
          goto LABEL_45;
        }

        goto LABEL_27;
      }

      v27 = v12 - 80;
      v4 = v34;
      if (v5 + 80 != v12)
      {
        memmove(v5, v12 - 80, 0x50uLL);
      }

      v5 -= 80;
      v12 -= 80;
    }

    while (v27 > v34);
    v12 = v27;
  }

LABEL_45:
  v29 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v29])
  {
    memmove(v6, v4, 80 * v29);
  }

  return 1;
}

uint64_t sub_1C05CBC74(int *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  sub_1C095DC1C();
  MEMORY[0x1C68DD690](0xD000000000000019, 0x80000001C09CD8E0);
  v7 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v7);

  MEMORY[0x1C68DD690](0x646E49646E65202CLL, 0xEB000000003D7865);
  v8 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v8);

  MEMORY[0x1C68DD690](0xD000000000000014, 0x80000001C09CD900);
  v9 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v9);

  MEMORY[0x1C68DD690](0xD000000000000012, 0x80000001C09CD920);
  v10 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v10);

  MEMORY[0x1C68DD690](0xD000000000000014, 0x80000001C09CD940);
  v11 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v11);

  MEMORY[0x1C68DD690](0xD000000000000012, 0x80000001C09CD960);
  v12 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v12);

  MEMORY[0x1C68DD690](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C05CBEC4(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 48);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = *(v4 - 1);
      v19 = *v4;
      v6 = sub_1C05CBC74(&v18);
      v8 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1C051B0D4(0, *(v5 + 2) + 1, 1, v5);
      }

      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      if (v10 >= v9 >> 1)
      {
        v5 = sub_1C051B0D4((v9 > 1), v10 + 1, 1, v5);
      }

      *(v5 + 2) = v10 + 1;
      v11 = &v5[16 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v8;
      v4 += 3;
      --v3;
    }

    while (v3);
  }

  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  sub_1C095DC1C();
  MEMORY[0x1C68DD690](0xD000000000000021, 0x80000001C09CD890);
  v12 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v12);

  MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CD8C0);
  v13 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v13);

  MEMORY[0x1C68DD690](0x3D736E617073202CLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18008, &qword_1C09753A8);
  sub_1C051E778();
  v14 = sub_1C095D72C();
  v16 = v15;

  MEMORY[0x1C68DD690](v14, v16);

  MEMORY[0x1C68DD690](93, 0xE100000000000000);
  return v18;
}

uint64_t sub_1C05CC118(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 4);
  v3 = *(result + 8);
  v4 = *(result + 16);
  v36 = *(result + 12);
  v37 = *(result + 20);
  v42 = *(result + 24);
  v43 = *(result + 32);
  v38 = *(result + 28);
  v39 = *(result + 36);
  v44 = *(result + 40);
  v45 = *(result + 48);
  v40 = *(result + 44);
  v41 = *(result + 52);
  v5 = *(result + 56);
  v6 = *(result + 60);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v61 = 0;
  v62 = 0xE000000000000000;
  if (!*result)
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    if (v3)
    {
      v57 = 0;
      v58 = 0xE000000000000000;
      v17 = v5;
      if (v4)
      {
        v19 = 0;
        goto LABEL_23;
      }

LABEL_16:
      sub_1C095DC1C();

      strcpy(v56, "maxTokenCount=");
      HIBYTE(v56[1]) = -18;
      LODWORD(v54) = v36;
      v18 = sub_1C095DF0C();
      MEMORY[0x1C68DD690](v18);

      MEMORY[0x1C68DD690](v56[0], v56[1]);

      v19 = 1;
      goto LABEL_23;
    }

LABEL_21:
    MEMORY[0x1C68DD690](0x6F6353686374616DLL, 0xEB000000003D6572);
    sub_1C095DA5C();
    MEMORY[0x1C68DD690](0, 0xE000000000000000);

    v57 = 0;
    v58 = 0xE000000000000000;
    if (v4)
    {
      goto LABEL_22;
    }

LABEL_15:
    v57 = 8236;
    v58 = 0xE200000000000000;
    v17 = v5;
    goto LABEL_16;
  }

  v35 = v7;
  v9 = 0;
  v10 = 0;
  v61 = 0xD000000000000013;
  v62 = 0x80000001C09CD770;
  v11 = 4;
  do
  {
    if (v10 > 4)
    {
      v11 = v10;
    }

    v12 = -v11;
    v13 = &unk_1F3F8C9F8 + 24 * v10++;
    v14 = (v13 + 48);
    while (1)
    {
      if (v12 + v10 == 1)
      {
        __break(1u);
        return result;
      }

      if ((*(v14 - 2) & ~v1) == 0)
      {
        break;
      }

      ++v10;
      v14 += 3;
      if (v10 == 5)
      {
        goto LABEL_13;
      }
    }

    v16 = *(v14 - 1);
    v15 = *v14;

    if (v9)
    {
      MEMORY[0x1C68DD690](8236, 0xE200000000000000);
    }

    MEMORY[0x1C68DD690](v16, v15);

    v9 = 1;
    v11 = 4;
  }

  while (v10 != 4);
LABEL_13:
  MEMORY[0x1C68DD690](125, 0xE100000000000000);
  v59 = 0;
  v60 = 0xE000000000000000;
  if ((v3 & 1) == 0)
  {
    v59 = 8236;
    v60 = 0xE200000000000000;
    v7 = v35;
    goto LABEL_21;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  v7 = v35;
  if ((v4 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_22:
  v19 = 1;
  v17 = v5;
LABEL_23:
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  if (v42)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    if ((v43 & 1) == 0)
    {
      if (!v19)
      {
LABEL_31:
        sub_1C095DC1C();

        LODWORD(v50) = v38;
        v21 = sub_1C095DF0C();
        MEMORY[0x1C68DD690](v21);

        MEMORY[0x1C68DD690](0xD000000000000011, 0x80000001C09CD850);

        goto LABEL_32;
      }

LABEL_30:
      v54 = 8236;
      v55 = 0xE200000000000000;
      goto LABEL_31;
    }
  }

  else
  {
    if (v19)
    {
      v56[0] = 8236;
      v56[1] = 0xE200000000000000;
    }

    sub_1C095DC1C();

    LODWORD(v52) = v37;
    v20 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v20);

    MEMORY[0x1C68DD690](0xD000000000000012, 0x80000001C09CD870);

    v54 = 0;
    v55 = 0xE000000000000000;
    if ((v43 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    v19 = 1;
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  if (v44)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    if ((v45 & 1) == 0)
    {
      if (!v19)
      {
LABEL_41:
        strcpy(v49, "editDistance=");
        HIWORD(v49[1]) = -4864;
        LODWORD(v48[0]) = v40;
        v23 = sub_1C095DF0C();
        MEMORY[0x1C68DD690](v23);

        MEMORY[0x1C68DD690](v49[0], v49[1]);

        goto LABEL_42;
      }

LABEL_40:
      v50 = 8236;
      v51 = 0xE200000000000000;
      goto LABEL_41;
    }
  }

  else
  {
    if (v19)
    {
      v52 = 8236;
      v53 = 0xE200000000000000;
    }

    sub_1C095DC1C();

    LODWORD(v49[0]) = v39;
    v22 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v22);

    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CD830);

    v50 = 0;
    v51 = 0xE000000000000000;
    if ((v45 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    v19 = 1;
  }

  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  if (v17)
  {
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    if ((v7 & 1) == 0)
    {
      if (!v19)
      {
LABEL_51:
        sub_1C095DC1C();

        v25 = sub_1C095DF0C();
        MEMORY[0x1C68DD690](v25);

        MEMORY[0x1C68DD690](0xD000000000000012, 0x80000001C09CD810);

        goto LABEL_52;
      }

LABEL_50:
      v48[0] = 8236;
      v48[1] = 0xE200000000000000;
      goto LABEL_51;
    }
  }

  else
  {
    if (v19)
    {
      v49[0] = 8236;
      v49[1] = 0xE200000000000000;
    }

    sub_1C095DC1C();

    strcpy(v48, "maxAliasCount=");
    HIBYTE(v48[1]) = -18;
    v24 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v24);

    MEMORY[0x1C68DD690](v48[0], v48[1]);

    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    if ((v7 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_52:
    v19 = 1;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  if (*(v8 + 16))
  {
    if (v19)
    {
      v46 = 8236;
      v47 = 0xE200000000000000;
    }

    MEMORY[0x1C68DD690](0xD000000000000013, 0x80000001C09CD790);
    v26 = *(v8 + 16);
    if (v26)
    {
      v27 = 0;
      v28 = v8 + 32;
      do
      {
        v29 = *(v28 + v27);
        if (v29 > 5)
        {
          if (*(v28 + v27) > 8u)
          {
            if (v29 == 9)
            {
              v31 = 0x80000001C09CD7B0;
              v30 = 0xD000000000000010;
            }

            else
            {
              if (v29 != 10)
              {
                v30 = 0x7A6974616D6D654CLL;
                v32 = 0x6E6F697461;
                goto LABEL_82;
              }

              v30 = 0x636974656E6F6850;
              v31 = 0xEF7265686374614DLL;
            }
          }

          else if (v29 == 6)
          {
            v31 = 0x80000001C09CD7F0;
            v30 = 0xD000000000000013;
          }

          else
          {
            if (v29 == 7)
            {
              v30 = 0x48746361746E6F43;
              v32 = 0x656C646E61;
LABEL_82:
              v31 = v32 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              goto LABEL_83;
            }

            v30 = 0x614D786966657250;
            v31 = 0xEE00676E69686374;
          }
        }

        else if (*(v28 + v27) > 2u)
        {
          if (v29 == 3)
          {
            v30 = 0x74696C736E617254;
            v31 = 0xEF6E6F6974617265;
          }

          else
          {
            if (v29 == 4)
            {
              v30 = 0x6465646E61707845;
              v32 = 0x696A6F6D45;
              goto LABEL_82;
            }

            v31 = 0x80000001C09CD7D0;
            v30 = 0xD000000000000011;
          }
        }

        else if (*(v28 + v27))
        {
          if (v29 == 1)
          {
            v30 = 0x6F747541656D6F48;
            v31 = 0xEE006E6F6974616DLL;
          }

          else
          {
            v30 = 0x6D796E6F6E7953;
            v31 = 0xE700000000000000;
          }
        }

        else
        {
          v30 = 0x656E696665646E75;
          v31 = 0xE900000000000064;
        }

LABEL_83:
        MEMORY[0x1C68DD690](v30, v31);
        if (v27 < v26 - 1)
        {
          MEMORY[0x1C68DD690](8236, 0xE200000000000000);
        }

        ++v27;
      }

      while (v26 != v27);
    }

    MEMORY[0x1C68DD690](125, 0xE100000000000000);
    v34 = v46;
    v33 = v47;
  }

  else
  {
    v34 = 0;
    v33 = 0xE000000000000000;
  }

  sub_1C095DC1C();

  MEMORY[0x1C68DD690](v59, v60);

  MEMORY[0x1C68DD690](v57, v58);

  MEMORY[0x1C68DD690](v56[0], v56[1]);

  MEMORY[0x1C68DD690](v54, v55);

  MEMORY[0x1C68DD690](v52, v53);

  MEMORY[0x1C68DD690](v50, v51);

  MEMORY[0x1C68DD690](v49[0], v49[1]);

  MEMORY[0x1C68DD690](v48[0], v48[1]);

  MEMORY[0x1C68DD690](v34, v33);

  return v61;
}

char *sub_1C05CCB8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    for (i = (a1 + 76); ; i += 48)
    {
      v21 = *(i - 44);
      v22 = v2;
      v4 = *(i - 36);
      v5 = *(i - 20);
      v6 = *(i - 3);
      v7 = *(i - 8);
      v8 = *(i - 1);
      v9 = *i;
      if (v5)
      {
        v10 = *(i - 28);

        sub_1C095DC1C();

        strcpy(v23, ", valueString=");
        HIBYTE(v23[1]) = -18;
        MEMORY[0x1C68DD690](v10, v5);

        v12 = v23[0];
        v11 = v23[1];
        if (v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = *(i - 36);

        v12 = 0;
        v11 = 0xE000000000000000;
        if (v7)
        {
LABEL_5:
          v13 = 0;
          v14 = 0xE000000000000000;
          if (v9)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      strcpy(v23, ", valueInt=");
      HIDWORD(v23[1]) = -352321536;
      v16 = sub_1C095DF0C();
      MEMORY[0x1C68DD690](v16);

      v13 = v23[0];
      v14 = v23[1];
      if (v9)
      {
        goto LABEL_10;
      }

LABEL_9:
      MEMORY[0x1C68DD690](0x4665756C6176202CLL, 0xED00003D74616F6CLL);
      sub_1C095DA5C();
LABEL_10:
      v23[0] = 1031365995;
      v23[1] = 0xE400000000000000;
      MEMORY[0x1C68DD690](v21, v4);

      MEMORY[0x1C68DD690](v12, v11);

      MEMORY[0x1C68DD690](v13, v14);

      MEMORY[0x1C68DD690](0, 0xE000000000000000);

      v2 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1C051B0D4(0, *(v22 + 2) + 1, 1, v22);
      }

      v18 = *(v2 + 2);
      v17 = *(v2 + 3);
      if (v18 >= v17 >> 1)
      {
        v2 = sub_1C051B0D4((v17 > 1), v18 + 1, 1, v2);
      }

      *(v2 + 2) = v18 + 1;
      v19 = &v2[16 * v18];
      *(v19 + 4) = 1031365995;
      *(v19 + 5) = 0xE400000000000000;
      if (!--v1)
      {
        return v2;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1C05CCE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 52);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(v2 - 20);
    v5 = *(v2 - 12);
    if (*v2)
    {
      v6 = *(v2 - 12);
    }

    else
    {
      v7 = *(v2 - 1);

      sub_1C095DC1C();
      MEMORY[0x1C68DD690](0x6261626F7270202CLL, 0xEE003D7974696C69);
      sub_1C095DA5C();
    }

    MEMORY[0x1C68DD690](v4, v5);

    MEMORY[0x1C68DD690](0, 0xE000000000000000);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1C051B0D4(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_1C051B0D4((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = 0x3D65756C6176;
    *(v10 + 5) = 0xE600000000000000;
    v2 += 24;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1C05CD020(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[14];
  v7 = a1[15];
  v48 = *(a1 + 32);
  v50 = *(a1 + 132);
  v9 = *(a1 + 34);
  v52 = *(a1 + 140);
  v10 = a1[18];
  v46 = a1[19];
  v56 = a1[20];
  v60 = *(a1 + 168);
  if (v3)
  {
    v58 = a1[4];
    v11 = a1[3];
    v12 = a1[14];
    v13 = a1[15];
    v14 = *(a1 + 34);
    v15 = *a1;
    sub_1C095DC1C();

    strcpy(v64, ", originAppId=");
    HIBYTE(v64[0]) = -18;
    v16 = v15;
    v9 = v14;
    v7 = v13;
    v8 = v12;
    v6 = v11;
    v5 = v58;
    MEMORY[0x1C68DD690](v16, v3);
    v17 = *(&v64[0] + 1);
    v61 = *&v64[0];
  }

  else
  {
    v61 = 0;
    v17 = 0xE000000000000000;
  }

  v62 = v17;
  v68 = 0;
  v69 = 0xE000000000000000;
  if (v4 == 7)
  {
    goto LABEL_20;
  }

  v68 = 0xD000000000000012;
  v69 = 0x80000001C09CD750;
  if (v4 > 2)
  {
    if (v4 > 4)
    {
      if (v4 == 5)
      {
        v18 = 0x4143726573726150;
        v19 = 0xEA00000000004954;
      }

      else
      {
        v18 = 0x5353726573726150;
        v19 = 0xE900000000000055;
      }
    }

    else if (v4 == 3)
    {
      v18 = 0x526E6F69746E654DLL;
      v19 = 0xEF7265766C6F7365;
    }

    else
    {
      v18 = 0xD000000000000013;
      v19 = 0x80000001C09CD610;
    }

    goto LABEL_19;
  }

  if (!v4)
  {
    v18 = 0x6E776F6E6B6E75;
LABEL_16:
    v19 = 0xE700000000000000;
    goto LABEL_19;
  }

  if (v4 != 1)
  {
    v18 = 0x656C6946636F56;
    goto LABEL_16;
  }

  v18 = 0x61636F5669726953;
  v19 = 0xE900000000000062;
LABEL_19:
  MEMORY[0x1C68DD690](v18, v19);
LABEL_20:
  if (v5)
  {
    *&v64[0] = 0x3D6C6562616C202CLL;
    *(&v64[0] + 1) = 0xE800000000000000;
    MEMORY[0x1C68DD690](v6, v5);
    v20 = 0xE800000000000000;
    v57 = 0x3D6C6562616C202CLL;
  }

  else
  {
    v57 = 0;
    v20 = 0xE000000000000000;
  }

  v59 = v20;
  v21 = 0xE000000000000000;
  if (v8)
  {
    *&v64[0] = 0;
    *(&v64[0] + 1) = 0xE000000000000000;
    sub_1C095DC1C();

    strcpy(v67, ", matchInfo=[");
    HIWORD(v67[1]) = -4864;
    v22 = *(a1 + 7);
    v23 = *(a1 + 11);
    v64[2] = *(a1 + 9);
    v64[3] = v23;
    v24 = a1[13];
    v64[0] = *(a1 + 5);
    v64[1] = v22;
    v65 = v24;
    v66 = v8;
    v25 = sub_1C05CC118(v64);
    MEMORY[0x1C68DD690](v25);

    MEMORY[0x1C68DD690](93, 0xE100000000000000);
    v21 = v67[1];
    v55 = v67[0];
  }

  else
  {
    v55 = 0;
  }

  v26 = 0xE000000000000000;
  if (*(v7 + 16))
  {
    *&v64[0] = 0;
    *(&v64[0] + 1) = 0xE000000000000000;
    sub_1C095DC1C();

    *&v64[0] = 0x7265706F7270202CLL;
    *(&v64[0] + 1) = 0xEF7B5B3D73656974;
    v67[0] = sub_1C05CCB8C(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18008, &qword_1C09753A8);
    sub_1C051E778();
    v27 = sub_1C095D72C();
    v29 = v28;

    MEMORY[0x1C68DD690](v27, v29);

    MEMORY[0x1C68DD690](23933, 0xE200000000000000);
    v26 = *(&v64[0] + 1);
    v54 = *&v64[0];
    if (v50)
    {
LABEL_28:
      v49 = 0;
      v30 = 0xE000000000000000;
      goto LABEL_31;
    }
  }

  else
  {
    v54 = 0;
    if (v50)
    {
      goto LABEL_28;
    }
  }

  strcpy(v64, ", startIndex=");
  HIWORD(v64[0]) = -4864;
  LODWORD(v67[0]) = v48;
  v31 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v31);

  v30 = *(&v64[0] + 1);
  v49 = *&v64[0];
LABEL_31:
  v51 = v30;
  if (v52)
  {
    v53 = 0;
    v32 = 0xE000000000000000;
  }

  else
  {
    *&v64[0] = 0x646E49646E65202CLL;
    *(&v64[0] + 1) = 0xEB000000003D7865;
    LODWORD(v67[0]) = v9;
    v33 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v33);

    v32 = *(&v64[0] + 1);
    v53 = *&v64[0];
  }

  v34 = 0xE000000000000000;
  if (*(v10 + 16))
  {
    *&v64[0] = 0;
    *(&v64[0] + 1) = 0xE000000000000000;
    sub_1C095DC1C();

    *&v64[0] = 0xD000000000000011;
    *(&v64[0] + 1) = 0x80000001C09CD6D0;
    v67[0] = sub_1C05CCE60(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18008, &qword_1C09753A8);
    sub_1C051E778();
    v35 = sub_1C095D72C();
    v37 = v36;

    MEMORY[0x1C68DD690](v35, v37);

    MEMORY[0x1C68DD690](23933, 0xE200000000000000);
    v34 = *(&v64[0] + 1);
    v47 = *&v64[0];
  }

  else
  {
    v47 = 0;
  }

  v38 = 0xE000000000000000;
  if (v56)
  {
    *&v64[0] = 0;
    *(&v64[0] + 1) = 0xE000000000000000;
    sub_1C095DC1C();

    *&v64[0] = 0xD000000000000011;
    *(&v64[0] + 1) = 0x80000001C09CD730;
    MEMORY[0x1C68DD690](v46, v56);
    v38 = *(&v64[0] + 1);
    v39 = *&v64[0];
  }

  else
  {
    v39 = 0;
  }

  if (v60 == 3)
  {
    v40 = 0;
    v41 = 0xE000000000000000;
  }

  else
  {
    *&v64[0] = 0;
    *(&v64[0] + 1) = 0xE000000000000000;
    sub_1C095DC1C();

    *&v64[0] = 0xD000000000000019;
    *(&v64[0] + 1) = 0x80000001C09CD710;
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    if (v60 != 2)
    {
      MEMORY[0x1C68DD690](0x656D686361747461, 0xEF3D65707954746ELL);
      if (v60)
      {
        v42 = 0x6C616974726170;
        v43 = 0xE700000000000000;
      }

      else
      {
        v42 = 1819047270;
        v43 = 0xE400000000000000;
      }

      MEMORY[0x1C68DD690](v42, v43);
    }

    MEMORY[0x1C68DD690](v67[0], v67[1]);

    MEMORY[0x1C68DD690](93, 0xE100000000000000);
    v41 = *(&v64[0] + 1);
    v40 = *&v64[0];
  }

  *&v64[0] = 0;
  *(&v64[0] + 1) = 0xE000000000000000;
  sub_1C095DC1C();

  *&v64[0] = 0xD000000000000019;
  *(&v64[0] + 1) = 0x80000001C09CD6F0;
  v67[0] = a2;
  v44 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v44);

  MEMORY[0x1C68DD690](v61, v62);

  MEMORY[0x1C68DD690](v68, v69);

  MEMORY[0x1C68DD690](v57, v59);

  MEMORY[0x1C68DD690](v55, v21);

  MEMORY[0x1C68DD690](v54, v26);

  MEMORY[0x1C68DD690](v49, v51);

  MEMORY[0x1C68DD690](v53, v32);

  MEMORY[0x1C68DD690](v47, v34);

  MEMORY[0x1C68DD690](v39, v38);

  MEMORY[0x1C68DD690](v40, v41);

  MEMORY[0x1C68DD690](93, 0xE100000000000000);
  return *&v64[0];
}

uint64_t static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  return sub_1C05CD9E0(v6, a2, a3);
}

{
  memcpy(v6, __src, 0x20AuLL);
  return sub_1C05CD9E0(v6, a2, a3);
}

void *sub_1C05CD948@<X0>(void *__src@<X0>, void *(*a2)(void *__return_ptr, uint64_t, uint64_t)@<X3>, char *a3@<X8>)
{
  memcpy(v10 + 1, __src, 0x20AuLL);
  result = sub_1C057363C(v10 + 1);
  if (result != 8 || (v6 = sub_1C05759DC(v10 + 1), v7 = *(v6 + 16), v8 = *(v6 + 24), , result = a2(v10, v7, v8), v9 = v10[0], LOBYTE(v10[0]) == 35))
  {
    v9 = 35;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1C05CD9E0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C095DB0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  memcpy(v19, a1, 0x20AuLL);
  if (sub_1C057363C(v19) == 8)
  {
    v11 = sub_1C05759DC(v19);
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    v18[0] = v13;
    v18[1] = v12;

    sub_1C095D92C();
    v14 = *(a2 - 8);
    v15 = v14;
    if ((*(v14 + 48))(v10, 1, a2) != 1)
    {
      (*(v14 + 32))(a3, v10, a2);
      v16 = 0;
      return (*(v15 + 56))(a3, v16, 1, a2);
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v14 = *(a2 - 8);
  }

  v15 = v14;
  v16 = 1;
  return (*(v15 + 56))(a3, v16, 1, a2);
}

uint64_t sub_1C05CDC50@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(v11, __src, 0x20AuLL);
  result = sub_1C057363C(v11);
  if (result != 8)
  {
    goto LABEL_7;
  }

  v4 = sub_1C05759DC(v11);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (sub_1C095D77C() == v5 && v7 == v6)
  {

    goto LABEL_9;
  }

  v9 = sub_1C095DF3C();

  if (v9)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v10 = 1;
LABEL_10:
  *a2 = v10;
  return result;
}

uint64_t static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v21 - v13;
  memcpy(v24, a1, 0x20AuLL);
  if (sub_1C057363C(v24) != 8)
  {
    return (*(*(a2 - 8) + 56))(a5, 1, 1, a2);
  }

  v15 = sub_1C05759DC(v24);
  v21 = *v15;
  v22 = a5;
  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  v18 = sub_1C095DC2C();
  v23 = &v21;
  MEMORY[0x1EEE9AC00](v18);
  *(&v21 - 8) = a2;
  *(&v21 - 7) = a3;
  *(&v21 - 6) = a4;
  *(&v21 - 40) = v21;
  *(&v21 - 3) = v17;
  *(&v21 - 2) = v16;
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1C095D90C();
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1C05CDF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(*(a6 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1C095D77C() == a4 && v11 == a5)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C095DF3C();
  }

  return v13 & 1;
}

uint64_t sub_1C05CE034(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1C05CDF20(a1, v1[5], v1[6], v1[7], v1[8], v1[2]) & 1;
}

uint64_t sub_1C05CE0A4@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 8 || (v4 = sub_1C05759DC(__dst), v5 = *(v4 + 16), v6 = *(v4 + 24), , result = AddressOntologyNode.RadiusUnitNode.init(rawValue:)(&v8), v7 = v8, v8 == 4))
  {
    v7 = 4;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1C05CE12C@<X0>(void *__src@<X0>, unsigned __int8 *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 8 || (v4 = sub_1C05759DC(__dst), v5 = *(v4 + 16), v6 = *(v4 + 24), , result = AddressOntologyNode.CountryCode.init(rawValue:)(&v8), v7 = v8, v8 == 255))
  {
    v7 = -1;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1C05CE1B4@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 8 || (v4 = sub_1C05759DC(__dst), v5 = *(v4 + 16), v6 = *(v4 + 24), , result = AddressOntologyNode.Continent.init(rawValue:)(&v8), v7 = v8, v8 == 8))
  {
    v7 = 8;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1C05CE23C@<X0>(void *__src@<X0>, unsigned __int8 *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 8 || (v4 = sub_1C05759DC(__dst), v5 = *(v4 + 16), v6 = *(v4 + 24), , result = AddressOntologyNode.StreetType.init(rawValue:)(&v8), v7 = v8, v8 == 180))
  {
    v7 = -76;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1C05CE2C4@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 8 || (v4 = sub_1C05759DC(__dst), v5 = *(v4 + 16), v6 = *(v4 + 24), , result = AddressOntologyNode.Proximity.init(rawValue:)(&v8), v7 = v8, v8 == 5))
  {
    v7 = 5;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1C05CE364@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(v8, __src, 0x20AuLL);
  result = sub_1C057363C(v8);
  if (result != 8)
  {
    goto LABEL_5;
  }

  v4 = sub_1C05759DC(v8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  result = sub_1C095DD6C();
  if (result == 1)
  {
    v7 = 1;
    goto LABEL_6;
  }

  if (result)
  {
LABEL_5:
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

LABEL_6:
  *a2 = v7;
  return result;
}

uint64_t sub_1C05CE3FC@<X0>(void *__src@<X0>, BOOL *a2@<X8>)
{
  memcpy(v8, __src, 0x20AuLL);
  result = sub_1C057363C(v8);
  v7 = 1;
  if (result == 8)
  {
    v4 = sub_1C05759DC(v8);
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    result = sub_1C095DD6C();
    if (!result)
    {
      v7 = 0;
    }
  }

  *a2 = v7;
  return result;
}

uint64_t TerminalElement.DateTimeValue.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v20 = *(v1 + 96);
  v21 = v2;
  v4 = *(v1 + 112);
  v22 = *(v1 + 128);
  v5 = *(v1 + 48);
  v7 = *(v1 + 16);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 48);
  v9 = *(v1 + 80);
  v18 = *(v1 + 64);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 16);
  v15[0] = *v1;
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 144);
  *(a1 + 144) = *(v1 + 144);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_1C05149F8(v15, v14, &qword_1EBE18018, &qword_1C0975400);
}

uint64_t TerminalElement.DateTimeValue.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  v14 = *(v1 + 296);
  v3 = *(v1 + 200);
  v13[2] = *(v1 + 184);
  v13[3] = v3;
  v4 = *(v1 + 232);
  v13[4] = *(v1 + 216);
  v13[5] = v4;
  v5 = *(v1 + 168);
  v13[0] = *(v1 + 152);
  v13[1] = v5;
  v6 = *(v1 + 264);
  v13[6] = v2;
  v13[7] = v6;
  v7 = *(v1 + 264);
  v13[8] = *(v1 + 280);
  *(a1 + 96) = *(v1 + 248);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(v1 + 280);
  *(a1 + 144) = *(v1 + 296);
  v8 = *(v1 + 200);
  *(a1 + 32) = *(v1 + 184);
  *(a1 + 48) = v8;
  v9 = *(v1 + 232);
  *(a1 + 64) = *(v1 + 216);
  *(a1 + 80) = v9;
  v10 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v10;
  return sub_1C05149F8(v13, v12, &qword_1EBE18018, &qword_1C0975400);
}

void TerminalElement.DateTimeValue.duration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  *a1 = *(v1 + 304);
  *(a1 + 8) = v2;
}

void TerminalElement.DateTimeValue.interval.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 328);
  *a1 = *(v1 + 320);
  *(a1 + 8) = v2;
}

void TerminalElement.DateTimeValue.recurrence.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 344);
  *a1 = *(v1 + 336);
  *(a1 + 8) = v2;
}

uint64_t TerminalElement.DateTimeValue.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 400);
  v9 = *(v1 + 384);
  v10[0] = v2;
  v3 = *(v1 + 368);
  v8[0] = *(v1 + 352);
  v4 = v8[0];
  v8[1] = v3;
  *(v10 + 15) = *(v1 + 415);
  v5 = *(v10 + 15);
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  *(a1 + 63) = v5;
  return sub_1C05149F8(v8, v7, &qword_1EBE18020, &qword_1C0975408);
}

uint64_t TerminalElement.DateTimeValue.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 472);
  v9 = *(v1 + 456);
  v10[0] = v2;
  *(v10 + 15) = *(v1 + 487);
  v3 = *(v10 + 15);
  v4 = *(v1 + 440);
  v8[0] = *(v1 + 424);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 63) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1C05149F8(v8, v7, &qword_1EBE18020, &qword_1C0975408);
}

uint64_t TerminalElement.DateTimeValue.startPosition.getter()
{
  result = *(v0 + 496);
  v2 = *(v0 + 504);
  return result;
}

uint64_t TerminalElement.DateTimeValue.endPosition.getter()
{
  result = *(v0 + 512);
  v2 = *(v0 + 520);
  return result;
}

__n128 TerminalElement.DateTimeValue.init(startDate:endDate:duration:interval:recurrence:startTime:endTime:startPosition:endPosition:temporalIntent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, char *a13)
{
  v13 = *a3;
  v14 = *(a3 + 4);
  v15 = *a4;
  v16 = *(a4 + 2);
  v17 = *a5;
  v18 = *(a5 + 4);
  v19 = *a13;
  v20 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v20;
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = *(a1 + 144);
  v21 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v21;
  v22 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v22;
  v23 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v23;
  v24 = *(a2 + 112);
  *(a9 + 248) = *(a2 + 96);
  v25 = *(a2 + 128);
  *(a9 + 264) = v24;
  *(a9 + 280) = v25;
  *(a9 + 296) = *(a2 + 144);
  v26 = *(a2 + 48);
  *(a9 + 184) = *(a2 + 32);
  *(a9 + 200) = v26;
  v27 = *(a2 + 80);
  *(a9 + 216) = *(a2 + 64);
  *(a9 + 232) = v27;
  v28 = *(a2 + 16);
  *(a9 + 152) = *a2;
  *(a9 + 168) = v28;
  *(a9 + 304) = v13;
  *(a9 + 312) = v14;
  *(a9 + 320) = v15;
  *(a9 + 328) = v16;
  *(a9 + 336) = v17;
  *(a9 + 344) = v18;
  v29 = *(a6 + 48);
  *(a9 + 384) = *(a6 + 32);
  *(a9 + 400) = v29;
  *(a9 + 415) = *(a6 + 63);
  v30 = *(a6 + 16);
  *(a9 + 352) = *a6;
  *(a9 + 368) = v30;
  result = *a7;
  v32 = *(a7 + 16);
  v33 = *(a7 + 32);
  v34 = *(a7 + 48);
  *(a9 + 487) = *(a7 + 63);
  *(a9 + 456) = v33;
  *(a9 + 472) = v34;
  *(a9 + 424) = result;
  *(a9 + 440) = v32;
  *(a9 + 496) = a8;
  *(a9 + 504) = a10 & 1;
  *(a9 + 512) = a11;
  *(a9 + 520) = a12 & 1;
  *(a9 + 521) = v19;
  return result;
}

uint64_t TerminalElement.Date.year.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t TerminalElement.Date.month.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t TerminalElement.Date.dayOfMonth.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t TerminalElement.Date.dateTimeHoliday.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 64);
  return sub_1C05D25A0(v2, v3);
}

__n128 TerminalElement.Date.fractionalPeriod.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 129);
  result = *(v1 + 88);
  v6 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

uint64_t TerminalElement.Date.dayOfWeekOrdinalValue.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t TerminalElement.Date.init(year:month:dayOfMonth:dayOfWeek:dateTimeHoliday:qualifier:isStart:isUserDefined:periods:calendarSystem:fractionalPeriod:dayOfWeekOrdinalValue:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, __int16 a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char a16)
{
  *(a9 + 48) = *a8;
  v16 = *(a14 + 16);
  *(a9 + 88) = *a14;
  v17 = *a7;
  v18 = *(a8 + 16);
  v19 = *a10;
  v20 = *a13;
  v21 = *(a14 + 32);
  v22 = *(a14 + 40);
  v23 = *(a14 + 41);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  result = a6 & 1;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = v17;
  *(a9 + 64) = v18;
  *(a9 + 65) = v19;
  *(a9 + 66) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = v20;
  *(a9 + 104) = v16;
  *(a9 + 120) = v21;
  *(a9 + 128) = v22;
  *(a9 + 129) = v23;
  *(a9 + 136) = a15;
  *(a9 + 144) = a16 & 1;
  return result;
}

uint64_t TerminalElement.Time.meridiem.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TerminalElement.Time.hourOfDay.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t TerminalElement.Time.minute.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t TerminalElement.Time.timeZoneID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TerminalElement.Time.init(meridiem:hourOfDay:minute:period:qualifier:timeZoneID:isStart:isUserDefined:is24HourStyleInput:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, __int16 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, int a12)
{
  v12 = *a7;
  v13 = *a8;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = v12;
  *(a9 + 43) = v13;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  *(a9 + 65) = *(&a12 + 1);
  return result;
}

uint64_t TerminalElement.Interval.quantity.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t TerminalElement.Interval.init(quantity:period:qualifier:isUserDefined:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *a4;
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 9) = v6;
  *(a6 + 10) = v7;
  *(a6 + 11) = a5;
  return result;
}

uint64_t TerminalElement.Recurrence.magnitude.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t TerminalElement.Recurrence.init(magnitude:period:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 9) = v4;
  return result;
}

uint64_t TerminalElement.DateTimePeriod.init(isStart:period:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

uint64_t TerminalElement.FractionalPeriod.numerator.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t TerminalElement.FractionalPeriod.denominator.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t TerminalElement.FractionalPeriod.ordinalValue.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t TerminalElement.FractionalPeriod.init(numerator:denominator:ordinalValue:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t TerminalElement.DateTimeHoliday.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TerminalElement.DateTimeHoliday.init(identifier:calendarSystem:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t TerminalElement.DateTimeValue.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 156);
  v4 = (v1 + 152);
  v38 = *(v1 + 38);
  v39 = *(v1 + 40);
  v5 = *(v1 + 82);
  v37 = *(v1 + 42);
  v6 = *(v1 + 172);
  v7 = *(v1 + 45);
  v8 = *(v1 + 54);
  v40 = *(v1 + 44);
  v41 = *(v1 + 53);
  v9 = *(v1 + 456);
  v80 = *(v1 + 440);
  v81 = v9;
  v82[0] = *(v1 + 472);
  *(v82 + 15) = *(v1 + 487);
  v42 = *(v1 + 62);
  v43 = *(v1 + 64);
  v44 = v8;
  v45 = *(v1 + 504);
  v46 = *(v1 + 520);
  v47 = *(v1 + 521);
  v84 = *(v1 + 144);
  v10 = v1[8];
  v83[7] = v1[7];
  v83[8] = v10;
  v11 = v1[6];
  v83[5] = v1[5];
  v83[6] = v11;
  v12 = v1[4];
  v83[3] = v1[3];
  v83[4] = v12;
  v13 = v1[2];
  v83[1] = v1[1];
  v83[2] = v13;
  v83[0] = *v1;
  if (sub_1C05D25B4(v83) == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    v14 = v1[7];
    v66 = v1[6];
    v67 = v14;
    v68 = v1[8];
    v69 = *(v1 + 144);
    v15 = v1[3];
    v63 = v1[2];
    v64[0] = v15;
    v16 = v1[5];
    v64[1] = v1[4];
    v65 = v16;
    v17 = v1[1];
    v61 = *v1;
    v62 = v17;
    sub_1C05D25CC(&v61, &v70);
    TerminalElement.Date.hash(into:)(a1);
    v18 = v1[7];
    v76 = v1[6];
    v77 = v18;
    v78 = v1[8];
    v79 = *(v1 + 144);
    v19 = v1[3];
    v72 = v1[2];
    v73 = v19;
    v20 = v1[5];
    v74 = v1[4];
    v75 = v20;
    v21 = v1[1];
    v70 = *v1;
    v71 = v21;
    sub_1C05D2604(&v70);
  }

  v22 = *(v1 + 264);
  v76 = *(v1 + 248);
  v77 = v22;
  v78 = *(v1 + 280);
  v79 = *(v1 + 296);
  v23 = *(v1 + 200);
  v72 = *(v1 + 184);
  v73 = v23;
  v24 = *(v1 + 232);
  v74 = *(v1 + 216);
  v75 = v24;
  v25 = *(v1 + 168);
  v70 = *v4;
  v71 = v25;
  if (sub_1C05D25B4(&v70) == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    v26 = *(v1 + 264);
    v59[3] = *(v1 + 248);
    v59[4] = v26;
    v59[5] = *(v1 + 280);
    v60 = *(v1 + 296);
    v27 = *(v1 + 200);
    v58 = *(v1 + 184);
    v59[0] = v27;
    v28 = *(v1 + 232);
    v59[1] = *(v1 + 216);
    v59[2] = v28;
    v29 = *(v1 + 168);
    v56 = *v4;
    v57 = v29;
    sub_1C05D25CC(&v56, &v61);
    TerminalElement.Date.hash(into:)(a1);
    v30 = *(v1 + 264);
    v66 = *(v1 + 248);
    v67 = v30;
    v68 = *(v1 + 280);
    v69 = *(v1 + 296);
    v31 = *(v1 + 200);
    v63 = *(v1 + 184);
    v64[0] = v31;
    v32 = *(v1 + 232);
    v64[1] = *(v1 + 216);
    v65 = v32;
    v33 = *(v1 + 168);
    v61 = *v4;
    v62 = v33;
    sub_1C05D2604(&v61);
  }

  if (v3 >> 8 == 54)
  {
    sub_1C095E00C();
  }

  else
  {
    *&v61 = v38;
    WORD4(v61) = v3 & 0xFF01;
    sub_1C095E00C();
    TerminalElement.Duration.hash(into:)();
  }

  if (HIBYTE(v5) == 3)
  {
    sub_1C095E00C();
  }

  else
  {
    *&v61 = v39;
    WORD4(v61) = v5 & 0xFF01;
    BYTE10(v61) = BYTE2(v5);
    BYTE11(v61) = HIBYTE(v5);
    sub_1C095E00C();
    TerminalElement.Interval.hash(into:)();
  }

  if (v6 >> 8 == 54)
  {
    goto LABEL_19;
  }

  v34 = v6 >> 8;
  sub_1C095E00C();
  if (v6)
  {
    sub_1C095E00C();
    if (v34 != 53)
    {
      goto LABEL_16;
    }

LABEL_19:
    sub_1C095E00C();
    if (v7 != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v37);
  if (v34 == 53)
  {
    goto LABEL_19;
  }

LABEL_16:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v6 >> 8);
  if (v7 != 1)
  {
LABEL_17:
    v50 = v1[23];
    v52 = v1[24];
    *v54 = v1[25];
    *&v54[15] = *(v1 + 415);
    *&v48 = v40;
    *(&v48 + 1) = v7;
    sub_1C095E00C();
    *&v56 = v40;
    *(&v56 + 1) = v7;
    v35 = v1[24];
    v57 = v1[23];
    v58 = v35;
    v59[0] = v1[25];
    *(v59 + 15) = *(v1 + 415);
    sub_1C05D2634(&v56, &v61);
    TerminalElement.Time.hash(into:)();
    v63 = v52;
    v64[0] = *v54;
    *(v64 + 15) = *&v54[15];
    v61 = v48;
    v62 = v50;
    sub_1C05D266C(&v61);
    goto LABEL_21;
  }

LABEL_20:
  sub_1C095E00C();
LABEL_21:
  if (v44 == 1)
  {
    sub_1C095E00C();
    if (!v45)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v51 = v80;
    v53 = v81;
    *v55 = v82[0];
    *&v55[15] = *(v82 + 15);
    *&v49 = v41;
    *(&v49 + 1) = v44;
    sub_1C095E00C();
    *&v56 = v41;
    *(&v56 + 1) = v44;
    v57 = v80;
    v58 = v81;
    v59[0] = v82[0];
    *(v59 + 15) = *(v82 + 15);
    sub_1C05D2634(&v56, &v61);
    TerminalElement.Time.hash(into:)();
    v63 = v53;
    v64[0] = *v55;
    *(v64 + 15) = *&v55[15];
    v61 = v49;
    v62 = v51;
    sub_1C05D266C(&v61);
    if (!v45)
    {
LABEL_23:
      sub_1C095E00C();
      MEMORY[0x1C68DDE90](v42);
      if (!v46)
      {
        goto LABEL_24;
      }

LABEL_28:
      sub_1C095E00C();
      if (v47 != 3)
      {
        goto LABEL_25;
      }

      return sub_1C095E00C();
    }
  }

  sub_1C095E00C();
  if (v46)
  {
    goto LABEL_28;
  }

LABEL_24:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v43);
  if (v47 != 3)
  {
LABEL_25:
    sub_1C095E00C();
    return MEMORY[0x1C68DDE90](v47);
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.DateTimeValue.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.DateTimeValue.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05CF208()
{
  sub_1C095DFEC();
  TerminalElement.DateTimeValue.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05CF24C()
{
  sub_1C095DFEC();
  TerminalElement.DateTimeValue.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t TerminalElement.Date.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);
  v24 = v2[2];
  v25 = v2[4];
  v27 = *(v2 + 40);
  v5 = *(v2 + 41);
  v6 = v2[7];
  v7 = *(v2 + 64);
  v8 = *(v2 + 65);
  v9 = *(v2 + 66);
  v29 = *(v2 + 67);
  v30 = v2[9];
  v31 = *(v2 + 80);
  v10 = v2[12];
  v20 = v2[11];
  v11 = v2[14];
  v21 = v2[13];
  v22 = v2[15];
  v23 = v2[6];
  v12 = *(v2 + 128);
  v32 = *(v2 + 129);
  v26 = v2[17];
  v28 = *(v2 + 144);
  if (*(v2 + 8) == 1)
  {
    sub_1C095E00C();
    if (!v4)
    {
LABEL_3:
      sub_1C095E00C();
      MEMORY[0x1C68DDE90](v24);
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v2[12];
    v10 = *(v2 + 41);
    v13 = *(v2 + 128);
    v14 = *(v2 + 66);
    v15 = *(v2 + 64);
    v16 = *v2;
    sub_1C095E00C();
    v17 = v16;
    v7 = v15;
    v9 = v14;
    v12 = v13;
    v5 = v10;
    LOBYTE(v10) = v19;
    MEMORY[0x1C68DDE90](v17);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  sub_1C095E00C();
LABEL_6:
  if (v27)
  {
    sub_1C095E00C();
    if (v5 != 7)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_1C095E00C();
    if (v6 == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v25);
  if (v5 == 7)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v5);
  if (v6 == 1)
  {
LABEL_14:
    sub_1C095E00C();
    if (v8 == 18)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_12:
  sub_1C095E00C();
  if (v6)
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v7 == 12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1C095E00C();
    if (v7 == 12)
    {
      goto LABEL_14;
    }
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v7);
  if (v8 == 18)
  {
LABEL_15:
    sub_1C095E00C();
    if (v9 == 2)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_19:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v8);
  if (v9 != 2)
  {
LABEL_16:
    sub_1C095E00C();
  }

LABEL_20:
  sub_1C095E00C();
  if (v29 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C057134C(a1, v30);
  if (v31 == 12)
  {
    sub_1C095E00C();
    if (v32)
    {
LABEL_33:
      sub_1C095E00C();
      if (v28)
      {
        return sub_1C095E00C();
      }

LABEL_30:
      sub_1C095E00C();
      return MEMORY[0x1C68DDE90](v26);
    }
  }

  else
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v31);
    if (v32)
    {
      goto LABEL_33;
    }
  }

  sub_1C095E00C();
  if (v10)
  {
    sub_1C095E00C();
    if ((v11 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v20);
    if ((v11 & 1) == 0)
    {
LABEL_28:
      sub_1C095E00C();
      MEMORY[0x1C68DDE90](v21);
      if (v12)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }
  }

  sub_1C095E00C();
  if (v12)
  {
    goto LABEL_33;
  }

LABEL_29:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v22);
  if ((v28 & 1) == 0)
  {
    goto LABEL_30;
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.Date.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.Date.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05CF600()
{
  sub_1C095DFEC();
  TerminalElement.Date.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05CF644()
{
  sub_1C095DFEC();
  TerminalElement.Date.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t TerminalElement.Time.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  v6 = *(v0 + 43);
  v7 = v0[7];
  v11 = v0[6];
  v12 = *(v0 + 64);
  v13 = *(v0 + 65);
  v14 = *(v0 + 66);
  if (v0[1])
  {
    v8 = *v0;
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v1);
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C095E00C();
    goto LABEL_8;
  }

  sub_1C095E00C();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C095E00C();
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v3);
LABEL_8:
  if (v5 == 3)
  {
    goto LABEL_12;
  }

  sub_1C095E00C();
  if (v5 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  if ((v5 >> 8) == 53)
  {
LABEL_12:
    sub_1C095E00C();
    if (v6 == 18)
    {
      goto LABEL_13;
    }

LABEL_16:
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v6);
    v9 = v12;
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v5 >> 8);
  if (v6 != 18)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_1C095E00C();
  v9 = v12;
  if (v7)
  {
LABEL_14:
    sub_1C095E00C();
    sub_1C095D7BC();
    goto LABEL_18;
  }

LABEL_17:
  sub_1C095E00C();
LABEL_18:
  if (v9 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  if (v13 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  if (v14 != 2)
  {
    sub_1C095E00C();
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.Time.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.Time.hash(into:)();
  return sub_1C095E03C();
}

uint64_t sub_1C05CF8D0()
{
  sub_1C095DFEC();
  TerminalElement.Time.hash(into:)();
  return sub_1C095E03C();
}

uint64_t sub_1C05CF914()
{
  sub_1C095DFEC();
  TerminalElement.Time.hash(into:)();
  return sub_1C095E03C();
}

uint64_t TerminalElement.Duration.hash(into:)()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1C095E00C();
    if (v1 != 53)
    {
LABEL_3:
      sub_1C095E00C();
      return MEMORY[0x1C68DDE90](v1);
    }
  }

  else
  {
    v3 = *v0;
    sub_1C095E00C();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C68DDEC0](v4);
    if (v1 != 53)
    {
      goto LABEL_3;
    }
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.Duration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1C095DFEC();
  if (v2 == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C68DDEC0](v4);
  }

  sub_1C095E00C();
  if (v3 != 53)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05CFA90()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1C095DFEC();
  if (v2 == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C68DDEC0](v4);
  }

  sub_1C095E00C();
  if (v3 != 53)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E03C();
}

uint64_t TerminalElement.Interval.hash(into:)()
{
  v1 = *(v0 + 9);
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  if (*(v0 + 8) == 1)
  {
    sub_1C095E00C();
    if (v1 != 53)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *v0;
    sub_1C095E00C();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1C68DDEC0](v5);
    if (v1 != 53)
    {
LABEL_3:
      sub_1C095E00C();
      MEMORY[0x1C68DDE90](v1);
      if (v2 != 18)
      {
        goto LABEL_4;
      }

LABEL_11:
      sub_1C095E00C();
      if (v3 == 2)
      {
        return sub_1C095E00C();
      }

      goto LABEL_5;
    }
  }

  sub_1C095E00C();
  if (v2 == 18)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v2);
  if (v3 != 2)
  {
LABEL_5:
    sub_1C095E00C();
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.Interval.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  sub_1C095DFEC();
  if (v2 == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1C68DDEC0](v6);
  }

  sub_1C095E00C();
  if (v3 != 53)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  if (v4 != 18)
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v4);
    if (v5 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_1C095E00C();
  if (v5 != 2)
  {
LABEL_11:
    sub_1C095E00C();
  }

LABEL_13:
  sub_1C095E00C();
  return sub_1C095E03C();
}

uint64_t sub_1C05CFD38()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  sub_1C095DFEC();
  if (v2 == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1C68DDEC0](v6);
  }

  sub_1C095E00C();
  if (v3 != 53)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  if (v4 != 18)
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v4);
    if (v5 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_1C095E00C();
  if (v5 != 2)
  {
LABEL_11:
    sub_1C095E00C();
  }

LABEL_13:
  sub_1C095E00C();
  return sub_1C095E03C();
}

uint64_t TerminalElement.Recurrence.hash(into:)()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1C095E00C();
    if (v1 != 53)
    {
LABEL_3:
      sub_1C095E00C();
      return MEMORY[0x1C68DDE90](v1);
    }
  }

  else
  {
    v3 = *v0;
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v3);
    if (v1 != 53)
    {
      goto LABEL_3;
    }
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.Recurrence.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2 != 1)
  {
    MEMORY[0x1C68DDE90](v1);
  }

  sub_1C095E00C();
  if (v3 != 53)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05CFF78()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1C095E00C();
    if (v1 != 53)
    {
LABEL_3:
      sub_1C095E00C();
      return MEMORY[0x1C68DDE90](v1);
    }
  }

  else
  {
    v3 = *v0;
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v3);
    if (v1 != 53)
    {
      goto LABEL_3;
    }
  }

  return sub_1C095E00C();
}

uint64_t sub_1C05CFFFC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2 != 1)
  {
    MEMORY[0x1C68DDE90](v1);
  }

  sub_1C095E00C();
  if (v3 != 53)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E03C();
}

uint64_t TerminalElement.DateTimePeriod.hash(into:)()
{
  v1 = v0[1];
  if (*v0 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  if (v1 == 53)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  return MEMORY[0x1C68DDE90](v1);
}

uint64_t TerminalElement.DateTimePeriod.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C095DFEC();
  if (v1 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C095E00C();
  if (v2 != 53)
  {
    MEMORY[0x1C68DDE90](v2);
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05D01C0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C095DFEC();
  if (v1 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C095E00C();
  if (v2 != 53)
  {
    MEMORY[0x1C68DDE90](v2);
  }

  return sub_1C095E03C();
}

uint64_t TerminalElement.DateTimeHoliday.hash(into:)()
{
  v1 = *(v0 + 16);
  if (v0[1])
  {
    v2 = *v0;
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v1 == 12)
    {
      return sub_1C095E00C();
    }
  }

  else
  {
    sub_1C095E00C();
    if (v1 == 12)
    {
      return sub_1C095E00C();
    }
  }

  sub_1C095E00C();
  return MEMORY[0x1C68DDE90](v1);
}

uint64_t TerminalElement.DateTimeHoliday.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2)
  {
    sub_1C095D7BC();
  }

  sub_1C095E00C();
  if (v3 != 12)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05D038C()
{
  v1 = *(v0 + 16);
  if (v0[1])
  {
    v2 = *v0;
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v1 == 12)
    {
      return sub_1C095E00C();
    }
  }

  else
  {
    sub_1C095E00C();
    if (v1 == 12)
    {
      return sub_1C095E00C();
    }
  }

  sub_1C095E00C();
  return MEMORY[0x1C68DDE90](v1);
}

uint64_t sub_1C05D0414()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2)
  {
    sub_1C095D7BC();
  }

  sub_1C095E00C();
  if (v3 != 12)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E03C();
}

uint64_t TerminalElement.FractionalPeriod.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (*(v0 + 8) == 1)
  {
    sub_1C095E00C();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    if (!v4)
    {
      goto LABEL_4;
    }

    return sub_1C095E00C();
  }

  v6 = *v0;
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v6);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v1);
  if (!v4)
  {
LABEL_4:
    sub_1C095E00C();
    return MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.FractionalPeriod.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1C095DFEC();
  if (v2 == 1)
  {
    sub_1C095E00C();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    if (!v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v1);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v3);
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v5);
  return sub_1C095E03C();
}

uint64_t sub_1C05D065C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1C095DFEC();
  if (v2 == 1)
  {
    sub_1C095E00C();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    if (!v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v1);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v3);
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v5);
  return sub_1C095E03C();
}

uint64_t _s12SiriOntology15TerminalElementV15DateTimeHolidayV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *a1 == *a2 && v3 == v5;
    if (!v7 && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4 == 12)
  {
    if (v6 == 12)
    {
      return 1;
    }
  }

  else if (v6 != 12 && v4 == v6)
  {
    return 1;
  }

  return 0;
}

BOOL _s12SiriOntology15TerminalElementV16FractionalPeriodV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v6 = *(a2 + 40);
    }

    else
    {
      v6 = 1;
    }

    return (v6 & 1) == 0;
  }

  return (*(a2 + 40) & 1) != 0;
}

BOOL _s12SiriOntology15TerminalElementV4DateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 65);
  v11 = *(a1 + 66);
  v62 = *(a1 + 67);
  v60 = *(a1 + 72);
  v58 = *(a1 + 80);
  v50 = *(a1 + 88);
  v54 = *(a1 + 96);
  v47 = *(a1 + 104);
  v51 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v56 = *(a1 + 129);
  v14 = *(a1 + 136);
  v15 = *(a1 + 144);
  v16 = *(a2 + 41);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 65);
  v21 = *(a2 + 66);
  v61 = *(a2 + 67);
  v59 = *(a2 + 72);
  v57 = *(a2 + 80);
  v48 = *(a2 + 88);
  v53 = *(a2 + 96);
  v45 = *(a2 + 104);
  v49 = *(a2 + 112);
  v44 = *(a2 + 120);
  v46 = *(a2 + 128);
  v55 = *(a2 + 129);
  v52 = *(a2 + 136);
  v22 = *(a2 + 144);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v23 = *(a2 + 8);
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v24 = *(a2 + 24);
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v25 = *(a2 + 40);
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (v6 == 7)
  {
    if (v16 != 7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v16 == 7 || v6 != v16)
    {
      return result;
    }
  }

  if (v8 != 1)
  {
    v65[0] = v7;
    v65[1] = v8;
    v66 = v9;
    if (v18 != 1)
    {
      v39 = v22;
      v40 = v13;
      v41 = v12;
      v42 = v15;
      v43 = v14;
      v63[0] = v17;
      v63[1] = v18;
      v64 = v19;
      v38 = _s12SiriOntology15TerminalElementV15DateTimeHolidayV2eeoiySbAE_AEtFZ_0(v65, v63);
      sub_1C05D25A0(v7, v8);
      sub_1C05D25A0(v17, v18);
      sub_1C05D25A0(v7, v8);

      sub_1C05D3944(v7, v8);
      if ((v38 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_37;
    }

    sub_1C05D25A0(v7, v8);
    sub_1C05D25A0(v17, 1);
    sub_1C05D25A0(v7, v8);

LABEL_33:
    sub_1C05D3944(v7, v8);
    sub_1C05D3944(v17, v18);
    return 0;
  }

  v39 = *(a2 + 144);
  v40 = v13;
  v41 = v12;
  v42 = v15;
  v43 = v14;
  sub_1C05D25A0(v7, 1);
  if (v18 != 1)
  {
    sub_1C05D25A0(v17, v18);
    goto LABEL_33;
  }

  sub_1C05D25A0(v17, 1);
  sub_1C05D3944(v7, 1);
LABEL_37:
  if (v10 == 18)
  {
    v27 = v43;
    v28 = v42;
    v29 = v41;
    v31 = v39;
    v30 = v40;
    if (v20 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v27 = v43;
    v28 = v42;
    v29 = v41;
    v31 = v39;
    v30 = v40;
    if (v20 == 18 || v10 != v20)
    {
      return result;
    }
  }

  if (v11 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v21 == 2 || ((v21 ^ v11) & 1) != 0)
    {
      return result;
    }
  }

  if (v62 == 2)
  {
    if (v61 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v61 == 2 || ((v61 ^ v62) & 1) != 0)
    {
      return result;
    }
  }

  v32 = v29;
  v33 = v27;
  if ((sub_1C055B5AC(v60, v59) & 1) == 0)
  {
    return 0;
  }

  if (v58 == 12)
  {
    v34 = v33;
    v35 = v28;
    v36 = v31;
    if (v57 != 12)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v57 == 12)
    {
      return result;
    }

    v34 = v33;
    v35 = v28;
    v36 = v31;
    if (v58 != v57)
    {
      return result;
    }
  }

  if (v56)
  {
    if ((v55 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_60;
  }

  if (v55)
  {
    return 0;
  }

  if (v54)
  {
    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53 & 1 | (v50 != v48))
  {
    return 0;
  }

  if (v51)
  {
    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49 & 1 | (v47 != v45))
  {
    return 0;
  }

  if (v30)
  {
    v34 = v33;
    v35 = v28;
    v36 = v31;
    if ((v46 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_60;
  }

  result = 0;
  if ((v46 & 1) == 0)
  {
    v34 = v33;
    v35 = v28;
    v36 = v31;
    if (v32 == v44)
    {
LABEL_60:
      if ((v35 & 1) == 0)
      {
        if (v34 == v52)
        {
          v37 = v36;
        }

        else
        {
          v37 = 1;
        }

        return (v37 & 1) == 0;
      }

      return (v36 & 1) != 0;
    }
  }

  return result;
}

BOOL _s12SiriOntology15TerminalElementV8DurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 != 53)
  {
    return v4 != 53 && v2 == v4;
  }

  return v4 == 53;
}

uint64_t _s12SiriOntology15TerminalElementV8IntervalV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a1 + 10);
  v4 = *(a1 + 11);
  v5 = *(a2 + 8);
  v6 = *(a2 + 9);
  v7 = *(a2 + 10);
  v8 = *(a2 + 11);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (v2 == 53)
  {
    if (v6 != 53)
    {
      return 0;
    }
  }

  else if (v6 == 53 || v2 != v6)
  {
    return 0;
  }

  if (v3 == 18)
  {
    if (v7 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v7 == 18 || v3 != v7)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v8 ^ v4) & 1) != 0)
  {
    return 0;
  }

  return 1;
}