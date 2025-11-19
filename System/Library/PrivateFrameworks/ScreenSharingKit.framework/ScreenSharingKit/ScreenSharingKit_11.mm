uint64_t sub_264AD99BC(uint64_t a1)
{
  v2 = sub_264AD9D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AD99F8(uint64_t a1)
{
  v2 = sub_264AD9D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264AD9A34()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_264AD9A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264ADA62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264AD9AC4(uint64_t a1)
{
  v2 = sub_264AD9C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AD9B00(uint64_t a1)
{
  v2 = sub_264AD9C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264AD9B3C(uint64_t a1)
{
  v2 = sub_264AD9E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AD9B78(uint64_t a1)
{
  v2 = sub_264AD9E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264AD9BB4(uint64_t a1)
{
  v2 = sub_264AD9CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AD9BF0(uint64_t a1)
{
  v2 = sub_264AD9CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264AD9C60()
{
  result = qword_27FF8BB98;
  if (!qword_27FF8BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BB98);
  }

  return result;
}

unint64_t sub_264AD9CB4()
{
  result = qword_27FF8BBA0;
  if (!qword_27FF8BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBA0);
  }

  return result;
}

unint64_t sub_264AD9D08()
{
  result = qword_27FF8BBA8;
  if (!qword_27FF8BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBA8);
  }

  return result;
}

unint64_t sub_264AD9D5C()
{
  result = qword_27FF8BBB0;
  if (!qword_27FF8BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBB0);
  }

  return result;
}

unint64_t sub_264AD9DB0()
{
  result = qword_27FF8BBB8;
  if (!qword_27FF8BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBB8);
  }

  return result;
}

unint64_t sub_264AD9E04()
{
  result = qword_27FF8BBC0;
  if (!qword_27FF8BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBC0);
  }

  return result;
}

unint64_t sub_264AD9E58()
{
  result = qword_27FF8BBE8;
  if (!qword_27FF8BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBE8);
  }

  return result;
}

unint64_t sub_264AD9EAC()
{
  result = qword_27FF8BBF0;
  if (!qword_27FF8BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBF0);
  }

  return result;
}

BOOL sub_264AD9F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v3;
  v4 = *(a1 + 16);
  v36 = *a1;
  v37 = v4;
  v5 = *(a1 + 48);
  v7 = *a1;
  v6 = *(a1 + 16);
  v38 = *(a1 + 32);
  v39 = v5;
  v8 = *(a2 + 16);
  v43 = *a2;
  *v44 = v8;
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  *v45 = *(a2 + 64);
  *&v45[16] = v10;
  v11 = *(a2 + 48);
  v12 = *a2;
  v13 = *(a2 + 16);
  *&v44[16] = *(a2 + 32);
  *&v44[32] = v11;
  v46[0] = v7;
  v46[1] = v6;
  v14 = *(a1 + 80);
  v46[4] = v40;
  v46[5] = v14;
  v46[2] = v38;
  v46[3] = v2;
  v50 = *&v44[16];
  v49 = v13;
  v42 = *(a1 + 96);
  *&v45[32] = *(a2 + 96);
  v15 = *(a1 + 96);
  v48 = v12;
  v16 = *(a2 + 80);
  v17 = *(a2 + 96);
  v47 = v15;
  v54 = v17;
  v53 = v16;
  v52 = *v45;
  v51 = v9;
  if (!(*(&v39 + 1) >> 62))
  {
    if (!(*(&v11 + 1) >> 62))
    {
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = *(&v39 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      v33 = v40;
      v34 = v41;
      v35 = v42;
      v26[0] = v43;
      v26[1] = *v44;
      v26[2] = *&v44[16];
      v26[3] = __PAIR128__(*(&v11 + 1), *&v44[32]);
      v26[4] = *v45;
      v26[5] = *&v45[16];
      v27 = *&v45[32];
      sub_264A54F24(&v43, v25);
      sub_264A54F24(&v36, v25);
      sub_264A54F24(&v43, v25);
      sub_264A54F24(&v36, v25);
      v18 = sub_264A183B8(&v28, v26);
      sub_264ADA18C(v46);
      sub_264ADA1F4(&v43);
      sub_264ADA1F4(&v36);
      return v18;
    }

    v20 = *(a1 + 80);
    v33 = *(a1 + 64);
    v34 = v20;
    v21 = *(a1 + 96);
    v22 = *(a1 + 16);
    v28 = *a1;
    v29 = v22;
    v23 = *(a1 + 48);
    v30 = *(a1 + 32);
    v31 = v23;
    v35 = v21;
    v32 = *(&v23 + 1) & 0x3FFFFFFFFFFFFFFFLL;
    sub_264A189F8(&v28, v26);
LABEL_12:
    sub_264A54F24(&v43, &v28);
    sub_264ADA18C(v46);
    return 0;
  }

  if (*(&v39 + 1) >> 62 != 1)
  {
    if (*(&v11 + 1) >> 62 == 2 && *(&v11 + 1) == 0x8000000000000000)
    {
      v19 = vorrq_s8(vorrq_s8(*&v45[8], *&v45[24]), vorrq_s8(*&v44[8], *&v44[24]));
      if (!(*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *v45 | *v44 | *(&v43 + 1) | v43))
      {
        sub_264ADA18C(v46);
        return 1;
      }
    }

    goto LABEL_12;
  }

  if (*(&v11 + 1) >> 62 != 1)
  {
    goto LABEL_12;
  }

  sub_264ADA18C(v46);
  return v43 == v36;
}

uint64_t sub_264ADA18C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BBF8, &qword_264B524E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264ADA268()
{
  result = qword_27FF8BC00;
  if (!qword_27FF8BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC00);
  }

  return result;
}

unint64_t sub_264ADA2C0()
{
  result = qword_27FF8BC08;
  if (!qword_27FF8BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC08);
  }

  return result;
}

unint64_t sub_264ADA318()
{
  result = qword_27FF8BC10;
  if (!qword_27FF8BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC10);
  }

  return result;
}

unint64_t sub_264ADA370()
{
  result = qword_27FF8BC18;
  if (!qword_27FF8BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC18);
  }

  return result;
}

unint64_t sub_264ADA3C8()
{
  result = qword_27FF8BC20;
  if (!qword_27FF8BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC20);
  }

  return result;
}

unint64_t sub_264ADA420()
{
  result = qword_27FF8BC28;
  if (!qword_27FF8BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC28);
  }

  return result;
}

unint64_t sub_264ADA478()
{
  result = qword_27FF8BC30;
  if (!qword_27FF8BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC30);
  }

  return result;
}

unint64_t sub_264ADA4D0()
{
  result = qword_27FF8BC38;
  if (!qword_27FF8BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC38);
  }

  return result;
}

unint64_t sub_264ADA528()
{
  result = qword_27FF8BC40;
  if (!qword_27FF8BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC40);
  }

  return result;
}

unint64_t sub_264ADA580()
{
  result = qword_27FF8BC48;
  if (!qword_27FF8BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC48);
  }

  return result;
}

unint64_t sub_264ADA5D8()
{
  result = qword_27FF8BC50;
  if (!qword_27FF8BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC50);
  }

  return result;
}

uint64_t sub_264ADA62C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000264B60330 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000264B60350 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_264ADA760()
{
  sub_264B41B84();
  sub_264B41084();
  return sub_264B41BB4();
}

uint64_t sub_264ADA7E4()
{
  sub_264B41B84();
  sub_264B41084();
  return sub_264B41BB4();
}

uint64_t sub_264ADA840@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264B418D4();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_264ADA980()
{
  result = qword_27FF8BC58;
  if (!qword_27FF8BC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8BC60, qword_264B52998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC58);
  }

  return result;
}

unint64_t sub_264ADA9E8()
{
  result = qword_27FF8BC68;
  if (!qword_27FF8BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC68);
  }

  return result;
}

unint64_t sub_264ADAA3C()
{
  result = qword_27FF8BC70;
  if (!qword_27FF8BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC70);
  }

  return result;
}

uint64_t type metadata accessor for HIDMessage()
{
  result = qword_27FF8BC78;
  if (!qword_27FF8BC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264ADAADC()
{
  result = type metadata accessor for HIDUpdateInputDevicesMessage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HIDReportMessage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264ADAB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HIDMessage();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  type metadata accessor for ControlMessage();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_264ADBED4(a1, v11, type metadata accessor for HIDMessage);
    sub_264ADBED4(v11, v8, type metadata accessor for HIDMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = type metadata accessor for HIDReportMessage;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = type metadata accessor for HIDUpdateInputDevicesMessage;
    }

    sub_264ADBED4(v8, v13, v15);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_264ADBED4(v13, a2, type metadata accessor for HIDMessage);
    return (*(v19 + 56))(a2, 0, 1, v4);
  }

  sub_264ADC4F8(a1, type metadata accessor for ControlMessage);
  v16 = *(v19 + 56);

  return v16(a2, 1, 1, v4);
}

uint64_t sub_264ADADA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BCD8, &qword_264B52B40);
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BCE0, &qword_264B52B48);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v36 - v7;
  v39 = type metadata accessor for HIDReportMessage();
  v8 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BCE8, &qword_264B52B50);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v36 = type metadata accessor for HIDUpdateInputDevicesMessage();
  v14 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HIDMessage();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BCF0, &unk_264B52B58);
  v21 = *(v48 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v48);
  v24 = &v36 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264ADBF3C();
  sub_264B41BD4();
  sub_264ADBE70(v47, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v40;
      sub_264ADBED4(v20, v40, type metadata accessor for HIDReportMessage);
      v50 = 1;
      sub_264ADBFE4();
      v28 = v42;
      v29 = v48;
      sub_264B419B4();
      sub_264ADC08C(&qword_27FF8BCF8, type metadata accessor for HIDReportMessage);
      v30 = v46;
      sub_264B41A24();
      (*(v45 + 8))(v28, v30);
      sub_264ADC4F8(v27, type metadata accessor for HIDReportMessage);
      return (*(v21 + 8))(v24, v29);
    }

    else
    {
      v51 = 2;
      sub_264ADBF90();
      v34 = v41;
      v35 = v48;
      sub_264B419B4();
      (*(v43 + 8))(v34, v44);
      return (*(v21 + 8))(v24, v35);
    }
  }

  else
  {
    sub_264ADBED4(v20, v16, type metadata accessor for HIDUpdateInputDevicesMessage);
    v49 = 0;
    sub_264ADC038();
    v32 = v48;
    sub_264B419B4();
    sub_264ADC08C(&qword_27FF8BD00, type metadata accessor for HIDUpdateInputDevicesMessage);
    v33 = v38;
    sub_264B41A24();
    (*(v37 + 8))(v13, v33);
    sub_264ADC4F8(v16, type metadata accessor for HIDUpdateInputDevicesMessage);
    return (*(v21 + 8))(v24, v32);
  }
}

uint64_t sub_264ADB3B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BC88, &qword_264B52B18);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v55 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BC90, &qword_264B52B20);
  v64 = *(v61 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  v66 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BC98, &qword_264B52B28);
  v9 = *(v8 - 8);
  v59 = v8;
  v60 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BCA0, &unk_264B52B30);
  v69 = *(v65 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v65);
  v15 = &v55 - v14;
  v16 = type metadata accessor for HIDMessage();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v55 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v55 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_264ADBF3C();
  v28 = v70;
  sub_264B41BC4();
  if (!v28)
  {
    v56 = v23;
    v57 = v20;
    v29 = v66;
    v30 = v67;
    v70 = 0;
    v58 = v25;
    v31 = v16;
    v32 = v68;
    v33 = v65;
    v34 = sub_264B419A4();
    v35 = (2 * *(v34 + 16)) | 1;
    v72 = v34;
    v73 = v34 + 32;
    v74 = 0;
    v75 = v35;
    v36 = sub_2649E0EDC();
    v37 = v15;
    if (v36 == 3 || v74 != v75 >> 1)
    {
      v43 = sub_264B417A4();
      swift_allocError();
      v45 = v44;
      v46 = v33;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
      *v45 = v31;
      sub_264B41904();
      sub_264B41794();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v69 + 8))(v37, v46);
    }

    else
    {
      if (v36)
      {
        v60 = v31;
        if (v36 == 1)
        {
          v76 = 1;
          sub_264ADBFE4();
          v38 = v70;
          sub_264B418F4();
          v39 = v69;
          if (!v38)
          {
            v40 = v32;
            type metadata accessor for HIDReportMessage();
            sub_264ADC08C(&qword_27FF8BCC0, type metadata accessor for HIDReportMessage);
            v41 = v57;
            v42 = v61;
            sub_264B41984();
            (*(v64 + 8))(v29, v42);
            (*(v39 + 8))(v37, v33);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v54 = v58;
            sub_264ADBED4(v41, v58, type metadata accessor for HIDMessage);
LABEL_17:
            sub_264ADBED4(v54, v40, type metadata accessor for HIDMessage);
            return __swift_destroy_boxed_opaque_existential_0(v71);
          }
        }

        else
        {
          v76 = 2;
          sub_264ADBF90();
          v50 = v70;
          sub_264B418F4();
          v39 = v69;
          if (!v50)
          {
            v40 = v32;
            (*(v62 + 8))(v30, v63);
            (*(v39 + 8))(v37, v33);
            swift_unknownObjectRelease();
            v54 = v58;
            swift_storeEnumTagMultiPayload();
            goto LABEL_17;
          }
        }
      }

      else
      {
        v76 = 0;
        sub_264ADC038();
        v49 = v70;
        sub_264B418F4();
        if (!v49)
        {
          type metadata accessor for HIDUpdateInputDevicesMessage();
          v51 = v12;
          sub_264ADC08C(&qword_27FF8BCD0, type metadata accessor for HIDUpdateInputDevicesMessage);
          v52 = v56;
          v53 = v59;
          sub_264B41984();
          (*(v60 + 8))(v51, v53);
          (*(v69 + 8))(v15, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v54 = v58;
          sub_264ADBED4(v52, v58, type metadata accessor for HIDMessage);
          v40 = v32;
          goto LABEL_17;
        }

        v39 = v69;
      }

      (*(v39 + 8))(v15, v33);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v71);
}

unint64_t sub_264ADBB84()
{
  v1 = 0x74726F706572;
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
    return 0xD000000000000012;
  }
}

uint64_t sub_264ADBBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264ADC960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264ADBC0C(uint64_t a1)
{
  v2 = sub_264ADBF3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264ADBC48(uint64_t a1)
{
  v2 = sub_264ADBF3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264ADBC84(uint64_t a1)
{
  v2 = sub_264ADBFE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264ADBCC0(uint64_t a1)
{
  v2 = sub_264ADBFE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264ADBCFC(uint64_t a1)
{
  v2 = sub_264ADBF90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264ADBD38(uint64_t a1)
{
  v2 = sub_264ADBF90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264ADBD74(uint64_t a1)
{
  v2 = sub_264ADC038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264ADBDB0(uint64_t a1)
{
  v2 = sub_264ADC038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264ADBE20@<X0>(uint64_t a1@<X8>)
{
  sub_264ADBE70(v1, a1);
  type metadata accessor for ControlMessage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_264ADBE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264ADBED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_264ADBF3C()
{
  result = qword_27FF8BCA8;
  if (!qword_27FF8BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BCA8);
  }

  return result;
}

unint64_t sub_264ADBF90()
{
  result = qword_27FF8BCB0;
  if (!qword_27FF8BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BCB0);
  }

  return result;
}

unint64_t sub_264ADBFE4()
{
  result = qword_27FF8BCB8;
  if (!qword_27FF8BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BCB8);
  }

  return result;
}

unint64_t sub_264ADC038()
{
  result = qword_27FF8BCC8;
  if (!qword_27FF8BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BCC8);
  }

  return result;
}

uint64_t sub_264ADC08C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264ADC0D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDReportMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HIDUpdateInputDevicesMessage();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HIDMessage();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89530, &qword_264B47C10);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_264ADBE70(a1, &v31 - v22);
  sub_264ADBE70(a2, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_264ADBE70(v23, v18);
    if (swift_getEnumCaseMultiPayload())
    {
      v27 = type metadata accessor for HIDUpdateInputDevicesMessage;
      v28 = v18;
LABEL_10:
      sub_264ADC4F8(v28, v27);
      goto LABEL_11;
    }

    sub_264ADBED4(&v23[v24], v11, type metadata accessor for HIDUpdateInputDevicesMessage);
    if ((sub_264B400C4() & 1) == 0 || (sub_264A16F8C(*&v18[*(v8 + 20)], *&v11[*(v8 + 20)]), (v30 & 1) == 0))
    {
      sub_264ADC4F8(v11, type metadata accessor for HIDUpdateInputDevicesMessage);
      sub_264ADC4F8(v18, type metadata accessor for HIDUpdateInputDevicesMessage);
      sub_264ADC4F8(v23, type metadata accessor for HIDMessage);
      goto LABEL_12;
    }

    sub_264ADC4F8(v11, type metadata accessor for HIDUpdateInputDevicesMessage);
    sub_264ADC4F8(v18, type metadata accessor for HIDUpdateInputDevicesMessage);
LABEL_8:
    sub_264ADC4F8(v23, type metadata accessor for HIDMessage);
    v26 = 1;
    return v26 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_11:
      sub_264ADC490(v23);
LABEL_12:
      v26 = 0;
      return v26 & 1;
    }

    goto LABEL_8;
  }

  sub_264ADBE70(v23, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for HIDReportMessage;
    v28 = v16;
    goto LABEL_10;
  }

  sub_264ADBED4(&v23[v24], v7, type metadata accessor for HIDReportMessage);
  v26 = sub_264ADDE28(v16, v7);
  sub_264ADC4F8(v7, type metadata accessor for HIDReportMessage);
  sub_264ADC4F8(v16, type metadata accessor for HIDReportMessage);
  sub_264ADC4F8(v23, type metadata accessor for HIDMessage);
  return v26 & 1;
}

uint64_t sub_264ADC490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89530, &qword_264B47C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264ADC4F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264ADC59C()
{
  result = qword_27FF8BD08;
  if (!qword_27FF8BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD08);
  }

  return result;
}

unint64_t sub_264ADC5F4()
{
  result = qword_27FF8BD10;
  if (!qword_27FF8BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD10);
  }

  return result;
}

unint64_t sub_264ADC64C()
{
  result = qword_27FF8BD18;
  if (!qword_27FF8BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD18);
  }

  return result;
}

unint64_t sub_264ADC6A4()
{
  result = qword_27FF8BD20;
  if (!qword_27FF8BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD20);
  }

  return result;
}

unint64_t sub_264ADC6FC()
{
  result = qword_27FF8BD28;
  if (!qword_27FF8BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD28);
  }

  return result;
}

unint64_t sub_264ADC754()
{
  result = qword_27FF8BD30;
  if (!qword_27FF8BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD30);
  }

  return result;
}

unint64_t sub_264ADC7AC()
{
  result = qword_27FF8BD38;
  if (!qword_27FF8BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD38);
  }

  return result;
}

unint64_t sub_264ADC804()
{
  result = qword_27FF8BD40;
  if (!qword_27FF8BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD40);
  }

  return result;
}

unint64_t sub_264ADC85C()
{
  result = qword_27FF8BD48;
  if (!qword_27FF8BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD48);
  }

  return result;
}

unint64_t sub_264ADC8B4()
{
  result = qword_27FF8BD50;
  if (!qword_27FF8BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD50);
  }

  return result;
}

unint64_t sub_264ADC90C()
{
  result = qword_27FF8BD58;
  if (!qword_27FF8BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD58);
  }

  return result;
}

