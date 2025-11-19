uint64_t sub_2643A3F3C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66FF0, &qword_2643B2060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A7880();
  sub_2643B0978();
  v11 = *(v3 + OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_level);
  v12 = *(v3 + OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_level + 8);
  v16[15] = 0;
  sub_2643B0818();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_message);
    v15 = *(v3 + OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_message + 8);
    v16[14] = 1;
    sub_2643B0818();
  }

  return (*(v6 + 8))(v9, v5);
}

id SOSUIWebRTCLogMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66FF8, &qword_2643B2068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A7880();
  sub_2643B0958();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SOSUIWebRTCLogMessage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    v11 = sub_2643B0768();
    v13 = &v1[OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_level];
    *v13 = v11;
    v13[1] = v14;
    v20 = 1;
    v15 = sub_2643B0768();
    v16 = &v1[OBJC_IVAR____TtC5SOSUI21SOSUIWebRTCLogMessage_message];
    *v16 = v15;
    v16[1] = v17;
    v18 = type metadata accessor for SOSUIWebRTCLogMessage();
    v19.receiver = v1;
    v19.super_class = v18;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_2643A4338@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2643A43FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6573736572646461 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2643B0888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2643A448C(uint64_t a1)
{
  v2 = sub_2643A78F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A44C8(uint64_t a1)
{
  v2 = sub_2643A78F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A452C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67008, &unk_2643B2070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A78F8();
  sub_2643B0978();
  v11[1] = *(v2 + OBJC_IVAR____TtC5SOSUI32SOSUIWebRTCConnectionInfoMessage_addresses);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF671C0, &unk_2643B3C90);
  sub_2643A7994(&qword_27FF67010);
  sub_2643B0858();
  return (*(v5 + 8))(v8, v4);
}

void *SOSUIWebRTCConnectionInfoMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67018, &qword_2643B2080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A78F8();
  sub_2643B0958();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SOSUIWebRTCConnectionInfoMessage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF671C0, &unk_2643B3C90);
    sub_2643A7994(&qword_27FF67020);
    sub_2643B07A8();
    *&v3[OBJC_IVAR____TtC5SOSUI32SOSUIWebRTCConnectionInfoMessage_addresses] = v15;
    v13 = type metadata accessor for SOSUIWebRTCConnectionInfoMessage();
    v14.receiver = v3;
    v14.super_class = v13;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v11;
}

