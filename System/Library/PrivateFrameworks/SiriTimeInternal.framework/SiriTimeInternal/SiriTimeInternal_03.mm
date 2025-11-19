uint64_t sub_26931B01C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26931B07C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26931B174;

  return v7(a1);
}

uint64_t sub_26931B174()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26931B26C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_26931BCC4(a1, a2, a3, a4, sub_26931B5F8, sub_2692F8BB4, sub_26931BC54, sub_2692F8BB4);
  if (qword_280307C78 != -1)
  {
    swift_once();
  }

  if (byte_28030CD90 != 1)
  {
    return sub_26931BCC4(a1, a2, a3, a4, sub_26931B61C, sub_2692F8BB8, sub_26931BD6C, sub_2692F8BB8);
  }

  if (qword_280307C70 != -1)
  {
    swift_once();
  }

  v8 = sub_26932D6B0();
  __swift_project_value_buffer(v8, qword_2803084F0);
  v9 = sub_26932D690();
  v10 = sub_26932D9A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2692D8000, v9, v10, "SiriTime initiating AutoBugCapture report...", v11, 2u);
    MEMORY[0x26D639280](v11, -1, -1);
  }

  v12 = ABCReport.type.getter();
  v14 = v13;
  v15 = ABCReport.subType.getter();
  v17 = v16;
  v18 = ABCReport.context.getter();
  v20 = v19;
  sub_26931BCC4(a1, a2, a3, a4, sub_26931B61C, sub_2692F8BB8, sub_26931BD6C, sub_2692F8BB8);
  v21 = sub_26932D370();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_26932D360();
  v24 = swift_allocObject();
  v24[2] = v12;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = v17;
  v24[6] = v18;
  v24[7] = v20;

  sub_26932D350();
}

uint64_t sub_26931B5F8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_26931B60C(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_26931B61C(a1, a2);
  }

  return a1;
}

uint64_t sub_26931B61C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_26931B634()
{
  result = qword_280308808;
  if (!qword_280308808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308808);
  }

  return result;
}

void sub_26931B6B0()
{
  sub_26932D6B0();
  if (v0 <= 0x3F)
  {
    sub_26931B76C();
    if (v1 <= 0x3F)
    {
      sub_26931B7BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26931B76C()
{
  if (!qword_2814B2470)
  {
    v0 = sub_26932DA40();
    if (!v1)
    {
      atomic_store(v0, &qword_2814B2470);
    }
  }
}

unint64_t sub_26931B7BC()
{
  result = qword_2814B2318;
  if (!qword_2814B2318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2318);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTimeMeasurement.LogDescription(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriTimeMeasurement.LogDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26931B958(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_269300268;

  return sub_26931A668(a1, v4, v5, v6);
}

uint64_t sub_26931BA0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308810, &qword_2693311B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26931BA74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308810, &qword_2693311B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26931BAE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_269300268;

  return sub_26931B07C(a1, v5);
}

uint64_t sub_26931BB9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2692DDD10;

  return sub_26931B07C(a1, v5);
}

void sub_26931BC54(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4 == 3)
  {

    v5 = a3;
  }

  else if (a4 == 2 || a4 == 1)
  {
  }
}

uint64_t sub_26931BCC4(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void), uint64_t (*a8)(void))
{
  v8 = a4 >> 4;
  if (v8 > 4)
  {
    if ((a4 >> 4) <= 6u)
    {
      if (v8 == 5 || v8 == 6)
      {
        return a6();
      }
    }

    else
    {
      switch(v8)
      {
        case 7u:
          return a7(result, a2, a3, a4 & 0xF);
        case 8u:
          return a8();
        case 9u:
          return a6();
        default:
          return result;
      }
    }
  }

  else if ((a4 >> 4) <= 1u)
  {
    if (a4 >> 4)
    {
      return a6();
    }

    return a5();
  }

  else if (v8 == 2 || v8 == 3 || v8 == 4)
  {
    return a6();
  }

  return result;
}

void sub_26931BD6C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4 == 3)
  {
  }

  else if (a4 == 2 || a4 == 1)
  {
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26931BE1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2692DDD10;

  return sub_26931AE3C(a1, v4, v5, v6);
}

uint64_t SiriTimePluginModel.snippetHidden(for:idiom:)()
{
  v1 = sub_26932D340();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SiriTimePluginModel(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26931EBDC(v0, v9, type metadata accessor for SiriTimePluginModel);
  (*(v2 + 104))(v5, *MEMORY[0x277D61BE8], v1);
  v10 = sub_26932D330();
  (*(v2 + 8))(v5, v1);
  sub_26931CA7C(v9, type metadata accessor for SiriTimePluginModel);
  return v10 & 1;
}

uint64_t sub_26931C0D0()
{
  v1 = 0x6C655372656D6974;
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
    return 0x6C754D72656D6974;
  }
}

uint64_t sub_26931C140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269324B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26931C174(uint64_t a1)
{
  v2 = sub_26931C9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26931C1B0(uint64_t a1)
{
  v2 = sub_26931C9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26931C1EC(uint64_t a1)
{
  v2 = sub_26931CA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26931C228(uint64_t a1)
{
  v2 = sub_26931CA28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26931C264(uint64_t a1)
{
  v2 = sub_26931CBE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26931C2A0(uint64_t a1)
{
  v2 = sub_26931CBE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26931C2DC(uint64_t a1)
{
  v2 = sub_26931CB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26931C318(uint64_t a1)
{
  v2 = sub_26931CB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriTimePluginModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308818, &qword_269331200);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v38 - v4;
  v44 = type metadata accessor for TimerConfirmationModel(0);
  v5 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308820, &qword_269331208);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v38 - v9;
  v40 = type metadata accessor for TimerSelectorModel(0);
  v10 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308828, &qword_269331210);
  v39 = *(v13 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = type metadata accessor for SiriTimePluginModel(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308830, &qword_269331218);
  v50 = *(v21 - 8);
  v51 = v21;
  v22 = *(v50 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931C9D4();
  sub_26932DF90();
  sub_26931EBDC(v49, v20, type metadata accessor for SiriTimePluginModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26931CADC(v20, v12, type metadata accessor for TimerSelectorModel);
      v54 = 1;
      sub_26931CB44();
      v27 = v41;
      v28 = v51;
      sub_26932DD40();
      sub_26931CB98(&qword_280308858, type metadata accessor for TimerSelectorModel);
      v29 = v43;
      sub_26932DDA0();
      (*(v42 + 8))(v27, v29);
      v30 = type metadata accessor for TimerSelectorModel;
      v31 = v12;
    }

    else
    {
      v35 = v45;
      sub_26931CADC(v20, v45, type metadata accessor for TimerConfirmationModel);
      v55 = 2;
      sub_26931CA28();
      v36 = v46;
      v28 = v51;
      sub_26932DD40();
      sub_26931CB98(&qword_280308848, type metadata accessor for TimerConfirmationModel);
      v37 = v48;
      sub_26932DDA0();
      (*(v47 + 8))(v36, v37);
      v30 = type metadata accessor for TimerConfirmationModel;
      v31 = v35;
    }

    sub_26931CA7C(v31, v30);
    return (*(v50 + 8))(v24, v28);
  }

  else
  {
    v32 = *v20;
    v53 = 0;
    sub_26931CBE0();
    v33 = v51;
    sub_26932DD40();
    v52 = v32;
    sub_26931CC34();
    sub_26932DDA0();
    (*(v39 + 8))(v16, v13);
    (*(v50 + 8))(v24, v33);
  }
}

unint64_t sub_26931C9D4()
{
  result = qword_280308838;
  if (!qword_280308838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308838);
  }

  return result;
}

unint64_t sub_26931CA28()
{
  result = qword_280308840;
  if (!qword_280308840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308840);
  }

  return result;
}

uint64_t sub_26931CA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26931CADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26931CB44()
{
  result = qword_280308850;
  if (!qword_280308850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308850);
  }

  return result;
}

uint64_t sub_26931CB98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26931CBE0()
{
  result = qword_280308860;
  if (!qword_280308860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308860);
  }

  return result;
}

unint64_t sub_26931CC34()
{
  result = qword_280308868;
  if (!qword_280308868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308868);
  }

  return result;
}

uint64_t SiriTimePluginModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308870, &qword_269331220);
  v67 = *(v65 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v72 = &v58 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308878, &qword_269331228);
  v66 = *(v64 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  v71 = &v58 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308880, &qword_269331230);
  v63 = *(v69 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v58 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308888, &unk_269331238);
  v74 = *(v70 - 8);
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](v70);
  v11 = &v58 - v10;
  v12 = type metadata accessor for SiriTimePluginModel(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v58 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_26931C9D4();
  v27 = v75;
  sub_26932DF80();
  if (!v27)
  {
    v58 = v22;
    v59 = v19;
    v28 = v68;
    v29 = v69;
    v60 = v16;
    v61 = v24;
    v30 = v71;
    v31 = v72;
    v62 = 0;
    v75 = v12;
    v32 = v73;
    v33 = v70;
    v34 = sub_26932DD10();
    v35 = (2 * *(v34 + 16)) | 1;
    v77 = v34;
    v78 = v34 + 32;
    v79 = 0;
    v80 = v35;
    v36 = sub_2692EEAB4();
    v37 = v33;
    if (v36 == 3 || v79 != v80 >> 1)
    {
      v44 = sub_26932DBC0();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308318, &unk_26932F3C0) + 48);
      *v46 = v75;
      v39 = v37;
      sub_26932DC90();
      sub_26932DBB0();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
      swift_willThrow();
    }

    else
    {
      if (!v36)
      {
        LOBYTE(v81) = 0;
        sub_26931CBE0();
        v49 = v62;
        sub_26932DC80();
        if (!v49)
        {
          sub_26931D52C();
          sub_26932DD00();
          (*(v63 + 8))(v28, v29);
          (*(v74 + 8))(v11, v33);
          swift_unknownObjectRelease();
          v55 = v58;
          *v58 = v81;
          swift_storeEnumTagMultiPayload();
          v56 = v61;
          sub_26931CADC(v55, v61, type metadata accessor for SiriTimePluginModel);
          v41 = v32;
LABEL_18:
          sub_26931CADC(v56, v41, type metadata accessor for SiriTimePluginModel);
          return __swift_destroy_boxed_opaque_existential_1Tm(v76);
        }

        (*(v74 + 8))(v11, v33);
        goto LABEL_10;
      }

      if (v36 == 1)
      {
        LOBYTE(v81) = 1;
        sub_26931CB44();
        v38 = v30;
        v39 = v37;
        v40 = v62;
        sub_26932DC80();
        if (!v40)
        {
          v41 = v32;
          type metadata accessor for TimerSelectorModel(0);
          sub_26931CB98(&qword_280308898, type metadata accessor for TimerSelectorModel);
          v42 = v59;
          v43 = v64;
          sub_26932DD00();
          (*(v66 + 8))(v38, v43);
          (*(v74 + 8))(v11, v37);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v42;
LABEL_17:
          v56 = v61;
          sub_26931CADC(v57, v61, type metadata accessor for SiriTimePluginModel);
          goto LABEL_18;
        }
      }

      else
      {
        LOBYTE(v81) = 2;
        sub_26931CA28();
        v50 = v31;
        v39 = v33;
        v51 = v62;
        sub_26932DC80();
        if (!v51)
        {
          v41 = v32;
          type metadata accessor for TimerConfirmationModel(0);
          sub_26931CB98(&qword_280308890, type metadata accessor for TimerConfirmationModel);
          v52 = v60;
          v53 = v65;
          sub_26932DD00();
          v54 = v74;
          (*(v67 + 8))(v50, v53);
          (*(v54 + 8))(v11, v39);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v52;
          goto LABEL_17;
        }
      }
    }

    (*(v74 + 8))(v11, v39);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v76);
}

