uint64_t sub_26864A180(uint64_t result, int a2)
{
  v2 = a2 / 0x3B9ACA00u;
  if (a2 < 0)
  {
    v2 = ~(~a2 / 0x3B9ACA00u);
  }

  v3 = result + v2;
  if (__OFADD__(result, v2))
  {
    __break(1u);
  }

  else
  {
    if (a2 % 1000000000 >= 0)
    {
      v4 = a2 % 1000000000;
    }

    else
    {
      v4 = a2 % 1000000000 + 1000000000;
    }

    if ((v3 - 0x3AFFF44180) >= 0xFFFFFFB68879C780)
    {
      v5 = sub_2686366F0(v3);
      v6 = v5;
      v8 = v7;
      v9 = HIDWORD(v5);
      v10 = sub_2686367AC(v3);
      v11 = v10;
      v13 = v12;
      v14 = HIDWORD(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD60, &unk_26868F250);
      if (v4)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_268690B60;
        v16 = MEMORY[0x277D849A8];
        v17 = MEMORY[0x277D84A20];
        *(v15 + 56) = MEMORY[0x277D849A8];
        *(v15 + 64) = v17;
        *(v15 + 32) = v11;
        *(v15 + 96) = v16;
        *(v15 + 104) = v17;
        *(v15 + 72) = v14;
        *(v15 + 136) = v16;
        *(v15 + 144) = v17;
        *(v15 + 112) = v13;
        *(v15 + 176) = v16;
        *(v15 + 184) = v17;
        *(v15 + 152) = v6;
        *(v15 + 216) = v16;
        *(v15 + 224) = v17;
        *(v15 + 192) = v9;
        *(v15 + 256) = v16;
        *(v15 + 264) = v17;
        *(v15 + 232) = v8;
        if (v4 % 1000000)
        {
          *(v15 + 296) = v16;
          *(v15 + 304) = v17;
          if (v4 % 1000)
          {
            *(v15 + 272) = v4;
          }

          else
          {
            *(v15 + 272) = v4 / 1000;
          }
        }

        else
        {
          *(v15 + 296) = v16;
          *(v15 + 304) = v17;
          *(v15 + 272) = v4 / 1000000;
        }
      }

      else
      {
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_268690B70;
        v19 = MEMORY[0x277D849A8];
        v20 = MEMORY[0x277D84A20];
        *(v18 + 56) = MEMORY[0x277D849A8];
        *(v18 + 64) = v20;
        *(v18 + 32) = v11;
        *(v18 + 96) = v19;
        *(v18 + 104) = v20;
        *(v18 + 72) = v14;
        *(v18 + 136) = v19;
        *(v18 + 144) = v20;
        *(v18 + 112) = v13;
        *(v18 + 176) = v19;
        *(v18 + 184) = v20;
        *(v18 + 152) = v6;
        *(v18 + 216) = v19;
        *(v18 + 224) = v20;
        *(v18 + 192) = v9;
        *(v18 + 256) = v19;
        *(v18 + 264) = v20;
        *(v18 + 232) = v8;
      }

      return sub_268689984();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26864A40C(uint64_t a1, int a2)
{
  v2 = a2 / 0x3B9ACA00u;
  if (a2 < 0)
  {
    v2 = ~(~a2 / 0x3B9ACA00u);
  }

  v3 = __OFADD__(a1, v2);
  result = a1 + v2;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

double Google_Protobuf_Timestamp.init(seconds:nanos:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 16) = xmmword_26868A5E0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_26864A490()
{
  v1 = sub_26864A180(*v0, *(v0 + 8));
  if (v2)
  {
    MEMORY[0x26D61D4B0](v1);

    MEMORY[0x26D61D4B0](34, 0xE100000000000000);
    return 34;
  }

  else
  {
    sub_2685D104C();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }
}

void sub_26864A554()
{
  sub_2685BC49C();
  if (!v1)
  {
    v4 = sub_268649BC0(v2, v3);
    v6 = v5;

    *v0 = v4;
    *(v0 + 8) = v6;
  }
}

void Google_Protobuf_Timestamp.init(timeIntervalSince1970:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = floor(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = round((a2 - v3) * 1000000000.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 2147483650.0)
  {
    *a1 = sub_26864A40C(v3, v4);
    *(a1 + 8) = v5;
    *(a1 + 16) = xmmword_26868A5E0;
    return;
  }

LABEL_13:
  __break(1u);
}

void Google_Protobuf_Timestamp.init(timeIntervalSinceReferenceDate:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = floor(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_268689894();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v3 + v5;
  if (__OFADD__(v3, v5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = round((a2 - v3) * 1000000000.0);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < 2147483650.0)
  {
    *a1 = sub_26864A40C(v6, v7);
    *(a1 + 8) = v8;
    *(a1 + 16) = xmmword_26868A5E0;
    return;
  }

LABEL_21:
  __break(1u);
}

double Google_Protobuf_Timestamp.init(date:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_268689884();
  Google_Protobuf_Timestamp.init(timeIntervalSinceReferenceDate:)(&v8, v4);
  v5 = sub_2686898A4();
  (*(*(v5 - 8) + 8))(a1, v5);
  v6 = v9;
  *a2 = v8;
  *(a2 + 8) = v6;
  result = *&v10;
  *(a2 + 16) = v10;
  return result;
}

uint64_t Google_Protobuf_Timestamp.timeIntervalSinceReferenceDate.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  result = sub_268689894();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v1, v4))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t Google_Protobuf_Timestamp.date.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = sub_268689894();
  if ((v4.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4.n128_f64[0] <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4.n128_f64[0] >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(v1, v4.n128_f64[0]))
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x28211D478](v3, v4);
  }

  v4.n128_f64[0] = v2 / 1000000000.0 + (v1 - v4.n128_f64[0]);

  return MEMORY[0x28211D478](v3, v4);
}

uint64_t sub_26864AA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __OFADD__(*a1, *a2);
  result = *a1 + *a2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    if (!__OFADD__(v8, v7))
    {
      result = sub_26864A40C(result, v8 + v7);
      *(a3 + 16) = xmmword_26868A5E0;
      *a3 = result;
      *(a3 + 8) = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t - infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __OFSUB__(*a1, *a2);
  result = *a1 - *a2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    if (!__OFSUB__(v8, v7))
    {
      result = sub_26864A40C(result, v8 - v7);
      *(a3 + 16) = xmmword_26868A5E0;
      *a3 = result;
      *(a3 + 8) = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26864C4A0()
{
  result = qword_28028D600;
  if (!qword_28028D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D600);
  }

  return result;
}

unint64_t sub_26864C4F4(uint64_t a1)
{
  result = sub_26864C51C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26864C51C()
{
  result = qword_28028D608;
  if (!qword_28028D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D608);
  }

  return result;
}

uint64_t Message.init(textFormatString:extensions:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v35 = a3;
  v33 = sub_2686899A4();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v33, v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a5 + 16);
  v32 = a5;
  v21(a4, a5);
  v22 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v22 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    goto LABEL_8;
  }

  sub_268689994();
  v23 = sub_268689954();
  v25 = v24;

  v26 = (*(v10 + 8))(v15, v33);
  if (v25 >> 60 == 15)
  {
LABEL_8:
    v29 = v35;
LABEL_9:
    (*(v16 + 16))(v34, v20, a4);
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v26, v27);
  v28 = v32;
  *(&v32 - 4) = a4;
  *(&v32 - 3) = v28;
  v29 = v35;
  *(&v32 - 2) = v35;
  *(&v32 - 1) = v20;
  v30 = v36;
  sub_2685B2660(sub_26864CC94, (&v32 - 6), v23, v25);
  sub_2685B98FC(v23, v25);
  if (!v30)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_2685B55C0(v29);
  return (*(v16 + 8))(v20, a4);
}

uint64_t sub_26864C9D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v7 = result;
    v8 = a2 - result;
    if (a2 - result >= 1)
    {
      sub_2685B2978(a3, v32);
      *&v28 = 0;
      WORD4(v28) = 256;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      sub_2685B2978(v32, &v22);
      type metadata accessor for DoubleParser();
      v24 = 0u;
      v25 = 0u;
      *&v26 = 0;
      v11 = swift_allocObject();
      v12 = swift_slowAlloc();
      *(v11 + 16) = v12;
      *(v11 + 24) = v12 + 128;
      *(&v27 + 1) = v11;
      v13 = &v7[v8];
      *(&v26 + 1) = v7;
      *&v27 = &v7[v8];
      sub_26864CCB4(&v22, &v24);
      do
      {
        v14 = *v7;
        if (v14 > 0x23)
        {
          break;
        }

        if (((1 << v14) & 0x100002600) == 0)
        {
          if (v14 == 35)
          {
            *(&v26 + 1) = ++v7;
            while (v7 != v13)
            {
              v16 = *v7++;
              v15 = v16;
              if (v16 == 10 || v15 == 13)
              {
                goto LABEL_7;
              }
            }

            *(&v26 + 1) = v13;
          }

          break;
        }

        ++v7;
LABEL_7:
        *(&v26 + 1) = v7;
      }

      while (v7 != v13);
      sub_2685B55C0(&v22);
      v18 = swift_conformsToProtocol2();
      if (v18 && a5)
      {
        (*(v18 + 8))(&v22, a5, v18);
        sub_2685B55C0(v32);
        sub_2685B2FBC(v29);
        v30 = v23;
        v29 = v22;
        *&v31 = a5;
        *(&v31 + 1) = a6;
        v33[0] = v24;
        v33[1] = v25;
        v34 = v26;
        v35 = v27;
        v36 = v28;
        v37 = v22;
        v38 = v23;
        v39 = v31;
        (*(a6 + 64))(v33, &type metadata for TextFormatDecoder, &off_28792DCE0, a5, a6);
        if (v6 || *(&v34 + 1) == v35)
        {
          v19 = v33;
        }

        else
        {
          sub_2685C1CBC();
          swift_allocError();
          *v21 = 2;
          swift_willThrow();
          v19 = v33;
        }
      }

      else
      {
        sub_2685C1CBC();
        swift_allocError();
        *v20 = 6;
        swift_willThrow();
        sub_2685B55C0(v32);
        v19 = &v24;
      }

      return sub_268643E5C(v19);
    }
  }

  return result;
}

uint64_t sub_26864CCB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD70, &unk_268690670);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void Google_Protobuf_DoubleValue.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
}

double Google_Protobuf_FloatValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

void Google_Protobuf_Int64Value.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
}

double Google_Protobuf_Int32Value.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_BoolValue.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

double Google_Protobuf_BoolValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_StringValue.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Google_Protobuf_StringValue.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double Google_Protobuf_StringValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_BytesValue.value.getter()
{
  v1 = *v0;
  sub_2685BA80C(*v0, *(v0 + 8));
  return v1;
}

uint64_t Google_Protobuf_BytesValue.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2685B593C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Google_Protobuf_BytesValue.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

double Google_Protobuf_BytesValue.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  a1[1] = xmmword_26868A5E0;
  return result;
}

uint64_t static Google_Protobuf_DoubleValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDF0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D618;
  v2 = qword_28028D620;
  v3 = unk_28028D628;
  *a1 = qword_28028D610;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_DoubleValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 48))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864D2AC(double a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 != 0.0)
  {
    v5 = a4;
    v6 = a3;
    MEMORY[0x26D61D8F0](1);
    result = MEMORY[0x26D61D920](*&a1);
    a3 = v6;
    a4 = v5;
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a3;
    v10 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26864D354(uint64_t result, uint64_t a2, unint64_t a3, double a4)
{
  v6 = result;
  if (a4 != 0.0)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2686639C4(a4);
    v9 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      *v6 = result;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2685B3F48((v10 > 1), v11 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + v11 + 32) = 10;
    *v6 = v9;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      return result;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    v13 = a2;
    v14 = a2 >> 32;
  }

  if (v13 == v14)
  {
    return result;
  }

LABEL_15:
  if (*(v6 + 64) == 1)
  {
    return sub_26863B108(a2, a3);
  }

  return result;
}

uint64_t Google_Protobuf_DoubleValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  if (*v3 == 0.0)
  {
    goto LABEL_2;
  }

  v11 = *(v3 + 16);
  v12 = *(v3 + 8);
  result = (*(a3 + 16))(1, a2, a3, *v3);
  if (!v4)
  {
    v8 = v12;
    v9 = v11;
LABEL_2:
    v13 = v8;
    v14 = v9;
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v13, v14);
  }

  return result;
}

uint64_t static Google_Protobuf_DoubleValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6 & 1;
}

uint64_t Google_Protobuf_DoubleValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864D2AC(v1, &v5, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864D70C@<X0>(void *a1@<X8>)
{
  if (qword_28028BDF0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D618;
  v2 = qword_28028D620;
  v3 = unk_28028D628;
  *a1 = qword_28028D610;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26864D7B4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864D2AC(v1, &v5, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864D864()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864D2AC(v1, &v5, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864D910(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6 & 1;
}

uint64_t static Google_Protobuf_FloatValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D638;
  v2 = qword_28028D640;
  v3 = unk_28028D648;
  *a1 = qword_28028D630;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_FloatValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 24))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864DB28(float a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 != 0.0)
  {
    v4 = a1;
    v5 = a4;
    v6 = a3;
    MEMORY[0x26D61D8F0](1);
    result = MEMORY[0x26D61D920](*&v4);
    a3 = v6;
    a4 = v5;
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a3;
    v10 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26864DBD0(uint64_t result, uint64_t a2, unint64_t a3, float a4)
{
  v6 = result;
  if (a4 != 0.0)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_26866393C(a4);
    v9 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      *v6 = result;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2685B3F48((v10 > 1), v11 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + v11 + 32) = 10;
    *v6 = v9;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      return result;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    v13 = a2;
    v14 = a2 >> 32;
  }

  if (v13 == v14)
  {
    return result;
  }

LABEL_15:
  if (*(v6 + 64) == 1)
  {
    return sub_26863B108(a2, a3);
  }

  return result;
}

uint64_t Google_Protobuf_FloatValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  if (*v3 == 0.0)
  {
    goto LABEL_2;
  }

  v11 = *(v3 + 16);
  v12 = *(v3 + 8);
  result = (*(a3 + 8))(1, a2, a3, *v3);
  if (!v4)
  {
    v8 = v12;
    v9 = v11;
LABEL_2:
    v13 = v8;
    v14 = v9;
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v13, v14);
  }

  return result;
}

uint64_t static Google_Protobuf_FloatValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6 & 1;
}

uint64_t Google_Protobuf_FloatValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864DB28(v1, &v5, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864DF88@<X0>(void *a1@<X8>)
{
  if (qword_28028BDF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D638;
  v2 = qword_28028D640;
  v3 = unk_28028D648;
  *a1 = qword_28028D630;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26864E030()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864DB28(v1, &v5, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864E0E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864DB28(v1, &v5, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864E18C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6 & 1;
}

uint64_t static Google_Protobuf_Int64Value._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE00 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D658;
  v2 = qword_28028D660;
  v3 = unk_28028D668;
  *a1 = qword_28028D650;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Int64Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 96))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864E3A4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  if (!a2 || (result = sub_268636ED8(a2, 1), !v4))
  {
    v8 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v8 != 2)
      {
        return result;
      }

      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((a4 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_11;
      }

      v9 = a3;
      v10 = a3 >> 32;
    }

    if (v9 == v10)
    {
      return result;
    }

LABEL_11:
    if (*(v7 + 64) == 1)
    {
      return sub_26863B108(a3, a4);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Int64Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = v3[2];
  if (!*v3 || (result = (*(a3 + 32))(*v3, 1, a2, a3), !v4))
  {
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v8, v9);
  }

  return result;
}

uint64_t sub_26864E54C@<X0>(void *a1@<X8>)
{
  if (qword_28028BE00 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D658;
  v2 = qword_28028D660;
  v3 = unk_28028D668;
  *a1 = qword_28028D650;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_UInt64Value._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE08 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D678;
  v2 = qword_28028D680;
  v3 = unk_28028D688;
  *a1 = qword_28028D670;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_UInt64Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 144))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864E774(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    MEMORY[0x26D61D8F0](1);
    result = MEMORY[0x26D61D920](a2);
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a3;
    v10 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26864E818(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  if (a2)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_268663B88(a2);
    v9 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      *v6 = result;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2685B3F48((v10 > 1), v11 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + v11 + 32) = 10;
    *v6 = v9;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v12 != 2)
    {
      return result;
    }

    v13 = *(a3 + 16);
    v14 = *(a3 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    v13 = a3;
    v14 = a3 >> 32;
  }

  if (v13 == v14)
  {
    return result;
  }

LABEL_15:
  if (*(v6 + 64) == 1)
  {
    return sub_26863B108(a3, a4);
  }

  return result;
}

uint64_t Google_Protobuf_UInt64Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = v3[2];
  if (!*v3 || (result = (*(a3 + 48))(*v3, 1, a2, a3), !v4))
  {
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v8, v9);
  }

  return result;
}

uint64_t _s20SiriOntologyProtobuf07Google_C11_Int64ValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v2 = a2[2];
  v5 = a1[1];
  v4 = a1[2];
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C11_Int64ValueV04hashF0Sivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864E774(&v5, v1, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864EBA4@<X0>(void *a1@<X8>)
{
  if (qword_28028BE08 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D678;
  v2 = qword_28028D680;
  v3 = unk_28028D688;
  *a1 = qword_28028D670;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

__n128 sub_26864EC4C(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 8);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  sub_26864E774(&v10, v3, v4, v5);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  *(a1 + 8) = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

uint64_t sub_26864ECCC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864E774(&v5, v1, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_Int32Value._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D698;
  v2 = qword_28028D6A0;
  v3 = unk_28028D6A8;
  *a1 = qword_28028D690;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Int32Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 72))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864EEF0(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    MEMORY[0x26D61D8F0](1);
    result = MEMORY[0x26D61D920](v6);
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a3;
    v10 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26864EF94(uint64_t result, int a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  if (!a2 || (result = sub_2686440C0(a2, 1), !v4))
  {
    v8 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v8 != 2)
      {
        return result;
      }

      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((a4 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_11;
      }

      v9 = a3;
      v10 = a3 >> 32;
    }

    if (v9 == v10)
    {
      return result;
    }

LABEL_11:
    if (*(v7 + 64) == 1)
    {
      return sub_26863B108(a3, a4);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Int32Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 1);
  v10 = *(v3 + 2);
  if (!v8 || (result = (*(a3 + 24))(v8, 1, a2, a3), !v4))
  {
    sub_2685BA80C(v9, v10);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v9, v10);
  }

  return result;
}

uint64_t sub_26864F150@<X0>(void *a1@<X8>)
{
  if (qword_28028BE10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D698;
  v2 = qword_28028D6A0;
  v3 = unk_28028D6A8;
  *a1 = qword_28028D690;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_UInt32Value._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6B8;
  v2 = qword_28028D6C0;
  v3 = unk_28028D6C8;
  *a1 = qword_28028D6B0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_UInt32Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 120))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864F3A8(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    MEMORY[0x26D61D8F0](1);
    result = MEMORY[0x26D61D920](v6);
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a3;
    v10 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26864F44C(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  if (a2)
  {
    v7 = a2;
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_268663B88(v7);
    v9 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      *v6 = result;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2685B3F48((v10 > 1), v11 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + v11 + 32) = 10;
    *v6 = v9;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v12 != 2)
    {
      return result;
    }

    v13 = *(a3 + 16);
    v14 = *(a3 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    v13 = a3;
    v14 = a3 >> 32;
  }

  if (v13 == v14)
  {
    return result;
  }

LABEL_15:
  if (*(v6 + 64) == 1)
  {
    return sub_26863B108(a3, a4);
  }

  return result;
}

uint64_t Google_Protobuf_UInt32Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 1);
  v10 = *(v3 + 2);
  if (!v8 || (result = (*(a3 + 40))(v8, 1, a2, a3), !v4))
  {
    sub_2685BA80C(v9, v10);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v9, v10);
  }

  return result;
}