uint64_t sub_264ADC960(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000264B60370 == a2;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F706572 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000264B60390 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t FoundationBackedUserDefaultsPrimitives.__allocating_init(defaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id sub_264ADCAB4()
{
  v1 = *(v0 + 16);
  v2 = sub_264B41014();
  v3 = [v1 integerForKey_];

  return v3;
}

uint64_t sub_264ADCAFC()
{
  v1 = *(v0 + 16);
  v2 = sub_264B41014();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_264B41044();

  return v4;
}

uint64_t sub_264ADCB80@<X0>(char a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if ((a1 & 1) != 0 && (sub_264B41074(), v5 = os_variant_allows_internal_security_policies(), , (v5 & 1) == 0))
  {
    v11 = *(*(a2 - 8) + 56);

    return v11(a3, 1, 1, a2);
  }

  else
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_264B41014();
    v8 = [v6 objectForKey_];

    if (v8)
    {
      sub_264B41664();
      swift_unknownObjectRelease();
      sub_264A23FD8(&v12, v13);
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
    v9 = swift_dynamicCast();
    return (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
  }
}

uint64_t FoundationBackedUserDefaultsPrimitives.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_264ADCDCC()
{
  v1 = *(*v0 + 16);
  v2 = sub_264B41014();
  v3 = [v1 integerForKey_];

  return v3;
}

uint64_t sub_264ADCE18()
{
  v1 = *(*v0 + 16);
  v2 = sub_264B41014();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_264B41044();

  return v4;
}

id sub_264ADCE9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_264B41074();
    v3 = os_variant_allows_internal_security_policies();

    if (!v3)
    {
      return 0;
    }
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_264B41014();
  v6 = [v4 BOOLForKey_];

  return v6;
}

void sub_264ADCF64(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  sub_264A7BE8C(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x28223BE20](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_264B41A94();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_264B41014();
  [v2 setObject:v9 forKey:v10];

  swift_unknownObjectRelease();
}

unint64_t static TimeoutPrimitives.defaultForBuildConfiguration()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D83B88];
  a1[3] = MEMORY[0x277D83B88];
  result = sub_264A556EC();
  *a1 = 5;
  a1[8] = v2;
  a1[9] = result;
  a1[4] = result;
  a1[5] = 10;
  a1[13] = v2;
  a1[14] = result;
  a1[10] = 60;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_264ADD298(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264ADD2E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264ADD360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v12) & 0xC) != 0)
    {
      return 16 - ((4 * v12) & 0xC | (v12 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_264ADD454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v13 = (a1 + *(a4 + 24));
    *v13 = 0;
    v13[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t type metadata accessor for HIDReportMessage()
{
  result = qword_27FF8BD60;
  if (!qword_27FF8BD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264ADD578()
{
  sub_264ADD604();
  if (v0 <= 0x3F)
  {
    sub_264AAEA40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264ADD604()
{
  if (!qword_27FF8BD70)
  {
    v0 = sub_264B41614();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8BD70);
    }
  }
}

uint64_t sub_264ADD654(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BD90, &qword_264B530E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264ADDCBC();
  sub_264B41BD4();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v19) = 0;
  sub_264B419D4();
  if (!v2)
  {
    v13 = type metadata accessor for HIDReportMessage();
    v14 = *(v13 + 20);
    LOBYTE(v19) = 1;
    sub_264B40264();
    sub_264ADDDE4(&qword_27FF8BD98);
    sub_264B419C4();
    v15 = (v3 + *(v13 + 24));
    v16 = v15[1];
    v19 = *v15;
    v20 = v16;
    v18[15] = 2;
    sub_2649DEF18(v19, v16);
    sub_264A2E90C();
    sub_264B41A24();
    sub_2649DEF6C(v19, v20);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_264ADD854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BD78, &qword_264B530E0);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for HIDReportMessage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264ADDCBC();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v7;
  v18 = v25;
  LOBYTE(v27) = 0;
  v19 = v15;
  *v15 = sub_264B41934();
  v15[8] = v20 & 1;
  sub_264B40264();
  LOBYTE(v27) = 1;
  sub_264ADDDE4(&qword_27FF8BD88);
  sub_264B41924();
  sub_264ADDD10(v17, &v15[*(v12 + 20)]);
  v28 = 2;
  sub_264A2E960();
  v21 = v26;
  sub_264B41984();
  (*(v18 + 8))(v11, v21);
  *(v19 + *(v12 + 24)) = v27;
  sub_264ADDD80(v19, v24);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_264ADE124(v19, type metadata accessor for HIDReportMessage);
}

uint64_t sub_264ADDB8C()
{
  v1 = 0x7265646E6573;
  if (*v0 != 1)
  {
    v1 = 0x614474726F706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449746E657665;
  }
}

uint64_t sub_264ADDBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264ADE300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264ADDC10(uint64_t a1)
{
  v2 = sub_264ADDCBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264ADDC4C(uint64_t a1)
{
  v2 = sub_264ADDCBC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264ADDCBC()
{
  result = qword_27FF8BD80;
  if (!qword_27FF8BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD80);
  }

  return result;
}

uint64_t sub_264ADDD10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264ADDD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDReportMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264ADDDE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_264B40264();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264ADDE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_264B40264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89528, &qword_264B530F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_13;
    }
  }

  v18 = type metadata accessor for HIDReportMessage();
  v19 = *(v18 + 20);
  v20 = *(v13 + 48);
  sub_264A18824(a1 + v19, v16);
  sub_264A18824(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_2649D04D4(v16, &qword_27FF89520, &unk_264B47C00);
LABEL_16:
      v22 = sub_264A2E750(*(a1 + *(v18 + 24)), *(a1 + *(v18 + 24) + 8), *(a2 + *(v18 + 24)), *(a2 + *(v18 + 24) + 8));
      return v22 & 1;
    }

    goto LABEL_12;
  }

  sub_264A18824(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_264ADE124(v12, MEMORY[0x277D77AA8]);
LABEL_12:
    sub_2649D04D4(v16, &qword_27FF89528, &qword_264B530F0);
    goto LABEL_13;
  }

  sub_264ADE184(&v16[v20], v8);
  v24 = sub_264B40254();
  v25 = MEMORY[0x277D77AA8];
  sub_264ADE124(v8, MEMORY[0x277D77AA8]);
  sub_264ADE124(v12, v25);
  sub_2649D04D4(v16, &qword_27FF89520, &unk_264B47C00);
  if (v24)
  {
    goto LABEL_16;
  }

LABEL_13:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_264ADE124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264ADE184(uint64_t a1, uint64_t a2)
{
  v4 = sub_264B40264();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264ADE1FC()
{
  result = qword_27FF8BDA0;
  if (!qword_27FF8BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BDA0);
  }

  return result;
}

unint64_t sub_264ADE254()
{
  result = qword_27FF8BDA8;
  if (!qword_27FF8BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BDA8);
  }

  return result;
}

unint64_t sub_264ADE2AC()
{
  result = qword_27FF8BDB0;
  if (!qword_27FF8BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BDB0);
  }

  return result;
}

uint64_t sub_264ADE300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614474726F706572 && a2 == 0xEA00000000006174)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_264ADE41C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_264B3FFD4();
  v2[23] = v7;
  v8 = *(v7 - 8);
  v2[24] = v8;
  v9 = *(v8 + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ADE588, 0, 0);
}

uint64_t sub_264ADE588()
{
  v92 = v0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError;
  if (*&v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError])
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v3 = v0[16];
    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71D0);
    v5 = v1;
    v6 = v3;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v9 = v0[16];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v91 = v12;
    *v11 = 136446466;
    v0[14] = v10;
    type metadata accessor for MediaTransportAudioStream();
    v13 = v10;
    v14 = sub_264B41064();
    v16 = sub_2649CC004(v14, v15, &v91);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    v0[15] = v9;
    v17 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v18 = sub_264B41064();
    v20 = sub_2649CC004(v18, v19, &v91);

    *(v11 + 14) = v20;
    v21 = "%{public}s has already interrupted, ignoring: %{public}s";
LABEL_6:
    _os_log_impl(&dword_2649C6000, v7, v8, v21, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
LABEL_7:

    goto LABEL_8;
  }

  v28 = v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState];
  if (v28 == 4)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v43 = v0[16];
    v44 = sub_264B40964();
    __swift_project_value_buffer(v44, qword_27FFA71D0);
    v45 = v1;
    v46 = v43;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v47 = v0[16];
    v48 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v91 = v12;
    *v11 = 136446466;
    v0[10] = v48;
    type metadata accessor for MediaTransportAudioStream();
    v49 = v48;
    v50 = sub_264B41064();
    v52 = sub_2649CC004(v50, v51, &v91);

    *(v11 + 4) = v52;
    *(v11 + 12) = 2082;
    v0[11] = v47;
    v53 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v54 = sub_264B41064();
    v56 = sub_2649CC004(v54, v55, &v91);

    *(v11 + 14) = v56;
    v21 = "%{public}s is already tearing down, ignoring interruption due to: %{public}s)";
    goto LABEL_6;
  }

  if (v28 == 5)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v29 = v0[16];
    v30 = sub_264B40964();
    __swift_project_value_buffer(v30, qword_27FFA71D0);
    v31 = v1;
    v32 = v29;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v33 = v0[16];
    v34 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v91 = v12;
    *v11 = 136446466;
    v0[12] = v34;
    type metadata accessor for MediaTransportAudioStream();
    v35 = v34;
    v36 = sub_264B41064();
    v38 = sub_2649CC004(v36, v37, &v91);

    *(v11 + 4) = v38;
    *(v11 + 12) = 2082;
    v0[13] = v33;
    v39 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v40 = sub_264B41064();
    v42 = sub_2649CC004(v40, v41, &v91);

    *(v11 + 14) = v42;
    v21 = "%{public}s is already invalidated, ignoring interruption due to: %{public}s)";
    goto LABEL_6;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v58 = v0[24];
  v57 = v0[25];
  v90 = v0[23];
  v59 = v0[16];
  v60 = sub_264B40964();
  __swift_project_value_buffer(v60, qword_27FFA71D0);
  v61 = sub_264B41494();
  v0[8] = v59;
  v62 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v89 = sub_264B41064();
  v64 = v63;
  sub_264B3FF94();
  v65 = sub_264B3FFA4();
  v67 = v66;
  (*(v58 + 8))(v57, v90);
  v68 = sub_264B40944();
  v69 = v61;
  if (os_log_type_enabled(v68, v61))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v91 = v71;
    *v70 = 136446978;
    v72 = sub_2649CC004(v65, v67, &v91);

    *(v70 + 4) = v72;
    *(v70 + 12) = 2050;
    *(v70 + 14) = 60;
    *(v70 + 22) = 2082;
    *(v70 + 24) = sub_2649CC004(0xD000000000000010, 0x8000000264B5A2B0, &v91);
    *(v70 + 32) = 2082;
    *(v70 + 34) = sub_2649CC004(v89, v64, &v91);
    _os_log_impl(&dword_2649C6000, v68, v69, "%{public}s:%{public}ld %{public}s %{public}s", v70, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v71, -1, -1);
    MEMORY[0x266749940](v70, -1, -1);
  }

  else
  {
  }

  v73 = v0[22];
  v74 = v0[18];
  v75 = v0[19];
  v76 = v0[16];
  v77 = v0[17];
  v78 = *&v1[v2];
  *&v1[v2] = v76;
  v79 = v76;

  v80 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v77 + v80, v73, &qword_27FF89850, &qword_264B485E0);
  v81 = (*(v75 + 48))(v73, 1, v74);
  v82 = v0[22];
  if (v81)
  {
    sub_2649D04D4(v0[22], &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v84 = v0[19];
    v83 = v0[20];
    v85 = v0[18];
    v86 = v0[16];
    (*(v84 + 16))(v83, v0[22], v85);
    sub_2649D04D4(v82, &qword_27FF89850, &qword_264B485E0);
    v0[9] = v76;
    v87 = v86;
    sub_264B41384();
    (*(v84 + 8))(v83, v85);
  }

  v88 = v0[21];
  (*(v0[19] + 56))(v88, 1, 1, v0[18]);
  swift_beginAccess();
  sub_2649FECCC(v88, v77 + v80, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
LABEL_8:
  v22 = v0[25];
  v23 = v0[21];
  v24 = v0[22];
  v25 = v0[20];

  v26 = v0[1];

  return v26();
}

uint64_t sub_264ADEE50(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_264B3FFD4();
  v2[23] = v7;
  v8 = *(v7 - 8);
  v2[24] = v8;
  v9 = *(v8 + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ADEFBC, 0, 0);
}

uint64_t sub_264ADEFBC()
{
  v92 = v0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError;
  if (*&v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError])
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v3 = v0[16];
    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71D0);
    v5 = v1;
    v6 = v3;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v9 = v0[16];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v91 = v12;
    *v11 = 136446466;
    v0[14] = v10;
    type metadata accessor for MediaTransportVideoStream();
    v13 = v10;
    v14 = sub_264B41064();
    v16 = sub_2649CC004(v14, v15, &v91);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    v0[15] = v9;
    v17 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v18 = sub_264B41064();
    v20 = sub_2649CC004(v18, v19, &v91);

    *(v11 + 14) = v20;
    v21 = "%{public}s has already interrupted, ignoring: %{public}s";
LABEL_6:
    _os_log_impl(&dword_2649C6000, v7, v8, v21, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
LABEL_7:

    goto LABEL_8;
  }

  v28 = v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState];
  if (v28 == 4)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v43 = v0[16];
    v44 = sub_264B40964();
    __swift_project_value_buffer(v44, qword_27FFA71D0);
    v45 = v1;
    v46 = v43;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v47 = v0[16];
    v48 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v91 = v12;
    *v11 = 136446466;
    v0[10] = v48;
    type metadata accessor for MediaTransportVideoStream();
    v49 = v48;
    v50 = sub_264B41064();
    v52 = sub_2649CC004(v50, v51, &v91);

    *(v11 + 4) = v52;
    *(v11 + 12) = 2082;
    v0[11] = v47;
    v53 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v54 = sub_264B41064();
    v56 = sub_2649CC004(v54, v55, &v91);

    *(v11 + 14) = v56;
    v21 = "%{public}s is already tearing down, ignoring interruption due to: %{public}s)";
    goto LABEL_6;
  }

  if (v28 == 5)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v29 = v0[16];
    v30 = sub_264B40964();
    __swift_project_value_buffer(v30, qword_27FFA71D0);
    v31 = v1;
    v32 = v29;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v33 = v0[16];
    v34 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v91 = v12;
    *v11 = 136446466;
    v0[12] = v34;
    type metadata accessor for MediaTransportVideoStream();
    v35 = v34;
    v36 = sub_264B41064();
    v38 = sub_2649CC004(v36, v37, &v91);

    *(v11 + 4) = v38;
    *(v11 + 12) = 2082;
    v0[13] = v33;
    v39 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v40 = sub_264B41064();
    v42 = sub_2649CC004(v40, v41, &v91);

    *(v11 + 14) = v42;
    v21 = "%{public}s is already invalidated, ignoring interruption due to: %{public}s)";
    goto LABEL_6;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v58 = v0[24];
  v57 = v0[25];
  v90 = v0[23];
  v59 = v0[16];
  v60 = sub_264B40964();
  __swift_project_value_buffer(v60, qword_27FFA71D0);
  v61 = sub_264B41494();
  v0[8] = v59;
  v62 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v89 = sub_264B41064();
  v64 = v63;
  sub_264B3FF94();
  v65 = sub_264B3FFA4();
  v67 = v66;
  (*(v58 + 8))(v57, v90);
  v68 = sub_264B40944();
  v69 = v61;
  if (os_log_type_enabled(v68, v61))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v91 = v71;
    *v70 = 136446978;
    v72 = sub_2649CC004(v65, v67, &v91);

    *(v70 + 4) = v72;
    *(v70 + 12) = 2050;
    *(v70 + 14) = 60;
    *(v70 + 22) = 2082;
    *(v70 + 24) = sub_2649CC004(0xD000000000000010, 0x8000000264B5A2B0, &v91);
    *(v70 + 32) = 2082;
    *(v70 + 34) = sub_2649CC004(v89, v64, &v91);
    _os_log_impl(&dword_2649C6000, v68, v69, "%{public}s:%{public}ld %{public}s %{public}s", v70, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v71, -1, -1);
    MEMORY[0x266749940](v70, -1, -1);
  }

  else
  {
  }

  v73 = v0[22];
  v74 = v0[18];
  v75 = v0[19];
  v76 = v0[16];
  v77 = v0[17];
  v78 = *&v1[v2];
  *&v1[v2] = v76;
  v79 = v76;

  v80 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v77 + v80, v73, &qword_27FF89850, &qword_264B485E0);
  v81 = (*(v75 + 48))(v73, 1, v74);
  v82 = v0[22];
  if (v81)
  {
    sub_2649D04D4(v0[22], &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v84 = v0[19];
    v83 = v0[20];
    v85 = v0[18];
    v86 = v0[16];
    (*(v84 + 16))(v83, v0[22], v85);
    sub_2649D04D4(v82, &qword_27FF89850, &qword_264B485E0);
    v0[9] = v76;
    v87 = v86;
    sub_264B41384();
    (*(v84 + 8))(v83, v85);
  }

  v88 = v0[21];
  (*(v0[19] + 56))(v88, 1, 1, v0[18]);
  swift_beginAccess();
  sub_2649FECCC(v88, v77 + v80, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
LABEL_8:
  v22 = v0[25];
  v23 = v0[21];
  v24 = v0[22];
  v25 = v0[20];

  v26 = v0[1];

  return v26();
}

uint64_t sub_264ADF878(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_264AE9C14(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_264AE9D50(v3, v4);
    }

    else
    {
      v6 = sub_264AE9CCC(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

void sub_264ADF934(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71D0);
  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41474();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446466;
    v9 = sub_264B41064();
    v11 = sub_2649CC004(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v15 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState);
    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_2649C6000, v5, v6, "MediaTransportVideoStream state changed from %{public}s to %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  if (v2 == 5)
  {
    sub_264B41874();
    __break(1u);
  }
}

id sub_264ADFB4C()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream____lazy_storage___screenCapture;
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream____lazy_storage___screenCapture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream____lazy_storage___screenCapture);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CE5740]) init];
    [v4 setDisplayMode_];
    v5 = [objc_allocWithZone(MEMORY[0x277CE5738]) initWithDelegate:v0 withConfig:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_264ADFC04()
{
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState) == 5)
  {
    v2.receiver = v0;
    v2.super_class = type metadata accessor for MediaTransportVideoStream();
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MediaTransportVideoStream()
{
  result = qword_27FF8BE30;
  if (!qword_27FF8BE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264ADFEF8(uint64_t a1, void *a2)
{
  v4 = v2;
  v93 = a1;
  v97[19] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v82 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB8, &unk_264B53498);
  v90 = *(v91 - 8);
  v9 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v82 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v94 = *(v95 - 8);
  v11 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v92 = &v82 - v12;
  v13 = sub_264B40104();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v87 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v17 = *(*(v86 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v86);
  v88 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v82 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  v23 = *MEMORY[0x277CE57D0];
  *(inited + 32) = sub_264B41044();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v24;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x8000000264B5B600;
  v25 = *MEMORY[0x277CE57D8];
  *(inited + 80) = sub_264B41044();
  *(inited + 88) = v26;
  v27 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_sessionID;
  *(inited + 120) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(v14 + 16))(boxed_opaque_existential_1, &v4[v27], v13);
  v29 = sub_264A24308(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();

  v30 = sub_264AB4744(v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97[0] = a2;
  sub_264A2D2CC(v30, sub_264AE9B3C, 0, isUniquelyReferenced_nonNull_native, v97);
  if (!v3)
  {

    v32 = v97[0];
    v33 = *&v4[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream];
    v34 = [v33 streamType];
    v35 = v4;
    if (v34 != 1)
    {
      if (v34 == 3)
      {
        v84 = v32;
        v85 = 0;

        if (qword_27FF883E8 != -1)
        {
          swift_once();
        }

        v36 = sub_264B40964();
        __swift_project_value_buffer(v36, qword_27FFA71D0);
        v37 = v4;
        v38 = sub_264B40944();
        v39 = sub_264B41474();

        if (os_log_type_enabled(v38, v39))
        {
          v83 = v4;
          v40 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v97[0] = v82;
          *v40 = 136315138;
          v41 = [v33 nwClientID];
          if (v41)
          {
            v42 = v41;
            sub_264B400D4();

            v43 = 0;
          }

          else
          {
            v43 = 1;
          }

          (*(v14 + 56))(v21, v43, 1, v13);
          v59 = sub_264B41064();
          v61 = sub_2649CC004(v59, v60, v97);

          *(v40 + 4) = v61;
          _os_log_impl(&dword_2649C6000, v38, v39, "Creating video stream over nw path using clientID: %s", v40, 0xCu);
          v62 = v82;
          __swift_destroy_boxed_opaque_existential_0(v82);
          MEMORY[0x266749940](v62, -1, -1);
          MEMORY[0x266749940](v40, -1, -1);

          v35 = v83;
        }

        else
        {
        }

        v63 = [v33 nwClientID];
        v64 = v88;
        if (v63)
        {
          v65 = v87;
          v66 = v63;
          sub_264B400D4();

          (*(v14 + 32))(v64, v65, v13);
          v67 = 0;
        }

        else
        {
          v67 = 1;
        }

        (*(v14 + 56))(v64, v67, 1, v13);
        v68 = objc_allocWithZone(MEMORY[0x277CE5758]);
        v69 = sub_264B40F54();

        v97[0] = 0;
        v54 = [v68 initWithNWConnectionClientID:v64 options:v69 error:v97];

        v21 = v97[0];
        if (!v54)
        {
          v79 = v97[0];
          sub_264B3FF84();

          swift_willThrow();
          sub_2649D04D4(v64, &unk_27FF8BFC0, &qword_264B47140);
          goto LABEL_31;
        }

        v70 = v97[0];
        sub_2649D04D4(v64, &unk_27FF8BFC0, &qword_264B47140);
        goto LABEL_29;
      }

      sub_264A02DF0();
      swift_allocError();
      *v56 = 0;
      goto LABEL_20;
    }

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v44 = sub_264B40964();
    __swift_project_value_buffer(v44, qword_27FFA71D0);
    v45 = sub_264B40944();
    v46 = sub_264B41474();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2649C6000, v45, v46, "Creating video stream over socket path", v47, 2u);
      MEMORY[0x266749940](v47, -1, -1);
    }

    v48 = [v33 streamSocket];
    if ((v48 & 0x80000000) != 0)
    {

      v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v57 = sub_264B41014();
      [v21 initWithDomain:v57 code:-1 userInfo:0];

LABEL_20:
      swift_willThrow();
      goto LABEL_31;
    }

    v49 = v48;
    v85 = 0;
    v50 = xpc_dictionary_create(0, 0, 0);
    v51 = *MEMORY[0x277CE5788];
    if (*MEMORY[0x277CE5788])
    {
      v21 = v50;

      xpc_dictionary_set_fd(v21, v51, v49);
      v52 = objc_allocWithZone(MEMORY[0x277CE5758]);
      v53 = sub_264B40F54();

      v97[0] = 0;
      v54 = [v52 initWithNetworkSockets:v21 options:v53 error:v97];

      if (v54)
      {
        v55 = v97[0];
        swift_unknownObjectRelease();
LABEL_29:
        v71 = v90;
        v72 = v89;
        v73 = v91;
        (*(v90 + 104))(v89, *MEMORY[0x277D85778], v91);
        v21 = v54;
        v74 = v92;
        sub_264B41284();
        (*(v71 + 8))(v72, v73);
        v75 = v94;
        v76 = v96;
        v77 = v95;
        (*(v94 + 16))(v96, v74, v95);
        (*(v75 + 56))(v76, 0, 1, v77);
        v78 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
        swift_beginAccess();
        sub_2649FECCC(v76, &v35[v78], &qword_27FF8BFA0, &qword_264B53480);
        swift_endAccess();
        [v21 setDelegate_];

        (*(v75 + 8))(v74, v77);
        goto LABEL_31;
      }

      v58 = v97[0];
      sub_264B3FF84();

      swift_willThrow();
      swift_unknownObjectRelease();
LABEL_31:
      v80 = *MEMORY[0x277D85DE8];
      return v21;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264AE0A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v5[28] = v10;
  v11 = *(v10 - 8);
  v5[29] = v11;
  v12 = *(v11 + 64) + 15;
  v5[30] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89870, &qword_264B48600) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF88, &qword_264B53448);
  v5[33] = v15;
  v16 = *(v15 - 8);
  v5[34] = v16;
  v17 = *(v16 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = sub_264B41244();
  v5[37] = sub_264B41234();
  v19 = sub_264B411C4();
  v5[38] = v19;
  v5[39] = v18;

  return MEMORY[0x2822009F8](sub_264AE0CEC, v19, v18);
}

uint64_t sub_264AE0CEC()
{
  v1 = v0[35];
  v2 = v0[21];
  v3 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF78, &qword_264B53418);
  sub_264B412C4();
  swift_beginAccess();
  v4 = v0[36];
  v5 = sub_264B41234();
  v0[40] = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_264AE0DE8;
  v8 = v0[35];
  v9 = v0[33];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 14, v5, v10, v9);
}

uint64_t sub_264AE0DE8()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  v7 = *v0;

  v4 = *(v1 + 312);
  v5 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE0F2C, v5, v4);
}