uint64_t sub_2643A4908@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2643A49A4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2643A49D4(uint64_t a1)
{
  v2 = sub_2643A7AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A4A10(uint64_t a1)
{
  v2 = sub_2643A7AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A4A4C()
{
  v1 = *v0;
  sub_2643B0918();
  MEMORY[0x266736720](v1);
  return sub_2643B0938();
}

uint64_t sub_2643A4A94()
{
  v1 = *v0;
  sub_2643B0918();
  MEMORY[0x266736720](v1);
  return sub_2643B0938();
}

uint64_t sub_2643A4AD8()
{
  v1 = *v0;
  v2 = 0x73654D6574617473;
  v3 = 0x74736F4C6C6C6163;
  v4 = 0x617373654D676F6CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73654D726F727265;
  if (v1 != 1)
  {
    v5 = 0x4D7974696C617571;
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

uint64_t sub_2643A4BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2643A870C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2643A4BEC(uint64_t a1)
{
  v2 = sub_2643A7A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A4C28(uint64_t a1)
{
  v2 = sub_2643A7A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A4C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697463656E6E6F63 && a2 == 0xEE006F666E496E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2643B0888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2643A4D18(uint64_t a1)
{
  v2 = sub_2643A7A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A4D54(uint64_t a1)
{
  v2 = sub_2643A7A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A4DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2643B0888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2643A4E28(uint64_t a1)
{
  v2 = sub_2643A7BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A4E64(uint64_t a1)
{
  v2 = sub_2643A7BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A4EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2643B0888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2643A4F74(uint64_t a1)
{
  v2 = sub_2643A7AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A4FB0(uint64_t a1)
{
  v2 = sub_2643A7AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A5004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974696C617571 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2643B0888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2643A508C(uint64_t a1)
{
  v2 = sub_2643A7B50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A50C8(uint64_t a1)
{
  v2 = sub_2643A7B50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A5118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2643B0888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2643A519C(uint64_t a1)
{
  v2 = sub_2643A7BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A51D8(uint64_t a1)
{
  v2 = sub_2643A7BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A5214(void *a1, unint64_t a2)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67028, &qword_2643B2088);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67030, &qword_2643B2090);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67038, &qword_2643B2098);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67040, &qword_2643B20A0);
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67048, &qword_2643B20A8);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67050, &qword_2643B20B0);
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v37 - v22;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67058, &qword_2643B20B8);
  v51 = *(v52 - 8);
  v24 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v26 = &v37 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A7A00();
  v28 = v53;
  sub_2643B0978();
  v29 = v28 >> 61;
  if ((v28 >> 61) > 2)
  {
    if (v29 == 3)
    {
      LOBYTE(v54) = 4;
      sub_2643A7AA8();
      v19 = v45;
      v30 = v52;
      sub_2643B07C8();
      v54 = v28 & 0x1FFFFFFFFFFFFFFFLL;
      type metadata accessor for SOSUIWebRTCLogMessage();
      sub_2643ABB70(&qword_27FF67068, type metadata accessor for SOSUIWebRTCLogMessage);
      v31 = v47;
      sub_2643B0858();
      v32 = v46;
    }

    else
    {
      v30 = v52;
      if (v29 != 4)
      {
        LOBYTE(v54) = 3;
        sub_2643A7AFC();
        v36 = v40;
        sub_2643B07C8();
        (*(v41 + 8))(v36, v42);
        return (*(v51 + 8))(v26, v30);
      }

      LOBYTE(v54) = 5;
      sub_2643A7A54();
      v19 = v48;
      sub_2643B07C8();
      v54 = v28 & 0x1FFFFFFFFFFFFFFFLL;
      type metadata accessor for SOSUIWebRTCConnectionInfoMessage();
      sub_2643ABB70(&qword_27FF67060, type metadata accessor for SOSUIWebRTCConnectionInfoMessage);
      v31 = v50;
      sub_2643B0858();
      v32 = v49;
    }

    goto LABEL_10;
  }

  if (v29)
  {
    if (v29 != 1)
    {
      LOBYTE(v54) = 2;
      sub_2643A7B50();
      v34 = v52;
      sub_2643B07C8();
      v54 = v28 & 0x1FFFFFFFFFFFFFFFLL;
      type metadata accessor for SOSUIWebRTCQualityMessage();
      sub_2643ABB70(&qword_27FF67070, type metadata accessor for SOSUIWebRTCQualityMessage);
      v35 = v44;
      sub_2643B0858();
      (*(v43 + 8))(v15, v35);
      return (*(v51 + 8))(v26, v34);
    }

    LOBYTE(v54) = 1;
    sub_2643A7BA4();
    v30 = v52;
    sub_2643B07C8();
    v54 = v28 & 0x1FFFFFFFFFFFFFFFLL;
    type metadata accessor for SOSUIWebRTCErrorMessage();
    sub_2643ABB70(&qword_27FF66F10, type metadata accessor for SOSUIWebRTCErrorMessage);
    v31 = v39;
    sub_2643B0858();
    v32 = v38;
LABEL_10:
    (*(v32 + 8))(v19, v31);
    return (*(v51 + 8))(v26, v30);
  }

  LOBYTE(v54) = 0;
  sub_2643A7BF8();
  v30 = v52;
  sub_2643B07C8();
  v54 = v28;
  type metadata accessor for SOSUIWebRTCState();
  sub_2643ABB70(&qword_27FF67078, type metadata accessor for SOSUIWebRTCState);
  sub_2643B0858();
  (*(v37 + 8))(v23, v20);
  return (*(v51 + 8))(v26, v30);
}

unint64_t sub_2643A5A48@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_2643A8934(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2643A5AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654D646564616F6CLL && a2 == 0xED00006567617373)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2643B0888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2643A5B44(uint64_t a1)
{
  v2 = sub_2643A94C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A5B80(uint64_t a1)
{
  v2 = sub_2643A94C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A5BBC(uint64_t a1)
{
  v2 = sub_2643A951C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A5BF8(uint64_t a1)
{
  v2 = sub_2643A951C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A5C4C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67080, &qword_2643B20C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67088, &qword_2643B20C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A94C8();
  sub_2643B0978();
  sub_2643A951C();
  sub_2643B07C8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

id sub_2643A5E24(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC5SOSUI23SOSUIWebtRTCDoubleRange_min] = a1;
  *&v5[OBJC_IVAR____TtC5SOSUI23SOSUIWebtRTCDoubleRange_max] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_2643A5F04()
{
  if (*v0)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_2643A5F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v5 || (sub_2643B0888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2643B0888();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2643A6004(uint64_t a1)
{
  v2 = sub_2643A9888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A6040(uint64_t a1)
{
  v2 = sub_2643A9888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A6094(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF670A0, &qword_2643B20D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A9888();
  sub_2643B0978();
  v11 = *(v3 + OBJC_IVAR____TtC5SOSUI23SOSUIWebtRTCDoubleRange_min);
  v14[15] = 0;
  sub_2643B0838();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC5SOSUI23SOSUIWebtRTCDoubleRange_max);
    v14[14] = 1;
    sub_2643B0838();
  }

  return (*(v6 + 8))(v9, v5);
}

id SOSUIWebtRTCDoubleRange.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF670A8, &qword_2643B20D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A9888();
  sub_2643B0958();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SOSUIWebtRTCDoubleRange();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    sub_2643B0788();
    *&v1[OBJC_IVAR____TtC5SOSUI23SOSUIWebtRTCDoubleRange_min] = v11;
    v16 = 1;
    sub_2643B0788();
    *&v1[OBJC_IVAR____TtC5SOSUI23SOSUIWebtRTCDoubleRange_max] = v13;
    v14 = type metadata accessor for SOSUIWebtRTCDoubleRange();
    v15.receiver = v1;
    v15.super_class = v14;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_2643A6458@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_2643A64E8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC5SOSUI24SOSUIWebtRTCCapabilities_zoom] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void *SOSUIWebtRTCCapabilities.zoom.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5SOSUI24SOSUIWebtRTCCapabilities_zoom);
  v2 = v1;
  return v1;
}

uint64_t sub_2643A65C8()
{
  sub_2643B0918();
  MEMORY[0x266736720](0);
  return sub_2643B0938();
}

uint64_t sub_2643A660C()
{
  sub_2643B0918();
  MEMORY[0x266736720](0);
  return sub_2643B0938();
}

uint64_t sub_2643A665C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1836019578 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2643B0888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2643A66E4(uint64_t a1)
{
  v2 = sub_2643A9900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A6720(uint64_t a1)
{
  v2 = sub_2643A9900();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2643A6774(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2643A67BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF670B8, &qword_2643B20E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A9900();
  sub_2643B0978();
  v11[1] = *(v2 + OBJC_IVAR____TtC5SOSUI24SOSUIWebtRTCCapabilities_zoom);
  type metadata accessor for SOSUIWebtRTCDoubleRange();
  sub_2643ABB70(&qword_27FF670C0, type metadata accessor for SOSUIWebtRTCDoubleRange);
  sub_2643B0808();
  return (*(v5 + 8))(v8, v4);
}

void *SOSUIWebtRTCCapabilities.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF670C8, &qword_2643B20E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A9900();
  sub_2643B0958();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SOSUIWebtRTCCapabilities();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SOSUIWebtRTCDoubleRange();
    sub_2643ABB70(&qword_27FF670D0, type metadata accessor for SOSUIWebtRTCDoubleRange);
    sub_2643B0758();
    *&v3[OBJC_IVAR____TtC5SOSUI24SOSUIWebtRTCCapabilities_zoom] = v15;
    v13 = type metadata accessor for SOSUIWebtRTCCapabilities();
    v14.receiver = v3;
    v14.super_class = v13;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v11;
}

uint64_t sub_2643A6B90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2643A6C20(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643B0948();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v5 = sub_2643B08A8();
    v8 = v5;
    v9 = v6;
    v10 = v5 == 0x646F6F676C6C6163 && v6 == 0xE800000000000000;
    if (v10 || (sub_2643B0888() & 1) != 0)
    {

      v4 = 1;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0(v15);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v4;
    }

    if (v8 == 0x737561706C6C6163 && v9 == 0xEA00000000006465 || (sub_2643B0888() & 1) != 0)
    {

      v4 = 2;
      goto LABEL_12;
    }

    if (v8 == 0x726F6F706C6C6163 && v9 == 0xE800000000000000 || (sub_2643B0888() & 1) != 0)
    {

      v4 = 3;
      goto LABEL_12;
    }

    if (v8 == 1701602409 && v9 == 0xE400000000000000 || (sub_2643B0888() & 1) != 0)
    {

      v4 = 4;
      goto LABEL_12;
    }

    if (v8 == 0x77656976657270 && v9 == 0xE700000000000000 || (sub_2643B0888() & 1) != 0)
    {

      v4 = 5;
      goto LABEL_12;
    }

    if (v8 == 0x7272656C61746166 && v9 == 0xEA0000000000726FLL || (sub_2643B0888() & 1) != 0)
    {

      v4 = 6;
      goto LABEL_12;
    }

    if (v8 == 0x697463656E6E6F63 && v9 == 0xEA0000000000676ELL || (sub_2643B0888() & 1) != 0)
    {

      v4 = 7;
      goto LABEL_12;
    }

    if (v8 == 0x6465646E65 && v9 == 0xE500000000000000)
    {

LABEL_41:
      v4 = 8;
      goto LABEL_12;
    }

    v11 = sub_2643B0888();

    if (v11)
    {
      goto LABEL_41;
    }

    v12 = sub_2643B06C8();
    swift_allocError();
    v14 = v13;
    v4 = __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_2643B0898();
    sub_2643B06B8();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

unint64_t sub_2643A7008(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2643A7018(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643B0948();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v5 = sub_2643B08A8();
    v8 = v5;
    v9 = v6;
    v10 = v5 == 1919251317 && v6 == 0xE400000000000000;
    if (v10 || (sub_2643B0888() & 1) != 0)
    {

      v4 = 0;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0(v15);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v4;
    }

    if (v8 == 0x6D6E6F7269766E65 && v9 == 0xEB00000000746E65)
    {

LABEL_17:
      v4 = 1;
      goto LABEL_12;
    }

    v11 = sub_2643B0888();

    if (v11)
    {
      goto LABEL_17;
    }

    v12 = sub_2643B06C8();
    swift_allocError();
    v14 = v13;
    v4 = __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_2643B0898();
    sub_2643B06B8();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_2643A7240(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643B0948();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v5 = sub_2643B08A8();
    v8 = v5;
    v9 = v6;
    v10 = v5 == 0x6E6F69746F6DLL && v6 == 0xE600000000000000;
    if (v10 || (sub_2643B0888() & 1) != 0)
    {

      v4 = 0;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0(v15);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v4;
    }

    if (v8 == 0x6C6961746564 && v9 == 0xE600000000000000 || (sub_2643B0888() & 1) != 0)
    {

      v4 = 1;
      goto LABEL_12;
    }

    if (v8 == 0x6465636E616C6162 && v9 == 0xE800000000000000)
    {

LABEL_21:
      v4 = 2;
      goto LABEL_12;
    }

    v11 = sub_2643B0888();

    if (v11)
    {
      goto LABEL_21;
    }

    v12 = sub_2643B06C8();
    swift_allocError();
    v14 = v13;
    v4 = __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_2643B0898();
    sub_2643B06B8();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

unint64_t sub_2643A74CC()
{
  result = qword_27FF67310;
  if (!qword_27FF67310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67310);
  }

  return result;
}

unint64_t sub_2643A7520()
{
  result = qword_27FF66F00;
  if (!qword_27FF66F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F00);
  }

  return result;
}

unint64_t sub_2643A7574()
{
  result = qword_27FF66F08;
  if (!qword_27FF66F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F08);
  }

  return result;
}

unint64_t sub_2643A75EC()
{
  result = qword_27FF66F20;
  if (!qword_27FF66F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F20);
  }

  return result;
}

unint64_t sub_2643A7640()
{
  result = qword_27FF66F28;
  if (!qword_27FF66F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F28);
  }

  return result;
}

unint64_t sub_2643A7694()
{
  result = qword_27FF67318;
  if (!qword_27FF67318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67318);
  }

  return result;
}

unint64_t sub_2643A76E8()
{
  result = qword_27FF66F40;
  if (!qword_27FF66F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F40);
  }

  return result;
}

unint64_t sub_2643A773C()
{
  result = qword_27FF66F50;
  if (!qword_27FF66F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F50);
  }

  return result;
}

unint64_t sub_2643A7790()
{
  result = qword_27FF67320;
  if (!qword_27FF67320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67320);
  }

  return result;
}

unint64_t sub_2643A7808()
{
  result = qword_27FF67328;
  if (!qword_27FF67328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67328);
  }

  return result;
}

unint64_t sub_2643A7880()
{
  result = qword_27FF67330;
  if (!qword_27FF67330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67330);
  }

  return result;
}

unint64_t sub_2643A78F8()
{
  result = qword_27FF67338;
  if (!qword_27FF67338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67338);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2643A7994(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF671C0, &unk_2643B3C90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2643A7A00()
{
  result = qword_27FF67340;
  if (!qword_27FF67340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67340);
  }

  return result;
}

unint64_t sub_2643A7A54()
{
  result = qword_27FF67348;
  if (!qword_27FF67348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67348);
  }

  return result;
}

unint64_t sub_2643A7AA8()
{
  result = qword_27FF67350;
  if (!qword_27FF67350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67350);
  }

  return result;
}

unint64_t sub_2643A7AFC()
{
  result = qword_27FF67358;
  if (!qword_27FF67358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67358);
  }

  return result;
}

unint64_t sub_2643A7B50()
{
  result = qword_27FF67360;
  if (!qword_27FF67360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67360);
  }

  return result;
}

unint64_t sub_2643A7BA4()
{
  result = qword_27FF67368;
  if (!qword_27FF67368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67368);
  }

  return result;
}

unint64_t sub_2643A7BF8()
{
  result = qword_27FF67370;
  if (!qword_27FF67370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67370);
  }

  return result;
}