unint64_t sub_26931D52C()
{
  result = qword_2803088A0;
  if (!qword_2803088A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803088A0);
  }

  return result;
}

uint64_t TimerSnippetModel.timers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t TimerSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088A8, &qword_269331248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931D7EC();
  sub_26932DF80();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088B8, &qword_269331250);
    sub_26931DA0C(&qword_2803088C0, &qword_2803088C8);
    sub_26932DD00();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_26931D7EC()
{
  result = qword_2803088B0;
  if (!qword_2803088B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803088B0);
  }

  return result;
}

uint64_t TimerSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088D0, &qword_269331258);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931D7EC();

  sub_26932DF90();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088B8, &qword_269331250);
  sub_26931DA0C(&qword_2803088D8, &qword_2803088E0);
  sub_26932DDA0();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26931DA0C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803088B8, &qword_269331250);
    sub_26931CB98(a2, type metadata accessor for SiriTimerSnippetModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26931DABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7372656D6974 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26932DF00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26931DB40(uint64_t a1)
{
  v2 = sub_26931D7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26931DB7C(uint64_t a1)
{
  v2 = sub_26931D7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriTimerSnippetModel.timerIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriTimerSnippetModel.timerIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriTimerSnippetModel.directInvocationUri.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SiriTimerSnippetModel.directInvocationUri.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SiriTimerSnippetModel.directInvocationPayload.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t SiriTimerSnippetModel.punchoutURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SiriTimerSnippetModel(0) + 28);

  return sub_2692EF644(a1, v3);
}

uint64_t SiriTimerSnippetModel.label.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriTimerSnippetModel(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SiriTimerSnippetModel.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriTimerSnippetModel(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriTimerSnippetModel.duration.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriTimerSnippetModel(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SiriTimerSnippetModel.duration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SiriTimerSnippetModel(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SiriTimerSnippetModel.remainingTime.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriTimerSnippetModel(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SiriTimerSnippetModel.remainingTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SiriTimerSnippetModel(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SiriTimerSnippetModel.state.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriTimerSnippetModel(0) + 44));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SiriTimerSnippetModel.state.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SiriTimerSnippetModel(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SiriTimerSnippetModel.init(timerIdentifier:directInvocation:label:duration:remainingTime:state:punchoutURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v53 = a8;
  v52 = a7;
  v50 = a5;
  v51 = a6;
  v48 = a13;
  v49 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308470, &unk_26932FA20);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v42[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v23 = &v42[-v22];
  v24 = type metadata accessor for SiriTimerSnippetModel(0);
  v25 = v24[7];
  v26 = sub_26932BED0();
  v27 = *(*(v26 - 8) + 56);
  v47 = v25;
  v27(&a9[v25], 1, 1, v26);
  *a9 = a1;
  *(a9 + 1) = a2;
  v46 = a3;
  sub_2692E3B90(a3, v23, &qword_280308470, &unk_26932FA20);
  v28 = sub_26932C6C0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v23, 1, v28) == 1)
  {
    sub_2692EB48C(v23, &qword_280308470, &unk_26932FA20);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = sub_26932C6A0();
    v32 = v33;
    (*(v29 + 8))(v23, v28);
  }

  v45 = a12;
  v44 = a11;
  v43 = a10;
  *(a9 + 2) = v31;
  *(a9 + 3) = v32;
  v34 = v46;
  sub_2692E3B90(v46, v21, &qword_280308470, &unk_26932FA20);
  if (v30(v21, 1, v28) == 1)
  {
    sub_2692EB48C(v34, &qword_280308470, &unk_26932FA20);
    sub_2692EB48C(v21, &qword_280308470, &unk_26932FA20);
    v35 = 0;
  }

  else
  {
    v35 = sub_26932C6B0();
    sub_2692EB48C(v34, &qword_280308470, &unk_26932FA20);
    (*(v29 + 8))(v21, v28);
  }

  v36 = &a9[v24[8]];
  v37 = &a9[v24[9]];
  v38 = &a9[v24[10]];
  v39 = &a9[v24[11]];
  *(a9 + 4) = v35;
  result = sub_2692EF644(v48, &a9[v47]);
  v41 = v50;
  *v36 = v49;
  *(v36 + 1) = v41;
  *v37 = v51;
  v37[8] = v52 & 1;
  *v38 = v53;
  v38[8] = v43 & 1;
  *v39 = v44;
  v39[8] = v45 & 1;
  return result;
}

uint64_t SiriTimerSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088E8, &qword_269331260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088F0, &qword_269331268);
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088F8, &qword_269331270);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v16 = type metadata accessor for SiriTimerSnippetModel(0);
  v17 = *(*(v16 - 1) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v20 + 4) = 0;
  v21 = *(v18 + 28);
  v22 = sub_26932BED0();
  v23 = *(*(v22 - 8) + 56);
  v24 = v20;
  v65 = v21;
  v23(&v20[v21], 1, 1, v22);
  v25 = a1[4];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931EB34();
  v27 = v64;
  sub_26932DF80();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    sub_2692EB48C(v24 + v65, &qword_2803086A0, &unk_26932FB40);
  }

  else
  {
    v64 = v22;
    v28 = v63;
    v72 = 0;
    v29 = sub_26932DCA0();
    if (v30)
    {
      v32 = v29;
    }

    else
    {
      v32 = 0;
    }

    v33 = 0xE000000000000000;
    if (v30)
    {
      v33 = v30;
    }

    *v24 = v32;
    v24[1] = v33;
    v71 = 1;
    v34 = sub_26932DCA0();
    v36 = v35;
    v24[2] = v34;
    v24[3] = v35;
    v70 = 3;
    v37 = sub_26932DCA0();
    v38 = (v24 + v16[8]);
    *v38 = v37;
    v38[1] = v39;
    v69 = 4;
    v40 = sub_26932DCC0();
    v41 = v24 + v16[9];
    *v41 = v40;
    v41[8] = v42 & 1;
    v68 = 5;
    v43 = sub_26932DCC0();
    v44 = v24 + v16[10];
    *v44 = v43;
    v44[8] = v45 & 1;
    v67 = 6;
    v46 = sub_26932DCD0();
    v56 = v36;
    v47 = v24 + v16[11];
    *v47 = v46;
    v47[8] = v48 & 1;
    v66 = 7;
    sub_26931CB98(&qword_280308398, MEMORY[0x277CC9260]);
    v49 = v62;
    sub_26932DCE0();
    v64 = v15;
    sub_2692EF644(v49, v24 + v65);
    v50 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26931EB88();
    v51 = v60;
    sub_26932DF80();
    v53 = v58;
    v52 = v59;
    (*(v58 + 56))(v51, 0, 1, v59);
    v54 = v57;
    (*(v53 + 32))(v57, v51, v52);
    v55 = sub_26931EC44(v54);
    (*(v53 + 8))(v54, v52);
    (*(v28 + 8))(v64, v12);
    v24[4] = v55;
    sub_26931EBDC(v24, v61, type metadata accessor for SiriTimerSnippetModel);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    return sub_26931CA7C(v24, type metadata accessor for SiriTimerSnippetModel);
  }
}

unint64_t sub_26931EB34()
{
  result = qword_280308900;
  if (!qword_280308900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308900);
  }

  return result;
}

unint64_t sub_26931EB88()
{
  result = qword_280308908;
  if (!qword_280308908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308908);
  }

  return result;
}

uint64_t sub_26931EBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26931EC44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088E8, &qword_269331260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v105 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088F0, &qword_269331268);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v107 = &v105 - v9;
  v10 = sub_2692ED51C(MEMORY[0x277D84F90]);
  v119 = v10;
  v11 = sub_26932DD10();
  v12 = v11;
  v112 = *(v11 + 16);
  if (!v112)
  {

    return v10;
  }

  v110 = v5;
  v13 = 0;
  v108 = (v7 + 56);
  v106 = (v7 + 32);
  v105 = (v7 + 8);
  v14 = (v11 + 56);
  v113 = a1;
  v109 = v6;
  v111 = v11;
  while (v13 < *(v12 + 16))
  {
    v21 = *(v14 - 3);
    v20 = *(v14 - 2);
    v22 = *(v14 - 1);
    v23 = *v14;
    *&v116 = v21;
    *(&v116 + 1) = v20;
    v117 = v22;
    LOBYTE(v118) = v23;

    v24 = sub_26932DCD0();
    if ((v25 & 1) == 0)
    {
      v118 = MEMORY[0x277D83B88];
      *&v116 = v24;
      sub_2692ED64C(&v116, &v115);
      v42 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v42;
      v44 = sub_269324148(v21, v20);
      v46 = v42[2];
      v47 = (v45 & 1) == 0;
      v18 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v18)
      {
        goto LABEL_73;
      }

      v49 = v45;
      if (v42[3] >= v48)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_36;
        }

        v90 = v44;
        sub_269324810();
        v44 = v90;
        if (v49)
        {
LABEL_37:
          v81 = v44;

          v82 = v114;
          v83 = (v114[7] + 32 * v81);
          goto LABEL_47;
        }
      }

      else
      {
        sub_2693244EC(v48, isUniquelyReferenced_nonNull_native);
        v44 = sub_269324148(v21, v20);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_82;
        }