uint64_t sub_264AE0F2C()
{
  v129 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 336) = v1;
  *(v0 + 344) = v2;
  v3 = *(v0 + 128);
  if (v3 == 255)
  {
    v17 = *(v0 + 296);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_15:

    goto LABEL_16;
  }

  v4 = *(v0 + 176);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (!Strong)
  {
    v18 = *(v0 + 296);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    sub_264AEB15C(v1, v2, v3);
    goto LABEL_15;
  }

  v6 = Strong;
  if (v3 > 2)
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        sub_264AEB200(v1, v2, 3u);
        if (qword_27FF883E8 != -1)
        {
          swift_once();
        }

        v7 = sub_264B40964();
        __swift_project_value_buffer(v7, qword_27FFA71D0);
        sub_264AEB200(v1, v2, 3u);
        v8 = sub_264B40944();
        v9 = sub_264B414B4();
        sub_264AEB15C(v1, v2, 3u);
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v128 = v122;
          *v10 = 67240450;
          *(v10 + 4) = v1 & 1;
          *(v10 + 8) = 2082;
          *(v0 + 152) = v2;
          sub_264AEB200(v1, v2, 3u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BF90, &unk_264B53450);
          v11 = sub_264B41064();
          v13 = sub_2649CC004(v11, v12, &v128);

          *(v10 + 10) = v13;
          _os_log_impl(&dword_2649C6000, v8, v9, "ScreenCapture didStart=%{BOOL,public}d withError=%{public}s", v10, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v122);
          MEMORY[0x266749940](v122, -1, -1);
          MEMORY[0x266749940](v10, -1, -1);
        }

        if ((v1 & 1) != 0 || v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] == 5)
        {

          sub_264AEB15C(v1, v2, 3u);
          v14 = v1;
          v15 = v2;
          v16 = 3;
LABEL_66:
          sub_264AEB15C(v14, v15, v16);
          goto LABEL_67;
        }

        if (v2)
        {
          v78 = v2;
        }

        else
        {
          sub_264A02DF0();
          v78 = swift_allocError();
          *v118 = 11;
        }

        *(v0 + 408) = v78;
        sub_264AEB200(v1, v2, 3u);
        v80 = swift_task_alloc();
        *(v0 + 416) = v80;
        *v80 = v0;
        v81 = sub_264AE2994;
      }

      else
      {
        sub_264AEB200(v1, v2, 4u);
        if (qword_27FF883E8 != -1)
        {
          swift_once();
        }

        v67 = sub_264B40964();
        __swift_project_value_buffer(v67, qword_27FFA71D0);
        sub_264AEB200(v1, v2, 4u);
        v68 = sub_264B40944();
        v69 = sub_264B414B4();
        sub_264AEB15C(v1, v2, 4u);
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v128 = v126;
          *v70 = 67240450;
          *(v70 + 4) = v1 & 1;
          *(v70 + 8) = 2082;
          *(v0 + 144) = v2;
          sub_264AEB200(v1, v2, 4u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BF90, &unk_264B53450);
          v71 = sub_264B41064();
          v73 = sub_2649CC004(v71, v72, &v128);

          *(v70 + 10) = v73;
          _os_log_impl(&dword_2649C6000, v68, v69, "ScreenCapture didStop=%{BOOL,public}d withError=%{public}s", v70, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v126);
          MEMORY[0x266749940](v126, -1, -1);
          MEMORY[0x266749940](v70, -1, -1);
        }

        if ((v1 & 1) != 0 || v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] == 5)
        {

          sub_264AEB15C(v1, v2, 4u);
          v14 = v1;
          v15 = v2;
          v16 = 4;
          goto LABEL_66;
        }

        if (v2)
        {
          v78 = v2;
        }

        else
        {
          sub_264A02DF0();
          v78 = swift_allocError();
          *v119 = 12;
        }

        *(v0 + 424) = v78;
        sub_264AEB200(v1, v2, 4u);
        v80 = swift_task_alloc();
        *(v0 + 432) = v80;
        *v80 = v0;
        v81 = sub_264AE2BDC;
      }

      goto LABEL_96;
    }

    if (v3 == 5)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v32 = sub_264B40964();
      __swift_project_value_buffer(v32, qword_27FFA71D0);
      v33 = v1;
      v34 = v2;
      v35 = sub_264B40944();
      v36 = sub_264B41484();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v128 = v123;
        *v37 = 138543618;
        *(v37 + 4) = v33;
        *v120 = v1;
        *(v37 + 12) = 2082;
        *(v0 + 136) = v2;
        v38 = v33;
        v39 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BF90, &unk_264B53450);
        v40 = sub_264B41064();
        v42 = sub_2649CC004(v40, v41, &v128);

        *(v37 + 14) = v42;
        _os_log_impl(&dword_2649C6000, v35, v36, "ScreenCapture didUpdate attributes=%{public}@ error=%{public}s", v37, 0x16u);
        sub_2649D04D4(v120, &unk_27FF89880, &unk_264B46B20);
        MEMORY[0x266749940](v120, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v123);
        MEMORY[0x266749940](v123, -1, -1);
        MEMORY[0x266749940](v37, -1, -1);
      }

      if (!v2)
      {

        v14 = v1;
        v15 = 0;
        v16 = 5;
        goto LABEL_66;
      }

      v43 = v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState];
      v44 = v2;
      if (v43 != 5)
      {
        v99 = swift_task_alloc();
        *(v0 + 440) = v99;
        *v99 = v0;
        v99[1] = sub_264AE2E24;
        v100 = v2;
LABEL_97:

        return sub_264ADEE50(v100);
      }

      sub_264AEB15C(v1, v2, 5u);
LABEL_67:
      v82 = *(v0 + 288);
      v83 = sub_264B41234();
      *(v0 + 320) = v83;
      v84 = *(MEMORY[0x277D85798] + 4);
      v85 = swift_task_alloc();
      *(v0 + 328) = v85;
      *v85 = v0;
      v85[1] = sub_264AE0DE8;
      v86 = *(v0 + 280);
      v87 = *(v0 + 264);
      v88 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 112, v83, v88, v87);
    }

    if (!(v1 | v2))
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v89 = sub_264B40964();
      __swift_project_value_buffer(v89, qword_27FFA71D0);
      v90 = sub_264B40944();
      v91 = sub_264B41484();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_2649C6000, v90, v91, "AVCVideoStream didStop", v92, 2u);
        MEMORY[0x266749940](v92, -1, -1);
      }

      v93 = *(v0 + 216);
      v95 = *(v0 + 184);
      v94 = *(v0 + 192);

      v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning] = 0;
      v96 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_streamDidStopContinuation;
      swift_beginAccess();
      sub_2649D046C(&v6[v96], v93, &unk_27FF899E0, &qword_264B53440);
      v97 = (*(v94 + 48))(v93, 1, v95);
      v98 = *(v0 + 216);
      if (v97)
      {
        sub_264AEB15C(v1, v2, 6u);
        sub_2649D04D4(v98, &unk_27FF899E0, &qword_264B53440);
      }

      else
      {
        v108 = *(v0 + 192);
        v107 = *(v0 + 200);
        v109 = *(v0 + 184);
        (*(v108 + 16))(v107, *(v0 + 216), v109);
        sub_2649D04D4(v98, &unk_27FF899E0, &qword_264B53440);
        sub_264B411E4();
        sub_264AEB15C(v1, v2, 6u);
        (*(v108 + 8))(v107, v109);
      }

      v110 = *(v0 + 208);
      (*(*(v0 + 192) + 56))(v110, 1, 1, *(v0 + 184));
      swift_beginAccess();
      sub_2649FECCC(v110, &v6[v96], &unk_27FF899E0, &qword_264B53440);
      swift_endAccess();

      goto LABEL_67;
    }

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v74 = sub_264B40964();
    __swift_project_value_buffer(v74, qword_27FFA71D0);
    v75 = sub_264B40944();
    v76 = sub_264B41494();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_2649C6000, v75, v76, "Video stream serverDidDie", v77, 2u);
      MEMORY[0x266749940](v77, -1, -1);
    }

    v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning] = 0;
    if (v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] == 5)
    {

      v14 = v1;
      v15 = v2;
      v16 = 6;
      goto LABEL_66;
    }

    sub_264A02DF0();
    v78 = swift_allocError();
    *(v0 + 392) = v78;
    *v101 = 10;
    v80 = swift_task_alloc();
    *(v0 + 400) = v80;
    *v80 = v0;
    v81 = sub_264AE2778;
    goto LABEL_96;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v28 = sub_264B40964();
      __swift_project_value_buffer(v28, qword_27FFA71D0);
      v29 = sub_264B40944();
      v30 = sub_264B41494();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134349056;
        *(v31 + 4) = v1;
        _os_log_impl(&dword_2649C6000, v29, v30, "Video streamDidRTCPTimeOut streamToken=%{public}ld", v31, 0xCu);
        MEMORY[0x266749940](v31, -1, -1);
      }

      v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning] = 0;
      if (v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] == 5)
      {

        goto LABEL_67;
      }

      sub_264A02DF0();
      v78 = swift_allocError();
      *(v0 + 360) = v78;
      *v79 = 8;
      v80 = swift_task_alloc();
      *(v0 + 368) = v80;
      *v80 = v0;
      v81 = sub_264AE2338;
    }

    else
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v60 = sub_264B40964();
      __swift_project_value_buffer(v60, qword_27FFA71D0);
      sub_264AEB200(v1, v2, 2u);
      v61 = sub_264B40944();
      v62 = sub_264B414B4();
      sub_264AEB15C(v1, v2, 2u);
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v128 = v125;
        *v63 = 136446210;
        *(v0 + 160) = v2;
        sub_264AEB200(v1, v2, 2u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BF90, &unk_264B53450);
        v64 = sub_264B41064();
        v66 = sub_2649CC004(v64, v65, &v128);

        *(v63 + 4) = v66;
        _os_log_impl(&dword_2649C6000, v61, v62, "Video stream didStart error=%{public}s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v125);
        MEMORY[0x266749940](v125, -1, -1);
        MEMORY[0x266749940](v63, -1, -1);
      }

      if ((v1 & 1) != 0 || v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] == 5)
      {
        sub_264AEB15C(v1, v2, 2u);
        v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning] = v1 & 1;

        goto LABEL_67;
      }

      if (v2)
      {
        v78 = v2;
      }

      else
      {
        sub_264A02DF0();
        v78 = swift_allocError();
        *v117 = 13;
      }

      *(v0 + 376) = v78;
      sub_264AEB200(v1, v2, 2u);
      v80 = swift_task_alloc();
      *(v0 + 384) = v80;
      *v80 = v0;
      v81 = sub_264AE2540;
    }

LABEL_96:
    v80[1] = v81;
    v100 = v78;
    goto LABEL_97;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v45 = sub_264B40964();
  __swift_project_value_buffer(v45, qword_27FFA71D0);
  sub_264AEB200(v1, v2, 0);
  v46 = sub_264B40944();
  v47 = sub_264B414B4();
  sub_264AEB15C(v1, v2, 0);
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v128 = v124;
    *v48 = 136446210;
    sub_264AEB200(v1, v2, 0);
    v49 = [v1 description];
    v50 = sub_264B41044();
    v121 = v47;
    v52 = v51;

    sub_264AEB15C(v1, v2, 0);
    v53 = sub_2649CC004(v50, v52, &v128);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_2649C6000, v46, v121, "Did receive first video frame for client=%{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v124);
    MEMORY[0x266749940](v124, -1, -1);
    MEMORY[0x266749940](v48, -1, -1);
  }

  if (v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_role] != 1)
  {

    v14 = v1;
    v15 = v2;
    v16 = 0;
    goto LABEL_66;
  }

  v54 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState;
  v55 = v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState];
  if (v55 != 5)
  {
    v102 = *(v0 + 248);
    v103 = *(v0 + 232);
    v127 = *(v0 + 224);
    v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] = 1;
    LOBYTE(v128) = v55;
    sub_264ADF934(&v128);
    v104 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(&v6[v104], v102, &qword_27FF89850, &qword_264B485E0);
    if ((*(v103 + 48))(v102, 1, v127))
    {
      v105 = *(v0 + 248);

      sub_264AEB15C(v1, v2, 0);
      sub_2649D04D4(v105, &qword_27FF89850, &qword_264B485E0);
      v106 = 1;
    }

    else
    {
      v111 = *(v0 + 248);
      v113 = *(v0 + 232);
      v112 = *(v0 + 240);
      v114 = *(v0 + 224);
      (*(v113 + 16))(v112, v111, v114);
      sub_2649D04D4(v111, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 129) = v6[v54];
      sub_264B41374();

      sub_264AEB15C(v1, v2, 0);
      (*(v113 + 8))(v112, v114);
      v106 = 0;
    }

    v115 = *(v0 + 256);
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v116 - 8) + 56))(v115, v106, 1, v116);
    sub_2649D04D4(v115, &unk_27FF89870, &qword_264B48600);
    goto LABEL_67;
  }

  v56 = *(v0 + 296);
  v58 = *(v0 + 272);
  v57 = *(v0 + 280);
  v59 = *(v0 + 264);

  sub_264AEB15C(v1, v2, 0);
  (*(v58 + 8))(v57, v59);
LABEL_16:
  v19 = *(v0 + 280);
  v20 = *(v0 + 248);
  v21 = *(v0 + 256);
  v22 = *(v0 + 240);
  v24 = *(v0 + 208);
  v23 = *(v0 + 216);
  v25 = *(v0 + 200);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_264AE2338()
{
  v1 = *v0;
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v7 = *v0;

  v4 = *(v1 + 312);
  v5 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE247C, v5, v4);
}