uint64_t sub_2643A7C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_2643B0888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (sub_2643B0888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL || (sub_2643B0888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x78456172656D6163 && a2 == 0xEC00000073747369 || (sub_2643B0888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63416172656D6163 && a2 == 0xEC00000065766974 || (sub_2643B0888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61466172656D6163 && a2 == 0xEC000000676E6963 || (sub_2643B0888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6576654C6D6F6F7ALL && a2 == 0xE90000000000006CLL || (sub_2643B0888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6863726F74 && a2 == 0xE500000000000000 || (sub_2643B0888() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_2643B0888();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_2643A7F40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000002643B48A0 == a2;
  if (v3 || (sub_2643B0888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002643B48C0 == a2 || (sub_2643B0888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002643B48E0 == a2 || (sub_2643B0888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002643B4900 == a2 || (sub_2643B0888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x426D756D696E696DLL && a2 == 0xEE00657461727469 || (sub_2643B0888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x426D756D6978616DLL && a2 == 0xEE00657461727469 || (sub_2643B0888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6572506F65646976 && a2 == 0xEF65636E65726566 || (sub_2643B0888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7453646573756170 && a2 == 0xEC000000676E6972 || (sub_2643B0888() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F436775626564 && a2 == 0xEF6E6F697463656ELL || (sub_2643B0888() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746152656D617266 && a2 == 0xE900000000000065)
  {

    return 9;
  }

  else
  {
    v6 = sub_2643B0888();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_2643A8298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_2643B0888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_2643B0888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_2643B0888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746174537473616CLL && a2 == 0xE900000000000065 || (sub_2643B0888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C62617972746572 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_2643B0888();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2643A8450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746172746962 && a2 == 0xE700000000000000;
  if (v4 || (sub_2643B0888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002643B4760 == a2 || (sub_2643B0888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4C74656B636170 && a2 == 0xEA00000000007373 || (sub_2643B0888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002643B4780 == a2 || (sub_2643B0888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x655073656D617266 && a2 == 0xEF646E6F63655372 || (sub_2643B0888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72657474696ALL && a2 == 0xE600000000000000 || (sub_2643B0888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEE00726F6F506E6FLL || (sub_2643B0888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E65537365747962 && a2 == 0xE900000000000074)
  {

    return 7;
  }

  else
  {
    v6 = sub_2643B0888();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2643A870C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73654D6574617473 && a2 == 0xEC00000065676173;
  if (v4 || (sub_2643B0888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173 || (sub_2643B0888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D7974696C617571 && a2 == 0xEE00656761737365 || (sub_2643B0888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736F4C6C6C6163 && a2 == 0xEF6567617373654DLL || (sub_2643B0888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617373654D676F6CLL && a2 == 0xEA00000000006567 || (sub_2643B0888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002643B4920 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2643B0888();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_2643A8934(uint64_t *a1)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67110, &qword_2643B3C30);
  v64 = *(v60 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x28223BE20](v60);
  v68 = &v50 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67118, &qword_2643B3C38);
  v63 = *(v61 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = &v50 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67120, &qword_2643B3C40);
  v56 = *(v59 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v67 = &v50 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67128, &qword_2643B3C48);
  v62 = *(v55 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v55);
  v66 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67130, &qword_2643B3C50);
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67138, &qword_2643B3C58);
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67140, &qword_2643B3C60);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_2643A7A00();
  v25 = v69;
  sub_2643B0958();
  if (!v25)
  {
    v51 = v14;
    v52 = 0;
    v27 = v66;
    v26 = v67;
    v23 = v68;
    v53 = v19;
    v69 = sub_2643B07B8();
    if (*(v69 + 16) != 1 || (v28 = *(v69 + 32), v28 == 6))
    {
      v23 = sub_2643B06C8();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67108, &qword_2643B3C28) + 48);
      *v34 = &type metadata for SOSUIWebRTCMessage;
      sub_2643B0718();
      sub_2643B06B8();
      (*(*(v23 - 8) + 104))(v34, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v53 + 8))(v22, v18);
    }

    else
    {
      if (*(v69 + 32) > 2u)
      {
        if (v28 == 3)
        {
          LOBYTE(v71) = 3;
          sub_2643A7AFC();
          v41 = v52;
          sub_2643B0708();
          v42 = v53;
          if (!v41)
          {
            (*(v56 + 8))(v26, v59);
            (*(v42 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v23 = 0xA000000000000000;
            goto LABEL_11;
          }

          v23 = v53 + 8;
          (*(v53 + 8))(v22, v18);
          goto LABEL_10;
        }

        v31 = v53;
        if (v28 == 4)
        {
          LOBYTE(v71) = 4;
          sub_2643A7AA8();
          v37 = v65;
          v38 = v52;
          sub_2643B0708();
          if (!v38)
          {
            type metadata accessor for SOSUIWebRTCLogMessage();
            sub_2643ABB70(&qword_27FF67150, type metadata accessor for SOSUIWebRTCLogMessage);
            v39 = v61;
            sub_2643B07A8();
            (*(v63 + 8))(v37, v39);
            (*(v31 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v23 = v71 | 0x6000000000000000;
            goto LABEL_11;
          }
        }

        else
        {
          LOBYTE(v71) = 5;
          sub_2643A7A54();
          v47 = v52;
          sub_2643B0708();
          if (!v47)
          {
            type metadata accessor for SOSUIWebRTCConnectionInfoMessage();
            sub_2643ABB70(&qword_27FF67148, type metadata accessor for SOSUIWebRTCConnectionInfoMessage);
            v48 = v60;
            sub_2643B07A8();
            (*(v64 + 8))(v23, v48);
            (*(v31 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v23 = v71 | 0x8000000000000000;
            goto LABEL_11;
          }
        }

        goto LABEL_25;
      }

      if (*(v69 + 32))
      {
        if (v28 == 1)
        {
          LOBYTE(v71) = 1;
          sub_2643A7BA4();
          v29 = v13;
          v30 = v52;
          sub_2643B0708();
          v31 = v53;
          if (!v30)
          {
            type metadata accessor for SOSUIWebRTCErrorMessage();
            sub_2643ABB70(&qword_27FF66F30, type metadata accessor for SOSUIWebRTCErrorMessage);
            v32 = v58;
            sub_2643B07A8();
            (*(v57 + 8))(v29, v32);
            (*(v31 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v23 = v71 | 0x2000000000000000;
            goto LABEL_11;
          }

LABEL_25:
          (*(v31 + 8))(v22, v18);
          goto LABEL_10;
        }

        LOBYTE(v71) = 2;
        sub_2643A7B50();
        v43 = v27;
        v44 = v52;
        sub_2643B0708();
        v45 = v53;
        if (!v44)
        {
          type metadata accessor for SOSUIWebRTCQualityMessage();
          sub_2643ABB70(&qword_27FF67158, type metadata accessor for SOSUIWebRTCQualityMessage);
          v46 = v55;
          sub_2643B07A8();
          (*(v62 + 8))(v43, v46);
          (*(v45 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v23 = v71 | 0x4000000000000000;
          goto LABEL_11;
        }
      }

      else
      {
        LOBYTE(v71) = 0;
        sub_2643A7BF8();
        v40 = v52;
        sub_2643B0708();
        if (!v40)
        {
          type metadata accessor for SOSUIWebRTCState();
          sub_2643ABB70(&unk_27FF67160, type metadata accessor for SOSUIWebRTCState);
          v49 = v51;
          sub_2643B07A8();
          (*(v54 + 8))(v17, v49);
          (*(v53 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v23 = v71;
          goto LABEL_11;
        }
      }

      (*(v53 + 8))(v22, v18);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v70);
  return v23;
}

unint64_t sub_2643A94C8()
{
  result = qword_27FF67378;
  if (!qword_27FF67378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67378);
  }

  return result;
}

unint64_t sub_2643A951C()
{
  result = qword_27FF67380;
  if (!qword_27FF67380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67380);
  }

  return result;
}

uint64_t sub_2643A9570(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF670F8, &qword_2643B3C18);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67100, &qword_2643B3C20);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A94C8();
  sub_2643B0958();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(sub_2643B07B8() + 16) == 1)
    {
      sub_2643A951C();
      sub_2643B0708();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = sub_2643B06C8();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67108, &qword_2643B3C28) + 48);
      *v16 = &type metadata for SOSUIWebRTCInternalMessage;
      sub_2643B0718();
      sub_2643B06B8();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_2643A9888()
{
  result = qword_27FF67388;
  if (!qword_27FF67388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67388);
  }

  return result;
}

unint64_t sub_2643A9900()
{
  result = qword_27FF67390[0];
  if (!qword_27FF67390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF67390);
  }

  return result;
}

unint64_t sub_2643A9958()
{
  result = qword_27FF670D8;
  if (!qword_27FF670D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF670D8);
  }

  return result;
}

unint64_t sub_2643A99B0()
{
  result = qword_27FF670E0;
  if (!qword_27FF670E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF670E0);
  }

  return result;
}

unint64_t sub_2643A9A08()
{
  result = qword_27FF670E8;
  if (!qword_27FF670E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF670E8);
  }

  return result;
}

unint64_t sub_2643A9A60()
{
  result = qword_27FF670F0;
  if (!qword_27FF670F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF670F0);
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2643A9BB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2643A9C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5SOSUI18SOSUIWebRTCMessageO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_2643A9EE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2643A9F40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_2643A9FA0(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SOSUIWebRTCMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SOSUIWebRTCMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s5SOSUI18SOSUIWebRTCMessageO20LogMessageCodingKeysOwet_0(unsigned int *a1, int a2)
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

_WORD *_s5SOSUI18SOSUIWebRTCMessageO20LogMessageCodingKeysOwst_0(_WORD *result, int a2, int a3)
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

uint64_t sub_2643AA3E8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2643AA47C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SOSUIWebRTCQualityMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SOSUIWebRTCQualityMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SOSUIWebRTCErrorMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SOSUIWebRTCErrorMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SOSUIWebRTCConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SOSUIWebRTCConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SOSUIWebRTCState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SOSUIWebRTCState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2643AAA9C()
{
  result = qword_27FF68720[0];
  if (!qword_27FF68720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF68720);
  }

  return result;
}

unint64_t sub_2643AAAF4()
{
  result = qword_27FF68930[0];
  if (!qword_27FF68930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF68930);
  }

  return result;
}

unint64_t sub_2643AAB4C()
{
  result = qword_27FF68B40[0];
  if (!qword_27FF68B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF68B40);
  }

  return result;
}

unint64_t sub_2643AABA4()
{
  result = qword_27FF68D50[0];
  if (!qword_27FF68D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF68D50);
  }

  return result;
}

unint64_t sub_2643AABFC()
{
  result = qword_27FF68F60[0];
  if (!qword_27FF68F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF68F60);
  }

  return result;
}

unint64_t sub_2643AAC54()
{
  result = qword_27FF69170[0];
  if (!qword_27FF69170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69170);
  }

  return result;
}

unint64_t sub_2643AACAC()
{
  result = qword_27FF69380[0];
  if (!qword_27FF69380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69380);
  }

  return result;
}

unint64_t sub_2643AAD04()
{
  result = qword_27FF69590[0];
  if (!qword_27FF69590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69590);
  }

  return result;
}

unint64_t sub_2643AAD5C()
{
  result = qword_27FF698A0[0];
  if (!qword_27FF698A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF698A0);
  }

  return result;
}

unint64_t sub_2643AADB4()
{
  result = qword_27FF69AB0[0];
  if (!qword_27FF69AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69AB0);
  }

  return result;
}

unint64_t sub_2643AAE0C()
{
  result = qword_27FF69CC0[0];
  if (!qword_27FF69CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69CC0);
  }

  return result;
}

unint64_t sub_2643AAE64()
{
  result = qword_27FF69ED0[0];
  if (!qword_27FF69ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69ED0);
  }

  return result;
}

unint64_t sub_2643AAEBC()
{
  result = qword_27FF6A1E0[0];
  if (!qword_27FF6A1E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A1E0);
  }

  return result;
}

unint64_t sub_2643AAF14()
{
  result = qword_27FF6A3F0[0];
  if (!qword_27FF6A3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A3F0);
  }

  return result;
}

unint64_t sub_2643AAF6C()
{
  result = qword_27FF6A600[0];
  if (!qword_27FF6A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A600);
  }

  return result;
}

unint64_t sub_2643AAFC4()
{
  result = qword_27FF6A710;
  if (!qword_27FF6A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A710);
  }

  return result;
}

unint64_t sub_2643AB01C()
{
  result = qword_27FF6A718[0];
  if (!qword_27FF6A718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A718);
  }

  return result;
}

unint64_t sub_2643AB074()
{
  result = qword_27FF6A7A0;
  if (!qword_27FF6A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A7A0);
  }

  return result;
}

unint64_t sub_2643AB0CC()
{
  result = qword_27FF6A7A8[0];
  if (!qword_27FF6A7A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A7A8);
  }

  return result;
}

unint64_t sub_2643AB124()
{
  result = qword_27FF6A830;
  if (!qword_27FF6A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A830);
  }

  return result;
}

unint64_t sub_2643AB17C()
{
  result = qword_27FF6A838[0];
  if (!qword_27FF6A838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A838);
  }

  return result;
}

unint64_t sub_2643AB1D4()
{
  result = qword_27FF6A8C0;
  if (!qword_27FF6A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A8C0);
  }

  return result;
}

unint64_t sub_2643AB22C()
{
  result = qword_27FF6A8C8[0];
  if (!qword_27FF6A8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A8C8);
  }

  return result;
}

unint64_t sub_2643AB284()
{
  result = qword_27FF6A950;
  if (!qword_27FF6A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A950);
  }

  return result;
}

unint64_t sub_2643AB2DC()
{
  result = qword_27FF6A958[0];
  if (!qword_27FF6A958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A958);
  }

  return result;
}

unint64_t sub_2643AB334()
{
  result = qword_27FF6A9E0;
  if (!qword_27FF6A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A9E0);
  }

  return result;
}

unint64_t sub_2643AB38C()
{
  result = qword_27FF6A9E8[0];
  if (!qword_27FF6A9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A9E8);
  }

  return result;
}

unint64_t sub_2643AB3E4()
{
  result = qword_27FF6AA70;
  if (!qword_27FF6AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AA70);
  }

  return result;
}