LABEL_36:
        if (v49)
        {
          goto LABEL_37;
        }
      }

      v91 = v114;
      v114[(v44 >> 6) + 8] |= 1 << v44;
      v92 = (v91[6] + 16 * v44);
      *v92 = v21;
      v92[1] = v20;
      sub_2692ED64C(&v115, (v91[7] + 32 * v44));
      v93 = v91[2];
      v18 = __OFADD__(v93, 1);
      v94 = v93 + 1;
      if (v18)
      {
        goto LABEL_78;
      }

      goto LABEL_63;
    }

    *&v116 = v21;
    *(&v116 + 1) = v20;
    v117 = v22;
    LOBYTE(v118) = v23;
    v26 = sub_26932DCC0();
    if ((v27 & 1) == 0)
    {
      v118 = MEMORY[0x277D839F8];
      *&v116 = v26;
      sub_2692ED64C(&v116, &v115);
      v63 = v119;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v63;
      v66 = sub_269324148(v21, v20);
      v67 = v63[2];
      v68 = (v65 & 1) == 0;
      v69 = v67 + v68;
      if (__OFADD__(v67, v68))
      {
        goto LABEL_76;
      }

      v70 = v65;
      if (v63[3] < v69)
      {
        sub_2693244EC(v69, v64);
        v71 = sub_269324148(v21, v20);
        if ((v70 & 1) != (v72 & 1))
        {
          goto LABEL_82;
        }

        v66 = v71;
        if ((v70 & 1) == 0)
        {
          goto LABEL_62;
        }

LABEL_46:

        v82 = v114;
        v83 = (v114[7] + 32 * v66);
LABEL_47:
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        sub_2692ED64C(&v115, v83);
        v119 = v82;
LABEL_64:
        v12 = v111;
        goto LABEL_5;
      }

      if (v64)
      {
        if (v65)
        {
          goto LABEL_46;
        }
      }

      else
      {
        sub_269324810();
        if (v70)
        {
          goto LABEL_46;
        }
      }

LABEL_62:
      v91 = v114;
      v114[(v66 >> 6) + 8] |= 1 << v66;
      v99 = (v91[6] + 16 * v66);
      *v99 = v21;
      v99[1] = v20;
      sub_2692ED64C(&v115, (v91[7] + 32 * v66));
      v100 = v91[2];
      v18 = __OFADD__(v100, 1);
      v94 = v100 + 1;
      if (v18)
      {
        goto LABEL_81;
      }

LABEL_63:
      v91[2] = v94;
      v119 = v91;
      goto LABEL_64;
    }

    *&v116 = v21;
    *(&v116 + 1) = v20;
    v117 = v22;
    LOBYTE(v118) = v23;
    v28 = sub_26932DCA0();
    if (!v29)
    {
      *&v116 = v21;
      *(&v116 + 1) = v20;
      v117 = v22;
      LOBYTE(v118) = v23;
      v30 = sub_26932DCB0();
      if (v30 == 2)
      {
        *&v116 = v21;
        *(&v116 + 1) = v20;
        v117 = v22;
        LOBYTE(v118) = v23;
        sub_26931EB88();
        v40 = v110;
        v41 = v109;
        sub_26932DC80();
        (*v108)(v40, 0, 1, v41);
        v51 = v107;
        (*v106)(v107, v40, v41);
        v52 = sub_26931EC44(v51);
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803089C0, "\n_");
        *&v116 = v52;
        sub_2692ED64C(&v116, &v115);
        v53 = v119;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v114 = v53;
        v55 = sub_269324148(v21, v20);
        v57 = v53[2];
        v58 = (v56 & 1) == 0;
        v18 = __OFADD__(v57, v58);
        v59 = v57 + v58;
        if (v18)
        {
          goto LABEL_75;
        }

        v60 = v56;
        v61 = v41;
        if (v53[3] < v59)
        {
          sub_2693244EC(v59, v54);
          v55 = sub_269324148(v21, v20);
          v12 = v111;
          if ((v60 & 1) != (v62 & 1))
          {
            goto LABEL_82;
          }

          goto LABEL_42;
        }

        v12 = v111;
        if (v54)
        {
LABEL_42:
          if (v60)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v96 = v55;
          sub_269324810();
          v55 = v96;
          if (v60)
          {
LABEL_43:
            v84 = v55;

            v85 = v114;
            v86 = (v114[7] + 32 * v84);
            __swift_destroy_boxed_opaque_existential_1Tm(v86);
            sub_2692ED64C(&v115, v86);
            (*v105)(v107, v61);
            v119 = v85;
            goto LABEL_5;
          }
        }

        v15 = v114;
        v114[(v55 >> 6) + 8] |= 1 << v55;
        v97 = (v15[6] + 16 * v55);
        *v97 = v21;
        v97[1] = v20;
        sub_2692ED64C(&v115, (v15[7] + 32 * v55));
        (*v105)(v107, v61);
        v98 = v15[2];
        v18 = __OFADD__(v98, 1);
        v19 = v98 + 1;
        if (v18)
        {
          goto LABEL_80;
        }

        goto LABEL_4;
      }

      v118 = MEMORY[0x277D839B0];
      LOBYTE(v116) = v30 & 1;
      sub_2692ED64C(&v116, &v115);
      v73 = v119;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v73;
      v33 = sub_269324148(v21, v20);
      v76 = v73[2];
      v77 = (v75 & 1) == 0;
      v18 = __OFADD__(v76, v77);
      v78 = v76 + v77;
      if (v18)
      {
        goto LABEL_77;
      }

      v79 = v75;
      if (v73[3] < v78)
      {
        sub_2693244EC(v78, v74);
        v33 = sub_269324148(v21, v20);
        if ((v79 & 1) != (v80 & 1))
        {
          goto LABEL_82;
        }

        goto LABEL_49;
      }

      if (v74)
      {
LABEL_49:
        if (v79)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v101 = v33;
        sub_269324810();
        v33 = v101;
        if (v79)
        {
LABEL_50:
          v87 = v33;

          v88 = v114;
          v89 = (v114[7] + 32 * v87);
          __swift_destroy_boxed_opaque_existential_1Tm(v89);
          sub_2692ED64C(&v115, v89);
          v119 = v88;
          goto LABEL_5;
        }
      }

      v15 = v114;
      v114[(v33 >> 6) + 8] |= 1 << v33;
      v102 = (v15[6] + 16 * v33);
      *v102 = v21;
      v102[1] = v20;
      sub_2692ED64C(&v115, (v15[7] + 32 * v33));
      v103 = v15[2];
      v18 = __OFADD__(v103, 1);
      v19 = v103 + 1;
      if (v18)
      {
        __break(1u);
LABEL_69:

        return v119;
      }

      goto LABEL_4;
    }

    v118 = MEMORY[0x277D837D0];
    *&v116 = v28;
    *(&v116 + 1) = v29;
    sub_2692ED64C(&v116, &v115);
    v31 = v119;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v31;
    v33 = sub_269324148(v21, v20);
    v35 = v31[2];
    v36 = (v34 & 1) == 0;
    v18 = __OFADD__(v35, v36);
    v37 = v35 + v36;
    if (v18)
    {
      goto LABEL_74;
    }

    v38 = v34;
    if (v31[3] >= v37)
    {
      if ((v32 & 1) == 0)
      {
        v95 = v33;
        sub_269324810();
        v33 = v95;
        if (v38)
        {
          goto LABEL_50;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_2693244EC(v37, v32);
      v33 = sub_269324148(v21, v20);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_82;
      }
    }

    if (v38)
    {
      goto LABEL_50;
    }

LABEL_3:
    v15 = v114;
    v114[(v33 >> 6) + 8] |= 1 << v33;
    v16 = (v15[6] + 16 * v33);
    *v16 = v21;
    v16[1] = v20;
    sub_2692ED64C(&v115, (v15[7] + 32 * v33));
    v17 = v15[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_79;
    }

LABEL_4:
    v15[2] = v19;
    v119 = v15;
LABEL_5:
    ++v13;
    v14 += 32;
    if (v112 == v13)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
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
  __break(1u);
LABEL_82:
  result = sub_26932DF40();
  __break(1u);
  return result;
}

uint64_t SiriTimerSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308910, &qword_269331278);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308918, &qword_269331280);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931EB34();
  sub_26932DF90();
  v13 = *v1;
  v14 = v1[1];
  LOBYTE(v35) = 0;
  v15 = v34;
  sub_26932DD60();
  if (v15)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v31 = v6;
  v34 = v8;
  v35 = *(v1 + 1);
  v36 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308920, &qword_269331288);
  sub_26931FDD0(&qword_280308928, &qword_280308920, &qword_269331288);
  sub_26932DDA0();
  v30 = type metadata accessor for SiriTimerSnippetModel(0);
  v35 = *(v1 + v30[8]);
  v36 = 3;
  sub_26932DDA0();
  v17 = v34;
  v18 = (v1 + v30[9]);
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  *&v35 = v19;
  BYTE8(v35) = v18;
  v36 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308930, &unk_269331290);
  sub_26931FDD0(&qword_280308938, &qword_280308930, &unk_269331290);
  sub_26932DDA0();
  v20 = (v1 + v30[10]);
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  *&v35 = v21;
  BYTE8(v35) = v20;
  v36 = 5;
  sub_26932DDA0();
  v22 = (v1 + v30[11]);
  v23 = *v22;
  LOBYTE(v22) = *(v22 + 8);
  *&v35 = v23;
  BYTE8(v35) = v22;
  v36 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308550, &qword_269330498);
  sub_26931FDD0(&qword_280308940, &qword_280308550, &qword_269330498);
  sub_26932DDA0();
  v24 = v30[7];
  LOBYTE(v35) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  sub_26931FE38();
  sub_26932DDA0();
  v25 = v1[4];
  if (!v25)
  {
    return (*(v17 + 8))(v11, v7);
  }

  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931EB88();
  v27 = v11;
  v28 = v31;
  sub_26932DF90();
  sub_26931FEEC(v28, v25);
  (*(v32 + 8))(v28, v33);
  return (*(v17 + 8))(v27, v7);
}

uint64_t sub_26931FDD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26931FE38()
{
  result = qword_280308948;
  if (!qword_280308948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803086A0, &unk_26932FB40);
    sub_26931CB98(&qword_280308370, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308948);
  }

  return result;
}

uint64_t sub_26931FEEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308910, &qword_269331278);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v29 - v8);
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v32 = (v7 + 8);

  v15 = 0;
  v33 = v9;
  v34 = v14;
  v46 = v5;
  while (v13)
  {
    v16 = v15;
LABEL_9:
    v17 = (*(a2 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v13)))));
    v5 = *v17;
    v18 = v17[1];
    v9 = &qword_269331FB0;
    if (*(a2 + 16))
    {

      v19 = v18;
      v20 = sub_269324148(v5, v18);
      if (v21)
      {
        sub_2692DDEB4(*(a2 + 56) + 32 * v20, &v44);
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
      }
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v19 = v18;
    }

    v13 &= v13 - 1;
    sub_2692E3B90(&v44, &v40, &qword_2803086F8, &qword_269331FB0);
    if (v43)
    {
      if (swift_dynamicCast())
      {
        v22 = v3;
        v23 = a2;
        v40 = v5;
        v41 = v19;
        v42 = 0;
        LOBYTE(v43) = 1;
        sub_26932DD60();
        if (v22)
        {
          sub_2692EB48C(&v44, &qword_2803086F8, &qword_269331FB0);
        }

        v9 = &qword_2803086F8;
        sub_2692EB48C(&v44, &qword_2803086F8, &qword_269331FB0);

        goto LABEL_18;
      }
    }

    else
    {
      sub_2692EB48C(&v40, &qword_2803086F8, &qword_269331FB0);
    }

    sub_2692E3B90(&v44, &v40, &qword_2803086F8, &qword_269331FB0);
    if (v43)
    {
      if (swift_dynamicCast())
      {
        v40 = v5;
        v41 = v19;
        v42 = 0;
        LOBYTE(v43) = 1;
        sub_26932DD90();
        if (v3)
        {
          goto LABEL_48;
        }

LABEL_33:
        sub_2692EB48C(&v44, &qword_2803086F8, &qword_269331FB0);

        goto LABEL_34;
      }
    }

    else
    {
      sub_2692EB48C(&v40, &qword_2803086F8, &qword_269331FB0);
    }

    sub_2692E3B90(&v44, &v40, &qword_2803086F8, &qword_269331FB0);
    if (v43)
    {
      if (swift_dynamicCast())
      {
        v40 = v5;
        v41 = v19;
        v42 = 0;
        LOBYTE(v43) = 1;
        sub_26932DD80();
        if (v3)
        {
          goto LABEL_48;
        }

        goto LABEL_33;
      }
    }

    else
    {
      sub_2692EB48C(&v40, &qword_2803086F8, &qword_269331FB0);
    }

    sub_2692E3B90(&v44, &v40, &qword_2803086F8, &qword_269331FB0);
    if (v43)
    {
      if (swift_dynamicCast())
      {
        v40 = v5;
        v41 = v19;
        v42 = 0;
        LOBYTE(v43) = 1;
        sub_26932DD70();
        if (v3)
        {
LABEL_48:
          sub_2692EB48C(&v44, &qword_2803086F8, &qword_269331FB0);
        }

        goto LABEL_33;
      }
    }

    else
    {
      sub_2692EB48C(&v40, &qword_2803086F8, &qword_269331FB0);
    }

    sub_2692E3B90(&v44, &v40, &qword_2803086F8, &qword_269331FB0);
    if (!v43)
    {
      sub_2692EB48C(&v40, &qword_2803086F8, &qword_269331FB0);
      goto LABEL_41;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803089C0, "\n_");
    if (swift_dynamicCast())
    {
      v30 = a2;
      v31 = v3;
      v24 = v36;
      v40 = v5;
      v41 = v19;
      v42 = 0;
      LOBYTE(v43) = 1;
      sub_26931EB88();
      v9 = v33;
      v5 = v46;
      sub_26932DD40();

      v25 = v31;
      sub_26931FEEC(v9, v24);
      v3 = v25;
      if (v25)
      {
        goto LABEL_52;
      }

      (*v32)(v9, v5);
      sub_2692EB48C(&v44, &qword_2803086F8, &qword_269331FB0);
      v15 = v16;
      a2 = v30;
      v14 = v34;
    }

    else
    {
LABEL_41:
      sub_2692E3B90(&v44, &v40, &qword_2803086F8, &qword_269331FB0);
      if (v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308AD0, &qword_269331FB8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_46;
        }

        v31 = v3;
        v23 = a2;
        v26 = v36;
        v36 = v5;
        v37 = v19;
        v38 = 0;
        v39 = 1;
        sub_26932DD30();

        v27 = v31;
        sub_269320680(&v40, v26);
        if (v27)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v40);
          return sub_2692EB48C(&v44, &qword_2803086F8, &qword_269331FB0);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v40);
        v9 = &qword_2803086F8;
        sub_2692EB48C(&v44, &qword_2803086F8, &qword_269331FB0);