uint64_t sub_264AE247C()
{
  v1 = *(v0 + 288);
  v2 = sub_264B41234();
  *(v0 + 320) = v2;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v4[1] = sub_264AE0DE8;
  v5 = *(v0 + 280);
  v6 = *(v0 + 264);
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 112, v2, v7, v6);
}

uint64_t sub_264AE2540()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 376);
  v7 = *v0;

  v4 = *(v1 + 312);
  v5 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE2684, v5, v4);
}

uint64_t sub_264AE2684()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];

  sub_264AEB15C(v3, v1, 2u);

  (*(v6 + 8))(v5, v7);
  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[32];
  v11 = v0[30];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];

  v15 = v0[1];

  return v15();
}

uint64_t sub_264AE2778()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);
  v7 = *v0;

  v4 = *(v1 + 312);
  v5 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE28BC, v5, v4);
}

uint64_t sub_264AE28BC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);

  sub_264AEB15C(v2, v1, 6u);
  v3 = *(v0 + 288);
  v4 = sub_264B41234();
  *(v0 + 320) = v4;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  *(v0 + 328) = v6;
  *v6 = v0;
  v6[1] = sub_264AE0DE8;
  v7 = *(v0 + 280);
  v8 = *(v0 + 264);
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 112, v4, v9, v8);
}

uint64_t sub_264AE2994()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v7 = *v0;

  v4 = *(v1 + 312);
  v5 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE2AD8, v5, v4);
}

uint64_t sub_264AE2AD8()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];

  sub_264AEB15C(v3, v1, 3u);
  sub_264AEB15C(v3, v1, 3u);
  (*(v6 + 8))(v5, v7);
  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[32];
  v11 = v0[30];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];

  v15 = v0[1];

  return v15();
}

uint64_t sub_264AE2BDC()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 424);
  v7 = *v0;

  v4 = *(v1 + 312);
  v5 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE2D20, v5, v4);
}

uint64_t sub_264AE2D20()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];

  sub_264AEB15C(v3, v1, 4u);
  sub_264AEB15C(v3, v1, 4u);
  (*(v6 + 8))(v5, v7);
  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[32];
  v11 = v0[30];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];

  v15 = v0[1];

  return v15();
}

uint64_t sub_264AE2E24()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v6 = *v0;

  v3 = *(v1 + 312);
  v4 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE2F44, v4, v3);
}

uint64_t sub_264AE2F44()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];

  sub_264AEB15C(v3, v1, 5u);
  (*(v6 + 8))(v5, v7);
  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[32];
  v11 = v0[30];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];

  v15 = v0[1];

  return v15();
}

uint64_t sub_264AE3040()
{
  v1[15] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89870, &qword_264B48600) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v1[26] = v10;
  v11 = *(v10 - 8);
  v1[27] = v11;
  v12 = *(v11 + 64) + 15;
  v1[28] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v14 = sub_264B3FFD4();
  v1[31] = v14;
  v15 = *(v14 - 8);
  v1[32] = v15;
  v16 = *(v15 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = sub_264B41244();
  v1[35] = sub_264B41234();
  v18 = sub_264B411C4();
  v1[36] = v18;
  v1[37] = v17;

  return MEMORY[0x2822009F8](sub_264AE333C, v18, v17);
}

uint64_t sub_264AE333C()
{
  v112 = v0;
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState;
  *(v0 + 304) = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState;
  if (*(v1 + v2) != 4)
  {
    return sub_264B41874();
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = sub_264B40964();
  *(v0 + 312) = __swift_project_value_buffer(v6, qword_27FFA71D0);
  v7 = sub_264B414B4();
  sub_264B3FF94();
  v8 = sub_264B3FFA4();
  v10 = v9;
  (*(v4 + 8))(v3, v5);

  v11 = sub_264B40944();

  if (os_log_type_enabled(v11, v7))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v111 = v13;
    *v12 = 136446722;
    v14 = sub_2649CC004(v8, v10, &v111);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2050;
    *(v12 + 14) = 229;
    *(v12 + 22) = 2082;
    *(v12 + 24) = sub_2649CC004(0x6E776F4472616574, 0xEA00000000002928, &v111);
    _os_log_impl(&dword_2649C6000, v11, v7, "%{public}s:%{public}ld %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 120);
  *(v16 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_clientActivated) = 0;
  if ((*(v16 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_role) & 1) == 0)
  {
    v17 = *(v0 + 120);
    v18 = sub_264ADFB4C();
    [v18 stopCapture];
  }

  v19 = *(v0 + 120);
  v20 = *&v19[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStream];
  *(v0 + 320) = v20;
  if (v20)
  {
    v21 = v20;
    v22 = v19;
    v23 = sub_264B40944();
    v24 = sub_264B414B4();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 120);
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 67240192;
      *(v27 + 4) = v26[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning];

      _os_log_impl(&dword_2649C6000, v23, v24, "Attempting to stop video stream, isVideoStreamRunning == %{BOOL,public}d", v27, 8u);
      MEMORY[0x266749940](v27, -1, -1);
    }

    else
    {
    }

    v34 = *(v0 + 272);
    v35 = *(v0 + 120);
    *(v0 + 328) = sub_264B41234();
    v36 = swift_task_alloc();
    *(v0 + 336) = v36;
    *(v36 + 16) = v35;
    *(v36 + 24) = v21;
    v37 = *(MEMORY[0x277D859E0] + 4);
    v38 = swift_task_alloc();
    *(v0 + 344) = v38;
    *v38 = v0;
    v38[1] = sub_264AE3F2C;

    return MEMORY[0x2822007B8]();
  }

  v28 = *(v0 + 240);
  v29 = *(v0 + 208);
  v30 = *(v0 + 216);
  v31 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(&v19[v31], v28, &qword_27FF8BFA0, &qword_264B53480);
  v32 = (*(v30 + 48))(v28, 1, v29);
  v33 = *(v0 + 240);
  if (v32)
  {
    sub_2649D04D4(*(v0 + 240), &qword_27FF8BFA0, &qword_264B53480);
  }

  else
  {
    v40 = *(v0 + 216);
    v39 = *(v0 + 224);
    v41 = *(v0 + 208);
    (*(v40 + 16))(v39, *(v0 + 240), v41);
    sub_2649D04D4(v33, &qword_27FF8BFA0, &qword_264B53480);
    sub_264B412B4();
    (*(v40 + 8))(v39, v41);
  }

  v42 = *(v0 + 232);
  v43 = *(v0 + 120);
  (*(*(v0 + 216) + 56))(v42, 1, 1, *(v0 + 208));
  swift_beginAccess();
  sub_2649FECCC(v42, &v19[v31], &qword_27FF8BFA0, &qword_264B53480);
  swift_endAccess();
  v44 = *(v43 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient);
  *(v43 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient) = 0;

  v45 = v43 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (!Strong)
  {
    v48 = *(v0 + 280);

    goto LABEL_24;
  }

  if (*(*(v0 + 120) + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError))
  {
    v47 = *(v0 + 280);

    swift_unknownObjectRelease();
LABEL_24:
    v49 = *(v0 + 304);
    v50 = *(v0 + 192);
    v51 = *(v0 + 152);
    v52 = *(v0 + 160);
    v53 = *(v0 + 120);
    [*(v53 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream) invalidate];
    v54 = *(v53 + v49);
    *(v53 + v49) = 5;
    v110 = v54;
    sub_264ADF934(&v110);
    v55 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(v53 + v55, v50, &qword_27FF89850, &qword_264B485E0);
    v56 = *(v52 + 48);
    if (v56(v50, 1, v51))
    {
      sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
      v57 = 1;
    }

    else
    {
      v58 = *(v0 + 192);
      v108 = *(v0 + 304);
      v60 = *(v0 + 160);
      v59 = *(v0 + 168);
      v61 = *(v0 + 152);
      v62 = *(v0 + 120);
      (*(v60 + 16))(v59, v58, v61);
      sub_2649D04D4(v58, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 384) = *(v62 + v108);
      sub_264B41374();
      (*(v60 + 8))(v59, v61);
      v57 = 0;
    }

    v63 = *(v0 + 200);
    v64 = *(v0 + 184);
    v65 = *(v0 + 152);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v66 - 8) + 56))(v63, v57, 1, v66);
    sub_2649D04D4(v63, &unk_27FF89870, &qword_264B48600);
    sub_2649D046C(v53 + v55, v64, &qword_27FF89850, &qword_264B485E0);
    v67 = v56(v64, 1, v65);
    v68 = *(v0 + 184);
    if (v67)
    {
      sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
    }

    else
    {
      v70 = *(v0 + 160);
      v69 = *(v0 + 168);
      v71 = *(v0 + 152);
      (*(v70 + 16))(v69, *(v0 + 184), v71);
      sub_2649D04D4(v68, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 112) = 0;
      sub_264B41384();
      (*(v70 + 8))(v69, v71);
    }

    v72 = *(v0 + 176);
    v73 = *(v0 + 120);
    (*(*(v0 + 160) + 56))(v72, 1, 1, *(v0 + 152));
    swift_beginAccess();
    sub_2649FECCC(v72, v53 + v55, &qword_27FF89850, &qword_264B485E0);
    swift_endAccess();
    v74 = *(v73 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations);
    *(v73 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations) = MEMORY[0x277D84F90];
    v75 = *(v74 + 16);
    if (v75)
    {
      v76 = *(v0 + 312);

      v77 = sub_264B40944();
      v78 = sub_264B414B4();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 134217984;
        *(v79 + 4) = *(v74 + 16);

        _os_log_impl(&dword_2649C6000, v77, v78, "Resuming %ld waiting invalidations", v79, 0xCu);
        MEMORY[0x266749940](v79, -1, -1);
      }

      else
      {
      }

      v80 = *(v0 + 136);
      v83 = *(v80 + 16);
      v81 = v80 + 16;
      v82 = v83;
      v84 = v74 + ((*(v81 + 64) + 32) & ~*(v81 + 64));
      v85 = *(v81 + 56);
      do
      {
        v86 = *(v0 + 144);
        v87 = *(v0 + 128);
        v82(v86, v84, v87);
        sub_264B411E4();
        (*(v81 - 8))(v86, v87);
        v84 += v85;
        --v75;
      }

      while (v75);
    }

    v88 = *(v0 + 264);
    v89 = *(v0 + 232);
    v90 = *(v0 + 240);
    v91 = *(v0 + 224);
    v93 = *(v0 + 192);
    v92 = *(v0 + 200);
    v95 = *(v0 + 176);
    v94 = *(v0 + 184);
    v96 = *(v0 + 168);
    v97 = *(v0 + 144);

    v98 = *(v0 + 8);

    return v98();
  }

  v99 = *(v45 + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 385) = 1;
  v101 = *MEMORY[0x277D44228];
  v102 = sub_264B41044();
  v104 = v103;
  *(v0 + 360) = v103;
  v105 = *(v99 + 144);
  v109 = (v105 + *v105);
  v106 = v105[1];
  v107 = swift_task_alloc();
  *(v0 + 368) = v107;
  *v107 = v0;
  v107[1] = sub_264AE48D0;

  return v109(v0 + 385, v102, v104, ObjectType, v99);
}

uint64_t sub_264AE3F2C()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);
  v8 = *v0;

  v5 = *(v1 + 296);
  v6 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_264AE408C, v6, v5);
}

uint64_t sub_264AE408C()
{
  v86 = v0;
  v1 = *(v0 + 312);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Video stream did stop cleanly", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v0 + 320);

  v6 = *(v0 + 240);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 120);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v9 + v10, v6, &qword_27FF8BFA0, &qword_264B53480);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = *(v0 + 240);
  if (v11)
  {
    sub_2649D04D4(*(v0 + 240), &qword_27FF8BFA0, &qword_264B53480);
  }

  else
  {
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 208);
    (*(v14 + 16))(v13, *(v0 + 240), v15);
    sub_2649D04D4(v12, &qword_27FF8BFA0, &qword_264B53480);
    sub_264B412B4();
    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 232);
  v17 = *(v0 + 120);
  (*(*(v0 + 216) + 56))(v16, 1, 1, *(v0 + 208));
  swift_beginAccess();
  sub_2649FECCC(v16, v9 + v10, &qword_27FF8BFA0, &qword_264B53480);
  swift_endAccess();
  v18 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient);
  *(v17 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient) = 0;

  v19 = v17 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (!Strong)
  {
    v22 = *(v0 + 280);

    goto LABEL_10;
  }

  if (*(*(v0 + 120) + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError))
  {
    v21 = *(v0 + 280);

    swift_unknownObjectRelease();
LABEL_10:
    v23 = *(v0 + 304);
    v24 = *(v0 + 192);
    v25 = *(v0 + 152);
    v26 = *(v0 + 160);
    v27 = *(v0 + 120);
    [*(v27 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream) invalidate];
    v28 = *(v27 + v23);
    *(v27 + v23) = 5;
    v85 = v28;
    sub_264ADF934(&v85);
    v29 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(v27 + v29, v24, &qword_27FF89850, &qword_264B485E0);
    v30 = *(v26 + 48);
    if (v30(v24, 1, v25))
    {
      sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
      v31 = 1;
    }

    else
    {
      v32 = *(v0 + 192);
      v83 = *(v0 + 304);
      v34 = *(v0 + 160);
      v33 = *(v0 + 168);
      v35 = *(v0 + 152);
      v36 = *(v0 + 120);
      (*(v34 + 16))(v33, v32, v35);
      sub_2649D04D4(v32, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 384) = *(v36 + v83);
      sub_264B41374();
      (*(v34 + 8))(v33, v35);
      v31 = 0;
    }

    v37 = *(v0 + 200);
    v38 = *(v0 + 184);
    v39 = *(v0 + 152);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v40 - 8) + 56))(v37, v31, 1, v40);
    sub_2649D04D4(v37, &unk_27FF89870, &qword_264B48600);
    sub_2649D046C(v27 + v29, v38, &qword_27FF89850, &qword_264B485E0);
    v41 = v30(v38, 1, v39);
    v42 = *(v0 + 184);
    if (v41)
    {
      sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
    }

    else
    {
      v44 = *(v0 + 160);
      v43 = *(v0 + 168);
      v45 = *(v0 + 152);
      (*(v44 + 16))(v43, *(v0 + 184), v45);
      sub_2649D04D4(v42, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 112) = 0;
      sub_264B41384();
      (*(v44 + 8))(v43, v45);
    }

    v46 = *(v0 + 176);
    v47 = *(v0 + 120);
    (*(*(v0 + 160) + 56))(v46, 1, 1, *(v0 + 152));
    swift_beginAccess();
    sub_2649FECCC(v46, v27 + v29, &qword_27FF89850, &qword_264B485E0);
    swift_endAccess();
    v48 = *(v47 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations);
    *(v47 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations) = MEMORY[0x277D84F90];
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = *(v0 + 312);

      v51 = sub_264B40944();
      v52 = sub_264B414B4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 134217984;
        *(v53 + 4) = *(v48 + 16);

        _os_log_impl(&dword_2649C6000, v51, v52, "Resuming %ld waiting invalidations", v53, 0xCu);
        MEMORY[0x266749940](v53, -1, -1);
      }

      else
      {
      }

      v54 = *(v0 + 136);
      v57 = *(v54 + 16);
      v55 = v54 + 16;
      v56 = v57;
      v58 = v48 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
      v59 = *(v55 + 56);
      do
      {
        v60 = *(v0 + 144);
        v61 = *(v0 + 128);
        v56(v60, v58, v61);
        sub_264B411E4();
        (*(v55 - 8))(v60, v61);
        v58 += v59;
        --v49;
      }

      while (v49);
    }

    v62 = *(v0 + 264);
    v63 = *(v0 + 232);
    v64 = *(v0 + 240);
    v65 = *(v0 + 224);
    v67 = *(v0 + 192);
    v66 = *(v0 + 200);
    v69 = *(v0 + 176);
    v68 = *(v0 + 184);
    v70 = *(v0 + 168);
    v71 = *(v0 + 144);

    v72 = *(v0 + 8);

    return v72();
  }

  v74 = *(v19 + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 385) = 1;
  v76 = *MEMORY[0x277D44228];
  v77 = sub_264B41044();
  v79 = v78;
  *(v0 + 360) = v78;
  v80 = *(v74 + 144);
  v84 = (v80 + *v80);
  v81 = v80[1];
  v82 = swift_task_alloc();
  *(v0 + 368) = v82;
  *v82 = v0;
  v82[1] = sub_264AE48D0;

  return v84(v0 + 385, v77, v79, ObjectType, v74);
}