unint64_t sub_2643AB43C()
{
  result = qword_27FF6AA78;
  if (!qword_27FF6AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AA78);
  }

  return result;
}

unint64_t sub_2643AB494()
{
  result = qword_27FF6AB00;
  if (!qword_27FF6AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AB00);
  }

  return result;
}

unint64_t sub_2643AB4EC()
{
  result = qword_27FF6AB08[0];
  if (!qword_27FF6AB08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AB08);
  }

  return result;
}

unint64_t sub_2643AB544()
{
  result = qword_27FF6AB90;
  if (!qword_27FF6AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AB90);
  }

  return result;
}

unint64_t sub_2643AB59C()
{
  result = qword_27FF6AB98[0];
  if (!qword_27FF6AB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AB98);
  }

  return result;
}

unint64_t sub_2643AB5F4()
{
  result = qword_27FF6AC20;
  if (!qword_27FF6AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AC20);
  }

  return result;
}

unint64_t sub_2643AB64C()
{
  result = qword_27FF6AC28[0];
  if (!qword_27FF6AC28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AC28);
  }

  return result;
}

unint64_t sub_2643AB6A4()
{
  result = qword_27FF6ACB0;
  if (!qword_27FF6ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6ACB0);
  }

  return result;
}

unint64_t sub_2643AB6FC()
{
  result = qword_27FF6ACB8[0];
  if (!qword_27FF6ACB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6ACB8);
  }

  return result;
}