LABEL_18:
        v15 = v16;
        a2 = v23;
        v3 = 0;
        v14 = v34;
      }

      else
      {
        sub_2692EB48C(&v40, &qword_2803086F8, &qword_269331FB0);
LABEL_46:
        v40 = v5;
        v41 = v19;
        v42 = 0;
        LOBYTE(v43) = 1;
        sub_26932DDB0();
        sub_2692EB48C(&v44, &qword_2803086F8, &qword_269331FB0);

        if (v3)
        {
        }

LABEL_34:
        v15 = v16;
        v14 = v34;
      }
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_52:

  (*v32)(v9, v5);
  return sub_2692EB48C(&v44, &qword_2803086F8, &qword_269331FB0);
}

uint64_t sub_269320680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308910, &qword_269331278);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = *(a2 + 16);
  if (!v11)
  {
    return result;
  }

  v26 = v24 - v10;
  v27 = result;
  v12 = a2 + 32;
  v25 = (v9 + 8);
  while (1)
  {
    sub_2692DDEB4(v12, v30);
    sub_2692DDEB4(v30, v28);
    if (swift_dynamicCast())
    {
      v13 = *(a1 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_26932DE90();
      __swift_destroy_boxed_opaque_existential_1Tm(v30);

      if (v3)
      {
        return result;
      }

      goto LABEL_4;
    }

    sub_2692DDEB4(v30, v28);
    if (swift_dynamicCast())
    {
      v14 = *(a1 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      v15 = v3;
      sub_26932DEC0();
LABEL_12:
      v3 = v15;
      goto LABEL_13;
    }

    sub_2692DDEB4(v30, v28);
    if (swift_dynamicCast())
    {
      v16 = *(a1 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      v15 = v3;
      sub_26932DEB0();
      goto LABEL_12;
    }

    sub_2692DDEB4(v30, v28);
    if (swift_dynamicCast())
    {
      v17 = *(a1 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      v15 = v3;
      sub_26932DEA0();
      goto LABEL_12;
    }

    sub_2692DDEB4(v30, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803089C0, "\n_");
    if (!swift_dynamicCast())
    {
      break;
    }

    v18 = v29;
    v19 = *(a1 + 24);
    v24[1] = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v19);
    sub_26931EB88();
    v20 = v26;
    sub_26932DE70();
    sub_26931FEEC(v20, v18);

    (*v25)(v20, v27);
LABEL_13:
    result = __swift_destroy_boxed_opaque_existential_1Tm(v30);
    if (v3)
    {
      return result;
    }

LABEL_4:
    v12 += 32;
    if (!--v11)
    {
      return result;
    }
  }

  sub_2692DDEB4(v30, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308AD0, &qword_269331FB8);
  if (!swift_dynamicCast())
  {
    v23 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_26932DED0();
    if (v3)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    goto LABEL_21;
  }

  v21 = v29;
  v22 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_26932DE80();
  sub_269320680(v28, v21);
  if (!v3)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v28);
LABEL_21:
    result = __swift_destroy_boxed_opaque_existential_1Tm(v30);
    goto LABEL_4;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

char *sub_269320AD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088E8, &qword_269331260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088F0, &qword_269331268);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((sub_26932DE50() & 1) == 0)
  {
    v14 = (v7 + 56);
    v34 = (v7 + 32);
    v12 = MEMORY[0x277D84F90];
    v33 = (v7 + 8);
    while (1)
    {
      v16 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
      v17 = sub_26932DE10();
      if (v18)
      {
        v36 = MEMORY[0x277D837D0];
        *&v35 = v17;
        *(&v35 + 1) = v18;
      }

      else
      {
        v19 = a1[4];
        __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
        v20 = sub_26932DE40();
        if ((v21 & 1) == 0)
        {
          v31 = MEMORY[0x277D83B88];
LABEL_20:
          v36 = v31;
          *&v35 = v20;
          goto LABEL_22;
        }

        v22 = a1[4];
        __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
        v20 = sub_26932DE30();
        if ((v23 & 1) == 0)
        {
          v31 = MEMORY[0x277D839F8];
          goto LABEL_20;
        }

        v24 = a1[4];
        __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
        v25 = sub_26932DE20();
        if (v25 == 2)
        {
          v26 = a1[4];
          __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_26931EB88();
          sub_26932DDF0();
          (*v14)(v5, 0, 1, v6);
          (*v34)(v10, v5, v6);
          v27 = sub_26931EC44(v10);
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803089C0, "\n_");
          *&v35 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_2692E35C4(0, *(v12 + 2) + 1, 1, v12);
          }

          v29 = *(v12 + 2);
          v28 = *(v12 + 3);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v12 = sub_2692E35C4((v28 > 1), v29 + 1, 1, v12);
          }

          (*v33)(v10, v6);
          goto LABEL_6;
        }

        v36 = MEMORY[0x277D839B0];
        LOBYTE(v35) = v25 & 1;
      }

LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2692E35C4(0, *(v12 + 2) + 1, 1, v12);
      }

      v29 = *(v12 + 2);
      v32 = *(v12 + 3);
      v30 = v29 + 1;
      if (v29 >= v32 >> 1)
      {
        v12 = sub_2692E35C4((v32 > 1), v29 + 1, 1, v12);
      }