uint64_t sub_264AE48D0()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_264AE4EEC;
  }

  else
  {
    v7 = v2[45];

    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_264AE49EC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_264AE49EC()
{
  v56 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 280);

  swift_unknownObjectRelease();
  v3 = *(v0 + 304);
  v4 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 120);
  [*(v7 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream) invalidate];
  v8 = *(v7 + v3);
  *(v7 + v3) = 5;
  v55 = v8;
  sub_264ADF934(&v55);
  v9 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v7 + v9, v4, &qword_27FF89850, &qword_264B485E0);
  v10 = *(v6 + 48);
  if (v10(v4, 1, v5))
  {
    sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 192);
    v54 = *(v0 + 304);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 152);
    v16 = *(v0 + 120);
    (*(v14 + 16))(v13, v12, v15);
    sub_2649D04D4(v12, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 384) = *(v16 + v54);
    sub_264B41374();
    (*(v14 + 8))(v13, v15);
    v11 = 0;
  }

  v17 = *(v0 + 200);
  v18 = *(v0 + 184);
  v19 = *(v0 + 152);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
  (*(*(v20 - 8) + 56))(v17, v11, 1, v20);
  sub_2649D04D4(v17, &unk_27FF89870, &qword_264B48600);
  sub_2649D046C(v7 + v9, v18, &qword_27FF89850, &qword_264B485E0);
  v21 = v10(v18, 1, v19);
  v22 = *(v0 + 184);
  if (v21)
  {
    sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    v25 = *(v0 + 152);
    (*(v24 + 16))(v23, *(v0 + 184), v25);
    sub_2649D04D4(v22, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 112) = 0;
    sub_264B41384();
    (*(v24 + 8))(v23, v25);
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 120);
  (*(*(v0 + 160) + 56))(v26, 1, 1, *(v0 + 152));
  swift_beginAccess();
  sub_2649FECCC(v26, v7 + v9, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  v28 = *(v27 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations);
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations) = MEMORY[0x277D84F90];
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = *(v0 + 312);

    v31 = sub_264B40944();
    v32 = sub_264B414B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = *(v28 + 16);

      _os_log_impl(&dword_2649C6000, v31, v32, "Resuming %ld waiting invalidations", v33, 0xCu);
      MEMORY[0x266749940](v33, -1, -1);
    }

    else
    {
    }

    v34 = *(v0 + 136);
    v37 = *(v34 + 16);
    v35 = v34 + 16;
    v36 = v37;
    v38 = v28 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v39 = *(v35 + 56);
    do
    {
      v40 = *(v0 + 144);
      v41 = *(v0 + 128);
      v36(v40, v38, v41);
      sub_264B411E4();
      (*(v35 - 8))(v40, v41);
      v38 += v39;
      --v29;
    }

    while (v29);
  }

  v42 = *(v0 + 264);
  v43 = *(v0 + 232);
  v44 = *(v0 + 240);
  v45 = *(v0 + 224);
  v47 = *(v0 + 192);
  v46 = *(v0 + 200);
  v49 = *(v0 + 176);
  v48 = *(v0 + 184);
  v50 = *(v0 + 168);
  v51 = *(v0 + 144);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_264AE4EEC()
{
  v68 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 312);
  v4 = *(v0 + 280);

  v5 = v1;
  v6 = sub_264B40944();
  v7 = sub_264B41494();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 376);
  v10 = *(v0 + 352);
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2649C6000, v6, v7, "Failed to send stream invalidation message: %{public}@", v11, 0xCu);
    sub_2649D04D4(v12, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v15 = *(v0 + 304);
  v16 = *(v0 + 192);
  v17 = *(v0 + 152);
  v18 = *(v0 + 160);
  v19 = *(v0 + 120);
  [*(v19 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream) invalidate];
  v20 = *(v19 + v15);
  *(v19 + v15) = 5;
  v67 = v20;
  sub_264ADF934(&v67);
  v21 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v19 + v21, v16, &qword_27FF89850, &qword_264B485E0);
  v22 = *(v18 + 48);
  if (v22(v16, 1, v17))
  {
    sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
    v23 = 1;
  }

  else
  {
    v24 = *(v0 + 192);
    v66 = *(v0 + 304);
    v26 = *(v0 + 160);
    v25 = *(v0 + 168);
    v27 = *(v0 + 152);
    v28 = *(v0 + 120);
    (*(v26 + 16))(v25, v24, v27);
    sub_2649D04D4(v24, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 384) = *(v28 + v66);
    sub_264B41374();
    (*(v26 + 8))(v25, v27);
    v23 = 0;
  }

  v29 = *(v0 + 200);
  v30 = *(v0 + 184);
  v31 = *(v0 + 152);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
  (*(*(v32 - 8) + 56))(v29, v23, 1, v32);
  sub_2649D04D4(v29, &unk_27FF89870, &qword_264B48600);
  sub_2649D046C(v19 + v21, v30, &qword_27FF89850, &qword_264B485E0);
  v33 = v22(v30, 1, v31);
  v34 = *(v0 + 184);
  if (v33)
  {
    sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v36 = *(v0 + 160);
    v35 = *(v0 + 168);
    v37 = *(v0 + 152);
    (*(v36 + 16))(v35, *(v0 + 184), v37);
    sub_2649D04D4(v34, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 112) = 0;
    sub_264B41384();
    (*(v36 + 8))(v35, v37);
  }

  v38 = *(v0 + 176);
  v39 = *(v0 + 120);
  (*(*(v0 + 160) + 56))(v38, 1, 1, *(v0 + 152));
  swift_beginAccess();
  sub_2649FECCC(v38, v19 + v21, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  v40 = *(v39 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations);
  *(v39 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations) = MEMORY[0x277D84F90];
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = *(v0 + 312);

    v43 = sub_264B40944();
    v44 = sub_264B414B4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = *(v40 + 16);

      _os_log_impl(&dword_2649C6000, v43, v44, "Resuming %ld waiting invalidations", v45, 0xCu);
      MEMORY[0x266749940](v45, -1, -1);
    }

    else
    {
    }

    v46 = *(v0 + 136);
    v49 = *(v46 + 16);
    v47 = v46 + 16;
    v48 = v49;
    v50 = v40 + ((*(v47 + 64) + 32) & ~*(v47 + 64));
    v51 = *(v47 + 56);
    do
    {
      v52 = *(v0 + 144);
      v53 = *(v0 + 128);
      v48(v52, v50, v53);
      sub_264B411E4();
      (*(v47 - 8))(v52, v53);
      v50 += v51;
      --v41;
    }

    while (v41);
  }

  v54 = *(v0 + 264);
  v55 = *(v0 + 232);
  v56 = *(v0 + 240);
  v57 = *(v0 + 224);
  v59 = *(v0 + 192);
  v58 = *(v0 + 200);
  v61 = *(v0 + 176);
  v60 = *(v0 + 184);
  v62 = *(v0 + 168);
  v63 = *(v0 + 144);

  v64 = *(v0 + 8);

  return v64();
}

id sub_264AE54F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_streamDidStopContinuation;
  swift_beginAccess();
  sub_2649FECCC(v9, a2 + v12, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();
  return [a3 stop];
}

void sub_264AE568C()
{
  sub_264A2C814(319, &qword_27FF897D0, &qword_27FF88DA8, &qword_264B48500);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_264A2C814(319, &unk_27FF8BE40, &qword_27FF8B4F8, &unk_264B50AF0);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_264B40104();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_264A2C814(319, &unk_27FF897E0, &qword_27FF893A0, &unk_264B44E60);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_264AE5864(void *a1)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v2 = *&v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator];
  if (!v2)
  {
    sub_264A02DF0();
    swift_allocError();
    v53 = 5;
LABEL_42:
    *v52 = v53;
    swift_willThrow();
LABEL_43:
    v54 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isNegotiationComplete] != 1)
  {
    sub_264A02DF0();
    swift_allocError();
    v53 = 7;
    goto LABEL_42;
  }

  v61[0] = 0;
  v3 = v2;
  v4 = [v3 generateMediaStreamConfigurationWithError_];
  if (!v4)
  {
    v55 = v61[0];
    sub_264B3FF84();

    swift_willThrow();
    goto LABEL_43;
  }

  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream];
  v7 = v61[0];
  v8 = [v6 streamKey];
  if (!v8)
  {
    sub_264A02DF0();
    swift_allocError();
    *v56 = 4;
    swift_willThrow();

    goto LABEL_43;
  }

  v9 = v8;
  v10 = sub_264B40024();
  v12 = v11;

  sub_264AE9E24(v5, v10, v12);
  v13 = [v5 video];
  if (!v13)
  {
    __break(1u);
    goto LABEL_54;
  }

  v14 = v13;
  [v13 setVideoResolution_];

  v15 = [v5 video];
  if (!v15)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v16 = v15;
  v59 = v10;
  [v15 setCustomHeight_];

  v17 = [v5 video];
  if (!v17)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v18 = v17;
  v58 = v12;
  [v17 setCustomWidth_];

  v19 = [v5 direction];
  v20 = 0x27FF88000;
  if (v19 != 1)
  {
LABEL_34:
    if (*(v20 + 1000) != -1)
    {
      swift_once();
    }

    v44 = sub_264B40964();
    __swift_project_value_buffer(v44, qword_27FFA71D0);
    v45 = v5;
    v46 = sub_264B40944();
    v47 = sub_264B41484();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      *(v48 + 4) = v45;
      *v49 = v5;
      v50 = v45;
      _os_log_impl(&dword_2649C6000, v46, v47, "video config: %{public}@", v48, 0xCu);
      sub_2649D04D4(v49, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v49, -1, -1);
      MEMORY[0x266749940](v48, -1, -1);
    }

    v61[0] = 0;
    if ([a1 configure:v45 error:v61])
    {
      v51 = v61[0];
      sub_2649DEF6C(v59, v58);
    }

    else
    {
      v57 = v61[0];
      sub_264B3FF84();

      swift_willThrow();
      sub_2649DEF6C(v59, v58);
    }

    goto LABEL_43;
  }

  v21 = [objc_opt_self() mainDisplay];
  if (!v21)
  {
    goto LABEL_28;
  }

  v22 = v21;
  [v21 frame];
  if (CGRectGetHeight(v62) <= 0.0 || ([v22 frame], CGRectGetWidth(v63) <= 0.0))
  {
LABEL_27:

LABEL_28:
    v31 = [v5 video];
    if (v31)
    {
      v32 = v31;
      v33 = sub_264ADFB4C();
      v34 = [v33 captureSourceID];

      [v32 setCaptureSourceID_];
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v35 = sub_264B40964();
      __swift_project_value_buffer(v35, qword_27FFA71D0);
      v36 = v1;
      v37 = sub_264B40944();
      v38 = sub_264B41484();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v61[0] = v40;
        *v39 = 136315138;
        [*&v36[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream____lazy_storage___screenCapture] captureSourceID];
        v41 = sub_264B41A64();
        v43 = sub_2649CC004(v41, v42, v61);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_2649C6000, v37, v38, "Set config.video.captureSourceID to %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x266749940](v40, -1, -1);
        MEMORY[0x266749940](v39, -1, -1);
      }

      v20 = 0x27FF88000uLL;
      goto LABEL_34;
    }

    goto LABEL_56;
  }

  v23 = [v5 video];
  if (v23)
  {
    v24 = v23;
    [v22 frame];
    Height = CGRectGetHeight(v64);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (Height > -9.22337204e18)
    {
      if (Height < 9.22337204e18)
      {
        if (Height >= 4096)
        {
          v26 = 4096;
        }

        else
        {
          v26 = Height;
        }

        [v24 setCustomHeight_];

        v27 = [v5 video];
        if (!v27)
        {
          goto LABEL_58;
        }

        v28 = v27;
        [v22 frame];
        Width = CGRectGetWidth(v65);
        if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (Width > -9.22337204e18)
          {
            if (Width < 9.22337204e18)
            {
              if (Width >= 4096)
              {
                v30 = 4096;
              }

              else
              {
                v30 = Width;
              }

              [v28 setCustomWidth_];

              goto LABEL_27;
            }

LABEL_52:
            __break(1u);
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_264AE5FC0()
{
  v14 = *MEMORY[0x277D85DE8];
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89870, &qword_264B48600) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF78, &qword_264B53418);
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v1[15] = *(v9 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = sub_264B41244();
  v1[19] = sub_264B41234();
  v10 = sub_264B411C4();
  v1[20] = v10;
  v1[21] = v11;
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264AE621C, v10, v11);
}

uint64_t sub_264AE621C()
{
  v114 = v0;
  v113 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState) > 3u || *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState))
  {
    v3 = *(v0 + 152);
LABEL_4:

LABEL_5:
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);

    v10 = *(v0 + 8);
    v11 = *MEMORY[0x277D85DE8];

    return v10();
  }

  v13 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator);
  *(v0 + 176) = v13;
  if (!v13 || *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isNegotiationComplete) != 1)
  {
    v28 = *(v0 + 152);

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v29 = sub_264B40964();
    __swift_project_value_buffer(v29, qword_27FFA71D0);
    v30 = sub_264B40944();
    v31 = sub_264B41474();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2649C6000, v30, v31, "Not ready to complete activation, negotiation not complete", v32, 2u);
      MEMORY[0x266749940](v32, -1, -1);
    }

    goto LABEL_22;
  }

  v14 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_role);
  if (v14 == 1 && *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_clientActivated) != 1)
  {
    v34 = *(v0 + 152);
    v35 = v13;

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v36 = sub_264B40964();
    __swift_project_value_buffer(v36, qword_27FFA71D0);
    v30 = sub_264B40944();
    v37 = sub_264B41474();
    if (os_log_type_enabled(v30, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2649C6000, v30, v37, "Not ready to complete activation, client not activated", v38, 2u);
      MEMORY[0x266749940](v38, -1, -1);
    }

    goto LABEL_22;
  }

  v15 = qword_27FF883E8;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_264B40964();
  __swift_project_value_buffer(v17, qword_27FFA71D0);
  v18 = sub_264B40944();
  v19 = sub_264B41474();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2649C6000, v18, v19, "Activation complete, creating stream", v20, 2u);
    MEMORY[0x266749940](v20, -1, -1);
  }

  *(v0 + 40) = 0;
  v21 = [v16 generateMediaStreamInitOptionsWithError_];
  v22 = *(v0 + 40);
  if (v21)
  {
    v109 = v14;
    v23 = *(v0 + 136);
    v24 = *(v0 + 48);
    v25 = v21;
    v26 = sub_264B40F64();
    v27 = v22;

    v39 = sub_264ADFEF8(v23, v26);
    v105 = *(v0 + 136);
    v40 = *(v0 + 128);
    v103 = v16;
    v104 = v40;
    v107 = *(v0 + 120);
    v42 = *(v0 + 104);
    v41 = *(v0 + 112);
    v43 = *(v0 + 96);
    v106 = v43;
    v44 = *(v0 + 48);

    v45 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStream);
    *(v44 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStream) = v39;
    v108 = v39;

    v46 = sub_264B41274();
    (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v41 + 16))(v40, v105, v42);

    v48 = sub_264B41234();
    v49 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v50 = swift_allocObject();
    v51 = MEMORY[0x277D85700];
    *(v50 + 16) = v48;
    *(v50 + 24) = v51;
    (*(v41 + 32))(v50 + v49, v104, v42);
    *(v50 + ((v107 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v47;

    sub_264A10C20(0, 0, v106, &unk_264B53430, v50);

    sub_264AE5864(v108);
    v55 = sub_264B40944();
    v56 = sub_264B41474();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2649C6000, v55, v56, "Starting video stream", v57, 2u);
      MEMORY[0x266749940](v57, -1, -1);
    }

    [v108 start];
    if (!v109)
    {
      v69 = *(v0 + 152);

      v70 = sub_264B40944();
      v71 = sub_264B41474();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_2649C6000, v70, v71, "Role is server, starting screen capture", v72, 2u);
        MEMORY[0x266749940](v72, -1, -1);
      }

      v73 = *(v0 + 48);

      v74 = sub_264ADFB4C();
      [v74 startCapture];

      v75 = sub_264B40944();
      v76 = sub_264B41474();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_2649C6000, v75, v76, "Role is server, activation complete", v77, 2u);
        MEMORY[0x266749940](v77, -1, -1);
      }

      v78 = *(v0 + 80);
      v79 = *(v0 + 56);
      v80 = *(v0 + 64);
      v81 = *(v0 + 48);

      v82 = *(v1 + v2);
      *(v1 + v2) = 1;
      v112[0] = v82;
      sub_264ADF934(v112);
      v83 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
      swift_beginAccess();
      sub_2649D046C(v81 + v83, v78, &qword_27FF89850, &qword_264B485E0);
      v84 = (*(v80 + 48))(v78, 1, v79);
      v85 = *(v0 + 136);
      v86 = *(v0 + 104);
      v87 = *(v0 + 112);
      if (v84)
      {
        v88 = *(v0 + 80);
        (*(v87 + 8))(*(v0 + 136), *(v0 + 104));

        sub_2649D04D4(v88, &qword_27FF89850, &qword_264B485E0);
        v89 = 1;
      }

      else
      {
        v91 = *(v0 + 80);
        v92 = *(v0 + 64);
        v93 = *(v0 + 72);
        v94 = *(v0 + 56);
        v111 = *(v0 + 136);
        (*(v92 + 16))(v93, v91, v94);
        sub_2649D04D4(v91, &qword_27FF89850, &qword_264B485E0);
        *(v0 + 200) = *(v1 + v2);
        sub_264B41374();

        (*(v92 + 8))(v93, v94);
        (*(v87 + 8))(v111, v86);
        v89 = 0;
      }

      v95 = *(v0 + 88);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
      (*(*(v96 - 8) + 56))(v95, v89, 1, v96);
      sub_2649D04D4(v95, &unk_27FF89870, &qword_264B48600);
      goto LABEL_5;
    }

    v58 = sub_264B40944();
    v59 = sub_264B41474();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2649C6000, v58, v59, "Role is client, setting remoteVideoClient", v60, 2u);
      MEMORY[0x266749940](v60, -1, -1);
    }

    v61 = *(v0 + 48);

    v62 = [v108 streamToken];
    v63 = [objc_allocWithZone(MEMORY[0x277CE5730]) initWithStreamToken:v62 delegate:v61];
    v64 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient;
    v65 = *(v61 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient);
    *(v61 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient) = v63;

    v66 = *(v61 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentVideoLayer);
    if (v66)
    {
      v67 = *(v61 + v64);
      if (v67)
      {
        v30 = v66;
        v68 = v67;
        sub_264AEABE4(v30, v68);
        v102 = *(v0 + 152);
        (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 104));

LABEL_22:

        goto LABEL_5;
      }

      v97 = *(v0 + 152);
      v98 = *(v0 + 136);
      v99 = *(v0 + 104);
      v100 = *(*(v0 + 112) + 8);
      v101 = v66;
      v100(v98, v99);
    }

    else
    {
      v90 = *(v0 + 152);
      (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 104));
    }

    goto LABEL_4;
  }

  v33 = v22;
  v110 = sub_264B3FF84();

  swift_willThrow();
  *(v0 + 184) = v110;
  v52 = swift_task_alloc();
  *(v0 + 192) = v52;
  *v52 = v0;
  v52[1] = sub_264AE6E04;
  v53 = *(v0 + 48);
  v54 = *MEMORY[0x277D85DE8];

  return sub_264ADEE50(v110);
}

uint64_t sub_264AE6E04()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 192);
  v8 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264AE6F58, v4, v3);
}

uint64_t sub_264AE6F58()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[19];

  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

void *sub_264AE703C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator);
  v2 = v1;
  return v1;
}

uint64_t sub_264AE706C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_264AE7094@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  return sub_2649D046C(v1 + v3, a1, &qword_27FF89850, &qword_264B485E0);
}

uint64_t sub_264AE70FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  sub_2649FECCC(a1, v1 + v3, &qword_27FF89850, &qword_264B485E0);
  return swift_endAccess();
}

void *sub_264AE717C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError);
  v2 = v1;
  return v1;
}

void sub_264AE71B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError) = a1;
}

uint64_t sub_264AE71C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264AE5FC0();
}

uint64_t sub_264AE7254(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89890, &qword_264B48610);
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v2[28] = v7;
  v8 = *(v7 - 8);
  v2[29] = v8;
  v9 = *(v8 + 64) + 15;
  v2[30] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89898, &unk_264B48618);
  v2[31] = v10;
  v11 = *(v10 - 8);
  v2[32] = v11;
  v12 = *(v11 + 64) + 15;
  v2[33] = swift_task_alloc();
  v13 = sub_264B3FFD4();
  v2[34] = v13;
  v14 = *(v13 - 8);
  v2[35] = v14;
  v15 = *(v14 + 64) + 15;
  v2[36] = swift_task_alloc();
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264AE74B0, 0, 0);
}

uint64_t sub_264AE74B0()
{
  v68 = v0;
  v67[1] = *MEMORY[0x277D85DE8];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = sub_264B40964();
  v0[37] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v67[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v67);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 416;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6574617669746361, 0xEA00000000002928, v67);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[23];
  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState))
  {
    v14 = sub_264B40944();
    v15 = sub_264B41494();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2649C6000, v14, v15, "the video stream was already started", v16, 2u);
      MEMORY[0x266749940](v16, -1, -1);
    }

    v17 = 2;
    goto LABEL_10;
  }

  v27 = v13 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[38] = Strong;
  if (!Strong)
  {
    v17 = 6;
LABEL_10:
    sub_264A02DF0();
    swift_allocError();
    *v18 = v17;
    swift_willThrow();
    v19 = v0[36];
    v20 = v0[33];
    v21 = v0[30];
    v22 = v0[27];
    v23 = v0[24];

    v24 = v0[1];
    v25 = *MEMORY[0x277D85DE8];

    return v24();
  }

  v65 = *(v27 + 8);
  v66 = Strong;
  v29 = v0[33];
  v30 = v0[29];
  v31 = v0[30];
  v33 = v0[27];
  v32 = v0[28];
  v35 = v0[25];
  v34 = v0[26];
  v37 = v0[23];
  v36 = v0[24];
  (*(v34 + 104))(v33, *MEMORY[0x277D858A0], v35);
  sub_264B41344();
  (*(v34 + 8))(v33, v35);
  (*(v30 + 16))(v36, v31, v32);
  (*(v30 + 56))(v36, 0, 1, v32);
  v38 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  sub_2649FECCC(v36, v37 + v38, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  if (*(v37 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_role))
  {
    v39 = *(v0[23] + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream);
    v0[2] = v0;
    v0[3] = sub_264AE80B0;
    v40 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2649F4D64;
    v0[13] = &block_descriptor_16;
    v0[14] = v40;
    [v39 activateWithCompletion_];
    v41 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v42 = objc_allocWithZone(MEMORY[0x277CE5708]);
    v0[21] = 0;
    v43 = [v42 initWithMode:9 error:v0 + 21];
    v0[39] = v43;
    v44 = v0[21];
    if (v43)
    {
      v45 = v0[23];
      v46 = *(v45 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator);
      *(v45 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator) = v43;
      v47 = v43;
      v48 = v44;
      v49 = v47;

      v50 = [v49 offer];
      v51 = sub_264B40024();
      v53 = v52;

      v0[40] = v51;
      v0[41] = v53;
      v54 = swift_task_alloc();
      v0[42] = v54;
      *v54 = v0;
      v54[1] = sub_264AE7CAC;
      v55 = *MEMORY[0x277D85DE8];

      return sub_264AEA6B4(v66, v65, 1, v51, v53);
    }

    else
    {
      v56 = v44;
      v57 = sub_264B3FF84();

      swift_willThrow();
      v0[45] = v57;
      v58 = v0[37];
      v59 = sub_264B40944();
      v60 = sub_264B41494();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_2649C6000, v59, v60, "failed to create negotiator for video stream", v61, 2u);
        MEMORY[0x266749940](v61, -1, -1);
      }

      v62 = swift_task_alloc();
      v0[46] = v62;
      *v62 = v0;
      v62[1] = sub_264AE8340;
      v63 = v0[23];
      v64 = *MEMORY[0x277D85DE8];

      return sub_264ADEE50(v57);
    }
  }
}