unint64_t sub_2643AB754()
{
  result = qword_27FF6AD40;
  if (!qword_27FF6AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AD40);
  }

  return result;
}

unint64_t sub_2643AB7AC()
{
  result = qword_27FF6AD48[0];
  if (!qword_27FF6AD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AD48);
  }

  return result;
}

unint64_t sub_2643AB804()
{
  result = qword_27FF6ADD0;
  if (!qword_27FF6ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6ADD0);
  }

  return result;
}

unint64_t sub_2643AB85C()
{
  result = qword_27FF6ADD8[0];
  if (!qword_27FF6ADD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6ADD8);
  }

  return result;
}

unint64_t sub_2643AB8B4()
{
  result = qword_27FF6AE60;
  if (!qword_27FF6AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AE60);
  }

  return result;
}

unint64_t sub_2643AB90C()
{
  result = qword_27FF6AE68[0];
  if (!qword_27FF6AE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AE68);
  }

  return result;
}

unint64_t sub_2643AB964()
{
  result = qword_27FF6AEF0;
  if (!qword_27FF6AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AEF0);
  }

  return result;
}

unint64_t sub_2643AB9BC()
{
  result = qword_27FF6AEF8[0];
  if (!qword_27FF6AEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AEF8);
  }

  return result;
}

unint64_t sub_2643ABA14()
{
  result = qword_27FF6AF80;
  if (!qword_27FF6AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AF80);
  }

  return result;
}

unint64_t sub_2643ABA6C()
{
  result = qword_27FF6AF88[0];
  if (!qword_27FF6AF88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AF88);
  }

  return result;
}

unint64_t sub_2643ABAC4()
{
  result = qword_27FF6B010;
  if (!qword_27FF6B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6B010);
  }

  return result;
}

unint64_t sub_2643ABB1C()
{
  result = qword_27FF6B018[0];
  if (!qword_27FF6B018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6B018);
  }

  return result;
}

uint64_t sub_2643ABB70(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2643ABC24(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_2643ABC80(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27FF67170;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2643ABD18;
}

void sub_2643ABD18(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_2643ABDA0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2643ABDE4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2643ABE44(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27FF67178;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2643852BC;
}

uint64_t sub_2643ABEDC()
{
  v1 = (v0 + qword_27FF671A0);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_26439FC58(v3);
  return v3;
}

uint64_t sub_2643ABF38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27FF671A0);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_26439B0AC(v6);
}

uint64_t sub_2643ABFF8()
{
  v1 = qword_27FF671A8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2643AC03C(char a1)
{
  v3 = qword_27FF671A8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2643AC0F0(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x88);

  return v6(a1, a2);
}

uint64_t sub_2643AC180@<X0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = [a1 body];
  sub_2643B0688();
  swift_unknownObjectRelease();
  sub_2643AF3C4(a2, v11, a3, a4, a5);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

void sub_2643AC214(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_2643AF870(v7);
}

id sub_2643AC28C()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = (v0 + qword_27FF671A0);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + qword_27FF671A8) = 0;
  v3 = *(v1 + 96);
  v6[0] = *(v1 + 80);
  v6[1] = v3;
  v4 = type metadata accessor for SOSUIWebRTCRPC.LoadedListener(0, v6);
  v7.receiver = v0;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2643AC344()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for SOSUIWebRTCRPC.LoadedListener(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_2643AC3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_allocWithZone(v3);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2643AC488;

  return sub_2643AC588(a1, a2, a3);
}

uint64_t sub_2643AC488(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2643AC588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[30] = *MEMORY[0x277D85000] & *v3;
  v5 = sub_2643B04B8();
  v4[31] = v5;
  v6 = *(v5 - 8);
  v4[32] = v6;
  v7 = *(v6 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = sub_2643B05D8();
  v4[38] = sub_2643B05C8();
  v9 = sub_2643B05A8();
  v4[39] = v9;
  v4[40] = v8;

  return MEMORY[0x2822009F8](sub_2643AC6E0, v9, v8);
}

uint64_t sub_2643AC6E0()
{
  receiver = v0[18].receiver;
  v2 = v0[16].receiver;
  super_class = v0[15].super_class;
  v3 = v0[14].super_class;
  v4 = v0[15].receiver;
  v5 = v0[13].super_class;
  v6 = v0[14].receiver;
  v7 = v0[13].receiver;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8 = v3 + qword_27FF67188;
  strcpy(v3 + qword_27FF67188, "webRTCParent");
  v8[13] = 0;
  *(v8 + 7) = -5120;
  v9 = (v3 + qword_27FF67190);
  *v9 = 0xD000000000000012;
  v9[1] = 0x80000002643B49D0;
  v10 = v3 + qword_27FF67198;
  strcpy(v3 + qword_27FF67198, "WebRTCClient");
  v10[13] = 0;
  *(v10 + 7) = -5120;
  *(v3 + qword_27FF671B0) = 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + qword_27FF67180) = v6;
  v11 = v4[10];
  v12 = v4[11];
  v14 = v4[12];
  v13 = v4[13];
  v47 = v11;
  v0[1].receiver = v11;
  v0[1].super_class = v12;
  v0[2].receiver = v14;
  v0[2].super_class = v13;
  v15 = type metadata accessor for SOSUIWebRTCRPC(0, &v0[1]);
  v0[12].receiver = v3;
  v0[12].super_class = v15;
  v16 = objc_msgSendSuper2(v0 + 12, sel_init);
  v0[20].super_class = v16;
  v17 = v16;
  v18 = sub_2643845D8();
  v0[21].receiver = v18;
  v19 = *(v2 + 2);
  v0[21].super_class = v19;
  v0[22].receiver = ((v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  (v19)(receiver, v18, super_class);
  v20 = sub_2643B0498();
  v21 = sub_2643B0648();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_264382000, v20, v21, "SOSUIWebRTCRPC.init: waiting for web client connection", v22, 2u);
    MEMORY[0x266736CC0](v22, -1, -1);
  }

  v23 = v0[18].receiver;
  v24 = v0[15].super_class;
  v25 = v0[16].receiver;
  v26 = v0[13].receiver;

  v25[1](v23, v24);
  v0[3].receiver = v47;
  v0[3].super_class = v12;
  v0[4].receiver = v14;
  v0[4].super_class = v13;
  v27 = [objc_allocWithZone(type metadata accessor for SOSUIWebRTCRPC.LoadedListener(0 &v0[3]))];
  v0[22].super_class = v27;
  v28 = [v26 configuration];
  v29 = [v28 userContentController];

  v30 = qword_27FF67190;
  v0[23].receiver = qword_27FF67190;
  v31 = (v17 + v30);
  v32 = *v31;
  v33 = v31[1];
  v34 = v27;

  v35 = sub_2643B04E8();

  [v29 addScriptMessageHandler:v34 name:v35];

  v36 = [v26 configuration];
  v37 = [v36 userContentController];

  v38 = *(v17 + qword_27FF67188);
  v39 = *(v17 + qword_27FF67188 + 8);

  v40 = sub_2643B04E8();

  [v37 addScriptMessageHandler:v17 name:v40];

  v41 = MEMORY[0x277D84F90];
  v42 = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[23].super_class = v42;
  v43 = *((*MEMORY[0x277D85000] & *v17) + 0xF8);
  v48 = (*MEMORY[0x277D85000] & *v17) + 248;
  v0[24].receiver = v43;
  v0[24].super_class = (v48 & 0xFFFFFFFFFFFFLL | 0xE2DD000000000000);
  v50 = (v43 + *v43);
  v44 = v43[1];
  v45 = swift_task_alloc();
  v0[25].receiver = v45;
  *v45 = v0;
  v45[1] = sub_2643ACBE0;

  return v50(v0 + 5, 0x4364694474736F68, 0xEE007463656E6E6FLL, v41, v42);
}

uint64_t sub_2643ACBE0()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v9 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = v2[39];
    v5 = v2[40];
    v6 = sub_2643AD51C;
  }

  else
  {
    v7 = v2[47];
    sub_26439E21C((v2 + 10), &qword_27FF66D38, &unk_2643B3C80);

    v4 = v2[39];
    v5 = v2[40];
    v6 = sub_2643ACD18;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2643ACD18()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[31];

  v2(v5, v3, v6);
  v7 = sub_2643B0498();
  v8 = sub_2643B0648();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264382000, v7, v8, "SOSUIWebRTCRPC.init: web client already loaded", v9, 2u);
    MEMORY[0x266736CC0](v9, -1, -1);
  }

  v10 = v0[46];
  v11 = v0[41];
  v12 = v0[35];
  v13 = v0[31];
  v14 = v0[32];
  v15 = v0[26];

  v16 = (v11 + v10);
  v17 = *(v14 + 8);
  v17(v12, v13);
  v18 = [v15 configuration];
  v19 = [v18 userContentController];

  v20 = *v16;
  v21 = v16[1];

  v22 = sub_2643B04E8();

  [v19 removeScriptMessageHandlerForName_];

  v23 = v0[44];
  (v0[43])(v0[34], v0[42], v0[31]);
  v24 = sub_2643B0498();
  v25 = sub_2643B0648();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[45];
  v29 = v0[26];
  v28 = v0[27];
  if (v26)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_264382000, v24, v25, "SOSUIWebRTCRPC.init: web client connected", v30, 2u);
    MEMORY[0x266736CC0](v30, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v31 = v0[35];
  v32 = v0[36];
  v33 = v0[33];
  v34 = v0[32] + 8;
  v17(v0[34], v0[31]);

  v35 = v0[1];
  v36 = v0[41];

  return v35(v36);
}