LABEL_6:
      *(v12 + 2) = v30;
      sub_2692ED64C(&v35, &v12[32 * v29 + 32]);
      v15 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      if (sub_26932DE50())
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2693210CC()
{
  v1 = *v0;
  v2 = 0x65644972656D6974;
  v3 = 0x6574617473;
  if (v1 != 6)
  {
    v3 = 0x74756F68636E7570;
  }

  v4 = 0x6E6F697461727564;
  if (v1 != 4)
  {
    v4 = 0x6E696E69616D6572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2693211EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269324C30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269321220(uint64_t a1)
{
  v2 = sub_26931EB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26932125C(uint64_t a1)
{
  v2 = sub_26931EB34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2693212C8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2693212F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_26932130C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_269321318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26932DDD0();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_269321374(uint64_t a1)
{
  v2 = sub_26931EB88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693213B0(uint64_t a1)
{
  v2 = sub_26931EB88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerSelectorModel.timers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*TimerSelectorModel.header.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for TimerSelectorModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692EEF28;
}

uint64_t TimerSelectorModel.init(timers:header:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v2 = *(type metadata accessor for TimerSelectorModel(0) + 20);
  return sub_26932C100();
}

uint64_t sub_269321584()
{
  if (*v0)
  {
    return 0x726564616568;
  }

  else
  {
    return 0x7372656D6974;
  }
}

uint64_t sub_2693215B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7372656D6974 && a2 == 0xE600000000000000;
  if (v6 || (sub_26932DF00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26932DF00();

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

uint64_t sub_269321690(uint64_t a1)
{
  v2 = sub_26932191C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693216CC(uint64_t a1)
{
  v2 = sub_26932191C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerSelectorModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308950, &qword_2693312A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26932191C();
  sub_26932DF90();
  v14 = *v3;
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088B8, &qword_269331250);
  sub_26931DA0C(&qword_2803088D8, &qword_2803088E0);
  sub_26932DDA0();
  if (!v2)
  {
    v11 = *(type metadata accessor for TimerSelectorModel(0) + 20);
    v13[6] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
    sub_2692F0798(&qword_280308350);
    sub_26932DDA0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26932191C()
{
  result = qword_280308958;
  if (!qword_280308958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308958);
  }

  return result;
}

uint64_t TimerSelectorModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v22 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308960, &qword_2693312B0);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v22 - v8;
  v10 = type metadata accessor for TimerSelectorModel(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26932191C();
  sub_26932DF80();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = a1;
  v15 = v13;
  v17 = v28;
  v16 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088B8, &qword_269331250);
  v32 = 0;
  sub_26931DA0C(&qword_2803088C0, &qword_2803088C8);
  v18 = v30;
  sub_26932DD00();
  v23 = v15;
  v24 = v33;
  *v15 = v33;
  v31 = 1;
  sub_2692F0798(&qword_280308388);
  sub_26932DD00();
  (*(v17 + 8))(v9, v18);
  v19 = *(v10 + 20);
  v20 = v23;
  (*(v26 + 32))(&v23[v19], v6, v16);
  sub_26931EBDC(v20, v27, type metadata accessor for TimerSelectorModel);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return sub_26931CA7C(v20, type metadata accessor for TimerSelectorModel);
}

uint64_t TimerConfirmationModel.yesLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_26932C120();
  return v1;
}

uint64_t sub_269321D74(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t (*TimerConfirmationModel.yesLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692F1710;
}

uint64_t sub_269321EAC(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_26932C120();
  return v3;
}

uint64_t sub_269321F08@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  v3 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  result = sub_26932C120();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_269321F74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = a1[1];
  v5 = *(a5(0) + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t sub_269322000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a3(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t (*TimerConfirmationModel.noLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for TimerConfirmationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692F1710;
}

uint64_t TimerConfirmationModel.invocationVerbValue.getter()
{
  v1 = (v0 + *(type metadata accessor for TimerConfirmationModel(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TimerConfirmationModel.invocationVerbValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TimerConfirmationModel(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TimerConfirmationModel.text.getter()
{
  v0 = *(type metadata accessor for TimerConfirmationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_26932C120();
  return v2;
}

uint64_t sub_26932221C@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for TimerConfirmationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  result = sub_26932C120();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_269322284(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for TimerConfirmationModel(0) + 28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t TimerConfirmationModel.text.setter()
{
  v0 = *(type metadata accessor for TimerConfirmationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t (*TimerConfirmationModel.text.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for TimerConfirmationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692F1710;
}

uint64_t TimerConfirmationModel.init(yesLabel:noLabel:invocationVerbValue:text:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  sub_26932C100();
  v6 = type metadata accessor for TimerConfirmationModel(0);
  v7 = v6[5];
  sub_26932C100();
  v8 = (a3 + v6[6]);
  *v8 = a1;
  v8[1] = a2;
  v9 = v6[7];
  return sub_26932C100();
}

unint64_t sub_2693224A8()
{
  v1 = 0x6C6562614C736579;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 1954047348;
  }

  if (*v0)
  {
    v1 = 0x6C6562614C6F6ELL;
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

uint64_t sub_269322520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269324EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269322554(uint64_t a1)
{
  v2 = sub_2693227F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269322590(uint64_t a1)
{
  v2 = sub_2693227F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerConfirmationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308968, &qword_2693312B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693227F4();
  sub_26932DF90();
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_2692F0798(&qword_280308350);
  sub_26932DDA0();
  if (!v2)
  {
    v11 = type metadata accessor for TimerConfirmationModel(0);
    v12 = v11[5];
    v21 = 1;
    sub_26932DDA0();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v20 = 2;
    sub_26932DD60();
    v16 = v11[7];
    v19 = 3;
    sub_26932DDA0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2693227F4()
{
  result = qword_280308970;
  if (!qword_280308970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308970);
  }

  return result;
}

uint64_t TimerConfirmationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  v4 = MEMORY[0x28223BE20](v43);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v7);
  v42 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308978, &qword_2693312C0);
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = type metadata accessor for TimerConfirmationModel(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693227F4();
  v46 = v14;
  v20 = v47;
  sub_26932DF80();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v9;
  v37 = v6;
  v38 = v15;
  v47 = a1;
  v39 = v18;
  v51 = 0;
  v22 = sub_2692F0798(&qword_280308388);
  v24 = v42;
  v23 = v43;
  v25 = v45;
  sub_26932DD00();
  v26 = *(v41 + 32);
  v26(v39, v24, v23);
  v50 = 1;
  v27 = v21;
  sub_26932DD00();
  v36 = v22;
  v28 = v39;
  v26(&v39[*(v38 + 20)], v27, v23);
  v49 = 2;
  v42 = 0;
  v29 = sub_26932DCF0();
  v30 = v26;
  v31 = v37;
  v32 = v38;
  v33 = (v28 + *(v38 + 24));
  *v33 = v29;
  v33[1] = v34;
  v48 = 3;
  sub_26932DD00();
  (*(v44 + 8))(v46, v25);
  v30(v28 + *(v32 + 28), v31, v23);
  sub_26931EBDC(v28, v40, type metadata accessor for TimerConfirmationModel);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  return sub_26931CA7C(v28, type metadata accessor for TimerConfirmationModel);
}

uint64_t sub_269322F94()
{
  result = type metadata accessor for TimerSelectorModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimerConfirmationModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269323020(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269323068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2693230DC()
{
  sub_269323418(319, &qword_2803089B0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_269323250();
    if (v1 <= 0x3F)
    {
      sub_2693233B4(319, &qword_2803083E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_269323418(319, &qword_2803089C8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_269323418(319, &qword_2803089D0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_269323250()
{
  if (!qword_2803089B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803089C0, "\n_");
    v0 = sub_26932DA40();
    if (!v1)
    {
      atomic_store(v0, &qword_2803089B8);
    }
  }
}

void sub_2693232DC()
{
  sub_2693233B4(319, &qword_2803089E8, type metadata accessor for SiriTimerSnippetModel, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_269323418(319, &qword_2803083D0, MEMORY[0x277D837D0], MEMORY[0x277D637C8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2693233B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269323418(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269323490()
{
  sub_269323418(319, &qword_2803083D0, MEMORY[0x277D837D0], MEMORY[0x277D637C8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for SiriTimerSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriTimerSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_269323698(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2693236E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_269323788()
{
  result = qword_280308A00;
  if (!qword_280308A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A00);
  }

  return result;
}

unint64_t sub_2693237E0()
{
  result = qword_280308A08;
  if (!qword_280308A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A08);
  }

  return result;
}

unint64_t sub_269323838()
{
  result = qword_280308A10;
  if (!qword_280308A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A10);
  }

  return result;
}

unint64_t sub_269323890()
{
  result = qword_280308A18;
  if (!qword_280308A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A18);
  }

  return result;
}

unint64_t sub_2693238E8()
{
  result = qword_280308A20;
  if (!qword_280308A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A20);
  }

  return result;
}

unint64_t sub_269323940()
{
  result = qword_280308A28;
  if (!qword_280308A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A28);
  }

  return result;
}

unint64_t sub_269323998()
{
  result = qword_280308A30;
  if (!qword_280308A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A30);
  }

  return result;
}

unint64_t sub_2693239F0()
{
  result = qword_280308A38;
  if (!qword_280308A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A38);
  }

  return result;
}

unint64_t sub_269323A48()
{
  result = qword_280308A40;
  if (!qword_280308A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A40);
  }

  return result;
}

unint64_t sub_269323AA0()
{
  result = qword_280308A48;
  if (!qword_280308A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A48);
  }

  return result;
}

unint64_t sub_269323AF8()
{
  result = qword_280308A50;
  if (!qword_280308A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A50);
  }

  return result;
}

unint64_t sub_269323B50()
{
  result = qword_280308A58;
  if (!qword_280308A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A58);
  }

  return result;
}

unint64_t sub_269323BA8()
{
  result = qword_280308A60;
  if (!qword_280308A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A60);
  }

  return result;
}

unint64_t sub_269323C00()
{
  result = qword_280308A68;
  if (!qword_280308A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A68);
  }

  return result;
}

unint64_t sub_269323C58()
{
  result = qword_280308A70;
  if (!qword_280308A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A70);
  }

  return result;
}

unint64_t sub_269323CB0()
{
  result = qword_280308A78;
  if (!qword_280308A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A78);
  }

  return result;
}

unint64_t sub_269323D08()
{
  result = qword_280308A80;
  if (!qword_280308A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A80);
  }

  return result;
}

unint64_t sub_269323D60()
{
  result = qword_280308A88;
  if (!qword_280308A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A88);
  }

  return result;
}

unint64_t sub_269323DB8()
{
  result = qword_280308A90;
  if (!qword_280308A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A90);
  }

  return result;
}

unint64_t sub_269323E10()
{
  result = qword_280308A98;
  if (!qword_280308A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A98);
  }

  return result;
}

unint64_t sub_269323E68()
{
  result = qword_280308AA0;
  if (!qword_280308AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AA0);
  }

  return result;
}

unint64_t sub_269323EC0()
{
  result = qword_280308AA8;
  if (!qword_280308AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AA8);
  }

  return result;
}

unint64_t sub_269323F18()
{
  result = qword_280308AB0;
  if (!qword_280308AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AB0);
  }

  return result;
}

unint64_t sub_269323F70()
{
  result = qword_280308AB8;
  if (!qword_280308AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AB8);
  }

  return result;
}

unint64_t sub_269323FC8()
{
  result = qword_280308AC0;
  if (!qword_280308AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AC0);
  }

  return result;
}

unint64_t sub_269324020()
{
  result = qword_280308AC8;
  if (!qword_280308AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AC8);
  }

  return result;
}

unint64_t sub_269324074(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26932D260();
  v5 = MEMORY[0x277D563F8];
  sub_26931CB98(&qword_280308AE0, MEMORY[0x277D563F8]);
  v6 = sub_26932D740();
  return sub_26932434C(a1, v6, MEMORY[0x277D563F8], &qword_280308AE8, v5, MEMORY[0x277D56408]);
}

unint64_t sub_269324148(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26932DF50();
  sub_26932D7D0();
  v6 = sub_26932DF70();

  return sub_269324294(a1, a2, v6);
}

unint64_t sub_2693241C0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26932BFA0();
  v5 = MEMORY[0x277CC95F0];
  sub_26931CB98(&qword_2814B2658, MEMORY[0x277CC95F0]);
  v6 = sub_26932D740();
  return sub_26932434C(a1, v6, MEMORY[0x277CC95F0], &qword_2814B2650, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_269324294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26932DF00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26932434C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_26931CB98(v24, v25);
      v20 = sub_26932D750();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_2693244EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082D0, &unk_26932F380);
  v36 = a2;
  result = sub_26932DC40();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_2692ED64C(v25, v37);
      }

      else
      {
        sub_2692DDEB4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26932DF50();
      sub_26932D7D0();
      result = sub_26932DF70();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2692ED64C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_2693247A4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2692ED64C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_269324810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082D0, &unk_26932F380);
  v2 = *v0;
  v3 = sub_26932DC30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2692DDEB4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2692ED64C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2693249B4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_269324148(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_2693244EC(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_269324148(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_26932DF40();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    sub_269324810();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_2693247A4(v14, a2, a3, a1, v13);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 32 * v14;
  sub_2692ED64C((v13[7] + 32 * v14), a4);
  result = sub_2692ED64C(a1, (v13[7] + v21));
LABEL_11:
  *v6 = v13;
  return result;
}

uint64_t sub_269324B00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C754D72656D6974 && a2 == 0xEA00000000006974;
  if (v4 || (sub_26932DF00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C655372656D6974 && a2 == 0xED0000726F746365 || (sub_26932DF00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002693367C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26932DF00();

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

uint64_t sub_269324C30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65644972656D6974 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_26932DF00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002693367E0 == a2 || (sub_26932DF00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000269336800 == a2 || (sub_26932DF00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E696E69616D6572 && a2 == 0xED0000656D695467 || (sub_26932DF00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74756F68636E7570 && a2 == 0xEB000000004C5255)
  {

    return 7;
  }

  else
  {
    v6 = sub_26932DF00();

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

uint64_t sub_269324EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562614C736579 && a2 == 0xE800000000000000;
  if (v4 || (sub_26932DF00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000269336820 == a2 || (sub_26932DF00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26932DF00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2693250B0()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308AF0);
  v1 = __swift_project_value_buffer(v0, qword_280308AF0);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UnsupportedAppNotInstalledFlow.init(domain:patternExecutor:legacyBuilder:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  sub_2692DB324(a2, a4);
  *(a4 + 40) = v6;

  return sub_2692DB324(a3, a4 + 48);
}

uint64_t UnsupportedAppNotInstalledFlow.execute(completion:)()
{
  sub_26932522C();

  return sub_26932C1F0();
}

unint64_t sub_26932522C()
{
  result = qword_280308B08;
  if (!qword_280308B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308B08);
  }

  return result;
}

uint64_t UnsupportedAppNotInstalledFlow.execute()(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_26932C610();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_26932C470();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = sub_26932BFA0();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = sub_26932D6B0();
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v15 = type metadata accessor for SiriTimeMeasurement();
  v2[22] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v18 = sub_26932C390();
  v2[25] = v18;
  v19 = *(v18 - 8);
  v2[26] = v19;
  v20 = *(v19 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26932553C, 0, 0);
}

uint64_t sub_26932553C()
{
  if (qword_280307CB8 != -1)
  {
    swift_once();
  }

  *(v0 + 248) = __swift_project_value_buffer(*(v0 + 152), qword_280308AF0);
  v1 = sub_26932D690();
  v2 = sub_26932D9B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2692D8000, v1, v2, "In UnsupportedClockAppNotInstalledFlow.execute()", v3, 2u);
    MEMORY[0x26D639280](v3, -1, -1);
  }

  v4 = *(v0 + 240);
  v5 = *(v0 + 72);

  v6 = *(v5 + 40);
  sub_26932C360();
  if (qword_2814B2520)
  {
    v7 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v7 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v7;
  }

  v8 = *(v0 + 192);
  sub_26932D400();
  sub_2692EB3E4(v7 + 16, v0 + 16);

  v9 = sub_26932D3F0();
  *(v0 + 256) = v9;
  v10 = AppInstallUtil.isAppInstalled.getter();
  AppInstallUtil.appStorePunchout(installOnly:)((v10 & 1) == 0, v8);
  if (SiriTimeFeatureFlagsImpl.isConfirmationsResponseFrameworkEnabled()())
  {
    v11 = *(v0 + 184);
    v42 = v9;
    v43 = *(v0 + 192);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v40 = v12;
    v41 = *(v0 + 72);
    v38 = *(v0 + 128);
    v39 = *(v14 + 16);
    v39();
    v37 = mach_absolute_time();
    *(v11 + v13[7]) = xmmword_26932EEB0;
    *(v11 + v13[8]) = 0x7FEFFFFFFFFFFFFFLL;
    v36 = v13[9];
    sub_26932BF90();
    v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v19 = sub_26932BF70();
    v20 = [v18 initWithNSUUID_];

    (*(v17 + 8))(v16, v38);
    *(v11 + v36) = v20;
    *(v11 + 8) = 30;
    (v39)(v11 + v13[6], v40, v15);
    *v11 = v37;
    sub_26931A2C8();
    (*(v14 + 8))(v40, v15);
    v21 = v41[3];
    v22 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v21);
    v23 = swift_task_alloc();
    *(v0 + 264) = v23;
    *(v23 + 16) = v43;
    *(v23 + 24) = v42;
    v24 = *(v22 + 8);
    v44 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    *(v0 + 272) = v26;
    *v26 = v0;
    v26[1] = sub_269325A6C;

    return v44(sub_269326DFC, v23, v21, v22);
  }

  else
  {
    v28 = *(v0 + 72);
    v29 = v28[9];
    v30 = v28[10];
    __swift_project_boxed_opaque_existential_1(v28 + 6, v29);
    *(v0 + 344) = *(v5 + 40);
    v31 = *(v30 + 8);
    v45 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 328) = v33;
    *v33 = v0;
    v33[1] = sub_26932654C;
    v34 = *(v0 + 240);
    v35 = *(v0 + 64);

    return v45(v35, v0 + 344, v9, v34, v29, v30);
  }
}

uint64_t sub_269325A6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v5 = *(*v2 + 264);
  v8 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v6 = sub_269326774;
  }

  else
  {
    v6 = sub_269325BA0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_269325BA0()
{
  v51 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[15];
  sub_26932C460();
  v7 = *(v5 + 16);
  v7(v2, v1, v4);
  sub_26932C380();
  sub_269326E04();
  LOBYTE(v2) = sub_26932D750();
  v8 = *(v5 + 8);
  v0[37] = v8;
  v0[38] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v4);
  v9 = v0[29];
  if (v2)
  {
    v8(v0[29], v0[25]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[19], qword_2814B2430);
    v10 = sub_26932D690();
    v11 = sub_26932D9B0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v50 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v50);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v50);
      _os_log_impl(&dword_2692D8000, v10, v11, "Creating manifest for clarification dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v13, -1, -1);
      MEMORY[0x26D639280](v12, -1, -1);
    }

LABEL_6:

    goto LABEL_18;
  }

  v14 = v0[28];
  v15 = v0[25];
  sub_26932C370();
  v16 = sub_26932D750();
  v8(v14, v15);
  v17 = v0[29];
  if (v16)
  {
    v8(v0[29], v0[25]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[19], qword_2814B2430);
    v10 = sub_26932D690();
    v18 = sub_26932D9B0();
    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v50);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v50);
      _os_log_impl(&dword_2692D8000, v10, v18, "Creating manifest for confirmation dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v20, -1, -1);
      MEMORY[0x26D639280](v19, -1, -1);
    }

    goto LABEL_6;
  }

  v21 = v0[28];
  v22 = v0[25];
  sub_26932C360();
  sub_26932D750();
  v8(v21, v22);
  v8(v17, v22);
  if (qword_2814B2428 != -1)
  {
    swift_once();
  }

  v23 = v0[30];
  v24 = v0[27];
  v25 = v0[25];
  __swift_project_value_buffer(v0[19], qword_2814B2430);
  v7(v24, v23, v25);
  v26 = sub_26932D690();
  v27 = sub_26932D9B0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[27];
    v29 = v0[28];
    v30 = v0[25];
    v48 = v27;
    v31 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v49;
    *v31 = 136315650;
    v7(v29, v28, v30);
    v32 = sub_26932D790();
    log = v26;
    v33 = v7;
    v35 = v34;
    v8(v28, v30);
    v36 = sub_2692DD5A8(v32, v35, &v50);
    v7 = v33;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v50);
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_2692DD5A8(7104878, 0xE300000000000000, &v50);
    _os_log_impl(&dword_2692D8000, log, v48, "Using default dialog manifest for %s with session ID %s, responseViewId %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v49, -1, -1);
    MEMORY[0x26D639280](v31, -1, -1);
  }

  else
  {
    v37 = v0[27];
    v38 = v0[25];

    v8(v37, v38);
  }

LABEL_18:
  v39 = v0[15];
  v40 = v0[12];
  v7(v0[28], v0[30], v0[25]);
  v41 = swift_task_alloc();
  *(v41 + 16) = v39;
  *(v41 + 24) = 0u;
  *(v41 + 40) = 0u;
  sub_26932C5A0();

  v42 = swift_task_alloc();
  v0[39] = v42;
  *v42 = v0;
  v42[1] = sub_269326294;
  v43 = v0[35];
  v44 = v0[23];
  v45 = v0[12];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v45, v44);
}

uint64_t sub_269326294(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 320) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2693263F4, 0, 0);
}

uint64_t sub_2693263F4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 184);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 64);
  sub_26932C410();

  (*(v6 + 8))(v5, v7);

  sub_2692EB4EC(v4);
  v9 = *(v0 + 304);
  v10 = *(v0 + 232);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 192);
  v14 = *(v0 + 184);
  v15 = *(v0 + 168);
  v16 = *(v0 + 144);
  v17 = *(v0 + 120);
  v20 = *(v0 + 96);
  (*(v0 + 296))(*(v0 + 240), *(v0 + 200));
  sub_269326CF4(v13);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_26932654C()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_2693269B8;
  }

  else
  {
    v3 = sub_269326660;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_269326660()
{
  v1 = v0[32];
  v2 = v0[26];

  v3 = v0[29];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v7 = v0[23];
  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[15];
  v13 = v0[12];
  (*(v2 + 8))(v0[30], v0[25]);
  sub_269326CF4(v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_269326774()
{
  v27 = v0;
  sub_2692EB4EC(v0[23]);
  v1 = v0[36];
  v2 = v0[31];
  v3 = v1;
  v4 = sub_26932D690();
  v5 = sub_26932D9A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    v0[7] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v9 = sub_26932D790();
    v11 = sub_2692DD5A8(v9, v10, &v26);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2692D8000, v4, v5, "Error executing DialogEngine: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D639280](v7, -1, -1);
    MEMORY[0x26D639280](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[32];
  v13 = v0[26];
  v14 = v0[8];
  sub_26932C420();

  v15 = v0[29];
  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[15];
  v25 = v0[12];
  (*(v13 + 8))(v0[30], v0[25]);
  sub_269326CF4(v18);

  v23 = v0[1];

  return v23();
}

uint64_t sub_2693269B8()
{
  v27 = v0;
  v1 = v0[42];
  v2 = v0[31];
  v3 = v1;
  v4 = sub_26932D690();
  v5 = sub_26932D9A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    v0[7] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v9 = sub_26932D790();
    v11 = sub_2692DD5A8(v9, v10, &v26);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2692D8000, v4, v5, "Error executing DialogEngine: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D639280](v7, -1, -1);
    MEMORY[0x26D639280](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[32];
  v13 = v0[26];
  v14 = v0[8];
  sub_26932C420();

  v15 = v0[29];
  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[15];
  v25 = v0[12];
  (*(v13 + 8))(v0[30], v0[25]);
  sub_269326CF4(v18);

  v23 = v0[1];

  return v23();
}

uint64_t sub_269326BF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  sub_26932737C(a2, &v15 - v6);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 16))(v7, v8, v9);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(v11 + 40);

  return v12(v13, v10, v11);
}

uint64_t sub_269326CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269326D60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2692DDD10;

  return UnsupportedAppNotInstalledFlow.execute()(a1);
}

unint64_t sub_269326E04()
{
  result = qword_2814B2648;
  if (!qword_2814B2648)
  {
    sub_26932C390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2648);
  }

  return result;
}