uint64_t sub_264AE7CAC()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 336);
  v8 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_264AE7F44;
  }

  else
  {
    sub_2649DEF6C(*(v2 + 320), *(v2 + 328));
    v4 = sub_264AE7DFC;
  }

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264AE7DFC()
{
  v16 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 224);
  v8 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 192);
  v9 = *(v0 + 176);
  v9[3] = v5;
  v9[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
  swift_unknownObjectRelease();
  (*(v8 + 8))(v6, v7);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_264AE7F44()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  sub_2649DEF6C(v1, v2);
  v3 = *(v0 + 344);
  *(v0 + 360) = v3;
  v4 = *(v0 + 296);
  v5 = sub_264B40944();
  v6 = sub_264B41494();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "failed to create negotiator for video stream", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v8 = swift_task_alloc();
  *(v0 + 368) = v8;
  *v8 = v0;
  v8[1] = sub_264AE8340;
  v9 = *(v0 + 184);
  v10 = *MEMORY[0x277D85DE8];

  return sub_264ADEE50(v3);
}

uint64_t sub_264AE80B0()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_264AE85B0;
  }

  else
  {
    v3 = sub_264AE81EC;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264AE81EC()
{
  v16 = *MEMORY[0x277D85DE8];
  *(v0[23] + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_clientActivated) = 1;
  v1 = v0[38];
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v8 = v0[29];
  v14 = v0[27];
  v15 = v0[24];
  v9 = v0[22];
  v9[3] = v5;
  v9[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
  swift_unknownObjectRelease();
  (*(v8 + 8))(v6, v7);

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_264AE8340()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 368);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264AE8468, 0, 0);
}

uint64_t sub_264AE8468()
{
  v16 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 224);
  v8 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 192);
  v9 = *(v0 + 176);
  v9[3] = v5;
  v9[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
  swift_unknownObjectRelease();
  (*(v8 + 8))(v6, v7);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_264AE85B0()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = v0[44];
  v2 = v0[38];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v8 = v0[29];
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v9 = v0[44];
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[27];
  v14 = v0[24];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_264AE86E0()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = sub_264B41244();
  v1[7] = sub_264B41234();
  v6 = sub_264B411C4();
  v1[8] = v6;
  v1[9] = v5;

  return MEMORY[0x2822009F8](sub_264AE87D8, v6, v5);
}

uint64_t sub_264AE87D8()
{
  v51 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  v0[10] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v50);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 460;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, &v50);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = v13[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState];
  if (v14 == 4)
  {
    v31 = v13;
    v32 = sub_264B40944();
    v33 = sub_264B414B4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[2];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136446210;
      v37 = v34;
      v38 = [v37 description];
      v39 = sub_264B41044();
      v41 = v40;

      v42 = sub_2649CC004(v39, v41, &v50);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_2649C6000, v32, v33, "%{public}s is already invalidating, holding until complete", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x266749940](v36, -1, -1);
      MEMORY[0x266749940](v35, -1, -1);
    }

    v43 = v0[6];
    v44 = v0[2];
    v0[12] = sub_264B41234();
    v45 = swift_task_alloc();
    v0[13] = v45;
    *(v45 + 16) = v44;
    v46 = *(MEMORY[0x277D859E0] + 4);
    v47 = swift_task_alloc();
    v0[14] = v47;
    *v47 = v0;
    v47[1] = sub_264A29AFC;

    return MEMORY[0x2822007B8]();
  }

  else if (v14 == 5)
  {
    v15 = v0[7];

    v16 = v13;
    v17 = sub_264B40944();
    v18 = sub_264B414B4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[2];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v50 = v21;
      *v20 = 136446210;
      v22 = v19;
      v23 = [v22 description];
      v24 = sub_264B41044();
      v26 = v25;

      v27 = sub_2649CC004(v24, v26, &v50);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_2649C6000, v17, v18, "%{public}s is already invalidated, bailing", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x266749940](v21, -1, -1);
      MEMORY[0x266749940](v20, -1, -1);
    }

    v28 = v0[5];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v13[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] = 4;
    LOBYTE(v50) = v14;
    sub_264ADF934(&v50);
    v48 = swift_task_alloc();
    v0[11] = v48;
    *v48 = v0;
    v48[1] = sub_264A29974;
    v49 = v0[2];

    return sub_264AE3040();
  }
}

uint64_t sub_264AE8DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71D0);
  v10 = sub_264B40944();
  v11 = sub_264B414B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2649C6000, v10, v11, "Adding to tearing down continuations", v12, 2u);
    MEMORY[0x266749940](v12, -1, -1);
  }

  (*(v5 + 16))(v8, a1, v4);
  v13 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations;
  v14 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_2649D8028(0, v14[2] + 1, 1, v14);
    *(a2 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_2649D8028(v16 > 1, v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  result = (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v8, v4);
  *(a2 + v13) = v14;
  return result;
}

uint64_t sub_264AE9010(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return sub_264AE7254(a1);
}

uint64_t sub_264AE90AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CD850;

  return sub_264AE86E0();
}

uint64_t sub_264AE913C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v21 - v14;
  v16 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v16, v11, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_2649D04D4(v11, &qword_27FF8BFA0, &qword_264B53480);
    v17 = 1;
LABEL_5:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
    (*(*(v20 - 8) + 56))(v15, v17, 1, v20);
    return sub_2649D04D4(v15, &qword_27FF8BFA8, &qword_264B53488);
  }

  (*(v4 + 16))(v7, v11, v3);
  result = sub_2649D04D4(v11, &qword_27FF8BFA0, &qword_264B53480);
  if (a1)
  {
    v21[0] = a1;
    v21[1] = 0;
    v22 = 0;
    v19 = a1;
    sub_264B412A4();
    (*(v4 + 8))(v7, v3);
    v17 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_264AE94E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - v14;
  v16 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v16, v11, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_2649D04D4(v11, &qword_27FF8BFA0, &qword_264B53480);
    v17 = 1;
LABEL_5:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
    (*(*(v19 - 8) + 56))(v15, v17, 1, v19);
    return sub_2649D04D4(v15, &qword_27FF8BFA8, &qword_264B53488);
  }

  (*(v4 + 16))(v7, v11, v3);
  result = sub_2649D04D4(v11, &qword_27FF8BFA0, &qword_264B53480);
  if (a1)
  {
    v20[0] = [a1 streamToken];
    v20[1] = 0;
    v21 = 1;
    sub_264B412A4();
    (*(v4 + 8))(v7, v3);
    v17 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit25MediaTransportVideoStreamC16AVCDelegateEvent33_EC97EEE54CB1A51ED7B858FFDCECB29FLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_264AE9A88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264AE9AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_264AE9B14(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_264AE9B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_264A1FB04(a1, a2);

  return sub_2649C964C(a1 + 40, a2 + 40);
}

_BYTE *sub_264AE9B80@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_264AE9C14(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_264AE9D50(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_264AE9CCC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_264AE9C14(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264AE9CCC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_264B3FED4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_264B3FE94();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_264AE9D50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_264B3FED4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_264B3FE94();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_264B3FFE4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_264AE9DCC(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_264AE9E24(a1, a2, a3);
}

uint64_t sub_264AE9E24(void *a1, uint64_t a2, unint64_t a3)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v41 = sub_264B400E4();
  v42 = v6;
  v7 = sub_264ADF878(&v41, v43);
  v9 = v8;
  v10 = sub_264B3FFF4();
  v12 = v11;
  sub_2649DEF6C(v7, v9);
  v43[1] = MEMORY[0x277CC9318];
  v43[2] = MEMORY[0x277CC9300];
  v41 = v10;
  v42 = v12;
  v13 = __swift_project_boxed_opaque_existential_1(&v41, MEMORY[0x277CC9318]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v39, 0, 14);
      v18 = v39;
      v17 = v39;
      goto LABEL_23;
    }

    v19 = *(v14 + 16);
    v20 = *(v14 + 24);
    v21 = sub_264B3FEA4();
    if (v21)
    {
      v22 = sub_264B3FEC4();
      v14 = v19 - v22;
      if (__OFSUB__(v19, v22))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v21 += v14;
    }

    v23 = __OFSUB__(v20, v19);
    v24 = v20 - v19;
    if (!v23)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v39[0] = *v13;
    LOWORD(v39[1]) = v15;
    BYTE2(v39[1]) = BYTE2(v15);
    BYTE3(v39[1]) = BYTE3(v15);
    BYTE4(v39[1]) = BYTE4(v15);
    BYTE5(v39[1]) = BYTE5(v15);
    v17 = v39 + BYTE6(v15);
    v18 = v39;
    goto LABEL_23;
  }

  v25 = v14;
  v26 = v14 >> 32;
  v24 = v26 - v25;
  if (v26 < v25)
  {
    __break(1u);
    goto LABEL_25;
  }

  v21 = sub_264B3FEA4();
  if (v21)
  {
    v27 = sub_264B3FEC4();
    if (!__OFSUB__(v25, v27))
    {
      v21 += v25 - v27;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v28 = sub_264B3FEB4();
  if (v28 >= v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = v28;
  }

  v30 = (v29 + v21);
  if (v21)
  {
    v17 = v30;
  }

  else
  {
    v17 = 0;
  }

  v18 = v21;
LABEL_23:
  sub_264AE9B80(v18, v17, v40);
  v31 = v40[0];
  v32 = v40[1];
  __swift_destroy_boxed_opaque_existential_0(&v41);
  [a1 setSRTPCipherSuite_];
  [a1 setSRTCPCipherSuite_];
  v41 = a2;
  v42 = a3;
  sub_2649DEF18(a2, a3);
  sub_264B40034();
  v33 = v41;
  v34 = v42;
  v35 = sub_264B40014();
  [a1 setReceiveMasterKey_];

  v36 = sub_264B40014();
  [a1 setSendMasterKey_];

  sub_2649DEF6C(v31, v32);
  result = sub_2649DEF6C(v33, v34);
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264AEA118(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 257) = a3;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  return MEMORY[0x2822009F8](sub_264AEA140, 0, 0);
}

uint64_t sub_264AEA140()
{
  v34 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 257);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136446210;
    *(v0 + 256) = v4 & 1;
    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v33);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "Sending negotiationOffer for stream: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 257);
  v13 = *(v0 + 192);
  v32 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  v15 = inited;
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = 0x79546D6165727473;
  v16 = MEMORY[0x277D837D0];
  v17 = 0x6F69647561;
  if (v12)
  {
    v17 = 0x6F65646976;
  }

  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = v17;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v16;
  *(inited + 80) = 0x746169746F67656ELL;
  v18 = MEMORY[0x277CC9318];
  *(inited + 88) = 0xEF617461446E6F69;
  *(inited + 96) = v11;
  *(inited + 104) = v10;
  *(inited + 120) = v18;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = v16;
  *(inited + 136) = 0x8000000264B5A500;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x8000000264B58B80;
  sub_2649DEF18(v11, v10);
  v19 = sub_264A24308(v15);
  *(v0 + 224) = v19;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();
  ObjectType = swift_getObjectType();
  v21 = *MEMORY[0x277D44228];
  v22 = sub_264B41044();
  v24 = v23;
  *(v0 + 232) = v23;
  v25 = *(v32 + 136);
  v31 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 240) = v27;
  *v27 = v0;
  v27[1] = sub_264AEA500;
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);

  return v31(4, v19, v22, v24, ObjectType, v28);
}

uint64_t sub_264AEA500()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264AEA648, 0, 0);
  }

  else
  {
    v4 = v3[28];
    v5 = v3[29];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_264AEA648()
{
  v2 = v0[28];
  v1 = v0[29];

  v3 = v0[1];
  v4 = v0[31];

  return v3();
}

uint64_t sub_264AEA6B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 257) = a3;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  return MEMORY[0x2822009F8](sub_264AEA6DC, 0, 0);
}

uint64_t sub_264AEA6DC()
{
  v34 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 257);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136446210;
    *(v0 + 256) = v4 & 1;
    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v33);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "Sending negotiationOffer for stream: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 257);
  v13 = *(v0 + 192);
  v32 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  v15 = inited;
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = 0x79546D6165727473;
  v16 = MEMORY[0x277D837D0];
  v17 = 0x6F69647561;
  if (v12)
  {
    v17 = 0x6F65646976;
  }

  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = v17;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v16;
  *(inited + 80) = 0x746169746F67656ELL;
  v18 = MEMORY[0x277CC9318];
  *(inited + 88) = 0xEF617461446E6F69;
  *(inited + 96) = v11;
  *(inited + 104) = v10;
  *(inited + 120) = v18;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = v16;
  *(inited + 136) = 0x8000000264B5A500;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x8000000264B58B80;
  sub_2649DEF18(v11, v10);
  v19 = sub_264A24308(v15);
  *(v0 + 224) = v19;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();
  ObjectType = swift_getObjectType();
  v21 = *MEMORY[0x277D44228];
  v22 = sub_264B41044();
  v24 = v23;
  *(v0 + 232) = v23;
  v25 = *(v32 + 136);
  v31 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 240) = v27;
  *v27 = v0;
  v27[1] = sub_264AEAA9C;
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);

  return v31(4, v19, v22, v24, ObjectType, v28);
}

uint64_t sub_264AEAA9C()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264AEBEB0, 0, 0);
  }

  else
  {
    v4 = v3[28];
    v5 = v3[29];

    v6 = v3[1];

    return v6();
  }
}

void sub_264AEABE4(void *a1, void *a2)
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = a2;
  v6 = a1;
  v7 = sub_264B40944();
  v8 = sub_264B414B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v6;
    *v10 = v5;
    v10[1] = v6;
    v11 = v5;
    v12 = v6;
    _os_log_impl(&dword_2649C6000, v7, v8, "Setting video layer for remoteVideoClient=%{public}@ layer=%{public}@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89880, &unk_264B46B20);
    swift_arrayDestroy();
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v13 = [v5 slotForMode_];
  if (v13)
  {
    v14 = v13;
    v15 = objc_opt_self();
    [v15 begin];
    [v6 setContents_];
    swift_unknownObjectRelease();
    [v6 setContentsGravity_];
    [v15 commit];
  }

  else
  {
    v16 = sub_264B40944();
    v17 = sub_264B41494();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2649C6000, v16, v17, "Unable to retrieve slot number for AVCRemoteVideoModePrimaryCamera", v18, 2u);
      MEMORY[0x266749940](v18, -1, -1);
    }

    sub_264AEAEC0();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_264AEAEC0()
{
  result = qword_27FF8BF70;
  if (!qword_27FF8BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BF70);
  }

  return result;
}

uint64_t sub_264AEAF14()
{
  MEMORY[0x266749A30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AEAF4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF78, &qword_264B53418);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264AEB030(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF78, &qword_264B53418) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264AE0A64(a1, v6, v7, v1 + v5, v8);
}

void sub_264AEB15C(id a1, id a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_264AEB170(a1, a2, a3);
  }
}

void sub_264AEB170(id a1, id a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 != 3 && a3 != 4)
    {
      if (a3 != 5)
      {
        return;
      }

      a1 = a2;

      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  if (a3 == 2)
  {
LABEL_10:
    a1 = a2;

LABEL_7:
  }
}

id sub_264AEB200(id result, id a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 != 3 && a3 != 4)
    {
      if (a3 != 5)
      {
        return result;
      }

      v5 = result;
      result = a2;

      return result;
    }

    goto LABEL_10;
  }

  if (!a3)
  {

    return result;
  }

  if (a3 == 2)
  {
LABEL_10:
    result = a2;

    return result;
  }

  return result;
}

uint64_t sub_264AEB2C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  v14 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v0 + v14, v9, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_2649D04D4(v9, &qword_27FF8BFA0, &qword_264B53480);
    v15 = 1;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_2649D04D4(v9, &qword_27FF8BFA0, &qword_264B53480);
    v18[0] = 0;
    v18[1] = 0;
    v19 = 6;
    sub_264B412A4();
    (*(v2 + 8))(v5, v1);
    v15 = 0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
  (*(*(v16 - 8) + 56))(v13, v15, 1, v16);
  return sub_2649D04D4(v13, &qword_27FF8BFA8, &qword_264B53488);
}

uint64_t sub_264AEB574()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v0 + v14, v9, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_2649D04D4(v9, &qword_27FF8BFA0, &qword_264B53480);
    v15 = 1;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_2649D04D4(v9, &qword_27FF8BFA0, &qword_264B53480);
    v18 = xmmword_264B4A5F0;
    v19 = 6;
    sub_264B412A4();
    (*(v2 + 8))(v5, v1);
    v15 = 0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
  (*(*(v16 - 8) + 56))(v13, v15, 1, v16);
  return sub_2649D04D4(v13, &qword_27FF8BFA8, &qword_264B53488);
}

uint64_t sub_264AEB82C(uint64_t a1, void *a2, int a3)
{
  v24 = a3;
  v23 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v3 + v18, v13, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_2649D04D4(v13, &qword_27FF8BFA0, &qword_264B53480);
    v19 = 1;
  }

  else
  {
    (*(v6 + 16))(v9, v13, v5);
    sub_2649D04D4(v13, &qword_27FF8BFA0, &qword_264B53480);
    v25 = v23 & 1;
    v26 = a2;
    v27 = v24;
    v20 = a2;
    sub_264B412A4();
    (*(v6 + 8))(v9, v5);
    v19 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
  (*(*(v21 - 8) + 56))(v17, v19, 1, v21);
  return sub_2649D04D4(v17, &qword_27FF8BFA8, &qword_264B53488);
}

uint64_t sub_264AEBBE0(void *a1, void *a2)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA8, &qword_264B53488);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v2 + v17, v12, &qword_27FF8BFA0, &qword_264B53480);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_2649D04D4(v12, &qword_27FF8BFA0, &qword_264B53480);
    v18 = 1;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_2649D04D4(v12, &qword_27FF8BFA0, &qword_264B53480);
    v19 = v25;
    v26 = a1;
    v27 = v25;
    v28 = 5;
    v20 = a1;
    v21 = v19;
    sub_264B412A4();
    (*(v5 + 8))(v8, v4);
    v18 = 0;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB0, &qword_264B53490);
  (*(*(v22 - 8) + 56))(v16, v18, 1, v22);
  return sub_2649D04D4(v16, &qword_27FF8BFA8, &qword_264B53488);
}