uint64_t sub_2643ACFC4()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 432);
  v4 = *(*v0 + 424);
  v8 = *v0;

  v5 = *(v1 + 320);
  v6 = *(v1 + 312);

  return MEMORY[0x2822009F8](sub_2643AD124, v6, v5);
}

uint64_t sub_2643AD124()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = MEMORY[0x277D84F90];
  v4 = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[56] = v4;
  v10 = (v1 + *v1);
  v5 = v1[1];
  v6 = swift_task_alloc();
  v0[57] = v6;
  *v6 = v0;
  v6[1] = sub_2643AD260;
  v7 = v0[49];
  v8 = v0[41];

  return (v10)(v0 + 14, 0x4364694474736F68, 0xEE007463656E6E6FLL, v3, v4);
}

uint64_t sub_2643AD260()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v9 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = v2[39];
    v5 = v2[40];
    v6 = sub_2643AD848;
  }

  else
  {
    v7 = v2[56];
    sub_26439E21C((v2 + 14), &qword_27FF66D38, &unk_2643B3C80);

    v4 = v2[39];
    v5 = v2[40];
    v6 = sub_2643AD398;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2643AD398()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 304);

  v3 = *(v0 + 416);
  v4 = *(v0 + 352);
  (*(v0 + 344))(*(v0 + 272), *(v0 + 336), *(v0 + 248));
  v5 = sub_2643B0498();
  v6 = sub_2643B0648();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 360);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_264382000, v5, v6, "SOSUIWebRTCRPC.init: web client connected", v11, 2u);
    MEMORY[0x266736CC0](v11, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v12 = *(v0 + 280);
  v13 = *(v0 + 288);
  v14 = *(v0 + 264);
  v15 = *(v0 + 256) + 8;
  v3(*(v0 + 272), *(v0 + 248));

  v16 = *(v0 + 8);
  v17 = *(v0 + 328);

  return v16(v17);
}

uint64_t sub_2643AD51C()
{
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v5 = v0[33];
  v6 = v0[31];

  v3(v5, v4, v6);
  v7 = sub_2643B0498();
  v8 = sub_2643B0648();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264382000, v7, v8, "SOSUIWebRTCRPC.init: web client not loaded, waiting for load", v9, 2u);
    MEMORY[0x266736CC0](v9, -1, -1);
  }

  v10 = v0[45];
  v12 = v0[32];
  v11 = v0[33];
  v13 = v0[31];

  v14 = *(v12 + 8);
  v0[52] = v14;
  v15 = v14(v11, v13);
  if ((*((*MEMORY[0x277D85000] & *v10) + 0x98))(v15))
  {
    v16 = v0[48];
    v17 = v0[49];
    v18 = MEMORY[0x277D84F90];
    v19 = sub_26439B2CC(MEMORY[0x277D84F90]);
    v0[56] = v19;
    v32 = (v16 + *v16);
    v20 = v16[1];
    v21 = swift_task_alloc();
    v0[57] = v21;
    *v21 = v0;
    v21[1] = sub_2643AD260;
    v22 = v0[49];
    v23 = v0[41];

    return (v32)(v0 + 14, 0x4364694474736F68, 0xEE007463656E6E6FLL, v18, v19);
  }

  else
  {
    v25 = v0[45];
    v26 = v0[41];
    v27 = v0[37];
    v28 = v0[26];
    v0[53] = sub_2643B05C8();
    v29 = swift_task_alloc();
    v0[54] = v29;
    v29[2] = v25;
    v29[3] = v28;
    v29[4] = v26;
    v30 = *(MEMORY[0x277D859E0] + 4);
    v31 = swift_task_alloc();
    v0[55] = v31;
    *v31 = v0;
    v31[1] = sub_2643ACFC4;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_2643AD848()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 408);
  v3 = *(v0 + 360);
  v4 = *(v0 + 304);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 272);
  v13 = *(v0 + 264);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);

  swift_unknownObjectRelease();

  v10 = *(v0 + 8);
  v11 = *(v0 + 464);

  return v10();
}

uint64_t sub_2643AD94C(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v22 = a4;
  v7 = *a2;
  v8 = *MEMORY[0x277D85000];
  v21 = *MEMORY[0x277D85000] & *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  (*(v10 + 16))(&v21 - v12, a1, v9);
  v14 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *((v8 & v7) + 0x50);
  v16 = v22;
  *(v15 + 24) = *(v21 + 88);
  *(v15 + 40) = *((v8 & v7) + 0x68);
  *(v15 + 48) = a3;
  *(v15 + 56) = v16;
  (*(v10 + 32))(v15 + v14, v13, v9);
  v17 = *((*MEMORY[0x277D85000] & *a2) + 0xB0);
  v18 = a3;
  v19 = v16;
  v17(sub_2643B02BC, v15);
}

uint64_t sub_2643ADB58(void *a1, uint64_t a2)
{
  v4 = sub_2643B04B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2643845D8();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2643B0498();
  v11 = sub_2643B0648();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_264382000, v10, v11, "SOSUIWebRTCRPC.init: received load message", v12, 2u);
    MEMORY[0x266736CC0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [a1 configuration];
  v14 = [v13 userContentController];

  v15 = *(a2 + qword_27FF67190);
  v16 = *(a2 + qword_27FF67190 + 8);
  v17 = sub_2643B04E8();
  [v14 removeScriptMessageHandlerForName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0);
  return sub_2643B05B8();
}

