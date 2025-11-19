BOOL sub_267AF4FF0()
{
  v15 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
  sub_267B17560();
  if (v14)
  {
    return 1;
  }

  v1 = *(v0 + 8);
  v2 = *(SiriMailModel.to.getter() + 16);

  if (!v2)
  {
    v3 = *(SiriMailModel.cc.getter() + 16);

    if (!v3)
    {
      v4 = *(SiriMailModel.bcc.getter() + 16);

      if (!v4)
      {
        return 1;
      }
    }
  }

  v5 = SiriMailModel.subject.getter();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 1;
  }

  v9 = SiriMailModel.body.getter();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v12 == 0;
}

uint64_t sub_267AF50E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3;
    v6 = a2();
    v7 = [v6 identifier];

    sub_267B17980();
    sub_267B17930();
    sub_267B17900();

    v10 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
    return sub_267B17570();
  }

  else
  {
    v9 = *(a1 + 24);
    sub_267B17910();
    sub_267AF5730(&qword_280211600, MEMORY[0x277D63F60]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

unint64_t sub_267AF5254()
{
  result = qword_280211170;
  if (!qword_280211170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211158, &qword_267B1A358);
    sub_267AF5730(&qword_280211098, MEMORY[0x277D63C38]);
    sub_267AF5730(&qword_280211178, MEMORY[0x277D63D80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211170);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267AF5414(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_267ADCE94(&qword_280210E80, &qword_280210E60, &qword_267B19DC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267AF54C4()
{
  result = qword_2802111A0;
  if (!qword_2802111A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211188, &unk_267B1A3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FD0, &qword_267B1A088);
    sub_267ADCE94(&qword_2802110B8, &qword_280210FD0, &qword_267B1A088);
    swift_getOpaqueTypeConformance2();
    sub_267ADCE94(&qword_2802111A8, &qword_2802111B0, &qword_267B1A440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802111A0);
  }

  return result;
}

unint64_t sub_267AF55EC()
{
  result = qword_2802111C0;
  if (!qword_2802111C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211190, &qword_267B1A438);
    sub_267ADCE94(&qword_2802110B8, &qword_280210FD0, &qword_267B1A088);
    sub_267ADCE94(&qword_2802111A8, &qword_2802111B0, &qword_267B1A440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802111C0);
  }

  return result;
}

uint64_t sub_267AF56D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211168, &qword_267B1A370);
  OUTLINED_FUNCTION_0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267AF5730(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267AF577C()
{
  result = qword_2802111C8;
  if (!qword_2802111C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802111D0, &qword_267B1A448);
    sub_267AF5254();
    sub_267AF5730(&qword_280211178, MEMORY[0x277D63D80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802111C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  v1 = *(*(v0 - 440) + 104);
  result = *(v0 - 424);
  v3 = *(v0 - 432);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_11_1(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_267AF5900(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for WidgetMessage();
  v7 = OUTLINED_FUNCTION_6(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111D8, &qword_267B1A450);
    v14 = OUTLINED_FUNCTION_6(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = a3[11];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111E0, &qword_267B1A458);
      v10 = a3[15];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v12 = *(a1 + a3[8] + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t sub_267AF5A3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for WidgetMessage();
  result = OUTLINED_FUNCTION_6(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111D8, &qword_267B1A450);
    v14 = OUTLINED_FUNCTION_6(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[11];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111E0, &qword_267B1A458);
      v12 = a4[15];
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t type metadata accessor for MessageView()
{
  result = qword_2802111E8;
  if (!qword_2802111E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267AF5BAC()
{
  sub_267AE0D9C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WidgetMessage();
    if (v1 <= 0x3F)
    {
      sub_267AF5CA4();
      if (v2 <= 0x3F)
      {
        sub_267AF5D00();
        if (v3 <= 0x3F)
        {
          sub_267AF5D50();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_267AF5CA4()
{
  if (!qword_2802111F8)
  {
    sub_267AEB9E0();
    v0 = sub_267B16CE0();
    if (!v1)
    {
      atomic_store(v0, &qword_2802111F8);
    }
  }
}

void sub_267AF5D00()
{
  if (!qword_280211200)
  {
    v0 = sub_267B17590();
    if (!v1)
    {
      atomic_store(v0, &qword_280211200);
    }
  }
}

void sub_267AF5D50()
{
  if (!qword_280211208)
  {
    sub_267B17030();
    v0 = sub_267B16C90();
    if (!v1)
    {
      atomic_store(v0, &qword_280211208);
    }
  }
}

double sub_267AF5DC4()
{
  v1 = sub_267B17030();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = type metadata accessor for MessageView();
  v10 = v0 + *(v9 + 60);
  sub_267B06A78(v8);
  (*(v2 + 104))(v6, *MEMORY[0x277CE0270], v1);
  LOBYTE(v10) = sub_267AF5F4C(v8, v6);
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v8, v1);
  result = 20.0;
  if ((v10 & 1) == 0)
  {
    v13 = *(v9 + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111D8, &qword_267B1A450);
    sub_267B16CD0();
    return *&v14[1];
  }

  return result;
}

BOOL sub_267AF5F4C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_267B17030();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x277CE0268];
  if (v13 != *MEMORY[0x277CE0268])
  {
    if (v13 == *MEMORY[0x277CE0298])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE02A0])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x277CE0260])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x277CE0270])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x277CE0248])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x277CE0280])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x277CE0278])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x277CE0288])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x277CE0250])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x277CE0298])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x277CE02A0])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x277CE0290])
    {
      if (v16 == *MEMORY[0x277CE0260])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0270])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0248])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0280])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0278])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0288])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0250])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0258])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_267AF6364()
{
  v1 = type metadata accessor for MessageView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211210, &qword_267B1A4C0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  *v9 = sub_267B16FB0();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211218, &qword_267B1A4C8);
  sub_267AF653C(v0, &v9[*(v10 + 44)]);
  sub_267AFAB40(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_267AFAEA0(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  OUTLINED_FUNCTION_1_5();
  sub_267ADCE94(v13, &qword_280211210, &qword_267B1A4C0);
  sub_267B173E0();

  return sub_267AEC1D4(v9, &qword_280211210, &qword_267B1A4C0);
}

uint64_t sub_267AF653C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211228, &qword_267B1A4D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211230, &qword_267B1A4D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29[-1] - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211238, &qword_267B1A4E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v29[-1] - v20;
  v29[3] = &type metadata for Features;
  v29[4] = sub_267AE7B88();
  LOBYTE(v29[0]) = 2;
  v22 = sub_267B16630();
  __swift_destroy_boxed_opaque_existential_1(v29);
  if (v22)
  {
    *v14 = sub_267B16FB0();
    *(v14 + 1) = 0x4020000000000000;
    v14[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211250, &qword_267B1A4F8);
    sub_267AF6858(a1, &v14[*(v23 + 44)]);
    sub_267AEBA3C(v14, v21, &qword_280211230, &qword_267B1A4D8);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v21, v24, 1, v11);
  *v10 = sub_267B17050();
  *(v10 + 1) = 0x4008000000000000;
  v10[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211240, &qword_267B1A4E8);
  sub_267AF765C(a1, &v10[*(v25 + 44)]);
  sub_267AEBA8C(v21, v19, &qword_280211238, &qword_267B1A4E0);
  sub_267AEBA8C(v10, v8, &qword_280211228, &qword_267B1A4D0);
  sub_267AEBA8C(v19, a2, &qword_280211238, &qword_267B1A4E0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211248, &qword_267B1A4F0);
  sub_267AEBA8C(v8, a2 + *(v26 + 48), &qword_280211228, &qword_267B1A4D0);
  sub_267AEC1D4(v10, &qword_280211228, &qword_267B1A4D0);
  sub_267AEC1D4(v21, &qword_280211238, &qword_267B1A4E0);
  sub_267AEC1D4(v8, &qword_280211228, &qword_267B1A4D0);
  return sub_267AEC1D4(v19, &qword_280211238, &qword_267B1A4E0);
}

uint64_t sub_267AF6858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_267B165C0();
  v85 = *(v3 - 8);
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_267B165F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_267B176F0();
  v81 = *(v83 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v78 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EB8, &qword_267B19E18);
  v80 = *(v82 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v79 = v70 - v13;
  v14 = sub_267B17280();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211258, &qword_267B1A500);
  v19 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v21 = (v70 - v20);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211260, &qword_267B1A508);
  v22 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v24 = v70 - v23;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211268, &qword_267B1A510);
  v25 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v27 = v70 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211270, &qword_267B1A518);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v77 = v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v76 = v70 - v32;
  v33 = a1 + *(type metadata accessor for MessageView() + 20);
  v71 = type metadata accessor for WidgetMessage();
  v34 = *(v71 + 44);
  v72 = v33;
  if (*(v33 + v34) == 1)
  {
    sub_267AF71A0(v27);
    sub_267AF5DC4();
    sub_267B17680();
    sub_267B16D20();
    v35 = &v27[*(v74 + 36)];
    v36 = v90;
    *v35 = v89;
    *(v35 + 1) = v36;
    *(v35 + 2) = v91;
    sub_267AEBA8C(v27, v24, &qword_280211268, &qword_267B1A510);
    swift_storeEnumTagMultiPayload();
    sub_267AFB17C();
    sub_267AFB45C();
    v37 = v76;
    sub_267B17080();
    v38 = v27;
    v39 = &qword_280211268;
    v40 = &qword_267B1A510;
  }

  else
  {
    v41 = sub_267B17510();
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36);
    v70[1] = a1;
    v43 = v3;
    v44 = (v21 + v42);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
    v70[2] = v9;
    v46 = *MEMORY[0x277CE1050];
    v47 = sub_267B17530();
    (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
    *v44 = swift_getKeyPath();
    v3 = v43;
    *v21 = v41;
    sub_267B172B0();
    (*(v15 + 104))(v18, *MEMORY[0x277CE0A10], v14);
    v48 = sub_267B172A0();

    (*(v15 + 8))(v18, v14);
    KeyPath = swift_getKeyPath();
    v50 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
    *v50 = KeyPath;
    v50[1] = v48;
    v51 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211288, &qword_267B1A590) + 36));
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
    sub_267B17060();
    v53 = sub_267B17070();
    __swift_storeEnumTagSinglePayload(v51 + v52, 0, 1, v53);
    *v51 = swift_getKeyPath();
    sub_267AF5DC4();
    sub_267B17650();
    sub_267B16D20();
    v54 = (v21 + *(v75 + 36));
    v55 = v90;
    *v54 = v89;
    v54[1] = v55;
    v54[2] = v91;
    sub_267AEBA8C(v21, v24, &qword_280211258, &qword_267B1A500);
    swift_storeEnumTagMultiPayload();
    sub_267AFB17C();
    sub_267AFB45C();
    v37 = v76;
    sub_267B17080();
    v38 = v21;
    v39 = &qword_280211258;
    v40 = &qword_267B1A500;
  }

  sub_267AEC1D4(v38, v39, v40);
  v56 = (v72 + *(v71 + 64));
  v57 = *v56;
  v58 = v56[1];
  sub_267B165E0();
  v59 = v78;
  sub_267B17700();
  v61 = v84;
  v60 = v85;
  (*(v85 + 104))(v84, *MEMORY[0x277D62A90], v3);
  v62 = sub_267AEC278(&qword_280210EC0, MEMORY[0x277D63B20]);
  v63 = v79;
  v64 = v83;
  sub_267B17380();
  (*(v60 + 8))(v61, v3);
  (*(v81 + 8))(v59, v64);
  v87 = v64;
  v88 = v62;
  swift_getOpaqueTypeConformance2();
  v65 = v82;
  v66 = sub_267B17350();
  (*(v80 + 8))(v63, v65);
  v67 = v77;
  sub_267AEBA8C(v37, v77, &qword_280211270, &qword_267B1A518);
  v68 = v86;
  sub_267AEBA8C(v67, v86, &qword_280211270, &qword_267B1A518);
  *(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112F8, &qword_267B1A5E8) + 48)) = v66;

  sub_267AEC1D4(v37, &qword_280211270, &qword_267B1A518);

  return sub_267AEC1D4(v67, &qword_280211270, &qword_267B1A518);
}

uint64_t sub_267AF71A0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_267B17280();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_267B17530();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v44 - v13);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588);
  v15 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v17 = v44 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112B8, &qword_267B1A5D8);
  v18 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v20 = v44 - v19;
  v21 = sub_267B17510();
  v50[3] = &type metadata for Features;
  v50[4] = sub_267AE7B88();
  LOBYTE(v50[0]) = 2;
  v22 = sub_267B16630();
  __swift_destroy_boxed_opaque_existential_1(v50);
  v23 = MEMORY[0x277CE1058];
  if ((v22 & 1) == 0)
  {
    v23 = MEMORY[0x277CE1050];
  }

  (*(v6 + 104))(v9, *v23, v5);
  KeyPath = swift_getKeyPath();
  v25 = (v14 + *(v11 + 44));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88);
  (*(v6 + 32))(v25 + *(v26 + 28), v9, v5);
  v27 = v44[1];
  *v25 = KeyPath;
  *v14 = v21;
  v28 = type metadata accessor for MessageView();
  v29 = v27 + *(v28 + 20);
  if (*(v29 + *(type metadata accessor for WidgetMessage() + 40)) == 1 && (*(v27 + *(v28 + 28)) & 1) == 0)
  {
    sub_267B172B0();
  }

  else
  {
    sub_267B171F0();
  }

  v31 = v47;
  v30 = v48;
  (*(v47 + 104))(v4, *MEMORY[0x277CE0A10], v48);
  v32 = sub_267B172A0();

  (*(v31 + 8))(v4, v30);
  v33 = swift_getKeyPath();
  sub_267AEBA3C(v14, v17, &qword_280211278, &qword_267B1A520);
  v34 = &v17[*(v46 + 36)];
  *v34 = v33;
  v34[1] = v32;
  v35 = sub_267B17490();
  v36 = swift_getKeyPath();
  sub_267AEBA3C(v17, v20, &qword_280211280, &qword_267B1A588);
  v37 = &v20[*(v45 + 36)];
  *v37 = v36;
  v37[1] = v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112A8, &qword_267B1A5D0);
  v39 = v49;
  v40 = (v49 + *(v38 + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
  sub_267B17060();
  v42 = sub_267B17070();
  __swift_storeEnumTagSinglePayload(v40 + v41, 0, 1, v42);
  *v40 = swift_getKeyPath();
  return sub_267AEBA3C(v20, v39, &qword_2802112B8, &qword_267B1A5D8);
}

uint64_t sub_267AF765C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211308, &qword_267B1A628);
  v3 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v92 = v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211310, &qword_267B1A630);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v99 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211318, &qword_267B1A638);
  v11 = *(v10 - 8);
  v93 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v98 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v91 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211320, &qword_267B1A640);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v96 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v91 - v22;
  *v23 = sub_267B16FA0();
  *(v23 + 1) = 0x4000000000000000;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211328, &qword_267B1A648);
  sub_267AF7E78(a1, &v23[*(v24 + 44)]);
  KeyPath = swift_getKeyPath();
  v26 = type metadata accessor for MessageView();
  v27 = (a1 + v26[12]);
  v28 = *v27;
  v29 = v27[1];
  v101 = v28;
  v102 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211330, &qword_267B1A670);
  sub_267B17580();
  v31 = v107;
  v32 = v108;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 32) = v32;
  *(v33 + 40) = KeyPath;
  v34 = sub_267B17670();
  v35 = *(v18 + 44);
  v94 = v23;
  v36 = &v23[v35];
  *v36 = sub_267B11D5C;
  v36[1] = 0;
  v36[2] = sub_267AFB5F8;
  v36[3] = v33;
  v36[4] = v34;
  v36[5] = v37;
  *v16 = sub_267B16FA0();
  *(v16 + 1) = 0x4010000000000000;
  v16[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211338, &qword_267B1A678);
  sub_267AF8F78(a1, &v16[*(v38 + 44)]);
  v39 = swift_getKeyPath();
  v40 = (a1 + v26[13]);
  v41 = *v40;
  v42 = v40[1];
  v101 = v41;
  v102 = v42;
  v91[1] = v30;
  v43 = v26;
  sub_267B17580();
  v44 = v107;
  v45 = v108;
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 32) = v45;
  *(v46 + 40) = v39;
  v47 = sub_267B17670();
  v48 = v16;
  v49 = &v16[*(v93 + 44)];
  *v49 = sub_267B11D5C;
  v49[1] = 0;
  v49[2] = sub_267AFB884;
  v49[3] = v46;
  v49[4] = v47;
  v49[5] = v50;
  v51 = a1 + v26[5];
  if (*(v51 + 56) && (v52 = *(a1 + v26[6]), v52 >= 1))
  {
    v53 = *(v51 + 48);
    v93 = sub_267B16FA0();
    LOBYTE(v104) = 0;
    sub_267AFA8D0(&v107);
    *&__src[7] = v107;
    *&__src[23] = v108;
    *&__src[39] = v109;
    *&__src[55] = v110;
    v54 = v104;
    v55 = swift_getKeyPath();
    LOBYTE(v101) = 0;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211348, &qword_267B1A6B8);
    v57 = v92;
    v58 = &v92[*(v56 + 36)];
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
    v60 = *MEMORY[0x277CE1050];
    v61 = sub_267B17530();
    (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
    *v58 = swift_getKeyPath();
    *v57 = v93;
    *(v57 + 8) = 0x4010000000000000;
    *(v57 + 16) = v54;
    memcpy((v57 + 17), __src, 0x47uLL);
    *(v57 + 88) = v55;
    *(v57 + 96) = v52;
    *(v57 + 104) = 0;
    v62 = sub_267B171F0();
    v63 = swift_getKeyPath();
    v64 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211350, &qword_267B1A6C0) + 36));
    *v64 = v63;
    v64[1] = v62;
    v65 = swift_getKeyPath();
    v66 = (a1 + v43[14]);
    v67 = *v66;
    v68 = v66[1];
    v104 = v67;
    v105 = v68;
    sub_267B17580();
    v69 = v101;
    v70 = v102;
    v71 = v103;
    v72 = swift_allocObject();
    *(v72 + 2) = v69;
    *(v72 + 3) = v70;
    *(v72 + 4) = v71;
    *(v72 + 5) = v65;
    v73 = sub_267B17670();
    v74 = v95;
    v75 = (v57 + *(v95 + 36));
    *v75 = sub_267B11D5C;
    v75[1] = 0;
    v75[2] = sub_267AFB884;
    v75[3] = v72;
    v75[4] = v73;
    v75[5] = v76;
    v77 = v97;
    sub_267AEBA3C(v57, v97, &qword_280211308, &qword_267B1A628);
    v78 = v77;
    v79 = 0;
    v80 = v74;
  }

  else
  {
    v77 = v97;
    v78 = v97;
    v79 = 1;
    v80 = v95;
  }

  __swift_storeEnumTagSinglePayload(v78, v79, 1, v80);
  v81 = v94;
  v82 = v96;
  sub_267AEBA8C(v94, v96, &qword_280211320, &qword_267B1A640);
  v83 = v48;
  v84 = v48;
  v85 = v98;
  sub_267AEBA8C(v84, v98, &qword_280211318, &qword_267B1A638);
  v86 = v99;
  sub_267AEBA8C(v77, v99, &qword_280211310, &qword_267B1A630);
  v87 = v100;
  sub_267AEBA8C(v82, v100, &qword_280211320, &qword_267B1A640);
  v88 = v77;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211340, &qword_267B1A680);
  sub_267AEBA8C(v85, v87 + *(v89 + 48), &qword_280211318, &qword_267B1A638);
  sub_267AEBA8C(v86, v87 + *(v89 + 64), &qword_280211310, &qword_267B1A630);
  sub_267AEC1D4(v88, &qword_280211310, &qword_267B1A630);
  sub_267AEC1D4(v83, &qword_280211318, &qword_267B1A638);
  sub_267AEC1D4(v81, &qword_280211320, &qword_267B1A640);
  sub_267AEC1D4(v86, &qword_280211310, &qword_267B1A630);
  sub_267AEC1D4(v85, &qword_280211318, &qword_267B1A638);
  return sub_267AEC1D4(v82, &qword_280211320, &qword_267B1A640);
}

uint64_t sub_267AF7E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211398, &qword_267B1A6F8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  *v9 = sub_267B16FA0();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113A0, &qword_267B1A700);
  sub_267AF81D0(a1, &v9[*(v10 + 44)]);
  v11 = a1 + *(type metadata accessor for MessageView() + 20);
  v44 = sub_267B12470();
  v45 = v12;
  sub_267ADCFA4();
  v13 = sub_267B17340();
  v38 = v14;
  LOBYTE(a1) = v15;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v42 = a1 & 1;
  v41 = 0;
  v36 = sub_267B17290();
  v18 = swift_getKeyPath();
  v32 = v18;
  v19 = v42;
  v34 = v42;
  v20 = v41;
  v35 = sub_267B174F0();
  v33 = swift_getKeyPath();
  v39 = v7;
  sub_267AEBA8C(v9, v7, &qword_280211398, &qword_267B1A6F8);
  v21 = v40;
  sub_267AEBA8C(v7, v40, &qword_280211398, &qword_267B1A6F8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113A8, &qword_267B1A708);
  v23 = v21 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = *(v22 + 64);
  __src[0] = v13;
  v25 = v38;
  __src[1] = v38;
  LOBYTE(__src[2]) = v19;
  v26 = v17;
  __src[3] = v17;
  __src[4] = 0x3FF0000000000000;
  v27 = KeyPath;
  __src[5] = KeyPath;
  __src[6] = 1;
  LOBYTE(__src[7]) = v20;
  __src[8] = v18;
  v28 = v36;
  v29 = v33;
  __src[9] = v36;
  __src[10] = v33;
  v30 = v35;
  __src[11] = v35;
  __src[12] = 0x3FE8000000000000;
  memcpy((v21 + v24), __src, 0x68uLL);
  sub_267AEBA8C(__src, &v44, &qword_2802113B0, &qword_267B1A710);
  sub_267AEC1D4(v9, &qword_280211398, &qword_267B1A6F8);
  v44 = v13;
  v45 = v25;
  v46 = v34;
  v47 = v26;
  v48 = 0x3FF0000000000000;
  v49 = v27;
  v50 = 1;
  v51 = v20;
  v52 = v32;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  v56 = 0x3FE8000000000000;
  sub_267AEC1D4(&v44, &qword_2802113B0, &qword_267B1A710);
  return sub_267AEC1D4(v39, &qword_280211398, &qword_267B1A6F8);
}

