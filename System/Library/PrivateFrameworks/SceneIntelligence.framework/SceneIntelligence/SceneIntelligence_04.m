SceneIntelligence::EventDateComponents __swiftcall EventDateComponents.init(year:month:day:)(Swift::Int_optional year, Swift::Int_optional month, Swift::Int_optional day)
{
  if (year.is_nil)
  {
    value = 0;
  }

  else
  {
    value = year.value;
  }

  if (month.is_nil)
  {
    v5 = 0;
  }

  else
  {
    v5 = month.value;
  }

  if (day.is_nil)
  {
    v6 = 0;
  }

  else
  {
    v6 = day.value;
  }

  *v3 = value;
  v3[1] = v5;
  v3[2] = v6;
  result.day = month.value;
  result.year = year.value;
  LOBYTE(result.month) = year.is_nil;
  return result;
}

SceneIntelligence::EventDateComponents __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventDateComponents.init(string:)(Swift::String string)
{
  v2 = v1;
  v3 = HIBYTE(string._object) & 0xF;
  if ((string._object & 0x2000000000000000) == 0)
  {
    v3 = string._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_16;
  }

  v47[0] = 45;
  v47[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](string._countAndFlagsBits);
  v44[2] = v47;
  v6 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE81448, v44, v4, v5, &v45);
  v7 = v6;
  if (v6[2] != 3)
  {
    goto LABEL_17;
  }

  v8 = v6[4];
  v9 = v6[5];
  if ((v9 ^ v8) < 0x4000)
  {
    goto LABEL_40;
  }

  v10 = v6[6];
  v11 = v6[7];
  v12 = sub_21DE81044(v6[4], v6[5], v10, v11, 10);
  if ((v13 & 0x100) != 0)
  {

    v14 = sub_21DE7F174(v8, v9, v10, v11, 10);
    v16 = v15;

    v13 = v16;
    v12 = v14;
  }

  v48 = v13;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v12;
  }

  v18 = v7[2];
  if (v18 < 2)
  {
    __break(1u);
LABEL_40:
    v17 = 0;
    v48 = 1;
    v18 = 3;
  }

  v19 = v7[8];
  v20 = v7[9];
  if ((v20 ^ v19) < 0x4000)
  {
    v34 = 0;
    v25 = 1;
    if (v18 >= 3)
    {
      goto LABEL_24;
    }

LABEL_42:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v7[10];
  v22 = v7[11];
  v23 = sub_21DE81044(v7[8], v7[9], v21, v22, 10);
  if ((v24 & 0x100) != 0)
  {

    v32 = sub_21DE7F174(v19, v20, v21, v22, 10);
    v25 = v33;

    v23 = v32;
  }

  else
  {
    v25 = v24;
  }

  if (v25)
  {
    v34 = 0;
  }

  else
  {
    v34 = v23;
  }

  if (v7[2] < 3uLL)
  {
    goto LABEL_42;
  }

LABEL_24:
  v45 = v34;
  v46 = v17;
  v35 = v2;
  v36 = v7[12];
  v37 = v7[13];
  v39 = v7[14];
  v38 = v7[15];

  if ((v37 ^ v36) < 0x4000)
  {
LABEL_17:

    goto LABEL_18;
  }

  v40 = sub_21DE81044(v36, v37, v39, v38, 10);
  if ((v41 & 0x100) != 0)
  {
    v40 = sub_21DE7F174(v36, v37, v39, v38, 10);
  }

  v42 = v40;
  v43 = v41;

  v2 = v35;
  v30 = v45;
  v29 = v46;
  if (v43)
  {
    v31 = 0;
  }

  else
  {
    v31 = v42;
  }

  if ((v48 | v25) & 1) != 0 || (v43)
  {
    goto LABEL_18;
  }

  if (qword_27CE9B2F0 != -1)
  {
    v26 = swift_once();
    if (v30 <= 0xC)
    {
      goto LABEL_34;
    }

LABEL_18:
    sub_21DE81464();
    swift_allocError();
    v26 = swift_willThrow();
    goto LABEL_46;
  }

  if (v45 > 0xC)
  {
    goto LABEL_18;
  }

LABEL_34:
  if ((v31 | 0x20) != 0x20)
  {
    v26 = sub_21DE7B318(v30);
    if ((v28 & 1) != 0 || v31 < v26 || v27 < v31)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  *v2 = v29;
  v2[1] = v30;
  v2[2] = v31;
LABEL_46:
  result.day = v28;
  result.month = v27;
  result.year = v26;
  return result;
}

__n128 sub_21DE7BDD4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v5 = *a1;
  v3 = *(a1 + 16);
  sub_21DE779B4(a1);
  result = v5;
  *a2 = v5;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t EventDateComponents.computeDate()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DEC6910();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = *(v1 + 2);
  v15 = *v1;
  v16 = v12;
  sub_21DEC68F0();
  sub_21DE73DA4(v7, &type metadata for EventDateComponents, &off_282F27888, v11);
  (*(v4 + 8))(v7, v3);
  v13 = *(v4 + 48);
  if (v13(v11, 1, v3) != 1)
  {
    return (*(v4 + 32))(a1, v11, v3);
  }

  sub_21DEC68F0();
  result = (v13)(v11, 1, v3);
  if (result != 1)
  {
    return sub_21DE5CD00(v11, &qword_27CE94358, &qword_21DED08A0);
  }

  return result;
}

uint64_t EventDateComponents.computeDate(currentDate:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = *(v2 + 2);
  v13 = *v2;
  v14 = v9;
  sub_21DE73DA4(a1, &type metadata for EventDateComponents, &off_282F27888, v8);
  v10 = sub_21DEC6910();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_21DE5CD00(v8, &qword_27CE94358, &qword_21DED08A0);
  sub_21DE81464();
  swift_allocError();
  return swift_willThrow();
}

BOOL sub_21DE7C1A4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

uint64_t sub_21DE7C1E0(void *a1, void *a2)
{
  v2 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v3 = a2[1];
    v4 = a1[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      v5 = a2[2];
      v6 = a1[2];
      v2 = v5 < v6;
      if (v5 == v6)
      {
        v7 = a2[3];
        v8 = a1[3];
        v2 = v7 < v8;
        if (v7 == v8)
        {
          v2 = a2[4] < a1[4];
        }
      }
    }
  }

  v9 = v2;
  return v9 ^ 1u;
}

BOOL sub_21DE7C238(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

uint64_t sub_21DE7C274(void *a1, void *a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v3 = a1[1];
    v4 = a2[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      v5 = a1[2];
      v6 = a2[2];
      v2 = v5 < v6;
      if (v5 == v6)
      {
        v7 = a1[3];
        v8 = a2[3];
        v2 = v7 < v8;
        if (v7 == v8)
        {
          v2 = a1[4] < a2[4];
        }
      }
    }
  }

  v9 = v2;
  return v9 ^ 1u;
}

BOOL sub_21DE7C2CC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

BOOL sub_21DE7C304(void *a1, void *a2)
{
  v2 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v3 = a2[1];
    v4 = a1[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      v5 = a2[2];
      v6 = a1[2];
      v2 = v5 < v6;
      if (v5 == v6)
      {
        v7 = a2[3];
        v8 = a1[3];
        v2 = v7 < v8;
        if (v7 == v8)
        {
          return a2[4] < a1[4];
        }
      }
    }
  }

  return v2;
}

void *(*EventDateTimeComponents.minuts.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 32);
  a1[1] = v1;
  return sub_21DE7C49C;
}

uint64_t EventDateTimeComponents.timeZone.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EventDateTimeComponents() + 36);

  return sub_21DE818E0(a1, v3);
}

uint64_t EventDateTimeComponents.description.getter()
{
  v1 = sub_21DEC6910();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_21DEC6A20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  v15 = *v0;
  if (*v0 >= 1)
  {
    v34 = 0x203A72616579;
    v35 = 0xE600000000000000;
    v33 = v15;
    v16 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v16);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](v34, v35);
  }

  v17 = v0[1];
  if (v17 >= 1)
  {
    v34 = 0x203A68746E6F6DLL;
    v35 = 0xE700000000000000;
    v33 = v17;
    v18 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v18);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](v34, v35);
  }

  v19 = v0[2];
  if (v19 >= 1)
  {
    v34 = 0x203A796164;
    v35 = 0xE500000000000000;
    v33 = v19;
    v20 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v20);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](v34, v35);
  }

  v21 = v0[3];
  if ((v21 & 0x8000000000000000) == 0)
  {
    v34 = 0x203A7372756F68;
    v35 = 0xE700000000000000;
    v33 = v21;
    v22 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v22);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](v34, v35);
  }

  v23 = v0[4];
  if ((v23 & 0x8000000000000000) == 0)
  {
    v34 = 0x3A736574756E696DLL;
    v35 = 0xE900000000000020;
    v33 = v23;
    v24 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v24);

    MEMORY[0x223D4B2A0](32, 0xE100000000000000);
    MEMORY[0x223D4B2A0](v34, v35);
  }

  v25 = type metadata accessor for EventDateTimeComponents();
  sub_21DE5C6E4(v0 + *(v25 + 36), v9, &qword_27CE94360, &qword_21DED08A8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21DE5CD00(v9, &qword_27CE94360, &qword_21DED08A8);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v34 = 0x6E6F7A20656D6974;
    v35 = 0xEB00000000203A65;
    sub_21DEC6900();
    v26 = sub_21DEC6A10();
    v28 = v27;
    (*(v2 + 8))(v5, v1);
    if (v28)
    {
      v29 = v26;
    }

    else
    {
      v29 = sub_21DEC6A00();
      v28 = v30;
    }

    MEMORY[0x223D4B2A0](v29, v28);

    MEMORY[0x223D4B2A0](v34, v35);

    (*(v11 + 8))(v14, v10);
  }

  return v36;
}

BOOL EventDateTimeComponents.isValid.getter()
{
  if (*v0)
  {
    return 1;
  }

  if (v0[1])
  {
    return 1;
  }

  if (v0[2])
  {
    return 1;
  }

  if (v0[3] == -1)
  {
    return v0[4] != -1;
  }

  return 1;
}

uint64_t EventDateTimeComponents.dateString.getter()
{
  v1 = sub_21DEC6D20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v6 = *v0;
  if (!*v0 && !v0[1] && !v0[2] && v0[3] == -1 && v0[4] == -1)
  {
    return 0;
  }

  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  if (qword_27CE9B2F0 != -1)
  {
    swift_once();
  }

  v7 = v0[1];
  if (v7 <= 0xC)
  {
    v10 = v0[2];
    if ((v10 | 0x20) == 0x20 || (v29 = sub_21DE7B318(v0[1]), (v31 & 1) == 0) && v10 >= v29 && v30 >= v10)
    {
      v32 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94430, &qword_21DED0E58);
      v11 = swift_allocObject();
      v12 = MEMORY[0x277D83B88];
      *(v11 + 16) = xmmword_21DED0A50;
      v13 = MEMORY[0x277D83C10];
      *(v11 + 56) = v12;
      *(v11 + 64) = v13;
      *(v11 + 32) = v6;
      *(v11 + 96) = v12;
      *(v11 + 104) = v13;
      *(v11 + 72) = v7;
      *(v11 + 136) = v12;
      *(v11 + 144) = v13;
      *(v11 + 112) = v10;
      v14 = sub_21DEC6DE0();
      MEMORY[0x223D4B2A0](v14);

      v15 = v0[3];
      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = v0[4];
        if ((v16 & 0x8000000000000000) == 0)
        {
          if (v15 > 0x17 || v16 > 0x3B)
          {

            v1 = v32;
            goto LABEL_9;
          }

          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_21DED0150;
          *(v17 + 56) = v12;
          *(v17 + 64) = v13;
          *(v17 + 32) = v15;
          *(v17 + 96) = v12;
          *(v17 + 104) = v13;
          *(v17 + 72) = v16;
          v18 = sub_21DEC6DE0();
          MEMORY[0x223D4B2A0](v18);
        }
      }

      return v33[0];
    }
  }