id sub_2643ADD50()
{
  v1 = v0;
  v2 = *MEMORY[0x277D85000] & *v0;
  v3 = sub_2643B04B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2643845D8();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_2643B0498();
  v10 = sub_2643B0618();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_264382000, v9, v10, "SOSUIWebRTCRPC.deinit", v11, 2u);
    MEMORY[0x266736CC0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong configuration];

    v15 = [v14 userContentController];
    v16 = *&v1[qword_27FF67188];
    v17 = *&v1[qword_27FF67188 + 8];

    v18 = sub_2643B04E8();

    [v15 removeScriptMessageHandlerForName_];
  }

  v19 = *(v2 + 96);
  v22[0] = *(v2 + 80);
  v22[1] = v19;
  v20 = type metadata accessor for SOSUIWebRTCRPC(0, v22);
  v23.receiver = v1;
  v23.super_class = v20;
  return objc_msgSendSuper2(&v23, sel_dealloc);
}

uint64_t sub_2643ADFEC(uint64_t a1)
{
  MEMORY[0x266736D40](a1 + qword_27FF67170);
  MEMORY[0x266736D40](a1 + qword_27FF67178);
  v2 = *(a1 + qword_27FF67188 + 8);

  v3 = *(a1 + qword_27FF67190 + 8);

  v4 = *(a1 + qword_27FF67198 + 8);
}

uint64_t sub_2643AE074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[48] = a5;
  v6[49] = v5;
  v6[46] = a3;
  v6[47] = a4;
  v6[44] = a1;
  v6[45] = a2;
  v7 = sub_2643B04B8();
  v6[50] = v7;
  v8 = *(v7 - 8);
  v6[51] = v8;
  v9 = *(v8 + 64) + 15;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  sub_2643B05D8();
  v6[54] = sub_2643B05C8();
  v11 = sub_2643B05A8();
  v6[55] = v11;
  v6[56] = v10;

  return MEMORY[0x2822009F8](sub_2643AE17C, v11, v10);
}

uint64_t sub_2643AE17C()
{
  v69 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);
  v7 = *(v0 + 360);
  sub_2643B06A8();

  v67 = 0x206E7275746572;
  v68 = 0xE700000000000000;
  MEMORY[0x266736370](*(v4 + qword_27FF67198), *(v4 + qword_27FF67198 + 8));
  MEMORY[0x266736370](46, 0xE100000000000000);
  MEMORY[0x266736370](v7, v5);
  MEMORY[0x266736370](40, 0xE100000000000000);
  *(v0 + 344) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF671C0, &unk_2643B3C90);
  sub_2643AFC1C();
  v8 = sub_2643B04C8();
  MEMORY[0x266736370](v8);

  MEMORY[0x266736370](41, 0xE100000000000000);
  v10 = v67;
  v9 = v68;
  *(v0 + 456) = v67;
  *(v0 + 464) = v9;
  v11 = sub_2643845D8();
  *(v0 + 472) = v11;
  v12 = *(v3 + 16);
  *(v0 + 480) = v12;
  *(v0 + 488) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v1, v11, v2);

  v13 = sub_2643B0498();
  v14 = sub_2643B0648();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 424);
  v18 = *(v0 + 400);
  v17 = *(v0 + 408);
  v63 = v9;
  v64 = v10;
  if (v15)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v67 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_26439AA1C(v10, v9, &v67);
    _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCRPC.rpcCall:argumentNames:arguments: making rpc call %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266736CC0](v20, -1, -1);
    MEMORY[0x266736CC0](v19, -1, -1);
  }

  v21 = *(v17 + 8);
  v21(v16, v18);
  *(v0 + 496) = v21;
  v22 = *(v0 + 384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF66E30, &qword_2643B1FF0);
  v23 = sub_2643B06E8();
  v29 = v23;
  v30 = 0;
  *(v0 + 504) = v23;
  v31 = v22 + 64;
  v32 = 1 << *(v22 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v22 + 64);
  v35 = (v32 + 63) >> 6;
  v65 = v23 + 64;
  v66 = v22;
  if (v34)
  {
    while (1)
    {
      v36 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_12:
      v39 = v36 | (v30 << 6);
      v40 = (*(v66 + 48) + 16 * v39);
      v41 = *v40;
      v42 = v40[1];
      sub_26439FFA4(*(v66 + 56) + 32 * v39, v0 + 256);

      sub_26439FFA4(v0 + 256, v0 + 96);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_26439FFA4(v0 + 256, v0 + 128);
      if (swift_dynamicCast())
      {
        goto LABEL_16;
      }

      sub_26439FFA4(v0 + 256, v0 + 160);
      if (swift_dynamicCast())
      {
        goto LABEL_16;
      }

      sub_26439FFA4(v0 + 256, v0 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67248, &qword_2643B3DB0);
      if (swift_dynamicCast())
      {
        sub_2643B01CC((v0 + 56), v0 + 16);
        v62 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v48 = sub_2643AECDC();
        if (v49)
        {
          *(v0 + 248) = MEMORY[0x277D837D0];
          *(v0 + 224) = v48;
          *(v0 + 232) = v49;
          sub_26439B448((v0 + 224), (v0 + 288));
        }

        else
        {
          *(v0 + 224) = 0u;
          *(v0 + 240) = 0u;
          v51 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
          *(v0 + 312) = sub_2643B0180();
          *(v0 + 288) = v51;
          if (*(v0 + 248))
          {
            sub_26439E21C(v0 + 224, &qword_27FF66D38, &unk_2643B3C80);
          }
        }

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
        sub_26439E21C(v0 + 56, &qword_27FF67250, &qword_2643B3DB8);
        v50 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
        *(v0 + 312) = sub_2643B0180();
        *(v0 + 288) = v50;
      }

LABEL_17:
      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      *(v65 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v44 = (v29[6] + 16 * v39);
      *v44 = v41;
      v44[1] = v42;
      v23 = sub_26439B448((v0 + 288), (v29[7] + 32 * v39));
      v45 = v29[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x282135BA8](v23, v24, v25, v26, v27, v28);
      }

      v29[2] = v47;
      if (!v34)
      {
        goto LABEL_7;
      }
    }

    v43 = *(v0 + 328);

LABEL_16:
    sub_26439FFA4(v0 + 256, v0 + 288);
    goto LABEL_17;
  }

LABEL_7:
  v37 = v30;
  while (1)
  {
    v30 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v30 >= v35)
    {
      break;
    }

    v38 = *(v31 + 8 * v30);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v34 = (v38 - 1) & v38;
      goto LABEL_12;
    }
  }

  v52 = (*((*MEMORY[0x277D85000] & **(v0 + 392)) + 0xA8))();
  *(v0 + 512) = v52;
  if (v52)
  {
    v53 = [objc_opt_self() pageWorld];
    *(v0 + 520) = v53;
    v54 = *(MEMORY[0x277CE37F0] + 4);
    v55 = swift_task_alloc();
    *(v0 + 528) = v55;
    *v55 = v0;
    v55[1] = sub_2643AE878;
    v23 = *(v0 + 352);
    v24 = v64;
    v25 = v63;
    v26 = v29;
    v27 = 0;
    v28 = v53;

    return MEMORY[0x282135BA8](v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v56 = *(v0 + 432);
    v57 = *(v0 + 352);

    *v57 = 0u;
    v57[1] = 0u;
    v59 = *(v0 + 416);
    v58 = *(v0 + 424);

    v60 = *(v0 + 8);

    return v60();
  }
}