uint64_t _s20SiriOntologyProtobuf07Google_C11_Int32ValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6 & 1;
}

uint64_t sub_26864F6FC(void (*a1)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  sub_268689E94();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  a1(&v7, v3, v5, v4);
  v15 = v10;
  v16 = v11;
  v13 = v8;
  v14 = v9;
  v12 = v7;
  return sub_268689EF4();
}

uint64_t sub_26864F800@<X0>(void *a1@<X8>)
{
  if (qword_28028BE18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6B8;
  v2 = qword_28028D6C0;
  v3 = unk_28028D6C8;
  *a1 = qword_28028D6B0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26864F8C0(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v7 = *(v3 + 1);
  v6 = *(v3 + 2);
  sub_268689E94();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  a3(&v9, v5, v7, v6);
  v17 = v12;
  v18 = v13;
  v15 = v10;
  v16 = v11;
  v14 = v9;
  return sub_268689EF4();
}

uint64_t sub_26864F990(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v8 = *(v4 + 1);
  v7 = *(v4 + 2);
  sub_268689E94();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  a4(&v10, v6, v8, v7);
  v18 = v13;
  v19 = v14;
  v16 = v11;
  v17 = v12;
  v15 = v10;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_BoolValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6D8;
  v2 = qword_28028D6E0;
  v3 = unk_28028D6E8;
  *a1 = qword_28028D6D0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_BoolValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 312))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864FBC4(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    MEMORY[0x26D61D8F0](1);
    result = sub_268689EB4();
  }

  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      return result;
    }

    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
LABEL_10:
    if (v8 == v9)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v7)
  {
    v8 = a3;
    v9 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26864FC5C(uint64_t result, char a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  if (a2)
  {
    v6 = a3;
    v7 = a4;
    result = sub_2685B33F4(1, 1);
    if (v4)
    {
      return result;
    }

    a4 = v7;
    a3 = v6;
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_12;
    }

    v9 = a3;
    v10 = a3 >> 32;
  }

  if (v9 == v10)
  {
    return result;
  }

LABEL_12:
  if (*(v5 + 64) == 1)
  {
    return sub_26863B108(a3, a4);
  }

  return result;
}

uint64_t Google_Protobuf_BoolValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  if (*v3 != 1 || (result = (*(a3 + 104))(1, 1, a2, a3), !v4))
  {
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v8, v9);
  }

  return result;
}

uint64_t static Google_Protobuf_BoolValue.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  sub_2685BA80C(v6, v5);
  sub_2685BA80C(v4, v3);
  v7 = sub_2686131DC(v6, v5, v4, v3);
  sub_2685B593C(v4, v3);
  sub_2685B593C(v6, v5);
  return v7 & 1;
}

uint64_t Google_Protobuf_BoolValue.hashValue.getter()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864FBC4(&v5, v1, v3, v2);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

double sub_26864FF00@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_26864FF60@<X0>(void *a1@<X8>)
{
  if (qword_28028BE20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6D8;
  v2 = qword_28028D6E0;
  v3 = unk_28028D6E8;
  *a1 = qword_28028D6D0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268650008()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864FBC4(&v5, v1, v3, v2);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_2686500B0()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864FBC4(&v5, v1, v3, v2);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_268650154(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  sub_2685BA80C(v6, v5);
  sub_2685BA80C(v4, v3);
  v7 = sub_2686131DC(v6, v5, v4, v3);
  sub_2685B593C(v4, v3);
  sub_2685B593C(v6, v5);
  return v7 & 1;
}

uint64_t static Google_Protobuf_StringValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE28 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6F8;
  v2 = qword_28028D700;
  v3 = unk_28028D708;
  *a1 = qword_28028D6F0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_StringValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 336))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t Google_Protobuf_StringValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v12 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = (*(a3 + 112))(), !v4))
  {
    sub_2685BA80C(v10, v11);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v10, v11);
  }

  return result;
}

uint64_t Google_Protobuf_StringValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_268689E94();
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689A24();
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      return sub_268689EF4();
    }

    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
  }

  else
  {
    if (!v6)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        return sub_268689EF4();
      }

      goto LABEL_13;
    }

    v7 = v3;
    v8 = v3 >> 32;
  }

  if (v7 != v8)
  {
LABEL_13:
    sub_268689844();
  }

  return sub_268689EF4();
}

uint64_t sub_268650580@<X0>(void *a1@<X8>)
{
  if (qword_28028BE28 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6F8;
  v2 = qword_28028D700;
  v3 = unk_28028D708;
  *a1 = qword_28028D6F0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_BytesValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE30 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D718;
  v2 = qword_28028D720;
  v3 = unk_28028D728;
  *a1 = qword_28028D710;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_BytesValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 360))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2686507AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v7)
    {
      if (a2 == a2 >> 32)
      {
        goto LABEL_10;
      }
    }

    else if ((a3 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    MEMORY[0x26D61D8F0](1);
    result = sub_268689844();
    goto LABEL_10;
  }

  if (v7 == 2 && *(a2 + 16) != *(a2 + 24))
  {
    goto LABEL_9;
  }

LABEL_10:
  v9 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return result;
    }

    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
LABEL_17:
    if (v10 == v11)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v9)
  {
    v10 = a4;
    v11 = a4 >> 32;
    goto LABEL_17;
  }

  if ((a5 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26865089C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = result;
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_14;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  sub_2685B301C(1);
  sub_2685B403C(": ", 2, v11);
  sub_2686637F4(a2, a3);
  v12 = *v9;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v12;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v12 + 16) + 1, 1, v12);
    v12 = result;
    *v9 = result;
  }

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 16) = v14 + 1;
  *(v12 + v14 + 32) = 10;
  *v9 = v12;
LABEL_14:
  v15 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v15)
    {
      if (a4 == a4 >> 32)
      {
        return result;
      }
    }

    else if ((a5 & 0xFF000000000000) == 0)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (v15 == 2 && *(a4 + 16) != *(a4 + 24))
  {
LABEL_22:
    if (*(v9 + 64) == 1)
    {
      return sub_26863B108(a4, a5);
    }
  }

  return result;
}

uint64_t Google_Protobuf_BytesValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v12 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v12)
  {
    if (v8 == v8 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v13 = v3[3];
  v14 = v3[2];
  result = (*(a3 + 120))(*v3, v3[1], 1, a2, a3);
  if (v4)
  {
    return result;
  }

  v10 = v14;
  v11 = v13;
LABEL_11:
  v16 = v10;
  v17 = v11;
  sub_2685BA80C(v10, v11);
  UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
  return sub_2685B593C(v16, v17);
}

uint64_t static Google_Protobuf_BytesValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_2686131DC(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6 & 1;
}

uint64_t Google_Protobuf_BytesValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_2686507AC(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

double sub_268650C94@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  a1[1] = xmmword_26868A5E0;
  return result;
}

uint64_t sub_268650CF0@<X0>(void *a1@<X8>)
{
  if (qword_28028BE30 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D718;
  v2 = qword_28028D720;
  v3 = unk_28028D728;
  *a1 = qword_28028D710;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268650D98()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_2686507AC(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t sub_268650E4C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_2686507AC(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t sub_268650EFC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_2686131DC(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6 & 1;
}

unint64_t sub_268650F9C(uint64_t a1)
{
  result = sub_268650FC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268650FC4()
{
  result = qword_28028D730;
  if (!qword_28028D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D730);
  }

  return result;
}

unint64_t sub_268651044()
{
  result = qword_28028D738;
  if (!qword_28028D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D738);
  }

  return result;
}

unint64_t sub_268651098()
{
  result = qword_28028D740;
  if (!qword_28028D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D740);
  }

  return result;
}

unint64_t sub_2686510F0()
{
  result = qword_28028D748;
  if (!qword_28028D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D748);
  }

  return result;
}

unint64_t sub_268651144(uint64_t a1)
{
  result = sub_26865116C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26865116C()
{
  result = qword_28028D750;
  if (!qword_28028D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D750);
  }

  return result;
}

unint64_t sub_2686511EC()
{
  result = qword_28028D758;
  if (!qword_28028D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D758);
  }

  return result;
}

unint64_t sub_268651240()
{
  result = qword_28028D760;
  if (!qword_28028D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D760);
  }

  return result;
}

unint64_t sub_268651298()
{
  result = qword_28028D768;
  if (!qword_28028D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D768);
  }

  return result;
}

unint64_t sub_2686512EC(uint64_t a1)
{
  result = sub_268651314();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268651314()
{
  result = qword_28028D770;
  if (!qword_28028D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D770);
  }

  return result;
}

unint64_t sub_268651394()
{
  result = qword_28028D778;
  if (!qword_28028D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D778);
  }

  return result;
}

unint64_t sub_2686513E8()
{
  result = qword_28028D780;
  if (!qword_28028D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D780);
  }

  return result;
}

unint64_t sub_268651440()
{
  result = qword_28028D788;
  if (!qword_28028D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D788);
  }

  return result;
}

unint64_t sub_268651494(uint64_t a1)
{
  result = sub_2686514BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686514BC()
{
  result = qword_28028D790;
  if (!qword_28028D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D790);
  }

  return result;
}

unint64_t sub_26865153C()
{
  result = qword_28028D798;
  if (!qword_28028D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D798);
  }

  return result;
}

unint64_t sub_268651590()
{
  result = qword_28028D7A0;
  if (!qword_28028D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7A0);
  }

  return result;
}

unint64_t sub_2686515E8()
{
  result = qword_28028D7A8;
  if (!qword_28028D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7A8);
  }

  return result;
}

unint64_t sub_26865163C(uint64_t a1)
{
  result = sub_268651664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268651664()
{
  result = qword_28028D7B0;
  if (!qword_28028D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7B0);
  }

  return result;
}

unint64_t sub_2686516E4()
{
  result = qword_28028D7B8;
  if (!qword_28028D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7B8);
  }

  return result;
}

unint64_t sub_268651738()
{
  result = qword_28028D7C0;
  if (!qword_28028D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7C0);
  }

  return result;
}

unint64_t sub_268651790()
{
  result = qword_28028D7C8;
  if (!qword_28028D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7C8);
  }

  return result;
}

unint64_t sub_2686517E4(uint64_t a1)
{
  result = sub_26865180C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26865180C()
{
  result = qword_28028D7D0;
  if (!qword_28028D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7D0);
  }

  return result;
}

unint64_t sub_26865188C()
{
  result = qword_28028D7D8;
  if (!qword_28028D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7D8);
  }

  return result;
}

unint64_t sub_2686518E0()
{
  result = qword_28028D7E0;
  if (!qword_28028D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7E0);
  }

  return result;
}

unint64_t sub_268651938()
{
  result = qword_28028D7E8;
  if (!qword_28028D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7E8);
  }

  return result;
}

unint64_t sub_26865198C(uint64_t a1)
{
  result = sub_2686519B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686519B4()
{
  result = qword_28028D7F0;
  if (!qword_28028D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7F0);
  }

  return result;
}

unint64_t sub_268651A34()
{
  result = qword_28028D7F8;
  if (!qword_28028D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D7F8);
  }

  return result;
}

unint64_t sub_268651A88()
{
  result = qword_28028D800;
  if (!qword_28028D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D800);
  }

  return result;
}

unint64_t sub_268651AE0()
{
  result = qword_28028D808;
  if (!qword_28028D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D808);
  }

  return result;
}

unint64_t sub_268651B34(uint64_t a1)
{
  result = sub_268651B5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268651B5C()
{
  result = qword_28028D810;
  if (!qword_28028D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D810);
  }

  return result;
}

unint64_t sub_268651BDC()
{
  result = qword_28028D818;
  if (!qword_28028D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D818);
  }

  return result;
}

unint64_t sub_268651C30()
{
  result = qword_28028D820;
  if (!qword_28028D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D820);
  }

  return result;
}

unint64_t sub_268651C88()
{
  result = qword_28028D828;
  if (!qword_28028D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D828);
  }

  return result;
}

unint64_t sub_268651CDC(uint64_t a1)
{
  result = sub_268651D04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268651D04()
{
  result = qword_28028D830;
  if (!qword_28028D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D830);
  }

  return result;
}

uint64_t sub_268651D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268651DC0()
{
  result = qword_28028D838;
  if (!qword_28028D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D838);
  }

  return result;
}

unint64_t sub_268651E14()
{
  result = qword_28028D840;
  if (!qword_28028D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D840);
  }

  return result;
}

unint64_t sub_268651E6C()
{
  result = qword_28028D848;
  if (!qword_28028D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D848);
  }

  return result;
}

uint64_t sub_268651F20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_268651F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268651FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26865202C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t Google_Protobuf_FieldMask.paths.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_FieldMask.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_FieldMask.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

double Google_Protobuf_FieldMask.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t static Google_Protobuf_FieldMask._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE38 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D858;
  v2 = qword_28028D860;
  v3 = unk_28028D868;
  *a1 = qword_28028D850;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_FieldMask.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 352))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_268652374(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    MEMORY[0x26D61D8F0](1);
    MEMORY[0x26D61D8F0](v6);
    v8 = (a2 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_268689A24();

      v8 += 2;
      --v6;
    }

    while (v6);
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v12 != 2)
    {
      return result;
    }

    v13 = *(a3 + 16);
    v14 = *(a3 + 24);
LABEL_11:
    if (v13 == v14)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v12)
  {
    v13 = a3;
    v14 = a3 >> 32;
    goto LABEL_11;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t Google_Protobuf_FieldMask.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = v3[2];
  if (!*(*v3 + 16) || (result = (*(a3 + 256))(), !v4))
  {
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v8, v9);
  }

  return result;
}

uint64_t static Google_Protobuf_FieldMask.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_26860EBDC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6 & 1;
}

uint64_t Google_Protobuf_FieldMask.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_268652374(&v5, v1, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_2686526A8@<X0>(void *a1@<X8>)
{
  if (qword_28028BE38 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D858;
  v2 = qword_28028D860;
  v3 = unk_28028D868;
  *a1 = qword_28028D850;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268652750()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_268652374(&v5, v1, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

__n128 sub_2686527F8(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 8);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  sub_268652374(&v10, v3, v4, v5);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  *(a1 + 8) = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

uint64_t sub_268652878()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_268652374(&v5, v1, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26865291C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_26860EBDC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6 & 1;
}

unint64_t sub_2686529BC(uint64_t a1)
{
  result = sub_2686529E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686529E4()
{
  result = qword_28028D870;
  if (!qword_28028D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D870);
  }

  return result;
}

unint64_t sub_268652A38(uint64_t a1)
{
  *(a1 + 8) = sub_268652A68();
  result = sub_268652ABC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268652A68()
{
  result = qword_28028D878;
  if (!qword_28028D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D878);
  }

  return result;
}

unint64_t sub_268652ABC()
{
  result = qword_28028D880;
  if (!qword_28028D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D880);
  }

  return result;
}

unint64_t sub_268652B14()
{
  result = qword_28028D888;
  if (!qword_28028D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D888);
  }

  return result;
}

uint64_t sub_268652B78(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_268689A44();
  return sub_268689AD4();
}

uint64_t sub_268652BF8(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  v3 = 4 * v2;
  if (v2)
  {
    v4 = 15;
    do
    {
      while (1)
      {
        v6 = sub_268689AD4();
        v8 = v7;
        v9 = sub_268689A34();
        if (v6 != 47 || v8 != 0xE100000000000000)
        {
          break;
        }

        v4 = v9;
        if (v3 <= v9 >> 14)
        {
          goto LABEL_14;
        }
      }

      v5 = sub_268689E14();

      if (v5)
      {
        v4 = v9;
      }
    }

    while (v3 > v9 >> 14);
  }

  else
  {
    v4 = 15;
  }

LABEL_14:
  if (v3 < v4 >> 14)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_268689B04();
    v11 = MEMORY[0x26D61D430](v10);

    return v11;
  }

  return result;
}

uint64_t sub_268652D4C()
{
  v0 = sub_268689C54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_268689C44();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_2686898C4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  sub_268653D40();
  sub_2686898B4();
  v13[1] = MEMORY[0x277D84F90];
  sub_268653D8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8E0, &qword_268691EB8);
  sub_268653DE4();
  sub_268689CA4();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v0);
  result = sub_268689C64();
  qword_28028D890 = result;
  return result;
}

uint64_t sub_268652F54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8A0, &qword_268691EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268691E90;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000002686955C0;
  v1 = sub_2685CFD4C();
  *(inited + 48) = &type metadata for Google_Protobuf_Any;
  *(inited + 56) = v1;
  *(inited + 64) = 0xD000000000000019;
  *(inited + 72) = 0x8000000268695790;
  v2 = sub_268651A34();
  *(inited + 80) = &type metadata for Google_Protobuf_BoolValue;
  *(inited + 88) = v2;
  *(inited + 96) = 0xD00000000000001ALL;
  *(inited + 104) = 0x80000002686957D0;
  v3 = sub_268651DC0();
  *(inited + 112) = &type metadata for Google_Protobuf_BytesValue;
  *(inited + 120) = v3;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000002686956D0;
  v4 = sub_268651044();
  *(inited + 144) = &type metadata for Google_Protobuf_DoubleValue;
  *(inited + 152) = v4;
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x8000000268695820;
  v5 = sub_268653BF0();
  *(inited + 176) = &type metadata for Google_Protobuf_Duration;
  *(inited + 184) = v5;
  *(inited + 192) = 0xD000000000000015;
  *(inited + 200) = 0x80000002686955A0;
  v6 = sub_268648498();
  *(inited + 208) = &type metadata for Google_Protobuf_Empty;
  *(inited + 216) = v6;
  *(inited + 224) = 0xD000000000000019;
  *(inited + 232) = 0x80000002686957F0;
  v7 = sub_268652A68();
  *(inited + 240) = &type metadata for Google_Protobuf_FieldMask;
  *(inited + 248) = v7;
  *(inited + 256) = 0xD00000000000001ALL;
  *(inited + 264) = 0x80000002686956F0;
  v8 = sub_2686511EC();
  *(inited + 272) = &type metadata for Google_Protobuf_FloatValue;
  *(inited + 280) = v8;
  *(inited + 288) = 0xD00000000000001ALL;
  *(inited + 296) = 0x8000000268695750;
  v9 = sub_2686516E4();
  *(inited + 304) = &type metadata for Google_Protobuf_Int32Value;
  *(inited + 312) = v9;
  *(inited + 320) = 0xD00000000000001ALL;
  *(inited + 328) = 0x8000000268695710;
  v10 = sub_268651394();
  *(inited + 336) = &type metadata for Google_Protobuf_Int64Value;
  *(inited + 344) = v10;
  *(inited + 352) = 0xD000000000000019;
  *(inited + 360) = 0x8000000268695840;
  v11 = sub_268653C44();
  *(inited + 368) = &type metadata for Google_Protobuf_ListValue;
  *(inited + 376) = v11;
  *(inited + 384) = 0xD00000000000001BLL;
  *(inited + 392) = 0x80000002686957B0;
  v12 = sub_268651BDC();
  *(inited + 400) = &type metadata for Google_Protobuf_StringValue;
  *(inited + 408) = v12;
  *(inited + 416) = 0xD000000000000016;
  *(inited + 424) = 0x8000000268695860;
  v13 = sub_268653C98();
  *(inited + 432) = &type metadata for Google_Protobuf_Struct;
  *(inited + 440) = v13;
  *(inited + 448) = 0xD000000000000019;
  *(inited + 456) = 0x80000002686954A0;
  v14 = sub_26862C9FC();
  *(inited + 464) = &type metadata for Google_Protobuf_Timestamp;
  *(inited + 472) = v14;
  *(inited + 480) = 0xD00000000000001BLL;
  *(inited + 488) = 0x8000000268695770;
  v15 = sub_26865188C();
  *(inited + 496) = &type metadata for Google_Protobuf_UInt32Value;
  *(inited + 504) = v15;
  *(inited + 512) = 0xD00000000000001BLL;
  *(inited + 520) = 0x8000000268695730;
  v16 = sub_26865153C();
  *(inited + 528) = &type metadata for Google_Protobuf_UInt64Value;
  *(inited + 536) = v16;
  *(inited + 544) = 0xD000000000000015;
  *(inited + 552) = 0x8000000268695880;
  v17 = sub_268653CEC();
  *(inited + 560) = &type metadata for Google_Protobuf_Value;
  *(inited + 568) = v17;
  v18 = sub_2686893FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8C8, &qword_268691EB0);
  result = swift_arrayDestroy();
  off_28028D898 = v18;
  return result;
}