uint64_t sub_267AF81D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211288, &qword_267B1A590);
  v3 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v5 = (&v93 - v4);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211258, &qword_267B1A500);
  v6 = *(*(v102 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v102);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v93 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113B8, &qword_267B1A718);
  v12 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v93 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113C0, &qword_267B1A720);
  v14 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v95 = &v93 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113C8, &qword_267B1A728);
  v16 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v96 = &v93 - v17;
  v18 = sub_267B17280();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211268, &qword_267B1A510);
  v23 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v25 = (&v93 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113D0, &qword_267B1A730);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v103 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v105 = &v93 - v30;
  v31 = type metadata accessor for MessageView();
  v32 = a1;
  v33 = a1 + *(v31 + 20);
  v34 = type metadata accessor for WidgetMessage();
  if (*(v33 + *(v34 + 40)) == 1 && (*(v32 + *(v31 + 28)) & 1) == 0)
  {
    v54 = sub_267B17510();
    v55 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36));
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
    v57 = *MEMORY[0x277CE1050];
    v58 = sub_267B17530();
    (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
    *v55 = swift_getKeyPath();
    *v25 = v54;
    sub_267B171F0();
    (*(v19 + 104))(v22, *MEMORY[0x277CE0A10], v18);
    v59 = sub_267B172A0();

    (*(v19 + 8))(v22, v18);
    KeyPath = swift_getKeyPath();
    v61 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
    *v61 = KeyPath;
    v61[1] = v59;
    v62 = sub_267B174E0();
    v63 = swift_getKeyPath();
    v64 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112B8, &qword_267B1A5D8) + 36));
    *v64 = v63;
    v64[1] = v62;
    v65 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112A8, &qword_267B1A5D0) + 36));
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
    sub_267B17060();
    v67 = sub_267B17070();
    __swift_storeEnumTagSinglePayload(v65 + v66, 0, 1, v67);
    *v65 = swift_getKeyPath();
    sub_267AF5DC4();
    sub_267B17670();
    sub_267B16D20();
    v68 = (v25 + *(v93 + 36));
    v69 = v120;
    *v68 = v119;
    v68[1] = v69;
    v68[2] = v121;
    sub_267AEBA8C(v25, v95, &qword_280211268, &qword_267B1A510);
    swift_storeEnumTagMultiPayload();
    sub_267AFB17C();
    v70 = v96;
    sub_267B17080();
    sub_267AEBA8C(v70, v101, &qword_2802113C8, &qword_267B1A728);
    swift_storeEnumTagMultiPayload();
    sub_267AFB778();
    sub_267AFB45C();
    v71 = v105;
    sub_267B17080();
    sub_267AEC1D4(v70, &qword_2802113C8, &qword_267B1A728);
    v72 = v25;
    v50 = v71;
    sub_267AEC1D4(v72, &qword_280211268, &qword_267B1A510);
    v47 = v32;
  }

  else
  {
    v97 = v32;
    if (*(v33 + *(v34 + 44)) == 1 && (v112 = &type metadata for Features, v113 = sub_267AE7B88(), LOBYTE(v109) = 2, v35 = sub_267B16630(), __swift_destroy_boxed_opaque_existential_1(&v109), (v35 & 1) == 0))
    {
      v47 = v97;
      sub_267AF71A0(v25);
      sub_267AF5DC4();
      sub_267B17670();
      sub_267B16D20();
      v73 = (v25 + *(v93 + 36));
      v74 = v120;
      *v73 = v119;
      v73[1] = v74;
      v73[2] = v121;
      sub_267AEBA8C(v25, v95, &qword_280211268, &qword_267B1A510);
      swift_storeEnumTagMultiPayload();
      sub_267AFB17C();
      v75 = v96;
      sub_267B17080();
      sub_267AEBA8C(v75, v101, &qword_2802113C8, &qword_267B1A728);
      swift_storeEnumTagMultiPayload();
      sub_267AFB778();
      sub_267AFB45C();
      v76 = v105;
      sub_267B17080();
      sub_267AEC1D4(v75, &qword_2802113C8, &qword_267B1A728);
      v51 = v25;
      v50 = v76;
      v52 = &qword_280211268;
      v53 = &qword_267B1A510;
    }

    else
    {
      v36 = sub_267B17510();
      v37 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36));
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
      v39 = *MEMORY[0x277CE1050];
      v40 = sub_267B17530();
      (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
      *v37 = swift_getKeyPath();
      *v5 = v36;
      sub_267B172B0();
      (*(v19 + 104))(v22, *MEMORY[0x277CE0A10], v18);
      v41 = sub_267B172A0();

      (*(v19 + 8))(v22, v18);
      v42 = swift_getKeyPath();
      v43 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
      *v43 = v42;
      v43[1] = v41;
      v44 = (v5 + *(v98 + 36));
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
      sub_267B17060();
      v46 = sub_267B17070();
      __swift_storeEnumTagSinglePayload(v44 + v45, 0, 1, v46);
      *v44 = swift_getKeyPath();
      v112 = &type metadata for Features;
      v113 = sub_267AE7B88();
      LOBYTE(v109) = 2;
      sub_267B16630();
      __swift_destroy_boxed_opaque_existential_1(&v109);
      v47 = v97;
      sub_267AF5DC4();
      sub_267B17650();
      sub_267B16D20();
      sub_267AEBA3C(v5, v9, &qword_280211288, &qword_267B1A590);
      v48 = &v9[*(v102 + 36)];
      v49 = v120;
      *v48 = v119;
      *(v48 + 1) = v49;
      *(v48 + 2) = v121;
      sub_267AEBA3C(v9, v11, &qword_280211258, &qword_267B1A500);
      sub_267AEBA8C(v11, v101, &qword_280211258, &qword_267B1A500);
      swift_storeEnumTagMultiPayload();
      sub_267AFB778();
      sub_267AFB45C();
      v50 = v105;
      sub_267B17080();
      v51 = v11;
      v52 = &qword_280211258;
      v53 = &qword_267B1A500;
    }

    sub_267AEC1D4(v51, v52, v53);
  }

  sub_267AFA6C0(v47, &v109);
  v77 = v109;
  v102 = v110;
  v101 = v111;
  v100 = v112;
  v78 = v113;
  v79 = swift_getKeyPath();
  v97 = v79;
  v107 = v78;
  v106 = 0;
  sub_267B172C0();
  sub_267B17240();
  v99 = sub_267B17270();

  v80 = swift_getKeyPath();
  v81 = v107;
  LODWORD(v98) = v107;
  v82 = v106;
  v83 = v50;
  v84 = v103;
  sub_267AEBA8C(v83, v103, &qword_2802113D0, &qword_267B1A730);
  v85 = v104;
  sub_267AEBA8C(v84, v104, &qword_2802113D0, &qword_267B1A730);
  v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113E0, &qword_267B1A738) + 48);
  __src[0] = v77;
  v87 = v102;
  __src[1] = v102;
  v88 = v101;
  __src[2] = v101;
  v89 = v100;
  __src[3] = v100;
  LOBYTE(__src[4]) = v81;
  __src[5] = v79;
  __src[6] = 1;
  LOBYTE(__src[7]) = v82;
  __src[8] = v80;
  v90 = v80;
  v91 = v99;
  __src[9] = v99;
  memcpy((v85 + v86), __src, 0x50uLL);
  sub_267AEBA8C(__src, &v109, &qword_280211390, &qword_267B1A6F0);
  sub_267AEC1D4(v105, &qword_2802113D0, &qword_267B1A730);
  v109 = v77;
  v110 = v87;
  v111 = v88;
  v112 = v89;
  LOBYTE(v113) = v98;
  v114 = v97;
  v115 = 1;
  v116 = v82;
  v117 = v90;
  v118 = v91;
  sub_267AEC1D4(&v109, &qword_280211390, &qword_267B1A6F0);
  return sub_267AEC1D4(v84, &qword_2802113D0, &qword_267B1A730);
}

uint64_t sub_267AF8F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112A8, &qword_267B1A5D0);
  v3 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v125 = (&v123 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211358, &qword_267B1A6C8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v128 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v127 = &v123 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v134 = &v123 - v12;
  MEMORY[0x28223BE20](v11);
  v143 = &v123 - v13;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211260, &qword_267B1A508);
  v14 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v16 = &v123 - v15;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211268, &qword_267B1A510);
  v17 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v19 = &v123 - v18;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211270, &qword_267B1A518);
  v20 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v22 = &v123 - v21;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211360, &qword_267B1A6D0);
  v23 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v25 = &v123 - v24;
  v132 = sub_267B17280();
  v131 = *(v132 - 8);
  v26 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v28 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211258, &qword_267B1A500);
  v29 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v31 = (&v123 - v30);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211368, &qword_267B1A6D8);
  v32 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v34 = &v123 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211370, &qword_267B1A6E0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v142 = &v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v144 = &v123 - v39;
  v149 = &type metadata for Features;
  v150 = sub_267AE7B88();
  LOBYTE(v146) = 2;
  v40 = sub_267B16630();
  __swift_destroy_boxed_opaque_existential_1(&v146);
  v133 = type metadata accessor for MessageView();
  v41 = a1 + *(v133 + 20);
  v130 = type metadata accessor for WidgetMessage();
  v42 = *(v41 + v130[10]);
  if (v40)
  {
    if (*(v41 + v130[10]) && *(a1 + *(v133 + 28)) != 1)
    {
      v56 = a1;
      v60 = 1;
      v57 = v138;
    }

    else
    {
      v43 = sub_267B17510();
      v44 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36));
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
      v46 = *MEMORY[0x277CE1050];
      v47 = sub_267B17530();
      (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
      *v44 = swift_getKeyPath();
      *v31 = v43;
      sub_267B172B0();
      v48 = v131;
      v49 = v132;
      (*(v131 + 104))(v28, *MEMORY[0x277CE0A10], v132);
      v50 = sub_267B172A0();

      (*(v48 + 8))(v28, v49);
      KeyPath = swift_getKeyPath();
      v52 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
      *v52 = KeyPath;
      v52[1] = v50;
      v53 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211288, &qword_267B1A590) + 36));
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
      sub_267B17060();
      v55 = sub_267B17070();
      __swift_storeEnumTagSinglePayload(v53 + v54, 0, 1, v55);
      *v53 = swift_getKeyPath();
      v56 = a1;
      sub_267AF5DC4();
      sub_267B17650();
      sub_267B16D20();
      v57 = v138;
      v58 = (v31 + *(v138 + 36));
      v59 = v162;
      *v58 = v161;
      v58[1] = v59;
      v58[2] = v163;
      sub_267AEBA3C(v31, v34, &qword_280211258, &qword_267B1A500);
      v60 = 0;
    }

    __swift_storeEnumTagSinglePayload(v34, v60, 1, v57);
    sub_267AEBA8C(v34, v25, &qword_280211368, &qword_267B1A6D8);
    swift_storeEnumTagMultiPayload();
    sub_267AFB668();
    sub_267AFB6EC();
    sub_267B17080();
    v81 = v34;
    v82 = &qword_280211368;
    v83 = &qword_267B1A6D8;
  }

  else
  {
    if (*(v41 + v130[10]) && (*(a1 + *(v133 + 28)) & 1) == 0 && *(v41 + v130[11]) == 1)
    {
      sub_267AF71A0(v19);
      v56 = a1;
      sub_267AF5DC4();
      sub_267B17670();
      sub_267B16D20();
      v61 = &v19[*(v137 + 36)];
      v62 = v162;
      *v61 = v161;
      *(v61 + 1) = v62;
      *(v61 + 2) = v163;
      v63 = &qword_280211268;
      v64 = &qword_267B1A510;
      sub_267AEBA8C(v19, v16, &qword_280211268, &qword_267B1A510);
      swift_storeEnumTagMultiPayload();
      sub_267AFB17C();
      sub_267AFB45C();
      sub_267B17080();
      v65 = v19;
    }

    else
    {
      v66 = sub_267B17510();
      v67 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36));
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
      v69 = *MEMORY[0x277CE1050];
      v70 = sub_267B17530();
      (*(*(v70 - 8) + 104))(v67 + v68, v69, v70);
      *v67 = swift_getKeyPath();
      *v31 = v66;
      sub_267B172B0();
      v71 = v131;
      v72 = v132;
      (*(v131 + 104))(v28, *MEMORY[0x277CE0A10], v132);
      v73 = sub_267B172A0();

      (*(v71 + 8))(v28, v72);
      v74 = swift_getKeyPath();
      v75 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
      *v75 = v74;
      v75[1] = v73;
      v76 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211288, &qword_267B1A590) + 36));
      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
      sub_267B17060();
      v78 = sub_267B17070();
      __swift_storeEnumTagSinglePayload(v76 + v77, 0, 1, v78);
      *v76 = swift_getKeyPath();
      v56 = a1;
      sub_267AF5DC4();
      sub_267B17650();
      sub_267B16D20();
      v79 = (v31 + *(v138 + 36));
      v80 = v162;
      *v79 = v161;
      v79[1] = v80;
      v79[2] = v163;
      v63 = &qword_280211258;
      v64 = &qword_267B1A500;
      sub_267AEBA8C(v31, v16, &qword_280211258, &qword_267B1A500);
      swift_storeEnumTagMultiPayload();
      sub_267AFB17C();
      sub_267AFB45C();
      sub_267B17080();
      v65 = v31;
    }

    sub_267AEC1D4(v65, v63, v64);
    sub_267AEBA8C(v22, v25, &qword_280211270, &qword_267B1A518);
    swift_storeEnumTagMultiPayload();
    sub_267AFB668();
    sub_267AFB6EC();
    sub_267B17080();
    v81 = v22;
    v82 = &qword_280211270;
    v83 = &qword_267B1A518;
  }

  sub_267AEC1D4(v81, v82, v83);
  sub_267AFA7C8(v56, &v146);
  v141 = v146;
  v140 = v147;
  v139 = v148;
  v138 = v149;
  v84 = v150;
  v137 = swift_getKeyPath();
  v158 = v84;
  v157 = 0;
  v124 = sub_267B171F0();
  v123 = swift_getKeyPath();
  v135 = v158;
  LODWORD(v136) = v157;
  v85 = v56 + *(v133 + 20);
  v86 = v130;
  v87 = v126;
  if (*(v85 + v130[12]) == 1)
  {
    v88 = v125;
    sub_267AFA174(v125);
    v89 = v88;
    v91 = v143;
    sub_267AEBA3C(v89, v143, &qword_2802112A8, &qword_267B1A5D0);
    v90 = 0;
  }

  else
  {
    v90 = 1;
    v91 = v143;
  }

  v92 = 1;
  __swift_storeEnumTagSinglePayload(v91, v90, 1, v87);
  if (*(v85 + v86[13]) == 1)
  {
    v93 = sub_267B17510();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520);
    v95 = v125;
    v96 = (v125 + *(v94 + 36));
    v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
    v98 = *MEMORY[0x277CE1050];
    v99 = sub_267B17530();
    (*(*(v99 - 8) + 104))(v96 + v97, v98, v99);
    *v96 = swift_getKeyPath();
    *v95 = v93;
    sub_267B172B0();
    v100 = v131;
    v101 = v132;
    (*(v131 + 104))(v28, *MEMORY[0x277CE0A10], v132);
    v102 = sub_267B172A0();

    (*(v100 + 8))(v28, v101);
    v103 = swift_getKeyPath();
    v104 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
    *v104 = v103;
    v104[1] = v102;
    v105 = sub_267B17480();
    v106 = swift_getKeyPath();
    v107 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112B8, &qword_267B1A5D8) + 36));
    *v107 = v106;
    v107[1] = v105;
    v108 = (v95 + *(v87 + 36));
    v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
    sub_267B17060();
    v110 = sub_267B17070();
    __swift_storeEnumTagSinglePayload(v108 + v109, 0, 1, v110);
    *v108 = swift_getKeyPath();
    sub_267AEBA3C(v95, v134, &qword_2802112A8, &qword_267B1A5D0);
    v92 = 0;
  }

  v111 = v134;
  __swift_storeEnumTagSinglePayload(v134, v92, 1, v87);
  v112 = v142;
  sub_267AEBA8C(v144, v142, &qword_280211370, &qword_267B1A6E0);
  v113 = v91;
  v114 = v127;
  sub_267AEBA8C(v113, v127, &qword_280211358, &qword_267B1A6C8);
  v115 = v128;
  sub_267AEBA8C(v111, v128, &qword_280211358, &qword_267B1A6C8);
  v116 = v129;
  sub_267AEBA8C(v112, v129, &qword_280211370, &qword_267B1A6E0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211388, &qword_267B1A6E8);
  v118 = v117[12];
  __src[0] = v141;
  __src[1] = v140;
  __src[2] = v139;
  __src[3] = v138;
  LOBYTE(__src[4]) = v135;
  *(&__src[4] + 1) = *v160;
  HIDWORD(__src[4]) = *&v160[3];
  __src[5] = v137;
  __src[6] = 1;
  LOBYTE(__src[7]) = v136;
  *(&__src[7] + 1) = *v159;
  HIDWORD(__src[7]) = *&v159[3];
  v119 = v123;
  v120 = v124;
  __src[8] = v123;
  __src[9] = v124;
  memcpy((v116 + v118), __src, 0x50uLL);
  v121 = v116 + v117[16];
  *v121 = 0;
  *(v121 + 8) = 0;
  sub_267AEBA8C(v114, v116 + v117[20], &qword_280211358, &qword_267B1A6C8);
  sub_267AEBA8C(v115, v116 + v117[24], &qword_280211358, &qword_267B1A6C8);
  sub_267AEBA8C(__src, &v146, &qword_280211390, &qword_267B1A6F0);
  sub_267AEC1D4(v111, &qword_280211358, &qword_267B1A6C8);
  sub_267AEC1D4(v143, &qword_280211358, &qword_267B1A6C8);
  sub_267AEC1D4(v144, &qword_280211370, &qword_267B1A6E0);
  sub_267AEC1D4(v115, &qword_280211358, &qword_267B1A6C8);
  sub_267AEC1D4(v114, &qword_280211358, &qword_267B1A6C8);
  v146 = v141;
  v147 = v140;
  v148 = v139;
  v149 = v138;
  LOBYTE(v150) = v135;
  *(&v150 + 1) = *v160;
  HIDWORD(v150) = *&v160[3];
  v151 = v137;
  v152 = 1;
  v153 = v136;
  *v154 = *v159;
  *&v154[3] = *&v159[3];
  v155 = v119;
  v156 = v120;
  sub_267AEC1D4(&v146, &qword_280211390, &qword_267B1A6F0);
  return sub_267AEC1D4(v142, &qword_280211370, &qword_267B1A6E0);
}

uint64_t sub_267AFA174@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_267B17280();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_267B17510();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
  v10 = *MEMORY[0x277CE1050];
  v11 = sub_267B17530();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  *a1 = v7;
  sub_267B172B0();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0A10], v2);
  v12 = sub_267B172A0();

  (*(v3 + 8))(v6, v2);
  KeyPath = swift_getKeyPath();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  v15 = [objc_opt_self() tertiaryLabelColor];
  v16 = sub_267B17470();
  v17 = swift_getKeyPath();
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112B8, &qword_267B1A5D8) + 36));
  *v18 = v17;
  v18[1] = v16;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112A8, &qword_267B1A5D0) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
  sub_267B17060();
  v21 = sub_267B17070();
  __swift_storeEnumTagSinglePayload(v19 + v20, 0, 1, v21);
  result = swift_getKeyPath();
  *v19 = result;
  return result;
}

uint64_t sub_267AFA428(uint64_t a1)
{
  v2 = sub_267B165B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = a1 + *(type metadata accessor for MessageView() + 20);
  v12 = type metadata accessor for WidgetMessage();
  sub_267AEBA8C(v11 + *(v12 + 56), v10, &qword_280210EF8, &qword_267B19EB0);
  v13 = sub_267B16500();
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    sub_267AEC1D4(v10, &qword_280210EF8, &qword_267B19EB0);
    v14 = *a1;
    if (*a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_267B164F0();
    (*(*(v13 - 8) + 8))(v10, v13);
    v14 = *a1;
    if (*a1)
    {
LABEL_5:
      v15 = v14;
      sub_267B165A0();
      sub_267B178F0();

      return (*(v3 + 8))(v6, v2);
    }
  }

  v17 = *(a1 + 8);
  sub_267B17910();
  sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60]);
  result = sub_267B16DF0();
  __break(1u);
  return result;
}

double sub_267AFA6C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MessageView();
  v5 = a1 + *(v4 + 20);
  if (*(v5 + 24))
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = *(a1 + *(v4 + 32));
  }

  sub_267ADCFA4();

  sub_267B17340();
  sub_267B17080();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

double sub_267AFA7C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MessageView();
  v5 = a1 + *(v4 + 20);
  if (*(v5 + 40))
  {
    v7 = *(v5 + 32);
  }

  else
  {
    v7 = *(a1 + *(v4 + 36));
  }

  sub_267ADCFA4();

  sub_267B17340();
  sub_267B17080();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_267AFA8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267B17000();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_267B17010();
  v22 = sub_267B17330();
  v23 = v4;
  v6 = v5;
  v21 = v7;
  sub_267B16FF0();
  sub_267B16FE0();
  sub_267B17520();
  sub_267B16FC0();

  sub_267B16FE0();
  sub_267B16FD0();
  sub_267B16FE0();
  sub_267B17020();
  v8 = sub_267B17330();
  v10 = v9;
  v12 = v11;
  sub_267B170B0();
  v13 = sub_267B17310();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_267AEC140(v8, v10, v12 & 1);

  *a1 = v22;
  *(a1 + 8) = v6;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17 & 1;
  *(a1 + 56) = v19;
  sub_267AFB658(v22, v6, v21 & 1);

  sub_267AFB658(v13, v15, v17 & 1);

  sub_267AEC140(v13, v15, v17 & 1);

  sub_267AEC140(v22, v6, v21 & 1);
}

uint64_t sub_267AFAB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AFABA4()
{
  v1 = type metadata accessor for MessageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = (v0 + v3 + v1[5]);
  v7 = *(v6 + 1);

  v8 = *(v6 + 3);

  v9 = *(v6 + 5);

  v10 = *(v6 + 7);

  v11 = *(v6 + 9);

  v12 = type metadata accessor for WidgetMessage();
  v13 = v12[9];
  v14 = sub_267B16530();
  OUTLINED_FUNCTION_0(v14);
  (*(v15 + 8))(&v6[v13]);
  v16 = v12[14];
  v17 = sub_267B16500();
  if (!__swift_getEnumTagSinglePayload(&v6[v16], 1, v17))
  {
    (*(*(v17 - 8) + 8))(&v6[v16], v17);
  }

  OUTLINED_FUNCTION_4_1(v12[16]);
  OUTLINED_FUNCTION_4_1(v12[17]);
  OUTLINED_FUNCTION_4_1(v12[19]);
  OUTLINED_FUNCTION_4_1(v12[20]);
  OUTLINED_FUNCTION_4_1(v12[21]);
  OUTLINED_FUNCTION_4_1(v12[22]);
  OUTLINED_FUNCTION_4_1(v12[23]);
  OUTLINED_FUNCTION_4_1(v12[24]);
  OUTLINED_FUNCTION_4_1(v12[25]);
  OUTLINED_FUNCTION_4_1(v12[26]);
  OUTLINED_FUNCTION_4_1(v12[27]);
  OUTLINED_FUNCTION_4_1(v12[28]);
  OUTLINED_FUNCTION_4_1(v12[29]);
  OUTLINED_FUNCTION_4_1(v12[30]);
  OUTLINED_FUNCTION_4_1(v12[31]);
  OUTLINED_FUNCTION_4_1(v12[32]);
  OUTLINED_FUNCTION_4_1(v12[33]);
  OUTLINED_FUNCTION_3_2(v1[8]);

  OUTLINED_FUNCTION_3_2(v1[9]);

  OUTLINED_FUNCTION_3_2(v1[10]);

  v18 = v1[11];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111D8, &qword_267B1A450);
  OUTLINED_FUNCTION_0(v19);
  (*(v20 + 8))(v5 + v18);
  OUTLINED_FUNCTION_3_2(v1[12]);

  OUTLINED_FUNCTION_3_2(v1[13]);

  OUTLINED_FUNCTION_3_2(v1[14]);

  v21 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E10, &unk_267B19D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_267B17030();
    OUTLINED_FUNCTION_0(v22);
    (*(v23 + 8))(v5 + v21);
  }

  else
  {
    v24 = *(v5 + v21);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267AFAEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AFAF04()
{
  v1 = *(type metadata accessor for MessageView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_267AFA428(v2);
}

uint64_t sub_267AFAFAC(uint64_t a1)
{
  v2 = sub_267B17530();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_267B16E30();
}

uint64_t sub_267AFB080(uint64_t *a1)
{
  v1 = *a1;

  return sub_267B16EA0();
}

uint64_t sub_267AFB0D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211300, &qword_267B1A620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_267AEBA8C(a1, &v6 - v4, &qword_280211300, &qword_267B1A620);
  return sub_267B16F10();
}

unint64_t sub_267AFB17C()
{
  result = qword_280211298;
  if (!qword_280211298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211268, &qword_267B1A510);
    sub_267AFB514(&qword_2802112A0, &qword_2802112A8, &qword_267B1A5D0, sub_267AFB234);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211298);
  }

  return result;
}