uint64_t sub_2643AE878()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  v2[67] = v0;

  v5 = v2[65];
  v6 = v2[64];
  v7 = v2[63];
  if (v0)
  {

    v8 = v2[55];
    v9 = v2[56];
    v10 = sub_2643AEA74;
  }

  else
  {
    v11 = v2[58];

    v8 = v2[55];
    v9 = v2[56];
    v10 = sub_2643AEA00;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2643AEA00()
{
  v1 = v0[54];

  v3 = v0[52];
  v2 = v0[53];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2643AEA74()
{
  v37 = v0;
  v1 = v0[67];
  v3 = v0[60];
  v2 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[54];
  v7 = v0[52];
  v8 = v0[50];

  v3(v7, v4, v8);

  v9 = v1;
  v10 = sub_2643B0498();
  v11 = sub_2643B0648();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[67];
    v13 = v0[57];
    v14 = v0[58];
    v15 = v0[51];
    v34 = v0[52];
    v35 = v0[62];
    v33 = v0[50];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v18;
    *v16 = 136315394;
    v19 = sub_26439AA1C(v13, v14, &v36);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    _os_log_impl(&dword_264382000, v10, v11, "SOSUIWebRTCRPC.rpcCall:argumentNames:arguments: making rpc call %s failed, error: %@", v16, 0x16u);
    sub_26439E21C(v17, &qword_27FF671D8, &unk_2643B3CA0);
    MEMORY[0x266736CC0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x266736CC0](v18, -1, -1);
    MEMORY[0x266736CC0](v16, -1, -1);

    v35(v34, v33);
  }

  else
  {
    v22 = v0[62];
    v23 = v0[58];
    v25 = v0[51];
    v24 = v0[52];
    v26 = v0[50];

    v22(v24, v26);
  }

  v27 = v0[67];
  v28 = v0[52];
  v29 = v0[53];
  swift_willThrow();

  v30 = v0[1];
  v31 = v0[67];

  return v30();
}

uint64_t sub_2643AECDC()
{
  v0 = sub_2643B04B8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_2643B0538();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2643B0428();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2643B0418();
  v7 = sub_2643B0408();
  v9 = v8;
  sub_2643B0528();
  v10 = sub_2643B0518();
  sub_2643AFC80(v7, v9);

  return v10;
}

void sub_2643AEF38(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_2643AFCD4(v7);
}

void sub_2643AEFB0(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  sub_2643B0080();
}

uint64_t sub_2643AF018(uint64_t a1)
{
  v2 = sub_2643B04B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v31[-v8];
  v10 = sub_2643B0538();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26439FFA4(a1, v32);
  if (swift_dynamicCast())
  {
    sub_2643B0528();
    v15 = sub_2643B0508();
    v17 = v16;

    (*(v11 + 8))(v14, v10);
    if (v17 >> 60 != 15)
    {
      v27 = sub_2643B03F8();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      sub_2643B03E8();
      sub_2643B032C();
      sub_2643B03D8();
      v26 = 0;

      sub_2643B00B0(v15, v17);
      goto LABEL_11;
    }

    v18 = sub_2643845D8();
    (*(v3 + 16))(v7, v18, v2);
    v19 = sub_2643B0498();
    v20 = sub_2643B0648();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_264382000, v19, v20, "decodeJson: unable to access json data", v21, 2u);
      MEMORY[0x266736CC0](v21, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v22 = sub_2643845D8();
    (*(v3 + 16))(v9, v22, v2);
    v23 = sub_2643B0498();
    v24 = sub_2643B0648();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_264382000, v23, v24, "decodeJson: malformed json", v25, 2u);
      MEMORY[0x266736CC0](v25, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }

  v26 = 1;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v26;
}

uint64_t sub_2643AF3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a1;
  v44 = a4;
  v47 = a5;
  v7 = sub_2643B04B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = sub_2643B0678();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = sub_2643B0538();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26439FFA4(a2, v48);
  if (swift_dynamicCast())
  {
    v42 = a3;
    sub_2643B0528();
    v24 = sub_2643B0508();
    v26 = v25;

    (*(v20 + 8))(v23, v19);
    if (v26 >> 60 != 15)
    {
      v36 = sub_2643B03F8();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      sub_2643B03E8();
      v39 = v42;
      sub_2643B03D8();

      sub_2643B00B0(v24, v26);
      (*(*(v39 - 8) + 56))(v18, 0, 1, v39);
      (*(v45 + 32))(v47, v18, v46);
      return __swift_destroy_boxed_opaque_existential_0(v48);
    }

    v27 = sub_2643845D8();
    (*(v8 + 16))(v14, v27, v7);
    v28 = sub_2643B0498();
    v29 = sub_2643B0648();
    v30 = os_log_type_enabled(v28, v29);
    a3 = v42;
    if (v30)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_264382000, v28, v29, "decodeJson: unable to access json data", v31, 2u);
      MEMORY[0x266736CC0](v31, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
  }

  else
  {
    v32 = sub_2643845D8();
    (*(v8 + 16))(v12, v32, v7);
    v33 = sub_2643B0498();
    v34 = sub_2643B0648();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_264382000, v33, v34, "decodeJson: malformed json", v35, 2u);
      MEMORY[0x266736CC0](v35, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
  }

  (*(*(a3 - 8) + 56))(v47, 1, 1, a3);
  return __swift_destroy_boxed_opaque_existential_0(v48);
}

void (*sub_2643AF870(void *a1))(void)
{
  v2 = v1;
  v4 = sub_2643B04B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-v10];
  v12 = [a1 body];
  sub_2643B0688();
  swift_unknownObjectRelease();
  LOBYTE(a1) = sub_2643AF018(v30);
  __swift_destroy_boxed_opaque_existential_0(v30);
  v13 = sub_2643845D8();
  v14 = *(v5 + 16);
  if (a1)
  {
    v14(v9, v13, v4);
    v15 = sub_2643B0498();
    v16 = sub_2643B0648();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30[0] = v18;
      *v17 = 136315138;
      v29[15] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67270, &unk_2643B3DD0);
      v19 = sub_2643B0548();
      v21 = sub_26439AA1C(v19, v20, v30);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_264382000, v15, v16, "SOSUIWebRTCRPC.LoadedListener: unhandled message %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x266736CC0](v18, -1, -1);
      MEMORY[0x266736CC0](v17, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    v14(v11, v13, v4);
    v23 = sub_2643B0498();
    v24 = sub_2643B0648();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_264382000, v23, v24, "SOSUIWebRTCRPC.LoadedListener: web client loaded message received", v25, 2u);
      MEMORY[0x266736CC0](v25, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    v26 = MEMORY[0x277D85000];
    v27 = (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(1);
    result = (*((*v26 & *v2) + 0x80))(v27);
    if (result)
    {
      v28 = result;
      result();
      return sub_26439B0AC(v28);
    }
  }

  return result;
}

unint64_t sub_2643AFC1C()
{
  result = qword_27FF671C8;
  if (!qword_27FF671C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF671C0, &unk_2643B3C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF671C8);
  }

  return result;
}

uint64_t sub_2643AFC80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2643AFCD4(void *a1)
{
  v30 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v27 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_2643B04B8();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v3 & v2) + 0x50);
  v9 = sub_2643B0678();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  v15 = *(v8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  sub_2643AC180(v30, *(v1 + qword_27FF67180), v8, *((v3 & v2) + 0x60), v14);
  if ((*(v15 + 48))(v14, 1, v8) == 1)
  {
    (*(v10 + 8))(v14, v9);
    v19 = sub_2643845D8();
    v21 = v28;
    v20 = v29;
    (*(v28 + 16))(v7, v19, v29);
    v22 = sub_2643B0498();
    v23 = sub_2643B0648();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_264382000, v22, v23, "SOSUIWebRTCRPC.userContentController:didReceive: failed to decode message", v24, 2u);
      MEMORY[0x266736CC0](v24, -1, -1);
    }

    return (*(v21 + 8))(v7, v20);
  }

  else
  {
    v26 = (*(v15 + 32))(v18, v14, v8);
    if ((*((*MEMORY[0x277D85000] & *v1) + 0xC0))(v26))
    {
      (*(*(v27 + 104) + 16))(v18, *(v27 + 88));
      swift_unknownObjectRelease();
    }

    return (*(v15 + 8))(v18, v8);
  }
}

uint64_t sub_2643B00B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2643AFC80(a1, a2);
  }

  return a1;
}

unint64_t sub_2643B0180()
{
  result = qword_27FF67258;
  if (!qword_27FF67258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF67258);
  }

  return result;
}

uint64_t sub_2643B01CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2643B01E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2643B02BC()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0) - 8) + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return sub_2643ADB58(v2, v3);
}

unint64_t sub_2643B032C()
{
  result = qword_27FF67278;
  if (!qword_27FF67278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67278);
  }

  return result;
}