LABEL_9:
  sub_21DE81950();
  v8 = swift_allocError();
  result = swift_willThrow();
  if (v8)
  {
    v19 = sub_21DEBD114();
    (*(v2 + 16))(v5, v19, v1);
    v20 = v8;
    v21 = sub_21DEC6D00();
    v22 = sub_21DEC71B0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v1;
      v25 = swift_slowAlloc();
      v33[0] = v25;
      *v23 = 136315138;
      swift_getErrorValue();
      v26 = sub_21DEC7710();
      v28 = sub_21DE56544(v26, v27, v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_21DE0D000, v21, v22, "Cannot compute date: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223D4D340](v25, -1, -1);
      MEMORY[0x223D4D340](v23, -1, -1);

      (*(v2 + 8))(v5, v24);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_21DE7CF60@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, char a11)
{
  v18 = *(type metadata accessor for EventDateTimeComponents() + 36);
  v19 = sub_21DEC6A20();
  result = (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  if (a2)
  {
    v21 = 0;
  }

  else
  {
    v21 = a1;
  }

  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = a3;
  }

  *a9 = v21;
  *(a9 + 1) = v22;
  if (a6)
  {
    v23 = 0;
  }

  else
  {
    v23 = a5;
  }

  v24 = a7;
  if (a8)
  {
    v24 = -1;
  }

  *(a9 + 2) = v23;
  *(a9 + 3) = v24;
  if (a11)
  {
    a10 = -1;
  }

  *(a9 + 4) = a10;
  return result;
}

uint64_t EventDateTimeComponents.init(string:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  v6 = type metadata accessor for EventDateTimeComponents();
  *(a3 + 3) = -1;
  *(a3 + 4) = -1;
  v7 = *(v6 + 36);
  v8 = sub_21DEC6A20();
  v9 = (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
  }

  v88 = 84;
  v89 = 0xE100000000000000;
  MEMORY[0x28223BE20](v9);
  v83 = &v88;
  v11 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE821E8, v82, a1, a2, &v84);
  v12 = v11[2];
  if ((v12 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_18;
  }

  v13 = v11[4];
  v14 = v11[5];
  v15 = v11[6];
  v16 = v11[7];
  v90 = v11;
  v88 = 45;
  v89 = 0xE100000000000000;
  MEMORY[0x28223BE20](v11);
  v83 = &v88;

  v18 = sub_21DE7EB5C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE821E8, v82, v13, v14, v15, v17);
  v19 = v18;
  if (*(v18 + 2) != 3)
  {

    goto LABEL_18;
  }

  v20 = *(v18 + 4);
  v21 = *(v18 + 5);
  if ((v21 ^ v20) < 0x4000)
  {
    v29 = 0;
    v25 = 1;
    v30 = 3;
  }

  else
  {
    v22 = *(v18 + 6);
    v23 = *(v18 + 7);
    v24 = sub_21DE81044(*(v18 + 4), *(v18 + 5), v22, v23, 10);
    if ((v25 & 0x100) != 0)
    {

      v26 = sub_21DE7F174(v20, v21, v22, v23, 10);
      v28 = v27;

      v25 = v28;
      v24 = v26;
    }

    if (v25)
    {
      v29 = 0;
    }

    else
    {
      v29 = v24;
    }

    v30 = *(v19 + 2);
    if (v30 < 2)
    {
      __break(1u);
      goto LABEL_67;
    }
  }

  v86 = v25;
  v84 = v29;
  v31 = *(v19 + 8);
  v32 = *(v19 + 9);
  if ((v32 ^ v31) < 0x4000)
  {
LABEL_67:
    v85 = 0;
    v37 = 1;
    goto LABEL_25;
  }

  v33 = *(v19 + 10);
  v34 = *(v19 + 11);
  v35 = sub_21DE81044(*(v19 + 8), *(v19 + 9), v33, v34, 10);
  if ((v36 & 0x100) != 0)
  {

    v39 = sub_21DE7F174(v31, v32, v33, v34, 10);
    v37 = v40;

    v35 = v39;
  }

  else
  {
    v37 = v36;
  }

  if (v37)
  {
    v41 = 0;
  }

  else
  {
    v41 = v35;
  }

  v85 = v41;
  v30 = *(v19 + 2);
LABEL_25:
  v87 = v12;
  if (v30 < 3)
  {
    __break(1u);
  }

  else
  {
    v42 = *(v19 + 12);
    v43 = *(v19 + 13);
    v44 = *(v19 + 14);
    v45 = *(v19 + 15);

    if ((v43 ^ v42) >= 0x4000)
    {
      v46 = sub_21DE81044(v42, v43, v44, v45, 10);
      if ((v47 & 0x100) != 0)
      {
        v46 = sub_21DE7F174(v42, v43, v44, v45, 10);
      }

      v48 = v46;
      v49 = v47;

      v50 = v87;
      if (v49)
      {
        v51 = 0;
      }

      else
      {
        v51 = v48;
      }

      v52 = v90;
      if ((v86 | v37))
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  v51 = 0;
  v49 = 1;
  v52 = v90;
  v50 = v87;
  if ((v86 | v37))
  {
    goto LABEL_18;
  }

LABEL_33:
  if (v49)
  {
    goto LABEL_18;
  }

  if (qword_27CE9B2F0 != -1)
  {
    swift_once();
    v52 = v90;
  }

  v53 = v85;
  if (v85 > 0xC)
  {
    goto LABEL_18;
  }

  if ((v51 | 0x20) != 0x20)
  {
    v66 = sub_21DE7B318(v85);
    if (v68)
    {
      goto LABEL_18;
    }

    v69 = v51 < v66;
    v52 = v90;
    if (v69 || v67 < v51)
    {
      goto LABEL_18;
    }
  }

  *a3 = v84;
  *(a3 + 1) = v53;
  *(a3 + 2) = v51;
  if (v50 != 2)
  {
  }

  if (v52[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_72;
  }

  v54 = v52[8];
  v55 = v52[9];
  v56 = v52[10];
  v57 = v52[11];

  v88 = 58;
  v89 = 0xE100000000000000;
  MEMORY[0x28223BE20](v58);
  v83 = &v88;
  v52 = sub_21DE7EB5C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE821E8, v82, v54, v55, v56, &v84);
  if (v52[2] < 2uLL)
  {
LABEL_18:

LABEL_19:
    sub_21DE81950();
    swift_allocError();
    swift_willThrow();
    return sub_21DE779B4(a3);
  }

  v59 = v52[4];
  v60 = v52[5];
  if ((v60 ^ v59) < 0x4000)
  {
LABEL_73:
    v90 = 0;
    v65 = 1;
    goto LABEL_55;
  }

  v62 = v52[6];
  v61 = v52[7];
  v63 = v52;
  v52 = sub_21DE81044(v52[4], v60, v62, v61, 10);
  if ((v64 & 0x100) != 0)
  {

    v70 = sub_21DE7F174(v59, v60, v62, v61, 10);
    v65 = v71;

    v52 = v70;
  }

  else
  {
    v65 = v64;
  }

  if (v65)
  {
    v72 = 0;
  }

  else
  {
    v72 = v52;
  }

  v90 = v72;
  if (v63[2] < 2uLL)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v52 = v63;
LABEL_55:
  v73 = v52[8];
  v74 = v52[9];
  v76 = v52[10];
  v75 = v52[11];

  if ((v74 ^ v73) < 0x4000)
  {

    if (v65)
    {
      goto LABEL_19;
    }

    v81 = 0;
    v80 = 1;
  }

  else
  {
    v77 = sub_21DE81044(v73, v74, v76, v75, 10);
    if ((v78 & 0x100) != 0)
    {
      v77 = sub_21DE7F174(v73, v74, v76, v75, 10);
    }

    v79 = v77;
    v80 = v78;

    if (v80)
    {
      v81 = 0;
    }

    else
    {
      v81 = v79;
    }

    if (v65)
    {
      goto LABEL_19;
    }
  }

  if (((v90 - 3) < 0xFFFFFFFFFFFFFFE7) | v80 & 1 || (v81 - 60) < 0xFFFFFFFFFFFFFFC3)
  {
    goto LABEL_19;
  }

  *(a3 + 3) = v90;
  *(a3 + 4) = v81;
  return result;
}

__n128 sub_21DE7D71C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = *(type metadata accessor for EventDateTimeComponents() + 36);
  v5 = sub_21DEC6A20();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  result = v7;
  *a2 = v7;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = -1;
  a2[2].n128_u64[0] = -1;
  return result;
}

uint64_t EventDateTimeComponents.computeDate()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DEC6910();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  sub_21DEC68F0();
  v11 = type metadata accessor for EventDateTimeComponents();
  sub_21DE73DA4(v6, v11, &off_282F278E8, v10);
  (*(v3 + 8))(v6, v2);
  v12 = *(v3 + 48);
  if (v12(v10, 1, v2) != 1)
  {
    return (*(v3 + 32))(a1, v10, v2);
  }

  sub_21DEC68F0();
  result = (v12)(v10, 1, v2);
  if (result != 1)
  {
    return sub_21DE5CD00(v10, &qword_27CE94358, &qword_21DED08A0);
  }

  return result;
}