uint64_t dispatch thunk of UnsupportedAppPatternExecutor.appNotInstalledPatternExecution(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_269327064;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_269327064(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of UnsupportedAppNotInstalledLegacyDialogBuilder.generatePunchout(domain:device:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2692DDD10;

  return v17(a1, a2, a3, a4, a5, a6);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2693272D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_269327318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26932737C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SiriTimeLog.logger(category:)()
{

  return sub_26932D6A0();
}

uint64_t static SiriTimeLog.osLogObject(category:)()
{
  sub_2693274C0();

  return sub_26932DA20();
}

unint64_t sub_2693274C0()
{
  result = qword_2814B2310;
  if (!qword_2814B2310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2310);
  }

  return result;
}

uint64_t sub_26932750C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2760);
  __swift_project_value_buffer(v0, qword_2814B2760);
  return sub_26932D6A0();
}

uint64_t sub_2693275FC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26932D6B0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26932D6A0();
}

uint64_t sub_269327698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26932D6B0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_269327730()
{
  sub_2693274C0();
  result = sub_26932DA20();
  qword_280308B28 = result;
  return result;
}

id static SiriTimeLog.siriTimeFrameworkOSLogObject.getter()
{
  if (qword_280307CD8 != -1)
  {
    swift_once();
  }

  v1 = qword_280308B28;

  return v1;
}

uint64_t PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_26932C390();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v9 = sub_26932C610();
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269327940, 0, 0);
}

uint64_t sub_269327940()
{
  v52 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v3 + 16);
  v4(v0[11], v0[3], v2);
  sub_26932C380();
  sub_269326E04();
  v5 = sub_26932D750();
  v6 = *(v3 + 8);
  v6(v1, v2);
  v7 = v0[11];
  if (v5)
  {
    v6(v0[11], v0[7]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v8 = sub_26932D6B0();
    __swift_project_value_buffer(v8, qword_2814B2430);
    v9 = sub_26932D690();
    v10 = sub_26932D9B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      _os_log_impl(&dword_2692D8000, v9, v10, "Creating manifest for clarification dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v12, -1, -1);
      MEMORY[0x26D639280](v11, -1, -1);
    }

LABEL_6:

    goto LABEL_18;
  }

  v13 = v0[10];
  v14 = v0[7];
  sub_26932C370();
  v15 = sub_26932D750();
  v6(v13, v14);
  v16 = v0[11];
  if (v15)
  {
    v6(v0[11], v0[7]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v17 = sub_26932D6B0();
    __swift_project_value_buffer(v17, qword_2814B2430);
    v9 = sub_26932D690();
    v18 = sub_26932D9B0();
    if (os_log_type_enabled(v9, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v51 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      _os_log_impl(&dword_2692D8000, v9, v18, "Creating manifest for confirmation dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v20, -1, -1);
      MEMORY[0x26D639280](v19, -1, -1);
    }

    goto LABEL_6;
  }

  v21 = v0[10];
  v22 = v0[7];
  sub_26932C360();
  sub_26932D750();
  v6(v21, v22);
  v6(v16, v22);
  if (qword_2814B2428 != -1)
  {
    swift_once();
  }

  v23 = v0[9];
  v24 = v0[7];
  v25 = v0[3];
  v26 = sub_26932D6B0();
  __swift_project_value_buffer(v26, qword_2814B2430);
  v4(v23, v25, v24);
  v27 = sub_26932D690();
  v28 = sub_26932D9B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v0[9];
    v30 = v0[10];
    v31 = v0[7];
    v49 = v28;
    v32 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v50;
    *v32 = 136315650;
    v4(v30, v29, v31);
    v33 = sub_26932D790();
    log = v27;
    v34 = v4;
    v36 = v35;
    v6(v29, v31);
    v37 = sub_2692DD5A8(v33, v36, &v51);
    v4 = v34;

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
    *(v32 + 22) = 2080;
    *(v32 + 24) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
    _os_log_impl(&dword_2692D8000, log, v49, "Using default dialog manifest for %s with session ID %s, responseViewId %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v50, -1, -1);
    MEMORY[0x26D639280](v32, -1, -1);
  }

  else
  {
    v38 = v0[9];
    v39 = v0[7];

    v6(v38, v39);
  }

LABEL_18:
  v40 = v0[14];
  v41 = v0[4];
  v4(v0[10], v0[3], v0[7]);
  v42 = swift_task_alloc();
  *(v42 + 16) = v41;
  *(v42 + 24) = 0u;
  *(v42 + 40) = 0u;
  sub_26932C5A0();

  v43 = swift_task_alloc();
  v0[15] = v43;
  *v43 = v0;
  v43[1] = sub_26932801C;
  v44 = v0[14];
  v45 = v0[5];
  v46 = v0[6];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v44, v45);
}

uint64_t sub_26932801C(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 128) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_26932817C, 0, 0);
}