unint64_t sub_267AFB234()
{
  result = qword_2802112B0;
  if (!qword_2802112B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802112B8, &qword_267B1A5D8);
    sub_267AFB2EC();
    sub_267ADCE94(&qword_2802112D0, &qword_2802112D8, &qword_267B1A5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802112B0);
  }

  return result;
}

unint64_t sub_267AFB2EC()
{
  result = qword_2802112C0;
  if (!qword_2802112C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211280, &qword_267B1A588);
    sub_267AFB3A4();
    sub_267ADCE94(&qword_2802108F0, &qword_2802108F8, &qword_267B18B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802112C0);
  }

  return result;
}

unint64_t sub_267AFB3A4()
{
  result = qword_2802112C8;
  if (!qword_2802112C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211278, &qword_267B1A520);
    sub_267ADCE94(&qword_280210E78, &qword_280210E58, &qword_267B19D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802112C8);
  }

  return result;
}

unint64_t sub_267AFB45C()
{
  result = qword_2802112E8;
  if (!qword_2802112E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211258, &qword_267B1A500);
    sub_267AFB514(&qword_2802112F0, &qword_280211288, &qword_267B1A590, sub_267AFB2EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802112E8);
  }

  return result;
}

uint64_t sub_267AFB514(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_267ADCE94(&qword_2802112E0, &qword_280211290, &qword_267B1A598);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267AFB5C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267B16E90();
  *a1 = result;
  return result;
}

uint64_t sub_267AFB5F8(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_267B11D9C(a1);
}

uint64_t objectdestroy_18Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267AFB658(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_267AFB668()
{
  result = qword_280211378;
  if (!qword_280211378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211368, &qword_267B1A6D8);
    sub_267AFB45C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211378);
  }

  return result;
}

unint64_t sub_267AFB6EC()
{
  result = qword_280211380;
  if (!qword_280211380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211270, &qword_267B1A518);
    sub_267AFB17C();
    sub_267AFB45C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211380);
  }

  return result;
}

unint64_t sub_267AFB778()
{
  result = qword_2802113D8;
  if (!qword_2802113D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802113C8, &qword_267B1A728);
    sub_267AFB17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802113D8);
  }

  return result;
}

uint64_t sub_267AFB7FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211210, &qword_267B1A4C0);
  OUTLINED_FUNCTION_1_5();
  sub_267ADCE94(v0, &qword_280211210, &qword_267B1A4C0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_267AFB8A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267AFB8E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267AFB958()
{
  objc_allocWithZone(type metadata accessor for RecipientViewController_Phone());
  sub_267AFC1B0(v0, v2);
  return sub_267AFCC1C(v0);
}

uint64_t sub_267AFB9A4(void *a1)
{
  v2 = v1;
  v4 = sub_267B176B0();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_267B176D0();
  v12 = OUTLINED_FUNCTION_0_0(v29);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v19 = sub_267B16BA0();
  __swift_project_value_buffer(v19, static Logger.siriMail);
  v20 = sub_267B16B80();
  v21 = sub_267B17AB0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_267ADA000, v20, v21, "RecipientTextView.updateUIViewController(_:context:)", v22, 2u);
    MEMORY[0x26D600E60](v22, -1, -1);
  }

  sub_267AFC0C8();
  v23 = sub_267B17AC0();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  memcpy((v24 + 24), v2, 0x68uLL);
  aBlock[4] = sub_267AFC18C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267AFBDE8;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);
  v26 = a1;
  sub_267AFC1B0(v2, v30);

  sub_267B176C0();
  v30[0] = MEMORY[0x277D84F90];
  sub_267AFC5D4(&unk_280211650, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113F8, &qword_267B1A890);
  sub_267AFC1E8();
  sub_267B17B30();
  MEMORY[0x26D600640](0, v18, v11, v25);
  _Block_release(v25);

  (*(v7 + 8))(v11, v4);
  return (*(v14 + 8))(v18, v29);
}

void sub_267AFBD18(uint64_t a1, uint64_t a2)
{
  sub_267AFC6F8();
  v4 = v3;
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211400, &qword_267B1ABF0);
  MEMORY[0x26D600130](&v7);
  v6 = sub_267AFC3C0(v4, v7);

  if ((v6 & 1) == 0)
  {
    v8 = *(a2 + 64);
    v9 = *(a2 + 80);
    MEMORY[0x26D600130](&v7, v5);
    sub_267AFC8E4();
  }
}

uint64_t sub_267AFBDE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_267AFBEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267AFC61C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_267AFBF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267AFC61C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_267AFBFBC()
{
  sub_267AFC61C();
  sub_267B17120();
  __break(1u);
}

unint64_t sub_267AFBFE8()
{
  result = qword_2802113E8;
  if (!qword_2802113E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802113E8);
  }

  return result;
}

uint64_t sub_267AFC03C()
{
  v1 = [objc_opt_self() stringFromContact:v0 style:0];
  if (!v1)
  {
    v1 = [v0 givenName];
  }

  v2 = sub_267B17980();

  return v2;
}

unint64_t sub_267AFC0C8()
{
  result = qword_2802113F0;
  if (!qword_2802113F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802113F0);
  }

  return result;
}

uint64_t sub_267AFC10C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_267AFC1E8()
{
  result = qword_280211660;
  if (!qword_280211660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802113F8, &qword_267B1A890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211660);
  }

  return result;
}

uint64_t sub_267AFC24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMessage();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
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
        sub_267AFC670(v14, v11);
        sub_267AFC670(v15, v8);
        v17 = static WidgetMessage.__derived_struct_equals(_:_:)();
        sub_267AEB1F8(v8);
        sub_267AEB1F8(v11);
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

uint64_t sub_267AFC3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267B168C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_267AFC5D4(&qword_280211408, MEMORY[0x277D5CA58]);
    v22 = sub_267B17950();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_267AFC5D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267AFC61C()
{
  result = qword_280211410;
  if (!qword_280211410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211410);
  }

  return result;
}

uint64_t sub_267AFC670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AFC6D4(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void sub_267AFC6F8()
{
  OUTLINED_FUNCTION_11_2();
  v20 = sub_267B168C0();
  v1 = OUTLINED_FUNCTION_0_0(v20);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_267AFFF28(*(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView));
  if (v9)
  {
    v10 = sub_267AFFA70(v9);

    v11 = sub_267AFC6D4(v10);
    if (!v11)
    {
LABEL_11:

      OUTLINED_FUNCTION_10_2();
      return;
    }

    v12 = v11;
    v21 = MEMORY[0x277D84F90];
    sub_267ADF1AC(0, v11 & ~(v11 >> 63), 0);
    if ((v12 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v19 = v10 & 0xC000000000000001;
      v14 = v10;
      do
      {
        if (v19)
        {
          v15 = MEMORY[0x26D6006F0](v13, v10);
        }

        else
        {
          v15 = *(v10 + 8 * v13 + 32);
        }

        v16 = v15;
        sub_267AFCB5C();

        v18 = *(v21 + 16);
        v17 = *(v21 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_267ADF1AC(v17 > 1, v18 + 1, 1);
        }

        ++v13;
        *(v21 + 16) = v18 + 1;
        (*(v3 + 32))(v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v8, v20);
        v10 = v14;
      }

      while (v12 != v13);
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_267AFC8E4()
{
  OUTLINED_FUNCTION_11_2();
  v2 = v1;
  v3 = sub_267B168C0();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v29 = v10 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView);
  v12 = *(v2 + 16);
  if (v12)
  {
    v28 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView);
    v35 = MEMORY[0x277D84F90];
    sub_267ADF204(0, v12, 0);
    v13 = 0;
    v14 = v35;
    v32 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v31 = v2;
    v30 = (v6 + 8);
    v15 = v29;
    while (v13 < *(v2 + 16))
    {
      v16 = v6;
      (*(v6 + 16))(v15, v32 + *(v6 + 72) * v13, v3);
      v17 = sub_267B168B0();
      v19 = v18;
      v20 = sub_267B168A0();
      v22 = v21;
      v23 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
      v24 = sub_267AFFBF4(0, v17, v19, v20, v22, 0);
      if (!v24)
      {
        goto LABEL_12;
      }

      v25 = v24;
      v34 = sub_267B0033C(0, &qword_2802115F8, 0x277CFBCA0);
      *&v33 = v25;
      (*v30)(v15, v3);
      v35 = v14;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_267ADF204((v26 > 1), v27 + 1, 1);
        v15 = v29;
        v14 = v35;
      }

      ++v13;
      *(v14 + 16) = v27 + 1;
      sub_267AFFCE0(&v33, (v14 + 32 * v27 + 32));
      v2 = v31;
      v6 = v16;
      if (v12 == v13)
      {

        v11 = v28;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
LABEL_10:
    sub_267B001B4(v14, v11, MEMORY[0x277D84F70] + 8, &selRef_setRecipients_);
    OUTLINED_FUNCTION_10_2();
  }
}

uint64_t sub_267AFCB5C()
{
  v1 = v0;
  v2 = [v0 contact];
  if (v2)
  {
    v3 = v2;
    v4 = sub_267AFC03C();
    v6 = v5;
  }

  else
  {
    v4 = sub_267AFFF84(v0, &selRef_displayString);
    v6 = v7;
  }

  v8 = sub_267AFFF84(v1, &selRef_address);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v8 = v4;
    v9 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821BC300](v8, v9, v10, v11);
}

uint64_t sub_267AFCC1C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for ComposeRecipientTextView()) init];
  *&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint] = 0;
  if (sub_267AFC6D4(MEMORY[0x277D84F90]))
  {
    v5 = sub_267AFFCF0(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_cancellables] = v5;
  v6 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewController;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CFBC80]) init];
  v7 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D75B40]) init];
  *&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x277CFBC98]) initWithAutocompleteSearchType_];
  if (v8)
  {
    *&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_searchManager] = v8;
    v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_foundSearchResults] = 0;
    *&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID] = 0;
    memcpy(&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container], a1, 0x68uLL);
    sub_267AFC1B0(a1, v20);
    v19.receiver = v1;
    v19.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
    v10 = *&v9[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_searchManager];
    v11 = v9;
    [v10 setSearchTypes_];
    v12 = a1[11];
    if (v12)
    {
      v13 = v12;
      v14 = sub_267B178D0();

      v20[0] = v14;
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211608, &qword_267B1A8F0);
      sub_267ADCE94(&qword_280211610, &qword_280211608, &qword_267B1A8F0);
      sub_267B16BF0();

      swift_beginAccess();
      sub_267B16BB0();
      swift_endAccess();

      sub_267B0007C(a1);

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  v16 = a1[12];
  sub_267B17910();
  OUTLINED_FUNCTION_0_4();
  sub_267B00258(v17, v18);
  result = OUTLINED_FUNCTION_3_3();
  __break(1u);
  return result;
}

void sub_267AFCF04(uint64_t a1)
{
  v2 = sub_267B178E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D63F38])
  {
    (*(v3 + 96))(v6, v2);
    if (*v6 == 4)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        v9 = *(Strong + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView);

        [v9 resignFirstResponder];
      }
    }
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }
}

void sub_267AFD098()
{
  v1 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ComposeRecipientTextView()) init];
  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint) = 0;
  if (sub_267AFC6D4(MEMORY[0x277D84F90]))
  {
    v2 = sub_267AFFCF0(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_cancellables) = v2;
  v3 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewController;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CFBC80]) init];
  v4 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75B40]) init];
  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x277CFBC98]) initWithAutocompleteSearchType_];
  if (!v5)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_searchManager) = v5;
  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_foundSearchResults) = 0;
  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID) = 0;
  static Logger.logAndCrash(_:file:line:)(0xD000000000000025, 0x8000000267B23310, "/Library/Caches/com.apple.xbs/Sources/SiriMail/SiriMailUI/View/SendMail/Interactive/RecipientTextView/RecipientViewController_Phone.swift", 137, 2, 73);
  __break(1u);
}

void sub_267AFD1F4()
{
  OUTLINED_FUNCTION_11_2();
  ObjectType = swift_getObjectType();
  v2 = sub_267B168C0();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v102 = v9 - v8;
  v113.receiver = v0;
  v113.super_class = ObjectType;
  objc_msgSendSuper2(&v113, sel_viewDidLoad);
  v10 = *&v0[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView];
  v11 = &off_279C2B000;
  [v10 setDelegate_];
  v103 = v0;
  v12 = &v0[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container];
  v13 = *&v0[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container];
  v14 = *&v0[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 8];
  v15 = sub_267B17960();
  [v10 setLabel_];

  v16 = [objc_opt_self() preferredFontForTextStyle_];
  sub_267ADD088(v16);
  [v10 setSeparatorHidden_];
  [v10 setBackgroundColor_];
  v110 = *(v12 + 8);
  v111 = *(v12 + 72);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211400, &qword_267B1ABF0);
  MEMORY[0x26D600130](&v108, v17);
  v18 = v108;
  v19 = *(v108 + 16);
  if (v19)
  {
    v101 = v10;
    *&v108 = MEMORY[0x277D84F90];
    sub_267ADF204(0, v19, 0);
    v20 = 0;
    v21 = v108;
    v106 = v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v105 = v18;
    v104 = (v5 + 8);
    v22 = v102;
    while (v20 < *(v18 + 16))
    {
      v23 = v5;
      (*(v5 + 16))(v22, v106 + *(v5 + 72) * v20, v2);
      v24 = sub_267B168B0();
      v26 = v25;
      v27 = sub_267B168A0();
      v29 = v28;
      v30 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
      v31 = sub_267AFFBF4(0, v24, v26, v27, v29, 0);
      if (!v31)
      {
        goto LABEL_25;
      }

      v32 = v31;
      v112 = sub_267B0033C(0, &qword_2802115F8, 0x277CFBCA0);
      v110 = v32;
      (*v104)(v22, v2);
      *&v108 = v21;
      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_267ADF204((v33 > 1), v34 + 1, 1);
        v22 = v102;
        v21 = v108;
      }

      ++v20;
      *(v21 + 16) = v34 + 1;
      sub_267AFFCE0(&v110, (v21 + 32 * v34 + 32));
      v18 = v105;
      v5 = v23;
      if (v19 == v20)
      {

        v10 = v101;
        v11 = &off_279C2B000;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_10:
  sub_267B001B4(v21, v10, MEMORY[0x277D84F70] + 8, &selRef_setRecipients_);
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = [v103 view];
  if (!v35)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v35;
  [v35 addSubview_];

  v37 = *&v103[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewController];
  [v37 v11[103]];
  [v103 addChildViewController_];
  v38 = [v37 tableView];
  if (!v38)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v39 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView;
  v40 = *&v103[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView];
  *&v103[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView] = v38;
  v41 = v38;

  v42 = [objc_opt_self() clearColor];
  [v41 setBackgroundColor_];

  [*&v103[v39] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v103[v39] setKeyboardDismissMode_];
  [*&v103[v39] setEstimatedRowHeight_];
  [*&v103[v39] setEstimatedSectionHeaderHeight_];
  [*&v103[v39] setEstimatedSectionFooterHeight_];
  [*&v103[v39] setHidden_];
  v43 = [v103 view];
  if (!v43)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v44 = v43;
  [v43 addSubview_];

  sub_267B0033C(0, &qword_280211680, 0x277CCAAD0);
  v112 = type metadata accessor for ComposeRecipientTextView();
  v110 = v10;
  sub_267B0033C(0, &qword_280211688, 0x277CFBCB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v108 = 0u;
  v109 = 0u;
  v46 = v10;
  [ObjCClassFromMetadata preferredHeight];
  v48 = sub_267AFDBF4(&v110, 8, 0, &v108, 0, 1.0, v47);
  v49 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint;
  v50 = *&v103[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint];
  *&v103[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint] = v48;

  v51 = *&v103[v39];
  v112 = sub_267B0033C(0, &qword_280211690, 0x277D75B40);
  v110 = v51;
  v108 = 0u;
  v109 = 0u;
  v52 = v51;
  v53 = sub_267AFDBF4(&v110, 8, 0, &v108, 0, 1.0, 0.0);
  v54 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint;
  v55 = *&v103[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint];
  *&v103[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint] = v53;

  v57 = *&v103[v49];
  if (!v57)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  LODWORD(v56) = 1144750080;
  [v57 setPriority_];
  v107 = v54;
  v59 = *&v103[v54];
  if (!v59)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  LODWORD(v58) = 1132068864;
  [v59 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211698, &unk_267B1A920);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_267B1A8A0;
  v61 = [v46 topAnchor];
  v62 = OUTLINED_FUNCTION_12_1();
  if (!v62)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v63 = v62;
  v64 = [v62 topAnchor];

  v65 = [v19 constraintEqualToAnchor_];
  *(v60 + 32) = v65;
  v66 = [v46 leadingAnchor];
  v67 = OUTLINED_FUNCTION_12_1();
  if (!v67)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v68 = v67;
  v69 = [v67 leadingAnchor];

  v70 = [v19 constraintEqualToAnchor_];
  *(v60 + 40) = v70;
  v71 = [v46 trailingAnchor];
  v72 = OUTLINED_FUNCTION_12_1();
  if (!v72)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v73 = v72;
  v74 = [v72 trailingAnchor];

  v75 = [v19 constraintEqualToAnchor_];
  *(v60 + 48) = v75;
  v76 = *&v103[v49];
  if (!v76)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v60 + 56) = v76;
  v77 = *&v103[v39];
  v78 = v76;
  v79 = [v77 topAnchor];
  v80 = [v46 bottomAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  *(v60 + 64) = v81;
  v82 = [*&v103[v39] leadingAnchor];
  v83 = [v103 view];
  if (!v83)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v84 = v83;
  v85 = [v83 leadingAnchor];

  v86 = OUTLINED_FUNCTION_13_1();
  *(v60 + 72) = v86;
  v87 = [*&v103[v39] trailingAnchor];
  v88 = [v103 view];
  if (!v88)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v89 = v88;
  v90 = [v88 trailingAnchor];

  v91 = OUTLINED_FUNCTION_13_1();
  *(v60 + 80) = v91;
  v92 = [*&v103[v39] bottomAnchor];
  v93 = [v103 view];
  if (!v93)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v94 = v93;
  v95 = [v93 bottomAnchor];

  v96 = OUTLINED_FUNCTION_13_1();
  *(v60 + 88) = v96;
  v97 = *&v103[v107];
  if (v97)
  {
    v98 = objc_opt_self();
    *(v60 + 96) = v97;
    v99 = v97;
    v100 = sub_267B179E0();

    [v98 activateConstraints_];

    OUTLINED_FUNCTION_10_2();
    return;
  }

LABEL_38:
  __break(1u);
}

id sub_267AFDBF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, double a6, double a7)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_267B17D40();
  v15 = a4[3];
  if (v15)
  {
    v16 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v25 = a5;
    v26 = a2;
    v17 = a3;
    v18 = *(v15 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v16);
    v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = sub_267B17D40();
    (*(v18 + 8))(v21, v15);
    a3 = v17;
    a5 = v25;
    a2 = v26;
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v22 = 0;
  }

  v23 = [swift_getObjCClassFromMetadata() constraintWithItem:v14 attribute:a2 relatedBy:a3 toItem:v22 attribute:a5 multiplier:a6 constant:a7];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v23;
}

id sub_267AFDE10()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  return sub_267AFDE4C();
}

id sub_267AFDE4C()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = result;
  [result systemLayoutSizeFittingSize_];
  v14 = v13;
  v16 = v15;

  return [v0 setPreferredContentSize_];
}

void sub_267AFDF90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView;
  [*(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView) setHidden_];
  [*(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView) setSeparatorHidden_];
  sub_267B000D0(a1, *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewController));
  v4 = *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint);
  if (v4)
  {
    v5 = *(v1 + v3);
    v6 = v4;
    [v5 contentSize];
    [v6 setConstant_];

    [*(v1 + v3) setNeedsUpdateConstraints];
    v8 = *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 16);
    v9 = *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 24);
    v10 = *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 32);
    v11 = *(v1 + v3);

    [v11 isHidden];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211630, &qword_267B1A900);
    sub_267B175D0();
  }

  else
  {
    __break(1u);
  }
}

id sub_267AFE158()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_267AFE2D0()
{
  v1 = v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container;
  v2 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 40);
  v3 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 48);
  v4 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 56);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211630, &qword_267B1A900);
  OUTLINED_FUNCTION_14_1();
  v5 = *(v1 + 88);
  if (v5)
  {
    v6 = v5;
    sub_267B178A0();
  }

  else
  {
    v7 = *(v1 + 96);
    sub_267B17910();
    OUTLINED_FUNCTION_0_4();
    sub_267B00258(v8, v9);
    OUTLINED_FUNCTION_3_3();
    __break(1u);
  }
}

void sub_267AFE3D8(uint64_t a1, void *a2)
{
  v4 = (v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container);
  v5 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 40);
  v6 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 48);
  v7 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 56);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211630, &qword_267B1A900);
  OUTLINED_FUNCTION_14_1();
  v8 = v4[11];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  sub_267B178A0();

  v4 = [a2 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211678, &qword_267B1A918);
  v10 = sub_267B179F0();

  if (!sub_267AFC6D4(v10))
  {

    return;
  }

  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
      goto LABEL_6;
    }

    __break(1u);
LABEL_12:
    v14 = v4[12];
    sub_267B17910();
    OUTLINED_FUNCTION_0_4();
    sub_267B00258(v15, v16);
    OUTLINED_FUNCTION_3_3();
    __break(1u);
    return;
  }

  v11 = MEMORY[0x26D6006F0](0, v10);
LABEL_6:
  v12 = v11;

  v13 = [v12 value];

  if (v13)
  {
    sub_267B17970();
  }
}

void sub_267AFE63C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container;
  v6 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 48);
  v7 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 56);
  *&v21 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 40);
  *(&v21 + 1) = v6;
  LOBYTE(v22) = v7;
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211630, &qword_267B1A900);
  sub_267B175D0();
  v8 = *(v5 + 88);
  if (v8)
  {
    v9 = v8;
    sub_267B178A0();

    if ([a2 value])
    {
      sub_267B17B20();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21 = v19;
    v22 = v20;
    if (*(&v20 + 1))
    {
      if (swift_dynamicCast())
      {
        v10 = *(v3 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView);
        v11 = [a2 contact];
        v12 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
        v13 = sub_267AFFB68(v11, v17, v18, 0);
        [v10 addRecipient_];
      }
    }

    else
    {
      sub_267B002D4(&v21);
    }
  }

  else
  {
    v14 = *(v5 + 96);
    sub_267B17910();
    OUTLINED_FUNCTION_0_4();
    sub_267B00258(v15, v16);
    OUTLINED_FUNCTION_3_3();
    __break(1u);
  }
}