uint64_t EventDateTimeComponents.computeDate(currentDate:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for EventDateTimeComponents();
  sub_21DE73DA4(a1, v8, &off_282F278E8, v7);
  v9 = sub_21DEC6910();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_21DE5CD00(v7, &qword_27CE94358, &qword_21DED08A0);
  sub_21DE81950();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_21DE7DAE4(__int128 *a1)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943C8, &unk_21DED0A60);
  v3 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v86 = &v69 - v4;
  v5 = sub_21DEC69D0();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v5);
  v79 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21DEC69F0();
  v78 = *(v80 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v77 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v69 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v69 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v69 - v22;
  v24 = sub_21DEC6910();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v76 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v69 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v87 = &v69 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v69 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v88 = &v69 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = (&v69 - v39);
  sub_21DEC68D0();
  if (*(v1 + 3) != *(a1 + 3) || *(v1 + 4) != *(a1 + 4))
  {
    goto LABEL_5;
  }

  v41 = *(v1 + 2);
  v89 = *v1;
  v90 = v41;
  sub_21DE73DA4(v40, &type metadata for EventDateComponents, &off_282F27888, v23);
  v75 = *(v25 + 48);
  if (v75(v23, 1, v24) == 1)
  {
    sub_21DE5CD00(v23, &qword_27CE94358, &qword_21DED08A0);
LABEL_5:
    (*(v25 + 8))(v40, v24);
    goto LABEL_6;
  }

  v72 = v10;
  v73 = v25;
  v44 = *(v25 + 32);
  v44(v36, v23, v24);
  v45 = v88;
  v46 = v36;
  v47 = v44;
  v44(v88, v46, v24);
  v48 = *(a1 + 2);
  v89 = *a1;
  v90 = v48;
  v74 = v25 + 48;
  sub_21DE73DA4(v40, &type metadata for EventDateComponents, &off_282F27888, v21);
  if (v75(v21, 1, v24) == 1)
  {
    sub_21DE5CD00(v21, &qword_27CE94358, &qword_21DED08A0);
    v49 = v45;
    v50 = *(v73 + 8);
    v50(v49, v24);
    v50(v40, v24);
  }

  else
  {
    v47(v31, v21, v24);
    v51 = v87;
    v71 = v25 + 32;
    v70 = v47;
    v47(v87, v31, v24);
    v52 = v72;
    sub_21DEC69B0();
    v54 = v81;
    v53 = v82;
    v55 = v79;
    (*(v81 + 104))(v79, *MEMORY[0x277CC9968], v82);
    v56 = v85;
    sub_21DEC69A0();
    v57 = v55;
    v58 = v56;
    (*(v54 + 8))(v57, v53);
    (*(v78 + 8))(v52, v80);
    v59 = v73;
    v60 = v84;
    (*(v73 + 16))(v84, v45, v24);
    (*(v59 + 56))(v60, 0, 1, v24);
    v61 = *(v83 + 48);
    v62 = v86;
    sub_21DE5C6E4(v58, v86, &qword_27CE94358, &qword_21DED08A0);
    sub_21DE5C6E4(v60, v62 + v61, &qword_27CE94358, &qword_21DED08A0);
    if (v75(v62, 1, v24) == 1)
    {
      sub_21DE5CD00(v60, &qword_27CE94358, &qword_21DED08A0);
      sub_21DE5CD00(v58, &qword_27CE94358, &qword_21DED08A0);
      v63 = *(v59 + 8);
      v63(v51, v24);
      v63(v88, v24);
      v63(v40, v24);
      if (v75((v62 + v61), 1, v24) == 1)
      {
        sub_21DE5CD00(v62, &qword_27CE94358, &qword_21DED08A0);
        v42 = 1;
        return v42 & 1;
      }
    }

    else
    {
      v64 = v77;
      sub_21DE5C6E4(v62, v77, &qword_27CE94358, &qword_21DED08A0);
      if (v75((v62 + v61), 1, v24) != 1)
      {
        v66 = v62 + v61;
        v67 = v76;
        v70(v76, v66, v24);
        sub_21DE81CA4(&qword_27CE943D0, MEMORY[0x277CC9578]);
        v42 = sub_21DEC6D70();
        v68 = *(v59 + 8);
        v68(v67, v24);
        sub_21DE5CD00(v60, &qword_27CE94358, &qword_21DED08A0);
        sub_21DE5CD00(v58, &qword_27CE94358, &qword_21DED08A0);
        v68(v87, v24);
        v68(v88, v24);
        v68(v40, v24);
        v68(v64, v24);
        sub_21DE5CD00(v62, &qword_27CE94358, &qword_21DED08A0);
        return v42 & 1;
      }

      sub_21DE5CD00(v60, &qword_27CE94358, &qword_21DED08A0);
      sub_21DE5CD00(v58, &qword_27CE94358, &qword_21DED08A0);
      v65 = *(v59 + 8);
      v65(v87, v24);
      v65(v88, v24);
      v65(v40, v24);
      v65(v64, v24);
    }

    sub_21DE5CD00(v62, &qword_27CE943C8, &unk_21DED0A60);
  }

LABEL_6:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_21DE7E474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for EventDateTimeComponents() - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  if (v9[2] < 2uLL)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943D8, &qword_21DED3400);
    v21 = *(*(v20 - 8) + 56);

    return v21(a2, 1, 1, v20);
  }

  else
  {
    v28 = v9;

    sub_21DE7FB80(&v28);
    v12 = v28;
    v13 = v28[2];
    if (v13)
    {
      for (i = 1; v13 != i; ++i)
      {
        if (i >= v12[2])
        {
          __break(1u);
          goto LABEL_15;
        }

        v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v16 = *(v4 + 72);
        sub_21DE77950(&v15[v16 * i], v11);
        sub_21DE77950(&v15[v16 * (i - 1)], v8);
        v17 = sub_21DE7DAE4(v8);
        sub_21DE779B4(v8);
        sub_21DE779B4(v11);
        if ((v17 & 1) == 0)
        {

          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943D8, &qword_21DED3400);
          return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
        }
      }

      v22 = v12[2];
      if (!v22)
      {
        goto LABEL_16;
      }

      v23 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      sub_21DE77950(v23, v11);
      sub_21DE77950(v23 + *(v4 + 72) * (v22 - 1), v8);

      v27 = *v8;
      v24 = *(v8 + 2);
      sub_21DE779B4(v8);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943D8, &qword_21DED3400);
      v26 = a2 + *(v25 + 48);
      sub_21DE77A74(v11, a2);
      *v26 = v27;
      *(v26 + 16) = v24;
      return (*(*(v25 - 8) + 56))(a2, 0, 1, v25);
    }

    else
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_21DE7E79C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_21DEC7010();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_21DE7EF64(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_21DE7EF64((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_21DEC6FF0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_21DEC6EB0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_21DEC6EB0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_21DEC7010();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_21DE7EF64(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_21DEC7010();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_21DE7EF64(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_21DE7EF64((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_21DEC6EB0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_21DE7EB5C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x277D84F90];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_21DEC71F0();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_21DEC71D0() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_21DEC71D0();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_21DEC7210();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_21DE7EF64(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_21DE7EF64((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_21DEC71D0();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_21DEC7210();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_21DE7EF64((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_21DE7EF64(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_21DEC7210();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_21DE7EF64(0, 1, 1, MEMORY[0x277D84F90]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x277D84F90];
}

char *sub_21DE7EF64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94428, &qword_21DED0E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21DE7F070(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94408, &qword_21DED0E38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unsigned __int8 *sub_21DE7F174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_21DE81CEC();

  result = sub_21DEC7000();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_21DE7F70C();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21DEC7370();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21DE7F70C()
{
  v0 = sub_21DEC7010();
  v4 = sub_21DE7F78C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21DE7F78C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21DEC6E70();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_21DEC71E0();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_21DE56984(v9, 0);
  v12 = sub_21DE7F8E4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_21DEC6E70();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_21DEC7370();
LABEL_4:

  return sub_21DEC6E70();
}

unint64_t sub_21DE7F8E4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21DE7FB04(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21DEC6F90();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21DEC7370();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21DE7FB04(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21DEC6F60();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21DE7FB04(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21DEC6FC0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223D4B300](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_21DE7FB80(void **a1)
{
  v2 = *(type metadata accessor for EventDateTimeComponents() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21DE81110(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21DE7FC28(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21DE7FC28(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21DEC75E0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EventDateTimeComponents();
        v6 = sub_21DEC7090();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for EventDateTimeComponents() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21DE7FFA0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21DE7FD54(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21DE7FD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v44 = type metadata accessor for EventDateTimeComponents();
  v8 = *(*(v44 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v44);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v37 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v37 - v17);
  v39 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v38 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v42 = v21;
    v43 = a3;
    v40 = v24;
    v41 = v23;
    v25 = v23;
    while (1)
    {
      sub_21DE77950(v24, v18);
      sub_21DE77950(v21, v14);
      v26 = *v18 < *v14;
      if (*v18 == *v14)
      {
        v27 = v18[1];
        v28 = v14[1];
        v26 = v27 < v28;
        if (v27 == v28)
        {
          v29 = v18[2];
          v30 = v14[2];
          v26 = v29 < v30;
          if (v29 == v30)
          {
            v31 = v18[3];
            v32 = v14[3];
            v26 = v31 < v32;
            if (v31 == v32)
            {
              v33 = v18[4];
              v34 = v14[4];
              v26 = v33 < v34;
              if (v33 == v34)
              {
                sub_21DE779B4(v14);
                result = sub_21DE779B4(v18);
LABEL_5:
                a3 = v43 + 1;
                v21 = v42 + v38;
                v23 = v41 - 1;
                v24 = v40 + v38;
                if (v43 + 1 == v39)
                {
                  return result;
                }

                goto LABEL_6;
              }
            }
          }
        }
      }

      v35 = v26;
      sub_21DE779B4(v14);
      result = sub_21DE779B4(v18);
      if ((v35 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_21DE77A74(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21DE77A74(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21DE7FFA0(int64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v159 = type metadata accessor for EventDateTimeComponents();
  v153 = *(v159 - 8);
  v8 = *(v153 + 64);
  v9 = MEMORY[0x28223BE20](v159);
  v149 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v158 = &v140 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v140 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v140 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v150 = (&v140 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v142 = (&v140 - v23);
  result = MEMORY[0x28223BE20](v22);
  v27 = (&v140 - v25);
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_123:
    v31 = *v146;
    if (!*v146)
    {
      goto LABEL_161;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_125:
      v160 = v30;
      v135 = *(v30 + 16);
      if (v135 >= 2)
      {
        while (*a3)
        {
          v136 = v30;
          v30 = *(v30 + 16 * v135);
          v137 = v136;
          v138 = *&v136[16 * v135 + 24];
          sub_21DE80970(*a3 + *(v153 + 72) * v30, *a3 + *(v153 + 72) * *&v136[16 * v135 + 16], *a3 + *(v153 + 72) * v138, v31);
          if (v5)
          {
          }

          if (v138 < v30)
          {
            goto LABEL_148;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_21DE80F4C(v137);
          }

          if (v135 - 2 >= *(v137 + 2))
          {
            goto LABEL_149;
          }

          v139 = &v137[16 * v135];
          *v139 = v30;
          v139[1] = v138;
          v160 = v137;
          result = sub_21DE80EC0(v135 - 1);
          v30 = v160;
          v135 = *(v160 + 16);
          if (v135 <= 1)
          {
          }
        }

        goto LABEL_159;
      }
    }

LABEL_155:
    result = sub_21DE80F4C(v30);
    v30 = result;
    goto LABEL_125;
  }

  v156 = v26;
  v141 = a4;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v154 = a3;
  v143 = &v140 - v25;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 < v28)
    {
      v151 = v28;
      v33 = *a3;
      v34 = *(v153 + 72);
      a3 = v29 + 1;
      sub_21DE77950(v33 + v34 * v32, v27);
      v147 = v31;
      v155 = v34;
      v35 = v33 + v34 * v31;
      v36 = v142;
      sub_21DE77950(v35, v142);
      v37 = v36;
      v38 = *v27 == *v36;
      v39 = *v27 < *v36;
      v145 = v5;
      if (v38)
      {
        v40 = v27[1];
        v41 = v36[1];
        v42 = v40 < v41;
        v43 = v147;
        if (v40 == v41)
        {
          v44 = v27[2];
          v45 = v37[2];
          v42 = v44 < v45;
          if (v44 == v45)
          {
            v46 = v27[3];
            v47 = v37[3];
            v42 = v46 < v47;
            if (v46 == v47)
            {
              v42 = v27[4] < v37[4];
            }
          }
        }

        v48 = v42;
        LODWORD(v152) = v48;
      }

      else
      {
        v49 = v39;
        LODWORD(v152) = v49;
        v43 = v147;
      }

      v144 = v30;
      sub_21DE779B4(v37);
      result = sub_21DE779B4(v27);
      v50 = v43 + 2;
      v51 = v155 * (v43 + 2);
      v52 = v33 + v51;
      v53 = a3;
      v54 = v155 * a3;
      v55 = v33 + v155 * a3;
      do
      {
        v56 = v50;
        v57 = v53;
        v5 = v54;
        v30 = v51;
        if (v50 >= v151)
        {
          break;
        }

        v157 = v50;
        v58 = v156;
        sub_21DE77950(v52, v156);
        v59 = v150;
        sub_21DE77950(v55, v150);
        v60 = v59;
        v61 = *v58 < *v59;
        if (*v58 == *v59)
        {
          v62 = v58[1];
          v63 = v59[1];
          v61 = v62 < v63;
          if (v62 == v63)
          {
            v64 = v58[2];
            v65 = v59[2];
            v61 = v64 < v65;
            if (v64 == v65)
            {
              v66 = v58[3];
              v67 = v59[3];
              v61 = v66 < v67;
              if (v66 == v67)
              {
                v61 = v58[4] < v59[4];
              }
            }
          }
        }

        a3 = v61;
        sub_21DE779B4(v60);
        result = sub_21DE779B4(v156);
        v56 = v157;
        v50 = v157 + 1;
        v52 += v155;
        v55 += v155;
        v53 = v57 + 1;
        v54 = v5 + v155;
        v51 = v30 + v155;
      }

      while (v152 == a3);
      if (v152)
      {
        v31 = v147;
        if (v56 < v147)
        {
          goto LABEL_152;
        }

        if (v147 >= v56)
        {
          v32 = v56;
          v30 = v144;
          v5 = v145;
          a3 = v154;
          goto LABEL_46;
        }

        v68 = v147 * v155;
        do
        {
          if (v31 != v57)
          {
            v69 = *v154;
            if (!*v154)
            {
              goto LABEL_158;
            }

            v157 = v69 + v68;
            sub_21DE77A74(v69 + v68, v149);
            if (v68 < v5 || v157 >= v69 + v30)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v68 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_21DE77A74(v149, v69 + v5);
          }

          ++v31;
          v5 -= v155;
          v30 -= v155;
          v68 += v155;
          v39 = v31 < v57--;
        }

        while (v39);
      }

      v32 = v56;
      v30 = v144;
      v5 = v145;
      a3 = v154;
      v31 = v147;
    }

LABEL_46:
    v70 = *(a3 + 8);
    if (v32 < v70)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_151;
      }

      if (v32 - v31 < v141)
      {
        break;
      }
    }

LABEL_72:
    if (v32 < v31)
    {
      goto LABEL_150;
    }

    v157 = v32;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21DE7F070(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v90 = *(v30 + 16);
    v89 = *(v30 + 24);
    v91 = v90 + 1;
    v29 = v157;
    if (v90 >= v89 >> 1)
    {
      result = sub_21DE7F070((v89 > 1), v90 + 1, 1, v30);
      v29 = v157;
      v30 = result;
    }

    *(v30 + 16) = v91;
    v92 = v30 + 16 * v90;
    *(v92 + 32) = v31;
    *(v92 + 40) = v29;
    v31 = *v146;
    if (!*v146)
    {
      goto LABEL_160;
    }

    if (v90)
    {
      while (1)
      {
        a3 = v91 - 1;
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v93 = *(v30 + 32);
          v94 = *(v30 + 40);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_92:
          if (v96)
          {
            goto LABEL_139;
          }

          v109 = (v30 + 16 * v91);
          v111 = *v109;
          v110 = v109[1];
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_142;
          }

          v115 = (v30 + 32 + 16 * a3);
          v117 = *v115;
          v116 = v115[1];
          v103 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v103)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v113, v118))
          {
            goto LABEL_146;
          }

          if (v113 + v118 >= v95)
          {
            if (v95 < v118)
            {
              a3 = v91 - 2;
            }

            goto LABEL_113;
          }

          goto LABEL_106;
        }

        v119 = (v30 + 16 * v91);
        v121 = *v119;
        v120 = v119[1];
        v103 = __OFSUB__(v120, v121);
        v113 = v120 - v121;
        v114 = v103;
LABEL_106:
        if (v114)
        {
          goto LABEL_141;
        }

        v122 = v30 + 16 * a3;
        v124 = *(v122 + 32);
        v123 = *(v122 + 40);
        v103 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v103)
        {
          goto LABEL_144;
        }

        if (v125 < v113)
        {
          goto LABEL_3;
        }

LABEL_113:
        v130 = a3 - 1;
        if (a3 - 1 >= v91)
        {
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
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
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*v154)
        {
          goto LABEL_157;
        }

        v131 = v30;
        v132 = v30 + 32;
        v30 = *(v30 + 32 + 16 * v130);
        v133 = *(v132 + 16 * a3 + 8);
        sub_21DE80970(*v154 + *(v153 + 72) * v30, *v154 + *(v153 + 72) * *(v132 + 16 * a3), *v154 + *(v153 + 72) * v133, v31);
        if (v5)
        {
        }

        if (v133 < v30)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_21DE80F4C(v131);
        }

        if (v130 >= *(v131 + 2))
        {
          goto LABEL_136;
        }

        v134 = &v131[16 * v130];
        *(v134 + 4) = v30;
        *(v134 + 5) = v133;
        v160 = v131;
        result = sub_21DE80EC0(a3);
        v30 = v160;
        v91 = *(v160 + 16);
        v29 = v157;
        if (v91 <= 1)
        {
          goto LABEL_3;
        }
      }

      v97 = v30 + 32 + 16 * v91;
      v98 = *(v97 - 64);
      v99 = *(v97 - 56);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_137;
      }

      v102 = *(v97 - 48);
      v101 = *(v97 - 40);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_138;
      }

      v104 = (v30 + 16 * v91);
      v106 = *v104;
      v105 = v104[1];
      v103 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v103)
      {
        goto LABEL_140;
      }

      v103 = __OFADD__(v95, v107);
      v108 = v95 + v107;
      if (v103)
      {
        goto LABEL_143;
      }

      if (v108 >= v100)
      {
        v126 = (v30 + 32 + 16 * a3);
        v128 = *v126;
        v127 = v126[1];
        v103 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v103)
        {
          goto LABEL_147;
        }

        if (v95 < v129)
        {
          a3 = v91 - 2;
        }

        goto LABEL_113;
      }

      goto LABEL_92;
    }

LABEL_3:
    a3 = v154;
    v28 = v154[1];
    v27 = v143;
    if (v29 >= v28)
    {
      goto LABEL_123;
    }
  }

  v71 = v31 + v141;
  if (__OFADD__(v31, v141))
  {
    goto LABEL_153;
  }

  if (v71 >= v70)
  {
    v71 = *(a3 + 8);
  }

  if (v71 < v31)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v32 == v71)
  {
    goto LABEL_72;
  }

  v144 = v30;
  v145 = v5;
  v72 = *a3;
  v73 = *(v153 + 72);
  v74 = *a3 + v73 * (v32 - 1);
  v75 = -v73;
  v147 = v31;
  v148 = v73;
  v76 = v31 - v32;
  v77 = v72 + v32 * v73;
  v151 = v71;
LABEL_57:
  v157 = v32;
  v78 = v77;
  v152 = v76;
  v155 = v74;
  while (1)
  {
    sub_21DE77950(v78, v18);
    sub_21DE77950(v74, v15);
    v79 = *v18 < *v15;
    if (*v18 == *v15)
    {
      v80 = v18[1];
      v81 = v15[1];
      v79 = v80 < v81;
      if (v80 == v81)
      {
        v82 = v18[2];
        v83 = v15[2];
        v79 = v82 < v83;
        if (v82 == v83)
        {
          v84 = v18[3];
          v85 = v15[3];
          v79 = v84 < v85;
          if (v84 == v85)
          {
            v86 = v18[4];
            v87 = v15[4];
            v79 = v86 < v87;
            if (v86 == v87)
            {
              sub_21DE779B4(v15);
              sub_21DE779B4(v18);
LABEL_56:
              v32 = v157 + 1;
              v74 = v155 + v148;
              v76 = v152 - 1;
              v77 += v148;
              if (v157 + 1 == v151)
              {
                v32 = v151;
                v30 = v144;
                v5 = v145;
                v31 = v147;
                goto LABEL_72;
              }

              goto LABEL_57;
            }
          }
        }
      }
    }

    a3 = v79;
    sub_21DE779B4(v15);
    result = sub_21DE779B4(v18);
    if ((a3 & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!v72)
    {
      break;
    }

    a3 = v158;
    sub_21DE77A74(v78, v158);
    swift_arrayInitWithTakeFrontToBack();
    sub_21DE77A74(a3, v74);
    v74 += v75;
    v78 += v75;
    if (__CFADD__(v76++, 1))
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  return result;
}

uint64_t sub_21DE80970(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v67 = type metadata accessor for EventDateTimeComponents();
  v8 = *(*(v67 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v67);
  v10 = MEMORY[0x28223BE20](v9);
  v66 = (&v61 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v61 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v61 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_82;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_83;
  }

  v22 = (a2 - a1) / v20;
  v70 = a1;
  v69 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    v64 = v16;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v24;
    if (v24 >= 1)
    {
      v38 = -v20;
      v39 = a4 + v24;
      v65 = -v20;
      do
      {
        v61 = v37;
        v40 = a2;
        a2 += v38;
        v63 = v40;
        while (1)
        {
          if (v40 <= a1)
          {
            v70 = v40;
            v68 = v61;
            goto LABEL_80;
          }

          v41 = a3;
          v42 = a4;
          v43 = v39 + v38;
          v44 = a2;
          v45 = v66;
          sub_21DE77950(v39 + v38, v66);
          v46 = v44;
          v47 = v44;
          v48 = v64;
          sub_21DE77950(v47, v64);
          v49 = v48;
          v50 = *v45 == *v48;
          v51 = *v45 < *v48;
          v62 = v37;
          if (v50)
          {
            v52 = v45[1];
            v53 = v48[1];
            v54 = v52 < v53;
            v55 = v65;
            if (v52 == v53)
            {
              v56 = v45[2];
              v57 = v48[2];
              v54 = v56 < v57;
              if (v56 == v57)
              {
                v58 = v45[3];
                v59 = v48[3];
                v54 = v58 < v59;
                if (v58 == v59)
                {
                  v54 = v45[4] < v48[4];
                }
              }
            }

            v60 = v54;
          }

          else
          {
            v60 = v51;
            v55 = v65;
          }

          a3 = v41 + v55;
          sub_21DE779B4(v49);
          sub_21DE779B4(v66);
          a2 = v46;
          if (v60)
          {
            break;
          }

          v37 = v43;
          a4 = v42;
          if (v41 < v39 || a3 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v41 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v39 = v43;
          v38 = v65;
          v40 = v63;
          if (v43 <= v42)
          {
            a2 = v63;
            goto LABEL_79;
          }
        }

        a4 = v42;
        if (v41 < v63 || a3 >= v63)
        {
          swift_arrayInitWithTakeFrontToBack();
          v37 = v62;
        }

        else
        {
          v37 = v62;
          if (v41 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v65;
      }

      while (v39 > v42);
    }

LABEL_79:
    v70 = a2;
    v68 = v37;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v23;
    v68 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      do
      {
        sub_21DE77950(a2, v18);
        sub_21DE77950(a4, v14);
        v27 = *v18 < *v14;
        if (*v18 != *v14)
        {
          goto LABEL_26;
        }

        v28 = v18[1];
        v29 = v14[1];
        v27 = v28 < v29;
        if (v28 != v29)
        {
          goto LABEL_26;
        }

        v30 = v18[2];
        v31 = v14[2];
        v27 = v30 < v31;
        if (v30 != v31)
        {
          goto LABEL_26;
        }

        v32 = v18[3];
        v33 = v14[3];
        v27 = v32 < v33;
        if (v32 == v33 && (v34 = v18[4], v35 = v14[4], v27 = v34 < v35, v34 == v35))
        {
          sub_21DE779B4(v14);
          sub_21DE779B4(v18);
        }

        else
        {
LABEL_26:
          v36 = v27;
          sub_21DE779B4(v14);
          sub_21DE779B4(v18);
          if (v36)
          {
            if (a1 < a2 || a1 >= a2 + v20)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v20;
            goto LABEL_42;
          }
        }

        if (a1 < a4 || a1 >= a4 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v69 = a4 + v20;
        a4 += v20;
LABEL_42:
        a1 += v20;
        v70 = a1;
      }

      while (a4 < v25 && a2 < a3);
    }
  }

LABEL_80:
  sub_21DE80F60(&v70, &v69, &v68);
  return 1;
}

uint64_t sub_21DE80EC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21DE80F4C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21DE80F60(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for EventDateTimeComponents();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_21DE81044(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_21DEC7370();
  }

  result = sub_21DE81D40(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

size_t sub_21DE81124(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94410, &qword_21DED0E40);
  v10 = *(type metadata accessor for EventDateTimeComponents() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for EventDateTimeComponents() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_21DE812FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94438, &unk_21DED0E60);
    v3 = sub_21DEC72C0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      v12 = *(v3 + 40);
      result = sub_21DEC7760();
      v14 = result & v7;
      v15 = (result & v7) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v7);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v7;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

BOOL _s17SceneIntelligence19EventDateComponentsV1loiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 == v5;
  v7 = v3 < v5;
  if (v6)
  {
    v7 = a1[2] < a2[2];
  }

  v6 = v2 == v4;
  v8 = v2 < v4;
  if (v6)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

unint64_t sub_21DE81464()
{
  result = qword_27CE943B8;
  if (!qword_27CE943B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943B8);
  }

  return result;
}

uint64_t type metadata accessor for EventDateTimeComponents()
{
  result = qword_27CE9BA00;
  if (!qword_27CE9BA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s17SceneIntelligence23EventDateTimeComponentsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_21DEC6A20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94418, &qword_21DED0E48);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  v18 = v15;
  v19 = *(type metadata accessor for EventDateTimeComponents() + 36);
  v20 = *(v18 + 48);
  sub_21DE5C6E4(a1 + v19, v17, &qword_27CE94360, &qword_21DED08A8);
  sub_21DE5C6E4(a2 + v19, &v17[v20], &qword_27CE94360, &qword_21DED08A8);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_21DE5CD00(v17, &qword_27CE94360, &qword_21DED08A8);
      return 1;
    }

    goto LABEL_11;
  }

  sub_21DE5C6E4(v17, v12, &qword_27CE94360, &qword_21DED08A8);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_11:
    sub_21DE5CD00(v17, &qword_27CE94418, &qword_21DED0E48);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v20], v4);
  sub_21DE81CA4(&qword_27CE94420, MEMORY[0x277CC9A70]);
  v23 = sub_21DEC6D70();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_21DE5CD00(v17, &qword_27CE94360, &qword_21DED08A8);
  return (v23 & 1) != 0;
}

BOOL _s17SceneIntelligence23EventDateTimeComponentsV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v3 = a1[1];
    v4 = a2[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      v5 = a1[2];
      v6 = a2[2];
      v2 = v5 < v6;
      if (v5 == v6)
      {
        v7 = a1[3];
        v8 = a2[3];
        v2 = v7 < v8;
        if (v7 == v8)
        {
          return a1[4] < a2[4];
        }
      }
    }
  }

  return v2;
}

uint64_t sub_21DE818E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DE81950()
{
  result = qword_27CE943C0;
  if (!qword_27CE943C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943C0);
  }

  return result;
}

unint64_t sub_21DE819A8()
{
  result = qword_27CE943E0;
  if (!qword_27CE943E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943E0);
  }

  return result;
}

unint64_t sub_21DE81A04()
{
  result = qword_27CE943E8;
  if (!qword_27CE943E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943E8);
  }

  return result;
}

unint64_t sub_21DE81A5C()
{
  result = qword_27CE943F0;
  if (!qword_27CE943F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventDateComponents(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EventDateComponents(uint64_t result, int a2, int a3)
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

void sub_21DE81BB4()
{
  sub_21DE81C3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21DE81C3C()
{
  if (!qword_27CE94400)
  {
    sub_21DEC6A20();
    v0 = sub_21DEC71C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE94400);
    }
  }
}

uint64_t sub_21DE81CA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21DE81CEC()
{
  result = qword_27CE94440;
  if (!qword_27CE94440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94440);
  }

  return result;
}

uint64_t sub_21DE81D40(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_21DE7FB04(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_21DEC6F80();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_21DE7FB04(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_21DE7FB04(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_21DEC6F80();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_21DE82204()
{
  v0 = sub_21DE98EB8(&unk_282F27C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94950, &qword_21DED33E0);
  result = swift_arrayDestroy();
  qword_27CE9BA18 = v0;
  return result;
}

SceneIntelligence::STXContentType_optional __swiftcall STXContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t STXContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746361746E6F63;
  v3 = 0x4C676E696B726170;
  v4 = 0x7473694C6D657469;
  if (v1 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E657665;
  if (v1 != 1)
  {
    v5 = 1768319351;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21DE8238C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x796C696144;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x796C68746E6F4DLL;
    }

    else
    {
      v4 = 1701736270;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x796C6B656557;
    }

    else
    {
      v4 = 0x796C696144;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x796C68746E6F4DLL;
  if (a2 != 2)
  {
    v8 = 1701736270;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x796C6B656557;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DEC7610();
  }

  return v11 & 1;
}

uint64_t sub_21DE824B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646E6F4DLL;
  v3 = a1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746153;
  if (a1 != 5)
  {
    v6 = 0x7961646E7553;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756854;
  if (a1 != 3)
  {
    v8 = 0x796164697246;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657554;
  if (a1 != 1)
  {
    v10 = 0x616473656E646557;
    v9 = 0xE900000000000079;
  }

  if (a1)
  {
    v4 = v9;
  }

  else
  {
    v10 = 0x7961646E6F4DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v13 = 0xE800000000000000;
        v2 = 0x7961647372756854;
      }

      else
      {
        v13 = 0xE600000000000000;
        v2 = 0x796164697246;
      }

      goto LABEL_31;
    }

    if (a2 == 5)
    {
      v13 = 0xE800000000000000;
      v2 = 0x7961647275746153;
      goto LABEL_31;
    }

    v2 = 0x7961646E7553;
LABEL_30:
    v13 = 0xE600000000000000;
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v13 = 0xE700000000000000;
    v2 = 0x79616473657554;
  }

  else
  {
    v2 = 0x616473656E646557;
    v13 = 0xE900000000000079;
  }

LABEL_31:
  if (v11 == v2 && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21DEC7610();
  }

  return v14 & 1;
}

uint64_t sub_21DE82690(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007473694C20;
  v3 = 0x676E6970706F6853;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F44206F54;
    }

    else
    {
      v5 = 0x726568744FLL;
    }

    v6 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x6569646572676E49;
    }

    else
    {
      v5 = 0x676E6970706F6853;
    }

    if (v4)
    {
      v6 = 0xEB0000000073746ELL;
    }

    else
    {
      v6 = 0xED00007473694C20;
    }
  }

  v7 = 0x6F44206F54;
  if (a2 != 2)
  {
    v7 = 0x726568744FLL;
  }

  if (a2)
  {
    v3 = 0x6569646572676E49;
    v2 = 0xEB0000000073746ELL;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21DEC7610();
  }

  return v10 & 1;
}

uint64_t sub_21DE827DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x4C676E696B726170;
  v5 = 0xEF6E6F697461636FLL;
  v6 = 0xE800000000000000;
  v7 = 0x7473694C6D657469;
  if (a1 != 4)
  {
    v7 = 0x746361736E617274;
    v6 = 0xEB000000006E6F69;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x746E657665;
  if (a1 != 1)
  {
    v9 = 1768319351;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x746361746E6F63;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEF6E6F697461636FLL;
      if (v10 != 0x4C676E696B726170)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x7473694C6D657469)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB000000006E6F69;
      if (v10 != 0x746361736E617274)
      {
LABEL_34:
        v13 = sub_21DEC7610();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x746E657665)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1768319351)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x746361746E6F63)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21DE829DC()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE82AEC()
{
  *v0;
  *v0;
  *v0;
  sub_21DEC6E90();
}

uint64_t sub_21DE82BEC()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE82CF8()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

void sub_21DE82E18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746361746E6F63;
  v5 = 0xEF6E6F697461636FLL;
  v6 = 0x4C676E696B726170;
  v7 = 0xE800000000000000;
  v8 = 0x7473694C6D657469;
  if (v2 != 4)
  {
    v8 = 0x746361736E617274;
    v7 = 0xEB000000006E6F69;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x746E657665;
  if (v2 != 1)
  {
    v10 = 1768319351;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_21DE82F40()
{
  v1 = *v0;
  sub_21DEC72F0();

  v2 = MEMORY[0x223D4B400](v1, MEMORY[0x277D837D0]);
  MEMORY[0x223D4B2A0](v2);

  return 0xD00000000000001CLL;
}

uint64_t sub_21DE82FC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  STXContentType.init(rawValue:)(v6);
  v7 = v9;
  if (v9 == 6)
  {
    result = sub_21DEA0B7C();
    if (result == 2)
    {
      v7 = -8;
    }

    else
    {
      v7 = result & 1 | 0x80;
    }
  }

  else
  {
  }

  *a3 = v7;
  return result;
}

uint64_t sub_21DE83058@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC77C0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
  sub_21DE83418();
  sub_21DEC7660();
  v29 = a2;
  v6 = v30;
  v7 = v30 + 64;
  v8 = 1 << *(v30 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v30 + 64);
  v11 = (v8 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v32 = MEMORY[0x277D84F90];
  if (v10)
  {
LABEL_13:
    while (1)
    {
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = (*(v6 + 48) + ((v13 << 10) | (16 * v16)));
      v19 = *v17;
      v18 = v17[1];

      v20 = sub_21DEC7470();
      if (v20 > 2)
      {
        break;
      }

      if (v20)
      {
        if (v20 == 1)
        {

          v15 = 1;
          goto LABEL_26;
        }

        if (v20 == 2)
        {

          v15 = 2;
          goto LABEL_26;
        }

LABEL_6:
        result = sub_21DEA0B7C();
        if (result != 2)
        {
          v15 = result & 1 | 0x80;
LABEL_26:
          v28 = v15;
          goto LABEL_27;
        }

        if (!v10)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v28 = 0;
LABEL_27:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_21DE98530(0, *(v32 + 2) + 1, 1, v32);
        }

        result = v32;
        v22 = *(v32 + 2);
        v21 = *(v32 + 3);
        if (v22 >= v21 >> 1)
        {
          result = sub_21DE98530((v21 > 1), v22 + 1, 1, v32);
        }

        *(result + 16) = v22 + 1;
        v32 = result;
        *(result + v22 + 32) = v28;
        if (!v10)
        {
          goto LABEL_8;
        }
      }
    }

    switch(v20)
    {
      case 3:

        v15 = 3;
        goto LABEL_26;
      case 4:

        v15 = 4;
        goto LABEL_26;
      case 5:

        v15 = 5;
        goto LABEL_26;
    }

    goto LABEL_6;
  }

  while (1)
  {
LABEL_8:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_13;
    }
  }

  if (!*(v32 + 2))
  {

    v24 = *(v6 + 16);
    if (v24)
    {
      v25 = sub_21DE987FC(*(v6 + 16), 0);
      v26 = sub_21DE98A98(&v30, v25 + 4, v24, v6);
      sub_21DE98BF0();
      if (v26 == v24)
      {
LABEL_41:
        sub_21DE98BF8();
        swift_allocError();
        *v27 = v25;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0(v31);
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      __break(1u);
    }

    v25 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  result = v32;
  if (*(v32 + 2))
  {
    v23 = v32[32];

    __swift_destroy_boxed_opaque_existential_0(v31);
    *v29 = v23;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_21DE83418()
{
  result = qword_27CE94450;
  if (!qword_27CE94450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94448, &qword_21DED0E80);
    sub_21DE834A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94450);
  }

  return result;
}

unint64_t sub_21DE834A4()
{
  result = qword_27CE94458;
  if (!qword_27CE94458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94458);
  }

  return result;
}

void sub_21DE8351C(uint64_t *a1@<X8>)
{
  if (*v1 < 0)
  {
    *a1 = 0x7461636572706564;
    a1[1] = 0xEA00000000006465;
  }

  else
  {
    v2 = *v1;
    v3 = 0x746361746E6F63;
    v4 = 0xEF6E6F697461636FLL;
    v5 = 0x4C676E696B726170;
    v6 = 0xE800000000000000;
    v7 = 0x7473694C6D657469;
    if (v2 != 4)
    {
      v7 = 0x746361736E617274;
      v6 = 0xEB000000006E6F69;
    }

    if (v2 != 3)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE500000000000000;
    v9 = 0x746E657665;
    if (v2 != 1)
    {
      v9 = 1768319351;
      v8 = 0xE400000000000000;
    }

    if (*v1)
    {
      v3 = v9;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (*v1 <= 2u)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }

    if (*v1 <= 2u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }

    *a1 = v10;
    a1[1] = v11;
  }
}

void *sub_21DE8360C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 88))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE83668(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 96);

  return v3(&v5);
}

uint64_t sub_21DE836D0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
}

uint64_t sub_21DE8371C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t sub_21DE83768()
{
  v33 = 0;
  v34 = 0xE000000000000000;
  v1 = (*(*v0 + 88))(&v32);
  v2 = v32 >> 61;
  if ((v32 >> 61) <= 2)
  {
    if (v2)
    {
      v11 = v32 & 0x1FFFFFFFFFFFFFFFLL;
      if (v2 == 1)
      {
        v12 = (*(*v11 + 368))(v1);
        MEMORY[0x223D4B2A0](v12);

        v13 = sub_21DEBCBBC();
        v6 = sub_21DEBCBC4(v13, 10, 0xE100000000000000);
        v8 = v14;

        v9 = 0x746361746E6F63;
        v10 = 0xE700000000000000;
      }

      else
      {
        v24 = (*(*v11 + 144))(v1);
        MEMORY[0x223D4B2A0](v24);

        v25 = sub_21DEBCBBC();
        v6 = sub_21DEBCBC4(v25, 10, 0xE100000000000000);
        v8 = v26;

        v9 = 1768319319;
        v10 = 0xE400000000000000;
      }

      goto LABEL_13;
    }

    v18 = (*(*v32 + 144))(v1);
    MEMORY[0x223D4B2A0](v18);

    v19 = sub_21DEBCBBC();
    v20 = sub_21DEBCBC4(v19, 10, 0xE100000000000000);
    v22 = v21;

    v23 = sub_21DEBCAD8(0x746E657665, 0xE500000000000000, v20, v22);
    MEMORY[0x223D4B2A0](v23);
  }

  else
  {
    if (v2 <= 4)
    {
      v3 = v32 & 0x1FFFFFFFFFFFFFFFLL;
      if (v2 == 3)
      {
        v4 = (*(*v3 + 144))(v1);
        MEMORY[0x223D4B2A0](v4);

        v5 = sub_21DEBCBBC();
        v6 = sub_21DEBCBC4(v5, 10, 0xE100000000000000);
        v8 = v7;

        v9 = 0x4C676E696B726150;
        v10 = 0xEF6E6F697461636FLL;
      }

      else
      {
        v27 = (*(*v3 + 184))(v1);
        MEMORY[0x223D4B2A0](v27);

        v28 = sub_21DEBCBBC();
        v6 = sub_21DEBCBC4(v28, 10, 0xE100000000000000);
        v8 = v29;

        v9 = 0x7473694C6D657469;
        v10 = 0xE800000000000000;
      }

      goto LABEL_13;
    }

    if (v2 == 5)
    {
      v15 = (*(*(v32 & 0x1FFFFFFFFFFFFFFFLL) + 208))(v1);
      MEMORY[0x223D4B2A0](v15);

      v16 = sub_21DEBCBBC();
      v6 = sub_21DEBCBC4(v16, 10, 0xE100000000000000);
      v8 = v17;

      v9 = 0x746361736E617274;
      v10 = 0xEB000000006E6F69;
LABEL_13:
      v30 = sub_21DEBCAD8(v9, v10, v6, v8);
      MEMORY[0x223D4B2A0](v30);
    }
  }

  return v33;
}

uint64_t sub_21DE83B7C()
{
  v1 = (*(*v0 + 88))(&v7);
  v2 = v7 >> 61;
  if ((v7 >> 61) <= 2)
  {
    if (!v2)
    {
      v5 = (*(*v7 + 152))(v1);
LABEL_14:

      return v5 & 1;
    }

    v3 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    if (v2 == 1)
    {
      v4 = (*(*v3 + 376))(v1);
      goto LABEL_13;
    }

LABEL_4:
    v4 = (*(*v3 + 152))(v1);
LABEL_13:
    v5 = v4;
    goto LABEL_14;
  }

  if (v2 <= 4)
  {
    v3 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    if (v2 != 3)
    {
      v4 = (*(*v3 + 176))(v1);
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  if (v2 == 5)
  {
    v4 = (*(*(v7 & 0x1FFFFFFFFFFFFFFFLL) + 216))(v1);
    goto LABEL_13;
  }

  return 0;
}

uint64_t TextContentItem.ItemType.isValid.getter()
{
  v1 = *v0;
  v2 = v1 >> 61;
  if ((v1 >> 61) <= 2)
  {
    if (v2)
    {
      v1 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v2 == 1)
      {
        v3 = (*(*v1 + 376))();
        return v3 & 1;
      }
    }

LABEL_4:
    v3 = (*(*v1 + 152))();
    return v3 & 1;
  }

  if (v2 <= 4)
  {
    v1 &= 0x1FFFFFFFFFFFFFFFuLL;
    if (v2 != 3)
    {
      v3 = (*(*v1 + 176))();
      return v3 & 1;
    }

    goto LABEL_4;
  }

  if (v2 == 5)
  {
    v3 = (*(*(v1 & 0x1FFFFFFFFFFFFFFFLL) + 216))();
    return v3 & 1;
  }

  return 0;
}

uint64_t TextContentItem.__allocating_init(itemType:)(void *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t TextContentItem.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  TextContentItem.init(from:)(a1);
  return v2;
}

uint64_t TextContentItem.init(from:)(uint64_t *a1)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC77C0();
  if (v2)
  {
    type metadata accessor for TextContentItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_21DE98C70();
    sub_21DEC7660();
    *(v1 + 16) = v6;
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE84004(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_21DEC7800();
  (*(*v1 + 88))(&v6, v3);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_21DE98CC4();
  sub_21DEC76C0();

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_21DE840E0()
{
  v1 = *v0;
  v2 = 0x746E657665;
  v3 = 0x4C676E696B726170;
  v4 = 0x7473694C6D657469;
  if (v1 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746361746E6F63;
  if (v1 != 1)
  {
    v5 = 1768319351;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21DE841A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE98FCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE841D8(uint64_t a1)
{
  v2 = sub_21DE991D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE84214(uint64_t a1)
{
  v2 = sub_21DE991D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextContentItem.ItemType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = sub_21DEC6D20();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94478, &qword_21DED0E88);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  sub_21DE5CC9C(a1, v46);
  sub_21DE83058(v46, &v47);
  if (v2)
  {
    v44 = 0;
    v14 = sub_21DEBD114();
    (*(v5 + 16))(v8, v14, v45);
    v15 = v2;
    v16 = sub_21DEC6D00();
    v17 = sub_21DEC71B0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = a1;
      v19 = v18;
      v20 = swift_slowAlloc();
      v42 = a2;
      v21 = v20;
      v46[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v22 = sub_21DEC7710();
      v24 = sub_21DE56544(v22, v23, v46);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_21DE0D000, v16, v17, "Cannot decode text item: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v25 = v21;
      a2 = v42;
      MEMORY[0x223D4D340](v25, -1, -1);
      v26 = v19;
      a1 = v43;
      MEMORY[0x223D4D340](v26, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v45);
    v30 = 0xC000000000000000;
    goto LABEL_7;
  }

  v45 = v10;
  v27 = a2;
  v28 = v47;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE991D0();
  sub_21DEC77E0();
  if ((v28 & 0x80) == 0)
  {
    if (v28 > 2)
    {
      a2 = v27;
      if (v28 == 3)
      {
        type metadata accessor for ParkingLocation();
        v47 = 3;
        sub_21DE9A87C(&qword_27CE94498, v38, type metadata accessor for ParkingLocation);
        sub_21DEC7510();
        (*(v45 + 8))(v13, v9);
        v30 = v46[0] | 0x6000000000000000;
      }

      else
      {
        v34 = v45;
        if (v28 == 4)
        {
          type metadata accessor for ItemList();
          v47 = 4;
          sub_21DE9A87C(&qword_27CE94490, v35, type metadata accessor for ItemList);
          sub_21DEC7510();
          (*(v34 + 8))(v13, v9);
          v30 = v46[0] | 0x8000000000000000;
        }

        else
        {
          type metadata accessor for FinancialTransaction();
          v47 = 5;
          sub_21DE9A87C(&qword_27CE94488, v40, type metadata accessor for FinancialTransaction);
          sub_21DEC7510();
          (*(v34 + 8))(v13, v9);
          v30 = v46[0] | 0xA000000000000000;
        }
      }
    }

    else
    {
      a2 = v27;
      if (v28)
      {
        v32 = v45;
        if (v28 == 1)
        {
          type metadata accessor for Event();
          v47 = 0;
          sub_21DE9A87C(&qword_27CE944A8, v33, type metadata accessor for Event);
          sub_21DEC7510();
          (*(v32 + 8))(v13, v9);
          v30 = v46[0];
        }

        else
        {
          type metadata accessor for Wifi();
          v47 = 2;
          sub_21DE9A87C(&qword_27CE944A0, v39, type metadata accessor for Wifi);
          sub_21DEC7510();
          (*(v32 + 8))(v13, v9);
          v30 = v46[0] | 0x4000000000000000;
        }
      }

      else
      {
        type metadata accessor for Contact();
        v47 = 1;
        sub_21DE9A87C(&qword_27CE944B0, v37, type metadata accessor for Contact);
        sub_21DEC7510();
        (*(v45 + 8))(v13, v9);
        v30 = v46[0] | 0x2000000000000000;
      }
    }

LABEL_7:
    *a2 = v30;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_21DEA0BD0(a1, v28 & 1, v46);
  (*(v45 + 8))(v13, v9);
  v36 = v46[0];
  if ((~v46[0] & 0xF000000000000007) == 0)
  {
    v36 = 0xC000000000000000;
  }

  *v27 = v36;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TextContentItem.ItemType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE944B8, &qword_21DED0E90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE991D0();
  sub_21DEC7810();
  v10 = v8 >> 61;
  if ((v8 >> 61) <= 2)
  {
    if (v10)
    {
      v17 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      if (v10 == 1)
      {
        v16 = 1;
        type metadata accessor for Contact();
        v12 = &unk_27CE944E8;
        v13 = type metadata accessor for Contact;
      }

      else
      {
        v16 = 2;
        type metadata accessor for Wifi();
        v12 = &unk_27CE944D8;
        v13 = type metadata accessor for Wifi;
      }
    }

    else
    {
      v17 = v8;
      v16 = 0;
      type metadata accessor for Event();
      v12 = &unk_27CE944E0;
      v13 = type metadata accessor for Event;
    }

    goto LABEL_13;
  }

  if (v10 <= 4)
  {
    v17 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    if (v10 == 3)
    {
      v16 = 3;
      type metadata accessor for ParkingLocation();
      v12 = &unk_27CE944D0;
      v13 = type metadata accessor for ParkingLocation;
    }

    else
    {
      v16 = 4;
      type metadata accessor for ItemList();
      v12 = &unk_27CE944C8;
      v13 = type metadata accessor for ItemList;
    }

    goto LABEL_13;
  }

  if (v10 == 5)
  {
    v17 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v16 = 5;
    type metadata accessor for FinancialTransaction();
    v12 = &unk_27CE944C0;
    v13 = type metadata accessor for FinancialTransaction;
LABEL_13:
    sub_21DE9A87C(v12, v11, v13);
    sub_21DEC75D0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t TextContentItem.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TextContentItem.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21DE84D88@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::SubEvent::DateTimeElement::Recurrence::Frequency_optional __swiftcall SubEvent.DateTimeElement.Recurrence.Frequency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubEvent.DateTimeElement.Recurrence.Frequency.rawValue.getter()
{
  v1 = 0x796C696144;
  v2 = 0x796C68746E6F4DLL;
  if (*v0 != 2)
  {
    v2 = 1701736270;
  }

  if (*v0)
  {
    v1 = 0x796C6B656557;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DE84F2C()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE84FE0()
{
  *v0;
  *v0;
  *v0;
  sub_21DEC6E90();
}

uint64_t sub_21DE85080()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

void sub_21DE8513C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x796C696144;
  v4 = 0xE700000000000000;
  v5 = 0x796C68746E6F4DLL;
  if (*v1 != 2)
  {
    v5 = 1701736270;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x796C6B656557;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

SceneIntelligence::SubEvent::DateTimeElement::Recurrence::Weekday_optional __swiftcall SubEvent.DateTimeElement.Recurrence.Weekday.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubEvent.DateTimeElement.Recurrence.Weekday.rawValue.getter()
{
  v1 = 0x7961646E6F4DLL;
  v2 = *v0;
  v3 = 0x7961647275746153;
  if (v2 != 5)
  {
    v3 = 0x7961646E7553;
  }

  v4 = 0x7961647372756854;
  if (v2 != 3)
  {
    v4 = 0x796164697246;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657554;
  if (v2 != 1)
  {
    v5 = 0x616473656E646557;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21DE853B8()
{
  *v0;
  *v0;
  *v0;
  sub_21DEC6E90();
}

void sub_21DE854CC(uint64_t *a1@<X8>)
{
  v2 = 0x7961646E6F4DLL;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746153;
  if (v3 != 5)
  {
    v6 = 0x7961646E7553;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756854;
  if (v3 != 3)
  {
    v8 = 0x796164697246;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657554;
  if (v3 != 1)
  {
    v10 = 0x616473656E646557;
    v9 = 0xE900000000000079;
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11;
}

uint64_t sub_21DE8565C()
{
  v1 = 0x6854664F73796164;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636E657571657266;
  }
}

uint64_t sub_21DE856CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE992FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE856F4(uint64_t a1)
{
  v2 = sub_21DE9942C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE85730(uint64_t a1)
{
  v2 = sub_21DE9942C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21DE8576C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE857C8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 120))(&v4);
}

uint64_t sub_21DE85820@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8586C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_21DE858C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8590C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

double sub_21DE85974@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 184))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_21DE859D8(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return (*(*v3 + 192))(&v5);
}

__n128 sub_21DE85A38@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[4].n128_u64[0];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_21DE85A84(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  swift_beginAccess();
  v2[6] = v3;
  v2[7] = v4;
  v2[8] = v5;
  v6 = EventDateComponents.dateString.getter();
  return (*(*v2 + 168))(v6);
}

uint64_t (*sub_21DE85B10(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DE85B64;
}

uint64_t sub_21DE85B64(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v7 = *(v5 + 48);
    v8 = *(v5 + 64);
    v6 = EventDateComponents.dateString.getter();
    return (*(*v5 + 168))(v6);
  }

  return result;
}

uint64_t sub_21DE85BDC()
{
  (*(*v0 + 112))(&v4);
  if (v4 > 2u)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_21DEC7610();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_21DE85CBC()
{
  v1 = v0;
  v36 = 0;
  v37 = 0xE000000000000000;
  (*(*v0 + 112))(&v34);
  v2 = 0xE500000000000000;
  v3 = 0x796C696144;
  v4 = 0xE700000000000000;
  v5 = 0x796C68746E6F4DLL;
  if (v34 != 2)
  {
    v5 = 1701736270;
    v4 = 0xE400000000000000;
  }

  if (v34)
  {
    v3 = 0x796C6B656557;
    v2 = 0xE600000000000000;
  }

  if (v34 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v34 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v8 = sub_21DEBCAD8(0x636E657571657266, 0xE900000000000079, v6, v7);
  MEMORY[0x223D4B2A0](v8);

  v34 = 0;
  v35 = 0xE000000000000000;
  v10 = (*(*v0 + 136))(v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 32;
    do
    {
      v13 = *(v10 + v12);
      v14 = 0x7961646E7553;
      if (v13 == 5)
      {
        v14 = 0x7961647275746153;
        v15 = 0xE800000000000000;
      }

      else
      {
        v15 = 0xE600000000000000;
      }

      v16 = 0x7961647372756854;
      if (v13 == 3)
      {
        v17 = 0xE800000000000000;
      }

      else
      {
        v16 = 0x796164697246;
        v17 = 0xE600000000000000;
      }

      if (*(v10 + v12) <= 4u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0x616473656E646557;
      if (v13 == 1)
      {
        v18 = 0x79616473657554;
      }

      v19 = 0xE900000000000079;
      if (v13 == 1)
      {
        v19 = 0xE700000000000000;
      }

      if (!*(v10 + v12))
      {
        v18 = 0x7961646E6F4DLL;
        v19 = 0xE600000000000000;
      }

      if (*(v10 + v12) <= 2u)
      {
        v20 = v18;
      }

      else
      {
        v20 = v14;
      }

      if (*(v10 + v12) <= 2u)
      {
        v21 = v19;
      }

      else
      {
        v21 = v15;
      }

      MEMORY[0x223D4B2A0](v20, v21);

      MEMORY[0x223D4B2A0](10, 0xE100000000000000);

      ++v12;
      --v11;
    }

    while (v11);

    v23 = v34;
    v22 = v35;
  }

  else
  {

    v23 = 0;
    v22 = 0xE000000000000000;
  }

  v24 = sub_21DEBCBBC();
  v25 = sub_21DEBCBC4(v24, v23, v22);
  v27 = v26;

  v28 = sub_21DEBCAD8(0x6854664F73796164, 0xED00006B65655765, v25, v27);
  MEMORY[0x223D4B2A0](v28);

  v30 = (*(*v1 + 160))(v29);
  v32 = sub_21DEBCAD8(0xD000000000000011, 0x800000021DED9DE0, v30, v31);
  MEMORY[0x223D4B2A0](v32);

  return v36;
}

uint64_t SubEvent.DateTimeElement.Recurrence.__allocating_init(frequency:daysOfTheWeek:recurrenceEndDate:)(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  SubEvent.DateTimeElement.Recurrence.init(frequency:daysOfTheWeek:recurrenceEndDate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SubEvent.DateTimeElement.Recurrence.init(frequency:daysOfTheWeek:recurrenceEndDate:)(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 16) = *a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;

  v7._countAndFlagsBits = a3;
  v7._object = a4;
  EventDateComponents.init(string:)(v7);
  if (v8)
  {

    v12.value = 0;
    v12.is_nil = 1;
    v13.value = 0;
    v13.is_nil = 1;
    v14.value = 0;
    v14.is_nil = 1;
    EventDateComponents.init(year:month:day:)(v12, v13, v14);
  }

  *(v4 + 48) = v10;
  *(v4 + 64) = v11;
  return v4;
}

uint64_t SubEvent.DateTimeElement.Recurrence.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  SubEvent.DateTimeElement.Recurrence.init(from:)(a1);
  return v2;
}

void *SubEvent.DateTimeElement.Recurrence.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE944F0, &qword_21DED0E98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9942C();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for SubEvent.DateTimeElement.Recurrence();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = 0;
    sub_21DE994A4();
    sub_21DEC74E0();
    v11 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94508, &qword_21DED0EA0);
    v28 = 1;
    sub_21DE994F8();
    sub_21DEC74E0();
    v13 = v25;
    if (!v25)
    {
      v13 = MEMORY[0x277D84F90];
    }

    *(v1 + 24) = v13;
    if (v11 == 4)
    {
      if (*(v13 + 16))
      {
        v14 = 1;
      }

      else
      {
        v14 = 3;
      }

      *(v1 + 16) = v14;
    }

    else
    {
      *(v1 + 16) = v11;
    }

    LOBYTE(v25) = 2;
    v15 = sub_21DEC74A0();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    v3[4] = v17;
    v3[5] = v18;

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    v32 = EventDateComponents.init(string:)(v19);
    if (v20)
    {

      v29.value = 0;
      v29.is_nil = 1;
      v30.value = 0;
      v30.is_nil = 1;
      v31.value = 0;
      v31.is_nil = 1;
      v33 = EventDateComponents.init(year:month:day:)(v29, v30, v31);
      (*(v6 + 8))(v9, v5, v33.day);
      v21 = v25;
      v22 = v26;
      v23 = v27;
    }

    else
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      (*(v6 + 8))(v9, v5, v32.day);
    }

    v3[6] = v21;
    v3[7] = v22;
    v3[8] = v23;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DE8646C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94520, &qword_21DED0EA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9942C();
  v11 = sub_21DEC7810();
  (*(*v3 + 112))(&v18, v11);
  v17[14] = 0;
  sub_21DE995D0();
  v12 = sub_21DEC75D0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*(*v3 + 136))(v12);
  v17[13] = 1;
  sub_21DE99624();
  sub_21DE6C7F4();

  v15 = (*(*v3 + 160))(v14);
  v17[12] = 2;
  sub_21DE6C7C8(v15, v16);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_21DE866EC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE867B0()
{
  v1 = 0x65746144646E65;
  if (*v0 != 1)
  {
    v1 = 0x6E65727275636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_21DE86814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE99678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE8683C(uint64_t a1)
{
  v2 = sub_21DE99804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE86878(uint64_t a1)
{
  v2 = sub_21DE99804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE868B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE86900(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_21DE86968@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE869B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);

  return v4(v2, v3);
}

uint64_t sub_21DE86A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DE77950(a1, v7);
  return (*(**a2 + 176))(v7);
}

uint64_t sub_21DE86B18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventDateTimeComponents();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents;
  swift_beginAccess();
  sub_21DE997A0(a1, v2 + v8);
  swift_endAccess();
  sub_21DE77950(v2 + v8, v7);
  v9 = EventDateTimeComponents.dateString.getter();
  v11 = v10;
  sub_21DE779B4(v7);
  (*(*v2 + 128))(v9, v11);
  return sub_21DE779B4(a1);
}

void (*sub_21DE86C20(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for EventDateTimeComponents() - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  swift_beginAccess();
  return sub_21DE86CE0;
}

void sub_21DE86CE0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    sub_21DE77950(v5 + v3[5], v3[4]);
    v6 = EventDateTimeComponents.dateString.getter();
    v8 = v7;
    sub_21DE779B4(v4);
    (*(*v5 + 128))(v6, v8);
  }

  free(v4);

  free(v3);
}

uint64_t sub_21DE86DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DE77950(a1, v7);
  return (*(**a2 + 200))(v7);
}

uint64_t sub_21DE86E9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_21DE77950(v2 + v4, a2);
}

uint64_t sub_21DE86EF0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventDateTimeComponents();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents;
  swift_beginAccess();
  sub_21DE997A0(a1, v2 + v8);
  swift_endAccess();
  sub_21DE77950(v2 + v8, v7);
  v9 = EventDateTimeComponents.dateString.getter();
  v11 = v10;
  sub_21DE779B4(v7);
  (*(*v2 + 152))(v9, v11);
  return sub_21DE779B4(a1);
}

void (*sub_21DE86FF8(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for EventDateTimeComponents() - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  swift_beginAccess();
  return sub_21DE870B8;
}

void sub_21DE870B8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    sub_21DE77950(v5 + v3[5], v3[4]);
    v6 = EventDateTimeComponents.dateString.getter();
    v8 = v7;
    sub_21DE779B4(v4);
    (*(*v5 + 152))(v6, v8);
  }

  free(v4);

  free(v3);
}

uint64_t sub_21DE87178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE871C4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 224);

  return v3(v4);
}

uint64_t sub_21DE87218()
{
  v1 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_recurrence;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_21DE87260(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_recurrence;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21DE87318()
{
  v1 = (*(*v0 + 120))();
  v21 = sub_21DEBCAD8(0x7461447472617473, 0xE900000000000065, v1, v2);
  v3 = (*(*v0 + 144))();
  v5 = sub_21DEBCAD8(0x65746144646E65, 0xE700000000000000, v3, v4);
  MEMORY[0x223D4B2A0](v5);

  v7 = *(*v0 + 216);
  v8 = v7(v6);
  v9 = (*(*v8 + 208))(v8);

  if (v9)
  {
    v11 = v7(v10);
    v12 = (*(*v11 + 216))(v11);
    v14 = v13;

    MEMORY[0x223D4B2A0](v12, v14);

    MEMORY[0x223D4B2A0](41, 0xE100000000000000);
    v15 = sub_21DEBCBBC();
    v16 = sub_21DEBCBC4(v15, 10, 0xE100000000000000);
    v18 = v17;

    v19 = sub_21DEBCAD8(0x6E65727275636572, 0xEA00000000006563, v16, v18);
    MEMORY[0x223D4B2A0](v19);
  }

  return v21;
}

BOOL sub_21DE87530()
{
  v1 = type metadata accessor for EventDateTimeComponents();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 168))(v3);
  v6 = EventDateTimeComponents.isValid.getter();
  sub_21DE779B4(v5);
  return v6;
}

uint64_t SubEvent.DateTimeElement.__allocating_init(startDate:endDate:recurrence:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  SubEvent.DateTimeElement.init(startDate:endDate:recurrence:)(a1, a2, a3, a4, a5);
  return v13;
}

void *SubEvent.DateTimeElement.init(startDate:endDate:recurrence:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v29 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = type metadata accessor for EventDateTimeComponents();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v28 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v27 - v22;
  v5[2] = a1;
  v5[3] = a2;
  v27 = a3;
  v5[4] = a3;
  v5[5] = a4;

  EventDateTimeComponents.init(string:)(a1, a2, v16);
  v24 = *(v18 + 56);
  v24(v16, 0, 1, v17);
  sub_21DE77A74(v16, v23);
  sub_21DE77A74(v23, v5 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents);
  EventDateTimeComponents.init(string:)(v27, a4, v14);
  v24(v14, 0, 1, v17);
  v25 = v28;
  sub_21DE77A74(v14, v28);
  sub_21DE77A74(v25, v5 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents);
  *(v5 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_recurrence) = v29;
  return v5;
}

uint64_t SubEvent.DateTimeElement.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SubEvent.DateTimeElement.init(from:)(a1);
  return v5;
}

void *SubEvent.DateTimeElement.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v8 = type metadata accessor for EventDateTimeComponents();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94538, &qword_21DED0EB8);
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_21DE99804();
  v21 = v55;
  sub_21DEC77E0();
  if (v21)
  {
    v22 = v57;
    type metadata accessor for SubEvent.DateTimeElement();
    v40 = *(*v22 + 48);
    v41 = *(*v22 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v51 = v14;
    v55 = v12;
    LOBYTE(v58) = 0;
    v23 = sub_21DEC74A0();
    v25 = v24;
    v26 = v23;
    if (v24)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    LOBYTE(v58) = 1;
    v28 = sub_21DEC74A0();
    v22 = v57;
    v49 = v18;
    v50 = v15;
    if (v25)
    {
      v30 = v26;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v28;
    }

    else
    {
      v31 = 0;
    }

    v57[2] = v30;
    v22[3] = v27;
    if (v29)
    {
      v32 = v29;
    }

    else
    {
      v32 = 0xE000000000000000;
    }

    v48 = v31;
    v22[4] = v31;
    v22[5] = v32;

    EventDateTimeComponents.init(string:)(v30, v27, v7);
    v33 = *(v53 + 56);
    v34 = v8;
    v33(v7, 0, 1, v8);
    v35 = v51;
    sub_21DE77A74(v7, v51);
    v36 = v52;
    v52 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents;
    sub_21DE77A74(v35, v22 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents);
    EventDateTimeComponents.init(string:)(v48, v32, v36);
    v33(v36, 0, 1, v34);
    v37 = v55;
    sub_21DE77A74(v36, v55);
    v38 = v49;
    sub_21DE77A74(v37, v22 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents);
    type metadata accessor for SubEvent.DateTimeElement.Recurrence();
    LOBYTE(v58) = 2;
    sub_21DE9A87C(&qword_27CE94548, v39, type metadata accessor for SubEvent.DateTimeElement.Recurrence);
    sub_21DEC74E0();
    v43 = v60;
    if (v60)
    {
      (*(v54 + 8))(v38, v50);
    }

    else
    {
      v43 = swift_allocObject();
      *(v43 + 16) = 3;
      *(v43 + 24) = MEMORY[0x277D84F90];
      *(v43 + 32) = 0;
      *(v43 + 40) = 0xE000000000000000;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      v64 = EventDateComponents.init(string:)(v44);
      v46 = v54;
      if (v45)
      {

        v61.value = 0;
        v61.is_nil = 1;
        v62.value = 0;
        v62.is_nil = 1;
        v63.value = 0;
        v63.is_nil = 1;
        v65 = EventDateComponents.init(year:month:day:)(v61, v62, v63);
        (*(v46 + 8))(v38, v50, v65.day);
      }

      else
      {
        (*(v54 + 8))(v38, v50, v64.day);
      }

      v47 = v59;
      *(v43 + 48) = v58;
      *(v43 + 64) = v47;
      v22 = v57;
    }

    *(v22 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_recurrence) = v43;
  }

  __swift_destroy_boxed_opaque_existential_0(v56);
  return v22;
}

uint64_t sub_21DE88184(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventDateTimeComponents();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94550, &qword_21DED0EC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99804();
  v14 = sub_21DEC7810();
  v15 = (*(*v2 + 120))(v14);
  v33 = 0;
  v16 = v31[0];
  sub_21DE6C8D8(v15, v17, &v33, 1);
  if (v16)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {

    (*(*v2 + 192))(v19);
    v20 = EventDateTimeComponents.isValid.getter();
    v21 = sub_21DE779B4(v7);
    if (v20)
    {
      v22 = (*(*v2 + 144))(v21);
      v24 = v23;
      v32[0] = 1;
      v25 = sub_21DE56BF8();
      sub_21DE6C8D8(v22, v24, v32, v25 & 1);
    }

    v26 = *(*v2 + 216);
    v27 = v26(v21);
    v28 = (*(*v27 + 208))(v27);

    if (v28)
    {
      v31[1] = v26(v29);
      v32[1] = 2;
      type metadata accessor for SubEvent.DateTimeElement.Recurrence();
      sub_21DE9A87C(&qword_27CE94558, v30, type metadata accessor for SubEvent.DateTimeElement.Recurrence);
      sub_21DEC75D0();
    }

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t SubEvent.DateTimeElement.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_21DE779B4(v0 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents);
  sub_21DE779B4(v0 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents);
  v3 = *(v0 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_recurrence);

  return v0;
}

uint64_t SubEvent.DateTimeElement.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_21DE779B4(v0 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents);
  sub_21DE779B4(v0 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents);
  v3 = *(v0 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_recurrence);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_21DE8861C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 264))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE886E8()
{
  v1 = *v0;
  v2 = 0x746954746E657665;
  v3 = 0x6E6F697461636F6CLL;
  v4 = 0x7365746F6ELL;
  if (v1 != 3)
  {
    v4 = 7107189;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D695465746164;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21DE88788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE998A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE887B0(uint64_t a1)
{
  v2 = sub_21DE99A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE887EC(uint64_t a1)
{
  v2 = sub_21DE99A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE88828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE88874(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_21DE888DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE88928(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_21DE8897C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_21DE889B4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_21DE889FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE88A48(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);

  return v4(v2, v3);
}

uint64_t sub_21DE88AB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE88AFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 200);

  return v4(v2, v3);
}

uint64_t sub_21DE88B64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE88BB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 224);

  return v4(v2, v3);
}

uint64_t sub_21DE88C18()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_21DE88C64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_21DE88D08()
{
  v1 = v0;
  v2 = (*(*v0 + 120))();
  v24 = sub_21DEBCAD8(0x656C746974, 0xE500000000000000, v2, v3);
  v4 = (*(*v0 + 144))();
  v5 = (*(*v4 + 240))();
  MEMORY[0x223D4B2A0](v5);

  v6 = sub_21DEBCBBC();
  v7 = sub_21DEBCBC4(v6, 10, 0xE100000000000000);
  v9 = v8;

  v10 = sub_21DEBCAD8(0x656D695465746164, 0xEF746E656D656C45, v7, v9);
  MEMORY[0x223D4B2A0](v10);

  v12 = (*(*v1 + 168))(v11);
  v14 = sub_21DEBCAD8(0x6E6F697461636F6CLL, 0xE800000000000000, v12, v13);
  MEMORY[0x223D4B2A0](v14);

  v16 = (*(*v1 + 192))(v15);
  v18 = sub_21DEBCAD8(0x7365746F6ELL, 0xE500000000000000, v16, v17);
  MEMORY[0x223D4B2A0](v18);

  v20 = (*(*v1 + 216))(v19);
  v22 = sub_21DEBCAD8(7107189, 0xE300000000000000, v20, v21);
  MEMORY[0x223D4B2A0](v22);

  return v24;
}

uint64_t sub_21DE88F64()
{
  v1 = (*(*v0 + 144))();
  v2 = (*(*v1 + 248))(v1);

  return v2 & 1;
}

uint64_t sub_21DE88FDC()
{
  type metadata accessor for SubEvent.DateTimeElement.Recurrence();
  v0 = swift_allocObject();
  *(v0 + 16) = 3;
  *(v0 + 24) = MEMORY[0x277D84F90];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  EventDateComponents.init(string:)(v1);
  if (v2)
  {

    v10.value = 0;
    v10.is_nil = 1;
    v11.value = 0;
    v11.is_nil = 1;
    v12.value = 0;
    v12.is_nil = 1;
    EventDateComponents.init(year:month:day:)(v10, v11, v12);
  }

  *(v0 + 48) = v8;
  *(v0 + 64) = v9;
  v3 = type metadata accessor for SubEvent.DateTimeElement();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  SubEvent.DateTimeElement.init(startDate:endDate:recurrence:)(0, 0xE000000000000000, 0, 0xE000000000000000, v0);
  return v6;
}

void *SubEvent.__allocating_init(title:dateTimeElement:location:notes:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  result[10] = a9;
  return result;
}

void *SubEvent.init(title:dateTimeElement:location:notes:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  v9[7] = a6;
  v9[8] = a7;
  v9[9] = a8;
  v9[10] = a9;
  return v9;
}

uint64_t SubEvent.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  SubEvent.init(from:)(a1);
  return v2;
}

void *SubEvent.init(from:)(uint64_t *a1)
{
  v3 = sub_21DEC6770();
  v90 = *(v3 - 8);
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94560, &unk_21DED0EC8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v82 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21DE99A60();
  sub_21DEC77E0();
  if (v1)
  {
    v18 = v92;
    v17 = v93;
LABEL_4:
    type metadata accessor for SubEvent();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v14 = v8;
  v91 = v6;
  v89 = v3;
  LOBYTE(v94) = 0;
  v15 = sub_21DEC74A0();
  if (v16)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v16)
  {
    v21 = v16;
  }

  v17 = v93;
  v93[2] = v20;
  v17[3] = v21;
  v22 = type metadata accessor for SubEvent.DateTimeElement();
  LOBYTE(v94) = 1;
  sub_21DE9A87C(&qword_27CE94570, 255, type metadata accessor for SubEvent.DateTimeElement);
  sub_21DEC74E0();
  v18 = v92;
  v23 = v14;
  v88 = v11;
  v24 = v97;
  if (!v97)
  {
    type metadata accessor for SubEvent.DateTimeElement.Recurrence();
    v25 = swift_allocObject();
    *(v25 + 16) = 3;
    *(v25 + 24) = MEMORY[0x277D84F90];
    *(v25 + 32) = 0;
    *(v25 + 40) = 0xE000000000000000;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    EventDateComponents.init(string:)(v26);
    if (v27)
    {

      v98.value = 0;
      v98.is_nil = 1;
      v99.value = 0;
      v99.is_nil = 1;
      v100.value = 0;
      v100.is_nil = 1;
      EventDateComponents.init(year:month:day:)(v98, v99, v100);
    }

    v28 = v95;
    *(v25 + 48) = v94;
    *(v25 + 64) = v28;
    v29 = *(v22 + 48);
    v30 = *(v22 + 52);
    v24 = swift_allocObject();
    SubEvent.DateTimeElement.init(startDate:endDate:recurrence:)(0, 0xE000000000000000, 0, 0xE000000000000000, v25);
    v23 = v14;
  }

  v17[4] = v24;
  LOBYTE(v94) = 2;
  v31 = sub_21DEC74A0();
  v32 = 0;
  *&v94 = 124;
  *(&v94 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v31);
  *(&v82 - 2) = &v94;
  v35 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE81448, (&v82 - 4), v33, v34, &v82);
  v86 = 0;
  v87 = v23;
  v36 = *(v35 + 16);
  if (v36)
  {
    v84 = 0;
    v85 = v7;
    v97 = MEMORY[0x277D84F90];
    sub_21DE52560(0, v36, 0);
    v37 = v97;
    v38 = (v90 + 8);
    v83 = v35;
    v39 = (v35 + 56);
    do
    {
      v40 = *(v39 - 1);
      v41 = *v39;
      v94 = *(v39 - 3);
      v95 = v40;
      v96 = v41;

      sub_21DEC6760();
      sub_21DE99AD8();
      v42 = sub_21DEC7230();
      v44 = v43;
      (*v38)(v91, v89);

      v97 = v37;
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_21DE52560((v45 > 1), v46 + 1, 1);
        v37 = v97;
      }

      *(v37 + 16) = v46 + 1;
      v47 = v37 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
      v39 += 4;
      --v36;
    }

    while (v36);

    v18 = v92;
    v17 = v93;
    v32 = v84;
    v7 = v85;
    v23 = v87;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  *&v94 = v37;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
  v49 = sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40);
  v84 = v48;
  v50 = v49;
  v51 = sub_21DEC6D60();
  v53 = v52;

  v17[5] = v51;
  v17[6] = v53;
  LOBYTE(v94) = 3;
  v54 = v88;
  v55 = v86;
  v56 = sub_21DEC74A0();
  if (v55)
  {
    (*(v23 + 8))(v54, v7);
    v61 = v17[3];

    v62 = v17[4];

    if (!v32)
    {
      v63 = v17[6];
    }

    goto LABEL_4;
  }

  v86 = v50;
  if (v57)
  {
    v58 = v56;
  }

  else
  {
    v58 = 0;
  }

  if (v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  v17[7] = v58;
  v17[8] = v59;
  LOBYTE(v94) = 4;
  v60 = sub_21DEC74A0();
  *&v94 = 124;
  *(&v94 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v60);
  *(&v82 - 2) = &v94;
  v66 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE821E8, (&v82 - 4), v64, v65, &v82);
  v67 = *(v66 + 16);
  if (v67)
  {
    v85 = v7;
    v97 = MEMORY[0x277D84F90];
    sub_21DE52560(0, v67, 0);
    v68 = v97;
    v90 += 8;
    v83 = v66;
    v69 = (v66 + 56);
    do
    {
      v70 = *(v69 - 1);
      v71 = *v69;
      v94 = *(v69 - 3);
      v95 = v70;
      v96 = v71;

      sub_21DEC6760();
      sub_21DE99AD8();
      v72 = sub_21DEC7230();
      v74 = v73;
      (*v90)(v91, v89);

      v97 = v68;
      v76 = *(v68 + 16);
      v75 = *(v68 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_21DE52560((v75 > 1), v76 + 1, 1);
        v68 = v97;
      }

      *(v68 + 16) = v76 + 1;
      v77 = v68 + 16 * v76;
      *(v77 + 32) = v72;
      *(v77 + 40) = v74;
      v69 += 4;
      --v67;
    }

    while (v67);

    v18 = v92;
    v17 = v93;
    v7 = v85;
    v78 = v68;
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  *&v94 = v78;
  v79 = sub_21DEC6D60();
  v81 = v80;

  (*(v87 + 8))(v88, v7);
  v17[9] = v79;
  v17[10] = v81;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v17;
}

uint64_t sub_21DE89A70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94580, &qword_21DED0ED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99A60();
  v11 = sub_21DEC7810();
  v12 = (*(*v3 + 120))(v11);
  v33 = 0;
  sub_21DE6C7C8(v12, v13);
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v15 = *(*v3 + 144);
    v16 = v15(v14);
    v17 = (*(*v16 + 248))(v16);

    if (v17)
    {
      v28[1] = v15(v18);
      v29 = 1;
      type metadata accessor for SubEvent.DateTimeElement();
      sub_21DE9A87C(&qword_27CE94588, 255, type metadata accessor for SubEvent.DateTimeElement);
      sub_21DEC75D0();
    }

    v19 = (*(*v3 + 168))(v18);
    v32 = 2;
    sub_21DE6C7C8(v19, v20);

    v22 = (*(*v3 + 192))(v21);
    v31 = 3;
    sub_21DE6C7C8(v22, v23);

    v26 = (*(*v3 + 216))(v25);
    v30 = 4;
    sub_21DE6C7C8(v26, v27);
    (*(v6 + 8))(v9, v5);
  }
}

void *SubEvent.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return v0;
}

uint64_t SubEvent.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_21DE89EB4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 264))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE89FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657645646C696863 && a2 == 0xEB0000000073746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DE8A02C(uint64_t a1)
{
  v2 = sub_21DE99B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE8A068(uint64_t a1)
{
  v2 = sub_21DE99B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE8A0A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8A0F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t sub_21DE8A144()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_21DE8A17C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_21DE8A1C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8A210(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t sub_21DE8A268()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_21DE8A2A4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

char *sub_21DE8A2EC()
{
  v1 = (*(*v0 + 96))();
  v2 = (*(*v1 + 240))(v1);

  v25 = v2;

  MEMORY[0x223D4B2A0](10, 0xE100000000000000);

  v4 = (*(*v0 + 120))(v3);
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
    sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40);
    v16 = sub_21DEC6D60();
    v18 = v17;

    MEMORY[0x223D4B2A0](v16, v18);

    v19 = sub_21DEBCBBC();
    v20 = sub_21DEBCBC4(v19, 10, 0xE100000000000000);
    v22 = v21;

    v23 = sub_21DEBCAD8(0x657645646C696863, 0xEB0000000073746ELL, v20, v22);
    MEMORY[0x223D4B2A0](v23);

    return v25;
  }

  v6 = sub_21DEC7400();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = MEMORY[0x277D84F90];
  result = sub_21DE52560(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D4B690](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = (*(*v9 + 240))();
      v12 = v11;

      v14 = *(v24 + 16);
      v13 = *(v24 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21DE52560((v13 > 1), v14 + 1, 1);
      }

      ++v8;
      *(v24 + 16) = v14 + 1;
      v15 = v24 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v6 != v8);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DE8A60C()
{
  v1 = v0;
  v2 = (*(*v0 + 96))();
  v3 = (*(*v2 + 144))(v2);

  v5 = (*(*v3 + 248))(v4);

  if (v5)
  {
    return 1;
  }

  v8 = (*(*v1 + 120))(v6);
  v9 = v8;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_18:
    v11 = sub_21DEC7400();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  do
  {
    v7 = v11 != v12;
    if (v11 == v12)
    {
      break;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x223D4B690](v12, v9);
      if (__OFADD__(v12, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v13 = *(v9 + 8 * v12 + 32);

      if (__OFADD__(v12, 1))
      {
        goto LABEL_14;
      }
    }

    v14 = (*(*v13 + 248))();

    ++v12;
  }

  while ((v14 & 1) == 0);

  return v7;
}

uint64_t Event.__allocating_init(mainEvent:childEvents:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t Event.init(mainEvent:childEvents:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Event.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Event.init(from:)(a1);
  return v2;
}

uint64_t Event.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94590, &qword_21DED0EE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  sub_21DE5CC9C(a1, v15);
  type metadata accessor for SubEvent();
  v10 = swift_allocObject();
  SubEvent.init(from:)(v15);
  if (v2)
  {
    type metadata accessor for Event();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v10;
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21DE99B2C();
    sub_21DEC77E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945A0, &qword_21DED0EE8);
    sub_21DE99B80();
    sub_21DEC74E0();
    v13 = v15[0];
    if (!v15[0])
    {
      v13 = MEMORY[0x277D84F90];
    }

    *(v3 + 24) = v13;
    sub_21DEA2820(a1);
    sub_21DE8B4CC();
    sub_21DE8AE24();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DE8AACC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945B8, &qword_21DED0EF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  v10 = *(*(*v1 + 96))(v7);
  (*(v10 + 272))(a1);

  v26 = v2;
  if (!v2)
  {
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21DE99B2C();
    v25 = v9;
    v13 = sub_21DEC7810();
    v14 = (*(*v1 + 120))(v13);
    v15 = v14;
    v27 = MEMORY[0x277D84F90];
    if (v14 >> 62)
    {
      goto LABEL_17;
    }

    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      while (1)
      {
        v23 = v5;
        v24 = v4;
        v17 = 0;
        v4 = v15 & 0xC000000000000001;
        v5 = v15 & 0xFFFFFFFFFFFFFF8;
        while (v4)
        {
          v18 = MEMORY[0x223D4B690](v17, v15);
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v5 = v23;
            v4 = v24;
            goto LABEL_18;
          }

LABEL_10:
          if ((*(*v18 + 248))())
          {
            sub_21DEC7380();
            v20 = *(v27 + 16);
            sub_21DEC73A0();
            sub_21DEC73B0();
            sub_21DEC7390();
          }

          else
          {
          }

          ++v17;
          if (v19 == v16)
          {
            goto LABEL_15;
          }
        }

        if (v17 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v16 = sub_21DEC7400();
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      v18 = *(v15 + 8 * v17 + 32);

      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:

    type metadata accessor for SubEvent();
    sub_21DE9A87C(&qword_27CE945C0, v21, type metadata accessor for SubEvent);
    v22 = v25;
    sub_21DE6C7F4();
    (*(v5 + 8))(v22, v4);
  }

  return result;
}

uint64_t sub_21DE8AE24()
{
  v1 = type metadata accessor for EventDateTimeComponents();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v46 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v50 = (&v46 - v6);
  MEMORY[0x28223BE20](v5);
  v47 = (&v46 - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94960, &qword_21DED33F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DED0E70;
  *(inited + 32) = (*(*v0 + 96))();
  v9 = (*(*v0 + 120))();
  v51.n128_u64[0] = inited;
  sub_21DE98880(v9);
  v10 = v51.n128_u64[0];
  v51.n128_u64[0] = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
LABEL_39:
    v11 = sub_21DEC7400();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D4B690](v13, v10);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v12 = v51.n128_u64[0];
          break;
        }
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_39;
        }

        v15 = *(v10 + 8 * v13 + 32);

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_17;
        }
      }

      v17 = (*(*v15 + 144))();
      v18 = (*(*v17 + 216))(v17);

      (*(*v18 + 112))(&v53, v19);

      if (v53 > 1u || v53)
      {
        v20 = sub_21DEC7610();

        if ((v20 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      else
      {
      }

      sub_21DEC7380();
      v14 = *(v51.n128_u64[0] + 16);
      sub_21DEC73A0();
      sub_21DEC73B0();
      sub_21DEC7390();
LABEL_7:
      ++v13;
      if (v16 == v11)
      {
        goto LABEL_18;
      }
    }
  }

  v22 = v47;
  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    v23 = *(v12 + 16);
    if (v23)
    {
      goto LABEL_22;
    }
  }

  result = sub_21DEC7400();
  v23 = result;
  if (!result)
  {
  }

LABEL_22:
  if (v23 >= 1)
  {
    v24 = 0;
    v48 = v12 & 0xC000000000000001;
    v49 = v12;
    do
    {
      if (v48)
      {
        v25 = MEMORY[0x223D4B690](v24, v12);
      }

      else
      {
        v25 = *(v12 + 8 * v24 + 32);
      }

      v26 = *(*v25 + 144);
      v27 = v26();
      (*(*v27 + 168))(v27);

      v29 = (v26)(v28);
      (*(*v29 + 192))(v29);

      v31 = (v26)(v30);
      v32 = (*(*v31 + 216))(v31);

      (*(*v32 + 184))(&v51, v33);

      v34 = v51;
      v35 = v22;
      v36 = v52;
      if (EventDateTimeComponents.isValid.getter())
      {
        if (sub_21DE7CF2C() || EventDateTimeComponents.isValid.getter() && !static EventDateTimeComponents.== infix(_:_:)(v50, v47) || (v51 = v34, v52 = v36, !EventDateComponents.isValid.getter()))
        {
          v12 = v49;
          v22 = v47;
        }

        else
        {
          v37 = v26();
          v51 = v34;
          v52 = v36;
          v38 = v46;
          v39 = sub_21DE7D71C(&v51, v46);
          (*(*v37 + 200))(v38, v39);

          v41 = (v26)(v40);
          type metadata accessor for SubEvent.DateTimeElement.Recurrence();
          v42 = swift_allocObject();
          v42[1].n128_u8[0] = 3;
          v42[1].n128_u64[1] = MEMORY[0x277D84F90];
          v42[2].n128_u64[0] = 0;
          v42[2].n128_u64[1] = 0xE000000000000000;
          v43._countAndFlagsBits = 0;
          v43._object = 0xE000000000000000;
          v57 = EventDateComponents.init(string:)(v43);
          if (v44)
          {

            v54.value = 0;
            v54.is_nil = 1;
            v55.value = 0;
            v55.is_nil = 1;
            v56.value = 0;
            v56.is_nil = 1;
            v57 = EventDateComponents.init(year:month:day:)(v54, v55, v56);
          }

          v45 = v52;
          v12 = v49;
          v22 = v47;
          v42[3] = v51;
          v42[4].n128_u64[0] = v45;
          (*(*v41 + 224))(v42, v57.month, v57.day);
        }
      }

      else
      {
        v12 = v49;
        v22 = v35;
      }

      ++v24;

      sub_21DE779B4(v50);
      sub_21DE779B4(v22);
    }

    while (v23 != v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_21DE8B4CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94970, &qword_21DED33F8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v197 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v201 = &v197 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v212 = &v197 - v10;
  MEMORY[0x28223BE20](v9);
  v211 = &v197 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943D8, &qword_21DED3400);
  v213 = *(v12 - 1);
  v13 = *(v213 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v210 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v203 = &v197 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v202 = &v197 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v197 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v205 = &v197 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v219 = &v197 - v27;
  MEMORY[0x28223BE20](v26);
  v220 = &v197 - v28;
  v226 = type metadata accessor for EventDateTimeComponents();
  v223 = *(v226 - 8);
  v29 = *(v223 + 64);
  v30 = MEMORY[0x28223BE20](v226);
  v204 = &v197 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v218 = &v197 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v214 = &v197 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v221 = &v197 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v215 = &v197 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v197 - v41;
  v43 = (*v0 + 96);
  v209 = *v43;
  v208 = v43;
  v44 = v209(v40);
  v45 = (*(*v44 + 144))(v44);

  (*(*v45 + 168))(v46);

  v47 = EventDateTimeComponents.isValid.getter();
  *&v225 = v42;
  result = sub_21DE779B4(v42);
  if (v47)
  {
    return result;
  }

  v49 = (*v1 + 120);
  v207 = *v49;
  v206 = v49;
  v50 = v207(result);
  v51 = v50;
  if (v50 >> 62)
  {
    goto LABEL_115;
  }

  v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v199 = v21;
  v200 = v12;
  v198 = v6;
  if (!v52)
  {
LABEL_54:

    v111 = v207(v110);
    v112 = v111;
    if (v111 >> 62)
    {
      v51 = sub_21DEC7400();
    }

    else
    {
      v51 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v113 = v223;
    v224 = v1;
    if (v51)
    {
      v114 = 0;
      v217 = (v112 & 0xC000000000000001);
      v216 = v112 & 0xFFFFFFFFFFFFFF8;
      v12 = (v223 + 56);
      v21 = v223 + 48;
      v222 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v217)
        {
          v115 = MEMORY[0x223D4B690](v114, v112);
          v6 = (v114 + 1);
          if (__OFADD__(v114, 1))
          {
            goto LABEL_110;
          }
        }

        else
        {
          if (v114 >= *(v216 + 16))
          {
            goto LABEL_111;
          }

          v115 = *(v112 + 8 * v114 + 32);

          v6 = (v114 + 1);
          if (__OFADD__(v114, 1))
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            v52 = sub_21DEC7400();
            goto LABEL_4;
          }
        }

        v116 = v51;
        v117 = *(*v115 + 144);

        v119 = v117(v118);
        v120 = v225;
        (*(*v119 + 168))(v119);
        v121 = v120;
        v122 = v220;
        sub_21DE77A74(v121, v220);

        v123 = v226;
        (*v12)(v122, 0, 1, v226);

        if ((*v21)(v122, 1, v123) == 1)
        {
          sub_21DE5CD00(v122, &qword_27CE94250, &qword_21DED0EB0);
          v113 = v223;
          v1 = v224;
        }

        else
        {
          v124 = v215;
          sub_21DE77A74(v122, v215);
          sub_21DE77A74(v124, v221);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v113 = v223;
          v1 = v224;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v222 = sub_21DE98624(0, v222[2] + 1, 1, v222);
          }

          v127 = v222[2];
          v126 = v222[3];
          if (v127 >= v126 >> 1)
          {
            v222 = sub_21DE98624(v126 > 1, v127 + 1, 1, v222);
          }

          v128 = v221;
          v129 = v222;
          v222[2] = v127 + 1;
          sub_21DE77A74(v128, v129 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v127);
        }

        ++v114;
        v51 = v116;
        if (v6 == v116)
        {
          goto LABEL_75;
        }
      }
    }

    v222 = MEMORY[0x277D84F90];
LABEL_75:

    v51 = v1;
    v131 = v207(v130);
    v132 = v131;
    if (v131 >> 62)
    {
      v21 = sub_21DEC7400();
    }

    else
    {
      v21 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21)
    {
      v133 = 0;
      v220 = v132 & 0xFFFFFFFFFFFFFF8;
      v221 = v132 & 0xC000000000000001;
      v217 = (v113 + 56);
      v12 = (v113 + 48);
      v134 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v221)
        {
          v135 = MEMORY[0x223D4B690](v133, v132);
          v6 = (v133 + 1);
          if (__OFADD__(v133, 1))
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (v133 >= *(v220 + 16))
          {
            goto LABEL_113;
          }

          v135 = *(v132 + 8 * v133 + 32);

          v6 = (v133 + 1);
          if (__OFADD__(v133, 1))
          {
            goto LABEL_112;
          }
        }

        v136 = *(*v135 + 144);

        v51 = v136(v137);
        v138 = v225;
        (*(*v51 + 192))(v51);
        v139 = v219;
        sub_21DE77A74(v138, v219);

        v140 = v226;
        (*v217)(v139, 0, 1, v226);

        if ((*v12)(v139, 1, v140) == 1)
        {
          sub_21DE5CD00(v139, &qword_27CE94250, &qword_21DED0EB0);
          v1 = v224;
        }

        else
        {
          v141 = v214;
          sub_21DE77A74(v139, v214);
          sub_21DE77A74(v141, v218);
          v142 = swift_isUniquelyReferenced_nonNull_native();
          v1 = v224;
          if ((v142 & 1) == 0)
          {
            v134 = sub_21DE98624(0, v134[2] + 1, 1, v134);
          }

          v144 = v134[2];
          v143 = v134[3];
          v51 = v144 + 1;
          if (v144 >= v143 >> 1)
          {
            v134 = sub_21DE98624(v143 > 1, v144 + 1, 1, v134);
          }

          v134[2] = v51;
          sub_21DE77A74(v218, v134 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v144);
        }

        ++v133;
        if (v6 == v21)
        {
          goto LABEL_94;
        }
      }
    }

    v134 = MEMORY[0x277D84F90];
LABEL_94:

    v145 = v211;
    sub_21DE7E474(v222, v211);

    v147 = v213 + 48;
    v146 = *(v213 + 48);
    v148 = v200;
    if (v146(v145, 1, v200) == 1)
    {

      v149 = v145;
      return sub_21DE5CD00(v149, &qword_27CE94970, &qword_21DED33F8);
    }

    v150 = v199;
    sub_21DE9ED58(v145, v199);
    v151 = v212;
    sub_21DE7E474(v134, v212);
    v152 = v151;

    v153 = v146(v151, 1, v148);
    v154 = v198;
    if (v153 == 1)
    {
LABEL_97:
      v155 = v209;
      v156 = (v209)();
      v157 = (*(*v156 + 144))(v156);

      v158 = v203;
      sub_21DE5C6E4(v150, v203, &qword_27CE943D8, &qword_21DED3400);
      (*(*v157 + 176))(v158);

      v160 = v155(v159);
      v161 = (*(*v160 + 144))();

      sub_21DE5C6E4(v212, v154, &qword_27CE94970, &qword_21DED33F8);
      v162 = v146(v154, 1, v148);
      v163 = v223;
      v164 = (v223 + 56);
      if (v162 == 1)
      {
        sub_21DE5CD00(v154, &qword_27CE94970, &qword_21DED33F8);
        v165 = v205;
        v166 = v226;
        (*(v163 + 56))(v205, 1, 1, v226);
        v167 = v204;
        EventDateTimeComponents.init(year:month:day:hours:minutes:)(0, 1, 0, 1, 0, 1, 0, 1, v204, 0, 1);
        v168 = (*(v163 + 48))(v165, 1, v166);
        v169 = MEMORY[0x277D84F90];
        if (v168 != 1)
        {
          sub_21DE5CD00(v165, &qword_27CE94250, &qword_21DED0EB0);
        }
      }

      else
      {
        v172 = v205;
        sub_21DE77A74(v154, v205);
        (*v164)(v172, 0, 1, v226);
        v167 = v204;
        sub_21DE77A74(v172, v204);
        v169 = MEMORY[0x277D84F90];
      }

      (*(*v161 + 200))(v167);

      v174 = v209(v173);
      v175 = (*(*v174 + 144))(v174);

      v176 = v199;
      v177 = v210;
      sub_21DE5C6E4(v199, v210, &qword_27CE943D8, &qword_21DED3400);
      v178 = v177 + *(v148 + 12);
      v179 = *(v178 + 16);
      v227 = *v178;
      v228 = v179;
      v180 = EventDateComponents.dateString.getter();
      v182 = v181;
      type metadata accessor for SubEvent.DateTimeElement.Recurrence();
      v183 = swift_allocObject();
      *(v183 + 16) = 0;
      *(v183 + 24) = v169;
      *(v183 + 32) = v180;
      *(v183 + 40) = v182;

      v184._countAndFlagsBits = v180;
      v184._object = v182;
      EventDateComponents.init(string:)(v184);
      if (v185)
      {

        v232.value = 0;
        v232.is_nil = 1;
        v233.value = 0;
        v233.is_nil = 1;
        v234.value = 0;
        v234.is_nil = 1;
        EventDateComponents.init(year:month:day:)(v232, v233, v234);
      }

      v186 = v231;
      *(v183 + 48) = v230;
      *(v183 + 64) = v186;
      sub_21DE779B4(v210);
      (*(*v175 + 224))(v183);

      v187 = (*(*v1 + 136))(&v227);
      v189 = *v188;
      *v188 = v169;

      v187(&v227, 0);
      sub_21DE5CD00(v176, &qword_27CE943D8, &qword_21DED3400);
      v149 = v212;
      return sub_21DE5CD00(v149, &qword_27CE94970, &qword_21DED33F8);
    }

    v170 = v201;
    sub_21DE5C6E4(v151, v201, &qword_27CE94970, &qword_21DED33F8);
    v213 = v147;
    if (v146(v170, 1, v148) == 1)
    {
      sub_21DE5CD00(v170, &qword_27CE94970, &qword_21DED33F8);
      v171 = v202;
      sub_21DE5C6E4(v150, v202, &qword_27CE943D8, &qword_21DED3400);
      sub_21DE779B4(v171);
    }

    else
    {
      v190 = v170 + *(v148 + 12);
      v225 = *v190;
      v191 = *(v190 + 16);
      sub_21DE779B4(v170);
      v192 = v150;
      v193 = v150;
      v194 = v202;
      sub_21DE5C6E4(v193, v202, &qword_27CE943D8, &qword_21DED3400);
      v195 = v194 + *(v148 + 12);
      v196 = *(v195 + 16);
      v227 = v225;
      v228 = v191;
      v229 = 0;
      v230 = *v195;
      v231 = v196;
      sub_21DE81A04();
      LOBYTE(v191) = sub_21DEC6D70();
      sub_21DE779B4(v194);
      v150 = v192;
      if (v191)
      {
        goto LABEL_97;
      }
    }

    sub_21DE5CD00(v150, &qword_27CE943D8, &qword_21DED3400);
    v149 = v152;
    return sub_21DE5CD00(v149, &qword_27CE94970, &qword_21DED33F8);
  }

  v53 = 0;
  v224 = v51 & 0xC000000000000001;
  v222 = (v51 & 0xFFFFFFFFFFFFFF8);
  v217 = v51;
  v216 = v52;
  while (1)
  {
    if (v224)
    {
      v54 = MEMORY[0x223D4B690](v53, v51);
      v6 = (v53 + 1);
      if (__OFADD__(v53, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v53 >= v222[2])
      {
        goto LABEL_114;
      }

      v54 = *(v51 + 8 * v53 + 32);

      v6 = (v53 + 1);
      if (__OFADD__(v53, 1))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v55 = *(*v54 + 120);
    v56 = v55();
    v58 = v57;

    v60 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v60 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v60)
    {
      v61 = (v55)(v59);
      v63 = v62;
      v64 = (*(*v1 + 96))();
      v65 = (*(*v64 + 120))(v64);
      v67 = v66;

      if (v61 == v65 && v63 == v67)
      {
      }

      else
      {
        v69 = sub_21DEC7610();

        if ((v69 & 1) == 0)
        {
          goto LABEL_72;
        }
      }
    }

    v70 = *(*v54 + 168);
    v71 = v70(v59);
    v73 = v72;

    v75 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v75 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v75)
    {
      v76 = v70(v74);
      v78 = v77;
      v79 = (*(*v1 + 96))();
      v80 = (*(*v79 + 168))();
      v82 = v81;

      if (v76 == v80 && v78 == v82)
      {
      }

      else
      {
        v84 = sub_21DEC7610();

        if ((v84 & 1) == 0)
        {
          goto LABEL_72;
        }
      }
    }

    v85 = *(*v54 + 216);
    v86 = v85(v74);
    v88 = v87;

    v90 = HIBYTE(v88) & 0xF;
    if ((v88 & 0x2000000000000000) == 0)
    {
      v90 = v86 & 0xFFFFFFFFFFFFLL;
    }

    if (v90)
    {
      break;
    }

LABEL_42:
    v12 = *(*v54 + 192);
    v100 = v12(v89);
    v21 = v101;

    v103 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v103 = v100 & 0xFFFFFFFFFFFFLL;
    }

    if (!v103)
    {
      goto LABEL_7;
    }

    v21 = v12(v102);
    v105 = v104;
    v106 = (*(*v1 + 96))();
    v12 = (*(*v106 + 192))();
    v108 = v107;

    if (v21 == v12 && v105 == v108)
    {

LABEL_7:

      goto LABEL_8;
    }

    v21 = sub_21DEC7610();

    if ((v21 & 1) == 0)
    {
    }

LABEL_8:
    ++v53;
    v51 = v217;
    if (v6 == v216)
    {
      goto LABEL_54;
    }
  }

  v91 = v85(v89);
  v93 = v92;
  v94 = (*(*v1 + 96))();
  v95 = (*(*v94 + 216))();
  v97 = v96;

  if (v91 == v95 && v93 == v97)
  {

    goto LABEL_42;
  }

  v99 = sub_21DEC7610();

  if (v99)
  {
    goto LABEL_42;
  }

LABEL_72:
}

uint64_t Event.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t Event.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21DE8CB48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::Contact::ContactKind_optional __swiftcall Contact.ContactKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Contact.ContactKind.rawValue.getter()
{
  if (*v0)
  {
    result = 0x617A696E6167726FLL;
  }

  else
  {
    result = 0x6E6F73726570;
  }

  *v0;
  return result;
}

uint64_t sub_21DE8CCBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x617A696E6167726FLL;
  }

  else
  {
    v4 = 0x6E6F73726570;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v6 = 0x617A696E6167726FLL;
  }

  else
  {
    v6 = 0x6E6F73726570;
  }

  if (*a2)
  {
    v7 = 0xEC0000006E6F6974;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();
  }

  return v9 & 1;
}