id sub_264AEBEB4()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    return v1;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

void sub_264AEBF34(void *a1)
{
  v2 = v1;
  if (*(v1 + 16))
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AEA0);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Drag-and-drop shield window scene is being overwritten", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }
  }

  v9 = *(v2 + 16);
  *(v2 + 16) = a1;
  v8 = a1;
}

uint64_t DragAndDropSceneContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL static MediaTransportSessionState.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_10;
      }

      if (v3 == 3)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (v2 != 1)
  {
LABEL_10:
    v4 = v3 > 3;
    goto LABEL_13;
  }

  if (v3 != 1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = 1;
LABEL_13:
  sub_2649DDB20(*a1);
  sub_2649DDB20(v3);
  sub_2649FE684(v2);
  sub_2649FE684(v3);
  return v4;
}

BOOL static MediaTransportSessionState.< infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    if (v3 > 2)
    {
LABEL_11:
      v5 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 == 1)
    {
      v5 = v3 > 1;
      goto LABEL_12;
    }

    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_12:
  sub_2649DDB20(*a1);
  sub_2649DDB20(v3);
  sub_2649FE684(v2);
  sub_2649FE684(v3);
  return v5;
}

unint64_t sub_264AEC26C()
{
  result = qword_27FF8BFD0;
  if (!qword_27FF8BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BFD0);
  }

  return result;
}

BOOL sub_264AEC2C0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    if (v3 >= 3)
    {
LABEL_11:
      v5 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 == 1)
    {
      v5 = v3 > 1;
      goto LABEL_12;
    }

    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_12:
  sub_2649DDB20(*a1);
  sub_2649DDB20(v3);
  sub_2649FE684(v2);
  sub_2649FE684(v3);
  return v5;
}

BOOL sub_264AEC34C(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 == 2)
  {
    return v2 < 3;
  }

  if (v3 == 1)
  {
    return v2 < 2;
  }

  return v3 || v2 == 0;
}

BOOL sub_264AEC394(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    return v3 < 3;
  }

  if (v2 == 1)
  {
    return v3 < 2;
  }

  return v2 || v3 == 0;
}

BOOL sub_264AEC3DC(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 == 2)
  {
    return v2 >= 3;
  }

  if (v3 == 1)
  {
    return v2 > 1;
  }

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  return !v4;
}

BOOL sub_264AEC424(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_10;
      }

      if (v3 == 3)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (v2 != 1)
  {
LABEL_10:
    v4 = v3 > 3;
    goto LABEL_13;
  }

  if (v3 != 1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = 1;
LABEL_13:
  sub_2649DDB20(*a1);
  sub_2649DDB20(v3);
  sub_2649FE684(v2);
  sub_2649FE684(v3);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit26MediaTransportSessionStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_264AEC4EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264AEC540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_264AEC5AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0xD000000000000020;
  *(v2 + 24) = 0x8000000264B60A70;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionDuration) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionEndedReason) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionNumber) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_accessibilityUsed) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_audioAlertShown) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_cameraAlertShown) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_dragNDropUsed) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_foregroundDuration) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationInteraction) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationInteractionType) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationShown) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_unknownOrientation) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeLeft) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeRight) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationPortrait) = 0;
  *(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationUpsideDown) = 0;
  v5 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionStartTime;
  v6 = sub_264B40084();
  v7 = *(*(v6 - 8) + 32);
  v7(v2 + v5, a1, v6);
  v7(v2 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_lastOrientationChange, a2, v6);
  return v2;
}

unint64_t sub_264AEC73C()
{
  v1 = v0;
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE40);
  v3 = sub_264B40944();
  v4 = sub_264B41484();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2649C6000, v3, v4, "encoding the report", v5, 2u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFE8, &qword_264B536B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B535E0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x8000000264B60910;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0x656C416F69647541;
  *(inited + 64) = 0xEF6E776F68537472;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000264B60930;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 104), "DragNDropUsed");
  *(inited + 118) = -4864;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000264B60950;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 152) = 0xD000000000000017;
  *(inited + 160) = 0x8000000264B60970;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x8000000264B60990;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x8000000264B609B0;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x8000000264B609D0;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 248) = 0xD000000000000019;
  *(inited + 256) = 0x8000000264B609F0;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 272) = 0xD000000000000013;
  *(inited + 280) = 0x8000000264B60A10;
  *(inited + 288) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 296) = 0xD000000000000015;
  *(inited + 304) = 0x8000000264B60A30;
  *(inited + 312) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 320) = 0x446E6F6973736553;
  *(inited + 328) = 0xEF6E6F6974617275;
  *(inited + 336) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 344) = 0xD000000000000016;
  *(inited + 352) = 0x8000000264B60A50;
  *(inited + 360) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 368), "SessionNumber");
  *(inited + 382) = -4864;
  *(inited + 384) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = sub_264A24664(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFF0, qword_264B536C0);
  swift_arrayDestroy();
  return v7;
}

void sub_264AECC64(unsigned __int8 *a1, int a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_264B40084();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v32[-v11];
  v13 = *a1;
  sub_264B40074();
  v14 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_lastOrientationChange;
  swift_beginAccess();
  (*(v6 + 16))(v10, v3 + v14, v5);
  sub_264B40044();
  v16 = v15;
  v17 = v15;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v18(v12, v5);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v16 < 9.22337204e18)
  {
    if (qword_27FF883F8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_5:
  v19 = sub_264B40964();
  __swift_project_value_buffer(v19, qword_27FF8AE40);

  v20 = sub_264B40944();
  v21 = sub_264B41484();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation);

    *(v22 + 12) = 2048;
    *(v22 + 14) = v13;
    _os_log_impl(&dword_2649C6000, v20, v21, "current orientation is %ld new orientation is %ld", v22, 0x16u);
    MEMORY[0x266749940](v22, -1, -1);
  }

  else
  {
  }

  v23 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation;
  LODWORD(v24) = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation);
  if (v13 != v24 || (v33 & 1) != 0)
  {
    v25 = v16;
    if (*(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation) > 1u)
    {
      if (v24 == 2)
      {
LABEL_20:
        v24 = (v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationUpsideDown);
        v29 = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationUpsideDown);
        v27 = __OFADD__(v29, v25);
        v25 += v29;
        if (!v27)
        {
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_23;
      }

      if (v24 != 3)
      {
LABEL_23:
        v24 = (v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeLeft);
        v30 = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeLeft);
        v27 = __OFADD__(v30, v25);
        v25 += v30;
        if (!v27)
        {
          goto LABEL_27;
        }

        __break(1u);
LABEL_26:
        v24 = (v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationPortrait);
        v31 = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationPortrait);
        v27 = __OFADD__(v31, v25);
        v25 += v31;
        if (v27)
        {
          __break(1u);
          return;
        }

        goto LABEL_27;
      }

      v24 = (v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeRight);
      v26 = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_durationLandscapeRight);
      v27 = __OFADD__(v26, v25);
      v25 += v26;
      if (!v27)
      {
LABEL_27:
        *v24 = v25;
        sub_264B40074();
        swift_beginAccess();
        (*(v6 + 40))(v3 + v14, v12, v5);
        swift_endAccess();
        *(v3 + v23) = v13;
        return;
      }

      __break(1u);
    }

    if (v24)
    {
      goto LABEL_26;
    }

    v24 = (v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_unknownOrientation);
    v28 = *(v3 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_unknownOrientation);
    v27 = __OFADD__(v28, v25);
    v25 += v28;
    if (!v27)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_264AED024(void *a1)
{
  v41 = sub_264B40154();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264B40084();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = *(v14 + 8);
  v42 = "durationUpsideDown";
  v16(&v44, 0xD000000000000013, 0x8000000264B608F0, 0, MEMORY[0x277D83B88], v15, v14);
  v17 = (v7 + 8);
  if (v45)
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    sub_264B40074();
    sub_264B40064();
    v21 = v20;
    v22 = v20;
    result = (*v17)(v11, v6);
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v21 > -9.22337204e18)
    {
      if (v21 < 9.22337204e18)
      {
        v24 = MEMORY[0x277D83B88];
        v46 = MEMORY[0x277D83B88];
        v44 = v21;
        (*(v19 + 16))(&v44, 0xD000000000000013, v42 | 0x8000000000000000, v18, v19);
        sub_2649D3A14(&v44);
        v25 = v43;
        *(v43 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionNumber) = 1;
        v26 = &unk_27FFA7000;
LABEL_15:
        v37 = a1[3];
        v38 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v37);
        v39 = *(v25 + v26[82]);
        v46 = v24;
        v44 = v39;
        (*(v38 + 16))(&v44, 0x73756F6976657270, 0xEF6E6F6973736553, v37, v38);
        return sub_2649D3A14(&v44);
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_264B40054();
  sub_264B40144();
  sub_264B40074();
  v27 = sub_264B40134();
  v28 = *v17;
  (*v17)(v11, v6);
  (*(v2 + 8))(v5, v41);
  if ((v27 & 1) == 0)
  {
    *(v43 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionNumber) = 1;
    v31 = a1[3];
    v32 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v31);
    sub_264B40074();
    sub_264B40064();
    v34 = v33;
    v35 = v33;
    result = v28(v11, v6);
    if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v34 > -9.22337204e18)
      {
        if (v34 < 9.22337204e18)
        {
          v36 = MEMORY[0x277D83B88];
          v46 = MEMORY[0x277D83B88];
          v44 = v34;
          (*(v32 + 16))(&v44, 0xD000000000000013, v42 | 0x8000000000000000, v31, v32);
          v28(v13, v6);
          v24 = v36;
          sub_2649D3A14(&v44);
          v25 = v43;
          v26 = &unk_27FFA7000;
          goto LABEL_15;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  (*(v30 + 8))(&v44, 0x73756F6976657270, 0xEF6E6F6973736553, 0, MEMORY[0x277D83B88], v29, v30);
  result = v28(v13, v6);
  if (v45 == 1)
  {
    v25 = v43;
    v24 = MEMORY[0x277D83B88];
    v26 = &unk_27FFA7000;
    goto LABEL_15;
  }

  v25 = v43;
  v24 = MEMORY[0x277D83B88];
  if (!__OFADD__(v44, 1))
  {
    v26 = &unk_27FFA7000;
    *(v43 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionNumber) = v44 + 1;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_264AED5A4()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionStartTime;
  v3 = sub_264B40084();
  v4 = *(*(v3 - 8) + 8);
  v4(&v0[v2], v3);
  v4(&v0[OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_lastOrientationChange], v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_264AED678(unsigned __int8 *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_264B40084();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v68 - v11;
  v13 = *a1;
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = sub_264A24308(MEMORY[0x277D84F90]);
  }

  v15 = qword_27FF883F8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FF8AE40);
  v17 = sub_264B40944();
  v18 = sub_264B41474();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v68 = v14;
    v69 = v10;
    v20 = v3;
    v21 = v19;
    v22 = swift_slowAlloc();
    v72[0] = v22;
    *v21 = 136315138;
    LOBYTE(v70) = v13;
    v23 = TelemetryEvent.rawValue.getter();
    v25 = sub_2649CC004(v23, v24, v72);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2649C6000, v17, v18, "CAEndOfSessionConsumer: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266749940](v22, -1, -1);
    v26 = v21;
    v3 = v20;
    v14 = v68;
    v10 = v69;
    MEMORY[0x266749940](v26, -1, -1);
  }

  if (v13 > 13)
  {
    if (v13 <= 15)
    {
      if (v13 == 14)
      {

        v29 = *(v3 + 80);
        if (!v29)
        {
          return;
        }

        v30 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_cameraAlertShown;
      }

      else
      {

        v29 = *(v3 + 80);
        if (!v29)
        {
          return;
        }

        v30 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_audioAlertShown;
      }
    }

    else
    {
      switch(v13)
      {
        case 16:
          v52 = *(v3 + 80);
          if (v52)
          {
            *(v52 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationInteraction) = 1;
            *(v52 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationShown) = 1;
            v53 = *(v14 + 16);

            if (v53)
            {
              v54 = sub_264A20ACC(0x795468636E75614CLL, 0xEA00000000006570);
              if (v55)
              {
                sub_2649C964C(*(v14 + 56) + 32 * v54, v72);

                v56 = swift_dynamicCast();
                v57 = v56 == 0;
                if (v56)
                {
                  v58 = v70;
                }

                else
                {
                  v58 = 0;
                }

                if (v57)
                {
                  v53 = 0;
                }

                else
                {
                  v53 = v71;
                }
              }

              else
              {

                v58 = 0;
                v53 = 0;
              }
            }

            else
            {

              v58 = 0;
            }

            v67 = sub_264AEE8D0(v58, v53);

            *(v52 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_notificationInteractionType) = v67;
LABEL_75:

            return;
          }

          goto LABEL_36;
        case 17:

          v29 = *(v3 + 80);
          if (!v29)
          {
            return;
          }

          v30 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_accessibilityUsed;
          break;
        case 18:

          v29 = *(v3 + 80);
          if (!v29)
          {
            return;
          }

          v30 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_dragNDropUsed;
          break;
        default:
          goto LABEL_61;
      }
    }

    *(v29 + v30) = 1;
    return;
  }

  if (v13 <= 8)
  {
    if (v13 != 1)
    {
      if (v13 == 8)
      {

        if (*(v3 + 80))
        {
          return;
        }

        v31 = sub_264B40944();
        v32 = sub_264B41474();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_2649C6000, v31, v32, "CAEndOfSessionConsumer: creating an EOS report", v33, 2u);
          MEMORY[0x266749940](v33, -1, -1);
        }

        sub_264B40074();
        sub_264B40074();
        v34 = type metadata accessor for CAEndOfSessionConsumer.EOSReport();
        v35 = *(v34 + 48);
        v36 = *(v34 + 52);
        v37 = swift_allocObject();
        sub_264AEC5AC(v12, v10);
        v38 = *(v3 + 80);
        *(v3 + 80) = v37;

        sub_264AED024((v3 + 128));
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    v39 = *(v3 + 80);
    if (v39)
    {
      *(v39 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionEndedReason) = 12;
    }

    goto LABEL_35;
  }

  switch(v13)
  {
    case 9:
      if (*(v3 + 80))
      {
        if (*(v14 + 16))
        {
          v40 = sub_264A20ACC(0x6F436E6F73616552, 0xEA00000000006564);
          if (v41)
          {
            sub_2649C964C(*(v14 + 56) + 32 * v40, v72);

            if ((swift_dynamicCast() & 1) == 0)
            {
              return;
            }

            v42 = v70;
            v43 = *(v3 + 80);
            if (v43)
            {
              *(v43 + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionEndedReason) = v70;
            }

            v44 = sub_264B40944();
            v45 = sub_264B41474();
            if (!os_log_type_enabled(v44, v45))
            {
              goto LABEL_67;
            }

            v46 = swift_slowAlloc();
            *v46 = 134217984;
            *(v46 + 4) = v42;
            v47 = "Recording invalidation reason of %ld";
            v48 = v45;
            v49 = v44;
            v50 = v46;
            v51 = 12;
            goto LABEL_66;
          }
        }

LABEL_38:

        return;
      }

LABEL_36:

      goto LABEL_38;
    case 10:
LABEL_35:
      sub_264AEDEB8(v14);
      goto LABEL_36;
    case 13:
      if (*(v14 + 16) && (v27 = sub_264A20ACC(0x7461746E6569724FLL, 0xEB000000006E6F69), (v28 & 1) != 0))
      {
        sub_2649C964C(*(v14 + 56) + 32 * v27, v72);

        if (swift_dynamicCast())
        {
          if (!*(v3 + 80))
          {
            return;
          }

          LOBYTE(v72[0]) = v70;

          sub_264AECC64(v72, 0);
          goto LABEL_75;
        }
      }

      else
      {
      }

      v44 = sub_264B40944();
      v65 = sub_264B41494();
      if (!os_log_type_enabled(v44, v65))
      {
LABEL_67:

        return;
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "failed to get the new orientation";
      v48 = v65;
      v49 = v44;
      v50 = v46;
      v51 = 2;
LABEL_66:
      _os_log_impl(&dword_2649C6000, v49, v48, v47, v50, v51);
      MEMORY[0x266749940](v46, -1, -1);
      goto LABEL_67;
  }

LABEL_61:

  v69 = sub_264B40944();
  v59 = sub_264B41494();
  if (os_log_type_enabled(v69, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v72[0] = v61;
    *v60 = 136315138;
    LOBYTE(v70) = v13;
    v62 = TelemetryEvent.rawValue.getter();
    v64 = sub_2649CC004(v62, v63, v72);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_2649C6000, v69, v59, "Unexpected event: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x266749940](v61, -1, -1);
    MEMORY[0x266749940](v60, -1, -1);
  }

  else
  {
    v66 = v69;
  }
}

void sub_264AEDEB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40084();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43[-1] - v10;
  isa = v1[10].isa;
  if (isa)
  {
    v13 = qword_27FF883F8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_264B40964();
    __swift_project_value_buffer(v14, qword_27FF8AE40);
    v15 = sub_264B40944();
    v16 = sub_264B41474();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v42 = v2;
      v18 = a1;
      v19 = v17;
      *v17 = 0;
      _os_log_impl(&dword_2649C6000, v15, v16, "Session ending, finish & send the report", v17, 2u);
      v20 = v19;
      a1 = v18;
      v2 = v42;
      MEMORY[0x266749940](v20, -1, -1);
    }

    sub_264B40074();
    (*(v5 + 16))(v9, isa + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionStartTime, v4);
    sub_264B40044();
    v22 = v21;
    v23 = v21;
    v24 = *(v5 + 8);
    v24(v9, v4);
    v24(v11, v4);
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        *(isa + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionDuration) = v22;
        v25 = OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionEndedReason;
        if (!*(isa + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_sessionEndedReason))
        {
          sub_264AEE3F0(a1, v43);
          *(isa + v25) = v43[0];
        }

        LOBYTE(v43[0]) = *(isa + OBJC_IVAR____TtCC16ScreenSharingKit22CAEndOfSessionConsumer9EOSReport_currentOrientation);
        sub_264AECC64(v43, 1);
        v26 = sub_264B40944();
        v27 = sub_264B41484();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_2649C6000, v26, v27, "Session ending, sending the report", v28, 2u);
          MEMORY[0x266749940](v28, -1, -1);
        }

        sub_2649CB5C0(&v2[5], v43);
        v29 = v44;
        v30 = v45;
        __swift_project_boxed_opaque_existential_1(v43, v44);
        v31 = *(isa + 2);
        v32 = *(isa + 3);

        v33 = sub_264AEC73C();
        (*(v30 + 8))(v31, v32, v33, v29, v30);

        __swift_destroy_boxed_opaque_existential_0(v43);
        v34 = sub_264B40944();
        v35 = sub_264B41484();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_2649C6000, v34, v35, "Session ending, done sending the report", v36, 2u);
          MEMORY[0x266749940](v36, -1, -1);
        }

        v37 = v2[10].isa;
        v2[10].isa = 0;

        return;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (qword_27FF883F8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v38 = sub_264B40964();
  __swift_project_value_buffer(v38, qword_27FF8AE40);
  v42 = sub_264B40944();
  v39 = sub_264B41474();
  if (os_log_type_enabled(v42, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2649C6000, v42, v39, "Expected to have an EOSReport", v40, 2u);
    MEMORY[0x266749940](v40, -1, -1);
  }

  v41 = v42;
}