void sub_267AFE870()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView);
  v3 = v1;
  v4 = [v2 textView];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 contentSize];
  v7 = v6;

  [v3 setConstant_];

  [v2 setNeedsUpdateConstraints];
}

void sub_267AFEA24()
{
  OUTLINED_FUNCTION_11_2();
  v2 = v1;
  v4 = v3;
  v5 = sub_267B176B0();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v27 = sub_267B176D0();
  v9 = OUTLINED_FUNCTION_0_0(v27);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  sub_267B0033C(0, &qword_2802113F0, 0x277D85C78);
  v17 = sub_267B17AC0();
  OUTLINED_FUNCTION_9_1();
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  v28[4] = v4;
  v28[5] = v18;
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_5(COERCE_DOUBLE(1107296256));
  v28[2] = v19;
  v28[3] = v2;
  v20 = _Block_copy(v28);
  v21 = v0;

  sub_267B176C0();
  v28[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6_3();
  sub_267B00258(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113F8, &qword_267B1A890);
  OUTLINED_FUNCTION_7_4(&qword_280211660);
  OUTLINED_FUNCTION_8_2();
  sub_267B17B30();
  v24 = OUTLINED_FUNCTION_16_1();
  MEMORY[0x26D600640](v24);
  _Block_release(v20);

  v25 = OUTLINED_FUNCTION_15_1();
  v26(v25);
  (*(v11 + 8))(v16, v27);
  OUTLINED_FUNCTION_10_2();
}

void sub_267AFECE0(id a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      a3 = sub_267B17960();
    }

    v4 = a3;
    [a1 addAddress_];
  }

  else
  {
    __break(1u);
  }
}

id sub_267AFEDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(MEMORY[0x277CFBCA0]);

  return sub_267AFFB68(0, a2, a3, 0);
}

void sub_267AFEEC8()
{
  OUTLINED_FUNCTION_11_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_267B176B0();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v28 = sub_267B176D0();
  v10 = OUTLINED_FUNCTION_0_0(v28);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  if (v3)
  {
    sub_267AFF120(v5, v3);
    sub_267B0033C(0, &qword_2802113F0, 0x277D85C78);
    v18 = sub_267B17AC0();
    OUTLINED_FUNCTION_9_1();
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    v29[4] = sub_267B00224;
    v29[5] = v19;
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_4_5(COERCE_DOUBLE(1107296256));
    v29[2] = v20;
    v29[3] = &block_descriptor_0;
    v21 = _Block_copy(v29);
    v22 = v1;

    sub_267B176C0();
    v29[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6_3();
    sub_267B00258(v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113F8, &qword_267B1A890);
    OUTLINED_FUNCTION_7_4(&qword_280211660);
    OUTLINED_FUNCTION_8_2();
    sub_267B17B30();
    v25 = OUTLINED_FUNCTION_16_1();
    MEMORY[0x26D600640](v25);
    _Block_release(v21);

    v26 = OUTLINED_FUNCTION_15_1();
    v27(v26);
    (*(v12 + 8))(v17, v28);
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_267AFF120(uint64_t a1, unint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_foundSearchResults) = 0;
  v5 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_searchManager);
  v6 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID;
  if (*(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID))
  {
    [*(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_searchManager) cancelTaskWithID_];
    v7 = *(v2 + v6);
    *(v2 + v6) = 0;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = sub_267B0014C(a1, a2, 0, v2, v5);
    v10 = *(v2 + v6);
    *(v2 + v6) = v9;

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];

    sub_267AFDF90(v11);
  }
}

uint64_t sub_267AFF208(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 64);
  v3 = *(a1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 72);
  sub_267AFC6F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211400, &qword_267B1ABF0);
  return sub_267B175D0();
}

void sub_267AFF374(uint64_t a1, void (*a2)(void))
{
  v3 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 88);
  if (v3)
  {
    v8 = v3;
    a2();
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 96);
    sub_267B17910();
    OUTLINED_FUNCTION_0_4();
    sub_267B00258(v6, v7);
    OUTLINED_FUNCTION_3_3();
    __break(1u);
  }
}

void sub_267AFF488()
{
  v1 = v0;
  v9 = *&v0[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 40];
  v10 = *&v0[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 48];
  v11 = v0[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 56];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211630, &qword_267B1A900);
  OUTLINED_FUNCTION_14_1();
  v2 = [objc_allocWithZone(MEMORY[0x277CBDC18]) init];
  [v2 setDelegate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211638, &qword_267B1A908);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_267B1A8B0;
  v4 = *MEMORY[0x277CBCFC0];
  *(v3 + 32) = sub_267B17980();
  *(v3 + 40) = v5;
  sub_267B001B4(v3, v2, MEMORY[0x277D837D0], &selRef_setDisplayedPropertyKeys_);
  sub_267B0033C(0, &unk_280211640, 0x277CCAC30);
  v6 = sub_267B17A70();
  [v2 setPredicateForEnablingContact_];

  v7 = sub_267B17A70();
  [v2 setPredicateForSelectionOfContact_];

  v8 = sub_267B17A70();
  [v2 setPredicateForSelectionOfProperty_];

  [v1 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_267AFF6DC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_foundSearchResults) = 1;
  if (a1 && (v2 = sub_267AFF748(a1)) != 0)
  {
    v3 = v2;
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  sub_267AFDF90(v3);
}

uint64_t sub_267AFF748(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_267B17BE0();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_267AFFFE4(v3, v6);
    sub_267B0033C(0, &qword_2802115F8, 0x277CFBCA0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_267B17BC0();
    v4 = *(v7 + 16);
    sub_267B17BF0();
    sub_267B17C00();
    sub_267B17BD0();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_267AFF8D8()
{
  if ((*(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_foundSearchResults) & 1) == 0)
  {
    sub_267AFDF90(MEMORY[0x277D84F90]);
  }

  v1 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID);
  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID) = 0;
}

void sub_267AFF9E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView;
    v3 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView);
    v4 = v1;
    [v3 contentSize];
    [v4 setConstant_];

    v6 = *(v0 + v2);

    [v6 setNeedsUpdateConstraints];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_267AFFA70(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_267B17BE0();
    v4 = a1 + 32;
    do
    {
      sub_267AFFFE4(v4, &v6);
      sub_267B0033C(0, &qword_2802115F8, 0x277CFBCA0);
      swift_dynamicCast();
      sub_267B17BC0();
      v5 = *(v7 + 16);
      sub_267B17BF0();
      sub_267B17C00();
      sub_267B17BD0();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id sub_267AFFB68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_267B17960();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithContact:a1 address:v8 kind:a4];

  return v9;
}

id sub_267AFFBF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (!a3)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_267B17960();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_267B17960();

LABEL_6:
  v13 = [v7 initWithContact:a1 address:v11 displayString:v12 kind:a6];

  return v13;
}

unint64_t sub_267AFFCBC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_267AFFCE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_267AFFCF0(uint64_t a1)
{
  v1 = a1;
  if (sub_267AFC6D4(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211618, &qword_267B1A8F8);
    v2 = sub_267B17B40();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v19 = sub_267AFC6D4(v1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v17 = v1;
    v18 = v1 & 0xC000000000000001;
    v16 = v1 + 32;
    while (1)
    {
      sub_267AFFCBC(v3, v18 == 0, v1);
      if (v18)
      {
        result = MEMORY[0x26D6006F0](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v16 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      sub_267B16BC0();
      sub_267B00258(&qword_280211620, MEMORY[0x277CBCDA8]);
      result = sub_267B17940();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v20 = *(*(v2 + 48) + 8 * v10);
        sub_267B00258(&qword_280211628, MEMORY[0x277CBCDA8]);
        if (sub_267B17950())
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v14 = *(v2 + 16);
      v7 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v15;
LABEL_17:
      v1 = v17;
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_267AFFF28(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267B179F0();

  return v3;
}

uint64_t sub_267AFFF84(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_267B17980();

  return v4;
}

uint64_t sub_267AFFFE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_267B00040()
{
  MEMORY[0x26D600F00](v0 + 16);
  OUTLINED_FUNCTION_9_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_267B000D0(uint64_t a1, void *a2)
{
  sub_267B0033C(0, &qword_2802115F8, 0x277CFBCA0);
  v3 = sub_267B179E0();
  [a2 setRecipients_];
}

id sub_267B0014C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_267B17960();
  v9 = [a5 searchForText:v8 withAutocompleteFetchContext:a3 consumer:a4];

  return v9;
}

void sub_267B001B4(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v6 = sub_267B179E0();

  [a2 *a4];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_267B00258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267B002A0()
{
  OUTLINED_FUNCTION_9_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_267B002D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211670, &qword_267B1A910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B0033C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_267B16DF0();
}

uint64_t OUTLINED_FUNCTION_7_4(unint64_t *a1)
{

  return sub_267ADCE94(a1, v1, v2);
}

id OUTLINED_FUNCTION_12_1()
{

  return [v1 (v0 + 2808)];
}

id OUTLINED_FUNCTION_13_1()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_267B175D0();
}

uint64_t sub_267B00550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_267B00648(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for SceneClientView()
{
  result = qword_280211768;
  if (!qword_280211768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267B00774()
{
  sub_267B00844();
  if (v0 <= 0x3F)
  {
    sub_267AEB810();
    if (v1 <= 0x3F)
    {
      sub_267B008D8();
      if (v2 <= 0x3F)
      {
        sub_267AE0D9C();
        if (v3 <= 0x3F)
        {
          sub_267AEB8A4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_267B00844()
{
  if (!qword_280211778)
  {
    type metadata accessor for SiriMailModel();
    sub_267B0656C(&qword_280211780, type metadata accessor for SiriMailModel);
    v0 = sub_267B16DA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280211778);
    }
  }
}

void sub_267B008D8()
{
  if (!qword_280211788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    sub_267B05AE0(&qword_280211798, &qword_2802117A0);
    v0 = sub_267B16C50();
    if (!v1)
    {
      atomic_store(v0, &qword_280211788);
    }
  }
}

uint64_t sub_267B0099C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211400, &qword_267B1ABF0);
  sub_267AF3DE0(&qword_2802118E8, &unk_2802118F0);
  sub_267B175F0();
  sub_267B17600();
  return 1;
}

uint64_t sub_267B00A78()
{
  v3 = *(v0 + 16);
  v6 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
  sub_267B17560();
  if (v2 != 1)
  {
    return 0;
  }

  v4 = *(v0 + 32);
  v7 = *(v0 + 40);
  sub_267B17560();
  v5 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_267B17560();
  return v2;
}

uint64_t sub_267B00B40@<X0>(uint64_t a1@<X8>)
{
  sub_267B17550();
  OUTLINED_FUNCTION_11_3();
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_11_3();
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_11_3();
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_11_3();
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  v10 = type metadata accessor for SceneClientView();
  v11 = v10[9];
  sub_267B16850();
  OUTLINED_FUNCTION_3_4();
  sub_267B0656C(v12, v13);
  sub_267B16C40();
  v14 = (a1 + v10[10]);
  sub_267B17910();
  OUTLINED_FUNCTION_5_4();
  sub_267B0656C(v15, v16);
  *v14 = sub_267B16E00();
  v14[1] = v17;
  v18 = v10[11];
  *(a1 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SiriMailModel();
  OUTLINED_FUNCTION_4_6();
  sub_267B0656C(v19, v20);
  result = sub_267B16D70();
  *a1 = result;
  *(a1 + 8) = v22;
  return result;
}

uint64_t sub_267B00CEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v3 = sub_267B16860();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v96 = v5;
  v97 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v95 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v74 - v10;
  v11 = type metadata accessor for SceneClientView();
  v12 = v11 - 8;
  v91 = *(v11 - 8);
  v90 = *(v91 + 64);
  MEMORY[0x28223BE20](v11);
  v89 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_0(v92);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  v88 = &v74 - v17;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117A8, &qword_267B1A9C8);
  v18 = OUTLINED_FUNCTION_0_0(v86);
  v81 = v19;
  v80 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_3();
  v79 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v74 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117B0, &qword_267B1A9D0);
  v25 = OUTLINED_FUNCTION_0_0(v78);
  v85 = v26;
  v84 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_3();
  v83 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v74 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117B8, &qword_267B1A9D8);
  OUTLINED_FUNCTION_16_0(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v35);
  v37 = &v74 - v36;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117C0, &qword_267B1A9E0);
  OUTLINED_FUNCTION_0(v82);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v40);
  v42 = &v74 - v41;
  *v37 = sub_267B17050();
  *(v37 + 1) = 0;
  v37[16] = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117C8, &qword_267B1A9E8);
  sub_267B01580(v2, &v37[*(v43 + 44)]);
  v44 = *v2;
  v87 = *(v2 + 8);
  v98 = v2;
  type metadata accessor for SiriMailModel();
  OUTLINED_FUNCTION_4_6();
  sub_267B0656C(v45, v46);
  sub_267B16D80();
  swift_getKeyPath();
  v75 = v31;
  sub_267B16D90();

  v77 = *(v12 + 44);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
  sub_267B16C20();
  v47 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117D0, &qword_267B1AA18) + 36)];
  MEMORY[0x26D600130](v78);
  v48 = v79;
  sub_267AF2D08(v24, v79, &qword_2802117A8, &qword_267B1A9C8);
  v49 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v50 = swift_allocObject();
  sub_267AF3EE4(v48, v50 + v49, &qword_2802117A8, &qword_267B1A9C8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117D8, &qword_267B1AA20);
  v52 = &v47[*(v51 + 36)];
  *v52 = sub_267B05528;
  v52[1] = v50;
  sub_267AF2D08(v37, v42, &qword_2802117B8, &qword_267B1A9D8);
  v53 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117E0, &unk_267B1AA28) + 36)];
  sub_267B16C30();
  sub_267AF3430(v24, &qword_2802117A8);
  sub_267AF3430(v37, &qword_2802117B8);
  v54 = v83;
  sub_267AF3EE4(v75, v83, &qword_2802117B0, &qword_267B1A9D0);
  v55 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v56 = swift_allocObject();
  sub_267AF3EE4(v54, v56 + v55, &qword_2802117B0, &qword_267B1A9D0);
  v57 = &v53[*(v51 + 36)];
  *v57 = sub_267B05724;
  v57[1] = v56;
  v58 = &v42[*(v82 + 36)];
  *v58 = sub_267B04A88;
  v58[1] = 0;
  v58[2] = 0;
  v58[3] = 0;
  v59 = v98;
  v60 = v88;
  sub_267B16C10();
  v61 = v89;
  sub_267B057D4(v59, v89);
  v62 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v63 = swift_allocObject();
  sub_267B0583C(v61, v63 + v62);
  sub_267B058B8();
  sub_267B05AE0(&qword_280211810, &qword_280211818);
  v64 = v93;
  sub_267B17450();

  sub_267AF3430(v60, &qword_280211790);
  sub_267AF3430(v42, &qword_2802117C0);
  sub_267B057D4(v98, v61);
  v65 = swift_allocObject();
  sub_267B0583C(v61, v65 + v62);
  v66 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211820, &qword_267B1AA38) + 36));
  *v66 = 0;
  v66[1] = 0;
  v66[2] = sub_267B05D7C;
  v66[3] = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v94;
  sub_267B16A50();

  v68 = v95;
  v69 = v96;
  v70 = v97;
  (*(v96 + 104))(v95, *MEMORY[0x277D5CA08], v97);
  v71 = v68;
  LOBYTE(v68) = sub_267B06980();
  v72 = *(v69 + 8);
  v72(v71, v70);
  v72(v67, v70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211828, &unk_267B1AA88);
  *(v64 + *(result + 36)) = v68 & 1;
  return result;
}