uint64_t sub_26932817C()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[2];
  sub_26932C410();

  v7 = v0[1];

  return v7();
}

uint64_t sub_269328228()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308B30);
  v1 = __swift_project_value_buffer(v0, qword_280308B30);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t PatternExecutionResult.generatePatternOutput(manifest:measure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2692DDD10;

  return OutputGenerationManifest.generatePatternOutput(result:measure:)(a1, v3, a3);
}

uint64_t OutputGenerationManifest.generatePatternOutput(result:measure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_26932C390();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_26932C610();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269328498, 0, 0);
}

uint64_t sub_269328498()
{
  v40 = v0;
  if (qword_280307CE0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_280308B30);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_26932D690();
  v9 = sub_26932D9B0();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[8];
  if (v10)
  {
    v14 = v0[7];
    v35 = v0[6];
    v15 = v0[3];
    v36 = v0[8];
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v16 = 136315394;
    v17 = [v15 patternId];
    v18 = sub_26932D770();
    v20 = v19;

    v21 = sub_2692DD5A8(v18, v20, &v39);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    sub_26932C590();
    v22 = sub_26932D790();
    v24 = v23;
    (*(v12 + 8))(v11, v36);
    v25 = sub_2692DD5A8(v22, v24, &v39);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2692D8000, v8, v9, "generatePatternOutput #Response output for pattern %s, dialogPhase: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v37, -1, -1);
    MEMORY[0x26D639280](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v26 = sub_26932C490();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v0[11] = sub_26932C480();
  v29 = *(MEMORY[0x277D5BD48] + 4);
  v38 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v30 = swift_task_alloc();
  v0[12] = v30;
  *v30 = v0;
  v30[1] = sub_26932879C;
  v31 = v0[5];
  v32 = v0[2];
  v33 = v0[3];

  return v38(v32, v33, v31);
}

uint64_t sub_26932879C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_26932893C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_2693288B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2693288B8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];
  SiriTimeMeasurement.logDelta()();

  v4 = v0[1];

  return v4();
}

uint64_t sub_26932893C()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v5 = v0[4];

  v6 = sub_26932BE80();
  sub_26931B26C(v6, 0, 0, 0x80u);

  SiriTimeMeasurement.logDelta()();
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

uint64_t PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 96) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_26932C610();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269328AC0, 0, 0);
}

uint64_t sub_269328AC0()
{
  static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)(*(v0 + 24), *(v0 + 32), 0, 0, 0, 0, *(v0 + 96), *(v0 + 72));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_269328B80;
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 16);

  return OutputGenerationManifest.generatePatternOutput(result:measure:)(v5, v3, v4);
}

uint64_t sub_269328B80()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  v6[11] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_269328D28, 0, 0);
  }

  else
  {
    v7 = v6[9];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_269328D28()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t PatternExecutionResult.generateStandardPatternResponse(phase:contextUpdate:measure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_26932C390();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = sub_26932C610();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269328EC8, 0, 0);
}