uint64_t static Google_Protobuf_Any.register(messageType:)(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v6 = v5;
  v15 = 0;
  if (qword_28028BE40 != -1)
  {
    swift_once();
  }

  v7 = qword_28028D890;
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v6;
  v8[4] = &v15;
  v8[5] = a1;
  v8[6] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26865359C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_2686535D4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2686535FC;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);
  v11 = v7;

  dispatch_sync(v11, v10);

  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

uint64_t sub_26865345C(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, uint64_t a5)
{
  if (qword_28028BE48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_28028D898;
  if (*(off_28028D898 + 2) && (v11 = sub_2685C3084(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(v10[7] + 16 * v11);
    result = swift_endAccess();
    v15 = v13 == a4;
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_28028D898;
    off_28028D898 = 0x8000000000000000;
    sub_268688068(a4, a5, a1, a2, isUniquelyReferenced_nonNull_native);
    off_28028D898 = v17;
    result = swift_endAccess();
    v15 = 1;
  }

  *a3 = v15;
  return result;
}

uint64_t sub_2686535D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static Google_Protobuf_Any.messageType(forTypeURL:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_268652BF8(a1, a2);
  v4 = v3;
  v13[0] = 0;
  v13[1] = 0;
  if (qword_28028BE40 != -1)
  {
    swift_once();
  }

  v5 = qword_28028D890;
  v6 = swift_allocObject();
  v6[2] = v13;
  v6[3] = v2;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_268653A5C;
  *(v7 + 24) = v6;
  v12[4] = sub_268653E50;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2686535FC;
  v12[3] = &block_descriptor_13;
  v8 = _Block_copy(v12);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v11 = v13[0];

    return v11;
  }

  return result;
}

uint64_t static Google_Protobuf_Any.messageType(forMessageName:)(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  if (qword_28028BE40 != -1)
  {
    swift_once();
  }

  v4 = qword_28028D890;
  v5 = swift_allocObject();
  v5[2] = v13;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_268653E5C;
  *(v6 + 24) = v5;
  v12[4] = sub_268653E50;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2686535FC;
  v12[3] = &block_descriptor_24;
  v7 = _Block_copy(v12);
  v8 = v4;

  dispatch_sync(v8, v7);

  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13[0];

    return v11;
  }

  return result;
}

__n128 sub_268653998(__n128 *a1, uint64_t a2, uint64_t a3)
{
  if (qword_28028BE48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_28028D898;
  v10 = 0u;
  if (*(off_28028D898 + 2))
  {
    v7 = sub_2685C3084(a2, a3);
    if (v8)
    {
      v10 = *(v6[7] + 16 * v7);
    }
  }

  swift_endAccess();
  result = v10;
  *a1 = v10;
  return result;
}

uint64_t sub_268653A68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if ((a3 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = sub_268652B78(a2, a3);
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v11 != 47 || v12 != 0xE100000000000000)
  {
    v13 = sub_268689E14();

    if (v13)
    {
      goto LABEL_11;
    }

LABEL_10:
    MEMORY[0x26D61D4B0](47, 0xE100000000000000);
    goto LABEL_11;
  }

LABEL_11:
  __swift_project_boxed_opaque_existential_1(v18, v19);
  swift_getDynamicType();
  v14 = (*(v20 + 24))();
  v16 = v15;

  MEMORY[0x26D61D4B0](v14, v16);

  __swift_destroy_boxed_opaque_existential_1(v18);
  return a2;
}

unint64_t sub_268653BF0()
{
  result = qword_28028D8A8;
  if (!qword_28028D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D8A8);
  }

  return result;
}

unint64_t sub_268653C44()
{
  result = qword_28028D8B0;
  if (!qword_28028D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D8B0);
  }

  return result;
}

unint64_t sub_268653C98()
{
  result = qword_28028D8B8;
  if (!qword_28028D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D8B8);
  }

  return result;
}

unint64_t sub_268653CEC()
{
  result = qword_28028D8C0;
  if (!qword_28028D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D8C0);
  }

  return result;
}

unint64_t sub_268653D40()
{
  result = qword_28028D8D0;
  if (!qword_28028D8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28028D8D0);
  }

  return result;
}

unint64_t sub_268653D8C()
{
  result = qword_28028D8D8;
  if (!qword_28028D8D8)
  {
    sub_268689C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D8D8);
  }

  return result;
}

unint64_t sub_268653DE4()
{
  result = qword_28028D8E8;
  if (!qword_28028D8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28028D8E0, &qword_268691EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D8E8);
  }

  return result;
}

uint64_t TextFormatDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

unint64_t sub_268653EEC()
{
  result = qword_28028D8F0;
  if (!qword_28028D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D8F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextFormatDecodingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextFormatDecodingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2686540A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_beginAccess();
  result = sub_26863C318();
  if (!v2)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result == 1)
      {
        swift_beginAccess();
        v13 = *(a2 + 40);
        for (i = *(a2 + 48); v13 != i; *(a2 + 40) = v13)
        {
          v17 = *v13;
          if (v17 > 0x23)
          {
            break;
          }

          if (((1 << v17) & 0x100002600) == 0)
          {
            if (v17 == 35)
            {
              *(a2 + 40) = ++v13;
              while (v13 != i)
              {
                v19 = *v13++;
                v18 = v19;
                if (v19 == 10 || v18 == 13)
                {
                  goto LABEL_30;
                }
              }

              v13 = i;
              *(a2 + 40) = i;
            }

            break;
          }

          ++v13;
LABEL_30:
          ;
        }

        if (v13 == i || *v13 != 58)
        {
          sub_2685C1CBC();
          swift_allocError();
          *v41 = 0;
          swift_willThrow();
          return swift_endAccess();
        }

LABEL_25:
        ++v13;
LABEL_15:
        while (1)
        {
          *(a2 + 40) = v13;
          if (v13 == i)
          {
            break;
          }

          v14 = *v13;
          if (v14 > 0x23)
          {
            break;
          }

          if (((1 << v14) & 0x100002600) != 0)
          {
            goto LABEL_25;
          }

          if (v14 != 35)
          {
            break;
          }

          *(a2 + 40) = ++v13;
          while (v13 != i)
          {
            v16 = *v13++;
            v15 = v16;
            if (v16 == 10 || v15 == 13)
            {
              goto LABEL_15;
            }
          }

          v13 = i;
        }

        v20 = sub_2685C0BA8();
        v21 = *(a1 + 24);
        *(a1 + 16) = v20;
        *(a1 + 24) = v22;
        swift_endAccess();

        goto LABEL_4;
      }

      if (result != 2)
      {
        goto LABEL_4;
      }

      sub_268643E8C(a1 + 32, &v56);
      if (!v59)
      {
        v36 = *(&v56 + 1);
        v34 = v56;
        goto LABEL_47;
      }

      if (v59 == 1)
      {
        break;
      }

      v47 = v56;
      v44 = v57;
      v45 = *(&v56 + 1);
      v43 = v58;
      v24 = *(a1 + 16);
      v23 = *(a1 + 24);
      v46 = a1;

      v25 = sub_268652BF8(v24, v23);
      v27 = v26;

      v54 = 0;
      v55 = 0;
      if (qword_28028BE40 != -1)
      {
        swift_once();
      }

      v28 = qword_28028D890;
      v29 = swift_allocObject();
      v29[2] = &v54;
      v29[3] = v25;
      v29[4] = v27;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_268653A5C;
      *(v30 + 24) = v29;
      v52 = sub_268655254;
      v53 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v49 = 1107296256;
      v50 = sub_2686535FC;
      v51 = &block_descriptor_0;
      v31 = _Block_copy(&aBlock);
      v32 = v28;

      dispatch_sync(v32, v31);

      _Block_release(v31);
      LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

      if (v31)
      {
        __break(1u);
        return result;
      }

      v34 = v54;
      v33 = v55;

      if (v34)
      {
        v54 = v44;
        LOBYTE(v55) = v43;
        sub_26866CA90(v47, v45, &v54, v34, v33, &aBlock);
        v37 = v51;
        v38 = v52;
        __swift_project_boxed_opaque_existential_1(&aBlock, v51);
        a1 = v46;
        v34 = Message.serializedData(partial:)(1, v37, v38);
        v36 = v40;
        sub_2685B593C(v47, v45);
        goto LABEL_45;
      }

      sub_2685B593C(v47, v45);
      v36 = 0xC000000000000000;
      a1 = v46;
LABEL_47:
      sub_2685C01A0();
      v39 = *(a2 + 40);
      if (v39 == *(a2 + 48) || *v39 != 58)
      {
        sub_2685C1CBC();
        swift_allocError();
        *v42 = 0;
        swift_willThrow();
        aBlock = v34;
        v49 = v36;
        LOBYTE(v53) = 0;
        swift_beginAccess();
        sub_268643EE8(&aBlock, a1 + 32);
        return swift_endAccess();
      }

      *(a2 + 40) = v39 + 1;
      sub_2685C01A0();
      v7 = sub_2685C0DB8();
      v9 = v8;
      sub_2685B593C(v34, v36);
      aBlock = v7;
      v49 = v9;
      LOBYTE(v53) = 0;
      swift_beginAccess();
      sub_268643EE8(&aBlock, a1 + 32);
      swift_endAccess();
LABEL_4:
      result = sub_26863C318();
    }

    sub_2685B17CC(&v56, &aBlock);
    v10 = v51;
    v11 = v52;
    __swift_project_boxed_opaque_existential_1(&aBlock, v51);
    v34 = Message.serializedData(partial:)(1, v10, v11);
    v36 = v35;
LABEL_45:
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_26865470C()
{
  v1 = *(v0 + 16);
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    sub_268689A24();
  }

  return result;
}

uint64_t Google_Protobuf_Any.hash(into:)()
{
  v1 = *(v0 + 16);
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    sub_268689A24();
  }

  return result;
}

uint64_t Google_Protobuf_Any.init(message:partial:typePrefix:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 & 1) != 0 || (v9 = a1[3], v10 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v9), ((*(v10 + 32))(v9, v10)))
  {
    if (qword_28028BE58 != -1)
    {
      swift_once();
    }

    v11 = qword_28029B270;
    v12 = a1[3];
    v13 = a1[4];
    v14 = __swift_project_boxed_opaque_existential_1(a1, v12);

    v15 = sub_268653A68(v14, a3, a4, v12, v13);
    v17 = v16;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for AnyMessageStorage();
      swift_allocObject();
      v11 = sub_26866D2A0(v11);
    }

    swift_beginAccess();
    v18 = *(v11 + 24);
    *(v11 + 16) = v15;
    *(v11 + 24) = v17;

    sub_2685B1724(a1, v21);
    v21[40] = 1;
    swift_beginAccess();
    sub_268643EE8(v21, v11 + 32);
    swift_endAccess();
    *a5 = xmmword_26868A5E0;
    *(a5 + 16) = v11;
  }

  else
  {

    sub_26861C728();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Google_Protobuf_Any.init(textFormatString:extensions:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_2686899A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28028BE58 != -1)
  {
    swift_once();
  }

  v25 = xmmword_26868A5E0;
  v26 = qword_28029B270;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

LABEL_11:
    v22 = v25;
    v23 = v26;
    *a4 = v25;
    *(a4 + 16) = v23;
    sub_2685BA80C(v22, *(&v22 + 1));

    goto LABEL_12;
  }

  sub_268689994();
  v17 = sub_268689954();
  v19 = v18;

  v20 = (*(v11 + 8))(v15, v10);
  if (v19 >> 60 == 15)
  {
    goto LABEL_11;
  }

  MEMORY[0x28223BE20](v20, v21);
  *(&v25 - 2) = a3;
  *(&v25 - 1) = &v25;
  sub_2685B2660(sub_268655238, (&v25 - 2), v17, v19);
  sub_2685B98FC(v17, v19);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_12:
  sub_2685B55C0(a3);
  sub_2685B593C(v25, *(&v25 + 1));
}

uint64_t sub_268654C44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    v6 = a2 - result;
    if (a2 - result >= 1)
    {
      v9 = sub_2685CFD4C();
      sub_2685B2978(a3, v62);
      *&v58 = 0;
      WORD4(v58) = 256;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      sub_2685B2978(v62, v53);
      type metadata accessor for DoubleParser();
      v54 = 0u;
      v55 = 0u;
      *&v56 = 0;
      v10 = swift_allocObject();
      v11 = swift_slowAlloc();
      *(v10 + 16) = v11;
      *(v10 + 24) = v11 + 128;
      *(&v57 + 1) = v10;
      v12 = &v5[v6];
      *(&v56 + 1) = v5;
      *&v57 = &v5[v6];
      sub_26864CCB4(v53, &v54);
      do
      {
        v13 = *v5;
        if (v13 > 0x23)
        {
          break;
        }

        if (((1 << v13) & 0x100002600) == 0)
        {
          if (v13 == 35)
          {
            *(&v56 + 1) = ++v5;
            while (v5 != v12)
            {
              v15 = *v5++;
              v14 = v15;
              if (v15 == 10 || v14 == 13)
              {
                goto LABEL_7;
              }
            }

            *(&v56 + 1) = v12;
          }

          break;
        }

        ++v5;
LABEL_7:
        *(&v56 + 1) = v5;
      }

      while (v5 != v12);
      sub_2685B55C0(v53);
      if (qword_28028BDE8 != -1)
      {
        swift_once();
      }

      v17 = qword_28028D448;
      v18 = unk_28028D450;
      v19 = qword_28028D458;
      v20 = unk_28028D460;

      sub_2685B55C0(v62);
      sub_2685B2FBC(v59);
      *&v59 = v17;
      *(&v59 + 1) = v18;
      *&v60 = v19;
      *(&v60 + 1) = v20;
      *&v61 = &type metadata for Google_Protobuf_Any;
      *(&v61 + 1) = v9;
      v63[0] = v54;
      v63[1] = v55;
      v64 = v56;
      v65 = v57;
      v66 = v58;
      v67 = v59;
      v68 = v60;
      v69 = v61;
      v21 = *(&v56 + 1);
      for (i = v57; v21 != v57; *(&v64 + 1) = v21)
      {
        v23 = *v21;
        if (v23 > 0x23)
        {
          break;
        }

        if (((1 << v23) & 0x100002600) != 0)
        {
          ++v21;
        }

        else
        {
          if (v23 != 35)
          {
            break;
          }

          *(&v64 + 1) = ++v21;
          while (v21 != v57)
          {
            v25 = *v21++;
            v24 = v25;
            if (v25 == 10 || v24 == 13)
            {
              goto LABEL_24;
            }
          }

          v21 = v57;
        }

LABEL_24:
        ;
      }

      if (v21 != v57 && *v21 == 91)
      {
        v27 = v21 + 1;
        *(&v64 + 1) = v21 + 1;
        if (v21 + 1 != v57 && (*v27 & 0xDFu) - 91 >= 0xFFFFFFE6)
        {
          v28 = v21 + 2;
          *(&v64 + 1) = v21 + 2;
          if (v21 + 2 != v57)
          {
            v29 = 1;
            while (1)
            {
              v30 = *v28;
              v31 = (v30 - 58) > 0xFFFFFFF5 || (v30 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
              if (!v31 && (v30 - 46) >= 2 && v30 != 95)
              {
                break;
              }

              *(&v64 + 1) = ++v28;
              ++v29;
              if (v28 == v57)
              {
                goto LABEL_75;
              }
            }

            if (v30 == 93)
            {
              v32 = sub_2685B4E1C(v27, v29);
              if (v33)
              {
                v34 = v33;
                if (v28 != i && *v28 == 93)
                {
                  v35 = v32;
                  v36 = v28 + 1;
                  for (*(&v64 + 1) = v28 + 1; v36 != i; *(&v64 + 1) = v36)
                  {
                    v41 = *v36;
                    if (v41 > 0x23)
                    {
                      break;
                    }

                    if (((1 << v41) & 0x100002600) != 0)
                    {
                      ++v36;
                    }

                    else
                    {
                      if (v41 != 35)
                      {
                        break;
                      }

                      *(&v64 + 1) = ++v36;
                      while (v36 != i)
                      {
                        v43 = *v36++;
                        v42 = v43;
                        if (v43 == 10 || v42 == 13)
                        {
                          goto LABEL_61;
                        }
                      }

                      v36 = i;
                    }

LABEL_61:
                    ;
                  }

                  v46 = *(a4 + 16);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v47 = *(a4 + 16);
                    type metadata accessor for AnyMessageStorage();
                    swift_allocObject();

                    v49 = sub_26866D2A0(v48);
                    v50 = *(a4 + 16);
                    *(a4 + 16) = v49;
                  }

                  v51 = *(a4 + 16);
                  sub_26866ADE4(v35, v34, v63);
                  if (v4)
                  {
                    sub_268643E5C(v63);
                  }

LABEL_81:
                  if (*(&v64 + 1) == v65)
                  {
                    return sub_268643E5C(v63);
                  }

                  sub_2685C1CBC();
                  swift_allocError();
                  *v52 = 2;
LABEL_83:
                  swift_willThrow();
                  return sub_268643E5C(v63);
                }
              }
            }
          }
        }

LABEL_75:
        sub_2685C1CBC();
        swift_allocError();
        *v45 = 0;
        goto LABEL_83;
      }

      v37 = *(a4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(a4 + 16);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = *(a4 + 16);
        type metadata accessor for AnyMessageStorage();
        swift_allocObject();
        v39 = sub_26866D2A0(v40);
        *(a4 + 16) = v39;
      }

      sub_2686540A4(v39, v63);
      if (v4)
      {
        return sub_268643E5C(v63);
      }

      goto LABEL_81;
    }
  }

  return result;
}