uint64_t sub_267B01580@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v340 = a2;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211838, &qword_267B1AA98);
  v3 = *(*(v339 - 8) + 64);
  MEMORY[0x28223BE20](v339);
  v318 = (&v280 - v4);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211840, &qword_267B1AAA0);
  v5 = *(*(v317 - 8) + 64);
  MEMORY[0x28223BE20](v317);
  v309 = (&v280 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211848, &qword_267B1AAA8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v308 = &v280 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v307 = (&v280 - v11);
  v359 = sub_267B16850();
  v344 = *(v359 - 8);
  v12 = *(v344 + 64);
  MEMORY[0x28223BE20](v359);
  v291 = &v280 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211850, &qword_267B1AAB0);
  v14 = *(*(v303 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v303);
  v298 = &v280 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v313 = &v280 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211858, &qword_267B1AAB8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v316 = &v280 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v315 = &v280 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211860, &qword_267B1AAC0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v332 = (&v280 - v25);
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211868, &qword_267B1AAC8);
  v26 = *(*(v310 - 8) + 64);
  MEMORY[0x28223BE20](v310);
  v333 = &v280 - v27;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211870, &qword_267B1AAD0);
  v28 = *(*(v312 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v312);
  v314 = &v280 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v311 = &v280 - v32;
  MEMORY[0x28223BE20](v31);
  v334 = &v280 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211878, &qword_267B1AAD8);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v338 = &v280 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v337 = &v280 - v38;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211880, &qword_267B1AAE0);
  v39 = *(*(v352 - 8) + 64);
  MEMORY[0x28223BE20](v352);
  v306 = (&v280 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211888, &qword_267B1AAE8);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v336 = &v280 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v335 = &v280 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v358 = &v280 - v48;
  MEMORY[0x28223BE20](v47);
  v364 = &v280 - v49;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  v50 = *(*(v350 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v350);
  v290 = &v280 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v321 = &v280 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v293 = &v280 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v292 = &v280 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v319 = &v280 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v320 = &v280 - v62;
  MEMORY[0x28223BE20](v61);
  v347 = &v280 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117A8, &qword_267B1A9C8);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v346 = &v280 - v66;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211890, &qword_267B1AAF0);
  v354 = *(v351 - 8);
  v67 = *(v354 + 64);
  v68 = MEMORY[0x28223BE20](v351);
  v297 = &v280 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v302 = &v280 - v71;
  MEMORY[0x28223BE20](v70);
  v355 = &v280 - v72;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211898, &qword_267B1AAF8);
  v73 = *(*(v349 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v349);
  v295 = &v280 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v74);
  v301 = &v280 - v77;
  MEMORY[0x28223BE20](v76);
  v331 = &v280 - v78;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118A0, &qword_267B1AB00);
  v79 = *(*(v348 - 8) + 64);
  v80 = MEMORY[0x28223BE20](v348);
  v294 = &v280 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v296 = &v280 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v360 = &v280 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v299 = &v280 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v300 = &v280 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v330 = &v280 - v91;
  MEMORY[0x28223BE20](v90);
  v363 = &v280 - v92;
  v93 = *(a1 + 1);
  v94 = *(v93 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_toLabel + 8);
  v329 = *(v93 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_toLabel);
  v96 = *(a1 + 3);
  LOBYTE(v368[0]) = a1[16];
  v95 = LOBYTE(v368[0]);
  v368[1] = v96;

  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
  sub_267B17580();
  v327 = __dst[1];
  v328 = __dst[0];
  LODWORD(v326) = LOBYTE(__dst[2]);
  v98 = *(a1 + 9);
  LODWORD(v305) = a1[64];
  LOBYTE(v368[0]) = v305;
  v304 = v98;
  v368[1] = v98;
  sub_267B17580();
  v324 = __dst[1];
  v325 = __dst[0];
  LODWORD(v323) = LOBYTE(__dst[2]);
  v99 = *a1;
  v100 = type metadata accessor for SiriMailModel();
  v101 = sub_267B0656C(&qword_280211780, type metadata accessor for SiriMailModel);
  *&v343 = v99;
  v353 = v93;
  v341 = v100;
  sub_267B16D80();
  swift_getKeyPath();
  v342 = v101;
  sub_267B16D90();

  v102 = __dst[0];
  v103 = sub_267B17910();
  v104 = sub_267B0656C(&qword_280211600, MEMORY[0x277D63F60]);
  v322 = *&__dst[1];
  v362 = v103;
  v361 = v104;
  v105 = sub_267B16E00();
  v107 = v106;
  LODWORD(v356) = v95;
  LOBYTE(__dst[0]) = v95;
  v357 = v96;
  __dst[1] = v96;
  v345 = v97;
  sub_267B17560();
  v108 = v368[0];
  v368[0] = v329;
  v368[1] = v94;
  v368[2] = v328;
  v368[3] = v327;
  LOBYTE(v368[4]) = v326;
  v368[5] = v325;
  v109 = v359;
  v368[6] = v324;
  LOBYTE(v368[7]) = v323;
  *&v368[9] = v322;
  v368[8] = v102;
  v368[11] = v105;
  v368[12] = v107;
  LOBYTE(v368[13]) = 0;
  BYTE1(v368[13]) = v108;
  v110 = type metadata accessor for SceneClientView();
  v111 = &a1[*(v110 + 36)];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
  v113 = v346;
  v326 = v112;
  v328 = v111;
  sub_267B16C20();
  v114 = *MEMORY[0x277D5C9C8];
  v115 = *(v344 + 104);
  v116 = v347;
  v327 = v344 + 104;
  v325 = v115;
  v115(v347, v114, v109);
  __swift_storeEnumTagSinglePayload(v116, 0, 1, v109);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118A8, &qword_267B1AB30);
  v118 = sub_267B05E14();
  v119 = sub_267B05AE0(&qword_280211798, &qword_2802117A0);
  v323 = v118;
  v324 = v117;
  *&v322 = v119;
  sub_267B17430();
  sub_267AF3430(v116, &qword_280211790);
  sub_267AF3430(v113, &qword_2802117A8);
  memcpy(__dst, v368, 0x6AuLL);
  v120 = a1;
  sub_267AF3430(__dst, &qword_2802118A8);
  v121 = &a1[*(v110 + 40)];
  if (*v121)
  {
    v122 = *v121;
    v123 = sub_267B17880();
    v329 = v122;

    if (v123)
    {
      sub_267B17680();
    }

    else
    {
      sub_267B17670();
    }

    v124 = v352;
    v125 = v354;
    sub_267B16D20();
    v127 = *(v125 + 32);
    v126 = v125 + 32;
    v128 = v331;
    v129 = v355;
    v355 = v127;
    (v127)(v331, v129, v351);
    v130 = &v128[*(v349 + 36)];
    v131 = v370;
    *v130 = v369;
    *(v130 + 1) = v131;
    *(v130 + 2) = v371;
    v132 = sub_267B16E00();
    v134 = v133;
    v135 = v128;
    v136 = v330;
    sub_267AF3EE4(v135, v330, &qword_280211898, &qword_267B1AAF8);
    v137 = (v136 + *(v348 + 36));
    *v137 = v132;
    v137[1] = v134;
    sub_267AF3EE4(v136, v363, &qword_2802118A0, &qword_267B1AB00);
    LOBYTE(v368[0]) = v356;
    v368[1] = v357;
    sub_267B17560();
    if (v365[0] != 1)
    {
      goto LABEL_7;
    }

    sub_267B16D80();
    swift_getKeyPath();
    sub_267B16D90();

    v138 = sub_267B0099C();

    if ((v138 & 1) == 0)
    {
      v354 = v126;
      v330 = sub_267B16E00();
      v289 = v139;
      v140 = *(v353 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_ccLabel);
      v287 = *(v353 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_ccLabel + 8);
      v288 = v140;
      v141 = v120[32];
      v331 = v120;
      v142 = *(v120 + 5);
      v365[0] = v141;
      *&v365[8] = v142;

      sub_267B17580();
      v285 = v368[1];
      v286 = v368[0];
      v284 = LOBYTE(v368[2]);
      v365[0] = v305;
      *&v365[8] = v304;
      sub_267B17580();
      v282 = v368[1];
      v283 = v368[0];
      v281 = LOBYTE(v368[2]);
      sub_267B16D80();
      swift_getKeyPath();
      sub_267B16D90();

      v143 = v368[0];
      v280 = *&v368[1];
      v144 = sub_267B16E00();
      v146 = v145;
      LOBYTE(v368[0]) = v141;
      v368[1] = v142;
      sub_267B17560();
      v147 = v365[0];
      *&v365[33] = *v367;
      *&v365[36] = *&v367[3];
      *&v365[57] = *v366;
      *&v365[60] = *&v366[3];
      *v365 = v288;
      *&v365[8] = v287;
      *&v365[16] = v286;
      *&v365[24] = v285;
      v365[32] = v284;
      *&v365[40] = v283;
      *&v365[48] = v282;
      v365[56] = v281;
      v148 = v359;
      *&v365[64] = v143;
      *&v365[72] = v280;
      *&v365[88] = v144;
      *&v365[96] = v146;
      v365[104] = 0;
      v365[105] = v147;
      v149 = v346;
      sub_267B16C20();
      v150 = v347;
      v325(v347, *MEMORY[0x277D5C9C0], v148);
      __swift_storeEnumTagSinglePayload(v150, 0, 1, v148);
      v151 = v302;
      sub_267B17430();
      sub_267AF3430(v150, &qword_280211790);
      sub_267AF3430(v149, &qword_2802117A8);
      memcpy(v368, v365, 0x6AuLL);
      sub_267AF3430(v368, &qword_2802118A8);
      v152 = v329;
      LOBYTE(v150) = sub_267B17880();

      if (v150)
      {
        sub_267B17680();
      }

      else
      {
        sub_267B17670();
      }

      v126 = v354;
      sub_267B16D20();
      v153 = v301;
      (v355)(v301, v151, v351);
      v154 = (v153 + *(v349 + 36));
      v155 = v373;
      *v154 = v372;
      v154[1] = v155;
      v154[2] = v374;
      v156 = sub_267B16E00();
      v158 = v157;
      v159 = v299;
      sub_267AF3EE4(v153, v299, &qword_280211898, &qword_267B1AAF8);
      v160 = (v159 + *(v348 + 36));
      *v160 = v156;
      v160[1] = v158;
      v161 = v300;
      sub_267AF3EE4(v159, v300, &qword_2802118A0, &qword_267B1AB00);
      v162 = v360;
      sub_267AF2D08(v161, v360, &qword_2802118A0, &qword_267B1AB00);
      v163 = v306;
      v164 = v330;
      v165 = v289;
      *v306 = v330;
      *(v163 + 8) = v165;
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118E0, &qword_267B1ABC0);
      sub_267AF2D08(v162, v163 + *(v166 + 48), &qword_2802118A0, &qword_267B1AB00);
      v167 = v164;
      sub_267AF3430(v161, &qword_2802118A0);
      sub_267AF3430(v162, &qword_2802118A0);

      v168 = v364;
      sub_267AF3EE4(v163, v364, &qword_280211880, &qword_267B1AAE0);
      v124 = v352;
      __swift_storeEnumTagSinglePayload(v168, 0, 1, v352);
      v120 = v331;
    }

    else
    {
LABEL_7:
      __swift_storeEnumTagSinglePayload(v364, 1, 1, v124);
    }

    LOBYTE(v368[0]) = v356;
    v368[1] = v357;
    sub_267B17560();
    if (v365[0] != 1)
    {
      goto LABEL_15;
    }

    v169 = *(v120 + 5);
    LOBYTE(v368[0]) = v120[32];
    v368[1] = v169;
    sub_267B17560();
    if (v365[0] != 1)
    {
      goto LABEL_15;
    }

    sub_267B16D80();
    swift_getKeyPath();
    sub_267B16D90();

    v170 = sub_267B0099C();

    if ((v170 & 1) == 0)
    {
      v354 = v126;
      v357 = sub_267B16E00();
      v356 = v232;
      v233 = *(v353 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_bccLabel + 8);
      v345 = *(v353 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_bccLabel);
      v330 = v233;
      v331 = v120;
      v235 = *(v120 + 7);
      v365[0] = v120[48];
      v234 = v365[0];
      *&v365[8] = v235;

      sub_267B17580();
      v301 = v368[1];
      v302 = v368[0];
      LODWORD(v300) = LOBYTE(v368[2]);
      v365[0] = v305;
      *&v365[8] = v304;
      sub_267B17580();
      v304 = v368[1];
      v305 = v368[0];
      LODWORD(v299) = LOBYTE(v368[2]);
      sub_267B16D80();
      swift_getKeyPath();
      sub_267B16D90();

      v236 = v368[0];
      v343 = *&v368[1];
      v237 = sub_267B16E00();
      v239 = v238;
      LOBYTE(v368[0]) = v234;
      v368[1] = v235;
      sub_267B17560();
      v240 = v365[0];
      *&v365[33] = *v367;
      *&v365[36] = *&v367[3];
      *&v365[57] = *v366;
      *&v365[60] = *&v366[3];
      *v365 = v345;
      *&v365[8] = v330;
      *&v365[16] = v302;
      *&v365[24] = v301;
      v365[32] = v300;
      *&v365[40] = v305;
      *&v365[48] = v304;
      v365[56] = v299;
      v241 = v359;
      *&v365[64] = v236;
      *&v365[72] = v343;
      *&v365[88] = v237;
      *&v365[96] = v239;
      v365[104] = 0;
      v365[105] = v240;
      v242 = v346;
      sub_267B16C20();
      v243 = v347;
      v325(v347, *MEMORY[0x277D5C9D0], v241);
      __swift_storeEnumTagSinglePayload(v243, 0, 1, v241);
      v244 = v297;
      sub_267B17430();
      sub_267AF3430(v243, &qword_280211790);
      sub_267AF3430(v242, &qword_2802117A8);
      memcpy(v368, v365, 0x6AuLL);
      sub_267AF3430(v368, &qword_2802118A8);
      v245 = v329;
      LOBYTE(v241) = sub_267B17880();

      if (v241)
      {
        sub_267B17680();
      }

      else
      {
        sub_267B17670();
      }

      sub_267B16D20();
      v252 = v295;
      (v355)(v295, v244, v351);
      v253 = (v252 + *(v349 + 36));
      v254 = *&v365[16];
      *v253 = *v365;
      v253[1] = v254;
      v253[2] = *&v365[32];
      v255 = sub_267B16E00();
      v257 = v256;
      v258 = v294;
      sub_267AF3EE4(v252, v294, &qword_280211898, &qword_267B1AAF8);
      v259 = (v258 + *(v348 + 36));
      *v259 = v255;
      v259[1] = v257;
      v260 = v296;
      sub_267AF3EE4(v258, v296, &qword_2802118A0, &qword_267B1AB00);
      v261 = v360;
      sub_267AF2D08(v260, v360, &qword_2802118A0, &qword_267B1AB00);
      v262 = v306;
      v263 = v357;
      v264 = v356;
      *v306 = v357;
      *(v262 + 8) = v264;
      v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118E0, &qword_267B1ABC0);
      sub_267AF2D08(v261, v262 + *(v265 + 48), &qword_2802118A0, &qword_267B1AB00);
      v266 = v263;
      sub_267AF3430(v260, &qword_2802118A0);
      sub_267AF3430(v261, &qword_2802118A0);

      v267 = v358;
      sub_267AF3EE4(v262, v358, &qword_280211880, &qword_267B1AAE0);
      __swift_storeEnumTagSinglePayload(v267, 0, 1, v352);
      v120 = v331;
    }

    else
    {
LABEL_15:
      __swift_storeEnumTagSinglePayload(v358, 1, 1, v124);
    }

    if ((sub_267B00A78() & 1) == 0)
    {
      v181 = 1;
      v182 = v337;
LABEL_33:
      __swift_storeEnumTagSinglePayload(v182, v181, 1, v339);
      v222 = v360;
      sub_267AF2D08(v363, v360, &qword_2802118A0, &qword_267B1AB00);
      v223 = v335;
      sub_267AF2D08(v364, v335, &qword_280211888, &qword_267B1AAE8);
      v224 = v358;
      v225 = v336;
      sub_267AF2D08(v358, v336, &qword_280211888, &qword_267B1AAE8);
      v226 = v338;
      sub_267AF2D08(v182, v338, &qword_280211878, &qword_267B1AAD8);
      v227 = v340;
      sub_267AF2D08(v222, v340, &qword_2802118A0, &qword_267B1AB00);
      v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118B8, &qword_267B1AB38);
      sub_267AF2D08(v223, v227 + v228[12], &qword_280211888, &qword_267B1AAE8);
      sub_267AF2D08(v225, v227 + v228[16], &qword_280211888, &qword_267B1AAE8);
      sub_267AF2D08(v226, v227 + v228[20], &qword_280211878, &qword_267B1AAD8);
      sub_267AF3430(v182, &qword_280211878);
      sub_267AF3430(v224, &qword_280211888);
      sub_267AF3430(v364, &qword_280211888);
      sub_267AF3430(v363, &qword_2802118A0);
      sub_267AF3430(v226, &qword_280211878);
      sub_267AF3430(v225, &qword_280211888);
      sub_267AF3430(v223, &qword_280211888);
      return sub_267AF3430(v360, &qword_2802118A0);
    }

    v357 = sub_267B16E00();
    v356 = v171;
    v172 = sub_267B16FA0();
    v173 = v332;
    *v332 = v172;
    v173[1] = 0xC028000000000000;
    *(v173 + 16) = 0;
    v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118C0, &qword_267B1AB40);
    sub_267B039DC(v120, (v173 + *(v174 + 44)));
    v175 = v329;
    v176 = sub_267B17880();

    if ((v176 & 1) != 0 && (v177 = v175, sub_267B17890(), v179 = v178, v177, v179 > 1.0))
    {
      v180 = sub_267B17210();
    }

    else
    {
      v180 = sub_267B171F0();
    }

    v183 = v180;
    KeyPath = swift_getKeyPath();
    v185 = v333;
    sub_267AF3EE4(v332, v333, &qword_280211860, &qword_267B1AAC0);
    v186 = (v185 + *(v310 + 36));
    *v186 = KeyPath;
    v186[1] = v183;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E18, &qword_267B1A140);
    v187 = swift_allocObject();
    *(v187 + 16) = xmmword_267B1A930;
    v188 = sub_267B171A0();
    *(v187 + 32) = v188;
    v189 = sub_267B17180();
    *(v187 + 33) = v189;
    v190 = sub_267B17190();
    *(v187 + 34) = v190;
    v191 = sub_267B171B0();
    sub_267B171B0();
    if (sub_267B171B0() != v188)
    {
      v191 = sub_267B171B0();
    }

    sub_267B171B0();
    if (sub_267B171B0() != v189)
    {
      v191 = sub_267B171B0();
    }

    v192 = v313;

    sub_267B171B0();
    if (sub_267B171B0() != v190)
    {
      v191 = sub_267B171B0();
    }

    v193 = v320;
    v194 = v321;
    v195 = v319;
    v196 = v311;
    sub_267AF3EE4(v333, v311, &qword_280211868, &qword_267B1AAC8);
    v197 = v196 + *(v312 + 36);
    *v197 = v191;
    *(v197 + 8) = 0u;
    *(v197 + 24) = 0u;
    *(v197 + 40) = 1;
    sub_267AF3EE4(v196, v334, &qword_280211870, &qword_267B1AAD0);
    v198 = SiriMailModel.subject.getter();
    v200 = v199;

    v201 = HIBYTE(v200) & 0xF;
    if ((v200 & 0x2000000000000000) == 0)
    {
      v201 = v198 & 0xFFFFFFFFFFFFLL;
    }

    if (v201)
    {
      goto LABEL_31;
    }

    sub_267B16C10();
    v230 = v359;
    v325(v195, *MEMORY[0x277D5C9E0], v359);
    __swift_storeEnumTagSinglePayload(v195, 0, 1, v230);
    v231 = *(v303 + 48);
    sub_267AF2D08(v193, v192, &qword_280211790, &qword_267B1A970);
    sub_267AF2D08(v195, v192 + v231, &qword_280211790, &qword_267B1A970);
    if (__swift_getEnumTagSinglePayload(v192, 1, v230) == 1)
    {
      sub_267AF3430(v195, &qword_280211790);
      sub_267AF3430(v193, &qword_280211790);
      if (__swift_getEnumTagSinglePayload(v192 + v231, 1, v359) == 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v246 = v292;
      sub_267AF2D08(v192, v292, &qword_280211790, &qword_267B1A970);
      if (__swift_getEnumTagSinglePayload(v192 + v231, 1, v359) != 1)
      {
        v269 = v344;
        v270 = v291;
        v271 = v359;
        (*(v344 + 32))(v291, v192 + v231, v359);
        sub_267B0656C(&qword_280211818, MEMORY[0x277D5C9E8]);
        LODWORD(v355) = sub_267B17950();
        v272 = v192;
        v273 = *(v269 + 8);
        v273(v270, v271);
        sub_267AF3430(v319, &qword_280211790);
        sub_267AF3430(v320, &qword_280211790);
        v273(v246, v271);
        v194 = v321;
        sub_267AF3430(v272, &qword_280211790);
        if (v355)
        {
          goto LABEL_31;
        }

LABEL_42:
        v247 = v293;
        sub_267B16C10();
        v248 = v359;
        v325(v194, *MEMORY[0x277D5C9D8], v359);
        __swift_storeEnumTagSinglePayload(v194, 0, 1, v248);
        v249 = *(v303 + 48);
        v250 = v194;
        v251 = v298;
        sub_267AF2D08(v247, v298, &qword_280211790, &qword_267B1A970);
        sub_267AF2D08(v250, v251 + v249, &qword_280211790, &qword_267B1A970);
        if (__swift_getEnumTagSinglePayload(v251, 1, v248) == 1)
        {
          sub_267AF3430(v250, &qword_280211790);
          v192 = v298;
          sub_267AF3430(v247, &qword_280211790);
          if (__swift_getEnumTagSinglePayload(v192 + v249, 1, v359) == 1)
          {
LABEL_44:
            sub_267AF3430(v192, &qword_280211790);
LABEL_31:
            v202 = sub_267B16E00();
            v204 = v203;
            v205 = sub_267B17040();
            v206 = v307;
            *v307 = v205;
            *(v206 + 8) = 0;
            *(v206 + 16) = 0;
            v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118C8, &qword_267B1AB80);
            sub_267B04400(v120, v206 + *(v207 + 44));
            v208 = v308;
            sub_267AF2D08(v206, v308, &qword_280211848, &qword_267B1AAA8);
            v209 = v309;
            *v309 = v202;
            *(v209 + 8) = v204;
            v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118D0, &qword_267B1AB88);
            sub_267AF2D08(v208, v209 + *(v210 + 48), &qword_280211848, &qword_267B1AAA8);
            v211 = v202;
            sub_267AF3430(v206, &qword_280211848);
            sub_267AF3430(v208, &qword_280211848);

            v212 = v315;
            sub_267AF3EE4(v209, v315, &qword_280211840, &qword_267B1AAA0);
            v213 = 0;
LABEL_32:
            __swift_storeEnumTagSinglePayload(v212, v213, 1, v317);
            v214 = v334;
            v215 = v314;
            sub_267AF2D08(v334, v314, &qword_280211870, &qword_267B1AAD0);
            v216 = v316;
            sub_267AF2D08(v212, v316, &qword_280211858, &qword_267B1AAB8);
            v217 = v318;
            v218 = v357;
            v219 = v356;
            *v318 = v357;
            *(v217 + 8) = v219;
            v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118D8, &qword_267B1AB90);
            sub_267AF2D08(v215, v217 + *(v220 + 48), &qword_280211870, &qword_267B1AAD0);
            sub_267AF2D08(v216, v217 + *(v220 + 64), &qword_280211858, &qword_267B1AAB8);
            v221 = v218;
            sub_267AF3430(v212, &qword_280211858);
            sub_267AF3430(v214, &qword_280211870);
            sub_267AF3430(v216, &qword_280211858);
            sub_267AF3430(v215, &qword_280211870);

            v182 = v337;
            sub_267AF3EE4(v217, v337, &qword_280211838, &qword_267B1AA98);
            v181 = 0;
            goto LABEL_33;
          }
        }

        else
        {
          v268 = v290;
          sub_267AF2D08(v251, v290, &qword_280211790, &qword_267B1A970);
          if (__swift_getEnumTagSinglePayload(v251 + v249, 1, v359) != 1)
          {
            v274 = v344;
            v275 = v291;
            v276 = v359;
            (*(v344 + 32))(v291, v251 + v249, v359);
            sub_267B0656C(&qword_280211818, MEMORY[0x277D5C9E8]);
            v277 = sub_267B17950();
            v278 = *(v274 + 8);
            v278(v275, v276);
            sub_267AF3430(v321, &qword_280211790);
            sub_267AF3430(v247, &qword_280211790);
            v278(v268, v276);
            sub_267AF3430(v298, &qword_280211790);
            if (v277)
            {
              goto LABEL_31;
            }

LABEL_50:
            v213 = 1;
            v212 = v315;
            goto LABEL_32;
          }

          sub_267AF3430(v321, &qword_280211790);
          v192 = v298;
          sub_267AF3430(v247, &qword_280211790);
          (*(v344 + 8))(v268, v359);
        }

        sub_267AF3430(v192, &qword_280211850);
        goto LABEL_50;
      }

      sub_267AF3430(v319, &qword_280211790);
      sub_267AF3430(v320, &qword_280211790);
      (*(v344 + 8))(v246, v359);
    }

    sub_267AF3430(v192, &qword_280211850);
    goto LABEL_42;
  }

  v279 = *(v121 + 1);
  result = sub_267B16DF0();
  __break(1u);
  return result;
}

uint64_t sub_267B039DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v91 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  v3 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v86 = v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117A8, &qword_267B1A9C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = v69 - v7;
  v73 = sub_267B170A0();
  v74 = *(v73 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108E0, &qword_267B1AC40);
  v72 = *(v71 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  v13 = v69 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211918, &qword_267B1AC48);
  v84 = *(v82 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  v70 = v69 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211920, &qword_267B1AC50);
  v89 = *(v85 - 8);
  v16 = *(v89 + 64);
  MEMORY[0x28223BE20](v85);
  v75 = v69 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211928, &qword_267B1AC58);
  v18 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v80 = v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211930, &qword_267B1AC60);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v88 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v83 = v69 - v24;
  v25 = a1;
  v69[1] = a1;
  v26 = (a1[1] + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subjectLabel);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  *&v96 = v27;
  *(&v96 + 1) = v28;
  sub_267ADCFA4();

  v29 = sub_267B17340();
  v31 = v30;
  v33 = v32;
  LODWORD(v96) = sub_267B170B0();
  v77 = sub_267B17310();
  v76 = v34;
  v78 = v35;
  v79 = v36;
  sub_267AEC140(v29, v31, v33 & 1);

  sub_267B17010();
  v37 = *v25;
  type metadata accessor for SiriMailModel();
  sub_267B0656C(&qword_280211780, type metadata accessor for SiriMailModel);
  sub_267B16D80();
  swift_getKeyPath();
  sub_267B16D90();

  sub_267B17690();
  sub_267B17090();
  v38 = sub_267AF3DE0(&qword_2802108E8, &qword_2802108E0);
  v39 = sub_267B0656C(&qword_280211938, MEMORY[0x277CDE0C8]);
  v40 = v70;
  v41 = v71;
  v42 = v73;
  sub_267B17400();
  v43 = v42;
  (*(v74 + 8))(v10, v42);
  (*(v72 + 8))(v13, v41);
  LODWORD(v42) = *(type metadata accessor for SceneClientView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
  v44 = v81;
  sub_267B16C20();
  v45 = *MEMORY[0x277D5C9E0];
  v46 = sub_267B16850();
  v47 = v86;
  (*(*(v46 - 8) + 104))(v86, v45, v46);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v46);
  *&v96 = v41;
  *(&v96 + 1) = v43;
  *&v97 = v38;
  *(&v97 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_267B05AE0(&qword_280211798, &qword_2802117A0);
  v50 = v75;
  v51 = v44;
  v52 = v82;
  v53 = v90;
  sub_267B17430();
  sub_267AF3430(v47, &qword_280211790);
  sub_267AF3430(v51, &qword_2802117A8);
  (*(v84 + 8))(v40, v52);
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v92 = v52;
  v93 = v53;
  v94 = OpaqueTypeConformance2;
  v95 = v49;
  swift_getOpaqueTypeConformance2();
  v54 = v80;
  v55 = v85;
  sub_267B17390();
  sub_267AF3430(&v96, &qword_280210900);
  (*(v89 + 8))(v50, v55);
  LOBYTE(v55) = sub_267B171D0();
  sub_267B16C00();
  v56 = v54 + *(v87 + 36);
  *v56 = v55;
  *(v56 + 8) = v57;
  *(v56 + 16) = v58;
  *(v56 + 24) = v59;
  *(v56 + 32) = v60;
  *(v56 + 40) = 0;
  sub_267B05FF0();
  v61 = v83;
  sub_267B17410();
  sub_267AF3430(v54, &qword_280211928);
  v62 = v88;
  sub_267AF2D08(v61, v88, &qword_280211930, &qword_267B1AC60);
  v63 = v91;
  v64 = v77;
  v65 = v76;
  *v91 = v77;
  v63[1] = v65;
  LOBYTE(v55) = v78 & 1;
  *(v63 + 16) = v78 & 1;
  v63[3] = v79;
  v66 = v63;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211948, &qword_267B1AC98);
  sub_267AF2D08(v62, v66 + *(v67 + 48), &qword_280211930, &qword_267B1AC60);
  sub_267AFB658(v64, v65, v55);

  sub_267AF3430(v61, &qword_280211930);
  sub_267AF3430(v62, &qword_280211930);
  sub_267AEC140(v64, v65, v55);
}