uint64_t sub_264AEE3F0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  if (*(result + 16))
  {
    result = sub_264A20ACC(0x6F436E6F73616552, 0xEA00000000006564);
    if (v4)
    {
      sub_2649C964C(*(v2 + 56) + 32 * result, &v10);
      result = swift_dynamicCast();
      if (result)
      {
        *a2 = v8;
        return result;
      }
    }

    if (*(v2 + 16))
    {
      result = sub_264A20ACC(0x707954726F727245, 0xE900000000000065);
      if (v5)
      {
        sub_2649C964C(*(v2 + 56) + 32 * result, &v10);
        result = swift_dynamicCast();
        if ((result & 1) != 0 && v8 == 4)
        {
          if (*(v2 + 16))
          {
            result = sub_264A20ACC(0x6A624F726F727245, 0xEB00000000746365);
            if (v6)
            {
              sub_2649C964C(*(v2 + 56) + 32 * result, &v10);
              result = swift_dynamicCast();
              if (result)
              {
                v10 = 4;
                v11 = v9;
                sub_264B06984(a2);
                return sub_2649E12A4(4, v9);
              }
            }
          }
        }
      }
    }
  }

  if (*(v2 + 16))
  {
    result = sub_264A20ACC(0x6E6F73616552, 0xE600000000000000);
    if (v7)
    {
      sub_2649C964C(*(v2 + 56) + 32 * result, &v10);
      result = swift_dynamicCast();
      if (result)
      {
        if (v8 == 0x7075727265746E69 && v9 == 0xEB00000000646574 || (sub_264B41AA4() & 1) != 0)
        {

          *a2 = 2;
          return result;
        }

        if (v8 == 0xD000000000000010 && 0x8000000264B5FBE0 == v9 || (sub_264B41AA4() & 1) != 0)
        {

          *a2 = 11;
          return result;
        }

        if (v8 != 0x206E6F6973736573 || v9 != 0xEB00000000646E65)
        {
          sub_264B41AA4();
        }
      }
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_264AEE6D0()
{
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  return __swift_destroy_boxed_opaque_existential_0(v0 + 16);
}

uint64_t sub_264AEE6FC()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CAEndOfSessionConsumer.EOSReport()
{
  result = qword_27FF8BFD8;
  if (!qword_27FF8BFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264AEE7F0()
{
  result = sub_264B40084();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_264AEE8D0(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 4;
  }

  if (sub_264B40704() == a1 && v4 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 1;
    }

    else if (sub_264B406F4() == a1 && v7 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_264B41AA4();

      if (v8)
      {
        return 2;
      }

      else if (sub_264B40714() == a1 && v9 == a2)
      {

        return 3;
      }

      else
      {
        v10 = sub_264B41AA4();

        if (v10)
        {
          return 3;
        }

        else
        {
          if (qword_27FF883F8 != -1)
          {
            swift_once();
          }

          v11 = sub_264B40964();
          __swift_project_value_buffer(v11, qword_27FF8AE40);

          v12 = sub_264B40944();
          v13 = sub_264B414A4();

          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v16 = v15;
            *v14 = 136315138;
            *(v14 + 4) = sub_2649CC004(a1, a2, &v16);
            _os_log_impl(&dword_2649C6000, v12, v13, "Unexpected launch type:%s", v14, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v15);
            MEMORY[0x266749940](v15, -1, -1);
            MEMORY[0x266749940](v14, -1, -1);
          }

          return 0;
        }
      }
    }
  }
}

uint64_t dispatch thunk of LiveActivityDisplaying.showLiveActivity()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649CD850;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LiveActivityDisplaying.dismissLiveActivity()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return v9(a1, a2);
}

void *sub_264AEED60(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = sub_264B40774();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264B3FE54();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_264B3FE44();
  sub_264AEF374();
  sub_264B3FE34();

  if (!v2)
  {
    sub_264B40764();
    if (v12)
    {
    }

    else
    {
      v13 = sub_264B40754();
      if (v14 >> 60 == 15)
      {
        sub_264AEF320();
        swift_allocError();
        *v15 = 0;
        v15[1] = 0;
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2649DF384(v13, v14);
    }

    sub_264B40764();
    v17 = v16;
    v18 = sub_264B40754();
    v20 = v19;
    if (v17)
    {
      v21 = sub_264B41014();
    }

    else
    {
      v21 = 0;
    }

    if (v20 >> 60 == 15)
    {
      v22 = 0;
    }

    else
    {
      v22 = sub_264B40014();
      sub_2649DF384(v18, v20);
    }

    v23 = [objc_allocWithZone(MEMORY[0x277D67CC8]) initWithBundleIdentifier:v21 encodedRemoteAppIdentifier:v22];

    v28[0] = 0;
    v24 = [v23 encodeWithError_];
    v25 = v28[0];
    if (v24)
    {
      a2 = sub_264B40024();

      (*(v5 + 8))(v8, v4);
      goto LABEL_17;
    }

    a2 = v25;
    sub_264B3FF84();

    swift_willThrow();
LABEL_16:
    (*(v5 + 8))(v8, v4);
  }

LABEL_17:
  v26 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_264AEF040(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71B8);

  v10 = sub_264B40944();
  v11 = sub_264B414B4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_2649CC004(a1, a2, &v23);
    _os_log_impl(&dword_2649C6000, v10, v11, "Processing launch payload of type %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  if (sub_264B406F4() == a1 && v14 == a2)
  {
    goto LABEL_7;
  }

  v15 = sub_264B41AA4();

  if (v15)
  {
    goto LABEL_9;
  }

  if (sub_264B40714() == a1 && v17 == a2)
  {
LABEL_7:

LABEL_9:

    sub_2649DEF18(a3, a4);
    return a1;
  }

  v18 = sub_264B41AA4();

  if (v18)
  {
    goto LABEL_9;
  }

  if (sub_264B40704() == a1 && v19 == a2)
  {
  }

  else
  {
    v20 = sub_264B41AA4();

    if ((v20 & 1) == 0)
    {
      sub_264AEF320();
      swift_allocError();
      *v22 = a1;
      v22[1] = a2;
      swift_willThrow();

      return a1;
    }
  }

  v21 = [objc_opt_self() launchEventType];
  a1 = sub_264B41044();

  sub_264AEED60(a3, a4);
  if (v4)
  {
  }

  return a1;
}

unint64_t sub_264AEF320()
{
  result = qword_27FF8BFF8;
  if (!qword_27FF8BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BFF8);
  }

  return result;
}

unint64_t sub_264AEF374()
{
  result = qword_27FF8C000;
  if (!qword_27FF8C000)
  {
    sub_264B40774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C000);
  }

  return result;
}

uint64_t sub_264AEF3CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264AEF41C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_264AEF470(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_264AEF488(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t ControlMessageReliability.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264AEF558()
{
  result = qword_27FF8C008;
  if (!qword_27FF8C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C008);
  }

  return result;
}

uint64_t FaceTimeTelemetryVendor.__allocating_init(customTelemetryConsumer:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_2649D2AAC(a1, v2 + 16);
  return v2;
}

id sub_264AEF708()
{
  v1 = v0;
  v2 = sub_264B40964();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27FF8AE40);
  v8 = sub_264B40944();
  v9 = sub_264B41474();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2649C6000, v8, v9, "Vending a FaceTimeTelemetryProvider", v10, 2u);
    MEMORY[0x266749940](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  v12 = type metadata accessor for SignpostingPrimitives();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  (*(v3 + 16))(v6, v7, v2);
  sub_264B40904();
  v28[3] = v12;
  v28[4] = &off_28765A268;
  v28[0] = v15;
  v16 = type metadata accessor for SignpostConsumer();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v28, v12);
  v19 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v28[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_264AEFA9C(*v21, v17);
  __swift_destroy_boxed_opaque_existential_0(v28);
  if (v23)
  {
    v24 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v16 = 0;
    v24 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v23;
  *(inited + 56) = v16;
  *(inited + 64) = v24;
  sub_2649CB5C0(v1 + 16, inited + 72);
  v25 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  return TelemetryProvider.init(_:)(inited);
}

uint64_t FaceTimeTelemetryVendor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_264AEFA9C(uint64_t a1, uint64_t a2)
{
  v13[3] = type metadata accessor for SignpostingPrimitives();
  v13[4] = &off_28765A268;
  v13[0] = a1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  sub_2649CB5C0(v13, a2 + 24);
  if (sub_264A566AC())
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AE40);
    v5 = sub_264B40944();
    v6 = sub_264B41474();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Signposting is on", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FF8AE40);
    v9 = sub_264B40944();
    v10 = sub_264B41474();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2649C6000, v9, v10, "Signposting is off", v11, 2u);
      MEMORY[0x266749940](v11, -1, -1);
    }

    a2 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v13);
  return a2;
}

uint64_t sub_264AEFC80(uint64_t a1, uint64_t a2)
{
  v12[3] = type metadata accessor for CoreAnalyticsReportingPrimitives();
  v12[4] = &off_28765A6C0;
  v12[0] = a1;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  sub_2649CB5C0(v12, v11);
  sub_2649CB5C0(v11, a2 + 40);
  *(a2 + 16) = 0xD000000000000013;
  *(a2 + 24) = 0x8000000264B60C40;
  __swift_destroy_boxed_opaque_existential_0(v11);
  *(a2 + 32) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v4 = *(a2 + 24);
  *(a2 + 16) = 0xD000000000000014;
  *(a2 + 24) = 0x8000000264B60C80;
  swift_retain_n();

  swift_beginAccess();
  v5 = *(a2 + 32);
  *(a2 + 32) = &unk_287655768;

  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FF8AE40);
  v7 = sub_264B40944();
  v8 = sub_264B41474();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2649C6000, v7, v8, "OnboardingTelemetryConsumer created", v9, 2u);
    MEMORY[0x266749940](v9, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v12);
  return a2;
}

uint64_t sub_264AEFE74(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for PowerLogPrimitives();
  v9[4] = &off_28765F430;
  v9[0] = a1;
  *(a2 + 16) = &unk_287655790;
  *(a2 + 64) = 0;
  sub_2649CB5C0(v9, a2 + 24);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE40);
  v5 = sub_264B40944();
  v6 = sub_264B41474();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "PowerLogConsumer created", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v9);
  return a2;
}

void *sub_264AEFF9C(uint64_t a1, uint64_t a2, void *a3)
{
  v15[3] = type metadata accessor for CoreAnalyticsReportingPrimitives();
  v15[4] = &off_28765A6C0;
  v15[0] = a1;
  v14[3] = type metadata accessor for FoundationBackedUserDefaultsPrimitives();
  v14[4] = &protocol witness table for FoundationBackedUserDefaultsPrimitives;
  v14[0] = a2;
  a3[10] = 0;
  sub_2649CB5C0(v14, (a3 + 16));
  sub_2649CB5C0(v15, (a3 + 11));
  sub_2649CB5C0(v15, v13);
  sub_2649CB5C0(v13, (a3 + 5));
  a3[2] = 0xD000000000000013;
  a3[3] = 0x8000000264B60C40;
  __swift_destroy_boxed_opaque_existential_0(v13);
  a3[4] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v6 = a3[3];
  a3[2] = 0xD000000000000016;
  a3[3] = 0x8000000264B60C60;
  swift_retain_n();

  swift_beginAccess();
  v7 = a3[4];
  a3[4] = &unk_2876557B8;

  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v8 = sub_264B40964();
  __swift_project_value_buffer(v8, qword_27FF8AE40);
  v9 = sub_264B40944();
  v10 = sub_264B41484();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2649C6000, v9, v10, "Created a CAEndOfSessionConsumer", v11, 2u);
    MEMORY[0x266749940](v11, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return a3;
}

id sub_264AF01C8()
{
  v0 = sub_264B40964();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 104;
  v5 = type metadata accessor for SignpostingPrimitives();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27FF8AE40);
  (*(v1 + 16))(v4, v9, v0);
  sub_264B40904();
  v31[3] = v5;
  v31[4] = &off_28765A268;
  v31[0] = v8;
  v10 = type metadata accessor for SignpostConsumer();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v31, v5);
  v13 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 104);
  (*(v16 + 16))(v15);
  v17 = sub_264AEFA9C(*v15, v11);
  __swift_destroy_boxed_opaque_existential_0(v31);
  type metadata accessor for CoreAnalyticsReportingPrimitives();
  v18 = swift_allocObject();
  v19 = type metadata accessor for CAOnboardingConsumer();
  v20 = swift_allocObject();
  v21 = sub_264AEFC80(v18, v20);
  v22 = sub_264B40944();
  v23 = sub_264B41474();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2649C6000, v22, v23, "Vending an AppTelemetryProvider", v24, 2u);
    MEMORY[0x266749940](v24, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  if (v17)
  {
    v26 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v10 = 0;
    v26 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v17;
  *(inited + 56) = v10;
  *(inited + 64) = v26;
  *(inited + 96) = v19;
  *(inited + 104) = &protocol witness table for CATelemetryConsumer;
  *(inited + 72) = v21;
  v27 = inited;
  v28 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  return TelemetryProvider.init(_:)(v27);
}

id sub_264AF0510()
{
  v0 = sub_264B40964();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v33[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27FF8AE40);
  v6 = sub_264B40944();
  v7 = sub_264B41474();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2649C6000, v6, v7, "Vending an iOSTelemetryProvider", v8, 2u);
    MEMORY[0x266749940](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  v10 = type metadata accessor for SignpostingPrimitives();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  (*(v1 + 16))(v4, v5, v0);
  sub_264B40904();
  v33[3] = v10;
  v33[4] = &off_28765A268;
  v33[0] = v13;
  v14 = type metadata accessor for SignpostConsumer();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v33, v10);
  v17 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v33[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_264AEFA9C(*v19, v15);
  __swift_destroy_boxed_opaque_existential_0(v33);
  if (v21)
  {
    v22 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v14 = 0;
    v22 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v21;
  *(inited + 56) = v14;
  *(inited + 64) = v22;
  type metadata accessor for PowerLogPrimitives();
  v23 = swift_allocObject();
  v24 = sub_264B41014();
  v25 = sub_264B41014();
  v26 = PPSCreateTelemetryIdentifier();

  *(v23 + 16) = v26;
  v27 = type metadata accessor for PowerLogConsumer();
  v28 = swift_allocObject();
  v29 = sub_264AEFE74(v23, v28);
  *(inited + 96) = v27;
  *(inited + 104) = &off_28765DFB0;
  *(inited + 72) = v29;
  v30 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  return TelemetryProvider.init(_:)(inited);
}

id sub_264AF08B4()
{
  v0 = sub_264B40964();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SignpostingPrimitives();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27FF8AE40);
  (*(v1 + 16))(v4, v9, v0);
  sub_264B40904();
  v40[3] = v5;
  v40[4] = &off_28765A268;
  v40[0] = v8;
  v10 = type metadata accessor for SignpostConsumer();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v40, v5);
  v13 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15);
  v17 = sub_264AEFA9C(*v15, v11);
  __swift_destroy_boxed_opaque_existential_0(v40);
  type metadata accessor for PowerLogPrimitives();
  v18 = swift_allocObject();
  v19 = sub_264B41014();
  v20 = sub_264B41014();
  v21 = PPSCreateTelemetryIdentifier();

  *(v18 + 16) = v21;
  v22 = type metadata accessor for PowerLogConsumer();
  v23 = swift_allocObject();
  v24 = sub_264AEFE74(v18, v23);
  type metadata accessor for CoreAnalyticsReportingPrimitives();
  v25 = swift_allocObject();
  v26 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for FoundationBackedUserDefaultsPrimitives();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v28 = type metadata accessor for CAEndOfSessionConsumer();
  v29 = swift_allocObject();
  v30 = sub_264AEFF9C(v25, v27, v29);
  v31 = sub_264B40944();
  v32 = sub_264B41474();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2649C6000, v31, v32, "Vending an AppSessionTelemetryProvider", v33, 2u);
    MEMORY[0x266749940](v33, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46DF0;
  if (v17)
  {
    v35 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v10 = 0;
    v35 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v17;
  *(inited + 56) = v10;
  *(inited + 64) = v35;
  *(inited + 96) = v22;
  *(inited + 104) = &off_28765DFB0;
  *(inited + 72) = v24;
  *(inited + 136) = v28;
  *(inited + 144) = &protocol witness table for CATelemetryConsumer;
  *(inited + 112) = v30;
  v36 = inited;
  v37 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  return TelemetryProvider.init(_:)(v36);
}

id sub_264AF0D04(const char *a1)
{
  v2 = sub_264B40964();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27FF8AE40);
  v8 = sub_264B40944();
  v9 = sub_264B41474();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2649C6000, v8, v9, a1, v10, 2u);
    MEMORY[0x266749940](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B44150;
  v12 = type metadata accessor for SignpostingPrimitives();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  (*(v3 + 16))(v6, v7, v2);
  sub_264B40904();
  v27[3] = v12;
  v27[4] = &off_28765A268;
  v27[0] = v15;
  v16 = type metadata accessor for SignpostConsumer();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v27, v12);
  v19 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_264AEFA9C(*v21, v17);
  __swift_destroy_boxed_opaque_existential_0(v27);
  if (v23)
  {
    v24 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v16 = 0;
    v24 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v23;
  *(inited + 56) = v16;
  *(inited + 64) = v24;
  v25 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  return TelemetryProvider.init(_:)(inited);
}

uint64_t static InteractionState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_264AF1328(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t storeEnumTagSinglePayload for InteractionState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_264AF13BC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264AF13D8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_264AF1408()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_264AF1478@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_264AF148C(uint64_t a1)
{
  result = sub_264AF14B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264AF14B4()
{
  result = qword_27FF8C018;
  if (!qword_27FF8C018)
  {
    type metadata accessor for RapportBackedMediaTransportDevice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C018);
  }

  return result;
}

uint64_t sub_264AF151C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C020, &unk_264B53B30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264AF15EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C020, &unk_264B53B30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RipplesView()
{
  result = qword_27FF8C028;
  if (!qword_27FF8C028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AF16E8()
{
  sub_264AF17CC(319, &qword_27FF8C038, type metadata accessor for IdentifiablePoint, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_264AF17CC(319, &qword_27FF8C040, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264AF17CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_264AF184C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264B40CA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A220, &qword_264B4A5E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for RipplesView();
  sub_2649D046C(v1 + *(v12 + 20), v11, &qword_27FF8A220, &qword_264B4A5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_264B40C44();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264B414A4();
    v16 = sub_264B40D84();
    sub_264B408C4();

    sub_264B40C94();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

__n128 sub_264AF1A54@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RipplesView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_264A62AC8(v1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_264AF2114(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_264B40E64();
  sub_264B40C64();
  v8 = sub_264B40D94();
  *a1 = sub_264AF2178;
  *(a1 + 8) = v7;
  v9 = v12[5];
  *(a1 + 80) = v12[4];
  *(a1 + 96) = v9;
  *(a1 + 112) = v12[6];
  v10 = v12[1];
  *(a1 + 16) = v12[0];
  *(a1 + 32) = v10;
  result = v12[3];
  *(a1 + 48) = v12[2];
  *(a1 + 64) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_264AF1BC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15[2] = a3;
  v5 = type metadata accessor for RipplesView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = sub_264B40C24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v15[3] = *a2;
  v15[1] = swift_getKeyPath();
  (*(v9 + 16))(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_264A62AC8(a2, v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v11, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_264AF2114(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C048, &qword_264B53BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C050, &qword_264B53BD0);
  sub_2649CB4C8(&qword_27FF8C058, &qword_27FF8C048, &qword_264B53BC8);
  sub_264A10B60();
  sub_264AF2484();
  return sub_264B40E54();
}