uint64_t sub_268655188(unsigned __int8 *a1)
{
  v2 = a1[1];
  v3 = *(v1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  return sub_26866B5F8(v5);
}

uint64_t sub_2686551C0(uint64_t *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    *(v2 + 16) = sub_26866D2A0(v6);
  }

  return sub_26866BD64(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_268655274()
{
  v2 = v0[3];
  if (v2)
  {
    *v0 = v2;
  }

  else
  {
    v4 = v0[1];
    v3 = v0[2];
    v5 = *v0 - v3;
    v6 = __OFADD__(v4, v5);
    v7 = v4 + v5;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *v0 = v3;
      v0[1] = v7;
      v8 = sub_26865CC60();
      if (!v1)
      {
        if ((v8 & 0x100000000) != 0)
        {
          sub_26861C77C();
          swift_allocError();
          *v9 = 1;
          swift_willThrow();
        }

        else
        {
          sub_26865C974(v8);
          v0[3] = *v0;
        }
      }
    }
  }
}

_DWORD *sub_268655310(_DWORD *result)
{
  if (*(v1 + 33) == 5)
  {
    v2 = *(v1 + 8);
    v3 = v2 < 4;
    v4 = v2 - 4;
    if (v3)
    {
      sub_26861C77C();
      swift_allocError();
      *v5 = 1;
      return swift_willThrow();
    }

    else
    {
      v6 = *v1 + 4;
      *result = **v1;
      *v1 = v6;
      *(v1 + 8) = v4;
      *(v1 + 32) = 1;
    }
  }

  return result;
}

void sub_268655394()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[1];
  v2 = v1 < 4;
  v3 = v1 - 4;
  if (v2)
  {
    sub_26861C77C();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    v5 = *(*v0)++;
    v0[1] = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_268655434(char **a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 33);
  if (v4 == 2)
  {
    v11 = sub_2685B3B10();
    if (!v2)
    {
      if (!v11)
      {
LABEL_27:
        *(v1 + 32) = 1;
        goto LABEL_30;
      }

      if ((v11 & 3) == 0)
      {
        v12 = v11 >> 2;
        v7 = *a1;
        v13 = *(*a1 + 2);
        v14 = v13 + (v11 >> 2);
        if (__OFADD__(v13, v11 >> 2))
        {
          __break(1u);
        }

        v15 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v7;
        if (!isUniquelyReferenced_nonNull_native || v14 > *(v7 + 3) >> 1)
        {
          if (v13 <= v14)
          {
            v17 = v14;
          }

          else
          {
            v17 = v13;
          }

          v7 = sub_268666050(isUniquelyReferenced_nonNull_native, v17, 0, v7);
        }

        *a1 = v7;
        v18 = 1;
        while (1)
        {
          v19 = v1[1];
          if (v19 <= 3)
          {
            break;
          }

          v6 = *(*v1)++;
          v1[1] = (v19 - 4);
          v21 = *(v7 + 2);
          v20 = *(v7 + 3);
          if (v21 >= v20 >> 1)
          {
            v7 = sub_268666050((v20 > 1), v21 + 1, 1, v7);
          }

          *(v7 + 2) = v21 + 1;
          *&v7[4 * v21 + 32] = v6;
          if (v12 == v18)
          {
            goto LABEL_8;
          }

          if (__CFADD__(v18++, 1))
          {
            __break(1u);
            goto LABEL_31;
          }
        }

        *a1 = v7;
      }

      sub_26861C77C();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
    }
  }

  else if (v4 == 5)
  {
    sub_268655394();
    if (!v2)
    {
      v6 = v5;
      v7 = *a1;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v7;
      if ((v8 & 1) == 0)
      {
LABEL_31:
        v7 = sub_268666050(0, *(v7 + 2) + 1, 1, v7);
        *a1 = v7;
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_268666050((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[4 * v10 + 32] = v6;
LABEL_8:
      *a1 = v7;
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_26865567C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[1];
  v2 = v1 < 8;
  v3 = v1 - 8;
  if (v2)
  {
    sub_26861C77C();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    v5 = *(*v0)++;
    v0[1] = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_26865571C(char **a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 33);
  if (v4 == 2)
  {
    v11 = sub_2685B3B10();
    if (!v2)
    {
      if (!v11)
      {
LABEL_27:
        *(v1 + 32) = 1;
        goto LABEL_30;
      }

      if ((v11 & 7) == 0)
      {
        v12 = v11 >> 3;
        v7 = *a1;
        v13 = *(*a1 + 2);
        v14 = v13 + (v11 >> 3);
        if (__OFADD__(v13, v11 >> 3))
        {
          __break(1u);
        }

        v15 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v7;
        if (!isUniquelyReferenced_nonNull_native || v14 > *(v7 + 3) >> 1)
        {
          if (v13 <= v14)
          {
            v17 = v14;
          }

          else
          {
            v17 = v13;
          }

          v7 = sub_26866617C(isUniquelyReferenced_nonNull_native, v17, 0, v7);
        }

        *a1 = v7;
        v18 = 1;
        while (1)
        {
          v19 = v1[1];
          if (v19 <= 7)
          {
            break;
          }

          v6 = *(*v1)++;
          v1[1] = (v19 - 8);
          v21 = *(v7 + 2);
          v20 = *(v7 + 3);
          if (v21 >= v20 >> 1)
          {
            v7 = sub_26866617C((v20 > 1), v21 + 1, 1, v7);
          }

          *(v7 + 2) = v21 + 1;
          *&v7[8 * v21 + 32] = v6;
          if (v12 == v18)
          {
            goto LABEL_8;
          }

          if (__CFADD__(v18++, 1))
          {
            __break(1u);
            goto LABEL_31;
          }
        }

        *a1 = v7;
      }

      sub_26861C77C();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
    }
  }

  else if (v4 == 1)
  {
    sub_26865567C();
    if (!v2)
    {
      v6 = v5;
      v7 = *a1;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v7;
      if ((v8 & 1) == 0)
      {
LABEL_31:
        v7 = sub_26866617C(0, *(v7 + 2) + 1, 1, v7);
        *a1 = v7;
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_26866617C((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v6;
LABEL_8:
      *a1 = v7;
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = *MEMORY[0x277D85DE8];
}

unint64_t sub_268655964(unint64_t result, uint64_t (*a2)(void))
{
  v4 = result;
  if (*(v2 + 33) != 2)
  {
    if (!*(v2 + 33))
    {
      result = sub_2685B3B10();
      if (!v3)
      {
        v6 = result;
        v7 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v4 = v7;
        if ((result & 1) == 0)
        {
          result = (a2)(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
          *v4 = result;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          result = (a2)(v8 > 1, v9 + 1, 1, v7);
          v10 = v9 + 1;
          v7 = result;
        }

        *(v7 + 16) = v10;
        *(v7 + 4 * v9 + 32) = v6;
        *v4 = v7;
        *(v2 + 32) = 1;
      }
    }

    return result;
  }

  v57 = a2;
  result = sub_2685B3B10();
  if (v3)
  {
    return result;
  }

  v11 = *(v2 + 8);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v12 = v11 >= result;
  v13 = v11 - result;
  if (!v12)
  {
    sub_26861C77C();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  v15 = *v2;
  *v2 += result;
  *(v2 + 8) = v13;
  v16 = 0;
  if (result)
  {
    v17 = v15;
    v18 = result;
    while (1)
    {
      v19 = *v17++;
      if ((v19 & 0x80000000) == 0 && __OFADD__(v16++, 1))
      {
        break;
      }

      if (!--v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

LABEL_20:
  v38 = result;
  v21 = *v4;
  v22 = *(*v4 + 16);
  v23 = v22 + v16;
  if (__OFADD__(v22, v16))
  {
    goto LABEL_44;
  }

  v24 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v21;
  if (!isUniquelyReferenced_nonNull_native || v23 > *(v21 + 24) >> 1)
  {
    v21 = v57();
  }

  *v4 = v21;
  sub_2685B42A0(v2, v40);
  v26 = v41[7];
  v27 = v42;
  sub_2685B433C(v41, v39, &qword_28028CD70, &unk_268690670);
  v48 = 1;
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v51 = 1;
  v55 = xmmword_26868BD70;
  v56 = xmmword_26868BD70;
  v44 = v15;
  v45 = v38;
  v46 = v15;
  v47 = 0;
  sub_2685B4224(v39, &v49[8], &qword_28028CD70, &unk_268690670);
  v52 = v26;
  v53 = v27;
  v54 = v26;
  v28 = v43;
  sub_2685B4BE4(v40);
  v54 = v28;
  if (v38)
  {
    v29 = v38;
    do
    {
      v30 = *v15;
      v31 = v29 - 1;
      if (v30 < 0)
      {
        if (v31 < 1)
        {
LABEL_40:
          *v4 = v21;
          v44 = v15;
          v45 = v29;
          sub_26861C77C();
          swift_allocError();
          *v37 = 3;
          swift_willThrow();
          return sub_2685B4BE4(&v44);
        }

        v30 &= 0x7Fu;
        v32 = v15 + 2;
        v33 = 7;
        while (1)
        {
          v30 |= (*(v32 - 1) & 0x7F) << v33;
          if ((*(v32 - 1) & 0x80) == 0)
          {
            break;
          }

          if (v31 >= 2)
          {
            ++v32;
            --v31;
            v12 = v33 >= 0x39;
            v33 += 7;
            if (!v12)
            {
              continue;
            }
          }

          goto LABEL_40;
        }

        v29 = v31 - 1;
        v15 = v32;
      }

      else
      {
        ++v15;
        --v29;
      }

      v35 = *(v21 + 16);
      v34 = *(v21 + 24);
      if (v35 >= v34 >> 1)
      {
        v36 = v29;
        v21 = (v57)(v34 > 1, v35 + 1, 1, v21);
        v29 = v36;
      }

      *(v21 + 16) = v35 + 1;
      *(v21 + 4 * v35 + 32) = v30;
    }

    while (v29);
  }

  *v4 = v21;
  v44 = v15;
  v45 = 0;
  result = sub_2685B4BE4(&v44);
  *(v2 + 32) = 1;
  return result;
}

unint64_t sub_268655D34(unint64_t result, uint64_t (*a2)(void))
{
  v4 = result;
  if (*(v2 + 33) != 2)
  {
    if (!*(v2 + 33))
    {
      result = sub_2685B3B10();
      if (!v3)
      {
        v6 = result;
        v7 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v4 = v7;
        if ((result & 1) == 0)
        {
          result = (a2)(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
          *v4 = result;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          result = (a2)(v8 > 1, v9 + 1, 1, v7);
          v10 = v9 + 1;
          v7 = result;
        }

        *(v7 + 16) = v10;
        *(v7 + 8 * v9 + 32) = v6;
        *v4 = v7;
        *(v2 + 32) = 1;
      }
    }

    return result;
  }

  v57 = a2;
  result = sub_2685B3B10();
  if (v3)
  {
    return result;
  }

  v11 = *(v2 + 8);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v12 = v11 >= result;
  v13 = v11 - result;
  if (!v12)
  {
    sub_26861C77C();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  v15 = *v2;
  *v2 += result;
  *(v2 + 8) = v13;
  v16 = 0;
  if (result)
  {
    v17 = v15;
    v18 = result;
    while (1)
    {
      v19 = *v17++;
      if ((v19 & 0x80000000) == 0 && __OFADD__(v16++, 1))
      {
        break;
      }

      if (!--v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

LABEL_20:
  v38 = result;
  v21 = *v4;
  v22 = *(*v4 + 16);
  v23 = v22 + v16;
  if (__OFADD__(v22, v16))
  {
    goto LABEL_44;
  }

  v24 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v21;
  if (!isUniquelyReferenced_nonNull_native || v23 > *(v21 + 24) >> 1)
  {
    v21 = v57();
  }

  *v4 = v21;
  sub_2685B42A0(v2, v40);
  v26 = v41[7];
  v27 = v42;
  sub_2685B433C(v41, v39, &qword_28028CD70, &unk_268690670);
  v48 = 1;
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v51 = 1;
  v55 = xmmword_26868BD70;
  v56 = xmmword_26868BD70;
  v44 = v15;
  v45 = v38;
  v46 = v15;
  v47 = 0;
  sub_2685B4224(v39, &v49[8], &qword_28028CD70, &unk_268690670);
  v52 = v26;
  v53 = v27;
  v54 = v26;
  v28 = v43;
  sub_2685B4BE4(v40);
  v54 = v28;
  if (v38)
  {
    v29 = v38;
    do
    {
      v30 = *v15;
      v31 = v29 - 1;
      if (v30 < 0)
      {
        if (v31 < 1)
        {
LABEL_40:
          *v4 = v21;
          v44 = v15;
          v45 = v29;
          sub_26861C77C();
          swift_allocError();
          *v37 = 3;
          swift_willThrow();
          return sub_2685B4BE4(&v44);
        }

        v30 &= 0x7Fu;
        v32 = v15 + 2;
        v33 = 7;
        while (1)
        {
          v30 |= (*(v32 - 1) & 0x7F) << v33;
          if ((*(v32 - 1) & 0x80) == 0)
          {
            break;
          }

          if (v31 >= 2)
          {
            ++v32;
            --v31;
            v12 = v33 >= 0x39;
            v33 += 7;
            if (!v12)
            {
              continue;
            }
          }

          goto LABEL_40;
        }

        v29 = v31 - 1;
        v15 = v32;
      }

      else
      {
        ++v15;
        --v29;
      }

      v35 = *(v21 + 16);
      v34 = *(v21 + 24);
      if (v35 >= v34 >> 1)
      {
        v36 = v29;
        v21 = (v57)(v34 > 1, v35 + 1, 1, v21);
        v29 = v36;
      }

      *(v21 + 16) = v35 + 1;
      *(v21 + 8 * v35 + 32) = v30;
    }

    while (v29);
  }

  *v4 = v21;
  v44 = v15;
  v45 = 0;
  result = sub_2685B4BE4(&v44);
  *(v2 + 32) = 1;
  return result;
}

unint64_t sub_268656104(unint64_t result)
{
  v3 = result;
  if (*(v1 + 33) != 2)
  {
    if (!*(v1 + 33))
    {
      result = sub_2685B3B10();
      if (!v2)
      {
        v4 = result;
        v5 = result & 1;
        v6 = *v3;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v3 = v6;
        if ((result & 1) == 0)
        {
          result = sub_268666154(0, *(v6 + 2) + 1, 1, v6);
          v6 = result;
          *v3 = result;
        }

        v7 = -v5;
        v9 = *(v6 + 2);
        v8 = *(v6 + 3);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          result = sub_268666154((v8 > 1), v9 + 1, 1, v6);
          v10 = v9 + 1;
          v6 = result;
        }

        *(v6 + 2) = v10;
        *&v6[4 * v9 + 32] = v7 ^ (v4 >> 1);
        *v3 = v6;
        *(v1 + 32) = 1;
      }
    }

    return result;
  }

  result = sub_2685B3B10();
  if (v2)
  {
    return result;
  }

  v11 = *(v1 + 8);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    return result;
  }

  v12 = v11 >= result;
  v13 = v11 - result;
  if (!v12)
  {
    sub_26861C77C();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  v15 = *v1;
  *v1 += result;
  *(v1 + 8) = v13;
  v16 = 0;
  if (result)
  {
    v17 = v15;
    v18 = result;
    while (1)
    {
      v19 = *v17++;
      if ((v19 & 0x80000000) == 0 && __OFADD__(v16++, 1))
      {
        break;
      }

      if (!--v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

LABEL_20:
  v58 = result;
  v21 = *v3;
  v22 = *(*v3 + 2);
  v23 = v22 + v16;
  if (__OFADD__(v22, v16))
  {
    goto LABEL_47;
  }

  v24 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v21;
  if (!isUniquelyReferenced_nonNull_native || v23 > *(v21 + 3) >> 1)
  {
    if (v22 <= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = v22;
    }

    v21 = sub_268666154(isUniquelyReferenced_nonNull_native, v26, 0, v21);
  }

  *v3 = v21;
  sub_2685B42A0(v1, v41);
  v27 = v42[7];
  v28 = v43;
  sub_2685B433C(v42, v40, &qword_28028CD70, &unk_268690670);
  v49 = 1;
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  v52 = 1;
  v56 = xmmword_26868BD70;
  v57 = xmmword_26868BD70;
  v29 = v58;
  v45 = v15;
  v46 = v58;
  v47 = v15;
  v48 = 0;
  sub_2685B4224(v40, &v50[8], &qword_28028CD70, &unk_268690670);
  v53 = v27;
  v54 = v28;
  v55 = v27;
  v30 = v44;
  sub_2685B4BE4(v41);
  v55 = v30;
  if (v29)
  {
    v31 = v29;
    do
    {
      v32 = *v15;
      v33 = v31 - 1;
      if (v32 < 0)
      {
        if (v33 < 1)
        {
LABEL_43:
          *v3 = v21;
          v45 = v15;
          v46 = v31;
          sub_26861C77C();
          swift_allocError();
          *v39 = 3;
          swift_willThrow();
          return sub_2685B4BE4(&v45);
        }

        v32 &= 0x7Fu;
        v34 = v15 + 2;
        v35 = 7;
        while (1)
        {
          v32 |= (*(v34 - 1) & 0x7F) << v35;
          if ((*(v34 - 1) & 0x80) == 0)
          {
            break;
          }

          if (v33 >= 2)
          {
            ++v34;
            --v33;
            v12 = v35 >= 0x39;
            v35 += 7;
            if (!v12)
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        v31 = v33 - 1;
        v15 = v34;
      }

      else
      {
        ++v15;
        --v31;
      }

      v37 = *(v21 + 2);
      v36 = *(v21 + 3);
      if (v37 >= v36 >> 1)
      {
        v38 = v31;
        v21 = sub_268666154((v36 > 1), v37 + 1, 1, v21);
        v31 = v38;
      }

      *(v21 + 2) = v37 + 1;
      *&v21[4 * v37 + 32] = -(v32 & 1) ^ (v32 >> 1);
    }

    while (v31);
  }

  *v3 = v21;
  v45 = v15;
  v46 = 0;
  result = sub_2685B4BE4(&v45);
  *(v1 + 32) = 1;
  return result;
}

unint64_t sub_2686564D0(unint64_t result)
{
  v3 = result;
  if (*(v1 + 33) != 2)
  {
    if (!*(v1 + 33))
    {
      result = sub_2685B3B10();
      if (!v2)
      {
        v4 = result;
        v5 = result & 1;
        v6 = *v3;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v3 = v6;
        if ((result & 1) == 0)
        {
          result = sub_268666168(0, *(v6 + 2) + 1, 1, v6);
          v6 = result;
          *v3 = result;
        }

        v7 = -v5;
        v9 = *(v6 + 2);
        v8 = *(v6 + 3);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          result = sub_268666168((v8 > 1), v9 + 1, 1, v6);
          v10 = v9 + 1;
          v6 = result;
        }

        *(v6 + 2) = v10;
        *&v6[8 * v9 + 32] = v7 ^ (v4 >> 1);
        *v3 = v6;
        *(v1 + 32) = 1;
      }
    }

    return result;
  }

  result = sub_2685B3B10();
  if (v2)
  {
    return result;
  }

  v11 = *(v1 + 8);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    return result;
  }

  v12 = v11 >= result;
  v13 = v11 - result;
  if (!v12)
  {
    sub_26861C77C();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  v15 = *v1;
  *v1 += result;
  *(v1 + 8) = v13;
  v16 = 0;
  if (result)
  {
    v17 = v15;
    v18 = result;
    while (1)
    {
      v19 = *v17++;
      if ((v19 & 0x80000000) == 0 && __OFADD__(v16++, 1))
      {
        break;
      }

      if (!--v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

LABEL_20:
  v58 = result;
  v21 = *v3;
  v22 = *(*v3 + 2);
  v23 = v22 + v16;
  if (__OFADD__(v22, v16))
  {
    goto LABEL_47;
  }

  v24 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v21;
  if (!isUniquelyReferenced_nonNull_native || v23 > *(v21 + 3) >> 1)
  {
    if (v22 <= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = v22;
    }

    v21 = sub_268666168(isUniquelyReferenced_nonNull_native, v26, 0, v21);
  }

  *v3 = v21;
  sub_2685B42A0(v1, v41);
  v27 = v42[7];
  v28 = v43;
  sub_2685B433C(v42, v40, &qword_28028CD70, &unk_268690670);
  v49 = 1;
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  v52 = 1;
  v56 = xmmword_26868BD70;
  v57 = xmmword_26868BD70;
  v29 = v58;
  v45 = v15;
  v46 = v58;
  v47 = v15;
  v48 = 0;
  sub_2685B4224(v40, &v50[8], &qword_28028CD70, &unk_268690670);
  v53 = v27;
  v54 = v28;
  v55 = v27;
  v30 = v44;
  sub_2685B4BE4(v41);
  v55 = v30;
  if (v29)
  {
    v31 = v29;
    do
    {
      v32 = *v15;
      v33 = v31 - 1;
      if ((v32 & 0x8000000000000000) != 0)
      {
        if (v33 < 1)
        {
LABEL_43:
          *v3 = v21;
          v45 = v15;
          v46 = v31;
          sub_26861C77C();
          swift_allocError();
          *v39 = 3;
          swift_willThrow();
          return sub_2685B4BE4(&v45);
        }

        v32 &= 0x7Fu;
        v34 = v15 + 2;
        v35 = 7;
        while (1)
        {
          v32 |= (*(v34 - 1) & 0x7F) << v35;
          if ((*(v34 - 1) & 0x80) == 0)
          {
            break;
          }

          if (v33 >= 2)
          {
            ++v34;
            --v33;
            v12 = v35 >= 0x39;
            v35 += 7;
            if (!v12)
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        v31 = v33 - 1;
        v15 = v34;
      }

      else
      {
        ++v15;
        --v31;
      }

      v37 = *(v21 + 2);
      v36 = *(v21 + 3);
      if (v37 >= v36 >> 1)
      {
        v38 = v31;
        v21 = sub_268666168((v36 > 1), v37 + 1, 1, v21);
        v31 = v38;
      }

      *(v21 + 2) = v37 + 1;
      *&v21[8 * v37 + 32] = -(v32 & 1) ^ (v32 >> 1);
    }

    while (v31);
  }

  *v3 = v21;
  v45 = v15;
  v46 = 0;
  result = sub_2685B4BE4(&v45);
  *(v1 + 32) = 1;
  return result;
}

_DWORD *sub_26865689C(_DWORD *result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(v1 + 33) == 5)
  {
    v2 = v1[1];
    v3 = v2 < 4;
    v4 = v2 - 4;
    if (v3)
    {
      sub_26861C77C();
      swift_allocError();
      *v5 = 1;
      result = swift_willThrow();
    }

    else
    {
      v6 = *(*v1)++;
      v1[1] = v4;
      *result = v6;
      *(v1 + 32) = 1;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268656954(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(v1 + 33) == 5)
  {
    v2 = v1[1];
    v3 = v2 < 4;
    v4 = v2 - 4;
    if (v3)
    {
      sub_26861C77C();
      swift_allocError();
      *v5 = 1;
      result = swift_willThrow();
    }

    else
    {
      v6 = *(*v1)++;
      v1[1] = v4;
      *result = v6;
      *(result + 4) = 0;
      *(v1 + 32) = 1;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_268656A10(unint64_t result, uint64_t (*a2)(void))
{
  v4 = result;
  v52 = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 33);
  if (v5 != 2)
  {
    if (v5 != 5)
    {
      goto LABEL_13;
    }

    v6 = *(v2 + 8);
    if (v6 > 3)
    {
      v8 = **v2;
      *v2 += 4;
      *(v2 + 8) = v6 - 4;
      v9 = *result;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v9;
      if ((result & 1) == 0)
      {
        result = (a2)(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
        *v4 = result;
      }

      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      if (v11 >= v10 >> 1)
      {
        result = (a2)(v10 > 1, v11 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v11 + 1;
      *(v9 + 4 * v11 + 32) = v8;
      *v4 = v9;
      *(v2 + 32) = 1;
      goto LABEL_13;
    }

LABEL_12:
    sub_26861C77C();
    swift_allocError();
    *v16 = 1;
    result = swift_willThrow();
    goto LABEL_13;
  }

  result = sub_2685B3B10();
  if (v3)
  {
    goto LABEL_13;
  }

  v13 = *(v2 + 8);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v14 = v13 >= result;
  v15 = v13 - result;
  if (!v14)
  {
    goto LABEL_12;
  }

  v33 = result;
  v18 = *v2;
  *v2 += result;
  *(v2 + 8) = v15;
  v19 = *v4;
  v20 = *(*v4 + 16);
  v21 = v20 + (result >> 2);
  if (__OFADD__(v20, result >> 2))
  {
LABEL_27:
    __break(1u);
  }

  v22 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v19;
  if (!isUniquelyReferenced_nonNull_native || v21 > *(v19 + 24) >> 1)
  {
    v19 = a2();
  }

  *v4 = v19;
  sub_2685B42A0(v2, v35);
  v24 = v36[7];
  v25 = v37;
  sub_2685B433C(v36, v34, &qword_28028CD70, &unk_268690670);
  v43 = 1;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  v46 = 1;
  v50 = xmmword_26868BD70;
  v51 = xmmword_26868BD70;
  v39 = v18;
  v40 = v33;
  v41 = v18;
  v42 = 0;
  sub_2685B4224(v34, &v44[8], &qword_28028CD70, &unk_268690670);
  v47 = v24;
  v48 = v25;
  v49 = v24;
  v26 = v38;
  sub_2685B4BE4(v35);
  v49 = v26;
  if (v33)
  {
    v27 = v33;
    while (v27 > 3)
    {
      v28 = *v18;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        v31 = v27;
        v19 = (a2)(v29 > 1, v30 + 1, 1, v19);
        v27 = v31;
      }

      ++v18;
      *(v19 + 16) = v30 + 1;
      *(v19 + 4 * v30 + 32) = v28;
      v27 -= 4;
      if (!v27)
      {
        goto LABEL_24;
      }
    }

    *v4 = v19;
    v39 = v18;
    v40 = v27;
    sub_26861C77C();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    result = sub_2685B4BE4(&v39);
  }

  else
  {
LABEL_24:
    *v4 = v19;
    v39 = v18;
    v40 = 0;
    result = sub_2685B4BE4(&v39);
    *(v2 + 32) = 1;
  }

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_268656D80(void *result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(v1 + 33) == 1)
  {
    v2 = v1[1];
    v3 = v2 < 8;
    v4 = v2 - 8;
    if (v3)
    {
      sub_26861C77C();
      swift_allocError();
      *v5 = 1;
      result = swift_willThrow();
    }

    else
    {
      v6 = *(*v1)++;
      v1[1] = v4;
      *result = v6;
      *(v1 + 32) = 1;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268656E38(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(v1 + 33) == 1)
  {
    v2 = v1[1];
    v3 = v2 < 8;
    v4 = v2 - 8;
    if (v3)
    {
      sub_26861C77C();
      swift_allocError();
      *v5 = 1;
      result = swift_willThrow();
    }

    else
    {
      v6 = *(*v1)++;
      v1[1] = v4;
      *result = v6;
      *(result + 8) = 0;
      *(v1 + 32) = 1;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_268656EF4(unint64_t result, uint64_t (*a2)(void))
{
  v4 = result;
  v52 = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 33);
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v6 = *(v2 + 8);
    if (v6 > 7)
    {
      v8 = **v2;
      *v2 += 8;
      *(v2 + 8) = v6 - 8;
      v9 = *result;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v9;
      if ((result & 1) == 0)
      {
        result = (a2)(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
        *v4 = result;
      }

      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      if (v11 >= v10 >> 1)
      {
        result = (a2)(v10 > 1, v11 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v11 + 1;
      *(v9 + 8 * v11 + 32) = v8;
      *v4 = v9;
      *(v2 + 32) = 1;
      goto LABEL_13;
    }

LABEL_12:
    sub_26861C77C();
    swift_allocError();
    *v16 = 1;
    result = swift_willThrow();
    goto LABEL_13;
  }

  result = sub_2685B3B10();
  if (v3)
  {
    goto LABEL_13;
  }

  v13 = *(v2 + 8);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v14 = v13 >= result;
  v15 = v13 - result;
  if (!v14)
  {
    goto LABEL_12;
  }

  v33 = result;
  v18 = *v2;
  *v2 += result;
  *(v2 + 8) = v15;
  v19 = *v4;
  v20 = *(*v4 + 16);
  v21 = v20 + (result >> 3);
  if (__OFADD__(v20, result >> 3))
  {
LABEL_27:
    __break(1u);
  }

  v22 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v19;
  if (!isUniquelyReferenced_nonNull_native || v21 > *(v19 + 24) >> 1)
  {
    v19 = a2();
  }

  *v4 = v19;
  sub_2685B42A0(v2, v35);
  v24 = v36[7];
  v25 = v37;
  sub_2685B433C(v36, v34, &qword_28028CD70, &unk_268690670);
  v43 = 1;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  v46 = 1;
  v50 = xmmword_26868BD70;
  v51 = xmmword_26868BD70;
  v39 = v18;
  v40 = v33;
  v41 = v18;
  v42 = 0;
  sub_2685B4224(v34, &v44[8], &qword_28028CD70, &unk_268690670);
  v47 = v24;
  v48 = v25;
  v49 = v24;
  v26 = v38;
  sub_2685B4BE4(v35);
  v49 = v26;
  if (v33)
  {
    v27 = v33;
    while (v27 > 7)
    {
      v28 = *v18;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        v31 = v27;
        v19 = (a2)(v29 > 1, v30 + 1, 1, v19);
        v27 = v31;
      }

      ++v18;
      *(v19 + 16) = v30 + 1;
      *(v19 + 8 * v30 + 32) = v28;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_24;
      }
    }

    *v4 = v19;
    v39 = v18;
    v40 = v27;
    sub_26861C77C();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    result = sub_2685B4BE4(&v39);
  }

  else
  {
LABEL_24:
    *v4 = v19;
    v39 = v18;
    v40 = 0;
    result = sub_2685B4BE4(&v39);
    *(v2 + 32) = 1;
  }

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_268657264(unint64_t result)
{
  v3 = result;
  if (*(v1 + 33) != 2)
  {
    if (!*(v1 + 33))
    {
      result = sub_2685B3B10();
      if (!v2)
      {
        v4 = result;
        v5 = *v3;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v3 = v5;
        if ((result & 1) == 0)
        {
          result = sub_268665E50(0, *(v5 + 2) + 1, 1, v5);
          v5 = result;
          *v3 = result;
        }

        v7 = *(v5 + 2);
        v6 = *(v5 + 3);
        v8 = v7 + 1;
        if (v7 >= v6 >> 1)
        {
          result = sub_268665E50((v6 > 1), v7 + 1, 1, v5);
          v8 = v7 + 1;
          v5 = result;
        }

        *(v5 + 2) = v8;
        v5[v7 + 32] = v4 != 0;
        *v3 = v5;
        *(v1 + 32) = 1;
      }
    }

    return result;
  }

  result = sub_2685B3B10();
  if (v2)
  {
    return result;
  }

  v9 = *(v1 + 8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    return result;
  }

  v10 = v9 >= result;
  v11 = v9 - result;
  if (!v10)
  {
    sub_26861C77C();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }

  v13 = *v1;
  *v1 += result;
  *(v1 + 8) = v11;
  v14 = 0;
  if (result)
  {
    v15 = v13;
    v16 = result;
    while (1)
    {
      v17 = *v15++;
      if ((v17 & 0x80000000) == 0 && __OFADD__(v14++, 1))
      {
        break;
      }

      if (!--v16)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

LABEL_20:
  v56 = result;
  v19 = *v3;
  v20 = *(*v3 + 2);
  v21 = v20 + v14;
  if (__OFADD__(v20, v14))
  {
    goto LABEL_47;
  }

  v22 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v19;
  if (!isUniquelyReferenced_nonNull_native || v21 > *(v19 + 3) >> 1)
  {
    if (v20 <= v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v20;
    }

    v19 = sub_268665E50(isUniquelyReferenced_nonNull_native, v24, 0, v19);
  }

  *v3 = v19;
  sub_2685B42A0(v1, v39);
  v25 = v40[7];
  v26 = v41;
  sub_2685B433C(v40, v38, &qword_28028CD70, &unk_268690670);
  v47 = 1;
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  v50 = 1;
  v54 = xmmword_26868BD70;
  v55 = xmmword_26868BD70;
  v27 = v56;
  v43 = v13;
  v44 = v56;
  v45 = v13;
  v46 = 0;
  sub_2685B4224(v38, &v48[8], &qword_28028CD70, &unk_268690670);
  v51 = v25;
  v52 = v26;
  v53 = v25;
  v28 = v42;
  sub_2685B4BE4(v39);
  v53 = v28;
  if (v27)
  {
    v29 = v27;
    do
    {
      v30 = *v13;
      v31 = v29 - 1;
      if (v30 < 0)
      {
        if (v31 < 1)
        {
LABEL_43:
          *v3 = v19;
          v43 = v13;
          v44 = v29;
          sub_26861C77C();
          swift_allocError();
          *v37 = 3;
          swift_willThrow();
          return sub_2685B4BE4(&v43);
        }

        v30 &= 0x7Fu;
        v32 = v13 + 2;
        v33 = 7;
        while (1)
        {
          v30 |= (*(v32 - 1) & 0x7F) << v33;
          if ((*(v32 - 1) & 0x80) == 0)
          {
            break;
          }

          if (v31 >= 2)
          {
            ++v32;
            --v31;
            v10 = v33 >= 0x39;
            v33 += 7;
            if (!v10)
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        v29 = v31 - 1;
        v13 = v32;
      }

      else
      {
        ++v13;
        --v29;
      }

      v35 = *(v19 + 2);
      v34 = *(v19 + 3);
      if (v35 >= v34 >> 1)
      {
        v36 = v29;
        v19 = sub_268665E50((v34 > 1), v35 + 1, 1, v19);
        v29 = v36;
      }

      *(v19 + 2) = v35 + 1;
      v19[v35 + 32] = v30 != 0;
    }

    while (v29);
  }

  *v3 = v19;
  v43 = v13;
  v44 = 0;
  result = sub_2685B4BE4(&v43);
  *(v1 + 32) = 1;
  return result;
}

unint64_t sub_268657628(unint64_t result, void (*a2)(void, void))
{
  if (*(v2 + 33) == 2)
  {
    v4 = result;
    result = sub_2685B3B10();
    if (!v3)
    {
      v6 = *(v2 + 8);
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v7 = v6 - result;
        if (v6 >= result)
        {
          v9 = result;
          a2(*v4, v4[1]);
          v10 = *v2;
          *v2 += v9;
          *(v2 + 8) = v7;
          result = sub_26863BA00(v10, v9);
          *v4 = result;
          v4[1] = v11;
          *(v2 + 32) = 1;
        }

        else
        {
          sub_26861C77C();
          swift_allocError();
          *v8 = 1;
          return swift_willThrow();
        }
      }
    }
  }

  return result;
}

unint64_t sub_2686576F8(unint64_t result)
{
  if (*(v2 + 33) != 2)
  {
    return result;
  }

  v6 = result;
  result = sub_2685B3B10();
  if (v3)
  {
    return result;
  }

  v7 = *(v2 + 8);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    result = sub_268665F44(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    v14 = v6;
    *v6 = result;
    goto LABEL_8;
  }

  v8 = result;
  v9 = v7 >= result;
  v10 = v7 - result;
  if (!v9)
  {
    sub_26861C77C();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  v12 = *v2;
  *v2 += v8;
  *(v2 + 8) = v10;
  v1 = sub_26863BA00(v12, v8);
  v4 = v13;
  v5 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = v6;
LABEL_8:
  v15 = *(v5 + 16);
  v16 = *(v5 + 24);
  v17 = v15 + 1;
  if (v15 >= v16 >> 1)
  {
    v21 = v15 + 1;
    v19 = v5;
    v20 = *(v5 + 16);
    result = sub_268665F44((v16 > 1), v15 + 1, 1, v19);
    v15 = v20;
    v17 = v21;
    v5 = result;
    v14 = v6;
  }

  *(v5 + 16) = v17;
  v18 = v5 + 16 * v15;
  *(v18 + 32) = v1;
  *(v18 + 40) = v4;
  *v14 = v5;
  *(v2 + 32) = 1;
  return result;
}

uint64_t sub_26865784C(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_268689C74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8, v11);
  v14 = &v20 - v13;
  if (!*(v3 + 33))
  {
    v15 = result;
    v16 = v3;
    result = sub_2685B3B10();
    if (!v4)
    {
      (*(a3 + 32))(result, a2, a3);
      v17 = *(a2 - 8);
      v18 = (*(v17 + 48))(v14, 1, a2);
      v19 = *(v9 + 8);
      if (v18 == 1)
      {
        return v19(v14, v15);
      }

      else
      {
        v19(a1, v15);
        (*(v17 + 32))(a1, v14, a2);
        result = (*(v17 + 56))(a1, 0, 1, a2);
        *(v16 + 32) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_268657A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_268689C74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8, v11);
  v14 = &v18 - v13;
  if (!*(v3 + 33))
  {
    v15 = result;
    v16 = v3;
    result = sub_2685B3B10();
    if (!v4)
    {
      (*(a3 + 32))(result, a2, a3);
      v17 = *(a2 - 8);
      if ((*(v17 + 48))(v14, 1, a2) == 1)
      {
        return (*(v9 + 8))(v14, v15);
      }

      else
      {
        (*(v17 + 8))(a1, a2);
        result = (*(v17 + 32))(a1, v14, a2);
        *(v16 + 32) = 1;
      }
    }
  }

  return result;
}

unint64_t sub_268657BD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v104 = a1;
  v6 = sub_268689C74();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v71 - v14;
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v13, v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  result = MEMORY[0x28223BE20](v23, v24);
  v29 = &v71 - v28;
  if (*(v3 + 33) != 2)
  {
    if (!*(v3 + 33))
    {
      v30 = v27;
      v83 = v26;
      v31 = result;
      result = sub_2685B3B10();
      if (!v4)
      {
        v82 = v3;
        (*(v84 + 32))(result, a2);
        if ((*(v16 + 48))(v15, 1, a2) == 1)
        {
          return v30[1](v15, v31);
        }

        else
        {
          (*(v16 + 32))(v29, v15, a2);
          (*(v16 + 16))(v83, v29, a2);
          sub_268689BA4();
          sub_268689B84();
          result = (*(v16 + 8))(v29, a2);
          *(v82 + 32) = 1;
        }
      }
    }

    return result;
  }

  v80 = v27;
  v81 = result;
  v83 = v26;
  result = sub_2685B3B10();
  if (v4)
  {
    return result;
  }

  v32 = *(v3 + 8);
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_83;
  }

  v33 = result;
  v34 = v32 >= result;
  v35 = v32 - result;
  v36 = v104;
  if (!v34)
  {
    sub_26861C77C();
    swift_allocError();
    *v37 = 1;
    return swift_willThrow();
  }

  v38 = *v3;
  *v3 += result;
  *(v3 + 8) = v35;
  v82 = v3;
  v39 = 0;
  if (result)
  {
    v40 = v38;
    v41 = result;
    while (1)
    {
      v42 = *v40++;
      if ((v42 & 0x80000000) == 0)
      {
        v43 = __OFADD__(v39++, 1);
        if (v43)
        {
          break;
        }
      }

      if (!--v41)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  v44 = *v36;
  result = sub_268689B74();
  if (__OFADD__(result, v39))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v77 = sub_268689BA4();
  sub_268689B34();
  sub_2685B42A0(v82, &v86);
  v45 = v88[7];
  LODWORD(v79) = v89;
  sub_2685B433C(v88, v85, &qword_28028CD70, &unk_268690670);
  v95 = 1;
  memset(v96, 0, sizeof(v96));
  v97 = 0;
  v98 = 1;
  v102 = xmmword_26868BD70;
  v103 = xmmword_26868BD70;
  v91 = v38;
  v92 = v33;
  v93 = v38;
  v94 = 0;
  sub_2685B4224(v85, &v96[8], &qword_28028CD70, &unk_268690670);
  v99 = v45;
  v100 = v79;
  v101 = v45;
  v46 = v90;
  sub_2685B4BE4(&v86);
  v101 = v46;
  v47 = v82;
  if (!v33)
  {
LABEL_63:
    result = sub_2685B4BE4(&v91);
    goto LABEL_64;
  }

  v78 = (v16 + 48);
  v79 = v84 + 32;
  v75 = (v16 + 16);
  v76 = (v16 + 32);
  v73 = 0;
  v74 = (v16 + 8);
  ++v80;
  do
  {
    while (1)
    {
      v48 = *v38;
      --v33;
      if (v48 < 0)
      {
        if (v33 < 1)
        {
LABEL_44:
          sub_26861C77C();
          swift_allocError();
          *v55 = 3;
          swift_willThrow();
          sub_2685B4BE4(&v91);
        }

        v48 &= 0x7Fu;
        v38 += 2;
        v49 = 7;
        while (1)
        {
          v48 |= (*(v38 - 1) & 0x7F) << v49;
          if ((*(v38 - 1) & 0x80) == 0)
          {
            break;
          }

          if (v33 >= 2)
          {
            ++v38;
            --v33;
            v34 = v49 >= 0x39;
            v49 += 7;
            if (!v34)
            {
              continue;
            }
          }

          goto LABEL_44;
        }

        --v33;
        v91 = v38;
        v92 = v33;
      }

      else
      {
        v91 = v38 + 1;
        v92 = v33;
        ++v38;
      }

      (*(v84 + 32))(v48, a2);
      if ((*v78)(v11, 1, a2) == 1)
      {
        break;
      }

      (*v76)(v21, v11, a2);
      (*v75)(v83, v21, a2);
      sub_268689B84();
      result = (*v74)(v21, a2);
      v47 = v82;
LABEL_23:
      if (!v33)
      {
        goto LABEL_45;
      }
    }

    result = (*v80)(v11, v81);
    v47 = v82;
    if (*(v82 + 112))
    {
      goto LABEL_23;
    }

    v50 = v73;
    if (!v73)
    {
      v50 = MEMORY[0x277D84F90];
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_268666154(0, *(v50 + 2) + 1, 1, v50);
      v50 = result;
    }

    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    v73 = v50;
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v72 = v52;
      result = sub_268666154((v51 > 1), v52 + 1, 1, v73);
      v52 = v72;
      v73 = result;
    }

    v54 = v73;
    *(v73 + 2) = v53;
    *&v54[4 * v52 + 32] = v48;
    v47 = v82;
  }

  while (v33);
LABEL_45:
  v56 = v73;
  if (!v73)
  {
    goto LABEL_63;
  }

  v57 = *(v47 + 40);
  v58 = 8 * v57;
  v85[0] = 0;
  v59 = *(v73 + 2);
  if (v59)
  {
    v60 = 0;
    v61 = v73 + 32;
    while (1)
    {
      v63 = *v61;
      v61 += 4;
      v62 = v63;
      if (v63 >= 0x80)
      {
        if ((v62 & 0x80000000) != 0)
        {
          v64 = 10;
        }

        else if (v62 >> 21)
        {
          v64 = v62 >> 28 ? 5 : 4;
        }

        else
        {
          v64 = v62 >= 0x4000 ? 3 : 2;
        }
      }

      else
      {
        v64 = 1;
      }

      v43 = __OFADD__(v60, v64);
      v60 += v64;
      if (v43)
      {
        break;
      }

      if (!--v59)
      {
        v85[0] = v60;
        if (v58 < 0x80)
        {
          v65 = 1;
          goto LABEL_73;
        }

        if (!(v58 >> 14))
        {
          goto LABEL_72;
        }

        if (v58 < 0x200000)
        {
          v65 = 3;
          goto LABEL_73;
        }

        if (v58 >> 28)
        {
          goto LABEL_81;
        }

        goto LABEL_79;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v58 >= 0x80)
  {
    if (v58 >= 0x4000)
    {
      if (v58 >= 0x200000)
      {
        v60 = 0;
        if (v58 >> 28)
        {
LABEL_81:
          v65 = 5;
        }

        else
        {
LABEL_79:
          v65 = 4;
        }
      }

      else
      {
        v60 = 0;
        v65 = 3;
      }
    }

    else
    {
      v60 = 0;
LABEL_72:
      v65 = 2;
    }
  }

  else
  {
    v60 = 0;
    v65 = 1;
  }

LABEL_73:
  result = sub_2685B5B0C(v60);
  v66 = v65 + result;
  if (__OFADD__(v65, result))
  {
    goto LABEL_85;
  }

  result = v66 + v60;
  if (__OFADD__(v66, v60))
  {
LABEL_86:
    __break(1u);
  }

  else
  {
    v86 = sub_2685B5DAC(result);
    v87 = v67;

    sub_26865D370(&v86, (8 * v57) | 2, v85, v56);
    sub_2685B4BE4(&v91);
    v68 = v86;
    v69 = v87;
    v70 = v82;
    sub_2685B98FC(*(v82 + 144), *(v82 + 152));

    *(v70 + 144) = v68;
    *(v70 + 152) = v69;
    v47 = v70;
LABEL_64:
    *(v47 + 32) = 1;
  }

  return result;
}

_BYTE *sub_268658444(_BYTE *result, uint64_t a2, unsigned int a3, unint64_t *a4, uint64_t a5)
{
  if (result && a2 - result >= 1)
  {
    v5 = a3;
    if (a3 < 0x80)
    {
      LOBYTE(v6) = a3;
    }

    else
    {
      do
      {
        *result++ = v5 | 0x80;
        v6 = v5 >> 7;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
    }

    *result++ = v6;
    v8 = *a4;
    if (*a4 < 0x80)
    {
      v9 = *a4;
    }

    else
    {
      do
      {
        *result++ = v8 | 0x80;
        v9 = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }

    *result = v9;
    v11 = *(a5 + 16);
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        ++result;
        v14 = *(a5 + 32 + 4 * i);
        if (v14 < 0x80)
        {
          LODWORD(v13) = *(a5 + 32 + 4 * i);
        }

        else
        {
          do
          {
            *result++ = v14 | 0x80;
            v13 = v14 >> 7;
            v15 = v14 >> 14;
            v14 >>= 7;
          }

          while (v15);
        }

        *result = v13;
      }
    }
  }

  return result;
}

unint64_t sub_26865850C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_268689C74();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12, v15);
  v19 = &v34 - v18;
  if (*(v3 + 33) == 2)
  {
    v41 = v17;
    v57 = result;
    result = sub_2685B3B10();
    if (!v4)
    {
      v20 = *(v3 + 8);
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v21 = v20 >= result;
        v22 = v20 - result;
        if (!v21)
        {
          sub_26861C77C();
          swift_allocError();
          *v23 = 1;
          return swift_willThrow();
        }

        v24 = a1;
        v39 = result;
        v40 = a3;
        v38 = *v3;
        *v3 = v38 + result;
        *(v3 + 8) = v22;
        v25 = v41;
        v26 = *(v41 + 16);
        v35 = v24;
        v27 = v57;
        v26(v19);
        v34 = *(a2 - 8);
        v36 = *(v34 + 48);
        v37 = v34 + 48;
        v28 = v36(v19, 1, a2);
        v29 = v19;
        v30 = v35;
        (*(v25 + 8))(v29, v27);
        if (v28 == 1)
        {
          (*(v40 + 16))(a2);
          (*(v34 + 56))(v14, 0, 1, a2);
          (*(v25 + 40))(v30, v14, v57);
        }

        sub_2685B42A0(v5, v43);
        v31 = v44[7];
        v32 = v45;
        sub_2685B433C(v44, v42, &qword_28028CD70, &unk_268690670);
        v48 = 1;
        memset(v49, 0, sizeof(v49));
        v50 = 0;
        v51 = 1;
        v55 = xmmword_26868BD70;
        v56 = xmmword_26868BD70;
        v47[0] = v38;
        v47[1] = v39;
        v47[2] = v38;
        v47[3] = 0;
        sub_2685B4224(v42, &v49[8], &qword_28028CD70, &unk_268690670);
        v52 = v31;
        v53 = v32;
        v54 = v31;
        v33 = v46;
        sub_2685B4BE4(v43);
        v54 = v33;
        result = v36(v30, 1, a2);
        if (result != 1)
        {
          sub_2685B2B7C(v30, a2, v40);
          result = sub_2685B4BE4(v47);
          *(v5 + 32) = 1;
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268658894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268689C74();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v24 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = v17;
  (*(v17 + 16))(v11, a1, v6);
  v18 = *(v12 + 48);
  if (v18(v11, 1, a2) == 1)
  {
    (*(a3 + 16))(a2, a3);
    if (v18(v11, 1, a2) != 1)
    {
      (*(v26 + 8))(v11, v6);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v11, a2);
  }

  v19 = v28;
  v20 = v27;
  v21 = sub_268658B48(v16, *(v28 + 40), a2, a3);
  if (v20 || (v21 & 1) == 0)
  {
    return (*(v12 + 8))(v16, a2);
  }

  v22 = v25;
  (*(v26 + 8))(v25, v6);
  (*(v12 + 32))(v22, v16, a2);
  result = (*(v12 + 56))(v22, 0, 1, a2);
  *(v19 + 32) = 1;
  return result;
}

uint64_t sub_268658B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 33) != 3)
  {
    v11 = 0;
    return v11 & 1;
  }

  v6 = *(v4 + 120);
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v4 + 120) = v7;
  if (v7 < 0)
  {
    sub_26861C77C();
    swift_allocError();
    *v12 = 6;
    swift_willThrow();
    return v11 & 1;
  }

  sub_2685B42A0(v4, v25);
  v30 = a2;
  v31 = 0;
  v27 = 1;
  (*(a4 + 64))(v25, &type metadata for BinaryDecoder, &off_28792F920, a3, a4);
  if (v5)
  {
    goto LABEL_18;
  }

  if (v29 != a2 || v28 != 4)
  {
    sub_26861C77C();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
LABEL_18:
    sub_2685B4BE4(v25);
    return v11 & 1;
  }

  v13 = v33;
  if (v33 >> 60 != 15)
  {
    v14 = v32;
    v23 = *(a4 + 56);
    v34 = 0;
    sub_2685BA80C(v32, v33);
    v15 = v23(v24, a3, a4);
    sub_268689854();
    v15(v24, 0);
    sub_2685B98FC(v14, v13);
  }

  v16 = *(v4 + 8);
  v17 = v16 - v26;
  if (__OFSUB__(v16, v26))
  {
    goto LABEL_21;
  }

  v18 = __OFSUB__(v16, v17);
  v19 = v26;
  if (v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *v4 += v17;
  *(v4 + 8) = v19;
  v20 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v4 + 120) = v20;
  if (*(v4 + 104) >= v20)
  {
    sub_2685B4BE4(v25);
    v11 = 1;
    return v11 & 1;
  }

LABEL_24:
  result = sub_268689DA4();
  __break(1u);
  return result;
}

uint64_t sub_268658DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v19 - v13;
  (*(v15 + 16))(v16, v15);
  v17 = sub_268658B48(v14, *(v3 + 40), a2, a3);
  if (v4 || (v17 & 1) == 0)
  {
    return (*(v7 + 8))(v14, a2);
  }

  (*(v7 + 16))(v11, v14, a2);
  sub_268689BA4();
  sub_268689B84();
  result = (*(v7 + 8))(v14, a2);
  *(v3 + 32) = 1;
  return result;
}

unint64_t sub_268658FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v97 = a1;
  v9 = *(a4 + 8);
  v100 = a2;
  v101 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = *(AssociatedTypeWitness - 8);
  v11 = *(v105 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v98 = a3;
  v99 = v86 - v13;
  v102 = *(a5 + 8);
  v14 = swift_getAssociatedTypeWitness();
  v106 = sub_268689C74();
  v15 = *(v106 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v106, v17);
  v95 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v96 = v86 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = v86 - v24;
  v107 = AssociatedTypeWitness;
  v26 = sub_268689C74();
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26, v28);
  result = MEMORY[0x28223BE20](v29, v30);
  v35 = v86 - v32;
  if (*(v5 + 33) != 2)
  {
    return result;
  }

  v36 = v5;
  v93 = v33;
  v94 = v34;
  v103 = result;
  (*(v105 + 56))(v86 - v32, 1, 1, v107);
  v37 = *(v14 - 8);
  v38 = *(v37 + 56);
  v38(v25, 1, 1, v14);
  v104 = v15;
  v39 = v125;
  result = sub_2685B3B10();
  v40 = v104;
  v125 = v39;
  if (v39)
  {
LABEL_6:
    (*(v40 + 8))(v25, v106);
    return (*(v94 + 8))(v35, v103);
  }

  v89 = v37 + 56;
  v90 = v37;
  v88 = v38;
  v92 = v35;
  v41 = v36[1];
  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v42 = v41 >= result;
  v43 = v41 - result;
  if (!v42)
  {
    sub_26861C77C();
    v44 = swift_allocError();
    *v45 = 1;
    v125 = v44;
    swift_willThrow();
    v35 = v92;
    goto LABEL_6;
  }

  v46 = *v36;
  *v36 += result;
  v36[1] = v43;
  v91 = result;
  v87 = v36;
  sub_2685B42A0(v36, v109);
  v47 = v110[7];
  v48 = v111;
  sub_2685B433C(v110, v108, &qword_28028CD70, &unk_268690670);
  v117 = 1;
  memset(v118, 0, sizeof(v118));
  v119 = 1;
  v123 = xmmword_26868BD70;
  v124 = xmmword_26868BD70;
  v113 = v46;
  v114 = v91;
  v115 = v46;
  v116 = 0;
  sub_2685B4224(v108, &v118[1], &qword_28028CD70, &unk_268690670);
  v120 = v47;
  v121 = v48;
  v122 = v47;
  v49 = v112;
  result = sub_2685B4BE4(v109);
  v50 = v91;
  v122 = v49;
  v115 = v46;
  v116 = 0;
  if (!v91)
  {
    v52 = v94;
    v53 = v125;
    v54 = v14;
    v55 = v107;
LABEL_43:
    v125 = v53;
    v70 = v93;
    (*(v52 + 16))(v93, v92, v103);
    v71 = v105;
    v72 = *(v105 + 48);
    if (v72(v70, 1, v55) == 1)
    {
      (*(v101 + 24))();
      v73 = v72(v70, 1, v55) == 1;
      v74 = v104;
      v75 = v70;
      v76 = v90;
      if (!v73)
      {
        (*(v52 + 8))(v75, v103);
      }
    }

    else
    {
      (*(v71 + 32))(v99, v70, v55);
      v74 = v104;
      v76 = v90;
    }

    v77 = *(v74 + 16);
    v78 = v95;
    v79 = v25;
    v77(v95, v25, v106);
    v80 = *(v76 + 48);
    if (v80(v78, 1, v54) == 1)
    {
      v81 = v96;
      (*(v102 + 24))();
      v82 = v81;
      if (v80(v78, 1, v54) != 1)
      {
        (*(v104 + 8))(v78, v106);
      }
    }

    else
    {
      v82 = v96;
      (*(v76 + 32))(v96, v78, v54);
    }

    v88(v82, 0, 1, v54);
    swift_getAssociatedConformanceWitness();
    sub_2686898F4();
    sub_268689914();
    (*(v104 + 8))(v79, v106);
    (*(v94 + 8))(v92, v103);
    result = sub_2685B4BE4(&v113);
    *(v87 + 32) = 1;
    return result;
  }

  v51 = v101;
  v86[1] = v101 + 32;
  v86[2] = v102 + 32;
  v52 = v94;
  v53 = v125;
  v54 = v14;
  v55 = v107;
  while (1)
  {
    v56 = v46 + 1;
    v57 = *v46;
    v58 = v50 - 1;
    if ((v57 & 0x8000000000000000) != 0)
    {
      v42 = v50 >= 2;
      v59 = v103;
      if (!v42)
      {
        goto LABEL_53;
      }

      v57 &= 0x7Fu;
      v56 = v46 + 2;
      v60 = 7;
      while (1)
      {
        v57 |= (*(v56 - 1) & 0x7F) << v60;
        if ((*(v56 - 1) & 0x80) == 0)
        {
          break;
        }

        if (v58 >= 2)
        {
          ++v56;
          --v58;
          v62 = v60 > 0x38;
          v60 += 7;
          if (!v62)
          {
            continue;
          }
        }

        goto LABEL_53;
      }

      --v58;
      v113 = v56;
      v114 = v58;
      if (v57 >= 0xFFFFFFFF)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v113 = v46 + 1;
      v114 = v50 - 1;
      v59 = v103;
    }

    v61 = v57 & 7;
    v62 = v57 < 8 || v61 > 5;
    if (v62)
    {
      goto LABEL_53;
    }

    v63 = v57 >> 3;
    if (v61 == 4)
    {
      HIBYTE(v117) = 4;
      v118[0] = v63;
LABEL_53:
      sub_26861C77C();
      swift_allocError();
      *v83 = 3;
      swift_willThrow();
      (*(v104 + 8))(v25, v106);
      goto LABEL_54;
    }

    HIBYTE(v117) = v61;
    v118[0] = v63;
    if (v63 != 2)
    {
      break;
    }

    result = (*(v102 + 32))(v25, &v113, &type metadata for BinaryDecoder, &off_28792F920);
LABEL_30:
    if (v53)
    {
      (*(v104 + 8))(v25, v106);
LABEL_54:
      (*(v52 + 8))(v92, v59);
      return sub_2685B4BE4(&v113);
    }

LABEL_39:
    v46 = v113;
    v50 = v114;
    v115 = v113;
    v116 = 0;
    if (v114 <= 0)
    {
      if (!v114)
      {
        goto LABEL_43;
      }

      sub_26861C77C();
      swift_allocError();
      *v69 = 0;
      swift_willThrow();
      (*(v104 + 8))(v25, v106);
      (*(v52 + 8))(v92, v103);
      return sub_2685B4BE4(&v113);
    }
  }

  if (v63 == 1)
  {
    result = (*(v51 + 32))(v92, &v113, &type metadata for BinaryDecoder, &off_28792F920);
    goto LABEL_30;
  }

  v64 = v56 - v46;
  v65 = __OFADD__(v58, v64);
  v66 = v58 + v64;
  if (v65)
  {
    goto LABEL_62;
  }

  v113 = v46;
  v114 = v66;
  if (v66 >= 1)
  {
    v67 = sub_2685B3B10();
    if (v53)
    {
      goto LABEL_59;
    }

    v68 = v104;
    if (v67 > 0xFFFFFFFE || v67 < 8 || (v67 & 7) >= 6)
    {
      sub_26861C77C();
      swift_allocError();
      *v84 = 3;
      swift_willThrow();
      goto LABEL_60;
    }

    HIBYTE(v117) = v67 & 7;
    v118[0] = v67 >> 3;
    result = sub_26865C974(v67);
    goto LABEL_39;
  }

  sub_26861C77C();
  swift_allocError();
  *v85 = 1;
  swift_willThrow();
LABEL_59:
  v68 = v104;
LABEL_60:
  (*(v68 + 8))(v25, v106);
  (*(v52 + 8))(v92, v59);
  return sub_2685B4BE4(&v113);
}

unint64_t sub_2686599F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v114 = a5;
  v110 = a1;
  v9 = *(a4 + 8);
  v117 = a2;
  v118 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v116 = &v95 - v14;
  v15 = sub_268689C74();
  v119 = *(v15 - 8);
  v120 = v15;
  v16 = *(v119 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v111 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v112 = &v95 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v95 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v95 - v28;
  v30 = sub_268689C74();
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30, v32);
  result = MEMORY[0x28223BE20](v33, v34);
  v39 = &v95 - v36;
  v138 = v5;
  if (*(v5 + 33) != 2)
  {
    return result;
  }

  v115 = v38;
  v113 = result;
  v106 = v26;
  v107 = v37;
  v109 = v11;
  (*(v11 + 56))(&v95 - v36, 1, 1, AssociatedTypeWitness);
  v40 = *(a3 - 8);
  v41 = a3;
  v42 = *(v40 + 56);
  v108 = v41;
  v42(v29, 1, 1);
  result = sub_2685B3B10();
  v43 = v120;
  if (v6)
  {
LABEL_6:
    (*(v119 + 8))(v29, v43);
    return (*(v115 + 8))(v39, v113);
  }

  v103 = v40;
  v104 = v29;
  v99 = v42;
  v100 = v40 + 56;
  v101 = AssociatedTypeWitness;
  v105 = v39;
  v44 = v138;
  v45 = v138[1];
  if ((v45 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  v46 = v45 >= result;
  v47 = v45 - result;
  if (!v46)
  {
    v48 = v120;
    sub_26861C77C();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    v43 = v48;
    v29 = v104;
    v39 = v105;
    goto LABEL_6;
  }

  v50 = *v138;
  *v138 += result;
  *(v44 + 8) = v47;
  v102 = result;
  sub_2685B42A0(v44, v122);
  v51 = v123[7];
  v52 = v124;
  sub_2685B433C(v123, v121, &qword_28028CD70, &unk_268690670);
  v130 = 1;
  memset(v131, 0, sizeof(v131));
  v132 = 1;
  v136 = xmmword_26868BD70;
  v137 = xmmword_26868BD70;
  v126 = v50;
  v127 = v102;
  v128 = v50;
  v129 = 0;
  sub_2685B4224(v121, &v131[1], &qword_28028CD70, &unk_268690670);
  v133 = v51;
  v134 = v52;
  v135 = v51;
  v53 = v125;
  result = sub_2685B4BE4(v122);
  v54 = v102;
  v135 = v53;
  v128 = v50;
  v129 = 0;
  if (!v102)
  {
    v57 = v115;
    v58 = v109;
    goto LABEL_11;
  }

  v97 = (v119 + 16);
  v55 = v104;
  v96 = (v103 + 48);
  v56 = (v119 + 8);
  v98 = v118 + 32;
  v57 = v115;
  v58 = v109;
  while (1)
  {
    v71 = v50 + 1;
    v72 = *v50;
    v73 = v54 - 1;
    if ((v72 & 0x8000000000000000) != 0)
    {
      if (v54 < 2)
      {
        goto LABEL_50;
      }

      v72 &= 0x7Fu;
      v71 = v50 + 2;
      v74 = 7;
      while (1)
      {
        v72 |= (*(v71 - 1) & 0x7F) << v74;
        if ((*(v71 - 1) & 0x80) == 0)
        {
          break;
        }

        if (v73 >= 2)
        {
          ++v71;
          --v73;
          v76 = v74 > 0x38;
          v74 += 7;
          if (!v76)
          {
            continue;
          }
        }

        goto LABEL_50;
      }

      --v73;
      v126 = v71;
      v127 = v73;
      if (v72 >= 0xFFFFFFFF)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v126 = v50 + 1;
      v127 = v54 - 1;
    }

    v75 = v72 & 7;
    v76 = v72 < 8 || v75 > 5;
    if (v76)
    {
      goto LABEL_50;
    }

    v77 = v72 >> 3;
    if (v75 == 4)
    {
      HIBYTE(v130) = 4;
      v131[0] = v77;
LABEL_50:
      sub_26861C77C();
      swift_allocError();
      *v91 = 3;
LABEL_51:
      swift_willThrow();
      (*v56)(v55, v120);
      (*(v57 + 8))(v105, v113);
      return sub_2685B4BE4(&v126);
    }

    HIBYTE(v130) = v75;
    v131[0] = v77;
    if (v77 == 2)
    {
      v78 = v58;
      v79 = v56;
      v80 = v108;
      sub_26865784C(v55, v108, v114);
      v81 = v106;
      v82 = v55;
      v83 = v120;
      (*v97)(v106, v82, v120);
      v84 = (*v96)(v81, 1, v80);
      v56 = v79;
      v85 = *v79;
      result = (v85)(v81, v83);
      if (v84 == 1)
      {
        if (!v75)
        {
          v85(v104, v120);
          (*(v115 + 8))(v105, v113);
          return sub_2685B4BE4(&v126);
        }

        v58 = v78;
        v55 = v104;
        v57 = v115;
      }

      else
      {
        v55 = v104;
        v57 = v115;
        v58 = v78;
      }

      goto LABEL_21;
    }

    if (v77 != 1)
    {
      break;
    }

    result = (*(v118 + 32))(v105, &v126, &type metadata for BinaryDecoder, &off_28792F920);
LABEL_21:
    v50 = v126;
    v54 = v127;
    v128 = v126;
    v129 = 0;
    if (v127 <= 0)
    {
      if (v127)
      {
        sub_26861C77C();
        swift_allocError();
        *v92 = 0;
        goto LABEL_51;
      }

LABEL_11:
      v59 = v57;
      v60 = *(v57 + 16);
      v61 = v107;
      v60(v107, v105, v113);
      v62 = *(v58 + 48);
      v63 = v101;
      if (v62(v61, 1, v101) == 1)
      {
        (*(v118 + 24))();
        v64 = v62(v61, 1, v63);
        v65 = v111;
        v66 = v112;
        if (v64 != 1)
        {
          (*(v59 + 8))(v61, v113);
        }
      }

      else
      {
        (*(v58 + 32))(v116, v61, v63);
        v65 = v111;
        v66 = v112;
      }

      v67 = v104;
      (*(v119 + 16))(v65);
      v68 = v103;
      v69 = *(v103 + 48);
      v70 = v108;
      if (v69(v65, 1, v108) == 1)
      {
        (*(v114 + 24))(v70);
        if (v69(v65, 1, v70) != 1)
        {
          (*(v119 + 8))(v65, v120);
        }
      }

      else
      {
        (*(v68 + 32))(v66, v65, v70);
      }

      (v99)(v66, 0, 1, v70);
      swift_getAssociatedConformanceWitness();
      sub_2686898F4();
      sub_268689914();
      (*(v119 + 8))(v67, v120);
      (*(v115 + 8))(v105, v113);
      result = sub_2685B4BE4(&v126);
      *(v138 + 32) = 1;
      return result;
    }
  }

  v86 = v71 - v50;
  v87 = __OFADD__(v73, v86);
  v88 = v73 + v86;
  if (v87)
  {
    goto LABEL_60;
  }

  v126 = v50;
  v127 = v88;
  if (v88 >= 1)
  {
    v89 = sub_2685B3B10();
    v90 = v120;
    if (v89 > 0xFFFFFFFE || v89 < 8 || (v89 & 7) >= 6)
    {
      sub_26861C77C();
      swift_allocError();
      *v93 = 3;
      swift_willThrow();
      goto LABEL_56;
    }

    HIBYTE(v130) = v89 & 7;
    v131[0] = v89 >> 3;
    result = sub_26865C974(v89);
    goto LABEL_21;
  }

  sub_26861C77C();
  swift_allocError();
  *v94 = 1;
  swift_willThrow();
  v90 = v120;
LABEL_56:
  (*v56)(v55, v90);
  (*(v57 + 8))(v105, v113);
  return sub_2685B4BE4(&v126);
}

unint64_t sub_26865A504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v96 = a1;
  v97 = a5;
  v101 = *(a4 + 8);
  v99 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v98 = &v83 - v12;
  v104 = sub_268689C74();
  v13 = *(v104 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v104, v15);
  v94 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v95 = &v83 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v83 - v22;
  v24 = sub_268689C74();
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  result = MEMORY[0x28223BE20](v27, v28);
  v33 = &v83 - v30;
  v122 = v5;
  if (*(v5 + 33) != 2)
  {
    return result;
  }

  v93 = v32;
  v100 = result;
  v90 = v31;
  v91 = v9;
  (*(v9 + 56))(&v83 - v30, 1, 1, AssociatedTypeWitness);
  v34 = *(a3 - 8);
  v35 = a3;
  v36 = *(v34 + 56);
  v92 = v35;
  v36(v23, 1, 1);
  v103 = v13;
  result = sub_2685B3B10();
  v37 = v103;
  v102 = v6;
  if (v6)
  {
LABEL_6:
    (*(v37 + 8))(v23, v104);
    return (*(v93 + 8))(v33, v100);
  }

  v84 = v34;
  v85 = v36;
  v86 = v34 + 56;
  v88 = AssociatedTypeWitness;
  v89 = v33;
  v38 = v92;
  v39 = v122;
  v40 = v122[1];
  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v41 = v40 >= result;
  v42 = v40 - result;
  if (!v41)
  {
    sub_26861C77C();
    v43 = swift_allocError();
    *v44 = 1;
    v102 = v43;
    swift_willThrow();
    v33 = v89;
    goto LABEL_6;
  }

  v45 = *v122;
  *v122 += result;
  *(v39 + 8) = v42;
  v87 = result;
  sub_2685B42A0(v39, v106);
  v46 = v107[7];
  v47 = v108;
  sub_2685B433C(v107, v105, &qword_28028CD70, &unk_268690670);
  v114 = 1;
  memset(v115, 0, sizeof(v115));
  v116 = 1;
  v120 = xmmword_26868BD70;
  v121 = xmmword_26868BD70;
  v110 = v45;
  v111 = v87;
  v112 = v45;
  v113 = 0;
  sub_2685B4224(v105, &v115[1], &qword_28028CD70, &unk_268690670);
  v117 = v46;
  v118 = v47;
  v119 = v46;
  v48 = v109;
  result = sub_2685B4BE4(v106);
  v49 = v87;
  v119 = v48;
  v112 = v45;
  v113 = 0;
  v50 = v23;
  if (!v87)
  {
    v52 = v93;
    v53 = v38;
    v51 = v102;
    v54 = v88;
    goto LABEL_41;
  }

  v51 = v102;
  v52 = v93;
  v53 = v38;
  v54 = v88;
  while (1)
  {
    v55 = v45 + 1;
    v56 = *v45;
    v57 = v49 - 1;
    if ((v56 & 0x8000000000000000) != 0)
    {
      v41 = v49 >= 2;
      v58 = v100;
      if (!v41)
      {
        goto LABEL_51;
      }

      v56 &= 0x7Fu;
      v55 = v45 + 2;
      v59 = 7;
      while (1)
      {
        v56 |= (*(v55 - 1) & 0x7F) << v59;
        if ((*(v55 - 1) & 0x80) == 0)
        {
          break;
        }

        if (v57 >= 2)
        {
          ++v55;
          --v57;
          v61 = v59 > 0x38;
          v59 += 7;
          if (!v61)
          {
            continue;
          }
        }

        goto LABEL_51;
      }

      --v57;
      v110 = v55;
      v111 = v57;
      if (v56 >= 0xFFFFFFFF)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v110 = v45 + 1;
      v111 = v49 - 1;
      v58 = v100;
    }

    v60 = v56 & 7;
    v61 = v56 < 8 || v60 > 5;
    if (v61)
    {
      goto LABEL_51;
    }

    v62 = v56 >> 3;
    if (v60 == 4)
    {
      HIBYTE(v114) = 4;
      v115[0] = v62;
LABEL_51:
      sub_26861C77C();
      swift_allocError();
      *v79 = 3;
      swift_willThrow();
      (*(v103 + 8))(v23, v104);
      goto LABEL_52;
    }

    HIBYTE(v114) = v60;
    v115[0] = v62;
    if (v62 != 2)
    {
      break;
    }

    result = sub_26865850C(v23, v53, v97);
    if (v51)
    {
      goto LABEL_56;
    }

LABEL_11:
    v45 = v110;
    v49 = v111;
    v112 = v110;
    v113 = 0;
    if (v111 <= 0)
    {
      if (v111)
      {
        sub_26861C77C();
        swift_allocError();
        *v80 = 0;
        swift_willThrow();
        (*(v103 + 8))(v23, v104);
        (*(v52 + 8))(v89, v100);
        return sub_2685B4BE4(&v110);
      }

LABEL_41:
      v102 = v51;
      v68 = v90;
      (*(v52 + 16))(v90, v89, v100);
      v69 = v91;
      v70 = *(v91 + 48);
      if (v70(v68, 1, v54) == 1)
      {
        (*(v101 + 24))();
        v71 = v70(v68, 1, v54);
        v72 = v103;
        if (v71 != 1)
        {
          (*(v52 + 8))(v68, v100);
        }
      }

      else
      {
        (*(v69 + 32))(v98, v68, v54);
        v72 = v103;
      }

      v73 = *(v72 + 16);
      v74 = v94;
      v73(v94, v50, v104);
      v75 = v84;
      v76 = *(v84 + 48);
      if (v76(v74, 1, v53) == 1)
      {
        v77 = v95;
        (*(v97 + 16))(v53);
        v78 = v77;
        if (v76(v74, 1, v53) != 1)
        {
          (*(v103 + 8))(v74, v104);
        }
      }

      else
      {
        v78 = v95;
        (*(v75 + 32))(v95, v74, v53);
      }

      (v85)(v78, 0, 1, v53);
      swift_getAssociatedConformanceWitness();
      sub_2686898F4();
      sub_268689914();
      (*(v103 + 8))(v50, v104);
      (*(v93 + 8))(v89, v100);
      result = sub_2685B4BE4(&v110);
      *(v122 + 32) = 1;
      return result;
    }
  }

  if (v62 == 1)
  {
    result = (*(v101 + 32))(v89, &v110, &type metadata for BinaryDecoder, &off_28792F920);
    if (v51)
    {
LABEL_56:
      (*(v103 + 8))(v23, v104);
LABEL_52:
      (*(v52 + 8))(v89, v58);
      return sub_2685B4BE4(&v110);
    }

    goto LABEL_11;
  }

  v63 = v55 - v45;
  v64 = __OFADD__(v57, v63);
  v65 = v57 + v63;
  if (v64)
  {
    goto LABEL_62;
  }

  v110 = v45;
  v111 = v65;
  if (v65 >= 1)
  {
    v66 = sub_2685B3B10();
    if (v51)
    {
      goto LABEL_59;
    }

    v67 = v103;
    if (v66 > 0xFFFFFFFE || v66 < 8 || (v66 & 7) >= 6)
    {
      sub_26861C77C();
      swift_allocError();
      *v81 = 3;
      swift_willThrow();
      goto LABEL_60;
    }

    HIBYTE(v114) = v66 & 7;
    v115[0] = v66 >> 3;
    result = sub_26865C974(v66);
    goto LABEL_11;
  }

  sub_26861C77C();
  swift_allocError();
  *v82 = 1;
  swift_willThrow();
LABEL_59:
  v67 = v103;
LABEL_60:
  (*(v67 + 8))(v23, v104);
  (*(v52 + 8))(v89, v58);
  return sub_2685B4BE4(&v110);
}

uint64_t sub_26865AF0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[9];
  if (!v6)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    return sub_2685B2E64(&v34, &qword_28028D400, qword_268690748);
  }

  v30 = a1;
  v10 = v4[10];
  v11 = __swift_project_boxed_opaque_existential_1(v4 + 6, v6);
  v40 = v5;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15);
  (*(v10 + 8))(&v34, a2, a3, a4, v6, v10);
  (*(v12 + 8))(v15, v6);
  v16 = v40;
  if (!*(&v35 + 1))
  {
    return sub_2685B2E64(&v34, &qword_28028D400, qword_268690748);
  }

  sub_2685B17CC(&v34, v37);
  v17 = *v30;
  if (*(*v30 + 16) && (v18 = sub_2685B351C(a4), (v19 & 1) != 0))
  {
    sub_2685B1724(*(v17 + 56) + 40 * v18, &v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  sub_2685B433C(&v34, v32, &qword_28028C068, &unk_26868A6A0);
  v21 = v33;
  result = sub_2685B2E64(v32, &qword_28028C068, &unk_26868A6A0);
  if (!v21)
  {
    v25 = v38;
    v26 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v24 = v29;
    (*(v26 + 32))(v32, v29, &type metadata for BinaryDecoder, &off_28792F920, v25, v26);
    if (!v16)
    {
      sub_2685B4224(v32, &v34, &qword_28028C068, &unk_26868A6A0);
      goto LABEL_15;
    }

LABEL_19:
    sub_2685B2E64(&v34, &qword_28028C068, &unk_26868A6A0);
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v22 = *(&v35 + 1);
  if (*(&v35 + 1))
  {
    v23 = v36;
    __swift_mutable_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    v24 = v29;
    (*(v23 + 40))(v29, &type metadata for BinaryDecoder, &off_28792F920, v22, v23);
    if (!v16)
    {
LABEL_15:
      if (*(v24 + 32) == 1)
      {
        sub_2685B433C(&v34, v32, &qword_28028C068, &unk_26868A6A0);
        v27 = v33;
        sub_2685B2E64(v32, &qword_28028C068, &unk_26868A6A0);
        if (v27)
        {
          sub_2685B433C(&v34, v32, &qword_28028C068, &unk_26868A6A0);
          sub_2685B433C(v32, v31, &qword_28028C068, &unk_26868A6A0);
          sub_2685C2E1C(v31, a4);
          sub_2685B2E64(v32, &qword_28028C068, &unk_26868A6A0);
        }

        else
        {
          sub_26861C77C();
          swift_allocError();
          *v28 = 5;
          swift_willThrow();
        }
      }

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_26865B300(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2685B36C0();
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (v8 == 1 && *(v3 + 33) == 3)
      {
        v10 = *(v3 + 120);
        v11 = v10 - 1;
        if (__OFSUB__(v10, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          sub_268689DA4();
          __break(1u);
          return;
        }

        *(v3 + 120) = v11;
        if (v11 < 0)
        {
          sub_26861C77C();
          swift_allocError();
          *v18 = 6;
          swift_willThrow();
          return;
        }

        sub_2685B42A0(v3, v20);
        v23 = 1;
        v24 = 0;
        v22 = 1;
        v12 = sub_26865B510(a1, a2, a3);
        if (v12)
        {
          if (v12 != 1)
          {
            sub_26861C77C();
            swift_allocError();
            *v19 = 3;
            swift_willThrow();
            sub_2685B4BE4(v20);
            return;
          }
        }

        else
        {
          v13 = *(v3 + 8);
          v14 = v13 - v21;
          if (__OFSUB__(v13, v21))
          {
            goto LABEL_22;
          }

          v15 = __OFSUB__(v13, v14);
          v16 = v21;
          if (v15)
          {
            goto LABEL_23;
          }

          *v3 += v14;
          *(v3 + 8) = v16;
          *(v3 + 32) = 1;
        }

        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_21;
        }

        *(v3 + 120) = v17;
        if (*(v3 + 104) < v17)
        {
          goto LABEL_24;
        }

        sub_2685B4BE4(v20);
      }

      sub_2685B36C0();
    }
  }
}

uint64_t sub_26865B510(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v178 = *MEMORY[0x277D85DE8];
  v177 = 0;
  memset(v176, 0, sizeof(v176));
  sub_2685B36C0();
  if (v4)
  {
    sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
    result = sub_2685B98FC(0, 0xF000000000000000);
    goto LABEL_3;
  }

  v142 = a2;
  v143 = a3;
  v13 = 0;
  v14 = 0xF000000000000000;
  v141 = xmmword_26868BD70;
  v144 = a1;
LABEL_5:
  v145 = v14;
  v146 = v13;
  while (1)
  {
    if (v10)
    {
      sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
      sub_2685B98FC(v13, v14);
      result = 0;
      goto LABEL_3;
    }

    if (v9 != 3)
    {
      if (v9 != 2)
      {
        v15 = v5[3];
        if (v15)
        {
          *v5 = v15;
LABEL_7:
          *(v5 + 32) = 1;
          goto LABEL_8;
        }

        v17 = v5[1];
        v16 = v5[2];
        v18 = (*v5 - v16);
        v19 = __OFADD__(v17, v18);
        v20 = &v18[v17];
        if (v19)
        {
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
        }

        *v5 = v16;
        v5[1] = v20;
        if (v20 < 1)
        {
          goto LABEL_159;
        }

        goto LABEL_35;
      }

      if (*(v5 + 33))
      {
        goto LABEL_163;
      }

      v43 = v5[1];
      v44 = v43 - 1;
      if (v43 < 1)
      {
        v62 = 1;
LABEL_171:
        sub_26861C77C();
        swift_allocError();
        *v133 = v62;
        goto LABEL_161;
      }

      v45 = **v5;
      if (v45 < 0)
      {
        if (v43 == 1)
        {
          v62 = 3;
          goto LABEL_171;
        }

        v45 &= 0x7Fu;
        v60 = (*v5 + 2);
        v61 = 7;
        while (1)
        {
          v45 |= (*(v60 - 1) & 0x7F) << v61;
          if ((*(v60 - 1) & 0x80) == 0)
          {
            break;
          }

          v62 = 3;
          if (v44 >= 2)
          {
            ++v60;
            --v44;
            v63 = v61 > 0x38;
            v61 += 7;
            if (!v63)
            {
              continue;
            }
          }

          goto LABEL_171;
        }

        --v44;
        *v5 = v60;
      }

      else
      {
        ++*v5;
      }

      v5[1] = v44;
      *(v5 + 32) = 1;
      if (!v45)
      {
LABEL_163:
        sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
        sub_2685B98FC(v13, v14);
        result = 2;
        goto LABEL_3;
      }

      v64 = v5[9];
      if (!v64)
      {
        sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
        sub_2685B98FC(v146, v14);
        v160 = 0;
        v158 = 0u;
        v159 = 0u;
LABEL_167:
        sub_2685B2E64(&v158, &qword_28028D400, qword_268690748);
        result = 1;
        goto LABEL_3;
      }

      v139 = v5[10];
      v65 = __swift_project_boxed_opaque_existential_1(v5 + 6, v64);
      v140 = &v137;
      v66 = *(v64 - 8);
      v67 = *(v66 + 64);
      MEMORY[0x28223BE20](v65, v65);
      v69 = &v137 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v66 + 16))(v69);
      (*(v139 + 1))(&v158, v142, v143, v45, v64);
      (*(v66 + 8))(v69, v64);
      sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
      if (!*(&v159 + 1))
      {
        sub_2685B98FC(v146, v145);
        goto LABEL_167;
      }

      sub_2685B17CC(&v158, v173);
      sub_2685B1724(v173, v176);
      v14 = v145;
      v13 = v146;
      if (v145 >> 60 == 15)
      {
        a1 = v144;
LABEL_124:
        __swift_destroy_boxed_opaque_existential_1(v173);
LABEL_152:
        sub_2685B36C0();
        goto LABEL_5;
      }

      v70 = v145 >> 62;
      a1 = v144;
      if ((v145 >> 62) > 1)
      {
        if (v70 != 2)
        {
LABEL_174:
          v131 = v146;
          v132 = v145;
          goto LABEL_175;
        }

        v79 = *(v146 + 16);
        v80 = *(v146 + 24);
        v81 = sub_268689764();
        if (v81)
        {
          v82 = sub_268689794();
          if (__OFSUB__(v79, v82))
          {
            goto LABEL_183;
          }

          v81 += v79 - v82;
        }

        v19 = __OFSUB__(v80, v79);
        v83 = v80 - v79;
        if (v19)
        {
          goto LABEL_181;
        }

        v84 = sub_268689784();
        if (v84 >= v83)
        {
          v85 = v83;
        }

        else
        {
          v85 = v84;
        }

        if (!v81 || v85 < 1)
        {
          goto LABEL_168;
        }

        sub_2685B42A0(v5, &v151);
        v86 = v155;
        v87 = v156;
        sub_2685B433C(v154, v171, &qword_28028CD70, &unk_268690670);
        LOWORD(v160) = 1;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0;
        v165 = 1;
        v169 = v141;
        v170 = v141;
        *&v158 = v81;
        *(&v158 + 1) = v85;
        v159 = v81;
        sub_2685B4224(v171, &v161 + 8, &qword_28028CD70, &unk_268690670);
        v166 = v86;
        v167 = v87;
        v168 = v86;
        v88 = v157;
        sub_2685B4BE4(&v151);
        v168 = v88;
        LOWORD(v160) = 512;
        a1 = v144;
        v89 = *v144;
        if (*(*v144 + 16))
        {
          v90 = sub_2685B351C(2);
          if (v91)
          {
            sub_2685B1724(*(v89 + 56) + 40 * v90, &v151);
          }

          else
          {
            v153 = 0;
            v151 = 0u;
            v152 = 0u;
          }
        }

        else
        {
          v153 = 0;
          v151 = 0u;
          v152 = 0u;
        }

        sub_2685B433C(&v151, v171, &qword_28028C068, &unk_26868A6A0);
        v107 = v172;
        result = sub_2685B2E64(v171, &qword_28028C068, &unk_26868A6A0);
        if (v107)
        {
          v105 = *(&v152 + 1);
          if (!*(&v152 + 1))
          {
            goto LABEL_189;
          }

          goto LABEL_119;
        }
      }

      else if (v70)
      {
        v92 = v146;
        v93 = (v146 >> 32) - v146;
        if (v146 >> 32 < v146)
        {
          goto LABEL_180;
        }

        v94 = sub_268689764();
        if (v94)
        {
          v95 = sub_268689794();
          if (__OFSUB__(v92, v95))
          {
            goto LABEL_184;
          }

          v94 += v92 - v95;
        }

        v96 = sub_268689784();
        if (v96 >= v93)
        {
          v97 = v93;
        }

        else
        {
          v97 = v96;
        }

        if (!v94 || v97 < 1)
        {
LABEL_168:
          v132 = v145;
          v131 = v146;
LABEL_175:
          sub_2685B98FC(v131, v132);
          sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
          v128 = v173;
          goto LABEL_156;
        }

        sub_2685B42A0(v5, &v151);
        v98 = v155;
        v99 = v156;
        sub_2685B433C(v154, v171, &qword_28028CD70, &unk_268690670);
        LOWORD(v160) = 1;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0;
        v165 = 1;
        v169 = v141;
        v170 = v141;
        *&v158 = v94;
        *(&v158 + 1) = v97;
        v159 = v94;
        sub_2685B4224(v171, &v161 + 8, &qword_28028CD70, &unk_268690670);
        v166 = v98;
        v167 = v99;
        v168 = v98;
        v100 = v157;
        sub_2685B4BE4(&v151);
        v168 = v100;
        LOWORD(v160) = 512;
        a1 = v144;
        v101 = *v144;
        if (*(*v144 + 16))
        {
          v102 = sub_2685B351C(2);
          if (v103)
          {
            sub_2685B1724(*(v101 + 56) + 40 * v102, &v151);
          }

          else
          {
            v153 = 0;
            v151 = 0u;
            v152 = 0u;
          }
        }

        else
        {
          v153 = 0;
          v151 = 0u;
          v152 = 0u;
        }

        sub_2685B433C(&v151, v171, &qword_28028C068, &unk_26868A6A0);
        v106 = v172;
        result = sub_2685B2E64(v171, &qword_28028C068, &unk_26868A6A0);
        if (v106)
        {
          v105 = *(&v152 + 1);
          if (!*(&v152 + 1))
          {
            goto LABEL_190;
          }

          goto LABEL_119;
        }
      }

      else
      {
        v147 = v146;
        v148 = v145;
        v149 = WORD2(v145);
        v71 = BYTE6(v145);
        if (!BYTE6(v145))
        {
          goto LABEL_174;
        }

        sub_2685B42A0(v5, &v151);
        v72 = v155;
        LODWORD(v140) = v156;
        sub_2685B433C(v154, v171, &qword_28028CD70, &unk_268690670);
        LOWORD(v160) = 1;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0;
        v165 = 1;
        v169 = v141;
        v170 = v141;
        *&v158 = &v147;
        *(&v158 + 1) = v71;
        *&v159 = &v147;
        *(&v159 + 1) = 0;
        sub_2685B4224(v171, &v161 + 8, &qword_28028CD70, &unk_268690670);
        v166 = v72;
        v167 = v140;
        v168 = v72;
        v73 = v157;
        sub_2685B4BE4(&v151);
        v168 = v73;
        LOWORD(v160) = 512;
        v74 = *a1;
        if (*(*a1 + 16))
        {
          v75 = sub_2685B351C(2);
          if (v76)
          {
            sub_2685B1724(*(v74 + 56) + 40 * v75, &v151);
          }

          else
          {
            v153 = 0;
            v151 = 0u;
            v152 = 0u;
          }
        }

        else
        {
          v153 = 0;
          v151 = 0u;
          v152 = 0u;
        }

        sub_2685B433C(&v151, v171, &qword_28028C068, &unk_26868A6A0);
        v104 = v172;
        result = sub_2685B2E64(v171, &qword_28028C068, &unk_26868A6A0);
        if (v104)
        {
          v105 = *(&v152 + 1);
          if (!*(&v152 + 1))
          {
            goto LABEL_188;
          }

LABEL_119:
          v108 = v153;
          __swift_mutable_project_boxed_opaque_existential_1(&v151, v105);
          (*(v108 + 40))(&v158, &type metadata for BinaryDecoder, &off_28792F920, v105, v108);
LABEL_121:
          v112 = v145;
          v111 = v146;
          if (v160 != 1)
          {
            sub_2685B2E64(&v151, &qword_28028C068, &unk_26868A6A0);
            sub_2685B4BE4(&v158);
            v131 = v111;
            v132 = v112;
            goto LABEL_175;
          }

          sub_2685B433C(&v151, v171, &qword_28028C068, &unk_26868A6A0);
          v113 = v172;
          sub_2685B2E64(v171, &qword_28028C068, &unk_26868A6A0);
          if (!v113)
          {
            sub_26861C77C();
            swift_allocError();
            *v135 = 5;
            swift_willThrow();
            v136 = v146;
            sub_2685B2E64(&v151, &qword_28028C068, &unk_26868A6A0);
            sub_2685B4BE4(&v158);
            sub_2685B98FC(v136, v112);
            sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
            v130 = v173;
            goto LABEL_158;
          }

          sub_2685B433C(&v151, v171, &qword_28028C068, &unk_26868A6A0);
          sub_2685B433C(v171, v150, &qword_28028C068, &unk_26868A6A0);
          sub_2685C2E1C(v150, 2);
          sub_2685B2E64(v171, &qword_28028C068, &unk_26868A6A0);
          sub_2685B2E64(&v151, &qword_28028C068, &unk_26868A6A0);
          sub_2685B4BE4(&v158);
          sub_2685B98FC(v146, v112);
          v13 = 0;
          v14 = 0xF000000000000000;
          goto LABEL_124;
        }
      }

      v109 = v174;
      v110 = v175;
      __swift_project_boxed_opaque_existential_1(v173, v174);
      (*(v110 + 32))(v171, &v158, &type metadata for BinaryDecoder, &off_28792F920, v109, v110);
      sub_2685B4224(v171, &v151, &qword_28028C068, &unk_26868A6A0);
      goto LABEL_121;
    }

    sub_2685B433C(v176, &v151, &qword_28028D400, qword_268690748);
    if (!*(&v152 + 1))
    {
      break;
    }

    sub_2685B17CC(&v151, &v158);
    v21 = *(&v159 + 1);
    v22 = v160;
    __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
    v23 = (*(v22 + 8))(v21, v22);
    v24 = v23;
    v25 = *a1;
    if (*(*a1 + 16))
    {
      v26 = sub_2685B351C(v23);
      if (v27)
      {
        sub_2685B1724(*(v25 + 56) + 40 * v26, &v151);
      }

      else
      {
        v153 = 0;
        v151 = 0u;
        v152 = 0u;
      }
    }

    else
    {
      v153 = 0;
      v151 = 0u;
      v152 = 0u;
    }

    sub_2685B433C(&v151, v173, &qword_28028C068, &unk_26868A6A0);
    v30 = v174;
    result = sub_2685B2E64(v173, &qword_28028C068, &unk_26868A6A0);
    if (v30)
    {
      v31 = *(&v152 + 1);
      if (!*(&v152 + 1))
      {
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        return result;
      }

      v32 = v153;
      __swift_mutable_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
      (*(v32 + 40))(v5, &type metadata for BinaryDecoder, &off_28792F920, v31, v32);
    }

    else
    {
      v33 = *(&v159 + 1);
      v34 = v160;
      __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
      (*(v34 + 32))(v173, v5, &type metadata for BinaryDecoder, &off_28792F920, v33, v34);
      sub_2685B4224(v173, &v151, &qword_28028C068, &unk_26868A6A0);
    }

    v35 = v144;
    v36 = v145;
    if (*(v5 + 32) != 1)
    {
      sub_2685B2E64(&v151, &qword_28028C068, &unk_26868A6A0);
      sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
      sub_2685B98FC(v146, v36);
      v128 = &v158;
LABEL_156:
      __swift_destroy_boxed_opaque_existential_1(v128);
      result = 2;
      goto LABEL_3;
    }

    sub_2685B433C(&v151, v173, &qword_28028C068, &unk_26868A6A0);
    v37 = v174;
    sub_2685B2E64(v173, &qword_28028C068, &unk_26868A6A0);
    if (!v37)
    {
      sub_26861C77C();
      swift_allocError();
      *v129 = 5;
      swift_willThrow();
      sub_2685B98FC(v146, v36);
      sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
      sub_2685B2E64(&v151, &qword_28028C068, &unk_26868A6A0);
      v130 = &v158;
LABEL_158:
      result = __swift_destroy_boxed_opaque_existential_1(v130);
      goto LABEL_3;
    }

    sub_2685B433C(&v151, v173, &qword_28028C068, &unk_26868A6A0);
    sub_2685B433C(v173, v171, &qword_28028C068, &unk_26868A6A0);
    sub_2685C2E1C(v171, v24);
    sub_2685B2E64(v173, &qword_28028C068, &unk_26868A6A0);
    a1 = v35;
    sub_2685B2E64(&v151, &qword_28028C068, &unk_26868A6A0);
    __swift_destroy_boxed_opaque_existential_1(&v158);
    v13 = v146;
    v14 = v36;
LABEL_8:
    sub_2685B36C0();
  }

  sub_2685B2E64(&v151, &qword_28028D400, qword_268690748);
  v28 = *(v5 + 33);
  if (v14 >> 60 == 15)
  {
    if (v28 != 2)
    {
      sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
      result = 2;
      goto LABEL_3;
    }

    v46 = sub_2685B3B10();
    v47 = v5[1];
    if ((v47 & 0x8000000000000000) != 0)
    {
      goto LABEL_178;
    }

    v48 = v46;
    v49 = v47 >= v46;
    v50 = (v47 - v46);
    if (!v49)
    {
      sub_26861C77C();
      swift_allocError();
      *v134 = 1;
      swift_willThrow();
      goto LABEL_162;
    }

    v51 = *v5;
    *v5 += v46;
    v5[1] = v50;
    if (!v46)
    {
      v77 = 0;
      v57 = 0;
      *(v5 + 32) = 1;
      v58 = 0xC000000000000000;
      v78 = 1;
LABEL_141:
      v117 = v78 + v77;
      if (__OFADD__(v78, v77))
      {
        goto LABEL_179;
      }

      if (v117)
      {
        if (v117 < 15)
        {
          if (v117 < 0)
          {
            goto LABEL_182;
          }

          v124 = 0;
          v125 = v138 & 0xF00000000000000 | ((v78 + v77) << 48);
          v138 = v125;
        }

        else
        {
          v118 = v58;
          v119 = v57;
          v120 = sub_2686897B4();
          v121 = *(v120 + 48);
          v122 = *(v120 + 52);
          swift_allocObject();
          v123 = sub_268689774();
          if (v117 >= 0x7FFFFFFF)
          {
            sub_268689804();
            v124 = swift_allocObject();
            *(v124 + 16) = 0;
            *(v124 + 24) = v117;
            v125 = v123 | 0x8000000000000000;
          }

          else
          {
            v124 = v117 << 32;
            v125 = v123 | 0x4000000000000000;
          }

          v57 = v119;
          v58 = v118;
          a1 = v144;
        }
      }

      else
      {
        v124 = 0;
        v125 = 0xC000000000000000;
      }

      *&v158 = v124;
      *(&v158 + 1) = v125;
      sub_26865D790(&v158, v57, v58);
      v14 = *(&v158 + 1);
      v13 = v158;
      goto LABEL_152;
    }

    if (v46 <= 0xE)
    {
      *(&v158 + 6) = 0;
      *&v158 = 0;
      BYTE14(v158) = v46;
      memcpy(&v158, v51, v46);
      v57 = v158;
      v48 = BYTE14(v158);
      v59 = v137 & 0xF00000000000000 | DWORD2(v158) | (WORD6(v158) << 32) | (BYTE14(v158) << 48);
      v58 = v59;
    }

    else
    {
      v52 = sub_2686897B4();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      v55 = sub_268689754();
      v56 = v55;
      if (v48 >= 0x7FFFFFFF)
      {
        sub_268689804();
        v57 = swift_allocObject();
        *(v57 + 16) = 0;
        *(v57 + 24) = v48;
        v58 = v56 | 0x8000000000000000;
        *(v5 + 32) = 1;
        if (!(v48 >> 35))
        {
          v78 = 4;
          goto LABEL_130;
        }

        if (!(v48 >> 49))
        {
          v78 = 6;
          if (!(v48 >> 42))
          {
LABEL_131:
            v114 = v58 >> 62;
            if ((v58 >> 62) > 1)
            {
              if (v114 == 2)
              {
                v116 = *(v57 + 16);
                v115 = *(v57 + 24);
                v19 = __OFSUB__(v115, v116);
                v77 = v115 - v116;
                if (v19)
                {
                  goto LABEL_185;
                }
              }

              else
              {
                v77 = 0;
              }
            }

            else if (v114)
            {
              LODWORD(v77) = HIDWORD(v57) - v57;
              if (__OFSUB__(HIDWORD(v57), v57))
              {
                goto LABEL_186;
              }

              v77 = v77;
            }

            else
            {
              v77 = BYTE6(v58);
            }

            goto LABEL_141;
          }

LABEL_130:
          ++v78;
          goto LABEL_131;
        }

        v48 >>= 28;
        v78 = 8;
LABEL_129:
        if (!(v48 >> 28))
        {
          goto LABEL_131;
        }

        goto LABEL_130;
      }

      v57 = v48 << 32;
      v58 = v55 | 0x4000000000000000;
      v59 = v137;
    }

    *(v5 + 32) = 1;
    v137 = v59;
    if (v48 <= 0x7F)
    {
      v78 = 1;
      goto LABEL_131;
    }

    if (v48 < 0x200000)
    {
      v78 = 2;
      if (v48 < 0x4000)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    v78 = 4;
    goto LABEL_129;
  }

  if (v28 != 2)
  {
    goto LABEL_163;
  }

  v29 = v5[3];
  if (v29)
  {
    *v5 = v29;
    goto LABEL_7;
  }

  v39 = v5[1];
  v38 = v5[2];
  v40 = (*v5 - v38);
  v19 = __OFADD__(v39, v40);
  v41 = &v40[v39];
  if (v19)
  {
    goto LABEL_177;
  }

  *v5 = v38;
  v5[1] = v41;
  if (v41 >= 1)
  {
LABEL_35:
    v42 = sub_2685B3B10();
    if (v42 >= 0xFFFFFFFF || v42 < 8 || (v42 & 7) >= 6)
    {
      sub_26861C77C();
      swift_allocError();
      v127 = 3;
      goto LABEL_160;
    }

    *(v5 + 33) = v42 & 7;
    v5[5] = (v42 >> 3);
    sub_26865C974(v42);
    v5[3] = *v5;
    goto LABEL_7;
  }

LABEL_159:
  sub_26861C77C();
  swift_allocError();
  v127 = 1;
LABEL_160:
  *v126 = v127;
LABEL_161:
  swift_willThrow();
  sub_2685B98FC(v13, v14);
LABEL_162:
  result = sub_2685B2E64(v176, &qword_28028D400, qword_268690748);
LABEL_3:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}