uint64_t sub_267B04400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  v3 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117A8, &qword_267B1A9C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118F8, &qword_267B1AC00);
  v58 = *(v57 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v52 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211900, &qword_267B1AC08);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v60 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v48 - v17;
  v49 = a1;
  v19 = *a1;
  v18 = a1[1];
  v55 = type metadata accessor for SiriMailModel();
  v54 = sub_267B0656C(&qword_280211780, type metadata accessor for SiriMailModel);
  sub_267B16D80();
  swift_getKeyPath();
  sub_267B16D90();

  v48 = v66;
  v20 = v67;
  v21 = (v18 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_messageLabel);
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  v51 = sub_267B17910();
  v50 = sub_267B0656C(&qword_280211600, MEMORY[0x277D63F60]);

  v24 = sub_267B16E00();
  v62 = v48;
  v63 = v20;
  *&v64 = v24;
  *(&v64 + 1) = v25;
  *&v65 = v22;
  *(&v65 + 1) = v23;
  LODWORD(v22) = *(type metadata accessor for SceneClientView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
  sub_267B16C20();
  v26 = *MEMORY[0x277D5C9D8];
  v27 = sub_267B16850();
  (*(*(v27 - 8) + 104))(v5, v26, v27);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v27);
  v28 = sub_267B05F40();
  v29 = sub_267B05AE0(&qword_280211798, &qword_2802117A0);
  v30 = v52;
  v31 = v53;
  sub_267B17430();
  sub_267AF3430(v5, &qword_280211790);
  sub_267AF3430(v9, &qword_2802117A8);
  v66 = v62;
  v67 = v63;
  v68 = v64;
  v69 = v65;
  sub_267B05F94(&v66);
  *&v62 = &type metadata for BodyTextEditor;
  *(&v62 + 1) = v31;
  *&v63 = v28;
  *(&v63 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v32 = v56;
  v33 = v57;
  sub_267B17410();
  (*(v58 + 8))(v30, v33);
  *(v32 + *(v13 + 44)) = 0xBFF0000000000000;

  v34 = sub_267B16D70();
  v36 = v35;
  v37 = sub_267B16E00();
  v39 = v38;
  v61 = 0;
  sub_267B17550();
  v40 = v62;
  v41 = *(&v62 + 1);
  v42 = v60;
  sub_267AF2D08(v32, v60, &qword_280211900, &qword_267B1AC08);
  v43 = v42;
  v44 = v59;
  sub_267AF2D08(v43, v59, &qword_280211900, &qword_267B1AC08);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211910, &qword_267B1AC38) + 48);
  *v45 = v34;
  *(v45 + 8) = v36;
  *(v45 + 16) = v37;
  *(v45 + 24) = v39;
  *(v45 + 32) = v40;
  *(v45 + 40) = v41;
  *(v45 + 48) = 0x3FF0000000000000;

  v46 = v37;
  sub_267AF3430(v32, &qword_280211900);

  return sub_267AF3430(v60, &qword_280211900);
}

void sub_267B04A88()
{
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v0 = sub_267B16BA0();
  __swift_project_value_buffer(v0, static Logger.siriMail);
  oslog = sub_267B16B80();
  v1 = sub_267B17A80();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_267ADA000, oslog, v1, "View did appear", v2, 2u);
    MEMORY[0x26D600E60](v2, -1, -1);
  }
}

void sub_267B04B70(uint64_t a1)
{
  v2 = sub_267B169C0();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_267B16860();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  (*(v11 + 104))(&v33 - v16, *MEMORY[0x277D5CA08], v10);
  v18 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  LOBYTE(v18) = sub_267B06980();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  if (v18)
  {
    v20 = type metadata accessor for SceneClientView();
    v21 = *(v20 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
    sub_267B16C10();
    v22 = sub_267B16850();
    LODWORD(v21) = __swift_getEnumTagSinglePayload(v9, 1, v22);
    sub_267AF3430(v9, &qword_280211790);
    if (v21 == 1)
    {
      v23 = *(a1 + 72);
      v37 = *(a1 + 64);
      v38 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
      sub_267B17560();
      if (v36 == 1)
      {
        if (qword_280210880 != -1)
        {
          swift_once();
        }

        v24 = sub_267B16BA0();
        __swift_project_value_buffer(v24, static Logger.siriMail);
        v25 = sub_267B16B80();
        v26 = sub_267B17A80();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_267ADA000, v25, v26, "Got nil focus field, sending .returnedToVoiceMode Direct Invocation", v27, 2u);
          MEMORY[0x26D600E60](v27, -1, -1);
        }

        v29 = v34;
        v28 = v35;
        (*(v34 + 104))(v5, *MEMORY[0x277D07328], v35);
        sub_267B169B0();
        (*(v29 + 8))(v5, v28);
        v30 = a1 + *(v20 + 40);
        if (*v30)
        {
          v31 = *v30;
          sub_267B17900();
        }

        else
        {
          v32 = *(v30 + 8);
          sub_267B17910();
          sub_267B0656C(&qword_280211600, MEMORY[0x277D63F60]);
          sub_267B16DF0();
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_267B05010(uint64_t a1)
{
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v2 = sub_267B16BA0();
  __swift_project_value_buffer(v2, static Logger.siriMail);
  v3 = sub_267B16B80();
  v4 = sub_267B17A80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_267ADA000, v3, v4, "View will disappear", v5, 2u);
    MEMORY[0x26D600E60](v5, -1, -1);
  }

  v6 = *(a1 + 8);
  type metadata accessor for SiriMailModel();
  sub_267B0656C(&qword_280211830, type metadata accessor for SiriMailModel);
  return sub_267B169F0();
}

uint64_t sub_267B05288@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267B17620();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267B17610();
  if (a1)
  {
    v12 = a1;
    v13 = sub_267B17880();

    if (v13)
    {
      v14 = sub_267B171C0();
    }

    else
    {
      v14 = sub_267B171A0();
    }

    v15 = v14;
    (*(v7 + 32))(a2, v11, v4);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FF8, &qword_267B1A0B0);
    v17 = a2 + *(result + 36);
    *v17 = v15;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 1;
  }

  else
  {
    sub_267B17910();
    OUTLINED_FUNCTION_5_4();
    sub_267B0656C(v18, v19);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267B05410()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117A8, &qword_267B1A9C8) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v1 + v4);

  v7 = *(v1 + v4 + 8);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117B0, &qword_267B1A9D0) + 32);
  v9 = sub_267B16850();
  if (!OUTLINED_FUNCTION_14_2(v9))
  {
    OUTLINED_FUNCTION_2_6(v0);
    (*(v10 + 8))(v1 + v4 + v8, v0);
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_267B05550(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(char *, uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_16_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  sub_267AF2D08(a1, &v17 - v13, &qword_280211790, &qword_267B1A970);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return a5(v14, v15);
}

uint64_t sub_267B0561C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117B0, &qword_267B1A9D0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = v1[10];
  v8 = sub_267B16850();
  if (!OUTLINED_FUNCTION_14_2(v8))
  {
    OUTLINED_FUNCTION_2_6(v1);
    (*(v9 + 8))(v0 + v3 + v7, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267B0574C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(char *, uint64_t))
{
  v9 = OUTLINED_FUNCTION_15_0(a1, a2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_16_0(v11);
  return sub_267B05550(a1, v4 + ((*(v12 + 80) + 16) & ~*(v12 + 80)), a2, a3, a4);
}

uint64_t sub_267B057D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneClientView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B0583C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneClientView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_267B058B8()
{
  result = qword_2802117E8;
  if (!qword_2802117E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802117C0, &qword_267B1A9E0);
    sub_267B05944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802117E8);
  }

  return result;
}

unint64_t sub_267B05944()
{
  result = qword_2802117F0;
  if (!qword_2802117F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802117E0, &unk_267B1AA28);
    sub_267B059FC();
    sub_267AF3DE0(&qword_280211808, &unk_2802117D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802117F0);
  }

  return result;
}

unint64_t sub_267B059FC()
{
  result = qword_2802117F8;
  if (!qword_2802117F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802117D0, &qword_267B1AA18);
    sub_267AF3DE0(&qword_280211800, &unk_2802117B8);
    sub_267AF3DE0(&qword_280211808, &unk_2802117D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802117F8);
  }

  return result;
}

uint64_t sub_267B05AE0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    OUTLINED_FUNCTION_3_4();
    sub_267B0656C(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for SceneClientView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = v0 + v3 + v1[9];
  v12 = sub_267B16850();
  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    OUTLINED_FUNCTION_2_6(v12);
    (*(v13 + 8))(v11, v12);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
  v15 = *(v11 + *(v14 + 36));

  v16 = *(v14 + 40);
  if (!__swift_getEnumTagSinglePayload(v11 + v16, 1, v12))
  {
    OUTLINED_FUNCTION_2_6(v12);
    (*(v17 + 8))(v11 + v16, v12);
  }

  v18 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_267B16C80();
    OUTLINED_FUNCTION_0(v19);
    (*(v20 + 8))(v5 + v18);
  }

  else
  {
    v21 = *(v5 + v18);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267B05D94(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SceneClientView();
  OUTLINED_FUNCTION_16_0(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_267B05E14()
{
  result = qword_2802118B0;
  if (!qword_2802118B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802118A8, &qword_267B1AB30);
    sub_267AFBFE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802118B0);
  }

  return result;
}

uint64_t sub_267B05EA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267B16F20();
  *a1 = result;
  return result;
}

uint64_t sub_267B05ECC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267B16F20();
  *a1 = result;
  return result;
}

uint64_t sub_267B05EF8(uint64_t *a1)
{
  v1 = *a1;

  return sub_267B16F30();
}

unint64_t sub_267B05F40()
{
  result = qword_280211908;
  if (!qword_280211908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211908);
  }

  return result;
}

unint64_t sub_267B05FF0()
{
  result = qword_280211940;
  if (!qword_280211940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211928, &qword_267B1AC58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211920, &qword_267B1AC50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211918, &qword_267B1AC48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108E0, &qword_267B1AC40);
    sub_267B170A0();
    sub_267AF3DE0(&qword_2802108E8, &qword_2802108E0);
    sub_267B0656C(&qword_280211938, MEMORY[0x277CDE0C8]);
    swift_getOpaqueTypeConformance2();
    sub_267B05AE0(&qword_280211798, &qword_2802117A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211940);
  }

  return result;
}

uint64_t sub_267B06220(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267B06274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_267B062D8()
{
  result = qword_280211950;
  if (!qword_280211950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211828, &unk_267B1AA88);
    sub_267B06364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211950);
  }

  return result;
}

unint64_t sub_267B06364()
{
  result = qword_280211958;
  if (!qword_280211958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211820, &qword_267B1AA38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802117C0, &qword_267B1A9E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    sub_267B058B8();
    sub_267B05AE0(&qword_280211810, &qword_280211818);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211958);
  }

  return result;
}

unint64_t sub_267B064B0()
{
  result = qword_280211960;
  if (!qword_280211960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FF8, &qword_267B1A0B0);
    sub_267B0656C(&qword_280211968, MEMORY[0x277CDF088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211960);
  }

  return result;
}

uint64_t sub_267B0656C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_5()
{

  return sub_267B17550();
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t sub_267B0668C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267B06734(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SceneHostView()
{
  result = qword_280211970;
  if (!qword_280211970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267B0680C()
{
  sub_267B00844();
  if (v0 <= 0x3F)
  {
    sub_267AE0D9C();
    if (v1 <= 0x3F)
    {
      sub_267B06910(319, &qword_280211980, MEMORY[0x277D5B350]);
      if (v2 <= 0x3F)
      {
        sub_267B06910(319, &qword_280210DE0, MEMORY[0x277CDF3E0]);
        if (v3 <= 0x3F)
        {
          sub_267AEB810();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_267B06910(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_267B16C90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_267B06980()
{
  sub_267B16860();
  OUTLINED_FUNCTION_1_6();
  sub_267B09F50(v0, v1);
  sub_267B179D0();
  sub_267B179D0();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_267B17D60();
  }

  return v3 & 1;
}

uint64_t sub_267B06AA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_267B16F90();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v23 = (&v29 - v22);
  sub_267AED784(v8, &v29 - v22, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = a3(0);
    OUTLINED_FUNCTION_0(v24);
    return (*(v25 + 32))(a4, v23);
  }

  else
  {
    v27 = *v23;
    sub_267B17AA0();
    v28 = sub_267B17150();
    sub_267B16B70();

    sub_267B16F80();
    swift_getAtKeyPath();

    return (*(v13 + 8))(v17, v10);
  }
}

uint64_t sub_267B06C80()
{
  v1 = v0;
  v2 = *(v0 + 8);
  SiriMailModel.subject.getter();

  OUTLINED_FUNCTION_5_5();
  if (!v3)
  {
    return 1;
  }

  SiriMailModel.body.getter();

  OUTLINED_FUNCTION_5_5();
  if (!v4)
  {
    return 1;
  }

  v5 = *(SiriMailModel.to.getter() + 16);

  if (!v5)
  {
    return 1;
  }

  v6 = (v1 + *(type metadata accessor for SceneHostView() + 32));
  v9 = *v6;
  v10 = *(v6 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
  sub_267B17560();
  return v8;
}

uint64_t sub_267B06D48@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v58 = sub_267B16860();
  v2 = OUTLINED_FUNCTION_0_0(v58);
  v60 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_0(v54);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = type metadata accessor for SceneHostView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = v17;
  v19 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211988, &qword_267B1ADC0);
  v53 = v20;
  v21 = *(*(v20 - 8) + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211990, &qword_267B1ADC8);
  OUTLINED_FUNCTION_0_0(v55);
  v57 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v28);
  v66 = &v52 - v29;
  *v24 = sub_267B17050();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211998, &qword_267B1ADD0);
  sub_267B073B8(v1, &v24[*(v30 + 44)]);
  sub_267B09B40(v1, v19);
  v63 = *(v15 + 80);
  v64 = v18;
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_7_6(v31);
  v32 = &v24[*(v20 + 36)];
  *v32 = sub_267B09C0C;
  v32[1] = v31;
  v32[2] = 0;
  v32[3] = 0;
  v65 = v1[1];
  v62 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  sub_267B09B40(v1, v19);
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_7_6(v33);
  v52 = sub_267B09C44();
  v34 = sub_267B09CFC();
  v35 = v53;
  v36 = v54;
  sub_267B17440();

  sub_267AEC1D4(v13, &qword_280211790, &qword_267B1A970);
  sub_267AEC1D4(v24, &qword_280211988, &qword_267B1ADC0);
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v56;
  sub_267B16A50();

  sub_267B09B40(v62, v19);
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_7_6(v38);
  v67 = v35;
  v68 = v36;
  v69 = v52;
  v70 = v34;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_6();
  sub_267B09F50(v39, v40);
  v41 = v58;
  v42 = v59;
  v43 = v55;
  v44 = v66;
  sub_267B17440();

  v45 = v60;
  v46 = *(v60 + 8);
  v46(v37, v41);
  (*(v57 + 8))(v44, v43);
  sub_267B09B40(v62, v19);
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_7_6(v47);
  v48 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802119C0, &qword_267B1AE70) + 36));
  *v48 = 0;
  v48[1] = 0;
  v48[2] = sub_267B09E64;
  v48[3] = v47;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  v49 = v61;
  (*(v45 + 104))(v61, *MEMORY[0x277D5CA08], v41);
  v50 = v49;
  LOBYTE(v49) = sub_267B06980();
  v46(v50, v41);
  v46(v37, v41);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802119C8, &qword_267B1AE78);
  *(v42 + *(result + 36)) = v49 & 1;
  return result;
}

uint64_t sub_267B073B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802119F0, &qword_267B1AE80);
  v3 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v95 = &v84 - v4;
  v90 = sub_267B177D0();
  v89 = *(v90 - 8);
  v5 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_267B177F0();
  v92 = *(v93 - 8);
  v7 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_267B16860();
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v87 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v96 = &v84 - v13;
  v14 = sub_267B16950();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v85 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v84 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802119F8, &qword_267B1AE88);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v104 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v103 = &v84 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A00, &qword_267B1AE90);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A08, &qword_267B1AE98);
  v100 = *(v102 - 8);
  v28 = *(v100 + 64);
  v29 = MEMORY[0x28223BE20](v102);
  v101 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v84 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A10, &qword_267B1AEA0);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v108 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v84 - v38;
  *v39 = sub_267B16FB0();
  *(v39 + 1) = 0;
  v39[16] = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A18, &qword_267B1AEA8);
  sub_267B07EF0(a1, &v39[*(v40 + 44)]);
  v41 = sub_267B17170();
  v42 = *(v34 + 44);
  v107 = v39;
  v43 = &v39[v42];
  *v43 = v41;
  *(v43 + 8) = 0u;
  *(v43 + 24) = 0u;
  v43[40] = 1;
  v45 = *a1;
  v44 = a1[1];
  type metadata accessor for SiriMailModel();
  sub_267B09F50(&qword_280211780, type metadata accessor for SiriMailModel);
  sub_267B16D80();
  swift_getKeyPath();
  sub_267B16D90();

  v46 = MEMORY[0x277D5CA80];
  sub_267B09F50(&qword_280210C80, MEMORY[0x277D5CA80]);
  sub_267B09F50(&qword_280210C28, v46);
  sub_267B09F50(&qword_280211A20, v46);
  v99 = v32;
  sub_267B16730();
  v106 = v44;
  sub_267B0DBE0();
  v47 = v96;
  sub_267B16870();
  v48 = *(v15 + 8);
  v49 = v14;
  v86 = v15 + 8;
  v48(v20, v14);
  v50 = v97;
  v51 = *(v97 + 88);
  v52 = v47;
  v53 = v47;
  v54 = v98;
  LODWORD(v20) = v51(v52, v98);
  LODWORD(v46) = *MEMORY[0x277D5CA00];
  v55 = *(v50 + 8);
  v56 = v54;
  v55(v53, v54);
  if (v20 == v46)
  {
    v57 = (v106 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sentLabel);
    swift_beginAccess();
    v58 = *v57;
    v59 = v57[1];
    v111 = MEMORY[0x277D837D0];
    v112 = MEMORY[0x277D63F80];
    v109 = v58;
    v110 = v59;
    (*(v89 + 104))(v88, *MEMORY[0x277D63D60], v90);

    v60 = v91;
    sub_267B177E0();
  }

  else
  {
    v61 = v85;
    sub_267B0DBE0();
    v62 = v87;
    sub_267B16870();
    v48(v61, v49);
    LODWORD(v61) = v51(v62, v56);
    v63 = *MEMORY[0x277D5CA20];
    v55(v62, v56);
    if (v61 != v63)
    {
      v70 = 1;
      v67 = v103;
      goto LABEL_7;
    }

    v64 = (v106 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelledLabel);
    swift_beginAccess();
    v65 = *v64;
    v66 = v64[1];
    v111 = MEMORY[0x277D837D0];
    v112 = MEMORY[0x277D63F80];
    v109 = v65;
    v110 = v66;
    (*(v89 + 104))(v88, *MEMORY[0x277D63D70], v90);

    v60 = v91;
    sub_267B177E0();
  }

  v67 = v103;
  v68 = v92;
  v69 = v93;
  (*(v92 + 16))(v95, v60, v93);
  swift_storeEnumTagMultiPayload();
  sub_267B09F50(&qword_280211178, MEMORY[0x277D63D80]);
  sub_267B17080();
  (*(v68 + 8))(v60, v69);
  v70 = 0;
LABEL_7:
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A28, &qword_267B1AED8);
  __swift_storeEnumTagSinglePayload(v67, v70, 1, v71);
  v72 = v108;
  sub_267B09EE8(v107, v108);
  v73 = v67;
  v75 = v100;
  v74 = v101;
  v76 = *(v100 + 16);
  v77 = v99;
  v78 = v102;
  v76(v101, v99, v102);
  v79 = v104;
  sub_267AED784(v73, v104, &qword_2802119F8, &qword_267B1AE88);
  v80 = v105;
  sub_267B09EE8(v72, v105);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A30, &qword_267B1AEE0);
  v76((v80 + *(v81 + 48)), v74, v78);
  sub_267AED784(v79, v80 + *(v81 + 64), &qword_2802119F8, &qword_267B1AE88);
  sub_267AEC1D4(v73, &qword_2802119F8, &qword_267B1AE88);
  v82 = *(v75 + 8);
  v82(v77, v78);
  sub_267AEC1D4(v107, &qword_280211A10, &qword_267B1AEA0);
  sub_267AEC1D4(v79, &qword_2802119F8, &qword_267B1AE88);
  v82(v74, v78);
  return sub_267AEC1D4(v108, &qword_280211A10, &qword_267B1AEA0);
}

uint64_t sub_267B07EF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A38, &qword_267B1AEE8);
  v4 = *(v3 - 8);
  v41 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - v8;
  v9 = type metadata accessor for SceneHostView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A40, &qword_267B1AEF0);
  v12 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v14 = &v37 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A48, &qword_267B1AEF8);
  v44 = *(v40 - 8);
  v15 = v44[8];
  v16 = MEMORY[0x28223BE20](v40);
  v39 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  *v14 = sub_267B17040();
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v20 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A50, &qword_267B1AF00) + 44);
  sub_267B083F4(a1);
  sub_267B09B40(a1, &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_267B09BA8(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_267ADCE94(&qword_280211A58, &qword_280211A40, &qword_267B1AEF0);
  sub_267B173E0();

  sub_267AEC1D4(v14, &qword_280211A40, &qword_267B1AEF0);
  sub_267B09B40(a1, &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_267B09BA8(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A60, &qword_267B1AF08);
  sub_267B0A184();
  v24 = v38;
  sub_267B175A0();
  LOBYTE(v14) = sub_267B06C80();
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v14 & 1;
  v27 = v40;
  v28 = (v24 + *(v41 + 44));
  *v28 = KeyPath;
  v28[1] = sub_267B0A554;
  v28[2] = v26;
  v29 = v44[2];
  v30 = v39;
  v29(v39, v19, v27);
  v31 = v42;
  sub_267AED784(v24, v42, &qword_280211A38, &qword_267B1AEE8);
  v32 = v43;
  v29(v43, v30, v27);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211AD0, &qword_267B1AF70);
  v34 = &v32[*(v33 + 48)];
  *v34 = 0;
  v34[8] = 1;
  sub_267AED784(v31, &v32[*(v33 + 64)], &qword_280211A38, &qword_267B1AEE8);
  sub_267AEC1D4(v24, &qword_280211A38, &qword_267B1AEE8);
  v35 = v44[1];
  v35(v19, v27);
  sub_267AEC1D4(v31, &qword_280211A38, &qword_267B1AEE8);
  return (v35)(v30, v27);
}

uint64_t sub_267B083F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SiriMailModel.subject.getter();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    SiriMailModel.subject.getter();
  }

  else
  {
    v6 = v1 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_newMessageLabel;
    v8 = *(v1 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_newMessageLabel);
    v7 = *(v6 + 8);
  }

  sub_267ADCFA4();
  v9 = sub_267B17340();
  v11 = v10;
  v13 = v12;
  sub_267B171E0();
  v14 = sub_267B17320();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_267AEC140(v9, v11, v13 & 1);

  v25 = v18 & 1;
  v24 = 0;
  v22[0] = v14;
  v22[1] = v16;
  LOBYTE(v22[2]) = v18 & 1;
  v22[3] = v20;
  v22[4] = swift_getKeyPath();
  v22[5] = 0x3FE0000000000000;
  v22[6] = swift_getKeyPath();
  v22[7] = 2;
  LOBYTE(v22[8]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211AD8, &qword_267B1AFD8);
  sub_267B0A5E8();
  sub_267B17420();
  memcpy(__dst, v22, 0x41uLL);
  return sub_267AEC1D4(__dst, &qword_280211AD8, &qword_267B1AFD8);
}