uint64_t sub_269328EC8()
{
  v52 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = *(v3 + 16);
  v4(v0[17], v0[9], v2);
  sub_26932C380();
  sub_269326E04();
  v5 = sub_26932D750();
  v6 = *(v3 + 8);
  v6(v1, v2);
  v7 = v0[17];
  if (v5)
  {
    v6(v0[17], v0[13]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v8 = sub_26932D6B0();
    __swift_project_value_buffer(v8, qword_2814B2430);
    v9 = sub_26932D690();
    v10 = sub_26932D9B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      _os_log_impl(&dword_2692D8000, v9, v10, "Creating manifest for clarification dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v12, -1, -1);
      MEMORY[0x26D639280](v11, -1, -1);
    }

LABEL_6:

    goto LABEL_18;
  }

  v13 = v0[16];
  v14 = v0[13];
  sub_26932C370();
  v15 = sub_26932D750();
  v6(v13, v14);
  v16 = v0[17];
  if (v15)
  {
    v6(v0[17], v0[13]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v17 = sub_26932D6B0();
    __swift_project_value_buffer(v17, qword_2814B2430);
    v9 = sub_26932D690();
    v18 = sub_26932D9B0();
    if (os_log_type_enabled(v9, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v51 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      _os_log_impl(&dword_2692D8000, v9, v18, "Creating manifest for confirmation dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v20, -1, -1);
      MEMORY[0x26D639280](v19, -1, -1);
    }

    goto LABEL_6;
  }

  v21 = v0[16];
  v22 = v0[13];
  sub_26932C360();
  sub_26932D750();
  v6(v21, v22);
  v6(v16, v22);
  if (qword_2814B2428 != -1)
  {
    swift_once();
  }

  v23 = v0[15];
  v24 = v0[13];
  v25 = v0[9];
  v26 = sub_26932D6B0();
  __swift_project_value_buffer(v26, qword_2814B2430);
  v4(v23, v25, v24);
  v27 = sub_26932D690();
  v28 = sub_26932D9B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v0[15];
    v30 = v0[16];
    v31 = v0[13];
    v49 = v28;
    v32 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v50;
    *v32 = 136315650;
    v4(v30, v29, v31);
    v33 = sub_26932D790();
    log = v27;
    v34 = v4;
    v36 = v35;
    v6(v29, v31);
    v37 = sub_2692DD5A8(v33, v36, &v51);
    v4 = v34;

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
    *(v32 + 22) = 2080;
    *(v32 + 24) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
    _os_log_impl(&dword_2692D8000, log, v49, "Using default dialog manifest for %s with session ID %s, responseViewId %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v50, -1, -1);
    MEMORY[0x26D639280](v32, -1, -1);
  }

  else
  {
    v38 = v0[15];
    v39 = v0[13];

    v6(v38, v39);
  }

LABEL_18:
  v40 = v0[20];
  v41 = v0[10];
  v4(v0[16], v0[9], v0[13]);
  v42 = swift_task_alloc();
  *(v42 + 16) = v41;
  *(v42 + 24) = 0u;
  *(v42 + 40) = 0u;
  sub_26932C5A0();

  v43 = swift_task_alloc();
  v0[21] = v43;
  *v43 = v0;
  v43[1] = sub_2693295A8;
  v44 = v0[20];
  v46 = v0[11];
  v45 = v0[12];

  return OutputGenerationManifest.generatePatternOutput(result:measure:)((v0 + 2), v45, v46);
}

uint64_t sub_2693295A8()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2693297B4;
  }

  else
  {
    v6 = sub_269329718;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_269329718()
{
  v1 = *(v0 + 64);
  sub_2692DB324((v0 + 16), v1);
  *(v1 + 40) = 0;
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2693297B4()
{
  v21 = v0;
  if (qword_280307CE0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_26932D6B0();
  __swift_project_value_buffer(v2, qword_280308B30);
  v3 = v1;
  v4 = sub_26932D690();
  v5 = sub_26932D9A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[7] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v10 = sub_26932D790();
    v12 = sub_2692DD5A8(v10, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2692D8000, v4, v5, "Failed to generate #Response response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D639280](v8, -1, -1);
    MEMORY[0x26D639280](v7, -1, -1);
  }

  v13 = v0[8];
  *v13 = v0[22];
  *(v13 + 40) = 1;
  v14 = v0[20];
  v15 = v0[16];
  v16 = v0[17];
  v17 = v0[15];

  v18 = v0[1];

  return v18();
}

uint64_t PatternExecutionResult.generateFlow(manifest:measure:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_26932C390();
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = sub_26932C610();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269329A9C, 0, 0);
}

uint64_t sub_269329A9C()
{
  v45 = v0;
  if (qword_280307CE0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_280308B30);
  (*(v2 + 16))(v1, v5, v3);
  v7 = v4;
  v8 = sub_26932D690();
  v9 = sub_26932D9B0();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[8];
  if (v10)
  {
    v14 = v0[7];
    v41 = v0[6];
    v15 = v0[5];
    v42 = v0[8];
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44[0] = v43;
    *v16 = 136315394;
    v17 = [v15 patternId];
    v18 = sub_26932D770();
    v20 = v19;

    v21 = sub_2692DD5A8(v18, v20, v44);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    sub_26932C590();
    v22 = sub_26932D790();
    v24 = v23;
    (*(v12 + 8))(v11, v42);
    v25 = sub_2692DD5A8(v22, v24, v44);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2692D8000, v8, v9, "generateFlowPatternResponse #Response flow response for pattern %s, dialogPhase: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v43, -1, -1);
    MEMORY[0x26D639280](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v26 = v0[10];
  v27 = v0[7];
  v28 = v0[4];
  v29 = v0[5];
  v30 = v0[3];
  sub_26932C580();
  v31 = sub_26932C490();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_26932C480();
  v44[3] = v31;
  v44[4] = MEMORY[0x277D5BD58];
  v44[0] = v34;
  v35 = sub_26932C1C0();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v0[2] = sub_26932C1B0();
  v38 = sub_26932C1D0();
  SiriTimeMeasurement.logDelta()();

  v39 = v0[1];

  return v39(v38);
}

uint64_t PatternExecutionResult.generateFlow(phase:contextUpdate:measure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_26932C390();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = sub_26932C610();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269329F20, 0, 0);
}

uint64_t sub_269329F20()
{
  v52 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = *(v3 + 16);
  v4(v0[10], v0[2], v2);
  sub_26932C380();
  sub_269326E04();
  v5 = sub_26932D750();
  v6 = *(v3 + 8);
  v6(v1, v2);
  v7 = v0[10];
  if (v5)
  {
    v6(v0[10], v0[6]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v8 = sub_26932D6B0();
    __swift_project_value_buffer(v8, qword_2814B2430);
    v9 = sub_26932D690();
    v10 = sub_26932D9B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      _os_log_impl(&dword_2692D8000, v9, v10, "Creating manifest for clarification dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v12, -1, -1);
      MEMORY[0x26D639280](v11, -1, -1);
    }

LABEL_6:

    goto LABEL_18;
  }

  v13 = v0[9];
  v14 = v0[6];
  sub_26932C370();
  v15 = sub_26932D750();
  v6(v13, v14);
  v16 = v0[10];
  if (v15)
  {
    v6(v0[10], v0[6]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v17 = sub_26932D6B0();
    __swift_project_value_buffer(v17, qword_2814B2430);
    v9 = sub_26932D690();
    v18 = sub_26932D9B0();
    if (os_log_type_enabled(v9, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v51 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
      _os_log_impl(&dword_2692D8000, v9, v18, "Creating manifest for confirmation dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v20, -1, -1);
      MEMORY[0x26D639280](v19, -1, -1);
    }

    goto LABEL_6;
  }

  v21 = v0[9];
  v22 = v0[6];
  sub_26932C360();
  sub_26932D750();
  v6(v21, v22);
  v6(v16, v22);
  if (qword_2814B2428 != -1)
  {
    swift_once();
  }

  v23 = v0[8];
  v24 = v0[6];
  v25 = v0[2];
  v26 = sub_26932D6B0();
  __swift_project_value_buffer(v26, qword_2814B2430);
  v4(v23, v25, v24);
  v27 = sub_26932D690();
  v28 = sub_26932D9B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v0[8];
    v30 = v0[9];
    v31 = v0[6];
    v49 = v28;
    v32 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v50;
    *v32 = 136315650;
    v4(v30, v29, v31);
    v33 = sub_26932D790();
    log = v27;
    v34 = v4;
    v36 = v35;
    v6(v29, v31);
    v37 = sub_2692DD5A8(v33, v36, &v51);
    v4 = v34;

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
    *(v32 + 22) = 2080;
    *(v32 + 24) = sub_2692DD5A8(7104878, 0xE300000000000000, &v51);
    _os_log_impl(&dword_2692D8000, log, v49, "Using default dialog manifest for %s with session ID %s, responseViewId %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v50, -1, -1);
    MEMORY[0x26D639280](v32, -1, -1);
  }

  else
  {
    v38 = v0[8];
    v39 = v0[6];

    v6(v38, v39);
  }

LABEL_18:
  v40 = v0[13];
  v41 = v0[3];
  v4(v0[9], v0[2], v0[6]);
  v42 = swift_task_alloc();
  *(v42 + 16) = v41;
  *(v42 + 24) = 0u;
  *(v42 + 40) = 0u;
  sub_26932C5A0();

  v43 = swift_task_alloc();
  v0[14] = v43;
  *v43 = v0;
  v43[1] = sub_26932A5FC;
  v44 = v0[13];
  v45 = v0[4];
  v46 = v0[5];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v44, v45);
}

uint64_t sub_26932A5FC(uint64_t a1)
{
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 80);
  v8 = *(*v1 + 72);
  v9 = *(*v1 + 64);
  v12 = *v1;

  (*(v5 + 8))(v4, v6);

  v10 = *(v12 + 8);

  return v10(a1);
}

uint64_t static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v117 = a6;
  v118 = a4;
  v110 = a2;
  v111 = a5;
  v116 = a3;
  v112 = a8;
  v10 = sub_26932C390();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = (MEMORY[0x28223BE20])();
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v108 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v108 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v108 - v22;
  v24 = v11[2];
  v114 = a1;
  v115 = v11 + 2;
  v113 = v24;
  v24(&v108 - v22, a1, v10);
  sub_26932C380();
  sub_269326E04();
  LOBYTE(a1) = sub_26932D750();
  v25 = v11[1];
  v25(v21, v10);
  if (a1)
  {
    v25(v23, v10);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v26 = sub_26932D6B0();
    __swift_project_value_buffer(v26, qword_2814B2430);
    v27 = v117;

    v28 = v118;

    v29 = sub_26932D690();
    v30 = sub_26932D9B0();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v116;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v119[0] = v34;
      *v33 = 136315394;
      if (v28)
      {
        v35 = v116;
      }

      else
      {
        v35 = 7104878;
      }

      if (v28)
      {
        v36 = v118;
      }

      else
      {
        v36 = 0xE300000000000000;
      }

      v37 = sub_2692DD5A8(v35, v36, v119);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = v111;
      if (v117)
      {
        v39 = v111;
      }

      else
      {
        v39 = 7104878;
      }

      v27 = v117;
      if (v117)
      {
        v40 = v117;
      }

      else
      {
        v40 = 0xE300000000000000;
      }

      v41 = sub_2692DD5A8(v39, v40, v119);
      v28 = v118;

      *(v33 + 14) = v41;
      v32 = v116;
      _os_log_impl(&dword_2692D8000, v29, v30, "Creating manifest for clarification dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v34, -1, -1);
      MEMORY[0x26D639280](v33, -1, -1);

      goto LABEL_36;
    }

LABEL_35:

    v38 = v111;
LABEL_36:
    v54 = v113(v21, v114, v10);
    MEMORY[0x28223BE20](v54);
    *(&v108 - 6) = v110;
    *(&v108 - 5) = v32;
    *(&v108 - 4) = v28;
    *(&v108 - 3) = v38;
    *(&v108 - 2) = v27;
    return sub_26932C5A0();
  }

  sub_26932C370();
  v42 = sub_26932D750();
  v25(v21, v10);
  if (v42)
  {
    v25(v23, v10);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v43 = sub_26932D6B0();
    __swift_project_value_buffer(v43, qword_2814B2430);
    v27 = v117;

    v28 = v118;

    v29 = sub_26932D690();
    v44 = sub_26932D9B0();

    v45 = os_log_type_enabled(v29, v44);
    v32 = v116;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v119[0] = v47;
      *v46 = 136315394;
      if (v28)
      {
        v48 = v116;
      }

      else
      {
        v48 = 7104878;
      }

      if (v28)
      {
        v49 = v118;
      }

      else
      {
        v49 = 0xE300000000000000;
      }

      v50 = sub_2692DD5A8(v48, v49, v119);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v38 = v111;
      if (v117)
      {
        v51 = v111;
      }

      else
      {
        v51 = 7104878;
      }

      v27 = v117;
      if (v117)
      {
        v52 = v117;
      }

      else
      {
        v52 = 0xE300000000000000;
      }

      v53 = sub_2692DD5A8(v51, v52, v119);
      v28 = v118;

      *(v46 + 14) = v53;
      v32 = v116;
      _os_log_impl(&dword_2692D8000, v29, v44, "Creating manifest for confirmation dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v47, -1, -1);
      MEMORY[0x26D639280](v46, -1, -1);

      goto LABEL_36;
    }

    goto LABEL_35;
  }

  sub_26932C360();
  v55 = sub_26932D750();
  v25(v21, v10);
  v25(v23, v10);
  v56 = v118;
  if ((v55 & 1) == 0 || (a7 & 1) == 0)
  {
    goto LABEL_60;
  }

  if (qword_2814B2520)
  {
    v57 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v57 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v57;
  }

  sub_2692EB3E4(v57 + 16, v119);

  __swift_project_boxed_opaque_existential_1(v119, v119[3]);
  v58 = sub_26932C340();
  __swift_destroy_boxed_opaque_existential_1Tm(v119);
  if (v58)
  {
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v59 = sub_26932D6B0();
    __swift_project_value_buffer(v59, qword_2814B2430);
    v60 = v113;
    v113(v18, v114, v10);

    v61 = sub_26932D690();
    v62 = sub_26932D9B0();

    v109 = v62;
    v63 = v62;
    v64 = v61;
    if (os_log_type_enabled(v61, v63))
    {
      v65 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v119[0] = v108;
      *v65 = 136315650;
      v113(v21, v18, v10);
      v66 = sub_26932D790();
      v68 = v67;
      v25(v18, v10);
      v69 = sub_2692DD5A8(v66, v68, v119);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = v116;
      if (v118)
      {
        v71 = v116;
      }

      else
      {
        v71 = 7104878;
      }

      if (v118)
      {
        v72 = v118;
      }

      else
      {
        v72 = 0xE300000000000000;
      }

      v73 = sub_2692DD5A8(v71, v72, v119);

      *(v65 + 14) = v73;
      *(v65 + 22) = 2080;
      v74 = v117;
      v75 = v111;
      if (v117)
      {
        v76 = v111;
      }

      else
      {
        v76 = 7104878;
      }

      if (v117)
      {
        v77 = v117;
      }

      else
      {
        v77 = 0xE300000000000000;
      }

      v56 = v118;

      v78 = sub_2692DD5A8(v76, v77, v119);

      *(v65 + 24) = v78;
      _os_log_impl(&dword_2692D8000, v64, v109, "Using default dialog manifest with assistant dismissal for %s with session ID %s, responseViewId %s", v65, 0x20u);
      v79 = v108;
      swift_arrayDestroy();
      MEMORY[0x26D639280](v79, -1, -1);
      v80 = v65;
      v60 = v113;
      MEMORY[0x26D639280](v80, -1, -1);

      v81 = v74;
    }

    else
    {

      v25(v18, v10);
      v70 = v116;
      v81 = v117;
      v75 = v111;
    }

    v106 = v60(v21, v114, v10);
    MEMORY[0x28223BE20](v106);
    *(&v108 - 6) = v110;
    *(&v108 - 5) = v70;
    *(&v108 - 4) = v56;
    *(&v108 - 3) = v75;
    *(&v108 - 2) = v81;
  }

  else
  {
LABEL_60:
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v82 = sub_26932D6B0();
    __swift_project_value_buffer(v82, qword_2814B2430);
    v83 = v113;
    v113(v15, v114, v10);

    v84 = sub_26932D690();
    v85 = sub_26932D9B0();

    v109 = v85;
    v86 = v85;
    v87 = v84;
    if (os_log_type_enabled(v84, v86))
    {
      v88 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v119[0] = v108;
      *v88 = 136315650;
      v113(v21, v15, v10);
      v89 = sub_26932D790();
      v91 = v90;
      v25(v15, v10);
      v92 = sub_2692DD5A8(v89, v91, v119);

      *(v88 + 4) = v92;
      *(v88 + 12) = 2080;
      v93 = v116;
      if (v118)
      {
        v94 = v116;
      }

      else
      {
        v94 = 7104878;
      }

      if (v118)
      {
        v95 = v118;
      }

      else
      {
        v95 = 0xE300000000000000;
      }

      v96 = sub_2692DD5A8(v94, v95, v119);

      *(v88 + 14) = v96;
      *(v88 + 22) = 2080;
      v97 = v117;
      v98 = v111;
      if (v117)
      {
        v99 = v111;
      }

      else
      {
        v99 = 7104878;
      }

      if (v117)
      {
        v100 = v117;
      }

      else
      {
        v100 = 0xE300000000000000;
      }

      v56 = v118;

      v101 = sub_2692DD5A8(v99, v100, v119);

      *(v88 + 24) = v101;
      v102 = v87;
      _os_log_impl(&dword_2692D8000, v87, v109, "Using default dialog manifest for %s with session ID %s, responseViewId %s", v88, 0x20u);
      v103 = v108;
      swift_arrayDestroy();
      MEMORY[0x26D639280](v103, -1, -1);
      v104 = v88;
      v83 = v113;
      MEMORY[0x26D639280](v104, -1, -1);
    }

    else
    {

      v25(v15, v10);
      v93 = v116;
      v97 = v117;
      v98 = v111;
    }

    v105 = v83(v21, v114, v10);
    MEMORY[0x28223BE20](v105);
    *(&v108 - 6) = v110;
    *(&v108 - 5) = v93;
    *(&v108 - 4) = v56;
    *(&v108 - 3) = v98;
    *(&v108 - 2) = v97;
  }

  return sub_26932C5A0();
}

uint64_t sub_26932B568()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2430);
  v1 = __swift_project_value_buffer(v0, qword_2814B2430);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26932B630(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308B48, &qword_269332168) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v14 - v4;
  v6 = sub_26932C3B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26932C5F0();
  (*(v7 + 104))(v10, *MEMORY[0x277D5BC50], v6);
  sub_26932C5B0();
  v11 = sub_26932C470();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5, a2, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  sub_26932C5D0();

  sub_26932C600();

  return sub_26932C5C0();
}

uint64_t sub_26932B824(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308B48, &qword_269332168) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v9 - v4;
  sub_26932C5F0();
  v6 = sub_26932C470();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_26932C5D0();

  sub_26932C600();

  return sub_26932C5C0();
}

uint64_t sub_26932B974(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308B48, &qword_269332168) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v10 - v4;
  v6 = sub_26932C470();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_26932C5D0();

  sub_26932C600();

  sub_26932C5C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26932EA80;
  *(v8 + 32) = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  return sub_26932C5E0();
}

uint64_t sub_26932BB10(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308B48, &qword_269332168) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v9 - v4;
  v6 = sub_26932C470();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_26932C5D0();

  sub_26932C600();

  return sub_26932C5C0();
}