uint64_t sub_267B085AC(uint64_t a1)
{
  v2 = sub_267B165B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v7;
    sub_267B165A0();
    sub_267B178F0();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = *(a1 + 24);
    sub_267B17910();
    sub_267B09F50(&qword_280211600, MEMORY[0x277D63F60]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

void sub_267B08718(uint64_t a1)
{
  v2 = sub_267B16F90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  if ((v8 & 1) == 0)
  {
    sub_267B17AA0();
    v9 = sub_267B17150();
    sub_267B16B70();

    sub_267B16F80();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  v10 = sub_267B16960();
  v23[3] = v10;
  v11 = MEMORY[0x277D5CAA8];
  v23[4] = sub_267B09F50(&qword_2802119D8, MEMORY[0x277D5CAA8]);
  v23[5] = sub_267B09F50(&qword_2802119E0, v11);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5CAA0], v10);
  sub_267B16740();

  __swift_destroy_boxed_opaque_existential_1(v23);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = v13;
    v15 = sub_267B16610();
    v16 = [v15 identifier];

    sub_267B17980();
    sub_267B17930();
    sub_267B17900();

    v17 = (a1 + *(type metadata accessor for SceneHostView() + 32));
    v18 = *v17;
    v19 = *(v17 + 1);
    LOBYTE(v23[0]) = v18;
    v23[1] = v19;
    v22[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
    sub_267B17570();
    v20 = [objc_opt_self() sharedApplication];
    [v20 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
  }

  else
  {
    v21 = *(a1 + 24);
    sub_267B17910();
    sub_267B09F50(&qword_280211600, MEMORY[0x277D63F60]);
    sub_267B16DF0();
    __break(1u);
  }
}

uint64_t sub_267B08AB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267B17510();
  v3 = sub_267B17170();
  sub_267B16C00();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_267B174D0();
  if (sub_267B06C80())
  {
    v13 = sub_267B174A0();
  }

  else
  {
    v13 = sub_267B17490();
  }

  v14 = v13;
  result = sub_267B17170();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  *(a1 + 72) = result;
  *(a1 + 73) = 256;
  return result;
}

uint64_t sub_267B08B88(uint64_t a1, uint64_t *a2)
{
  v4 = sub_267B16950();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_267B0E194(v7);
}

void sub_267B08C54(uint64_t a1)
{
  v2 = sub_267B16C80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v10 = sub_267B16BA0();
  __swift_project_value_buffer(v10, static Logger.siriMail);
  v11 = sub_267B16B80();
  v12 = sub_267B17A80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_267ADA000, v11, v12, "#SceneHostView View did appear", v13, 2u);
    MEMORY[0x26D600E60](v13, -1, -1);
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = v14;
    v16 = sub_267B178C0();

    if (v16)
    {
      if ([v16 respondsToSelector_])
      {
        v17 = a1 + *(type metadata accessor for SceneHostView() + 28);
        sub_267B06AA0(&qword_280210898, &qword_267B19C50, MEMORY[0x277CDF3E0], v9);
        (*(v3 + 104))(v7, *MEMORY[0x277CDF3C0], v2);
        LOBYTE(v17) = sub_267B16C70();
        v18 = *(v3 + 8);
        v18(v7, v2);
        v18(v9, v2);
        v19 = objc_opt_self();
        v20 = &selRef_systemBlackColor;
        if ((v17 & 1) == 0)
        {
          v20 = &selRef_systemWhiteColor;
        }

        v21 = [v19 *v20];
        sub_267B09E7C();
        sub_267B17470();
        v22 = sub_267B17AE0();
        [v16 informHostOfBackgroundColor_];

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v23 = *(a1 + 24);
    sub_267B17910();
    sub_267B09F50(&qword_280211600, MEMORY[0x277D63F60]);
    sub_267B16DF0();
    __break(1u);
  }
}

void sub_267B08FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = sub_267B16860();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v32 = a3;
  v12 = *(a3 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  v13 = v5[11];
  v14 = v13(v11, v4);
  LODWORD(a3) = *MEMORY[0x277D5CA00];
  v15 = v5[1];
  v15(v11, v4);
  if (v14 == a3)
  {
    if (qword_280210880 != -1)
    {
      swift_once();
    }

    v16 = sub_267B16BA0();
    __swift_project_value_buffer(v16, static Logger.siriMail);
    v17 = sub_267B16B80();
    v18 = sub_267B17AB0();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_12;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "#SceneHostView focus changed, but we're already sending the email: do nothing";
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  v21 = v13(v9, v4);
  v22 = *MEMORY[0x277D5CA20];
  v15(v9, v4);
  if (v21 == v22)
  {
    if (qword_280210880 != -1)
    {
      swift_once();
    }

    v23 = sub_267B16BA0();
    __swift_project_value_buffer(v23, static Logger.siriMail);
    v17 = sub_267B16B80();
    v18 = sub_267B17AB0();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_12;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "#SceneHostView focus changed, but we've already cancelled the email: do nothing";
LABEL_11:
    _os_log_impl(&dword_267ADA000, v17, v18, v20, v19, 2u);
    MEMORY[0x26D600E60](v19, -1, -1);
LABEL_12:

    return;
  }

  v24 = sub_267B16850();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v24);
  v26 = __swift_getEnumTagSinglePayload(v34, 1, v24);
  if (EnumTagSinglePayload == 1)
  {
    if (v26 != 1)
    {
      v27 = v32;
      v28 = *(v32 + 16);
      if (v28)
      {
        v17 = v28;
        sub_267B178B0();
        goto LABEL_12;
      }

LABEL_21:
      v30 = *(v27 + 24);
      sub_267B17910();
      sub_267B09F50(&qword_280211600, MEMORY[0x277D63F60]);
      sub_267B16DF0();
      __break(1u);
    }
  }

  else if (v26 == 1)
  {
    v27 = v32;
    v29 = *(v32 + 16);
    if (v29)
    {
      v17 = v29;
      sub_267B178A0();
      goto LABEL_12;
    }

    goto LABEL_21;
  }
}

uint64_t sub_267B093D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v4 = sub_267B16F90();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_267B16860();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v13 = sub_267B16BA0();
  __swift_project_value_buffer(v13, static Logger.siriMail);
  v14 = sub_267B16B80();
  v15 = sub_267B17A80();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_267ADA000, v14, v15, "#SceneHostView View did change", v16, 2u);
    MEMORY[0x26D600E60](v16, -1, -1);
  }

  sub_267B09F50(&qword_2802119B8, MEMORY[0x277D5CA28]);
  result = sub_267B17950();
  if ((result & 1) == 0)
  {
    (*(v9 + 16))(v12, a2, v8);
    v18 = (*(v9 + 88))(v12, v8);
    v19 = *MEMORY[0x277D5CA00];
    result = (*(v9 + 8))(v12, v8);
    if (v18 == v19)
    {
      v20 = (v34 + *(type metadata accessor for SceneHostView() + 32));
      v21 = *v20;
      v22 = *(v20 + 1);
      LOBYTE(v35) = *v20;
      v36 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
      result = sub_267B17560();
      if ((v40 & 1) == 0)
      {
        v23 = sub_267B16B80();
        v24 = sub_267B17AB0();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_267ADA000, v23, v24, "#SceneHostView model state changed to .sent, view sending action", v25, 2u);
          MEMORY[0x26D600E60](v25, -1, -1);
        }

        v26 = *(v34 + 32);
        v27 = *(v34 + 40);

        if ((v27 & 1) == 0)
        {
          sub_267B17AA0();
          v28 = sub_267B17150();
          sub_267B16B70();

          sub_267B16F80();
          swift_getAtKeyPath();

          (*(v32 + 8))(v7, v33);
        }

        v29 = sub_267B16960();
        v37 = v29;
        v30 = MEMORY[0x277D5CAA8];
        v38 = sub_267B09F50(&qword_2802119D8, MEMORY[0x277D5CAA8]);
        v39 = sub_267B09F50(&qword_2802119E0, v30);
        v31 = __swift_allocate_boxed_opaque_existential_1(&v35);
        (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D5CAA0], v29);
        sub_267B16740();

        __swift_destroy_boxed_opaque_existential_1(&v35);
        LOBYTE(v35) = v21;
        v36 = v22;
        v40 = 1;
        return sub_267B17570();
      }
    }
  }

  return result;
}

uint64_t sub_267B098C4(uint64_t a1)
{
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v2 = sub_267B16BA0();
  __swift_project_value_buffer(v2, static Logger.siriMail);
  v3 = sub_267B16B80();
  v4 = sub_267B17A80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_267ADA000, v3, v4, "#SceneHostView View will disappear", v5, 2u);
    MEMORY[0x26D600E60](v5, -1, -1);
  }

  v6 = *(a1 + 8);
  type metadata accessor for SiriMailModel();
  sub_267B09F50(&qword_280211830, type metadata accessor for SiriMailModel);
  return sub_267B169F0();
}

uint64_t sub_267B09B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneHostView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B09BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneHostView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_267B09C44()
{
  result = qword_2802119A0;
  if (!qword_2802119A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211988, &qword_267B1ADC0);
    sub_267ADCE94(&qword_2802119A8, &qword_2802119B0, &qword_267B1AE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802119A0);
  }

  return result;
}

unint64_t sub_267B09CFC()
{
  result = qword_280211810;
  if (!qword_280211810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    sub_267B09F50(&qword_280211818, MEMORY[0x277D5C9E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211810);
  }

  return result;
}

uint64_t sub_267B09DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SceneHostView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_267B09E7C()
{
  result = qword_2802119E8;
  if (!qword_2802119E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802119E8);
  }

  return result;
}

uint64_t sub_267B09EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A10, &qword_267B1AEA0);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267B09F50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for SceneHostView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 32);

  v8 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_267B16C80();
    OUTLINED_FUNCTION_0(v9);
    (*(v10 + 8))(v5 + v8);
  }

  else
  {
    v11 = *(v5 + v8);
  }

  v12 = *(v5 + *(v1 + 32) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267B0A108(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SceneHostView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_267B0A184()
{
  result = qword_280211A68;
  if (!qword_280211A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211A60, &qword_267B1AF08);
    sub_267B0A23C();
    sub_267ADCE94(&qword_280211AC0, &qword_280211AC8, &qword_267B1AF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211A68);
  }

  return result;
}

unint64_t sub_267B0A23C()
{
  result = qword_280211A70;
  if (!qword_280211A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211A78, &qword_267B1AF10);
    sub_267B0A2F4();
    sub_267ADCE94(&qword_280211AB0, &qword_280211AB8, &qword_267B1AF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211A70);
  }

  return result;
}

unint64_t sub_267B0A2F4()
{
  result = qword_280211A80;
  if (!qword_280211A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211A88, &qword_267B1AF18);
    sub_267B0A3AC();
    sub_267ADCE94(&qword_280211AA0, &qword_280211AA8, &qword_267B1AF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211A80);
  }

  return result;
}

unint64_t sub_267B0A3AC()
{
  result = qword_280211A90;
  if (!qword_280211A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211A98, &qword_267B1AF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211A90);
  }

  return result;
}

uint64_t sub_267B0A430()
{
  OUTLINED_FUNCTION_3_5();
  result = sub_267B16F60();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_267B0A460(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_267B16F70();
}

uint64_t sub_267B0A490()
{
  OUTLINED_FUNCTION_3_5();
  result = sub_267B16F40();
  *v0 = result & 1;
  return result;
}

uint64_t sub_267B0A4BC()
{
  OUTLINED_FUNCTION_3_5();
  result = sub_267B16F40();
  *v0 = result & 1;
  return result;
}

uint64_t sub_267B0A564()
{
  OUTLINED_FUNCTION_3_5();
  result = sub_267B16EE0();
  *v0 = v2;
  return result;
}

uint64_t sub_267B0A5B4()
{
  OUTLINED_FUNCTION_3_5();
  result = sub_267B16F60();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_267B0A5E8()
{
  result = qword_280211AE0;
  if (!qword_280211AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211AD8, &qword_267B1AFD8);
    sub_267B0A6A0();
    sub_267ADCE94(&qword_280211B08, &qword_280211B10, &qword_267B1AFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211AE0);
  }

  return result;
}

unint64_t sub_267B0A6A0()
{
  result = qword_280211AE8;
  if (!qword_280211AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211AF0, &qword_267B1AFE0);
    sub_267ADCE94(&qword_280211AF8, &qword_280211B00, &qword_267B1AFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211AE8);
  }

  return result;
}

unint64_t sub_267B0A75C()
{
  result = qword_280211B18;
  if (!qword_280211B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802119C8, &qword_267B1AE78);
    sub_267B0A7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211B18);
  }

  return result;
}

unint64_t sub_267B0A7E8()
{
  result = qword_280211B20;
  if (!qword_280211B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802119C0, &qword_267B1AE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211990, &qword_267B1ADC8);
    sub_267B16860();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211988, &qword_267B1ADC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    sub_267B09C44();
    sub_267B09CFC();
    swift_getOpaqueTypeConformance2();
    sub_267B09F50(&qword_2802119B8, MEMORY[0x277D5CA28]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211B20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1)
{

  return sub_267B09BA8(v2, a1 + v1);
}

uint64_t SendMessageView.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_267B16950();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t SendMessageView.init(message:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267B16950();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(a2, a1, v4);
  v7 = *(v5 + 32);
  v7(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v7((v9 + v8), &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = type metadata accessor for SendMessageView();
  v11 = a2 + *(result + 20);
  *v11 = sub_267B0ACE4;
  *(v11 + 8) = v9;
  *(v11 + 16) = 0;
  return result;
}

uint64_t sub_267B0AB8C(uint64_t a1)
{
  v2 = sub_267B16950();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  v7 = type metadata accessor for SiriMailModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return SiriMailModel.init(message:)(v5);
}

uint64_t sub_267B0AC64()
{
  v1 = sub_267B16950();
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_267B0ACE4()
{
  v1 = *(sub_267B16950() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_267B0AB8C(v2);
}

uint64_t type metadata accessor for SendMessageView()
{
  result = qword_280211B40;
  if (!qword_280211B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SendMessageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v39[1] = a1;
  v40 = type metadata accessor for SceneClientView();
  v2 = OUTLINED_FUNCTION_0(v40);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B28, &qword_267B1AFF8);
  v7 = OUTLINED_FUNCTION_0(v39[0]);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - v10;
  v12 = type metadata accessor for SceneHostView();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MailUIFeatureFlags.isSceneHostingEnabled()();
  v19 = (v1 + *(type metadata accessor for SendMessageView() + 20));
  v21 = *v19;
  v20 = v19[1];
  v22 = *(v19 + 16);
  type metadata accessor for SiriMailModel();
  sub_267B0B12C(&qword_280211780, type metadata accessor for SiriMailModel);
  sub_267B16CA0();
  if (v18)
  {
    *v17 = sub_267B16D70();
    *(v17 + 1) = v23;
    sub_267B17910();
    sub_267B0B12C(&qword_280211600, MEMORY[0x277D63F60]);
    *(v17 + 2) = sub_267B16E00();
    *(v17 + 3) = v24;
    *(v17 + 4) = swift_getKeyPath();
    v17[40] = 0;
    v25 = *(v12 + 28);
    *&v17[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
    swift_storeEnumTagMultiPayload();
    v26 = &v17[*(v12 + 32)];
    v41 = 0;
    sub_267B17550();
    v27 = v43;
    *v26 = v42;
    *(v26 + 1) = v27;
    v28 = type metadata accessor for SceneHostView;
    sub_267B0B1DC(v17, v11, type metadata accessor for SceneHostView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_7();
    sub_267B0B12C(v29, v30);
    OUTLINED_FUNCTION_1_7();
    sub_267B0B12C(v31, v32);
    OUTLINED_FUNCTION_3_6();
    v33 = v17;
  }

  else
  {
    sub_267B00B40(v6);
    v28 = type metadata accessor for SceneClientView;
    sub_267B0B1DC(v6, v11, type metadata accessor for SceneClientView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_7();
    sub_267B0B12C(v34, v35);
    OUTLINED_FUNCTION_1_7();
    sub_267B0B12C(v36, v37);
    OUTLINED_FUNCTION_3_6();
    v33 = v6;
  }

  return sub_267B0B23C(v33, v28);
}

uint64_t sub_267B0B12C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267B0B178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267B16E70();
  *a1 = result;
  return result;
}

uint64_t sub_267B0B1A4(uint64_t *a1)
{
  v1 = *a1;

  return sub_267B16E80();
}

uint64_t sub_267B0B1DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267B0B23C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267B0B2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267B16950();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_267B0B384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_267B16950();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

void sub_267B0B430()
{
  sub_267B16950();
  if (v0 <= 0x3F)
  {
    sub_267B0B4B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267B0B4B4()
{
  if (!qword_280211B50)
  {
    type metadata accessor for SiriMailModel();
    sub_267B0B12C(&qword_280211780, type metadata accessor for SiriMailModel);
    v0 = sub_267B16CB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280211B50);
    }
  }
}

unint64_t sub_267B0B54C()
{
  result = qword_280211B58;
  if (!qword_280211B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211B60, &qword_267B1B0C8);
    sub_267B0B12C(&qword_280211B30, type metadata accessor for SceneHostView);
    sub_267B0B12C(&qword_280211B38, type metadata accessor for SceneClientView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211B58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_267B17080();
}

uint64_t static Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B68, &qword_267B1B0D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  if (qword_280210880 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v17 = sub_267B16BA0();
  v18 = __swift_project_value_buffer(v17, static Logger.siriMail);
  v19 = *(v17 - 8);
  (*(v19 + 16))(v16, v18, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  sub_267B0BA80(v16, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    sub_267B0BAF0(v14);
  }

  else
  {

    v20 = sub_267B16B80();
    v21 = sub_267B17A90();

    v35 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = a6;
      v23 = v22;
      v33 = swift_slowAlloc();
      v38 = v33;
      *v23 = 136315650;
      v24 = sub_267B17B70();
      v34 = a4;
      v26 = sub_267B0BBF4(v24, v25, &v38);
      v32 = v20;
      v27 = v26;

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v36;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_267B0BBF4(a1, a2, &v38);
      v28 = v32;
      _os_log_impl(&dword_267ADA000, v32, v35, "FatalError at %s:%lu - %s", v23, 0x20u);
      v29 = v33;
      swift_arrayDestroy();
      MEMORY[0x26D600E60](v29, -1, -1);
      MEMORY[0x26D600E60](v23, -1, -1);
    }

    else
    {
    }

    (*(v19 + 8))(v14, v17);
  }

  sub_267B16620();
  result = sub_267B17C10();
  __break(1u);
  return result;
}

uint64_t Logger.siriMail.unsafeMutableAddressor()
{
  if (qword_280210880 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v0 = sub_267B16BA0();

  return __swift_project_value_buffer(v0, static Logger.siriMail);
}

uint64_t sub_267B0BA08()
{
  v0 = sub_267B16BA0();
  __swift_allocate_value_buffer(v0, static Logger.siriMail);
  __swift_project_value_buffer(v0, static Logger.siriMail);
  return sub_267B16B90();
}

uint64_t sub_267B0BA80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B68, &qword_267B1B0D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B0BAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B68, &qword_267B1B0D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Logger.siriMail.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280210880 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = sub_267B16BA0();
  v3 = __swift_project_value_buffer(v2, static Logger.siriMail);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_267B0BBF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_267B0BCC8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_267AFFFE4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_267B0BCC8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_267B0BDC8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_267B17BB0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_267B0BDC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_267B0BE14(a1, a2);
  sub_267B0BF2C(&unk_2878BB420);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_267B0BE14(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_267B179C0())
  {
    result = sub_267B0C010(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_267B17B50();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_267B17BB0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_267B0BF2C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_267B0C080(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_267B0C010(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B70, &qword_267B1B0F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_267B0C080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B70, &qword_267B1B0F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_267B0C1EC(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.to.getter();
  *v1 = result;
  return result;
}

uint64_t sub_267B0C214(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriMailModel.to.setter();
}

uint64_t sub_267B0C240(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.cc.getter();
  *v1 = result;
  return result;
}

uint64_t sub_267B0C268(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriMailModel.cc.setter();
}

uint64_t sub_267B0C294(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.bcc.getter();
  *v1 = result;
  return result;
}

uint64_t sub_267B0C2BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriMailModel.bcc.setter();
}

uint64_t sub_267B0C2E8(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.subject.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_267B0C328(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.body.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_267B0C368(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_267B0C3D4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_16_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_267B0F840(a1, &v12 - v8);
  v10 = *a2;
  return SiriMailModel.focusedField.setter(v9);
}

uint64_t SiriMailModel.__allocating_init(message:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SiriMailModel.init(message:)(a1);
  return v5;
}

uint64_t (*SiriMailModel.subject.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t sub_267B0C5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_4();
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  *(v5 + 24) = 0;
  type metadata accessor for SiriMailModel();
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v6, v7);
  OUTLINED_FUNCTION_33();
  return sub_267B16A20();
}

uint64_t sub_267B0C640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = *a3;
  v6 = sub_267B16780();
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 104))(a4, v5);
}

uint64_t sub_267B0C6D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  return v1;
}

uint64_t sub_267B0C750()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_267B16A60();
}

uint64_t (*SiriMailModel.body.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t property wrapper backing initializer of SiriMailModel.attachments()
{
  OUTLINED_FUNCTION_11_4();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_267B0F57C;
  *(v0 + 24) = 0;
  type metadata accessor for SiriMailModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B88, &qword_267B1B188);
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v1, v2);
  sub_267B0F5C8();
  return sub_267B16A20();
}

uint64_t sub_267B0C934(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriMailModel.attachments.setter();
}

uint64_t (*SiriMailModel.attachments.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B0C9E4;
}

uint64_t (*SiriMailModel.to.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t sub_267B0CAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  *(v4 + 24) = 0;
  type metadata accessor for SiriMailModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118F0, &qword_267B1ABF8);
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v5, v6);
  sub_267B0F6C8();
  OUTLINED_FUNCTION_33();
  return sub_267B16A20();
}

uint64_t (*SiriMailModel.cc.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t sub_267B0CC74@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = *a2;
  v5 = sub_267B16780();
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 104))(a3, v4);
}

uint64_t sub_267B0CD04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  return v1;
}

uint64_t sub_267B0CD84()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_267B16A60();
}

uint64_t (*SiriMailModel.bcc.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t property wrapper backing initializer of SiriMailModel.focusedField(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_29();
  sub_267B0F840(a1, v1);
  type metadata accessor for SiriMailModel();
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v7, v8);
  sub_267B09CFC();
  OUTLINED_FUNCTION_36();
  sub_267B16A20();
  return sub_267B0F8B4(a1);
}

uint64_t sub_267B0CF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_267B0F840(a1, a2);
  v3 = *MEMORY[0x277D5C930];
  v4 = sub_267B16780();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t SiriMailModel.focusedField.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_16_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B0F840(a1, v7);

  sub_267B16A60();
  return sub_267B0F8B4(a1);
}

uint64_t (*SiriMailModel.focusedField.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t property wrapper backing initializer of SiriMailModel.state()
{
  v0 = sub_267B16860();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  v6 = OUTLINED_FUNCTION_35();
  v7(v6);
  type metadata accessor for SiriMailModel();
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v8, v9);
  OUTLINED_FUNCTION_16_2();
  sub_267B10D6C(v10, v11);
  OUTLINED_FUNCTION_36();
  sub_267B16A20();
  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_18();
  return v14(v13);
}

uint64_t sub_267B0D270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267B16860();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *MEMORY[0x277D5C958];
  v6 = sub_267B16780();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_267B0D338()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_3();
  sub_267B16A50();
}

uint64_t sub_267B0D3C8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_267B16860();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, a1);
  v12 = *a2;
  return SiriMailModel.state.setter(v10);
}

uint64_t SiriMailModel.state.setter(uint64_t a1)
{
  v2 = sub_267B16860();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_35();
  v9(v8);

  sub_267B16A60();
  return (*(v5 + 8))(a1, v2);
}

uint64_t (*SiriMailModel.state.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

void sub_267B0D5F4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t SiriMailModel.subscription.getter()
{
  v1 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SiriMailModel.subscription.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_267B0D9DC(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_18_0();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_267B0DA30(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_267B0DBE0()
{
  v1 = sub_267B16860();
  v2 = OUTLINED_FUNCTION_16_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_2(v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_16_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v11);
  v42 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_toLabel);
  v48 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_toLabel + 8);
  v41 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_ccLabel);
  v47 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_ccLabel + 8);
  v40 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_bccLabel);
  v46 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_bccLabel + 8);
  v12 = (v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subjectLabel);
  OUTLINED_FUNCTION_18_0();
  v39 = *v12;
  v45 = v12[1];
  v13 = (v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelLabel);
  OUTLINED_FUNCTION_18_0();
  v38 = *v13;
  v44 = v13[1];
  v14 = (v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelledLabel);
  OUTLINED_FUNCTION_18_0();
  v37 = *v14;
  v43 = v14[1];
  v15 = (v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sendLabel);
  OUTLINED_FUNCTION_18_0();
  v36 = *v15;
  v27 = v15[1];
  v16 = (v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sentLabel);
  OUTLINED_FUNCTION_18_0();
  v35 = *v16;
  v26 = v16[1];
  v17 = (v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_messageLabel);
  OUTLINED_FUNCTION_18_0();
  v34 = *v17;
  v25 = v17[1];
  v33 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_deleteLabel);
  v24 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_deleteLabel + 8);
  v32 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_replyLabel);
  v23 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_replyLabel + 8);
  v31 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_nextLabel);
  v22 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_nextLabel + 8);
  v30 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_seeAllLabel);
  v21 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_seeAllLabel + 8);
  v29 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_moreInMailLabel);
  v20 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_moreInMailLabel + 8);
  v28 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_newMessageLabel);
  v19 = *(v0 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_newMessageLabel + 8);

  SiriMailModel.to.getter();
  SiriMailModel.cc.getter();
  SiriMailModel.bcc.getter();
  SiriMailModel.subject.getter();
  SiriMailModel.body.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  SiriMailModel.attachments.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  return sub_267B168F0();
}

uint64_t sub_267B0E194(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_16_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_29();
  v7 = sub_267B16860();
  v8 = OUTLINED_FUNCTION_16_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  sub_267B16820();
  SiriMailModel.to.setter();
  sub_267B16810();
  SiriMailModel.cc.setter();
  sub_267B16830();
  SiriMailModel.bcc.setter();
  sub_267B16870();
  SiriMailModel.state.setter(v13);
  sub_267B168E0();
  SiriMailModel.subject.setter();
  sub_267B16840();
  SiriMailModel.body.setter();
  sub_267B167D0();
  SiriMailModel.focusedField.setter(v1);
  sub_267B16790();
  SiriMailModel.attachments.setter();
  v14 = sub_267B16950();
  OUTLINED_FUNCTION_0(v14);
  return (*(v15 + 8))(a1);
}

uint64_t SiriMailModel.init(message:)(uint64_t a1)
{
  v2 = v1;
  v178 = a1;
  v3 = sub_267B169A0();
  v4 = OUTLINED_FUNCTION_16_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_2(v8 - v7);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BD8, &qword_267B1B340);
  OUTLINED_FUNCTION_0_0(v196);
  v194 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v13);
  v188 = sub_267B16860();
  v14 = OUTLINED_FUNCTION_0_0(v188);
  v198 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v186 = v18;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v19);
  v185 = v160 - v20;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE0, &qword_267B1B348);
  OUTLINED_FUNCTION_0_0(v195);
  v193 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v25);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  v26 = OUTLINED_FUNCTION_0(v192);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v187 = v29;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v30);
  v184 = v160 - v31;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE8, &qword_267B1B350);
  OUTLINED_FUNCTION_0_0(v197);
  v191 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF0, &qword_267B1B358);
  v38 = OUTLINED_FUNCTION_0_0(v37);
  v189 = v39;
  v190 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF8, &qword_267B1B360);
  OUTLINED_FUNCTION_0_0(v44);
  v46 = v45;
  v166 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v49);
  v51 = v160 - v50;
  v52 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__subject;
  v165 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__subject;
  v201 = 0;
  v202 = 0xE000000000000000;
  OUTLINED_FUNCTION_11_4();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_267B112D4;
  *(v53 + 24) = 0;
  v54 = type metadata accessor for SiriMailModel();
  OUTLINED_FUNCTION_0_6();
  v57 = sub_267B10D6C(v55, v56);
  sub_267B16A20();
  v58 = *(v46 + 32);
  v59 = v1 + v52;
  v60 = v44;
  v161 = v44;
  v58(v59, v51, v44);
  v61 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__body;
  v168 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__body;
  v201 = 0;
  v202 = 0xE000000000000000;
  OUTLINED_FUNCTION_11_4();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_267B112D8;
  *(v62 + 24) = 0;
  sub_267B16A20();
  v58(v1 + v61, v51, v60);
  v63 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__attachments;
  v167 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__attachments;
  v201 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_4();
  v65 = swift_allocObject();
  *(v65 + 16) = sub_267B11330;
  *(v65 + 24) = 0;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B88, &qword_267B1B188);
  v176 = sub_267B0F5C8();
  v66 = v179;
  v183 = v57;
  sub_267B16A20();
  (*(v189 + 32))(v2 + v63, v66, v190);
  v67 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__to;
  v169 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__to;
  v201 = v64;
  OUTLINED_FUNCTION_11_4();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_267B11334;
  *(v68 + 24) = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118F0, &qword_267B1ABF8);
  v70 = sub_267B0F6C8();
  v71 = v180;
  sub_267B16A20();
  v72 = *(v191 + 32);
  v73 = v197;
  v72(v2 + v67, v71, v197);
  v74 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__cc;
  v172 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__cc;
  v201 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_4();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_267B11338;
  *(v75 + 24) = 0;
  OUTLINED_FUNCTION_37();
  v164 = v69;
  v163 = v70;
  sub_267B16A20();
  v76 = v2 + v74;
  v77 = v72;
  v72(v76, v71, v73);
  v78 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__bcc;
  v174 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__bcc;
  v201 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_4();
  v79 = swift_allocObject();
  *(v79 + 16) = sub_267B1133C;
  *(v79 + 24) = 0;
  OUTLINED_FUNCTION_37();
  sub_267B16A20();
  v77(v2 + v78, v71, v73);
  v80 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__focusedField;
  v179 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__focusedField;
  v81 = sub_267B16850();
  v82 = v184;
  __swift_storeEnumTagSinglePayload(v184, 1, 1, v81);
  sub_267B0F840(v82, v187);
  v180 = sub_267B09CFC();
  v83 = v175;
  OUTLINED_FUNCTION_36();
  v160[1] = v54;
  sub_267B16A20();
  sub_267B0F8B4(v82);
  (*(v193 + 32))(v2 + v80, v83, v195);
  v84 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__state;
  v162 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__state;
  v85 = v198;
  v86 = v185;
  v87 = v188;
  (*(v198 + 104))(v185, *MEMORY[0x277D5CA08], v188);
  v88 = *(v85 + 16);
  v173 = v85 + 16;
  v175 = v88;
  v89 = OUTLINED_FUNCTION_14_3();
  v90(v89);
  OUTLINED_FUNCTION_16_2();
  v171 = sub_267B10D6C(v91, v92);
  v93 = v181;
  sub_267B16A20();
  v94 = *(v85 + 8);
  v198 = v85 + 8;
  v170 = v94;
  v94(v86, v87);
  (*(v194 + 32))(v2 + v84, v93, v196);
  v95 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_snippetService;
  sub_267B169E0();
  sub_267B16990();
  *(v2 + v95) = sub_267B169D0();
  *(v2 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription) = 0;
  v96 = v178;
  v97 = sub_267B168E0();
  if (v98)
  {
    v99 = v97;
  }

  else
  {
    v99 = 0;
  }

  if (v98)
  {
    v100 = v98;
  }

  else
  {
    v100 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_8_3(&v197);
  v182 = *(v166 + 8);
  v101 = v161;
  v182(v2 + v87, v161);
  v199 = v99;
  v200 = v100;
  OUTLINED_FUNCTION_11_4();
  v102 = swift_allocObject();
  *(v102 + 16) = sub_267B112D4;
  *(v102 + 24) = 0;
  OUTLINED_FUNCTION_31();
  v103 = MEMORY[0x277D837F8];
  sub_267B16A20();
  swift_endAccess();
  v104 = v96;
  v105 = sub_267B16840();
  if (v106)
  {
    v107 = v105;
  }

  else
  {
    v107 = 0;
  }

  if (v106)
  {
    v108 = v106;
  }

  else
  {
    v108 = 0xE000000000000000;
  }

  v109 = v168;
  OUTLINED_FUNCTION_15_2();
  v182(v2 + v109, v101);
  v199 = v107;
  v200 = v108;
  OUTLINED_FUNCTION_11_4();
  v110 = swift_allocObject();
  *(v110 + 16) = sub_267B112D8;
  *(v110 + 24) = 0;
  sub_267B16A20();
  swift_endAccess();
  v111 = sub_267B16790();
  OUTLINED_FUNCTION_8_3(&v199);
  (*(v189 + 8))(v2 + v103, v190);
  v199 = v111;
  OUTLINED_FUNCTION_11_4();
  v112 = swift_allocObject();
  *(v112 + 16) = sub_267B11330;
  *(v112 + 24) = 0;
  OUTLINED_FUNCTION_31();
  sub_267B16A20();
  swift_endAccess();
  v113 = sub_267B16820();
  OUTLINED_FUNCTION_8_3(&v201);
  v191 = *(v191 + 8);
  v114 = v197;
  (v191)(v2 + v103, v197);
  v199 = v113;
  OUTLINED_FUNCTION_11_4();
  v115 = swift_allocObject();
  *(v115 + 16) = sub_267B11334;
  *(v115 + 24) = 0;
  OUTLINED_FUNCTION_31();
  sub_267B16A20();
  swift_endAccess();
  v116 = sub_267B16810();
  OUTLINED_FUNCTION_8_3(v203);
  v117 = v114;
  v118 = v191;
  (v191)(v2 + v103, v117);
  v199 = v116;
  OUTLINED_FUNCTION_11_4();
  v119 = swift_allocObject();
  *(v119 + 16) = sub_267B11338;
  *(v119 + 24) = 0;
  OUTLINED_FUNCTION_31();
  sub_267B16A20();
  swift_endAccess();
  v120 = sub_267B16830();
  OUTLINED_FUNCTION_8_3(&v204);
  v118(v2 + v103, v197);
  v199 = v120;
  OUTLINED_FUNCTION_11_4();
  v121 = swift_allocObject();
  *(v121 + 16) = sub_267B1133C;
  *(v121 + 24) = 0;
  OUTLINED_FUNCTION_31();
  sub_267B16A20();
  swift_endAccess();
  v122 = v185;
  sub_267B16870();
  v123 = v162;
  OUTLINED_FUNCTION_15_2();
  (*(v194 + 8))(v2 + v123, v196);
  v124 = v188;
  v175(v186, v122, v188);
  OUTLINED_FUNCTION_36();
  sub_267B16A20();
  v170(v122, v124);
  swift_endAccess();
  v125 = v184;
  sub_267B167D0();
  v126 = v179;
  OUTLINED_FUNCTION_15_2();
  (*(v193 + 8))(v2 + v126, v195);
  sub_267B0F840(v125, v187);
  sub_267B16A20();
  sub_267B0F8B4(v125);
  swift_endAccess();
  v127 = sub_267B16900();
  OUTLINED_FUNCTION_12_2(v127, v128, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_toLabel);
  v129 = sub_267B168D0();
  OUTLINED_FUNCTION_12_2(v129, v130, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_ccLabel);
  v131 = sub_267B16910();
  OUTLINED_FUNCTION_12_2(v131, v132, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_bccLabel);
  v133 = sub_267B167F0();
  OUTLINED_FUNCTION_12_2(v133, v134, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subjectLabel);
  v135 = sub_267B167A0();
  OUTLINED_FUNCTION_12_2(v135, v136, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelLabel);
  v137 = sub_267B16800();
  OUTLINED_FUNCTION_12_2(v137, v138, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelledLabel);
  v139 = sub_267B16930();
  OUTLINED_FUNCTION_12_2(v139, v140, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sendLabel);
  v141 = sub_267B16940();
  OUTLINED_FUNCTION_12_2(v141, v142, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sentLabel);
  v143 = sub_267B167E0();
  OUTLINED_FUNCTION_12_2(v143, v144, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_messageLabel);
  v145 = sub_267B167B0();
  OUTLINED_FUNCTION_12_2(v145, v146, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_deleteLabel);
  v147 = sub_267B16770();
  OUTLINED_FUNCTION_12_2(v147, v148, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_replyLabel);
  v149 = sub_267B16920();
  OUTLINED_FUNCTION_12_2(v149, v150, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_nextLabel);
  v151 = sub_267B167C0();
  OUTLINED_FUNCTION_12_2(v151, v152, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_seeAllLabel);
  v153 = sub_267B16760();
  OUTLINED_FUNCTION_12_2(v153, v154, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_moreInMailLabel);
  v155 = sub_267B16750();
  OUTLINED_FUNCTION_12_2(v155, v156, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_newMessageLabel);
  swift_allocObject();
  swift_weakInit();
  sub_267B16A00();

  v157 = sub_267B16950();
  OUTLINED_FUNCTION_0(v157);
  (*(v158 + 8))(v104);
  return v2;
}

uint64_t sub_267B0F3D0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_11_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267B0F404(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t type metadata accessor for SiriMailModel()
{
  result = qword_280211C08;
  if (!qword_280211C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B0F480(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.subject.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_267B0F528(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.body.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_267B0F59C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_267B0F5C8()
{
  result = qword_280211B90;
  if (!qword_280211B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211B88, &qword_267B1B188);
    sub_267B10D6C(&qword_280211B98, MEMORY[0x277D5C910]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211B90);
  }

  return result;
}

uint64_t sub_267B0F67C(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.attachments.getter();
  *v1 = result;
  return result;
}

unint64_t sub_267B0F6C8()
{
  result = qword_280211BA8;
  if (!qword_280211BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802118F0, &qword_267B1ABF8);
    sub_267B10D6C(&qword_280211408, MEMORY[0x277D5CA58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211BA8);
  }

  return result;
}

uint64_t sub_267B0F77C(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.to.getter();
  *v1 = result;
  return result;
}

uint64_t sub_267B0F7C8(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.cc.getter();
  *v1 = result;
  return result;
}

uint64_t sub_267B0F814(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  result = SiriMailModel.bcc.getter();
  *v1 = result;
  return result;
}

uint64_t sub_267B0F840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B0F8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B0F970()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267B0F9A8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_267B0FCB0(a1);
  }

  return result;
}

uint64_t SiriMailModel.post(action:)(uint64_t a1)
{
  v3 = sub_267B16780();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  v9 = sub_267B16880();
  OUTLINED_FUNCTION_0(v9);
  (*(v10 + 16))(v1, a1);
  (*(v6 + 104))(v1, *MEMORY[0x277D5C960], v3);
  type metadata accessor for SiriMailModel();
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v11, v12);
  sub_267B16A10();
  return (*(v6 + 8))(v1, v3);
}

void sub_267B0FCB0(uint64_t a1)
{
  v2 = v1;
  v105 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  v4 = OUTLINED_FUNCTION_16_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v98 = v7;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v8);
  v99 = v93 - v9;
  v10 = sub_267B16860();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v96 = v12;
  v97 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v95 = v15;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v16);
  v18 = v93 - v17;
  v100 = sub_267B16950();
  v19 = OUTLINED_FUNCTION_0_0(v100);
  v102 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v101 = v24 - v23;
  v106 = sub_267B16780();
  v25 = OUTLINED_FUNCTION_0_0(v106);
  v27 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v25);
  v32 = v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = v93 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = v93 - v36;
  v38 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription;
  swift_beginAccess();
  if (*(v1 + v38) && (, isCancelled = swift_task_isCancelled(), , (isCancelled & 1) != 0))
  {
    if (qword_280210880 != -1)
    {
      OUTLINED_FUNCTION_2_8();
    }

    v40 = sub_267B16BA0();
    __swift_project_value_buffer(v40, static Logger.siriMail);
    v41 = sub_267B16B80();
    v42 = sub_267B17A80();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_267ADA000, v41, v42, "Skipping update since this SiriMailModel has been cancelled", v43, 2u);
      OUTLINED_FUNCTION_32();
    }
  }

  else
  {
    v103 = v32;
    if (qword_280210880 != -1)
    {
      OUTLINED_FUNCTION_2_8();
    }

    v44 = sub_267B16BA0();
    __swift_project_value_buffer(v44, static Logger.siriMail);
    v45 = v106;
    v104 = v27[2];
    v104(v37, v105, v106);
    v46 = sub_267B16B80();
    v47 = sub_267B17A80();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v94 = v18;
      v50 = v49;
      v109[0] = v49;
      *v48 = 136315138;
      v104(v35, v37, v106);
      v51 = sub_267B17990();
      v93[1] = v2;
      v53 = v52;
      v54 = v27[1];
      v54(v37, v106);
      v55 = sub_267B0BBF4(v51, v53, v109);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_267ADA000, v46, v47, "Got change: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      v18 = v94;
      OUTLINED_FUNCTION_32();
      v45 = v106;
      OUTLINED_FUNCTION_32();
    }

    else
    {

      v54 = v27[1];
      v54(v37, v45);
    }

    type metadata accessor for SiriMailModel();
    OUTLINED_FUNCTION_0_6();
    sub_267B10D6C(v56, v57);
    sub_267B16BD0();
    sub_267B16BE0();

    v58 = v103;
    v104(v103, v105, v45);
    v59 = v27[11];
    v60 = OUTLINED_FUNCTION_14_3();
    v62 = v61(v60);
    if (v62 != *MEMORY[0x277D5C928])
    {
      if (v62 == *MEMORY[0x277D5C968] || v62 == *MEMORY[0x277D5C950])
      {
        v76 = OUTLINED_FUNCTION_5_6();
        v77(v76);
        v78 = v58[1];
        v107 = *v58;
        v108 = v78;
        OUTLINED_FUNCTION_6_4();
        v79 = &qword_280211BF8;
        v80 = &qword_267B1B360;
      }

      else if (v62 == *MEMORY[0x277D5C920])
      {
        v81 = OUTLINED_FUNCTION_5_6();
        v82(v81);
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_6_4();
        v79 = &qword_280211BF0;
        v80 = &qword_267B1B358;
      }

      else
      {
        if (v62 != *MEMORY[0x277D5C940] && v62 != *MEMORY[0x277D5C938] && v62 != *MEMORY[0x277D5C948])
        {
          if (v62 == *MEMORY[0x277D5C930])
          {
            v85 = OUTLINED_FUNCTION_5_6();
            v86(v85);
            v87 = v99;
            sub_267B11264(v58, v99);
            sub_267B0F840(v87, v98);
            OUTLINED_FUNCTION_6_4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE0, &qword_267B1B348);
            sub_267B16A30();
            swift_endAccess();
            sub_267B0F8B4(v87);
          }

          else if (v62 == *MEMORY[0x277D5C960])
          {
            v88 = OUTLINED_FUNCTION_14_3();
            (v54)(v88);
          }

          else if (v62 == *MEMORY[0x277D5C958])
          {
            v89 = OUTLINED_FUNCTION_5_6();
            v90(v89);
            v92 = v96;
            v91 = v97;
            (*(v96 + 32))(v18, v58, v97);
            (*(v92 + 16))(v95, v18, v91);
            OUTLINED_FUNCTION_6_4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BD8, &qword_267B1B340);
            sub_267B16A30();
            swift_endAccess();
            (*(v92 + 8))(v18, v91);
          }

          else
          {
            sub_267B17D50();
            __break(1u);
          }

          return;
        }

        v83 = OUTLINED_FUNCTION_5_6();
        v84(v83);
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_6_4();
        v79 = &qword_280211BE8;
        v80 = &qword_267B1B350;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v79, v80);
      OUTLINED_FUNCTION_28();
      sub_267B16A30();
      swift_endAccess();
      return;
    }

    v63 = OUTLINED_FUNCTION_5_6();
    v64(v63);
    v66 = v101;
    v65 = v102;
    v67 = v100;
    (*(v102 + 32))(v101, v58, v100);
    v68 = sub_267B168E0();
    if (v69)
    {
      v70 = v68;
    }

    else
    {
      v70 = 0;
    }

    if (v69)
    {
      v71 = v69;
    }

    else
    {
      v71 = 0xE000000000000000;
    }

    v107 = v70;
    v108 = v71;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF8, &qword_267B1B360);
    sub_267B16A30();
    swift_endAccess();
    v72 = sub_267B16840();
    if (v73)
    {
      v74 = v72;
    }

    else
    {
      v74 = 0;
    }

    if (v73)
    {
      v75 = v73;
    }

    else
    {
      v75 = 0xE000000000000000;
    }

    v107 = v74;
    v108 = v75;
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_28();
    sub_267B16A30();
    swift_endAccess();
    v107 = sub_267B16820();
    OUTLINED_FUNCTION_6_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE8, &qword_267B1B350);
    OUTLINED_FUNCTION_28();
    sub_267B16A30();
    swift_endAccess();
    v107 = sub_267B16810();
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_28();
    sub_267B16A30();
    swift_endAccess();
    v107 = sub_267B16830();
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_28();
    sub_267B16A30();
    swift_endAccess();
    v107 = sub_267B16790();
    OUTLINED_FUNCTION_6_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF0, &qword_267B1B358);
    OUTLINED_FUNCTION_28();
    sub_267B16A30();
    swift_endAccess();
    sub_267B16870();
    OUTLINED_FUNCTION_6_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BD8, &qword_267B1B340);
    sub_267B16A30();
    swift_endAccess();
    (*(v65 + 8))(v66, v67);
  }
}

uint64_t SiriMailModel.deinit()
{
  v1 = v0;
  if (qword_280210880 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  v2 = sub_267B16BA0();
  __swift_project_value_buffer(v2, static Logger.siriMail);

  v3 = sub_267B16B80();
  v4 = sub_267B17A80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315138;
    v7 = sub_267B17990();
    v9 = sub_267B0BBF4(v7, v8, &v29);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_267ADA000, v3, v4, "SiriMailModel.deinit on instance %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  v10 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__subject;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF8, &qword_267B1B360);
  OUTLINED_FUNCTION_0(v11);
  v13 = *(v12 + 8);
  v13(v1 + v10, v11);
  v13(v1 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__body, v11);
  v14 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__attachments;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF0, &qword_267B1B358);
  OUTLINED_FUNCTION_0(v15);
  (*(v16 + 8))(v1 + v14);
  v17 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__to;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE8, &qword_267B1B350);
  OUTLINED_FUNCTION_0(v18);
  v20 = *(v19 + 8);
  v20(v1 + v17, v18);
  v20(v1 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__cc, v18);
  v20(v1 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__bcc, v18);
  v21 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__focusedField;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE0, &qword_267B1B348);
  OUTLINED_FUNCTION_0(v22);
  (*(v23 + 8))(v1 + v21);
  v24 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__state;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BD8, &qword_267B1B340);
  OUTLINED_FUNCTION_0(v25);
  (*(v26 + 8))(v1 + v24);

  v27 = *(v1 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription);

  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_toLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_ccLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_bccLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subjectLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelledLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sendLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sentLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_messageLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_deleteLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_replyLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_nextLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_seeAllLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_moreInMailLabel);
  OUTLINED_FUNCTION_27(OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_newMessageLabel);
  return v1;
}

uint64_t SiriMailModel.__deallocating_deinit()
{
  SiriMailModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}